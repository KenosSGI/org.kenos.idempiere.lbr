package org.adempierelbr.nfse;

import java.awt.Desktop;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.math.BigDecimal;
import java.net.URL;
import java.sql.Timestamp;
import java.util.List;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.nfse.util.FixedTxt;
import org.adempierelbr.process.ProcEMailNFe;
import org.adempierelbr.process.ProcReturnRPS;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.SignatureUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.validator.VLBROrder;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.adempierelbr.wrapper.I_W_C_Invoice;
import org.apache.axis2.transport.http.HTTPConstants;
import org.compiere.model.MAttachment;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoicePaySchedule;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.model.MShipper;
import org.compiere.model.MSysConfig;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

import com.sil.webservices.WSEntradaServiceStub;
import com.sil.webservices.WSEntradaServiceStub.ConsultarAtividades;
import com.sil.webservices.WSEntradaServiceStub.ConsultarAtividadesE;
import com.sil.webservices.WSEntradaServiceStub.ConsultarAtividadesResponseE;
import com.sil.webservices.WSEntradaServiceStub.NfdEntrada;
import com.sil.webservices.WSEntradaServiceStub.NfdEntradaE;
import com.sil.webservices.WSEntradaServiceStub.NfdEntradaResponseE;
import com.sil.webservices.WSSaidaServiceStub;
import com.sil.webservices.WSSaidaServiceStub.NfdSaida;
import com.sil.webservices.WSSaidaServiceStub.NfdSaidaE;
import com.sil.webservices.WSUtilServiceStub;
import com.sil.webservices.WSUtilServiceStub.UrlNfd;
import com.sil.webservices.WSUtilServiceStub.UrlNfdE;

import br.gov.sp.mogidascruzes.nfse.ReciborecepcaoDocument;
import br.gov.sp.mogidascruzes.nfse.TbnfdDocument;
import br.gov.sp.mogidascruzes.nfse.TbnfdDocument.Tbnfd.Nfd;
import br.gov.sp.mogidascruzes.nfse.TbnfdDocument.Tbnfd.Nfd.Tbfatura;
import br.gov.sp.mogidascruzes.nfse.TbnfdDocument.Tbnfd.Nfd.Tbfatura.Fatura;
import br.gov.sp.mogidascruzes.nfse.TbnfdDocument.Tbnfd.Nfd.Tbservico;
import br.gov.sp.mogidascruzes.nfse.TbnfdDocument.Tbnfd.Nfd.Tbservico.Servico;
import br.gov.sp.mogidascruzes.nfse.WSSaidaDocument;
import br.gov.sp.mogidascruzes.nfse.WSSaidaDocument.WSSaida;
import br.gov.sp.mogidascruzes.nfse.WSSaidaDocument.WSSaida.Tbnfd;
import br.gov.sp.mogidascruzes.nfse.WSSaidaDocument.WSSaida.Tbnfd.Nfdok;

	
/**
 * 		NFS-e para a cidade de Mogi das Cruzes
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $$Id: NFSeMogiImpl.java, v1.0 2015/05/13 10:18:48 AM, ralexsander Exp $
 */
public class NFSeMogiImpl implements INFSe
{
	/** Log				*/
	private static CLogger log = CLogger.getCLogger(NFSeMogiImpl.class);
	
	public static final Integer C_City_ID = 1005069;
	
	private static final String FILE_XML_RECIBO_NFSE = "-recibo.xml";
	
	private static final String FILE_XML_NFSE_AUTORIZADO = "-nfseOK-dst.xml";

	/**
	 *  Tipo de integração, via Webservice ou via arquivo de RPS
	 */
	
	public String getType()
	{
		return TYPE_ASYNCHRONOUS;
	}	//	getType

