package org.kenos.idempiere.lbr.nfse.dsf;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.UUID;
import java.util.logging.Level;
import java.util.stream.Collectors;

import javax.xml.namespace.QName;

import org.adempiere.base.Service;
import org.adempiere.model.POWrapper;
import org.adempiere.report.jasper.JRViewerProvider;
import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.model.MLBRNFConfig;
import org.adempierelbr.model.MLBRNFeLot;
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
import org.adempierelbr.validator.ValidatorBPartner;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.apache.axis2.AxisFault;
import org.apache.xmlbeans.XmlCalendar;
import org.apache.xmlbeans.XmlCursor;
import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MImage;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MSequence;
import org.compiere.model.MSysConfig;
import org.compiere.model.Query;
import org.compiere.model.X_C_City;
import org.compiere.process.ProcessInfo;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Util;
import org.kenos.idempiere.lbr.base.event.IDocFiscalHandler;
import org.kenos.idempiere.lbr.base.event.IDocFiscalHandlerFactory;
import org.kenos.idempiere.lbr.base.model.MCity;
import org.kenos.idempiere.lbr.base.model.SysConfig;

import br.com.dsfnet.nfse.lote.ReqCancelamentoNFSeDocument;
import br.com.dsfnet.nfse.lote.ReqCancelamentoNFSeDocument.ReqCancelamentoNFSe;
import br.com.dsfnet.nfse.lote.ReqConsultaLoteDocument;
import br.com.dsfnet.nfse.lote.ReqConsultaLoteDocument.ReqConsultaLote;
import br.com.dsfnet.nfse.lote.ReqConsultaNotasDocument;
import br.com.dsfnet.nfse.lote.ReqConsultaNotasDocument.ReqConsultaNotas;
import br.com.dsfnet.nfse.lote.ReqEnvioLoteRPSDocument;
import br.com.dsfnet.nfse.lote.ReqEnvioLoteRPSDocument.ReqEnvioLoteRPS;
import br.com.dsfnet.nfse.lote.ReqEnvioLoteRPSDocument.ReqEnvioLoteRPS.Cabecalho;
import br.com.dsfnet.nfse.lote.RetornoCancelamentoNFSeDocument;
import br.com.dsfnet.nfse.lote.RetornoCancelamentoNFSeDocument.RetornoCancelamentoNFSe;
import br.com.dsfnet.nfse.lote.RetornoConsultaLoteDocument;
import br.com.dsfnet.nfse.lote.RetornoConsultaLoteDocument.RetornoConsultaLote;
import br.com.dsfnet.nfse.lote.RetornoConsultaNotasDocument;
import br.com.dsfnet.nfse.lote.RetornoConsultaNotasDocument.RetornoConsultaNotas;
import br.com.dsfnet.nfse.lote.RetornoEnvioLoteRPSDocument;
import br.com.dsfnet.nfse.lote.RetornoEnvioLoteRPSDocument.RetornoEnvioLoteRPS;
import br.com.dsfnet.nfse.tp.TpAssinatura;
import br.com.dsfnet.nfse.tp.TpAssincrono;
import br.com.dsfnet.nfse.tp.TpChaveNFeRPS;
import br.com.dsfnet.nfse.tp.TpConsultaNFSe;
import br.com.dsfnet.nfse.tp.TpDeducoes;
import br.com.dsfnet.nfse.tp.TpEvento;
import br.com.dsfnet.nfse.tp.TpInscricaoMunicipalNulo;
import br.com.dsfnet.nfse.tp.TpItemTributavel;
import br.com.dsfnet.nfse.tp.TpItens;
import br.com.dsfnet.nfse.tp.TpListaItens;
import br.com.dsfnet.nfse.tp.TpLote;
import br.com.dsfnet.nfse.tp.TpLoteCancelamentoNFSe;
import br.com.dsfnet.nfse.tp.TpMetodoEnvio;
import br.com.dsfnet.nfse.tp.TpNFSe;
import br.com.dsfnet.nfse.tp.TpNotaCancelamentoNFSe;
import br.com.dsfnet.nfse.tp.TpOperacao;
import br.com.dsfnet.nfse.tp.TpRPS;
import br.com.dsfnet.nfse.tp.TpSeriePrestacao;
import br.com.dsfnet.nfse.tp.TpSerieRPS;
import br.com.dsfnet.nfse.tp.TpSituacaoRPS;
import br.com.dsfnet.nfse.tp.TpTipoRPS;
import br.com.dsfnet.nfse.tp.TpTipoRecolhimento;
import br.com.dsfnet.nfse.tp.TpTributacao;
import br.com.dsfnet.nfse.tp.TpTributacao.Enum;
import net.sf.jasperreports.engine.JRParameter;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRXmlDataSource;
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
	
	private ProcessInfo pi;

	public DSF100 ()
	{
		
	}
	
	public DSF100 (ProcessInfo pi)
	{
		this.pi = pi;
	}
	
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
//		else if (location.getC_City_ID() == nf.getOrg_Location().getC_City_ID())
//			throw new Exception ("Obrigatório o preenchimento da IM / CCM para contribuintes da cidade, RPS: " + nf.getDocumentNo());
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
				throw new Exception ("Obrigatório o preenchimento do campo Bairro, RPS: " + nf.getDocumentNo());
			
			String compl = nf.getlbr_BPAddress4();
			if (compl != null)
			{
				if (compl.length() > 30)
					compl = compl.substring(0,30);
				tpRPS.setComplementoEnderecoTomador(compl);
			}
			tpRPS.setCEPTomador(toInt (TextUtil.toNumeric (nf.getlbr_BPPostal())));
			tpRPS.setCidadeTomador(toInt (cityCode));
			tpRPS.setCidadeTomadorDescricao(nf.getlbr_BPCity());
			tpRPS.setMunicipioPrestacao(toInt (cityCode));
			tpRPS.setMunicipioPrestacaoDescricao(nf.getlbr_BPCity());
			tpRPS.setTipoBairroTomador("BAIRRO");
		}
		String eMailNFe = nf.getLBR_EMailNFe();
		if (eMailNFe != null && !eMailNFe.isBlank())
		{
			//	Use ; as separator
			eMailNFe = eMailNFe.trim().replace(" ", "").replace(",", ";");
			
			//	Check individual emails
			eMailNFe = Arrays.asList(eMailNFe.split(";")).stream()
				.filter(s -> s.matches(ValidatorBPartner.REGEX_EMAIL))
				.collect(Collectors.joining(";"));
			//
			if (eMailNFe.length() > 60)
			{
				int count=0;
				while (eMailNFe.length() > 60 && eMailNFe.indexOf(";") > 0)
				{
					if (count++ > 10)
						break;
					eMailNFe = eMailNFe.substring(0, eMailNFe.lastIndexOf(";"));
				}
			}
			
			if (eMailNFe.length() <= 60)
				tpRPS.setEmailTomador(eMailNFe);
			else
				tpRPS.setEmailTomador("-");
		}
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
				item.setDiscriminacaoServico(Util.deleteAccents(nfl.getProductName()));
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
				nf.setErrorMsg("Impossível gerar NFS-e. Todos os serviços da NFS-e devem conter o mesmo Código de Serviço, RPS: " + nf.getDocumentNo());
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
					nf.setErrorMsg("Impossível gerar XML NFS-e. Todos os serviços da NFS-e devem conter o mesmo Código de Serviço, RPS: " + nf.getDocumentNo());
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
					nf.setErrorMsg("Impossível gerar XML NFS-e. Todos os serviços da NFS-e devem conter o mesmo Código de Serviço, RPS: " + nf.getDocumentNo());
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
		tpRPS.setDescricaoRPS(Util.deleteAccents(descricaoServico));
		//
		if (eMailNFe != null && eMailNFe.indexOf("@") > 1)
			tpRPS.setEmailTomador(eMailNFe.trim());
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
		String xmlText = tpRPS.xmlText(NFeUtil.getXmlOpt());
		
		//	Log
		NFeUtil.saveXML (String.valueOf(nf.getAD_Org_ID()), NFeUtil.KIND_NFSE, NFeUtil.MESSAGE_XML, nf.getDocumentNo(), xmlText.toString());

		return xmlText.getBytes(NFeUtil.NFE_ENCODING);
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
		String uuid = UUID.randomUUID().toString();
		lote.setId(uuid);
		
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
		NFeUtil.saveXML (String.valueOf(p_AD_Org_ID), NFeUtil.KIND_NFSE, NFeUtil.MESSAGE_REQ_AUTORIZE, uuid, xml.toString());
		
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
		
		MLBRNFConfig nfConfig = MLBRNFConfig.get(oi.getAD_Org_ID(), MLBRNFConfig.LBR_NFMODEL_NotaFiscalDeServiçosEletrônicaRPS);
		
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
				
				uuid = UUID.randomUUID().toString();
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
			if (rps.size() == 1 
					&& nfConfig != null 
					&& MLBRNFeLot.LBR_NFELOTMETHOD_Synchronous.equals(nfConfig.getLBR_NFeLotMethod()))
				retornoXML = stub.enviarSincrono(xml.toString());
			
			//	Envio o Lote
			else 
				retornoXML = stub.enviar(xml.toString());
		}
		
		NFeUtil.saveXML (String.valueOf(p_AD_Org_ID), NFeUtil.KIND_NFSE, NFeUtil.MESSAGE_RET_AUTORIZE, uuid, retornoXML.toString());

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
			
			proccessNFSe (ctx, trxName, "" + chaves.getChaveRPS().getNumeroRPS(), "" + chaves.getChaveNFe().getNumeroNFe(), chaves.getChaveNFe().getCodigoVerificacao(), p_AD_Org_ID, chaves.getChaveRPS().getDataEmissaoRPS());
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
		return consult (nf.getCtx(), nf.getAD_Org_ID(), nf.getlbr_DigestValue(), nf.get_TrxName());
	}
	
	protected boolean consult(Properties ctx, int AD_Org_ID, String lotNo, String trxName) throws Exception
	{
		LoteRpsServiceStub stub = new LoteRpsServiceStub(url);
		
		MOrgInfo oi = MOrgInfo.get (ctx, AD_Org_ID, null);
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
		X_C_City c = BPartnerUtil.getX_C_City(ctx, orgLoc, null);
		String cityCode = c.get_ValueAsString("lbr_CityCode2");
		//
		header.setCodCidade(Long.valueOf(cityCode));
		header.setCPFCNPJRemetente(TextUtil.toNumeric(oiW.getlbr_CNPJ()));
		header.setNumeroLote(Integer.parseInt(lotNo));
		header.setVersao(1);
		
		String xml = consultDoc.xmlText();
		String uuid = UUID.randomUUID().toString();
		NFeUtil.saveXML (String.valueOf(oi.getAD_Org_ID()), NFeUtil.KIND_NFSE, NFeUtil.MESSAGE_REQ_CONSULT, uuid, xml);

		String resultXML = stub.consultarLote(xml);
		NFeUtil.saveXML (String.valueOf(oi.getAD_Org_ID()), NFeUtil.KIND_NFSE, NFeUtil.MESSAGE_RET_CONSULT, uuid, resultXML);

		RetornoConsultaLote result = RetornoConsultaLoteDocument.Factory.parse(resultXML).getRetornoConsultaLote();

		//	Read from XML
		TpEvento[] alertas 			= result.getAlertas().getAlertaArray();
		TpEvento[] erros 			= result.getErros().getErroArray();
		TpConsultaNFSe[] chaveNFeRPS = result.getListaNFSe().getConsultaNFSeArray();
		
		for (TpEvento alerta : alertas)
		{
			log.warning ("Alerta - NF=" + alerta.getChaveNFe() + ", Cod=" + alerta.getCodigo() + ", Desc=" + alerta.getDescricao());
			if (alerta.getCodigo() == 203)	//	Lote em processamento
				return false;
		}
		for (TpEvento erro : erros)
		{
			proccessErrors (ctx, trxName, "" + erro.getChaveRPS().getNumeroRPS(), erro.getCodigo() + "-" + erro.getDescricao(), AD_Org_ID);
		}
		for (TpConsultaNFSe chaves : chaveNFeRPS)
		{
			proccessNFSe (ctx, trxName, "" + chaves.getNumeroRPS(), "" + chaves.getNumeroNFe(), chaves.getCodigoVerificacao(), AD_Org_ID, chaves.getDataEmissaoRPS());
		}
		return erros.length == 0 ? Boolean.TRUE : Boolean.FALSE;
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
	private void proccessNFSe (Properties ctx, String trxName, String p_RPS, String p_NFe, String p_VerifCode, int p_AD_Org_ID, Calendar dateTrx)
	{
		int LBR_NotaFiscal_ID = MLBRNotaFiscal.getLBR_NotaFiscal_ID (p_AD_Org_ID, p_RPS, true, MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalDeServiçosEletrônicaRPS, trxName);
		if (LBR_NotaFiscal_ID > 0)
		{
			MLBRNotaFiscal nf = new MLBRNotaFiscal (ctx, LBR_NotaFiscal_ID, trxName);
			if (dateTrx != null)
				nf.setDateTrx(new Timestamp (dateTrx.getTimeInMillis()));
			
			ProcReturnRPS.proccessNFSe (nf, p_NFe, p_VerifCode);
			//
			byte[] data = nf.getAttachmentData("xml");
			
			try {
				RetornoConsultaNotasDocument xml = RetornoConsultaNotasDocument.Factory.parse(new String (data, NFeUtil.NFE_ENCODING));
				
				// XML OK
				if (xml != null)
					return;
			}
			catch (Exception e) {}
			
			try {
				//	Parse TpRPS as TPNFSe and fill missing fields
				TpNFSe nfse = TpNFSe.Factory.parse (new String (data, NFeUtil.NFE_ENCODING));
				nfse.setNumeroNota(Integer.parseInt(p_NFe));
				nfse.setCodigoVerificacao(p_VerifCode);
				nfse.setNumeroLote(Integer.parseInt(nf.getlbr_DigestValue()));
				if (dateTrx != null)
					nfse.setDataProcessamento(dateTrx);
				Arrays.asList (nfse.getItens().getItemArray()).stream()
					.filter(i -> i.getTributavel() == null)
					.forEach(i -> i.setTributavel(TpItemTributavel.S));
				//
				storeXML(ctx, nf.getlbr_CNPJ(), nfse);
			}
			catch (Exception e) {}
		}
	}	//	proccessNFSe
	
	/**
	 * 		Processar NF-e
	 * 	@param p_RPS
	 * 	@param p_NFe
	 * 	@param p_VerifCode
	 * 	@param p_AD_Org_ID - Organization
	 */
	private void proccessErrors (Properties ctx, String trxName, String p_RPS, String p_ErrorMsg, int p_AD_Org_ID)
	{
		int LBR_NotaFiscal_ID = MLBRNotaFiscal.getLBR_NotaFiscal_ID (p_AD_Org_ID, p_RPS, true, MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalDeServiçosEletrônicaRPS, trxName);
		if (LBR_NotaFiscal_ID > 0)
		{
			MLBRNotaFiscal nf = new MLBRNotaFiscal (ctx, LBR_NotaFiscal_ID, trxName);
			nf.setDocStatus(MLBRNotaFiscal.DOCSTATUS_Invalid);
			
			if (nf.getErrorMsg() != null)
				p_ErrorMsg = nf.getErrorMsg() + "." + p_ErrorMsg;
			nf.setErrorMsg(p_ErrorMsg);
			nf.save();
		}

		if (pi != null)
			pi.addLog (LBR_NotaFiscal_ID, null, null, "RPS:" + p_RPS + "-"+ p_ErrorMsg, MLBRNotaFiscal.Table_ID, LBR_NotaFiscal_ID);
	}	//	proccessNFSe
	
	/**
	 *	Imprimir a NFS-e
	 * 	@return
	 */
	public String printNFSe (MLBRNotaFiscal nf)
	{
		//	Check for null
		if (nf == null || nf.getlbr_NFENo() == null)
			return null;
		
		byte[] data = nf.getAttachmentData("xml");
		RetornoConsultaNotasDocument xml = null;
		
		try {
			xml = RetornoConsultaNotasDocument.Factory.parse(new String (data, NFeUtil.NFE_ENCODING));
		}
		catch (Exception e) {}
		
		// Try to get XML from prefeitura
		if (xml == null) {
			
			try 
			{
				ReqConsultaNotasDocument doc = ReqConsultaNotasDocument.Factory.newInstance();
				ReqConsultaNotas consult = doc.addNewReqConsultaNotas();
				br.com.dsfnet.nfse.lote.ReqConsultaNotasDocument.ReqConsultaNotas.Cabecalho cabecalho = consult.addNewCabecalho();
				//
				XmlCursor cursor = doc.newCursor();
				if (cursor.toFirstChild())
					cursor.setAttributeText(new QName("http://www.w3.org/2001/XMLSchema-instance","schemaLocation"), "http://localhost:8080/WsNFe2/lote http://localhost:8080/WsNFe2/xsd/ReqConsultaNotas.xsd");

				cursor = consult.newCursor();
				cursor.toNextToken();
				cursor.insertNamespace("ns1", "http://localhost:8080/WsNFe2/lote");
				cursor.insertNamespace("tipos", "http://localhost:8080/WsNFe2/tp");
				cursor.insertNamespace("xsi", "http://www.w3.org/2001/XMLSchema-instance");
				
				//	Cabeçalho para o Lote
				X_C_City c = BPartnerUtil.getX_C_City(nf.getCtx(), (MLocation) nf.getOrg_Location(), null);
				String cityCode = c.get_ValueAsString("lbr_CityCode2");
				//
				cabecalho.setId(UUID.randomUUID().toString());
				cabecalho.setCodCidade(Long.valueOf(cityCode));
				cabecalho.setInscricaoMunicipalPrestador(toLong(nf.getlbr_OrgCCM()));
				cabecalho.setCPFCNPJRemetente(TextUtil.toNumeric(nf.getlbr_CNPJ()));
				cabecalho.setNotaInicial(toInt(nf.getlbr_NFENo()));
				cabecalho.setDtInicio(fixDate(nf.getDateDoc()));
				cabecalho.setDtFim(fixDate(nf.getDateDoc()));
				cabecalho.setVersao(1);
				
				MOrgInfo oi = MOrgInfo.get (nf.getCtx(), nf.getAD_Org_ID(), null);
				new SignatureUtil (oi, SignatureUtil.OUTROS, "Cabecalho").sign (doc, consult.newCursor());
				
				//	Check if XML is OK
				NFeUtil.validate (doc);
				NFeUtil.saveXML (String.valueOf(oi.getAD_Org_ID()), NFeUtil.KIND_NFSE, NFeUtil.MESSAGE_REQ_CONSULT, nf.getDocumentNo(), doc.xmlText());
				
				LoteRpsServiceStub stub = new LoteRpsServiceStub(url);
				String result = stub.consultarNota(doc.xmlText());
				
				NFeUtil.saveXML (String.valueOf(oi.getAD_Org_ID()), NFeUtil.KIND_NFSE, NFeUtil.MESSAGE_REQ_CONSULT, nf.getDocumentNo(), result);
				
				RetornoConsultaNotasDocument consultaNotasDocument = RetornoConsultaNotasDocument.Factory.parse(result);
				RetornoConsultaNotas retornoConsultaNotas = consultaNotasDocument.getRetornoConsultaNotas();
				TpNFSe[] notaArray = retornoConsultaNotas.getNotas().getNotaArray();
				
				//	Store XML of this and other NFs
				Arrays.asList (notaArray).forEach (x -> storeXML(nf.getCtx(), nf.getlbr_CNPJ(), x));
				
				TpNFSe match = Arrays.asList (notaArray).stream().filter(x -> x.getNumeroNota() == Integer.parseInt(nf.getlbr_NFENo())).findFirst().orElse(null);
				
				if (match == null)
					throw new Exception ("Arquivo XML não encontrado");
				
				//	This NFSe
				xml = RetornoConsultaNotasDocument.Factory.newInstance();
				xml.addNewRetornoConsultaNotas().addNewNotas().setNotaArray(new TpNFSe[] {match});
			}
			catch (AxisFault e)
			{
				e.printStackTrace();
			} 
			catch (Exception e) 
			{
				e.printStackTrace();
			}
		}
		
		try
		{
			JasperPrint jasperPrint = getReport (nf, new ByteArrayInputStream(xml.toString().getBytes()));
			JRViewerProvider viewerLauncher = Service.locator().locate(JRViewerProvider.class).getService();
			String title = null;
			if (nf.getlbr_NFENo() != null) {
				title = nf.getlbr_NFENo(); 
			}
			else {
				title = nf.getDocNo();
			}
			
			viewerLauncher.openViewer (jasperPrint, title);
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
			JasperPrint jasperPrint = getReport (nf, null);
			
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
	private JasperPrint getReport (MLBRNotaFiscal nf, InputStream xmldoc) throws Exception
	{
		log.fine("start getReport");
		
		InputStream is = null;
		MImage img = MImage.get(Env.getCtx(), MOrgInfo.get(Env.getCtx(), nf.getAD_Org_ID(), nf.get_TrxName()).getLogo_ID());
		MAttachment att = null;
		Locale locale = new Locale( "pt", "BR" );

		try
		{
			//	Map Parameters
			Map<String, Object> map = new HashMap<String, Object>();
			
			// Get Xml Attachment
			if (xmldoc == null) {
				
				//				Attachment
				att = nf.getAttachment (true);
				
				if (att == null || att.getEntryCount() == 0)
					throw new Exception ("Arquivo XML n\u00E3o encontrado para impress\u00E3o");
				
				MAttachmentEntry[] entries = att.getEntries();
				
				//	Get XML
				for (MAttachmentEntry entry : entries)
				{
					//	Try to find the right file
					if (entry.getName().endsWith(".xml"))
					{
						xmldoc = entry.getInputStream();
						break;
					}
				}
				
				//	Valid XML
				if (xmldoc == null)
					throw new Exception ("Arquivo XML não foi encontrado");
			}
			
			//	Get Logo
			if (img.getBinaryData() != null)
			{
				is = new ByteArrayInputStream (img.getBinaryData());
				map.put("logotipo", is);
			}
			
			if (nf.getlbr_CNPJ() != null && !nf.getlbr_OrgCity().isEmpty() 
					&& !nf.getlbr_OrgRegion().isEmpty())
			{
				map.put("CNPJPrestador", nf.getlbr_CNPJ());
				map.put("MunicipioPrestador", nf.getlbr_OrgCity());
				map.put("UFPrestador", nf.getlbr_OrgRegion());
			}
			
			if (nf.getlbr_OrgAddress1() != null && !nf.getlbr_OrgAddress1().isEmpty())
			{
				map.put("LogradouroPrestador", nf.getlbr_OrgAddress1());
			}
			
			if (nf.getlbr_OrgAddress2() != null && !nf.getlbr_OrgAddress2().isEmpty())
			{
				map.put("NumeroLogradouroPrestador", nf.getlbr_OrgAddress2());
			}
			
			if (nf.getlbr_OrgAddress3() != null && !nf.getlbr_OrgAddress3().isEmpty())
			{
				map.put("BairroPrestador", nf.getlbr_OrgAddress3());
			}
			
			if (nf.getlbr_OrgAddress4() != null && !nf.getlbr_OrgAddress4().isEmpty())
			{
				map.put("ComplementoPrestador", nf.getlbr_OrgAddress4());
			}
			
			if (nf.getlbr_OrgPostal() != null && !nf.getlbr_OrgPostal().isEmpty())
			{
				map.put("CEPPrestador", nf.getlbr_OrgPostal());
			}
			
			if (nf.getlbr_BPRegion() != null && !nf.getlbr_BPRegion().isEmpty())
			{
				map.put("UFTomador", nf.getlbr_BPRegion());
			}
			
			map.put("Prefeitura", "PREFEITURA MUNICIPAL DE CAMPO GRANDE");
			map.put("Secretaria", "SECRETARIA MUNICIPAL DE FINANÇAS - SEFIN");
			
			map.put( JRParameter.REPORT_LOCALE, locale );
				
			//	Get Jasper
			ClassLoader cl = getClass().getClassLoader();
			InputStream report = cl.getResourceAsStream("org/kenos/idempiere/lbr/nfse/report/dsf100.jasper");
			
			log.fine("after find report");
			
			JasperReport jasperReport = (JasperReport) JRLoader.loadObject (report);
			JRXmlDataSource dataSource = new JRXmlDataSource ( xmldoc , jasperReport.getQuery().getText() );
			dataSource.setDatePattern("yyyy-MM-dd'T'HH:mm:ss");
			
			//	Fill
			return JasperFillManager.fillReport (jasperReport, map, dataSource);			
		}
		catch (Exception e)
		{
			e.printStackTrace();
			throw new Exception (e.getMessage());
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
				throw new Exception ("Erro na Impressão da Nota Fiscal de Serviço. Imprima a partir do Site da Prefeitura");
			}
		}
	}
	@Override
	public boolean cancel(MLBRNotaFiscal nf) throws Exception 
	{
		ReqCancelamentoNFSeDocument doc = ReqCancelamentoNFSeDocument.Factory.newInstance();
		ReqCancelamentoNFSe cancelamentoNFSe = doc.addNewReqCancelamentoNFSe();
		br.com.dsfnet.nfse.lote.ReqCancelamentoNFSeDocument.ReqCancelamentoNFSe.Cabecalho cabecalho = cancelamentoNFSe.addNewCabecalho();
		//
		XmlCursor cursor = doc.newCursor();
		if (cursor.toFirstChild())
			cursor.setAttributeText(new QName("http://www.w3.org/2001/XMLSchema-instance","schemaLocation"), "http://localhost:8080/WsNFe2/lote http://localhost:8080/WsNFe2/xsd/ReqCancelamentoNFSe.xsd");

		cursor = cancelamentoNFSe.newCursor();
		cursor.toNextToken();
		cursor.insertNamespace("ns1", "http://localhost:8080/WsNFe2/lote");
		cursor.insertNamespace("tipos", "http://localhost:8080/WsNFe2/tp");
		cursor.insertNamespace("xsi", "http://www.w3.org/2001/XMLSchema-instance");
		
		//	Cabeçalho para o Lote
		X_C_City c = BPartnerUtil.getX_C_City(nf.getCtx(), (MLocation) nf.getOrg_Location(), null);
		String cityCode = c.get_ValueAsString("lbr_CityCode2");
		//
		cabecalho.setCodCidade(Long.valueOf(cityCode));
		cabecalho.setCPFCNPJRemetente(TextUtil.toNumeric(nf.getlbr_CNPJ()));
		cabecalho.setTransacao(false);
		cabecalho.setVersao(1);

		TpLoteCancelamentoNFSe lote = cancelamentoNFSe.addNewLote();
		lote.setId(UUID.randomUUID().toString());
		
		TpNotaCancelamentoNFSe nota = lote.addNewNota();
		nota.setId(UUID.randomUUID().toString());
		nota.setInscricaoMunicipalPrestador(toLong (nf.getlbr_OrgCCM()));
		nota.setNumeroNota(Integer.parseInt(nf.getlbr_NFENo()));
		nota.setCodigoVerificacao(nf.getlbr_NFeProt());
		nota.setMotivoCancelamento(nf.getlbr_MotivoCancel());
		
		MOrgInfo oi = MOrgInfo.get (nf.getCtx(), nf.getAD_Org_ID(), null);
		new SignatureUtil (oi, SignatureUtil.OUTROS, "Lote").sign (doc, cancelamentoNFSe.newCursor());

		//	Validate the XML
		NFeUtil.saveXML (String.valueOf(oi.getAD_Org_ID()), NFeUtil.KIND_NFSE, NFeUtil.MESSAGE_REQ_CANCEL, nf.getDocumentNo(), doc.xmlText());
		NFeUtil.validate(doc);
		
		LoteRpsServiceStub stub = new LoteRpsServiceStub(url);
		String response = stub.cancelar(doc.xmlText());
		
		NFeUtil.saveXML (String.valueOf(oi.getAD_Org_ID()), NFeUtil.KIND_NFSE, NFeUtil.MESSAGE_RET_CANCEL, nf.getDocumentNo(), response);

		RetornoCancelamentoNFSeDocument responseDoc = RetornoCancelamentoNFSeDocument.Factory.parse(response);
		RetornoCancelamentoNFSe result = responseDoc.getRetornoCancelamentoNFSe();
		
		//	Read from XML
		TpEvento[] alertas 			= result.getAlertas().getAlertaArray();
		TpEvento[] erros 			= result.getErros().getErroArray();
		
		for (TpEvento alerta : alertas)
		{
			log.warning ("Alerta - NF=" + alerta.getChaveNFe() + ", Cod=" + alerta.getCodigo() + ", Desc=" + alerta.getDescricao());
		}
		for (TpEvento erro : erros)
		{
			log.log (Level.SEVERE, "Erro - NF=" + erro.getChaveNFe() + ", Cod=" + erro.getCodigo() + ", Desc=" + erro.getDescricao());
		}
		
		boolean success = result.getCabecalho().getSucesso();
		if (success)
		{
			//nf.getAttachment();
		}
		return success;
	}	//	cancel
	
	/**
	 * 	Store the XML of NFSe
	 * 
	 * 	@param ctx
	 * 	@param cnpj
	 * 	@param nfse
	 */
	private void storeXML (Properties ctx, String cnpj, TpNFSe nfse)
	{
		String where = MLBRNotaFiscal.COLUMNNAME_lbr_NFModel + "=? AND " + 
				MLBRNotaFiscal.COLUMNNAME_lbr_CNPJ + "=? AND " + 
				MLBRNotaFiscal.COLUMNNAME_lbr_NFENo + "=? AND " + 
				MLBRNotaFiscal.COLUMNNAME_lbr_NFSerie + "=?";
		
		try {
			MLBRNotaFiscal nf = new Query (ctx, MLBRNotaFiscal.Table_Name, where, null)
				.setParameters(MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalDeServiçosEletrônicaRPS, cnpj, String.valueOf(nfse.getNumeroNota()), nfse.xgetSeriePrestacao().getBigIntegerValue().toString())
				.firstOnly();
			MAttachment attachment = nf.getAttachment(true);
			if (attachment != null) 
			{
				for (int i=0; i<attachment.getEntryCount(); i++) 
				{
					MAttachmentEntry entry = attachment.getEntry(i);
					if (entry != null 
							&& entry.getName() != null 
							&& entry.getName().endsWith("xml")) 
					{ 
						try 
						{
							RetornoConsultaNotasDocument.Factory.parse(new String (entry.getData(), NFeUtil.NFE_ENCODING));
							
							// parse OK
							return;
						}
						catch (Exception e) {}
						
						//	Delete incomplete XML
						attachment.deleteEntry(i);
					}
				}
			}
			else
				attachment = nf.createAttachment();
			
			RetornoConsultaNotasDocument document = RetornoConsultaNotasDocument.Factory.newInstance();
			document.addNewRetornoConsultaNotas().addNewNotas().setNotaArray(new TpNFSe[] {nfse});
			//
			attachment.addEntry("NFSe-" + nfse.getNumeroNota() + ".xml", document.xmlText().getBytes(NFeUtil.NFE_ENCODING));
			attachment.save();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}	//	storeXML
}	//	NFSeImpl
