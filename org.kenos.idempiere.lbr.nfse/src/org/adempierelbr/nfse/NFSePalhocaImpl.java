package org.adempierelbr.nfse;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.net.URL;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.apache.commons.io.IOUtils;
import org.compiere.model.MAttachment;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.model.MSysConfig;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

import br.gov.sc.palhoca.nfse.NfseDocument;
import br.gov.sc.palhoca.nfse.NfseDocument.Nfse;
import br.gov.sc.palhoca.nfse.NfseDocument.Nfse.Itens;
import br.gov.sc.palhoca.nfse.NfseDocument.Nfse.Itens.Lista;
import br.gov.sc.palhoca.nfse.NfseDocument.Nfse.Nf;
import br.gov.sc.palhoca.nfse.NfseDocument.Nfse.Prestador;
import br.gov.sc.palhoca.nfse.NfseDocument.Nfse.Tomador;
import br.gov.sc.palhoca.nfse.RetornoDocument;
import br.gov.sc.palhoca.nfse.RetornoDocument.Retorno;

/**
 * 		NFS-e para a cidade de Palhoça / SC
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $$Id: NFSeMogiImpl.java, v1.0 2015/05/13 10:18:48 AM, ralexsander Exp $
 */
public class NFSePalhocaImpl implements INFSe
{
	/** Log				*/
	private static CLogger log = CLogger.getCLogger(NFSePalhocaImpl.class);
	
	public static final Integer C_City_ID = 1004535;
	private static final String FILE_XML_NFSE = "-nfse.xml";
	private static final String FILE_XML_RECIBO_NFSE = "-recibo.xml";
	private static final String COD_TOM_PALHOCA = "82333";

	/**
	 *  Tipo de integração, via Webservice ou via arquivo de RPS
	 */
	public String getType()
	{
		return TYPE_SYNCHRONOUS;
	}	//	getType

	public byte[] getXML(MLBRNotaFiscal nf)
	{		
		return null;
	}	//	getXML

	@Override
	public StringBuilder getRPS(List<MLBRNotaFiscal> nfs) throws Exception
	{		
		return null;
	}	//	getRPS

