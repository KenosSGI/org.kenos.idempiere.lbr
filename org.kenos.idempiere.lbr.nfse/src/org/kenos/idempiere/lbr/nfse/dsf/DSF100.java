package org.kenos.idempiere.lbr.nfse.dsf;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.net.MalformedURLException;
import java.net.URL;
import java.sql.Timestamp;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.UUID;
import java.util.logging.Level;

import javax.imageio.ImageIO;
import javax.xml.namespace.QName;

import org.adempiere.base.Service;
import org.adempiere.model.POWrapper;
import org.adempiere.report.jasper.JRViewerProvider;
import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.model.X_LBR_NFLineTax;
import org.adempierelbr.model.X_LBR_NFTax;
import org.adempierelbr.model.X_LBR_TaxGroup;
import org.adempierelbr.nfse.INFSe;
import org.adempierelbr.nfse.util.NFSETransmit;
import org.adempierelbr.process.ProcReturnRPS;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.SignatureUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.apache.xmlbeans.XmlCalendar;
import org.apache.xmlbeans.XmlCursor;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MSequence;
import org.compiere.model.MSysConfig;
import org.compiere.model.X_C_City;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.base.event.IDocFiscalHandler;
import org.kenos.idempiere.lbr.base.event.IDocFiscalHandlerFactory;
import org.kenos.idempiere.lbr.base.model.MCity;
import org.kenos.idempiere.lbr.base.model.SysConfig;

import br.com.dsfnet.nfse.lote.ReqConsultaLoteDocument;
import br.com.dsfnet.nfse.lote.ReqConsultaLoteDocument.ReqConsultaLote;
import br.com.dsfnet.nfse.lote.ReqEnvioLoteRPSDocument;
import br.com.dsfnet.nfse.lote.ReqEnvioLoteRPSDocument.ReqEnvioLoteRPS;
import br.com.dsfnet.nfse.lote.ReqEnvioLoteRPSDocument.ReqEnvioLoteRPS.Cabecalho;
import br.com.dsfnet.nfse.lote.RetornoConsultaLoteDocument;
import br.com.dsfnet.nfse.lote.RetornoConsultaLoteDocument.RetornoConsultaLote;
import br.com.dsfnet.nfse.lote.RetornoEnvioLoteRPSDocument;
import br.com.dsfnet.nfse.lote.RetornoEnvioLoteRPSDocument.RetornoEnvioLoteRPS;
import br.com.dsfnet.nfse.tp.TpAssinatura;
import br.com.dsfnet.nfse.tp.TpAssincrono;
import br.com.dsfnet.nfse.tp.TpChaveNFeRPS;
import br.com.dsfnet.nfse.tp.TpConsultaNFSe;
import br.com.dsfnet.nfse.tp.TpDeducoes;
import br.com.dsfnet.nfse.tp.TpEvento;
import br.com.dsfnet.nfse.tp.TpInscricaoMunicipalNulo;
import br.com.dsfnet.nfse.tp.TpItens;
import br.com.dsfnet.nfse.tp.TpListaItens;
import br.com.dsfnet.nfse.tp.TpLote;
import br.com.dsfnet.nfse.tp.TpMetodoEnvio;
import br.com.dsfnet.nfse.tp.TpOperacao;
import br.com.dsfnet.nfse.tp.TpRPS;
import br.com.dsfnet.nfse.tp.TpSeriePrestacao;
import br.com.dsfnet.nfse.tp.TpSerieRPS;
import br.com.dsfnet.nfse.tp.TpSituacaoRPS;
import br.com.dsfnet.nfse.tp.TpTipoRPS;
import br.com.dsfnet.nfse.tp.TpTipoRecolhimento;
import br.com.dsfnet.nfse.tp.TpTributacao;
import br.com.dsfnet.nfse.tp.TpTributacao.Enum;
import net.sf.jasperreports.engine.JREmptyDataSource;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.util.JRLoader;

/**
 * 		NFS-e para a cidade de São Paulo
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: DSF100.java, v1.0 2021/12/06 10:18:48 AM, ralexsander Exp $
 */
public class DSF100 implements INFSe
{
	public static final Integer C_City_ID = 1002209;

	private static final String url = "http://issdigital.pmcg.ms.gov.br/WsNFe2/LoteRps.jws";

	/** Log				*/
	private static CLogger log = CLogger.getCLogger(DSF100.class);
	
	private String type = TYPE_SYNCHRONOUS;

	/**
	 *  Tipo de integração, via Webservice ou via arquivo de RPS
	 */
	@Override
	public String getType()
	{
		return type;
	}	//	getType