	public byte[] getXML(MLBRNotaFiscal nf)
	{
		//	ID da Organização
		int p_AD_Org_ID = nf.getAD_Org_ID();
		
		//	Informações da Organização
		MOrgInfo oi = MOrgInfo.get (nf.getCtx(), p_AD_Org_ID, null);
		
		//	Parceiro de Negócio
		MBPartner partner = new MBPartner(Env.getCtx(), nf.getC_BPartner_ID(), null);
		
		//	Cria Objeto XML para receber os dados da NF-e de Serviço
		TbnfdDocument nfdDoc = TbnfdDocument.Factory.newInstance();
		TbnfdDocument.Tbnfd tbnfd = nfdDoc.addNewTbnfd();
		Nfd nfd = tbnfd.addNewNfd();
		
		//Definição dos campos XML 
		nfd.setNumeronfd(0); //Integer.parseInt(nf.getDocumentNo()));
		nfd.setCodseriedocumento(7); //	Informar 7 Fixo
		nfd.setCodnaturezaoperacao(Integer.parseInt(nf.getlbr_NFSerie())); //CFPS - Código Fiscal de Prestação de Serviço.
		nfd.setCodigocidade((byte)3); // 3 - Fixado o Código da Cidade de Mogi das Cruzes
		nfd.setInscricaomunicipalemissor(Integer.parseInt(nf.getlbr_OrgCCM()));
		nfd.setDataemissao(TextUtil.timeToString (nf.getDateDoc(), "dd/MM/yyyy"));
		nfd.setRazaotomador(TextUtil.retiraEspecial(nf.getBPName()));
		nfd.setNomefantasiatomador("");
		nfd.setEnderecotomador(TextUtil.retiraEspecial(nf.getlbr_BPAddress1() + " " + nf.getlbr_BPAddress2()));
		nfd.setCidadetomador(TextUtil.retiraEspecial(nf.getlbr_BPCity()));
		nfd.setEstadotomador(TextUtil.retiraEspecial(nf.getlbr_BPRegion()));
		nfd.setPaistomador("Brasil");//nf.getlbr_OrgCountry());
		nfd.setFonetomador((TextUtil.retiraEspecial(nf.getlbr_BPPhone()) != null ? TextUtil.retiraEspecial(nf.getlbr_BPPhone()) : ""));
		nfd.setFaxtomador((TextUtil.retiraEspecial(nf.getlbr_BPPhone()) != null ? TextUtil.retiraEspecial(nf.getlbr_BPPhone()) : ""));
		nfd.setCeptomador(TextUtil.toNumeric (nf.getlbr_BPPostal()));
		nfd.setBairrotomador(TextUtil.retiraEspecial(nf.getlbr_BPAddress3()));
		nfd.setEmailtomador(partner.get_ValueAsString("LBR_EMailNFe"));
		//nfd.setTppessoa (); Método não encontrado na classe. Campo utilizado para Tomadores de Outro Pais.
		nfd.setCpfcnpjtomador(TextUtil.retiraEspecial(nf.getlbr_BPCNPJ()));
		nfd.setInscricaoestadualtomador(TextUtil.toNumeric(nf.get_ValueAsString("lbr_BPIE")));
		nfd.setInscricaomunicipaltomador(partner.get_ValueAsString("LBR_CCM"));
				
		//	Adicionar Dados da Fatura no XML
		Tbfatura faturaDoc = nfd.addNewTbfatura();		
		
		// Parcelas
		MInvoicePaySchedule [] parcelas = MInvoicePaySchedule.getInvoicePaySchedule(Env.getCtx(), nf.getC_Invoice_ID(), 0, nf.get_TrxName());
		
		// Se houver mais de 1 parcela
		if (parcelas.length > 0)
		{
			// Contador
			int i = 1;
			
			// Parcelas
			for (MInvoicePaySchedule parcela : parcelas)
			{
				// Adicionar Faturas
				Fatura fatura = faturaDoc.addNewFatura();
				fatura.setNumfatura(i);
				fatura.setVencimentofatura(TextUtil.timeToString(parcela.getDueDate(), "dd/MM/yyyy"));
				fatura.setValorfatura(parcela.getDueAmt().setScale(2, BigDecimal.ROUND_HALF_UP).toString().replace(".", ","));
				i++;
			}
		}
		else
		{
			// Fatura
			MInvoice invoice = (MInvoice) nf.getC_Invoice();
			
			Timestamp date = DB.getSQLValueTSEx(nf.get_TrxName(), 
					"SELECT paymenttermduedate(?,?)", invoice.getC_PaymentTerm_ID(), invoice.getDateInvoiced());
			
			// Adicionar Fatura
			Fatura fatura = faturaDoc.addNewFatura();
			fatura.setNumfatura(1);
			fatura.setVencimentofatura(TextUtil.timeToString(date, "dd/MM/yyyy"));
			fatura.setValorfatura(invoice.getGrandTotal().setScale(2, BigDecimal.ROUND_HALF_UP).toString().replace(".", ","));
		}
			
		
		//	Adicionar dados do Serviço Prestado
		BigDecimal aliquota = Env.ZERO;
		String serviceCode = "";
		I_W_C_Invoice invoice = POWrapper.create(new MInvoice (Env.getCtx(), nf.getC_Invoice_ID(), null), I_W_C_Invoice.class);

		Tbservico servicoDoc = nfd.addNewTbservico();		
		for (MLBRNotaFiscalLine nfl : nf.getLines())
		{
			if (!nfl.islbr_IsService())
				continue;
			//
			if (nfl.getM_Product_ID() > 0)
			{
				MProduct p = new MProduct (Env.getCtx(), nfl.getM_Product_ID(), null);
				if (serviceCode.equals("") 
						&& p.get_ValueAsString("lbr_ServiceCode") != null)
				{
					serviceCode = p.get_ValueAsString("lbr_ServiceCode");	//	FIXME : Copiar para LBR_NotaFiscalLine
					aliquota = nfl.getTaxRate("ISS");
				}
				
				String descricao = "";
				
				// Descrição do Serviço
				if (nfl.getDescription()!= null && !nfl.getDescription().isEmpty())
					descricao = nfl.getDescription();
				else
					descricao = nfl.getProductName();
			
				Servico servico = servicoDoc.addNewServico();
				servico.setQuantidade(TextUtil.bdToStringNoTrail(nfl.getQty(), 0));
				servico.setDescricao(TextUtil.retiraEspecial(descricao));
				servico.setCodatividade(serviceCode); //	Ex. 5300 - Verificar Buscar campo correto no Produto. Adicionar o campo no LBR.
				servico.setValorunitario(TextUtil.bdToStringNoTrail(nfl.getPrice(), 2).replace(".", ","));
				servico.setAliquota(TextUtil.bdToStringNoTrail(aliquota, 2));	// Verificar
				servico.setImpostoretido((invoice.isLBR_HasWithhold() ? "V" : "F"));	// Verificar
			}
		}
		
		// Observação do campo Observação Fiscal e Descrição
		String obs = (nf.getlbr_FiscalOBS() == null ? "" : TextUtil.retiraEspecial(nf.getlbr_FiscalOBS()).trim());		
		obs = obs + (nf.getDescription() == null ? "" : TextUtil.retiraEspecial(nf.getDescription()).trim());
		
		nfd.setObservacao(obs);
		
		//	Quando a via de entrega for Transportadora
		if ("S".equals(nf.getDeliveryViaRule()))
		{
			//	Razão Social e CNPJ/CPF da Transportadora. Buscar do Parceiro de Negócio
			I_W_C_BPartner shipper = POWrapper.create (MBPartner.get(Env.getCtx(), new MShipper (Env.getCtx(), nf.getM_Shipper_ID(), null).getC_BPartner_ID()), I_W_C_BPartner.class);
			nfd.setRazaotransportadora(TextUtil.retiraEspecial(shipper.getName()));
			nfd.setCpfcnpjtransportadora(shipper.getlbr_BPTypeBR().equals("PJ")? shipper.getlbr_CNPJ(): shipper.getlbr_CPF());
			
			//	Endereço da Transportadora
			MBPartnerLocation bpl = new MBPartnerLocation(Env.getCtx(), shipper.getC_BPartner_ID(), null);
			nfd.setEnderecotransportadora(TextUtil.retiraEspecial(bpl.getC_Location().getAddress1()));
		}
		else
		{
			//	Quando a via de entregar não for Transportadora, adicionar os campos em branco no xml
			nfd.setRazaotransportadora("");
			nfd.setCpfcnpjtransportadora("");
			nfd.setEnderecotransportadora("");
		}
		
		nfd.setTipofrete(nf.getFreightCostRule());
		nfd.setQuantidade(Integer.toString(nf.getNoPackages()));
		nfd.setEspecie((nf.getlbr_PackingType() != null ? nf.getlbr_PackingType() : ""));
		nfd.setPesoliquido(toBD(nf.getlbr_NetWeight()).toString());
		nfd.setPesobruto(toBD(nf.getlbr_GrossWeight()).toString());
		
		//	Total de Imposto
		BigDecimal v_PIS 	= toBD (nf.getTaxAmt("PIS")).abs();
		BigDecimal v_COFINS = toBD (nf.getTaxAmt("COFINS")).abs();
		BigDecimal v_INSS 	= toBD (nf.getTaxAmt("INSS")).abs();
		BigDecimal v_IR 	= toBD (nf.getTaxAmt("IR")).abs();
		BigDecimal v_CSLL 	= toBD (nf.getTaxAmt("CSLL")).abs();
		
		//	Obrigatório o Preenchimento das tags dos impostos
		nfd.setPis("");
		nfd.setCofins("");
		nfd.setInss("");
		nfd.setIrrf("");
		nfd.setCsll("");
		
		//	Impostos com Retenção
		List<String> haswithhold = VLBROrder.hasWithHold ((MInvoice)nf.getC_Invoice());
		
		// Se a Flag Possui retenção estiver desmarcada não adicionar os impostos
		if (invoice.isLBR_HasWithhold())
		{	
			if (v_PIS.signum() == 1 && haswithhold.contains("PIS-COFINS-CSLL"))
				nfd.setPis(v_PIS.toString().replace(".", ","));
			
			if (v_COFINS.signum() == 1 && haswithhold.contains("PIS-COFINS-CSLL"))
				nfd.setCofins(v_COFINS.toString().replace(".", ","));
			
			if (v_INSS.signum() == 1 && haswithhold.contains("INSS"))
				nfd.setInss(v_INSS.toString().replace(".", ","));
			
			if (v_IR.signum() == 1 && haswithhold.contains("IR"))
				nfd.setIrrf(v_IR.toString().replace(".", ","));
			
			if (v_CSLL.signum() == 1 && haswithhold.contains("PIS-COFINS-CSLL"))
				nfd.setCsll(v_CSLL.toString().replace(".", ","));
		}
		
		nfd.setDescdeducoesconstrucao("");
		nfd.setTotaldeducoesconstrucao("");
		//	Definido de Acordo com CFPS, neste caso o CFPS está fixo 511
		nfd.setTributadonomunicipio("true");
		nfd.setNumerort(""); //nf.getDocumentNo()); // Informar o RPS?
		nfd.setCodigoseriert(""); //"7"); // Fixar em 7 conforme solicitado no Manual
		nfd.setDataemissaort(""); //TextUtil.timeToString (nf.getDateDoc(), "dd/MM/yyyy"));	
		
		try
		{
			//	Valida o documento
			NFeUtil.validate (nfdDoc);
			
			//	Adiciona o Certificado
			MLBRDigitalCertificate.setCertificate (nf.getCtx(), p_AD_Org_ID);
			
			//	Assina o XML
			new SignatureUtil (oi, SignatureUtil.RPS, "nfd").sign (nfdDoc, tbnfd.newCursor());
					
			return nfdDoc.xmlText(NFeUtil.getXmlOpt()).getBytes(NFeUtil.NFE_ENCODING);
		
		}
		catch (Exception e)
		{
			throw new AdempiereException(e.getMessage());
		}
		
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
		
		//	Procura o XML nos anexos
		byte[] xmlData = nf.getAttachmentData("xml");
		if (xmlData == null || xmlData.length == 0)
			xmlData = getXML (nf);	//	Gera um novo XML
		
		String xml = new String (xmlData, NFeUtil.NFE_ENCODING);
		
		/**
		 *	Enviar NF-e para a Prefeitura de Mogi das Cruzes para Autorização
		 */
		//	Adicionando os dados para Login de Acesso
		NfdEntrada pEntrada = new NfdEntrada();
		//	CPF Autorizado
		pEntrada.setCpfUsuario(MSysConfig.getValue("KENOSERP_USER_LOGIN_NFSE_MOGI", nf.getAD_Client_ID()));
		//	Senha (necessário está em hashcode)
		pEntrada.setHashSenha(MSysConfig.getValue("KENOSERP_PASSWORD_LOGIN_NFSE_MOGI", nf.getAD_Client_ID()	));
		//	Código do Municipio - 3 corresponde a Mogi das Cruzes
		pEntrada.setCodigoMunicipio(3);		
		//	XML da NF-e
		pEntrada.setNfd(NFeUtil.XML_HEADER + xml);
		
		//	Adicionado os dados de Login de Acesso e XML da NF-e
		NfdEntradaE entrada = new NfdEntradaE();
		entrada.setNfdEntrada(pEntrada);
		
		//	Enviar XML
		WSEntradaServiceStub sc = new WSEntradaServiceStub();
		
		//	Obrigado Desabilitar a Propriedade CHUNKED
		sc._getServiceClient().getOptions().setProperty(HTTPConstants.CHUNKED, false);
		
		//	Enviando o XML da NF-e e recebendo a resposta do Envio
		NfdEntradaResponseE respostaentrada = sc.nfdEntrada(entrada);
		
		//	Armazenar o XML de Resposta em uma String
		String retorno = respostaentrada.getNfdEntradaResponse().get_return();			
		log.info("Resposta do Envio: " + retorno);
		
		if (retorno.contains("Erro"))
			throw new Exception (retorno);
		
		//	Corrigir a String de Retorno adicionando a Tag <reciborecepcao> criada no nosso Ambiente
		retorno = retorno.replace("<nfd>", "<reciborecepcao><nfd>");
		retorno = retorno.replace("</nfd>", "</nfd></reciborecepcao>");

		//	XML do Tipo Recibo de Recepção que confirma o Recebimento da NF-e 
		ReciborecepcaoDocument recibodoc = ReciborecepcaoDocument.Factory.parse(retorno);
		br.gov.sp.mogidascruzes.nfse.ReciborecepcaoDocument.Reciborecepcao.Nfd recibo = recibodoc.getReciborecepcao().getNfd();

		//	Anexa o XML de Recibo na NF-e
		if (!recibo.getRecibo().getCodrecibo().equals(""))
		{
			//	Atualizando a NF-e
			nf.setlbr_NFeProt(recibo.getRecibo().getCodrecibo());
			nf.save();
			
			//	Adicionando o XML do Recibo em Anexo na NF-e
			nf.getAttachment(true);
			MAttachment attachRecibo = nf.createAttachment();
			attachRecibo.addEntry(recibo.getRecibo().getCodrecibo() + FILE_XML_RECIBO_NFSE, recibo.xmlText(NFeUtil.getXmlOpt()).toString().getBytes("UTF-8"));
			attachRecibo.save();			
		}
		
		return true;
	}	//	transmit
	
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
		log.info ("NFSE Consult Process");
		
