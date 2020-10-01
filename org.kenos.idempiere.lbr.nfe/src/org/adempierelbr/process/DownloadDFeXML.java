package org.adempierelbr.process;

import java.io.StringReader;
import java.util.HashSet;
import java.util.List;
import java.util.Properties;
import java.util.Set;
import java.util.UUID;
import java.util.logging.Level;

import javax.xml.stream.FactoryConfigurationError;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;

import org.adempiere.base.Service;
import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.model.MLBRNFConfig;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRPartnerDFe;
import org.adempierelbr.nfe.api.NFeDistribuicaoDFeStub;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.apache.axiom.om.OMElement;
import org.apache.xmlbeans.XmlException;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.base.event.IDocFiscalHandler;
import org.kenos.idempiere.lbr.base.event.IDocFiscalHandlerFactory;

import br.inf.portalfiscal.nfe.dfe.DistDFeIntDocument;
import br.inf.portalfiscal.nfe.dfe.DistDFeIntDocument.DistDFeInt;
import br.inf.portalfiscal.nfe.dfe.RetDistDFeIntDocument;
import br.inf.portalfiscal.nfe.dfe.RetDistDFeIntDocument.RetDistDFeInt;
import br.inf.portalfiscal.nfe.dfe.TAmb;
import br.inf.portalfiscal.nfe.dfe.TCodUfIBGE;
import br.inf.portalfiscal.nfe.dfe.TVerDistDFe;
import br.inf.portalfiscal.www.nfe.wsdl.nfedistribuicaodfe.NfeDadosMsg_type0;

/**
 * 		Consulta de Cadastro
 * 
 * 	TODO: Pesquisar XML de uma chave específica
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: DownloadDFeXML.java, v1.0 2013/MM/DD 4:08:49 PM, ralexsander Exp $
 */
public class DownloadDFeXML extends SvrProcess
{
	/** Process ID 					*/
	public static final int AD_Process_ID = 1120162;
	
	/**	Organization				*/
	private int p_AD_Org_ID = -1;
	
	/** NF-e ID						*/
	private String p_NFeID = null;
	
	/** Log							*/
	private static CLogger log = CLogger.getCLogger (DownloadDFeXML.class);
	
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

			else if (MOrg.COLUMNNAME_AD_Org_ID.equals (name))
				p_AD_Org_ID = para[i].getParameterAsInt();
			