	@Override
	public byte[] getXML(MLBRNotaFiscal nf) throws Exception
	{
		Properties ctx = Env.getCtx();
		String trxName = nf.get_TrxName();
		//
		I_W_C_BPartner bp = POWrapper.create(new MBPartner (Env.getCtx(), nf.getC_BPartner_ID(), trxName), I_W_C_BPartner.class);
		//
		MBPartnerLocation bpartLoc = new MBPartnerLocation(ctx, nf.getC_BPartner_Location_ID(), trxName);
		MLocation bpLoc = bpartLoc.getLocation(false);
		MLocation location = new MLocation(ctx, bpLoc.getC_Location_ID(), trxName);
		X_C_City c = BPartnerUtil.getX_C_City(ctx, location, null);
		String cityCode = "";
		//
		if (c != null && c.get_ValueAsString("lbr_CityCode2") != null)
			cityCode = c.get_ValueAsString("lbr_CityCode2");
		 
		//	Gera a sequência de RPS neste momento
		if (!MSysConfig.getBooleanValue(SysConfig.LBR_REALTIME_RPS_NUMBER, true, nf.getAD_Client_ID())
				&& MLBRNotaFiscal.RPS_TEMP.equals(nf.getDocumentNo()))
		{
			nf.setDocumentNo(MSequence.getDocumentNo(nf.getC_DocTypeTarget_ID(), trxName, false));
			nf.save();
		}
		
		//
		TpRPS tpRPS					= TpRPS.Factory.newInstance();
		tpRPS.setInscricaoMunicipalPrestador(toLong (nf.getlbr_OrgCCM()));
		tpRPS.setRazaoSocialPrestador(nf.getlbr_OrgName());
		tpRPS.setTipoRPS(TpTipoRPS.RPS);
		tpRPS.setSerieRPS(TpSerieRPS.NF);
		tpRPS.setNumeroRPS(toInt (nf.getDocumentNo()));
		TpSeriePrestacao series = TpSeriePrestacao.Factory.newInstance();
		series.setIntValue(99);

		tpRPS.xsetSeriePrestacao(series);
		tpRPS.setDataEmissaoRPS(fixDate (nf.getDateDoc()));
		tpRPS.setSituacaoRPS(TpSituacaoRPS.N);
		//
		tpRPS.setCPFCNPJTomador(TextUtil.toNumeric (nf.getlbr_BPCNPJ()));
		//
		String ccm = bp.getlbr_CCM();
		if (bp != null && ccm != null && !ccm.trim().isEmpty())
			tpRPS.setInscricaoMunicipalTomador (toLong (ccm));
		else if (location.getC_City_ID() == nf.getOrg_Location().getC_City_ID())
			throw new Exception ("Obrigatório o preenchimento da IM / CCM para contribuintes da cidade");
		else
		{
			TpInscricaoMunicipalNulo nulo = TpInscricaoMunicipalNulo.Factory.newInstance();
			nulo.setStringValue(TextUtil.lPad(0, 7));
			tpRPS.xsetInscricaoMunicipalTomador(nulo);
		}
		//
		tpRPS.setRazaoSocialTomador(nf.getBPName());
		//
		if (!MLBRNotaFiscal.LBR_BPTYPEBR_XX_Foreigner.equals(nf.getlbr_BPTypeBR()))
		{
			tpRPS.setTipoLogradouroTomador("R");
			tpRPS.setLogradouroTomador(nf.getlbr_BPAddress1());
			tpRPS.setNumeroEnderecoTomador(nf.getlbr_BPAddress2());
			if (nf.getlbr_BPAddress3() != null)
				tpRPS.setBairroTomador(nf.getlbr_BPAddress3());
			else
				throw new Exception ("Obrigatório o preenchimento do campo Bairro");
			if (nf.getlbr_BPAddress4() != null)
				tpRPS.setComplementoEnderecoTomador(nf.getlbr_BPAddress4());
			tpRPS.setCEPTomador(toInt (TextUtil.toNumeric (nf.getlbr_BPPostal())));
			tpRPS.setCidadeTomador(toInt (cityCode));
			tpRPS.setCidadeTomadorDescricao(nf.getlbr_BPCity());
			tpRPS.setMunicipioPrestacao(toInt (cityCode));
			tpRPS.setMunicipioPrestacaoDescricao(nf.getlbr_BPCity());
			tpRPS.setTipoBairroTomador("BAIRRO");
		}
		if (nf.getLBR_EMailNFe() != null && !nf.getLBR_EMailNFe().isBlank())
			tpRPS.setEmailTomador(nf.getLBR_EMailNFe());
		else
			tpRPS.setEmailTomador("-");
		//
		String serviceCode = "";
		String descricaoServico = nf.getDescription();
		String cstISS = "1";
		boolean withholdISS = false;
		
		BigDecimal r_PIS 	= Env.ZERO;
		BigDecimal r_COFINS = Env.ZERO;
		BigDecimal r_INSS 	= Env.ZERO;
		BigDecimal r_IR 	= Env.ZERO;
		BigDecimal r_CSLL 	= Env.ZERO;
		BigDecimal r_ISS 	= Env.ZERO;
		MCity city = null;
				
		//	Linhas
		TpListaItens items = tpRPS.addNewItens();
		for (MLBRNotaFiscalLine nfl : nf.getLines())
		{
			if (!nfl.islbr_IsService())
				continue;
			
			TpItens item = items.addNewItem();
			item.setQuantidade(nfl.getQty().setScale(4, RoundingMode.HALF_UP));
			item.setValorUnitario(nfl.getPrice().setScale(4, RoundingMode.HALF_UP));
			item.setValorTotal(nfl.getLineTotalAmt().setScale(2, RoundingMode.HALF_UP));
			item.setDiscriminacaoServico(cstISS);
			
			// Descrição dos Serviços
			if (nfl.getProductName()!= null && !nfl.getProductName().isEmpty())
			{
				item.setDiscriminacaoServico(nfl.getProductName());
				//
				if (descricaoServico == null || descricaoServico.isEmpty())
					descricaoServico = nfl.getProductName();
//				else if (descricaoServico.indexOf(nfl.getProductName()) == -1)
//					descricaoServico = descricaoServico + ". " + nfl.getProductName();
			}
			
			//	Mesmo código de serviço para todos os serviços prestados
			if (serviceCode == null || serviceCode.isBlank())
				serviceCode = nfl.getlbr_ServiceCode();
			else if (!serviceCode.equals(nfl.getlbr_ServiceCode()))
			{
				nf.setErrorMsg("Impossível gerar NFS-e. Todos os serviços da NFS-e devem conter o mesmo Código de Serviço");
				return null;
			}
			
			BigDecimal taxRateISS = nfl.getTaxRate("ISS");
			BigDecimal taxRateISSRT = nfl.getTaxRate("ISSRT");
			
			//	Mesma Alíquota de ISS para todos os serviços prestados
			if (taxRateISS.signum() == 1)
			{
				if (r_ISS.signum() == 0)
				{
					r_ISS = taxRateISS;
					X_LBR_NFLineTax tax = nfl.getTax("ISS");
					if (tax != null && tax.getLBR_TaxStatus_ID() > 0)
						cstISS = tax.getLBR_TaxStatus().getName();
				}
				else if (!r_ISS.equals(taxRateISS))
				{
					nf.setErrorMsg("Impossível gerar XML NFS-e. Todos os serviços da NFS-e devem conter o mesmo Código de Serviço");
					return null;
				}
			}
			else if (taxRateISSRT.signum() == 1)
			{
				if (r_ISS.signum() == 0)
				{
					withholdISS = true;
					r_ISS = taxRateISSRT;
					X_LBR_NFLineTax tax = nfl.getTax("ISSRT");
					if (tax != null && tax.getLBR_TaxStatus_ID() > 0)
						cstISS = tax.getLBR_TaxStatus().getName();
				}
				else if (!r_ISS.equals(taxRateISSRT))
				{
					nf.setErrorMsg("Impossível gerar XML NFS-e. Todos os serviços da NFS-e devem conter o mesmo Código de Serviço");
					return null;
				}
			}
			
			r_PIS 	= toBD (nfl.getTaxRate("PIS")).abs();
			r_COFINS = toBD (nfl.getTaxRate("COFINS")).abs();
			r_INSS 	= toBD (nfl.getTaxRate("INSS")).abs();
			r_IR 	= toBD (nfl.getTaxRate("IR")).abs();
			r_CSLL 	= toBD (nfl.getTaxRate("CSLL")).abs();
			
			if (city == null && nfl.getC_City_ID() > 0)
				city = new MCity (Env.getCtx(), nfl.getC_City_ID(), null);
		}
		
		if (city != null) {
			tpRPS.setMunicipioPrestacao(city.getlbr_CityCode2());
			tpRPS.setMunicipioPrestacaoDescricao(city.getName());
		}
		
		BigDecimal v_PIS 	= toBD (nf.getTaxAmt("PIS")).abs();
		BigDecimal v_COFINS = toBD (nf.getTaxAmt("COFINS")).abs();
		BigDecimal v_INSS 	= toBD (nf.getTaxAmt("INSS")).abs();
		BigDecimal v_IR 	= toBD (nf.getTaxAmt("IR")).abs();
		BigDecimal v_CSLL 	= toBD (nf.getTaxAmt("CSLL")).abs();
				
		tpRPS.setValorPIS(v_PIS.setScale(2, RoundingMode.HALF_UP));
		tpRPS.setValorCOFINS(v_COFINS.setScale(2, RoundingMode.HALF_UP));
		tpRPS.setValorINSS(v_INSS.setScale(2, RoundingMode.HALF_UP));
		tpRPS.setValorIR(v_IR.setScale(2, RoundingMode.HALF_UP));
		tpRPS.setValorCSLL(v_CSLL.setScale(2, RoundingMode.HALF_UP));

		tpRPS.setAliquotaPIS(r_PIS.setScale(4, RoundingMode.HALF_UP));
		tpRPS.setAliquotaCOFINS(r_COFINS.setScale(4, RoundingMode.HALF_UP));
		tpRPS.setAliquotaINSS(r_INSS.setScale(4, RoundingMode.HALF_UP));
		tpRPS.setAliquotaIR(r_IR.setScale(4, RoundingMode.HALF_UP));
		tpRPS.setAliquotaCSLL(r_CSLL.setScale(4, RoundingMode.HALF_UP));

		//
		if (serviceCode == null || serviceCode.equals(""))
			log.log(Level.SEVERE, "No Service Code for Nota Fiscal");
		//
		tpRPS.setAliquotaAtividade(r_ISS.setScale(4, RoundingMode.HALF_UP));
		tpRPS.setCodigoAtividade(toInt (serviceCode));
		tpRPS.setTributacao(getTributacao(nf.getLBR_TaxRegime(), cstISS));
		tpRPS.setOperacao(TpOperacao.A);
		
		if (descricaoServico == null)
			descricaoServico = "Prestação de Serviços";
		else
			descricaoServico = descricaoServico.replace("\n", "|").replace("  ", "").trim();
		tpRPS.setDescricaoRPS(descricaoServico);
		//
		if (nf.getLBR_EMailNFe() != null && nf.getLBR_EMailNFe().indexOf("@") > 1)
			tpRPS.setEmailTomador(nf.getLBR_EMailNFe().trim());
		tpRPS.setTipoRecolhimento(withholdISS ? TpTipoRecolhimento.R : TpTipoRecolhimento.A);
		
//		if (withholdISS && nf.getlbr_BPCity() != null && nf.getlbr_BPCity().equals(nf.getlbr_OrgCity()))
//		{
//			nf.setErrorMsg("Impossível gerar NFS-e. Imposto deve ser A Recolher para prestação dentro do município");
//			nf.save();
//			return null;
//		}
		
		String orgPhone = TextUtil.toNumeric(nf.getlbr_OrgPhone());
		//
		if (orgPhone != null && (orgPhone.length() == 10 || orgPhone.length() == 11))
		{
			int cut = orgPhone.length() == 11 ? 3 : 2;
			//
			tpRPS.setDDDPrestador(orgPhone.substring(0, cut));
			tpRPS.setTelefonePrestador(orgPhone.substring(cut));
		}
		else
		{
			tpRPS.setDDDPrestador("0");
			tpRPS.setTelefonePrestador("0");
		}

		String bpPhone = TextUtil.toNumeric(nf.getlbr_BPPhone());
		//
		if (bpPhone != null && (bpPhone.length() == 10 || bpPhone.length() == 11))
		{
			int cut = bpPhone.length() == 11 ? 3 : 2;
			//
			tpRPS.setDDDTomador(bpPhone.substring(0, cut));
			tpRPS.setTelefoneTomador(bpPhone.substring(cut));
		}
		else
		{
			tpRPS.setDDDTomador("0");
			tpRPS.setTelefoneTomador("0");
		}
		
		try
		{
			sign (nf.getAD_Org_ID(), tpRPS);
		}
		
		//	Colocar o erro no log
		catch (Exception e)
		{
			log.log (Level.SEVERE, tpRPS.xmlText(), e);
		}
		//
		return tpRPS.xmlText(NFeUtil.getXmlOpt()).getBytes(NFeUtil.NFE_ENCODING);
	}	//	getXML