		//	Buscar o XML referente ao Recibo de Transmissão da NF.
		//	Obrigatório para Consultar o Estado da NF-e de Serviço
				
		//	Procura o XML nos anexos
		byte[] xmlData = nf.getAttachmentData(FILE_XML_RECIBO_NFSE);
		if (xmlData == null || xmlData.length == 0)
			new AdempiereException ("XML do Recibo não encontrado");
			
		String xml = new String (xmlData, NFeUtil.NFE_ENCODING);
		
		//	Adicionando os dados para Login de Acesso
		NfdSaida pSaida = new NfdSaida();
		//	CPF Autorizado
		pSaida.setCpfUsuario(MSysConfig.getValue("KENOSERP_USER_LOGIN_NFSE_MOGI", nf.getAD_Client_ID()));
		//	Senha (necessário está em hashcode)
		pSaida.setHashSenha(MSysConfig.getValue("KENOSERP_PASSWORD_LOGIN_NFSE_MOGI", nf.getAD_Client_ID()));
		//	Inscrição Municipal
		pSaida.setInscricaoMunicipal(nf.getlbr_OrgCCM());
		//	XML do Recibo referente a Transmissão da NF-e de Serviço
		pSaida.setRecibo(xml);
		
		//	Adicionado os dados de Login de Acesso e XML do Recibo
		NfdSaidaE saida = new NfdSaidaE();
		saida.setNfdSaida(pSaida);
		