	/**
	 * 	Emissão de Nota Fiscal de Serviço de Forma Assincrona
	 */
	public boolean transmit (MLBRNotaFiscal nf) throws Exception
	{
		log.info ("NFSETransmit Process");
		
		//	ID da Organização
		int p_AD_Org_ID = nf.getAD_Org_ID();
		
		//	Informações da Organização
		MOrgInfo oi = MOrgInfo.get (nf.getCtx(), p_AD_Org_ID, null);
		I_W_AD_OrgInfo oiw = POWrapper.create(oi, I_W_AD_OrgInfo.class);
		
		//	Cria Objeto XML para receber os dados da NF-e de Serviço
		NfseDocument nfdDoc = NfseDocument.Factory.newInstance();
		Nfse nfse = nfdDoc.addNewNfse();
		
		//	Prestador
		Prestador nfse_prest = nfse.addNewPrestador();
		nfse_prest.setCpfcnpj (TextUtil.toNumeric (oiw.getlbr_CNPJ()));
		nfse_prest.setCidade (COD_TOM_PALHOCA);	//	Códito TOM de Palhoça/SC - http://goo.gl/GT9kwl
		
		//	Tomador
		Tomador nfse_tomador = nfse.addNewTomador();
		
		//	Pessoa Física
		if (MLBRNotaFiscal.LBR_BPTYPEBR_PF_Individual.equals(nf.getlbr_BPTypeBR()))
		{
			nfse_tomador.setTipo("F");
			nfse_tomador.setCpfcnpj(TextUtil.toNumeric (nf.getlbr_BPCNPJ()));
		}
		
		//	Pessoa Jurídica
		else if (MLBRNotaFiscal.LBR_BPTYPEBR_PJ_LegalEntity.equals(nf.getlbr_BPTypeBR()))
		{
			nfse_tomador.setTipo("J");
			nfse_tomador.setCpfcnpj(TextUtil.toNumeric (nf.getlbr_BPCNPJ()));
		}
		
		// 	Estrangeiro
		else if (MLBRNotaFiscal.LBR_BPTYPEBR_XX_Foreigner.equals(nf.getlbr_BPTypeBR()))
		{
			nfse_tomador.setTipo("E");
			nfse_tomador.setIdentificador(nf.getC_BPartner().getTaxID());
			nfse_tomador.setEstado(nf.getlbr_BPRegion());
			nfse_tomador.setPais(nf.getlbr_BPCountry());			
		}
		
		nfse_tomador.setNomeRazaoSocial(nf.getBPName());
		nfse_tomador.setLogradouro(TextUtil.retiraEspecial(nf.getlbr_BPAddress1()));
		nfse_tomador.setNumeroResidencia(TextUtil.retiraEspecial(nf.getlbr_BPAddress2()));
		
		if (nf.getlbr_BPAddress4() != null)
			nfse_tomador.setComplemento(TextUtil.retiraEspecial(nf.getlbr_BPAddress4()));
		nfse_tomador.setBairro(TextUtil.retiraEspecial(nf.getlbr_BPAddress3()));
		nfse_tomador.setCidade(TextUtil.retiraEspecial(nf.getlbr_BPCity()));
		nfse_tomador.setCep(TextUtil.toNumeric (nf.getlbr_BPPostal()));
		
		if (nf.getlbr_BPPhone() != null)
			nfse_tomador.setFoneComercial(nf.getlbr_BPPhone());
		
		//	Itens
		Itens nfse_itens = nfse.addNewItens();
		
		for (MLBRNotaFiscalLine nfl : nf.getLines())
		{
			//	Não é serviço
			if (!nfl.islbr_IsService())
				continue;
			
			String serviceCode = "";			
			if (nfl.getM_Product_ID() > 0)
			{
				MProduct p = new MProduct (Env.getCtx(), nfl.getM_Product_ID(), null);
				if (serviceCode.equals("") 
						&& p.get_ValueAsString("lbr_ServiceCode") != null)
				{
					serviceCode = p.get_ValueAsString("lbr_ServiceCode");	//	FIXME : Copiar para LBR_NotaFiscalLine
				}
			}
			
			if (serviceCode == null || serviceCode.isEmpty())
				continue;
			
			Lista lista = nfse_itens.addNewLista();
	
			lista.setCodigoLocalPrestacaoServico(COD_TOM_PALHOCA);
			lista.setCodigoItemListaServico(serviceCode);
			lista.setDescritivo(nfl.getProductName());
			lista.setAliquotaItemListaServico(toReal(nfl.getTaxRate("ISS")));
			lista.setSituacaoTributaria("0");
			lista.setValorTributavel(toReal(nfl.getTaxBaseAmt("ISS")));
		}
		
		//	Total de Imposto
		String v_Total 	= toReal (nf.getGrandTotal());
		String v_PIS 	= toReal (nf.getTaxAmt("PIS"));
		String v_COFINS = toReal (nf.getTaxAmt("COFINS"));
		String v_INSS 	= toReal (nf.getTaxAmt("INSS"));
		String v_IR 	= toReal (nf.getTaxAmt("IR"));
		String v_CSLL 	= toReal (nf.getTaxAmt("CSLL"));
		
		//	Totais da NF
		Nf nfse_nf = nfse.addNewNf();
		nfse_nf.setValorTotal(v_Total);
		nfse_nf.setValorIr(v_IR);
		nfse_nf.setValorInss(v_INSS);
		nfse_nf.setValorContribuicaoSocial(v_CSLL);
		nfse_nf.setValorPis(v_PIS);
		nfse_nf.setValorCofins(v_COFINS);
		nfse_nf.setObservacao(nf.getDescription());
		
		String user = MSysConfig.getValue ("KENOSERP_USER_LOGIN_NFSE_MOGI", nf.getAD_Client_ID());
		String pass = MSysConfig.getValue ("KENOSERP_PASSWORD_LOGIN_NFSE_MOGI", nf.getAD_Client_ID());
		String xml = nfdDoc.xmlText(NFeUtil.getXmlOpt());
		
		//	Apagar XML antigos
		if (nf.getAttachment() != null)
			nf.getAttachment().delete(true);

		//	Adicionando o XML do Recibo em Anexo na NF-e
		nf.getAttachment(true);
		MAttachment attach = nf.createAttachment();
		attach.addEntry(nf.getDocumentNo() + FILE_XML_NFSE, xml.getBytes("UTF-8"));
		attach.save();
		
		InputStream is = null;
		String retorno = null;
		
		try
		{
			//	URL da Requisição
//			String strUrl = "file:///private/tmp/exemplo_retorno.xml";
			String strUrl = "http://sync.nfs-e.net/datacenter/include/nfw/importa_nfw/nfw_import_upload.php";
			strUrl += "?eletron=1";						//	Resposta deve ser XML
			strUrl += "?login=" + user;					//	Usuário
			strUrl += "?senha=" + pass;					//	Senha
			strUrl += "?cidade=" + COD_TOM_PALHOCA;		//	Código da Cidade
			strUrl += "?f1=" + xml;						//	XML
			//
			URL url = new URL (strUrl);
			is = url.openStream();
			retorno = IOUtils.toString (is, "ISO-8859-1");
		}
		catch (Exception e)
		{
			log.log (Level.SEVERE, "Erro na transmissão da NFS-e");
		}
		finally
		{
			try
			{
				if (is != null)
					is.close();
			}
			catch (IOException ioe){}
		}
		
		//	Armazenar o XML de Resposta em uma String
		log.info("Resposta do Envio: " + retorno);
		
		if (retorno == null || retorno.contains("Erro"))
			throw new Exception (retorno);
		
		//	XML do Tipo Recibo de Recepção que confirma o Recebimento da NF-e 
		RetornoDocument reciboDoc = RetornoDocument.Factory.parse (retorno);
		Retorno recibo = reciboDoc.getRetorno();

		//	Anexa o XML de Recibo na NF-e
		if (recibo.getMensagem().getCodigo().equals("00001 - Sucesso"))
		{
			//	Atualizando a NF-e
			nf.setlbr_NFeProt(recibo.getCodVerificadorAutenticidade());
			nf.setDateTrx(TextUtil.stringToTime(recibo.getDataNfse() + recibo.getHoraNfse(), "dd/MM/yyyyhh:mm:ss"));
			nf.setlbr_NFENo(recibo.getNumeroNfse());
			nf.save();
			
			//	Adicionando o XML do Recibo em Anexo na NF-e
			nf.getAttachment(true);
			MAttachment attachRecibo = nf.createAttachment();
			attachRecibo.addEntry(recibo.getCodVerificadorAutenticidade() + FILE_XML_RECIBO_NFSE, reciboDoc.xmlText(NFeUtil.getXmlOpt()).toString().getBytes("UTF-8"));
			attachRecibo.save();
			
			return true;
		}
		
		throw new AdempiereException ("Falha no processamento da NFS-e: " + recibo.getMensagem().getCodigo());
	}	//	transmit
	