	private Enum getTributacao (String taxRegime, String cstISS)
	{
		if (cstISS == null || "1".equals(cstISS))
		{
			if (MLBRNotaFiscal.LBR_TAXREGIME_SimpleNational.equals(taxRegime))
				return TpTributacao.H;
			else if (MLBRNotaFiscal.LBR_TAXREGIME_SimpleNational_MEI.equals(taxRegime))
				return TpTributacao.M;
			else 
				return TpTributacao.T;
		}
		else if ("2".equals(cstISS))
			return TpTributacao.E;
		else if ("3".equals(cstISS))
			return TpTributacao.C;
		else if ("5".equals(cstISS))
			return TpTributacao.F;
		else if ("6".equals(cstISS))
			return TpTributacao.K;
		return TpTributacao.T;
	}	//	getTributacao

	@Override
	public StringBuilder getRPS(List<MLBRNotaFiscal> nfs) throws Exception
	{
		return null;
	}	//	getRPS

	/**
	 * 	Apesar da prefeitura de SP permitir o envio de um único RPS sem a criação de um lote
	 *		decidimos implementar apenas o envio por lote para facilitar os testes, pois a 
	 *		prefeitura não disponibiliza uma interface para testes de envio único de RPS.
	 */
	@Override
	public boolean transmit (MLBRNotaFiscal nf) throws Exception
	{
		List<MLBRNotaFiscal> nfArray = new ArrayList<MLBRNotaFiscal>();
		nfArray.add(nf);
		//
		return transmit (nf.getCtx(), nf.getAD_Org_ID(), nf.get_TrxName(), nfArray);
	}	//	transmit
	