		try
		{
			//	Consultando Estado da NF-e de Serviço
			WSSaidaServiceStub scresp = new WSSaidaServiceStub();
			
			//	Obrigado Desabilitar a Propriedade CHUNKED
			scresp._getServiceClient().getOptions().setProperty(HTTPConstants.CHUNKED, false);
			
			//	Recebendo Resposta da Consulta do Estado da NF-e de Serviço
			String ret = scresp.nfdSaida(saida).getNfdSaidaResponse().get_return().toString();
			log.info("XML Retorno: " + ret);
			
			if (ret.contains("Erro"))
				throw new Exception (ret);
			
			//	Corrigir a String de Retorno adicionando a Tag <WSSaida> criada no nosso Ambiente
			ret = ret.replace("<tbnfd>", "<WSSaida><tbnfd>");
			ret = ret.replace("</tbnfd>", "</tbnfd></WSSaida>");
			
			//	Cria Objeto XML para receber os dados da NF-e de Serviço
			WSSaidaDocument nfdDocSaida = WSSaidaDocument.Factory.parse(ret);
			WSSaida TbSaida = nfdDocSaida.getWSSaida();
			Tbnfd nfd = TbSaida.getTbnfd();
			Nfdok nfdOk = nfd.getNfdok();
			
			//	Se Número da Nfd for Válida
			if (nfdOk.getNumeronfd() > 0)
			{
				//	Anexar XML da NFSE Autorizada
				nf.getAttachment(true);
				MAttachment attachRecibo = nf.createAttachment();
				attachRecibo.addEntry(nfdOk.getNumeronfd() + FILE_XML_NFSE_AUTORIZADO, TbSaida.xmlText(NFeUtil.getXmlOpt()).toString().getBytes("UTF-8"));
				attachRecibo.save();

				nf.setlbr_NFeStatus(MLBRNotaFiscal.LBR_NFESTATUS_100_AutorizadoOUsoDaNF_E);
				ProcReturnRPS.proccessNFSe (nf, ""+nfdOk.getNumeronfd(), nf.getlbr_NFeProt());
				ProcEMailNFe.sendEmailNFeThread (nf, false);
			}
			else
			{
				log.warning(ret);
				return false;
			}
		}
		catch (Exception e)
		{
			new AdempiereException(e.getMessage());
			return false;
		}
		
