package org.adempierelbr.process;

import java.io.StringReader;
import java.sql.Timestamp;
import java.util.List;
import java.util.Properties;
import java.util.UUID;
import java.util.logging.Level;

import javax.xml.stream.XMLInputFactory;

import org.adempiere.base.Service;
import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.model.MLBRNFConfig;
import org.adempierelbr.model.MLBRNFSkipped;
import org.adempierelbr.model.MLBRNFeWebService;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.nfe.api.NFeInutilizacao4Stub;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.SignatureUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.apache.axiom.om.OMElement;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MRefList;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.base.event.IDocFiscalHandler;
import org.kenos.idempiere.lbr.base.event.IDocFiscalHandlerFactory;

import br.inf.portalfiscal.nfe.v400.InutNFeDocument;
import br.inf.portalfiscal.nfe.v400.RetInutNFeDocument;
import br.inf.portalfiscal.nfe.v400.TAmb;
import br.inf.portalfiscal.nfe.v400.TCodUfIBGE;
import br.inf.portalfiscal.nfe.v400.TInutNFe;
import br.inf.portalfiscal.nfe.v400.TMod;
import br.inf.portalfiscal.nfe.v400.TRetInutNFe;

/**
 * 		Inutiliza uma NF ou uma Sequência de NF
 * 
 *  @author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ProcInutNF.java, v1.0 2010/MM/DD 3:45:29 PM, ralexsander Exp $
 */
public class ProcInutNF extends SvrProcess 
{
	/** Nota Fiscal               	*/
	private Integer 	p_AD_Org_ID 	= 0;
	
	/**	Sequência de NF			  	*/
	private Integer 	p_DocumentNo = 0;
	private Integer 	p_DocumentNo_To = 0;
	
	/**	Justificativa			  	*/
	private String p_Just = "";
	
	/**	Data do Cancelamento	 	 	*/
	private Timestamp p_DateDoc;
	
	/**	Modelo e Série da NF		  	*/
	private String p_NFModel = null;
	private String p_NFSerie = null;
	
	/**	Logger						*/
	private static CLogger log = CLogger.getCLogger(ProcInutNF.class);

	/**	Environment		*/
	private String p_LBR_EnvType = null;
	