	/**
	 * 	Transmissão de RPS em lote
	 */
	@Override
	public boolean transmit (Properties ctx, int AD_Org_ID, String trxName, List<MLBRNotaFiscal> nfs) throws Exception
	{
		log.info ("DSF100 Process");

		int p_AD_Org_ID = AD_Org_ID;
		
		MOrgInfo oi = MOrgInfo.get (ctx, p_AD_Org_ID, null);
		I_W_AD_OrgInfo oiW = POWrapper.create(oi, I_W_AD_OrgInfo.class);
		MLocation orgLoc = (MLocation) oi.getC_Location();

		ReqEnvioLoteRPSDocument envioLoteRPSDoc = ReqEnvioLoteRPSDocument.Factory.newInstance();
		ReqEnvioLoteRPS envioLoteRPS = envioLoteRPSDoc.addNewReqEnvioLoteRPS();
		
		Cabecalho cabecalho = envioLoteRPS.addNewCabecalho();
		cabecalho.setVersao(1);
		
		//	Identifica o emissor
//		MOrgInfo orgInfo = MOrgInfo.get(nf.getCtx(), nf.getAD_Org_ID(), nf.get_TrxName());
//		String ccm = orgInfo.get_ValueAsString("lbr_CCM");
		
		//	Valor total dos serviços para validação do RPS
		BigDecimal servTotal 	= Env.ZERO;
		
		//	Valor total das deduções para validação do RPS
		BigDecimal dedTotal 	= Env.ZERO;
		
		//	Controle das datas
		Timestamp dateFrom = null;
		Timestamp dateTo = null;
			
		List<TpRPS> rps = new ArrayList<TpRPS>();
		
		for (MLBRNotaFiscal nf : nfs)
		{
			//			Procura o XML nos anexos
			byte[] xmlData = nf.getAttachmentData("xml");
			if (xmlData == null || xmlData.length == 0)
				xmlData = getXML (nf);	//	Gera um novo XML
			
			TpRPS tpRPS = TpRPS.Factory.parse (new String (xmlData, NFeUtil.NFE_ENCODING));
			//
			rps.add (tpRPS);

			//	Set date without timezone
			tpRPS.setDataEmissaoRPS(fixDate (nf.getDateDoc()));
			
			servTotal  = servTotal.add(getTotal(tpRPS));
			dedTotal = dedTotal.add(getDeductions(tpRPS));
			
			//	Datas
			if (dateFrom == null || nf.getDateDoc().before (dateFrom))
				dateFrom = nf.getDateDoc();
			if (dateTo == null || nf.getDateDoc().after (dateTo))
				dateTo = nf.getDateDoc();
		}
		//	Converter em Array
		TpRPS[] tpRPSArray = new TpRPS[rps.size()];
		rps.toArray(tpRPSArray);
				
		//	Lote
		TpLote lote = envioLoteRPS.addNewLote();
		lote.setRPSArray(tpRPSArray);
		lote.setId(UUID.randomUUID().toString());
		
		//	Cabeçalho para o Lote
		X_C_City c = BPartnerUtil.getX_C_City(ctx, orgLoc, null);
		String cityCode = c.get_ValueAsString("lbr_CityCode2");
		//
		cabecalho.setCodCidade(Long.valueOf(cityCode));
		cabecalho.setCPFCNPJRemetente(TextUtil.toNumeric(oiW.getlbr_CNPJ()));
		cabecalho.setRazaoSocialRemetente(oiW.getlbr_LegalEntity());
		cabecalho.setTransacao(false);
		cabecalho.setDtInicio (fixDate (dateFrom));
		cabecalho.setDtFim (fixDate (dateTo));
		cabecalho.setQtdRPS (envioLoteRPS.getLote().sizeOfRPSArray());
		cabecalho.setValorTotalServicos (servTotal);
		cabecalho.setValorTotalDeducoes(dedTotal.stripTrailingZeros());
		cabecalho.setMetodoEnvio(TpMetodoEnvio.WS);
		
		XmlCursor cursor = envioLoteRPSDoc.newCursor();
		if (cursor.toFirstChild())
			cursor.setAttributeText(new QName("http://www.w3.org/2001/XMLSchema-instance","schemaLocation"), "http://localhost:8080/WsNFe2/lote http://localhost:8080/WsNFe2/xsd/ReqEnvioLoteRPS.xsd");

		cursor = envioLoteRPS.newCursor();
		cursor.toNextToken();
		cursor.insertNamespace("ns1", "http://localhost:8080/WsNFe2/lote");
		cursor.insertNamespace("tipos", "http://localhost:8080/WsNFe2/tp");
		cursor.insertNamespace("xsi", "http://www.w3.org/2001/XMLSchema-instance");
		
		//	Gera o XML em arquivo para Assinatura	
		new SignatureUtil (oi, SignatureUtil.OUTROS, "Lote").sign (envioLoteRPSDoc, envioLoteRPSDoc.getReqEnvioLoteRPS().newCursor());
		StringBuilder xml = new StringBuilder (new String (envioLoteRPSDoc.xmlText().getBytes(), NFeUtil.NFE_ENCODING));
		
		//	Log
		log.fine ("Sending XML: " + xml.toString());
		
		//	Retorno da Prefeitura
		String retornoXML = "";
		
		//	Valida o documento
		NFeUtil.validate (envioLoteRPSDoc);

		final StringBuilder respStatus = new StringBuilder();

		//	Set certificate
		MLBRDigitalCertificate certificate = MLBRDigitalCertificate.getCertificate (ctx, p_AD_Org_ID);
		if (certificate == null)
			throw new Exception ( "@Error@ Certificado Inválido" );
		
		//	Try to find a service for PKCS#11 for transmit
		IDocFiscalHandler handler = null;
		List<IDocFiscalHandlerFactory> list = Service.locator ().list (IDocFiscalHandlerFactory.class).getServices();
		for (IDocFiscalHandlerFactory docFiscal : list)
		{
			handler = docFiscal.getHandler (certificate.getlbr_CertType(), NFSETransmit.class.getName());
			if (handler != null)
				break;
		}
		
		//MLBRNFConfig nfConfig = MLBRNFConfig.get(oi.getAD_Org_ID(), MLBRNFConfig.LBR_NFMODEL_NotaFiscalDeServiçosEletrônicaRPS);
		
		// 	We have both, the URL for the local app and the Plugin transmitter
		if (handler != null)
		{
			synchronized (respStatus)
			{
				String flags = "";
				
				//	Flags
				if (nfs.size() > 1)
					flags += "lot";
				
				//	Envia o RPS único
				else
					flags += "single";
				
				String uuid = UUID.randomUUID().toString();
				handler.transmitDocument(IDocFiscalHandler.DOC_NFSE, oi.get_ValueAsString(I_W_AD_OrgInfo.COLUMNNAME_lbr_CNPJ), 
						uuid, certificate.getURL(), url, flags, xml.toString(), respStatus);
				
				//	Wait until process is completed, when processing is async
				if (MLBRDigitalCertificate.LBR_CERTTYPE_PKCS11Remote.equals(certificate.getlbr_CertType()))
					respStatus.wait();
				
				//	Error message
				if (respStatus.toString().startsWith("@Error="))
					throw new Exception (respStatus.toString().substring(7));
				
				retornoXML = respStatus.toString();
			}	//	synchronized
		}
		else
		{
			//	Set certificate
			certificate.initialize();
			
			//	Stub
			LoteRpsServiceStub stub = new LoteRpsServiceStub(url);
			
			//	Envio síncrono
//			if (rps.size() == 1)
//				retornoXML = stub.enviarSincrono(xml.toString());
//			
//			//	Envio o Lote
//			else 
				retornoXML = stub.enviar(xml.toString());
			
			System.out.println (xml.toString());
			System.out.println (retornoXML);
			
			log.fine (retornoXML);
		}
		
		//	Processa o Retorno
		RetornoEnvioLoteRPS result = RetornoEnvioLoteRPSDocument.Factory.parse(retornoXML).getRetornoEnvioLoteRPS();
		
		//	Read from XML
		TpEvento[] alertas 			= result.getAlertas().getAlertaArray();
		TpEvento[] erros 			= result.getErros().getErroArray();
		TpChaveNFeRPS[] chaveNFeRPS = result.getChavesNFSeRPS().getChaveNFSeRPSArray();
		
		for (TpEvento alerta : alertas)
		{
			log.warning ("Alerta - NF=" + alerta.getChaveNFe() + ", Cod=" + alerta.getCodigo() + ", Desc=" + alerta.getDescricao());
		}
		for (TpEvento erro : erros)
		{
			log.warning ("Erro - NF=" + erro.getChaveNFe() + ", Cod=" + erro.getCodigo() + ", Desc=" + erro.getDescricao());
		}
		for (TpChaveNFeRPS chaves : chaveNFeRPS)
		{
			if (chaves.getChaveRPS() == null || chaves.getChaveNFe() == null)
				continue;
			
			proccessNFSe (ctx, trxName, "" + chaves.getChaveRPS().getNumeroRPS(), "" + chaves.getChaveNFe().getNumeroNFe(), chaves.getChaveNFe().getCodigoVerificacao(), p_AD_Org_ID);
		}
		
		br.com.dsfnet.nfse.lote.RetornoEnvioLoteRPSDocument.RetornoEnvioLoteRPS.Cabecalho header = result.getCabecalho();
		if (TpAssincrono.S.equals(header.getAssincrono()))
		{
			type = TYPE_ASYNCHRONOUS;
			//
			nfs.forEach(nf -> {
				nf.setlbr_DigestValue(String.valueOf(header.getNumeroLote()));
				nf.save();
			});
		}
		
		return header.getSucesso();
	}	//	transmit
	