	private static String toReal (BigDecimal grandTotal)
	{
		//	Check for null
		if (grandTotal == null)
			grandTotal = Env.ZERO;
		
		return grandTotal.setScale(2, RoundingMode.HALF_UP).toPlainString().replace(".", ",");
	}	//	toReal

	/**
	 * 	Transmissão de RPS em lote
	 */
	public boolean transmit (Properties ctx, int AD_Org_ID, String trxName, List<MLBRNotaFiscal> nfs) throws Exception
	{
		return false;
	}	//	transmit
	
	/**
	 * Consultar Estado da NF-e de Serviço após a Transmissão
	 */
	public boolean consult(MLBRNotaFiscal nf) throws Exception
	{
		return false;
	}	// consult
	
	/**
	 * Consultar Estado da NF-e de Serviço após a Transmissão em Lote
	 */
	public boolean consult(Properties ctx, int AD_Org_ID, String trxName, List<MLBRNotaFiscal> nfs)throws Exception
	{
		return false;
	}	// consult
	
	@Override
	public String printNFSe(MLBRNotaFiscal nf)
	{
		return null;
	}	//	printNFSe
	
	@Override
	public File getPDF(MLBRNotaFiscal nf)
	{
		return null;
	}	//	getPDF
}	//	NFSeImpl