			else if (MLBRPartnerDFe.COLUMNNAME_lbr_NFeID.equals(name))
				p_NFeID = (String) para[i].getParameter();
			
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}		
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message (variables are parsed)
	 *  @throws Exception if not successful e.g.
	 */
	protected String doIt () throws Exception
	{
		//	Organization
		if (p_AD_Org_ID <= 0)
			throw new AdempiereUserError ("@FillMandatory@  @AD_Org_ID@");
		
		return DownloadXML(Env.getCtx(), p_AD_Org_ID, p_NFeID, get_TrxName());
		
	}	//	doIt
	
	/**
	 * 
	 * @param ctx
	 * @param AD_Org_ID
	 * @param p_NFeID
	 * @param trxName
	 * @return
	 * @throws Exception
	 */
	public static String DownloadXML(Properties ctx, int AD_Org_ID, String p_NFeID, String trxName) throws Exception
	{		
		MOrgInfo oi = MOrgInfo.get (ctx, AD_Org_ID, null);
		
		//	Separar as chaves da NFe
		Set<String> nfes_all = new HashSet<String>();
			
		//	Specific NF-e
		if (p_NFeID != null && !p_NFeID.isEmpty())
			nfes_all.add(p_NFeID);
		
		//	All DF-e from Organization
		else
		{
			String whereClause =  "AD_Org_ID=? "	//	Same Org
					+ "AND LBR_IsXMLValid='N' "		//	Not Downloaded Yet
					+ "AND DocumentType='0' "		//	Only NF-e (Exclude Events)
					+ "AND IsCancelled='N' "		//	Not Cancelled
					+ "AND (LBR_NFeStatus NOT IN ('137','653') OR LBR_NFeStatus IS NULL) "	//	Unavailable Download
					+ "AND EXISTS (SELECT '1' FROM LBR_NFeEvent e "
								 + "WHERE e.LBR_PartnerDFe_ID=LBR_PartnerDFe.LBR_PartnerDFe_ID "
								 +   "AND e.DocStatus IN ('CL','CO') "
								 +   "AND e.LBR_EventType LIKE '2102%')";		//	Only Manifested DF-e
			
			List<MLBRPartnerDFe> lDFe = new Query (ctx, MLBRPartnerDFe.Table_Name, whereClause, trxName)
					.setParameters(new Object[]{oi.getAD_Org_ID()})
					.list();
				
			for (MLBRPartnerDFe DFe : lDFe)
				nfes_all.add(DFe.getlbr_NFeID());
		}
		
		//	Separar de 10 em 10
		Counter count = new Counter (0);
		
		//	Process
		for (String nfe : nfes_all)
		{
			RetDistDFeIntDocument dwResponse = DownloadDFeXML.doIt (oi, nfe);
			count.loop++;
			//
			if (dwResponse == null)
				throw new AdempiereUserError ("Error downloading XML. Check log for more info.");
			
			RetDistDFeInt retDownloadNFe = dwResponse.getRetDistDFeInt();
			String cStat = retDownloadNFe.getCStat();
			//
			if (MLBRNotaFiscal.LBR_NFESTATUS_138_DocumentoLocalizadoParaODestinatário.equals(cStat))
				GetDFe.processResult (ctx, retDownloadNFe.getLoteDistDFeInt(), count, AD_Org_ID);
			
			//	Falha
			else if (MLBRNotaFiscal.LBR_NFESTATUS_653_RejeiçãoNF_ECanceladaArquivoIndisponívelParaDownload.equals(cStat)
					&& retDownloadNFe.getXMotivo().toUpperCase().contains("CANCELADA"))
				DB.executeUpdate("UPDATE LBR_PartnerDFe SET IsCancelled='Y' WHERE LBR_NFeID='" + nfe + "'", trxName);
			
			//	Set Status
			DB.executeUpdate("UPDATE LBR_PartnerDFe SET LBR_NFeStatus='" + cStat + "' WHERE LBR_NFeID='" + nfe + "'", trxName);
		}
		
		return "@Success@ <br />" + 
				count.nfe + " - Downloads obtidos<br />" +
				count.err + " - Pedidos não processados<br />" +
				"Adquiridas em " + count.loop + " pesquisa(s)";
	}
	
	/**
	 * 		Consulta a SeFaz para fazer o Download do arquivo XML da NFe
	 * 
	 * 	@param oi Organization Info
	 * 	@param Chaves a serem pesquisadas
	 * 	@return
	 * 	@throws XmlException 
	 */
	public static RetDistDFeIntDocument doIt (MOrgInfo oi, String nfeKey) throws XmlException
	{
		I_W_AD_OrgInfo oiW = POWrapper.create(oi, I_W_AD_OrgInfo.class);
		DistDFeIntDocument dwDoc = DistDFeIntDocument.Factory.newInstance();
		DistDFeInt dw = dwDoc.addNewDistDFeInt();
		
		MLBRNFConfig config = MLBRNFConfig.get(oi.getAD_Org_ID());
		
		dw.setVersao(TVerDistDFe.X_1_01);
		dw.setCUFAutor(TCodUfIBGE.X_35);
		dw.setTpAmb(TAmb.Enum.forString(config.getlbr_NFeEnv()));

		//		CPF ou CNPJ
		String CNPJF = TextUtil.toNumeric (oiW.getlbr_CNPJ());
		if (CNPJF != null && CNPJF.length() == 11)
			dw.setCPF (CNPJF);
		else
			dw.setCNPJ(CNPJF);
	
		//	Consulta por chave
		dw.addNewConsChNFe().setChNFe(nfeKey);
		
		//	Validar XML
		NFeUtil.validate (dwDoc);
		
		try
		{
			//	XML
			StringBuilder xml =  new StringBuilder (dwDoc.xmlText(NFeUtil.getXmlOpt()));
			XMLStreamReader dadosXML = XMLInputFactory.newInstance().createXMLStreamReader(new StringReader(NFeUtil.wrapMsg(xml.toString())));
			
			String url = "https://www1.nfe.fazenda.gov.br/NFeDistribuicaoDFe/NFeDistribuicaoDFe.asmx";
//			String url = MLBRNFeWebService.getURL (MLBRNFeWebService.CONSULTANFEDEST, oiW.getlbr_NFeEnv(), NFeUtil.VERSAO_LAYOUT, oi.getC_Location().getC_Region_ID());
			
			final StringBuilder respStatus = new StringBuilder();
			
			//	Get the valid certificate
			MLBRDigitalCertificate certificate = MLBRDigitalCertificate.getCertificate (Env.getCtx(), oi.getAD_Org_ID());
			if (certificate == null)
				throw new Exception ("@Error@ Certificado Inválido");
			
			//	Try to find a service for PKCS#11 for transmit
			IDocFiscalHandler handler = null;
			List<IDocFiscalHandlerFactory> list = Service.locator ().list (IDocFiscalHandlerFactory.class).getServices();
			for (IDocFiscalHandlerFactory docFiscal : list)
			{
				handler = docFiscal.getHandler (certificate.getlbr_CertType(), DownloadDFeXML.class.getName());
				if (handler != null)
					break;
			}
			
			// 	We have both, the URL for the local app and the Plugin transmitter
			if (handler != null)
			{
				synchronized (respStatus)
				{
					String uuid = UUID.randomUUID().toString();
					handler.transmitDocument (IDocFiscalHandler.DOC_DFE_XML, oi.get_ValueAsString(I_W_AD_OrgInfo.COLUMNNAME_lbr_CNPJ), 
							uuid, certificate.getURL(), url, "35", xml.toString(), respStatus);
					
					//	Wait until process is completed, when processing is async
					if (MLBRDigitalCertificate.LBR_CERTTYPE_PKCS11Remote.equals(certificate.getlbr_CertType()))
						respStatus.wait();
					
					//	Error message
					if (respStatus.toString().startsWith("@Error="))
						throw new Exception (respStatus.toString().substring(7));
				}	//	synchronized
			}
			else
			{
				//	Prepara a Transmissão
				certificate.initialize();
				
				//	Mensagem
				NfeDadosMsg_type0 dadosMsg = NfeDadosMsg_type0.Factory.parse (dadosXML);
				NFeDistribuicaoDFeStub stub = new NFeDistribuicaoDFeStub(url);
	
				OMElement nfeConsulta = stub.nfeDistDFeInteresse (dadosMsg).getExtraElement();
				respStatus.append(nfeConsulta.toString());
			}

			//	Resposta
			return RetDistDFeIntDocument.Factory.parse (respStatus.toString());
		}
		catch (XMLStreamException e)
		{
			e.printStackTrace();
		}
		catch (FactoryConfigurationError e)
		{
			e.printStackTrace();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}	//	doIt
}	//	DownloadDFeXML