	public boolean consult(MLBRNotaFiscal nf) throws Exception
	{
		LoteRpsServiceStub stub = new LoteRpsServiceStub(url);
		
		MOrgInfo oi = MOrgInfo.get (nf.getCtx(), nf.getAD_Org_ID(), null);
		I_W_AD_OrgInfo oiW = POWrapper.create(oi, I_W_AD_OrgInfo.class);
		MLocation orgLoc = (MLocation) oi.getC_Location();
		
		ReqConsultaLoteDocument consultDoc = ReqConsultaLoteDocument.Factory.newInstance();
		ReqConsultaLote consult = consultDoc.addNewReqConsultaLote();
		br.com.dsfnet.nfse.lote.ReqConsultaLoteDocument.ReqConsultaLote.Cabecalho header = consult.addNewCabecalho();
		//
		XmlCursor cursor = consultDoc.newCursor();
		if (cursor.toFirstChild())
			cursor.setAttributeText(new QName("http://www.w3.org/2001/XMLSchema-instance","schemaLocation"), "http://localhost:8080/WsNFe2/lote http://localhost:8080/WsNFe2/xsd/ReqConsultaLote.xsd");

		cursor = consult.newCursor();
		cursor.toNextToken();
		cursor.insertNamespace("ns1", "http://localhost:8080/WsNFe2/lote");
		cursor.insertNamespace("tipos", "http://localhost:8080/WsNFe2/tp");
		cursor.insertNamespace("xsi", "http://www.w3.org/2001/XMLSchema-instance");
		
		//	Cabeçalho para o Lote
		X_C_City c = BPartnerUtil.getX_C_City(nf.getCtx(), orgLoc, null);
		String cityCode = c.get_ValueAsString("lbr_CityCode2");
		//
		header.setCodCidade(Long.valueOf(cityCode));
		header.setCPFCNPJRemetente(TextUtil.toNumeric(oiW.getlbr_CNPJ()));
		header.setNumeroLote(Integer.parseInt(nf.getlbr_DigestValue()));
		header.setVersao(1);
		
		String resultXML = stub.consultarLote(consultDoc.xmlText());
		System.out.println(consultDoc.xmlText());
		System.out.println(resultXML);
		
		RetornoConsultaLote result = RetornoConsultaLoteDocument.Factory.parse(resultXML).getRetornoConsultaLote();

		//	Read from XML
		TpEvento[] alertas 			= result.getAlertas().getAlertaArray();
		TpEvento[] erros 			= result.getErros().getErroArray();
		TpConsultaNFSe[] chaveNFeRPS = result.getListaNFSe().getConsultaNFSeArray();
		
		for (TpEvento alerta : alertas)
		{
			log.warning ("Alerta - NF=" + alerta.getChaveNFe() + ", Cod=" + alerta.getCodigo() + ", Desc=" + alerta.getDescricao());
		}
		for (TpEvento erro : erros)
		{
			log.warning ("Erro - NF=" + erro.getChaveNFe() + ", Cod=" + erro.getCodigo() + ", Desc=" + erro.getDescricao());
			nf.setDocStatus(MLBRNotaFiscal.DOCSTATUS_Invalid);
			nf.setErrorMsg(erro.getCodigo() + "-" + erro.getDescricao());
			nf.save();
		}
		for (TpConsultaNFSe chaves : chaveNFeRPS)
		{
			proccessNFSe (nf.getCtx(), nf.get_TrxName(), "" + chaves.getNumeroRPS(), "" + chaves.getNumeroNFe(), chaves.getCodigoVerificacao(), nf.getAD_Org_ID());
		}
		return true;
	}