		return true;
	}	// consult
	
	
	/**
	 * Consultar Estado da NF-e de Serviço após a Transmissão em Lote
	 */
	public boolean consult(Properties ctx, int AD_Org_ID, String trxName, List<MLBRNotaFiscal> nfs)throws Exception
	{
		return false;
	}
	
	/**
	 * Obter link de Validação da NFS-e e Link para Visualização da Impressão
	 * @param nf
	 * @return
	 */
	public String getURLVisualizarNF(MLBRNotaFiscal nf)
	{
		// XML de Retorno
		String xmlret = "";
		
		// Adicionar dados necessário para Obter os Links
		UrlNfd url = new UrlNfd(); 
		
		//	Código do Municipio - 3 corresponde a Mogi das Cruzes
		url.setCodigoMunicipio(3);
		//	Inscrição Municiapal
		url.setInscricaoMunicipal(nf.getlbr_OrgCCM());
		//	Número da NFS-e
		url.setNumeroNfd(Integer.parseInt(nf.getlbr_NFENo()));
		//	Série da NFS-e
		url.setSerieNfd(Integer.parseInt(nf.getlbr_NFSerie()));
		
		//	Adicionar dados da URLNFD para Consulta
		UrlNfdE urle = new UrlNfdE();
		urle.setUrlNfd(url);
		
		WSUtilServiceStub wsutil;
		try
		{
			//	Consultar NFS-e
			wsutil = new WSUtilServiceStub();
			
			//	Obrigado Desabilitar a Propriedade CHUNKED
			wsutil._getServiceClient().getOptions().setProperty(HTTPConstants.CHUNKED, false);
			
			//	XML de Retorno
			xmlret = wsutil.urlNfd(urle).getUrlNfdResponse().get_return().toString();
			log.info("XML Retorno: " + xmlret);
			
			return xmlret;
		}
		catch (Exception e)
		{
			new AdempiereException(e.getMessage());
			return "";
		}		
		
	}
		
	/**
	 * 	Consultar Atividades da Organização na Prefeitura de Mogi das Cruzes
	 * 	Não é permitido emitir NF-e de Serviços de Atividades em que a Empresa não esteja cadastrada
	 */
	public String ConsultarAtividades(String cpf, String senha, int codigomunicipio, String InscricaoMunicipal)
	{
		ConsultarAtividades pConsultar = new ConsultarAtividades();
		pConsultar.setCpfUsuario(cpf);
		pConsultar.setHashSenha(senha);
		pConsultar.setCodigoMunicipio(codigomunicipio);
		pConsultar.setInscricaoMunicipal(InscricaoMunicipal);
		
		//	Adicionar os Dados do Usuário ao objeto ConsultarAtividadesE
		ConsultarAtividadesE pAtividades = new ConsultarAtividadesE();
		pAtividades.setConsultarAtividades(pConsultar);
		
		try
		{
			//	Consultar Atividades (Teste)
			WSEntradaServiceStub scc = new WSEntradaServiceStub();
			
			//	Obrigado Desabilitar a Propriedade CHUNKED
			scc._getServiceClient().getOptions().setProperty(HTTPConstants.CHUNKED, false);
			
			//	Consultar Atividade
			ConsultarAtividadesResponseE resp = scc.consultarAtividades(pAtividades);
			
			return ("XML Atividades: "+ resp.getConsultarAtividadesResponse().get_return().toString());
		}
		catch (Exception e)
		{
			new AdempiereException(e.getMessage());
		}	
		
		return "";
	}	// ConsultarAtividades
	
	private static BigDecimal toBD (BigDecimal value)
	{
		if (value == null)
			return Env.ZERO;
		return value.setScale(2, BigDecimal.ROUND_HALF_UP).stripTrailingZeros();
	}	//	toBD
	
	/**
	 * 	Header
	 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
	 */
	class Header
	{
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=1)
		String tipoDeRegistro;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=1)
		String tpIdentificacao;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=14)
		String CNPJCPF;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=8)
		String CCM;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=2)
		String versaoLayout;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=124)
		String filler;

		/**
		 * 	To String
		 */
		@Override
		public String toString()
		{
			return getTipodeRegistro() + getTpIdentificacao() + getCNPJCPF() + getCCM() + getVersaoLayout() + getFiller();
		}	//	toString
		
		public String getTipodeRegistro()
		{
			return tipoDeRegistro;
		}

		public void setTipodeRegistro(String tipodeRegistro)
		{
			this.tipoDeRegistro = tipodeRegistro;
		}

		public String getTpIdentificacao()
		{
			return tpIdentificacao;
		}

		public void setTpIdentificacao(String tpIdentificacao)
		{
			this.tpIdentificacao = tpIdentificacao;
		}

		public String getCNPJCPF()
		{
			return CNPJCPF;
		}

		public void setCNPJCPF(String cNPJCPF)
		{
			CNPJCPF = cNPJCPF;
		}

		public String getCCM()
		{
			return CCM;
		}

		public void setCCM(String cCM)
		{
			CCM = cCM;
		}

		public String getVersaoLayout()
		{
			return versaoLayout;
		}

		public void setVersaoLayout(String versaoLayout)
		{
			this.versaoLayout = versaoLayout;
		}

		public String getFiller()
		{
			return filler;
		}

		public void setFiller(String filler)
		{
			this.filler = filler;
		}
	}	//	Header
	
	/**
	 * 	Detalhe da NF
	 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
	 */
	class DetNF
	{
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=1)
		String tipodeRegistro;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=8)
		String sequencialNF;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=8)
		String NF;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=1)
		String situacaoNF;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=8)
		String dtEmissao;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=6)
		String codAtividade;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=3)
		String CFPS;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=2)
		String serie;
				
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=14)
		String CNPJCPF;
			
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=100)
		String nome;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=8)
		String cep;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=100)
		String endereco;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=50)
		String bairro;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=60)
		String cidade;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=2)
		String estado;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=100)
		String enderecoCobranca;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=80)
		String email;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=1)
		String eviarNFPorEmail;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=1)
		String impRetido;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT2, size=14)
		String vlrServico;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT2, size=14)
		String vlrDeducoes;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT2, size=14)
		String vlrImposto;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT2, size=5)
		String aliquota;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT2, size=14)
		String vlrTotalNota;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT2, size=14)
		String vlrCONFINS;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT2, size=14)
		String vlrPIS;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT2, size=14)
		String vlrIRRF;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT2, size=14)
		String vlrINSS;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT2, size=14)
		String vlrCSLL;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=8)
		String RPS;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=1)
		String modelo;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=255)
		String observacao;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=8)
		String dtEmissaoRPS;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=1)
		String tipoTomador;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=20)
		String RGInscrEstadual;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=132)
		String filler;
		
		/**
		 * 	To String
		 */
		@Override
		public String toString()
		{
			return  getTipodeRegistro() + getSequencialNF() + getNF() + getSituacaoNF() + 
					getDtEmissao() + getCodAtividade() + getCFPS() + getSerie() + getCNPJCPF() + 
					getNome() + getCep() + getEndereco() + getBairro() + getCidade() + 
					getEstado() + getEnderecoCobranca() + getEmail() + getEviarNFPorEmail() + 
					getImpRetido() + getVlrServico() + getVlrDeducoes() + getVlrImposto() + 
					getAliquota() + getVlrTotalNota() + getVlrCONFINS() + getVlrPIS() + 
					getVlrIRRF() + getVlrINSS() + getVlrCSLL() +  getRPS() + getModelo() + 
					getObservacao() +  getDtEmissaoRPS() + getTipoTomador() + getRGInscrEstadual() + 
					getFiller();
		}	//	toString

		public String getTipodeRegistro()
		{
			return tipodeRegistro;
		}

		public void setTipodeRegistro(String tipodeRegistro)
		{
			this.tipodeRegistro = tipodeRegistro;
		}

		public String getSequencialNF()
		{
			return sequencialNF;
		}

		public void setSequencialNF(String sequencialNF)
		{
			this.sequencialNF = sequencialNF;
		}

		public String getNF()
		{
			return NF;
		}

		public void setNF(String nF)
		{
			NF = nF;
		}

		public String getSituacaoNF()
		{
			return situacaoNF;
		}

		public void setSituacaoNF(String situacaoNF)
		{
			this.situacaoNF = situacaoNF;
		}

		public String getDtEmissao()
		{
			return dtEmissao;
		}

		public void setDtEmissao(String dtEmissao)
		{
			this.dtEmissao = dtEmissao;
		}

		public String getCodAtividade()
		{
			return codAtividade;
		}

		public void setCodAtividade(String codAtividade)
		{
			this.codAtividade = codAtividade;
		}

		public String getCFPS()
		{
			return CFPS;
		}

		public void setCFPS(String cFPS)
		{
			CFPS = cFPS;
		}

		public String getSerie()
		{
			return serie;
		}

		public void setSerie(String serie)
		{
			this.serie = serie;
		}

		public String getCNPJCPF()
		{
			return CNPJCPF;
		}

		public void setCNPJCPF(String cNPJCPF)
		{
			CNPJCPF = cNPJCPF;
		}

		public String getNome()
		{
			return nome;
		}

		public void setNome(String nome)
		{
			this.nome = nome;
		}

		public String getCep()
		{
			return cep;
		}

		public void setCep(String cep)
		{
			this.cep = cep;
		}

		public String getEndereco()
		{
			return endereco;
		}

		public void setEndereco(String endereco)
		{
			this.endereco = endereco;
		}

		public String getBairro()
		{
			return bairro;
		}

		public void setBairro(String bairro)
		{
			this.bairro = bairro;
		}

		public String getCidade()
		{
			return cidade;
		}

		public void setCidade(String cidade)
		{
			this.cidade = cidade;
		}

		public String getEstado()
		{
			return estado;
		}

		public void setEstado(String estado)
		{
			this.estado = estado;
		}

		public String getEnderecoCobranca()
		{
			return enderecoCobranca;
		}

		public void setEnderecoCobranca(String enderecoCobranca)
		{
			this.enderecoCobranca = enderecoCobranca;
		}

		public String getEmail()
		{
			return email;
		}

		public void setEmail(String email)
		{
			this.email = email;
		}

		public String getEviarNFPorEmail()
		{
			return eviarNFPorEmail;
		}

		public void setEviarNFPorEmail(String eviarNFPorEmail)
		{
			this.eviarNFPorEmail = eviarNFPorEmail;
		}

		public String getImpRetido()
		{
			return impRetido;
		}

		public void setImpRetido(String impRetido)
		{
			this.impRetido = impRetido;
		}

		public String getVlrServico()
		{
			return vlrServico;
		}

		public void setVlrServico(String vlrServico)
		{
			this.vlrServico = vlrServico;
		}

		public String getVlrDeducoes()
		{
			return vlrDeducoes;
		}

		public void setVlrDeducoes(String vlrDeducoes)
		{
			this.vlrDeducoes = vlrDeducoes;
		}

		public String getVlrImposto()
		{
			return vlrImposto;
		}

		public void setVlrImposto(String vlrImposto)
		{
			this.vlrImposto = vlrImposto;
		}

		public String getAliquota()
		{
			return aliquota;
		}

		public void setAliquota(String aliquota)
		{
			this.aliquota = aliquota;
		}

		public String getVlrTotalNota()
		{
			return vlrTotalNota;
		}

		public void setVlrTotalNota(String vlrTotalNota)
		{
			this.vlrTotalNota = vlrTotalNota;
		}

		public String getVlrCONFINS()
		{
			return vlrCONFINS;
		}

		public void setVlrCONFINS(String vlrCONFINS)
		{
			this.vlrCONFINS = vlrCONFINS;
		}

		public String getVlrPIS()
		{
			return vlrPIS;
		}

		public void setVlrPIS(String vlrPIS)
		{
			this.vlrPIS = vlrPIS;
		}

		public String getVlrIRRF()
		{
			return vlrIRRF;
		}

		public void setVlrIRRF(String vlrIRRF)
		{
			this.vlrIRRF = vlrIRRF;
		}

		public String getVlrINSS()
		{
			return vlrINSS;
		}

		public void setVlrINSS(String vlrINSS)
		{
			this.vlrINSS = vlrINSS;
		}

		public String getVlrCSLL()
		{
			return vlrCSLL;
		}

		public void setVlrCSLL(String vlrCSLL)
		{
			this.vlrCSLL = vlrCSLL;
		}

		public String getRPS()
		{
			return RPS;
		}

		public void setRPS(String rPS)
		{
			RPS = rPS;
		}

		public String getModelo()
		{
			return modelo;
		}

		public void setModelo(String modelo)
		{
			this.modelo = modelo;
		}

		public String getObservacao()
		{
			return observacao;
		}

		public void setObservacao(String observacao)
		{
			this.observacao = observacao;
		}

		public String getDtEmissaoRPS()
		{
			return dtEmissaoRPS;
		}

		public void setDtEmissaoRPS(String dtEmissaoRPS)
		{
			this.dtEmissaoRPS = dtEmissaoRPS;
		}

		public String getTipoTomador()
		{
			return tipoTomador;
		}

		public void setTipoTomador(String tipoTomador)
		{
			this.tipoTomador = tipoTomador;
		}

		public String getRGInscrEstadual()
		{
			return RGInscrEstadual;
		}

		public void setRGInscrEstadual(String rGInscrEstadual)
		{
			RGInscrEstadual = rGInscrEstadual;
		}

		public String getFiller()
		{
			return filler;
		}

		public void setFiller(String filler)
		{
			this.filler = filler;
		}
		
	}	//	DetNF
	
	/**
	 * 	Detalhe do Item da NF
	 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
	 */
	class DetItemNF
	{
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=1)
		String tipodeRegistro;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=8)
		String sequencialNF;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=8)
		String item;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT4, size=14)
		String qtd;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=2)
		String unidade;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT4, size=14)
		String vlrUnidade;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT2, size=14)
		String vlrTotal;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=910)
		String descrItem;
				
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=172)
		String filler;
		
		/**
		 * 	To String
		 */
		@Override
		public String toString()
		{
			return getTipodeRegistro() + getSequencialNF() + getItem() + getQtd() + getUnidade() + getVlrUnidade() + getVlrTotal() + getDescrItem() + getFiller();
		}	//	toString

		public String getTipodeRegistro()
		{
			return tipodeRegistro;
		}

		public void setTipodeRegistro(String tipodeRegistro)
		{
			this.tipodeRegistro = tipodeRegistro;
		}

		public String getSequencialNF()
		{
			return sequencialNF;
		}

		public void setSequencialNF(String sequencialNF)
		{
			this.sequencialNF = sequencialNF;
		}

		public String getItem()
		{
			return item;
		}

		public void setItem(String item)
		{
			this.item = item;
		}

		public String getQtd()
		{
			return qtd;
		}

		public void setQtd(String qtd)
		{
			this.qtd = qtd;
		}

		public String getUnidade()
		{
			return unidade;
		}

		public void setUnidade(String unidade)
		{
			this.unidade = unidade;
		}

		public String getVlrUnidade()
		{
			return vlrUnidade;
		}

		public void setVlrUnidade(String vlrUnidade)
		{
			this.vlrUnidade = vlrUnidade;
		}

		public String getVlrTotal()
		{
			return vlrTotal;
		}

		public void setVlrTotal(String vlrTotal)
		{
			this.vlrTotal = vlrTotal;
		}

		public String getDescrItem()
		{
			return descrItem;
		}

		public void setDescrItem(String descrItem)
		{
			this.descrItem = descrItem;
		}

		public String getFiller()
		{
			return filler;
		}

		public void setFiller(String filler)
		{
			this.filler = filler;
		}
		
	}	//	DetItemNF
	
	/**
	 * 	Detalhe das Parcelas
	 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
	 */
	class DetParcNF
	{
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=1)
		String tipodeRegistro;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=8)
		String sequencialNF;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=2)
		String nroParcelas;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=8)
		String dtVencimento;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT2, size=14)
		String valor;
		
		/**
		 * 	To String
		 */
		@Override
		public String toString()
		{
			return getTipodeRegistro() + getSequencialNF() + getNroParcelas() + getDtVencimento() + getValor();
		}	//	toString

		public String getTipodeRegistro()
		{
			return tipodeRegistro;
		}

		public void setTipodeRegistro(String tipodeRegistro)
		{
			this.tipodeRegistro = tipodeRegistro;
		}

		public String getSequencialNF()
		{
			return sequencialNF;
		}

		public void setSequencialNF(String sequencialNF)
		{
			this.sequencialNF = sequencialNF;
		}

		public String getNroParcelas()
		{
			return nroParcelas;
		}

		public void setNroParcelas(String nroParcelas)
		{
			this.nroParcelas = nroParcelas;
		}

		public String getDtVencimento()
		{
			return dtVencimento;
		}

		public void setDtVencimento(String dtVencimento)
		{
			this.dtVencimento = dtVencimento;
		}

		public String getValor()
		{
			return valor;
		}

		public void setValor(String valor)
		{
			this.valor = valor;
		}
	}	//	DetParcNF
	
	/**
	 * 	Trailler
	 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
	 */
	class Trailler
	{
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=1)
		String tipodeRegistro;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=4)
		String sequencialNF;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT2, size=14)
		String nroParcelas;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT2, size=14)
		String dtVencimento;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT2, size=14)
		String valor;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=53)
		String filler;

		/**
		 * 	To String
		 */
		@Override
		public String toString()
		{
			return getTipodeRegistro() + getSequencialNF() + getNroParcelas() + getDtVencimento() + getValor() + getFiller();
		}	//	toString
		
		public String getTipodeRegistro()
		{
			return tipodeRegistro;
		}

		public void setTipodeRegistro(String tipodeRegistro)
		{
			this.tipodeRegistro = tipodeRegistro;
		}

		public String getSequencialNF()
		{
			return sequencialNF;
		}

		public void setSequencialNF(String sequencialNF)
		{
			this.sequencialNF = sequencialNF;
		}

		public String getNroParcelas()
		{
			return nroParcelas;
		}

		public void setNroParcelas(String nroParcelas)
		{
			this.nroParcelas = nroParcelas;
		}

		public String getDtVencimento()
		{
			return dtVencimento;
		}

		public void setDtVencimento(String dtVencimento)
		{
			this.dtVencimento = dtVencimento;
		}

		public String getValor()
		{
			return valor;
		}

		public void setValor(String valor)
		{
			this.valor = valor;
		}

		public String getFiller()
		{
			return filler;
		}

		public void setFiller(String filler)
		{
			this.filler = filler;
		}
	}
	
	/**
	 * Imprimir DANFE
	 */
	public String printNFSe(MLBRNotaFiscal nf)
	{
		try
		{			
			if (!Desktop.isDesktopSupported()) 
				return "@Error@" + "Impossível abrir o arquivo";
			
			//	Abrir DANFE
			Desktop.getDesktop().open(getPDF(nf));
		}
		catch (Exception e)
		{
			return "@Error@ " + e.getMessage();
		}
		
		return "@Success@";
	}
	
	/**
	 * Pegar DANFE no formato de PDF
	 */
	public File getPDF(MLBRNotaFiscal nf)
	{
		File PDF = null;
		InputStream is = null;
		
		try
		{
			//	XML com a URL da DANFE
			String xml = getURLVisualizarNF(nf);
			
			//	URL de Impressão
			String path = getTagValue(xml.replace("amp;", ""), "urlAutenticidade");
			
			//	URL
			URL url = new URL (path);
			
			//	Abrir Stream
			is = url.openStream();
			
			//	String Buffere com a estimativa de Quantidade de Bytes da String
			byte[] buffer = new byte[is.available()];
			
			//	Receber dados
		    ByteArrayOutputStream baos = new ByteArrayOutputStream();

		    //	Quantidade de Bytes Lidos
		    int bytesRead;
		    
		    //	Leitura dos Bytes
		    while ((bytesRead = is.read(buffer)) != -1)
		    {
		        baos.write(buffer, 0, bytesRead);
		    }
		    
			//	Criar Arquivo no Temp
			PDF = File.createTempFile("NFSe" + nf.getlbr_NFENo() + "-", ".pdf");
			
			//	Preencher o Arquivo.
			FileOutputStream file = new FileOutputStream(PDF);
			file.write(baos.toByteArray());
			file.flush();
			file.close();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return PDF;
	}	
	
	/**
	 * Buscar informação da Tag do XML
	 * @param xml
	 * @param tagName
	 * @return
	 */
	public static String getTagValue(String xml, String tagName){
	    return xml.split("<"+tagName+">")[1].split("</"+tagName+">")[0];
	}
}	//	NFSeImpl