	/**	Atualizar NF		*/
	private boolean p_LBR_UpdateNFe = false;
	
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare ()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals(MLBRNotaFiscal.COLUMNNAME_AD_Org_ID))
				p_AD_Org_ID = para[i].getParameterAsInt();
			else if (name.equals(MLBRNotaFiscal.COLUMNNAME_C_DocType_ID))
				;	//	Not Used anymore
			else if (name.equals(MLBRNotaFiscal.COLUMNNAME_DocumentNo))
			{
				p_DocumentNo = para[i].getParameterAsInt();
				p_DocumentNo_To = para[i].getParameter_ToAsInt();
			}
			else if (name.equals(MLBRNotaFiscal.COLUMNNAME_DateDoc))
				p_DateDoc = (Timestamp) para[i].getParameter();
			else if (name.equals(MLBRNotaFiscal.COLUMNNAME_lbr_MotivoCancel))
				p_Just = (String) para[i].getParameter();
			else if (name.equals(MLBRNotaFiscal.COLUMNNAME_lbr_NFeEnv))
				p_LBR_EnvType = (String) para[i].getParameter();
			else if (name.equals(MLBRNotaFiscal.COLUMNNAME_lbr_NFModel))
				p_NFModel = (String) para[i].getParameter();
			else if (name.equals(MLBRNotaFiscal.COLUMNNAME_lbr_NFSerie))
				p_NFSerie = (String) para[i].getParameter();
			
			//	Atualizar NFe
			else if (name.equals("LBR_UpdateNFe"))
				p_LBR_UpdateNFe = "Y".equals(para[i].getParameter());
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 * 	DoIt
	 */
	protected String doIt() throws Exception
	{
		if (p_AD_Org_ID <= 0)
			throw new Exception ("@Mandatory@ @AD_Org_ID@");
		if (p_NFModel == null)
			throw new Exception ("@Mandatory@ @lbr_NFModel@");
		if (p_DocumentNo == null || p_DocumentNo.intValue() <= 0)
			throw new Exception ("@Mandatory@ @DocumentNo@");
		if (p_DocumentNo_To == null || p_DocumentNo_To.intValue() <= 0)
			p_DocumentNo_To = p_DocumentNo;
		if (p_DocumentNo_To < p_DocumentNo)
			throw new Exception ("@Mandatory@ @DocumentNo@");
		//
		MOrgInfo oi = MOrgInfo.get(Env.getCtx(), p_AD_Org_ID, get_TrxName());
		//
		MLocation orgLocation = new MLocation(getCtx(), oi.getC_Location_ID(), get_TrxName());
		String regionCode = BPartnerUtil.getRegionCode(orgLocation);
		if (regionCode.isEmpty())
			return "@Error@ UF Inválida";

		//	Configuração para esta NF
		MLBRNFConfig config = MLBRNFConfig.get(p_AD_Org_ID, p_NFModel);
		
		if (p_LBR_EnvType == null)
			p_LBR_EnvType = config.getlbr_NFeEnv();
		//
		TRetInutNFe.InfInut ret = invalidateNF (getCtx(), oi.getAD_Org_ID(), oi.get_ValueAsString("lbr_CNPJ"), regionCode, p_LBR_EnvType, 
				p_NFModel, p_DocumentNo, p_DocumentNo_To, p_NFSerie, p_Just, p_DateDoc);
		
		StringBuilder msg = new StringBuilder("@Success@<br />");
		msg.append("<br />Ambiente: ").append(ret.getTpAmb()).append(" - ").append(MRefList.getListName (getCtx(), 1100001, ret.getTpAmb().toString()));
		msg.append("<br />Versão: ").append(ret.getVerAplic());
		
		if (MLBRNotaFiscal.LBR_NFESTATUS_102_InutilizaçãoDeNúmeroHomologado.equals(ret.getCStat()))	//	OK
		{
			msg.append("<font color=\"008800\">");
			msg.append("<br />Estado: ").append(ret.getCStat()).append(" - ").append(ret.getXMotivo());
			msg.append("</font>");
		}
		else
		{
			msg.append("<font color=\"880000\">");
			msg.append("<br />Estado: ").append(ret.getCStat()).append(" - ").append(ret.getXMotivo());
			msg.append("</font>");
		}
		msg.append("<br />UF: ").append(ret.getCUF());
		msg.append("<br />Data/Hora: ").append (NFeUtil.formatTime (ret.getDhRecbto().toString()));
		
		if (ret.getNProt() != null)
			msg.append("<br />Protocolo: ").append(ret.getNProt());
		
		if (ret.getDhRecbto() != null)
			msg.append("<br />Data do Recebimento: ").append(ret.getDhRecbto());
		
		//	Atualiza os dados da NF-e
		if (p_LBR_UpdateNFe 
				&& p_DocumentNo_To.intValue() == p_DocumentNo.intValue() 
				//	Inutilização já ocorrida anteriormente
				&& TextUtil.match(ret.getCStat(), 
						MLBRNotaFiscal.LBR_NFESTATUS_563_RejeiçãoJáExistePedidoDeInutilizaçãoComAMesmaFaixaDeInutilização,
						MLBRNotaFiscal.LBR_NFESTATUS_206_RejeiçãoNF_EJáEstáInutilizadaNaBaseDeDadosDaSEFAZ))
		{
			MLBRNotaFiscal nfe = MLBRNotaFiscal.getNFe(getCtx(), oi.get_ValueAsString(MLBRNotaFiscal.COLUMNNAME_lbr_CNPJ), 
					MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalEletrônica, String.valueOf (p_DocumentNo), String.valueOf (p_NFSerie), get_TrxName());
			//
			if (nfe != null && nfe.getAD_Org_ID() == p_AD_Org_ID 
					//	Documento Próprio
					&& nfe.islbr_IsOwnDocument() 
					//	NF não processada
					&& !nfe.isProcessed()
					//	Mesmo ambiente
					&& p_LBR_EnvType.equals(nfe.getlbr_NFeEnv()))
			{
				nfe.setDocAction (MLBRNotaFiscal.DOCACTION_None);
				nfe.setDocStatus (MLBRNotaFiscal.DOCSTATUS_Voided);
				nfe.setProcessed(true);
				nfe.setIsCancelled(true);
				if (nfe.getlbr_MotivoCancel() == null)
					nfe.setlbr_MotivoCancel(p_Just);
				nfe.setlbr_NFeStatus (MLBRNotaFiscal.LBR_NFESTATUS_102_InutilizaçãoDeNúmeroHomologado);
				if (nfe.save())
					msg.append("<br /><br /><font color=\"008800\">Os dados de inutilização foram atualizados na NFe</font>");
				else
					msg.append("<br /><br />Falha na atualização da NF.");
			}
			
			//	NF não encontrada
			else
				msg.append("<br /><br />Nota Fiscal não encontrada para fazer a atualização dos dados de inutilização.");
		}
		
		return msg.toString();
	}	//	doIt

	/**
	 * 	Invalidate
	 * 
	 * @param ctx
	 * @param p_AD_Org_ID
	 * @param cnpj
	 * @param regionCode
	 * @param p_LBR_EnvType
	 * @param nfModel
	 * @param p_DocumentNo
	 * @param nfSerie
	 * @param p_DocumentNo_To
	 * @param p_Just
	 * @param p_DateDoc
	 * @return
	 * @throws Exception
	 */
	public static TRetInutNFe.InfInut invalidateNF (Properties ctx, int p_AD_Org_ID, String cnpj, 
			String regionCode, String p_LBR_EnvType, String nfModel, Integer p_DocumentNo, 
			Integer p_DocumentNo_To, String nfSerie, String p_Just, Timestamp p_DateDoc) throws Exception
	{
		MOrgInfo oi = MOrgInfo.get (ctx, p_AD_Org_ID, null);
		I_W_AD_OrgInfo oiW = POWrapper.create(oi, I_W_AD_OrgInfo.class);
		MLBRNFConfig config = MLBRNFConfig.get(p_AD_Org_ID, nfModel);
		//
		if (p_LBR_EnvType == null)
			p_LBR_EnvType = config.getlbr_NFeEnv();
		if (p_Just == null)
			p_Just = "Erro na emissão da NFe";
		
		InutNFeDocument inutNFeDocument = InutNFeDocument.Factory.newInstance();
		TInutNFe inutNFe = inutNFeDocument.addNewInutNFe();
		inutNFe.setVersao(NFeUtil.VERSAO_LAYOUT);
		
		TInutNFe.InfInut infInut = inutNFe.addNewInfInut();
		infInut.setMod(TMod.Enum.forString (nfModel));
		infInut.setCNPJ(TextUtil.toNumeric(cnpj));
		infInut.setTpAmb(TAmb.Enum.forString (p_LBR_EnvType));
		infInut.setCUF(TCodUfIBGE.Enum.forString(regionCode));
		infInut.setSerie(nfSerie);
		infInut.setNNFIni(p_DocumentNo.toString());
		infInut.setNNFFin(p_DocumentNo_To.toString());
		infInut.setXJust(p_Just);
		infInut.setAno(TextUtil.timeToString(p_DateDoc, "yy"));
		infInut.setXServ(TInutNFe.InfInut.XServ.INUTILIZAR);
		
		String id = "ID" + infInut.getCUF() + infInut.getAno() + infInut.getCNPJ() + infInut.getMod() + 
				TextUtil.lPad (infInut.getSerie(), 3) + TextUtil.lPad (infInut.getNNFIni(), 9) + TextUtil.lPad (infInut.getNNFFin(), 9);
		infInut.setId(id);
		
		//	Sign
		new SignatureUtil (oi, SignatureUtil.INUTILIZACAO_NFE).sign (inutNFeDocument, inutNFe.newCursor());
		
		//	Validate XML
		NFeUtil.validate (inutNFeDocument);
		
		//	Recupera a URL de Transmissão
		String serviceType = null;
		if (MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalEletrônica.equals(nfModel))
			serviceType = MLBRNFeWebService.INUTILIZACAO;		
		else if (MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalDeConsumidorEletrônica.equals(nfModel))
			serviceType = MLBRNFeWebService.NFCE_INUTILIZACAO;
		
		//	URL
		String url = MLBRNFeWebService.getURL (serviceType, p_LBR_EnvType, NFeUtil.VERSAO_LAYOUT, oi.getC_Location().getC_Region_ID());
		
		//	XML
		String xmlText = inutNFeDocument.xmlText(NFeUtil.getXmlOpt());
		StringReader xml = new StringReader (NFeUtil.wrapMsg (xmlText));
		
		final StringBuilder respStatus = new StringBuilder();
		
		//	Get the valid certificate
		MLBRDigitalCertificate certificate = MLBRDigitalCertificate.getCertificate (ctx, p_AD_Org_ID);
		if (certificate == null)
			throw new Exception ("@Error@ Certificado Inválido");
		
		//	Try to find a service for PKCS#11 for transmit
		IDocFiscalHandler handler = null;
		List<IDocFiscalHandlerFactory> list = Service.locator ().list (IDocFiscalHandlerFactory.class).getServices();
		for (IDocFiscalHandlerFactory docFiscal : list)
		{
			handler = docFiscal.getHandler (certificate.getlbr_CertType(), ProcInutNF.class.getName());
			if (handler != null)
				break;
		}
		
		// 	We have both, the URL for the local app and the Plugin transmitter
		if (handler != null)
		{
			synchronized (respStatus)
			{
				String uuid = UUID.randomUUID().toString();
				handler.transmitDocument(IDocFiscalHandler.DOC_NFE_INUT, oiW.getlbr_CNPJ(), 
						uuid, certificate.getURL(), url, "" + NFeUtil.getRegionCode (oi), xmlText, respStatus);
				
				//	Wait until process is completed
				respStatus.wait();
				
				//	Error message
				if (respStatus.toString().startsWith("@Error="))
					throw new Exception (respStatus.toString().substring(7));
			}	//	synchronized
		}
		else
		{
			//	Set certificate
			certificate.initialize();
			
			//	Mensagem
			br.inf.portalfiscal.www.nfe.wsdl.nfeinutilizacao4.NfeDadosMsg dadosMsg = br.inf.portalfiscal.www.nfe.wsdl.nfeinutilizacao4.NfeDadosMsg.Factory.parse (XMLInputFactory.newInstance().createXMLStreamReader(xml));
			
			NFeInutilizacao4Stub stub = new NFeInutilizacao4Stub(url);
	
			//	Faz a chamada
			OMElement nfeStatusServicoNF2 = stub.nfeInutilizacaoNF (dadosMsg.getExtraElement());
			respStatus.append(nfeStatusServicoNF2.toString());
		}
		
		//	Processa o retorno
		TRetInutNFe.InfInut retInutNFe = RetInutNFeDocument.Factory.parse (respStatus.toString()).getRetInutNFe().getInfInut();
		
		if (MLBRNotaFiscal.LBR_NFESTATUS_102_InutilizaçãoDeNúmeroHomologado.equals(retInutNFe.getCStat()))
			MLBRNFSkipped.register (retInutNFe);

		return retInutNFe;
	}	//	invalidateNF
}	//	ProcInutNF