	public boolean consult(Properties ctx, int AD_Org_ID, String trxName,
			List<MLBRNotaFiscal> nfs) throws Exception
	{
		return false;
	}
	
	/**
	 * 	Retorna o valor das deduções
	 * 	FIXME Verificar
	 * @param nf
	 * @return
	 */
	@SuppressWarnings("unused")
	private static BigDecimal getDeductions (MLBRNotaFiscal nf)
	{
		BigDecimal deducoes = Env.ZERO;
		//
		X_LBR_NFTax[] taxes = nf.getTaxes();
		for (X_LBR_NFTax tax : taxes)
		{
			X_LBR_TaxGroup tg = new X_LBR_TaxGroup (Env.getCtx(), tax.getLBR_TaxGroup_ID(), null);
			if (tg.getName() == null || tg.getName().equals("ISS"))	//	ISS ja e destacado normalmente
				continue;
			//
			if (tax.getlbr_TaxAmt().signum() == -1)
				deducoes = deducoes.add(tax.getlbr_TaxAmt().abs());
		}
		//
		return deducoes;
	}	//	getDeducoes

	private static BigDecimal toBD (BigDecimal value)
	{
		if (value == null)
			return Env.ZERO;
		return value.setScale(2, RoundingMode.HALF_UP).stripTrailingZeros();
	}	//	toBD
	
	private static Long toLong (String longStr)
	{
		if (longStr == null || TextUtil.toNumeric(longStr).trim().isEmpty())
			return (long) 0;
		return Long.valueOf(TextUtil.toNumeric(longStr));
	}	//	toLong
	
	private static int toInt (String intStr)
	{
		if (intStr == null)
			return 0;
		
		try
		{
			return Integer.parseInt(TextUtil.toNumeric(intStr));
		}
		catch (Exception e)	{}
		return 0;
	}	//	toInt
	
	/**
	 * 	Sign RPS
	 * 	@param AD_Org_ID
	 * 	@param rps
	 * @throws Exception 
	 */
	private static void sign (int AD_Org_ID, TpRPS rps) throws Exception
	{
		StringBuilder ascii = new StringBuilder ("");
		//
		BigDecimal total = getTotal (rps);
		BigDecimal deductions = getDeductions (rps);
		//
		ascii.append(TextUtil.lPad (rps.getInscricaoMunicipalPrestador()+"", 11));
		ascii.append(TextUtil.rPad (rps.getSerieRPS()+"", 5));
		ascii.append(TextUtil.lPad (rps.getNumeroRPS()+"", 12));
		//
		ascii.append(TextUtil.lPad ((rps.getDataEmissaoRPS()+"").substring(0, 10), 8));
		ascii.append(TextUtil.rPad (String.valueOf(rps.getTributacao()), 2));
		ascii.append(rps.getSituacaoRPS());
		ascii.append(TpTipoRecolhimento.A.equals (rps.getTipoRecolhimento()) ? "N" : "S");
		ascii.append(TextUtil.lPad (total, 15));
		ascii.append(TextUtil.lPad (deductions, 15));
		ascii.append(TextUtil.lPad (rps.getCodigoAtividade(), 10));
		ascii.append(TextUtil.lPad (rps.getCPFCNPJTomador(), 14));
		//
		TpAssinatura tpAssinatura = TpAssinatura.Factory.newInstance(NFeUtil.getXmlOpt());
		
		tpAssinatura.setStringValue(SignatureUtil.SHA1(ascii.toString()));
		rps.xsetAssinatura (tpAssinatura);
	}	//	sign

	private static BigDecimal getDeductions(TpRPS rps) {
		return rps.getDeducoes() == null ? Env.ZERO : 
			Arrays.asList(rps.getDeducoes().getDeducaoArray()).stream()
				.map(TpDeducoes::getValorDeduzir)
				.reduce(BigDecimal.ZERO, BigDecimal::add);
	}

	private static BigDecimal getTotal (TpRPS rps) {
		return rps.getItens() == null ? Env.ZERO : 
			Arrays.asList(rps.getItens().getItemArray()).stream()
				.map(TpItens::getValorTotal)
				.reduce(BigDecimal.ZERO, BigDecimal::add);
	}
	
	private static Calendar fixDate (Timestamp date) {
		Calendar calendar = new XmlCalendar ();
		calendar.setTimeInMillis(date.getTime());
		
		Calendar xmlCalTo = new XmlCalendar ();
		xmlCalTo.set(Calendar.YEAR, 			calendar.get (Calendar.YEAR));
		xmlCalTo.set(Calendar.MONTH, 			calendar.get (Calendar.MONTH));
		xmlCalTo.set(Calendar.DAY_OF_MONTH, 	calendar.get (Calendar.DAY_OF_MONTH));
		xmlCalTo.set(Calendar.HOUR, 			calendar.get (Calendar.HOUR));
		xmlCalTo.set(Calendar.MINUTE, 			calendar.get (Calendar.MINUTE));
		xmlCalTo.set(Calendar.SECOND, 			calendar.get (Calendar.SECOND));
		return xmlCalTo;
	}	//	fixDate
	
	/**
	 * 		Processar NF-e
	 * 	@param p_RPS
	 * 	@param p_NFe
	 * 	@param p_VerifCode
	 * 	@param p_AD_Org_ID - Organization
	 */
	private void proccessNFSe (Properties ctx, String trxName, String p_RPS, String p_NFe, String p_VerifCode, int p_AD_Org_ID)
	{
		int LBR_NotaFiscal_ID = MLBRNotaFiscal.getLBR_NotaFiscal_ID (p_AD_Org_ID, p_RPS, true, MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalDeServiçosEletrônicaRPS, trxName);
		if (LBR_NotaFiscal_ID > 0)
		{
			MLBRNotaFiscal nf = new MLBRNotaFiscal (ctx, LBR_NotaFiscal_ID, trxName);
			ProcReturnRPS.proccessNFSe (nf, p_NFe, p_VerifCode);
			//ProcEMailNFe.sendEmailNFeThread (nf, false);
		}
	}	//	proccessNFSe
	
	/**
	 *	Imprimir a NFS-e
	 * 	@return
	 */
	public String printNFSe (MLBRNotaFiscal nf)
	{
		try
		{
			JasperPrint jasperPrint = getReport (nf);
			JRViewerProvider viewerLauncher = Service.locator().locate(JRViewerProvider.class).getService();
			viewerLauncher.openViewer (jasperPrint, "Impress\u00E3o de NFS-e para a Cidade de S\u00E3o Paulo");
		}
		catch (Exception e)
		{
			return "@Error@ " + e.getMessage();
		}
		
		return "@Success@";
	}	//	printNFSe

	/**
	 * 	Get the NF PDF
	 */
	@Override
	public File getPDF(MLBRNotaFiscal nf)
	{
		File PDF = null;
		
		try
		{
			JasperPrint jasperPrint = getReport (nf);
			
			PDF = File.createTempFile("NFSe" + nf.getlbr_NFENo() + "-", ".pdf");
    		JasperExportManager.exportReportToPdfFile(jasperPrint, PDF.getAbsolutePath());
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return PDF;
	}	//	getPDF

	/**
	 * 	Get JasperReport
	 * @param nf
	 * @return
	 * @throws Exception
	 */
	private JasperPrint getReport (MLBRNotaFiscal nf) throws Exception
	{
		InputStream is = null;
		
		try
		{
			//	Campos para Criar URL de Impressão da NFS-e
			String ccm = TextUtil.toNumeric (nf.getlbr_OrgCCM());
			String nfnum = TextUtil.toNumeric (nf.getlbr_NFENo());
			String cod = nf.getlbr_NFeProt();
			
			if (cod == null || cod.trim().isEmpty())
				throw new Exception ("NFS-e sem o c\u00F3digo de autoriza\u00E7\u00E3o necess\u00E1rio para a impress\u00E3o");
			
			//	URL de Impressão
			String message = MSysConfig.getValue (SysConfig.LBR_NFSE_SP_PRINT_URL, "https://nfe.prefeitura.sp.gov.br/contribuinte/notaprintimg.aspx?ccm={0}&nf={1}&cod={2}&imprimir=1", nf.getAD_Client_ID(), nf.getAD_Org_ID());
			
			MessageFormat mf = null;
			mf = new MessageFormat (message);
			
			URL url = new URL (mf.format (new Object[]{ccm, nfnum, cod}));
			is = url.openStream();
			
			BufferedImage image = null;
			image = ImageIO.read (is);
			
			if (image != null)
			{
				ClassLoader cl = getClass().getClassLoader();
				InputStream report = cl.getResourceAsStream("reports/ImpressaoNFSESP.jasper");
				
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("DOCUMENT_IMAGE", image);

				JasperReport jasperReport = (JasperReport) JRLoader.loadObject (report);
				JREmptyDataSource dataSource = new JREmptyDataSource ();
				//
				return JasperFillManager.fillReport (jasperReport, map, dataSource);
			}
		}
		catch (MalformedURLException mue)
		{
			mue.printStackTrace();
		}
		catch (IOException ioe)
		{
			ioe.printStackTrace();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			try
			{
				if (is != null)
					is.close();
			}
			catch (IOException ioe)
			{
				throw new Exception ("Erro na Emissão da Nota Fiscal de Serviço. Imprima a partir do Site da Prefeitura");
			}
		}
		
		throw new Exception ("Erro na Emissão da Nota Fiscal de Serviço. Imprima a partir do Site da Prefeitura");
	}	//	getReport
}	//	NFSeImpl
