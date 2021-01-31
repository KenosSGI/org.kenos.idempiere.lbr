package org.adempierelbr.sped.efd;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRFactFiscal;
import org.adempierelbr.model.MLBRNCM;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBROpenItem;
import org.adempierelbr.model.MLBROrgIEST;
import org.adempierelbr.model.MLBRSalesCardTotal;
import org.adempierelbr.model.MLBRTaxAssessment;
import org.adempierelbr.model.X_LBR_TaxAssessmentLine;
import org.adempierelbr.sped.CounterSped;
import org.adempierelbr.sped.SPEDUtil;
import org.adempierelbr.sped.efd.bean.R0000;
import org.adempierelbr.sped.efd.bean.R0001;
import org.adempierelbr.sped.efd.bean.R0005;
import org.adempierelbr.sped.efd.bean.R0015;
import org.adempierelbr.sped.efd.bean.R0100;
import org.adempierelbr.sped.efd.bean.R0150;
import org.adempierelbr.sped.efd.bean.R0190;
import org.adempierelbr.sped.efd.bean.R0200;
import org.adempierelbr.sped.efd.bean.R0400;
import org.adempierelbr.sped.efd.bean.R0460;
import org.adempierelbr.sped.efd.bean.R0500;
import org.adempierelbr.sped.efd.bean.R0990;
import org.adempierelbr.sped.efd.bean.R1001;
import org.adempierelbr.sped.efd.bean.R1010;
import org.adempierelbr.sped.efd.bean.R1600;
import org.adempierelbr.sped.efd.bean.R1990;
import org.adempierelbr.sped.efd.bean.R9001;
import org.adempierelbr.sped.efd.bean.R9900;
import org.adempierelbr.sped.efd.bean.R9990;
import org.adempierelbr.sped.efd.bean.R9999;
import org.adempierelbr.sped.efd.bean.RB001;
import org.adempierelbr.sped.efd.bean.RB990;
import org.adempierelbr.sped.efd.bean.RC001;
import org.adempierelbr.sped.efd.bean.RC100;
import org.adempierelbr.sped.efd.bean.RC120;
import org.adempierelbr.sped.efd.bean.RC140;
import org.adempierelbr.sped.efd.bean.RC141;
import org.adempierelbr.sped.efd.bean.RC170;
import org.adempierelbr.sped.efd.bean.RC190;
import org.adempierelbr.sped.efd.bean.RC195;
import org.adempierelbr.sped.efd.bean.RC500;
import org.adempierelbr.sped.efd.bean.RC590;
import org.adempierelbr.sped.efd.bean.RC990;
import org.adempierelbr.sped.efd.bean.RD001;
import org.adempierelbr.sped.efd.bean.RD100;
import org.adempierelbr.sped.efd.bean.RD110;
import org.adempierelbr.sped.efd.bean.RD190;
import org.adempierelbr.sped.efd.bean.RD500;
import org.adempierelbr.sped.efd.bean.RD590;
import org.adempierelbr.sped.efd.bean.RD990;
import org.adempierelbr.sped.efd.bean.RE001;
import org.adempierelbr.sped.efd.bean.RE100;
import org.adempierelbr.sped.efd.bean.RE110;
import org.adempierelbr.sped.efd.bean.RE111;
import org.adempierelbr.sped.efd.bean.RE116;
import org.adempierelbr.sped.efd.bean.RE200;
import org.adempierelbr.sped.efd.bean.RE210;
import org.adempierelbr.sped.efd.bean.RE250;
import org.adempierelbr.sped.efd.bean.RE500;
import org.adempierelbr.sped.efd.bean.RE510;
import org.adempierelbr.sped.efd.bean.RE520;
import org.adempierelbr.sped.efd.bean.RE990;
import org.adempierelbr.sped.efd.bean.RG001;
import org.adempierelbr.sped.efd.bean.RG990;
import org.adempierelbr.sped.efd.bean.RH001;
import org.adempierelbr.sped.efd.bean.RH005;
import org.adempierelbr.sped.efd.bean.RH010;
import org.adempierelbr.sped.efd.bean.RH990;
import org.adempierelbr.sped.efd.bean.RK001;
import org.adempierelbr.sped.efd.bean.RK100;
import org.adempierelbr.sped.efd.bean.RK200;
import org.adempierelbr.sped.efd.bean.RK280;
import org.adempierelbr.sped.efd.bean.RK990;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.LBRUtils;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MCity;
import org.compiere.model.MElementValue;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MPaySchedule;
import org.compiere.model.MPaymentTerm;
import org.compiere.model.MProduct;
import org.compiere.model.MUOM;
import org.compiere.model.MUser;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * Utilitarios para o EFD
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: EFDUtil.java, 20/01/2011, 09:50:00, mgrigioni
 * 
 * @author Pablo Boff Pigozzo
 * @version $ 08/08/2012, 15:30 pablobp4 $
 * 
 * @author Priscila Pinheiro, Kenos
 * @version $ 02/02/2013, 15:30 ppinheiro $
 */
public class EFDUtil {

	/**
	 * Logger
	 */
	private static CLogger log = CLogger.getCLogger(EFDUtil.class);

	/**
	 * TODO: ALTERAR E DEIXAR DINAMICO
	 */
	private static final String COD_VER = "014";	// A Partir de Jan/19
	private static final String COD_FIN = "0"; 		// Remessa do Arquivo Original
	private static final String IND_PERFIL = "A"; 	// Perfil A
	private static final String COD_DOC_IMP = "0"; 	// Declaração de Importacao
	private static final String IND_APUR = "0"; 	// Mensal (IPI - RC170)

	// Código da natureza da conta/grupo de contas
	public static final String CONTA_ATIVO        = "01";
	public static final String CONTA_PASSIVO      = "02";
	public static final String PATRIMONIO_LIQUIDO = "03";
	public static final String CONTA_RESULTADO    = "04";
	public static final String CONTA_COMPENSACAO  = "05";
	public static final String OUTRAS             = "09";
	
	
	// 
	private static List<String> CFOP_DEVOL_ST = new ArrayList<String>(Arrays.asList("1410", "1411", "1414", "1415", "1660", 
			"1661", "1662", "2410", "2411", "2414", "2415", "2660", "2661", "2662"));
	

	/**
	 * Verificar se é CFOP de devolução
	 * 
	 * Utilizado para apurar ST
	 *
	 *@param CFOP
	 */
	public static boolean isCFOPDevolST(String CFOP)
	{
		// 
		CFOP = TextUtil.toNumeric(CFOP);
		
		//
		for (String x : CFOP_DEVOL_ST)
			if(x.equals(CFOP))
				return true;
			
		// 
		return false;
		
	}
	
	
	/**
	 * Retornar o bloco de registro ao qual o modelo de documento pertence
	 * 
	 * @param nfModel
	 * @return C100, C400, C500, D100, D500
	 */
	public static String getBlocoNFModel(String nfModel) {

		
		//
		String nfReg = "";
		
		/*
		 * BLOCO C100 - Nota Fiscal Produto
		 */
		if (nfModel.equals("01") || nfModel.equals("1B")
				|| nfModel.equals("04") || nfModel.equals("55")) {
			nfReg = "C100";
		}

		/*
		 * BLOCO C400 - Cupom Fiscal
		 */
		else if (nfModel.equals("02") || nfModel.equals("2D")) {
			nfReg = "C400";
		}

		/*
		 * BLOCO C500 - Nota Fiscal Energia Elétrica
		 */
		else if (nfModel.equals("06") || nfModel.equals("28")
				|| nfModel.equals("29")) {
			nfReg = "C500";
		}

		/*
		 * BLOCO D100 - Serviço de Transporte
		 */
		else if (nfModel.equals("07") || nfModel.equals("08")
				|| nfModel.equals("8B") || nfModel.equals("09")
				|| nfModel.equals("10") || nfModel.equals("11")
				|| nfModel.equals("26") || nfModel.equals("27")
				|| nfModel.equals("57")) {
			nfReg = "D100";
		}

		/*
		 * BLOCO D500 - Serviço de Telecomunicações
		 */
		else if (nfModel.equals("21") || nfModel.equals("22")) {
			nfReg = "D500";
		}

		return nfReg;

	} // getNFHeaderReg
	
	
	
	/**
	 * Tratar NF Model. 
	 * 
	 * Obs: Se o modelo do documento fiscal é null ou vazio, então
	 * verificar se é NF-e, se sim, colocar 55 NF-e, senão, colocar 01 NF Normal  
	 * 
	 * @param nfModel
	 * @param nfID
	 * @return
	 */
	public static String getCOD_MOD(MLBRFactFiscal factFiscal)
	{
		//
		String nfModel = factFiscal.getlbr_NFModel();
		
		//
		if (nfModel == null || nfModel.isEmpty())
		{
			if(factFiscal.getlbr_NFeID() != null && !factFiscal.getlbr_NFeID().isEmpty())
				nfModel = "55"; // NF-e
			else
				nfModel = "01"; // NF
		}
		
		return nfModel;
	}

	
	/**
	 * Retornar Código do Participante
	 * 
	 * TODO: VERIFICAR FORMA DE DEIXÁ-LO UNICO MESMO COM MAIS DE UM ENDERECO
	 * 
	 * @param factFiscal
	 * @return
	 * @throws Exception
	 */
	public static String getCOD_PART(MLBRFactFiscal factFiscal) throws Exception
	{
		
		// Código do PN
		return TextUtil.retiraEspecial(factFiscal.getC_BPartner().getValue());
		
	}
	
	
	/**
	 * Retornar Código da Situação do Documento
	 * 
	 * Tabela 4.1.2
	 * 
	 * Utilizado o código '08' para regime especial ou norma específica 
	 * de acordo com o manual do SPED, descrição do registro C100. 
	 * 
	 * @param factFiscal
	 * @return
	 * @throws Exception
	 */
	public static String getCOD_SIT(MLBRFactFiscal factFiscal) throws Exception
	{
		// documento regular
		String cod_sit = "00";

		// cancelada = 02
		if (factFiscal.isCancelled())
			if ("110".equals (factFiscal.getLBR_NotaFiscal().getlbr_NFeStatus()))
				cod_sit = "04";	//	Denegado;
			
			else if (factFiscal.getlbr_NFeID() != null && !factFiscal.getlbr_NFeID().isEmpty())
				cod_sit = "02";	//	Cancelado
			
			else
				cod_sit = "05";	//	Inutilizado
		
		// regime especial ou norma especifica. CFOP 5/6.929

		else if(factFiscal.getlbr_CFOPName() != null && (factFiscal.getlbr_CFOPName().equals("5.929")
				|| factFiscal.getlbr_CFOPName().equals("6.929")))
			cod_sit = "08";
		
		// regime especial ou norma específica: conhecimento de tranporte de terceiros
		else if(getBlocoNFModel(getCOD_MOD(factFiscal)).startsWith("D")
				&& !factFiscal.islbr_IsOwnDocument())
			cod_sit = "08";
		
		//	NF Avulsa Emitida pelo FISCO
		else if (factFiscal.getlbr_NFSerie() != null
				&& factFiscal.getlbr_NFSerie().length() == 3
				&& factFiscal.getlbr_NFSerie().startsWith("89"))
			cod_sit = "08";
		
		//	NF Complementar
		else if (MLBRNotaFiscal.LBR_FINNFE_NFeComplementar.equals(factFiscal.getLBR_NotaFiscal().getlbr_FinNFe()))
			cod_sit = "06";
		
		//	Notas Fiscais Denegadas
		else if (TextUtil.match (factFiscal.getLBR_NotaFiscal().getlbr_NFeStatus(),
					MLBRNotaFiscal.LBR_NFESTATUS_110_UsoDenegado,
					MLBRNotaFiscal.LBR_NFESTATUS_301_UsoDenegadoIrregularidadeFiscalDoEmitente,
					MLBRNotaFiscal.LBR_NFESTATUS_302_RejeiçãoIrregularidadeFiscalDoDestinatário,
					MLBRNotaFiscal.LBR_NFESTATUS_303_UsoDenegadoDestinatárioNãoHabilitadoAOperarNaUF))
			cod_sit = "04";	//	Denegado;
		
		//
		return cod_sit;
	}
	
	
	/**
	 * Retornar o Indicador de Frete
	 * 
	 * Obs.: A partir de 01/01/2012 passará a ser: Indicador do tipo do frete:
	 * 0- Por conta do emitente;
	 * 1- Por conta do destinatário/remetente;
	 * 2- Por conta de terceiros; 
	 * 9- Sem cobrança de frete.
	 * 
	 * @param factFiscal
	 * @return
	 * @throws Exception
	 */
	public static String getIND_FRT(MLBRFactFiscal factFiscal) throws Exception
	{
		// null = sem frete
		if(factFiscal.getFreightCostRule() == null)
			return "9";
		
		// incluso na nota (corpo da NF)
		if(factFiscal.getFreightCostRule().equals("I"))
			return "0";
		
		// excluso (conhecimento de frete)
		else if(factFiscal.getFreightCostRule().equals("E"))
			return "1";
		
		// por conta de terceiros
		else if(factFiscal.getFreightCostRule().equals("T"))
			return "2";
		
		// sem frete
		else 
			return "9";
		
	}
	
	
	/**
	 * Retornar o Indicador de Pgto
	 * 
	 * 0- À vista;
	 * 1- A prazo;
	 * 2 - Outros
	 * 
	 * @param factFiscal
	 * @return
	 * @throws Exception
	 */
	public static String getIND_PGTO(MLBRFactFiscal factFiscal) throws Exception
	{
		// sem fatura - ???
		if(factFiscal.getC_Invoice_ID() <= 0)
			return "2";
		
		// condição de pgto da fatura
		MPaymentTerm pt = new MPaymentTerm(factFiscal.getCtx(), 
				factFiscal.getC_Invoice().getC_PaymentTerm_ID(), 
				factFiscal.get_TrxName());
		MPaySchedule[] pts = pt.getSchedule(false);
		
		// se tiver dias devidos e/ou parcelas, então é a prazo
		if (pt.getNetDays() > 0	|| (pts != null && pts.length > 0))
			return "1";
		
		//
		return "0";
		
	}
	
	
	/**
	 * Retornar a Série da NF
	 * 
	 * Somente retornar a série de NF-e's de emissão própria, pois 
	 * não está tendo entrada de séries de NF-e's de terceiros. 
	 * 
	 * @param factFiscal
	 * @return
	 * @throws Exception
	 */
	public static String getSER(MLBRFactFiscal factFiscal) throws Exception
	{
		if(factFiscal.getlbr_NFSerie() != null 
				&& !factFiscal.getlbr_NFSerie().isEmpty())
			return factFiscal.getlbr_NFSerie();
		else
			return "";
	}
	
	/**
	 * Retornar o código de natureza da conta de acordo com o tipo no sistema
	 * 
	 * Código da natureza da conta/grupo de contas: 
	 * 01 - Contas de ativo;
	 * 02 - Contas de passivo;
	 * 03 - Patrimônio líquido;
	 * 04 - Contas de resultado;
	 * 05 - Contas de compensação; 
	 * 09 - Outras.
	 * 
	 * @param accountType
	 * @return
	 */
	public static String getCOD_NAT(String accountType){
		
		if (accountType == null || accountType.isEmpty())
			return OUTRAS;
		
		if (accountType.equals(MElementValue.ACCOUNTTYPE_Asset))
			return CONTA_ATIVO;
		
		if (accountType.equals(MElementValue.ACCOUNTTYPE_Liability))
			return CONTA_PASSIVO;
		
		if (accountType.equals(MElementValue.ACCOUNTTYPE_OwnerSEquity))
			return PATRIMONIO_LIQUIDO;
		
		if (accountType.equals(MElementValue.ACCOUNTTYPE_Revenue))
			return CONTA_RESULTADO;
		
		if (accountType.equals(MElementValue.ACCOUNTTYPE_Expense))
			return CONTA_RESULTADO;
		
		return OUTRAS;
	} //getCOD_NAT
	
	
	/**
	 * Verificar necessidade de criar o registros 0150, 0190, 0200
	 * 
	 *  Obs.: Se o registro RC100, ou RD100 for Cancelado, Denegado, Inutilizado, 
	 *  Emitido em Regime Especial ou de Emissão Própria, não é necessário
	 *  preencher os registros filhos. OBSERVAR EXCEÇÕES DOS REGISTROS RC100 E D100
	 * 
	 * @param factFiscal Fato fiscal gerador do registro
	 * @param reg Registro que será gerado. Ex.: R0150, R0190...
	 * @return true/false
	 */
	public static boolean needCreateR0s(MLBRFactFiscal factFiscal, Class reg) throws Exception
	{
		
		// 
		if(factFiscal == null)
			return false;
		
		// header - C100, D100...
		String header = getBlocoNFModel(getCOD_MOD(factFiscal));
		
		// COD_SIT
		String COD_SIT = getCOD_SIT(factFiscal);
		
		// IsNF-e
		boolean isNFe = (factFiscal.getlbr_NFeID() != null && !factFiscal.getlbr_NFeID().isEmpty()) && factFiscal.islbr_IsOwnDocument();
		
		// C100
		if(header.equals("C100"))
		{
			/*
			 * Se for cancelada, denegada ou inutilizada, não deixar criar nada
			 */
			if(COD_SIT.equals("02") || COD_SIT.equals("03") || COD_SIT.equals("04") || COD_SIT.equals("05")) 
				return false;
				
			
			/*
			 * Se for em regime especial ou NF-e de emissão própria, criar só o Parceiro de Negócios
			 */
			if((COD_SIT.equals("08") || isNFe) && !reg.equals(R0150.class))
				return false;			
		}
		
		// D100
		else if(header.equals("D100"))
		{
			/*
			 * Se for cancelada, denegada ou inutilizada, não deixar criar nada
			 */
			if(COD_SIT.equals("02") || COD_SIT.equals("03") || COD_SIT.equals("04") || COD_SIT.equals("05")) 
				return false;
				
			
			/*
			 * Se for em regime especial, criar só o Parceiro de Negócios
			 */
			if(COD_SIT.equals("08") && !reg.equals(R0150.class))
				return false;	
		}

		// se não se enquadrar nas situações acima, criar registros
		return true;
	}
	
	
	/**
	 * REGISTRO 0000: ABERTURA DO ARQUIVO DIGITAL E IDENTIFICAÇÃO DA ENTIDADE
	 * 
	 * @param dateFrom
	 * @param dateTo
	 * @param factFiscal
	 * @return
	 * @throws Exception
	 */

	public static R0000 createR0000(Properties ctx, Timestamp dateFrom, Timestamp dateTo, int AD_Org_ID, String trxName) throws Exception {

		MOrgInfo oi = MOrgInfo.get(ctx, AD_Org_ID, trxName);
		I_W_AD_OrgInfo oiW = POWrapper.create(oi, I_W_AD_OrgInfo.class);
		
		
		//
		R0000 reg = new R0000();
		reg.setCOD_VER(COD_VER);
		reg.setCOD_FIN(COD_FIN);
		reg.setDT_INI(dateFrom);
		reg.setDT_FIN(dateTo);
		reg.setNOME(oiW.getlbr_LegalEntity());
		reg.setCNPJ(oiW.getlbr_CNPJ());
		reg.setCPF(null);
		reg.setUF(oiW.getC_Location().getC_Region().getName());
		reg.setIE(oiW.getlbr_IE());
		
		//
		MCity city = new MCity(ctx, oiW.getC_Location().getC_City_ID(), trxName);
		reg.setCOD_MUN(city.get_ValueAsString("lbr_CityCode"));
		
		//
		reg.setIM(oiW.getlbr_CCM());
		reg.setSUFRAMA(oiW.getlbr_Suframa());
		reg.setIND_PERFIL(oi.get_ValueAsString("lbr_IndPerfil"));

		// 0 - Industria ou equiparado a Industrial / 1 - Outros
		reg.setIND_ATIV(oi.get_ValueAsString("lbr_IndAtividade").equals("0") ? "0" : "1");

		// return
		return reg;
	}

	/**
	 * REGISTRO 0001: ABERTURA DO BLOCO 0
	 * 
	 * @param hasInfo tem informação ou não
	 * @return
	 * @throws Exception
	 */
	public static R0001 createR0001(boolean hasInfo) throws Exception
	{
		R0001 reg = new R0001();
		reg.setIND_MOV(hasInfo ? "0" : "1");
		
		return reg;
	}
	
	/**
	 * REGISTRO 0005: DADOS COMPLEMENTARES DA ENTIDADE
	 * 
	 * @param factFiscal
	 * @return
	 */
	public static R0005 createR0005(Properties ctx, int AD_Org_ID, String trxName) throws Exception
	{
		// 
		I_W_AD_OrgInfo oiW = POWrapper.create(MOrgInfo.get(ctx, AD_Org_ID, trxName), I_W_AD_OrgInfo.class);
		
		//
		R0005 reg = new R0005();
		reg.setFANTASIA(oiW.getlbr_Fantasia());
		reg.setCEP(oiW.getC_Location().getPostal());
		reg.setEND(oiW.getC_Location().getAddress1());
		reg.setNUM(oiW.getC_Location().getAddress2());
		reg.setCOMPL(oiW.getC_Location().getAddress4());
		reg.setBAIRRO(oiW.getC_Location().getAddress3());
		reg.setFONE(oiW.getPhone());
		reg.setEMAIL(oiW.getEMail());
		
		// return
		return reg;			
	}
	
	/**
	 * REGISTRO 0005: DADOS COMPLEMENTARES DA ENTIDADE
	 * 
	 * @param factFiscal
	 * @return
	 */
	public static List<R0015> createR0015(Properties ctx, int AD_Org_ID, String trxName) throws Exception
	{
		// 
		List<MLBROrgIEST> iests = MLBROrgIEST.getAllIEST(AD_Org_ID);
		List<R0015> regs = new ArrayList<R0015>();
		
		//
		
		for (MLBROrgIEST iest : iests)
		{
			if (iest.isValidFromTo(Env.getContextAsDate(Env.getCtx(), "Date")))
			{
				R0015 reg = new R0015(iest.getC_Region().getName(), iest.getLBR_IEST());		
				regs.add(reg);
			}
		}
		
		// return
		return regs;			
	}



	/**
	 * REGISTRO 0100: DADOS DO CONTABILISTA
	 * @deprecated see {@link SPEDUtil#fillR0100(org.adempierelbr.sped.bean.I_R0100, Properties, int, String)}
	 * 
	 * @param factFiscal
	 * @return
	 * @throws Exception
	 */
	public static R0100 createR0100(Properties ctx, int AD_Org_ID, String trxName) throws Exception
	{

		// carregar contador e endereço
		MBPartner bpContador = new MBPartner(ctx, MOrgInfo.get(ctx, AD_Org_ID, trxName).get_ValueAsInt("LBR_BP_Accountant_ID"),	trxName);
		MBPartnerLocation bpcontLoc = bpContador.getPrimaryC_BPartner_Location();
		MLocation contLoc = new MLocation(ctx, bpcontLoc.getC_Location_ID(), trxName);
	
		// se não tiver, então deixar o erro para o annotation
		if (bpContador == null || bpcontLoc == null || contLoc == null) 
			return null;

		// 
		R0100 reg = new R0100();
		reg.setNOME(bpContador.getName());
		reg.setCPF(bpContador.get_ValueAsString("lbr_CPF"));
		reg.setCRC(bpContador.get_ValueAsString("lbr_CRC"));
		reg.setCNPJ(bpContador.get_ValueAsString("lbr_CNPJ"));
		reg.setCEP(contLoc.getPostal());
		reg.setEND(contLoc.getAddress1());
		reg.setNUM(contLoc.getAddress2());
		reg.setCOMPL(contLoc.getAddress4());
		reg.setBAIRRO(contLoc.getAddress3());
		reg.setFONE(bpcontLoc.getPhone());
		reg.setFAX(bpcontLoc.getFax());
		
		// email
		if (bpContador.getPrimaryAD_User_ID() > 0) 
			reg.setEMAIL(MUser.get(ctx, bpContador.getPrimaryAD_User_ID()).getEMail());

		// código do municipio do IBGE
		reg.setCOD_MUN(BPartnerUtil.getCityCode(contLoc));

		//
		return reg;				
				
	} // createR0100
	
	
	
	/**
	 * REGISTRO 0150: TABELA DE CADASTRO DO PARTICIPANTE
	 * 
	 * @param factFiscal
	 * @return
	 * 
	 * @throws Exception
	 */
	public static R0150 createR0150(MLBRFactFiscal factFiscal) throws Exception
	{
		MLocation contLoc = new MLocation(factFiscal.getCtx(), factFiscal.getC_BPartner_Location().getC_Location_ID(), null);
		
		// verificar necessidade de criar esse registro
		if(!needCreateR0s(factFiscal, R0150.class))
			return null;
		
		R0150 reg = new R0150();
		reg.setCOD_PART(getCOD_PART(factFiscal));
		reg.setNOME(factFiscal.getBPName());
		reg.setCOD_PAIS(String.valueOf(factFiscal.getBPCountryCode()));
		
		// CPF/CNPJ
		if(TextUtil.toNumeric(factFiscal.getlbr_BPCNPJ()).length() == 11)
			reg.setCPF(factFiscal.getlbr_BPCNPJ());
		else
			reg.setCNPJ(factFiscal.getlbr_BPCNPJ());
		
		reg.setIE(factFiscal.getlbr_BPIE());
		reg.setCOD_MUN(String.valueOf(BPartnerUtil.getCityCode(contLoc)));
		reg.setSUFRAMA(factFiscal.getlbr_BPSuframa());
		reg.setEND(factFiscal.getlbr_BPAddress1());
		reg.setNUM(factFiscal.getlbr_BPAddress2());
		reg.setCOMPL(factFiscal.getlbr_BPAddress4());
		reg.setBAIRRO(factFiscal.getlbr_BPAddress3());

		return reg;
		
	} // createR0150

	

	/**
	 * REGISTRO 0190: IDENTIFICAÇÃO DAS UNIDADES DE MEDIDA
	 * 
	 * @param factFiscal
	 * @return
	 * @throws Exception
	 */
	public static R0190 createR0190(MLBRFactFiscal factFiscal) throws Exception
	{
		// verificar necessidade de criar esse registro
		if(!needCreateR0s(factFiscal, R0190.class))
			return null;

		R0190 reg = new R0190();

		reg.setUNID(factFiscal.getlbr_UOMName() == null ? "un" : factFiscal.getlbr_UOMName());
		reg.setDESCR(factFiscal.getLBR_UOMDescription() == null ? "un" : factFiscal.getLBR_UOMDescription());
		
		return reg;
		
	} 

	
	/**
	 * REGISTRO 0190: IDENTIFICAÇÃO DAS UNIDADES DE MEDIDA
	 * 
	 * @param product
	 * @return
	 * @throws Exception
	 */
	public static R0190 createR0190(MProduct product) {

		//
		MUOM uom = new MUOM(product.getCtx(), product.getC_UOM_ID(), product.get_TrxName());

		//
		R0190 reg = new R0190();
		reg.setUNID(uom.get_Translation (MUOM.COLUMNNAME_UOMSymbol, LBRUtils.AD_LANGUAGE));
		reg.setDESCR(uom.get_Translation (MUOM.COLUMNNAME_Name, LBRUtils.AD_LANGUAGE));
		//
		return reg;
	} // createR0190
	

	/**
	 * REGISTRO 0200: TABELA DE IDENTIFICAÇÃO DO ITEM (PRODUTO E SERVIÇOS)
	 * 
	 * @param factFiscal
	 * @return
	 * @throws Exception
	 */
	public static R0200 createR0200(MLBRFactFiscal factFiscal) throws Exception
	{
		// verificar necessidade de criar esse registro
		if(!needCreateR0s(factFiscal, R0200.class))
			return null;
		
		//
		R0200 reg = new R0200();
		reg.setCOD_ITEM(factFiscal.getProductValue());
		reg.setDESCR_ITEM(factFiscal.getProductName());
		reg.setCOD_BARRA(factFiscal.getUPC());
		reg.setCOD_ANT_ITEM(null); // TODO
		reg.setUNID_INV(factFiscal.getlbr_UOMName() == null ? "un" : factFiscal.getlbr_UOMName());
		
		if (factFiscal.islbr_IsService() && factFiscal.getlbr_ItemTypeBR()==null)
			reg.setTIPO_ITEM("09");//marcar como serviço quando for despesa
		else
			reg.setTIPO_ITEM(factFiscal.getlbr_ItemTypeBR());
		//
		reg.setCOD_NCM(factFiscal.getlbr_NCMName());
		reg.setEX_IPI(null); // TODO
		reg.setCOD_GEN(null); // TODO
		reg.setCOD_LST(null); // TODO
		reg.setALIQ_ICMS(null);// TODO
		
		return reg;
				
	} // createR0200

	
	/**
	 * REGISTRO 0200: TABELA DE IDENTIFICAÇÃO DO ITEM (PRODUTO E SERVIÇOS)
	 * 
	 * @param factFiscal
	 * @return
	 * @throws Exception
	 */
	public static R0200 createR0200(MProduct product) throws Exception
	{

		
		//
		R0200 reg = new R0200();
		reg.setCOD_ITEM(product.getValue());
		reg.setDESCR_ITEM(product.getName());
		reg.setCOD_BARRA(product.getUPC());
		reg.setCOD_ANT_ITEM(null); // TODO
		
		// unidade
		MUOM uom = new MUOM(product.getCtx(), product.getC_UOM_ID(), product.get_TrxName());
		reg.setUNID_INV(uom.get_Translation(MUOM.COLUMNNAME_UOMSymbol, LBRUtils.AD_LANGUAGE));
		
		// tipo do item
		reg.setTIPO_ITEM(product.get_ValueAsString("lbr_ItemTypeBR"));
		
		// ncm
		Integer LBR_NCM_ID = (Integer) product.get_Value("LBR_NCM_ID");
		if (LBR_NCM_ID != null && LBR_NCM_ID > 0)
			reg.setCOD_NCM(new MLBRNCM(product.getCtx(), LBR_NCM_ID, product.get_TrxName()).getValue());
		else {
			reg.setCOD_NCM(null);
		}
		
		// 
		reg.setEX_IPI(null); // TODO
		reg.setCOD_GEN(null); // TODO
		reg.setCOD_LST(null); // TODO
		reg.setALIQ_ICMS(null);// TODO
		reg.setCEST(null);
		
		//
		return reg;
	} 

	/**
	 * REGISTRO 0400: TABELA DE NATUREZA DA OPERAÇÃO/PRESTAÇÃO
	 * 
	 * @param factFiscal - FactFiscal a que se refere o registro
	 * @return
	 * @throws Exception
	 */
	public static R0400 createR0400(MLBRFactFiscal factFiscal) throws Exception 
	{
		R0400 reg = new R0400();
		reg.setDESCR_NAT(factFiscal.get_ValueAsString("lbr_cfopnote"));
		return reg;
	}
	
	/**
	 * REGISTRO 0460: TABELA DE OBSERVAÇÕES DO LANÇAMENTO FISCAL
	 * 
	 * @param rc100 Registro C100
	 * @param COD_OBS código sequencial da observação
	 * @return
	 * @throws Exception
	 */
	public static R0460 createR0460(RC100 rc100, int COD_OBS) throws Exception 
	{
		
		//
		String obs = "";
		
		//
		if(rc100.getVL_ICMS_ST().signum() == 1)
			obs += "VALOR DO ICMS ST: " + TextUtil.toNumeric(rc100.getVL_ICMS_ST()) + (rc100.getVL_IPI().signum() == 1 ? " / " : "");

		//
		if(rc100.getVL_IPI().signum() == 1)
			obs += "VALOR DO IPI: " + TextUtil.toNumeric(rc100.getVL_IPI());
		
		// criar obs
		R0460 reg = new R0460();
		reg.setCOD_OBS(String.valueOf(COD_OBS));
		reg.setTXT(obs);
		
		return reg;
	}
	
	
	public static R0500 createR0500(MElementValue ev, Timestamp dateTo) throws Exception 
	{
		//
		R0500 reg = new R0500();
		
		// verificar se a data de alteração é posterior a data final do período
		Timestamp DT_ALT = ev.getUpdated();
		if (DT_ALT.after(dateTo))
			DT_ALT = dateTo;
		reg.setDT_ALT(DT_ALT);
		reg.setCOD_NAT_CC(getCOD_NAT(ev.getAccountType()));
		reg.setIND_CTA(ev.isSummary() ? "S" : "A");

		// somente pontos('.') + 1 
		reg.setNIVEL(ev.getValue().replaceAll("[^.]","").length() + 1);
		reg.setCOD_CTA(ev.getValue());
		reg.setNOME_CTA(ev.getName());
				
		return reg;
		
	} //createR0500
	
	
	/**
	 * REGISTRO 0990: ENCERRAMENTO DO BLOCO 0
	 * 
	 * @return
	 * @throws Exception
	 */
	public static R0990 createR0990() throws Exception 
	{
		R0990 reg = new R0990();
		reg.setQTD_LIN_0(String.valueOf(CounterSped.getBlockCounter(reg.getReg())));
	
		return reg;
	}
	
	/**
	 * REGISTRO B001: ABERTURA DO BLOCO B
	 * 
	 * @param hasInfo
	 * @return
	 * @throws Exception
	 */
	public static RB001 createRB001(boolean hasInfo) throws Exception
	{
		RB001 reg = new RB001();
		reg.setIND_DAD(hasInfo ? "0" : "1");
		
		return reg;
	}
	
	/**
	 * REGISTRO B990: ENCERRAMENTO DO BLOCO B
	 * 
	 * @return
	 * @throws Exception
	 */
	public static RB990 createRB990() throws Exception 
	{
		RB990 reg = new RB990();
		reg.setQTD_LIN_B(String.valueOf(CounterSped.getBlockCounter(reg.getReg())));
	
		return reg;
	}
	
	
	/**
	 * REGISTRO C001: ABERTURA DO BLOCO C
	 * 
	 * @param hasInfo
	 * @return
	 * @throws Exception
	 */
	public static RC001 createRC001(boolean hasInfo) throws Exception
	{
		RC001 reg = new RC001();
		reg.setIND_MOV(hasInfo ? "0" : "1");
		
		return reg;
	}
	

	/**
	 * REGISTRO C100: NOTA FISCAL (CÓDIGO 01), NOTA FISCAL AVULSA (CÓDIGO1B), NOTA FISCAL DE PRODUTOR (CÓDIGO 04) E NF-e (CÓDIGO 55).
	 * 
	 * @param factFiscal
	 * @return
	 * @throws Exception
	 */
	public static RC100 createRC100(MLBRFactFiscal factFiscal) throws Exception
	{
		//
		RC100 reg = new RC100();
		if (factFiscal.getDocumentNo() !=null && !factFiscal.getDocumentNo().equals("") )
		{
			reg.setIND_OPER(factFiscal.isSOTrx() ? "1" : "0"); // Entrada = 0 | Saida = 1
			reg.setIND_EMIT(factFiscal.islbr_IsOwnDocument() ? "0" : "1");
			reg.setCOD_MOD(getCOD_MOD(factFiscal));
			reg.setCOD_SIT(getCOD_SIT(factFiscal));
			reg.setSER(getSER(factFiscal));
			reg.setNUM_DOC(factFiscal.getDocumentNo());
			reg.setCHV_NFE(factFiscal.getlbr_NFeID());
	
			reg.setCOD_PART(getCOD_PART(factFiscal));
			reg.setDT_DOC(factFiscal.getDateDoc());
			reg.setDT_E_S(factFiscal.getlbr_DateInOut());
			reg.setVL_DOC(factFiscal.getGrandTotal());
			reg.setIND_PGTO(getIND_PGTO(factFiscal));
			reg.setVL_DESC(factFiscal.getDiscountAmt());
			
			// Abatimento da ZF - TODO
			reg.setVL_ABAT_NT(factFiscal.getDiscountAmt());
			
			// vlr mercadorias, frete e seguro
			reg.setVL_MERC(factFiscal.getTotalLines());
			reg.setIND_FRT(getIND_FRT(factFiscal));
			reg.setVL_FRT(factFiscal.getFreightAmt());
			reg.setVL_SEG(factFiscal.getlbr_InsuranceAmt());
			
			// outras despesas acessórias - TODO
			reg.setVL_OUT_DA(Env.ZERO);
			
			// impostos - somatório das linha
			reg.setVL_BC_ICMS(factFiscal.getICMS_NFTaxBaseAmt());
			reg.setVL_ICMS(factFiscal.getICMS_NFTaxAmt());
			reg.setVL_BC_ICMS_ST(factFiscal.getICMSST_NFTaxBaseAmt());
			reg.setVL_ICMS_ST(factFiscal.getICMSST_NFTaxAmt());
			reg.setVL_IPI(factFiscal.getIPI_NFTaxAmt());
			reg.setVL_PIS(factFiscal.getPIS_NFTaxAmt());
			reg.setVL_COFINS(factFiscal.getCOFINS_NFTaxAmt());
			reg.setVL_PIS_ST(Env.ZERO);
			reg.setVL_COFINS_ST(Env.ZERO);
			
			/*
			 * Preencher a variável IND_ATIV para 
			 * posterior verificação e definição se deve-se
			 * ou não apurar alguns impostos bem como 
			 * IPI e ST
			 * 
			 * UF - Usado na apuração da ST
			 */
			if (factFiscal.getlbr_IndAtividade() == null || factFiscal.getlbr_IndAtividade().isEmpty())
				throw new AdempiereException("Preencher campo Tipo de Atividade da Organização");
			
			reg.setIND_ATIV(factFiscal.getlbr_IndAtividade().equals("0") ? "0" : "1");
			reg.setUF(factFiscal.getlbr_BPRegion());
			
			//
		}
			return reg;
		
	} //createRC100
	
	
	/**
	 * REGISTRO C120: OPERAÇÕES DE IMPORTAÇÃO (CÓDIGO 01)
	 * 
	 * @param factFiscal
	 * @return
	 * @throws Exception
	 */
	public static RC120 createRC120(MLBRFactFiscal factFiscal) throws Exception
	{
		
		//
		RC120 reg = new RC120();
		reg.setCOD_DOC_IMP(COD_DOC_IMP);
		reg.setNUM_DOC_IMP(factFiscal.getLBR_NFDI().getlbr_DI());

		// valore preenchidos ao adicionar itens no RC100
		reg.setPIS_IMP(factFiscal.getPIS_NFTaxAmt());
		reg.setCOFINS_IMP(factFiscal.getCOFINS_NFTaxAmt());
		
		// TODO - verificar valor a preencher
		reg.setNUM_ACDRAW("");
		
		//
		return reg;
	}
	
	/**
	 * REGISTRO C140: FATURA (CÓDIGO 01)
	 * 
	 * @param factFiscal
	 * @return
	 * @throws Exception
	 */
	public static RC140 createRC140(MLBRFactFiscal factFiscal) throws Exception
	{
		if (factFiscal.getC_Invoice_ID() > 0 && MLBROpenItem.getOpenItem(factFiscal.getC_Invoice_ID(), null).length > 0)
		{
			//
			RC140 reg = new RC140();
			reg.setIND_EMIT("0");
			reg.setIND_TIT("00");
			reg.setNUM_TIT(factFiscal.getC_Invoice().getDocumentNo());
			reg.setQTD_PARC(new BigDecimal(MLBROpenItem.getOpenItem(factFiscal.getC_Invoice_ID(), null).length));
			reg.setVL_TIT(factFiscal.getC_Invoice().getGrandTotal());
			
			int i = 1;
			
			for (MLBROpenItem oi : MLBROpenItem.getOpenItem(factFiscal.getC_Invoice_ID(), null))
			{
				RC141 reg141 = new RC141();
				reg141.setDL_VCTO(oi.getDateInvoiced());
				reg141.setNUM_PARC(String.valueOf(i));
				reg141.setVL_PARC(oi.getGrandTotal());
				
				reg.addrC141(reg141);
			}
			
			return reg;
		}
		return null;
	}
	
	
	/**
	 * REGISTRO C170: ITENS DO DOCUMENTO (CÓDIGO 01, 1B, 04 e 55).
	 * 
	 * @param factFiscal
	 * @return
	 * @throws Exception
	 */
	public static RC170 createRC170(MLBRFactFiscal factFiscal, int NUM_ITEM) throws Exception
	{

		RC170 reg = new RC170();
		reg.setNUM_ITEM(NUM_ITEM);
		reg.setCOD_ITEM(factFiscal.getProductValue());
		
		// TODO - descrição da linha da NF
		reg.setDESCR_COMPL("");
		
		reg.setQTD(factFiscal.getQty());
		reg.setUNID(factFiscal.getlbr_UOMName());
		reg.setVL_ITEM(factFiscal.getLineNetAmt());
		
		// TODO - verificar possibilidades de desconto
		reg.setVL_DESC(Env.ZERO);
		
		// TODO - se for serviço não movimenta, senão movimenta
		reg.setIND_MOV(factFiscal.islbr_IsService() ? "0" : "1");
		
		//
		reg.setCFOP(factFiscal.getlbr_CFOPName());
		reg.setCOD_NAT(""); // TODO ???
		
		// icms
		reg.setCST_ICMS(factFiscal.getICMS_TaxStatus());
		reg.setVL_BC_ICMS(factFiscal.getICMS_TaxBaseAmt());
		reg.setALIQ_ICMS(factFiscal.getICMS_TaxRate());
		reg.setVL_ICMS(factFiscal.getICMS_TaxAmt());
		
		
		// st
		//ICMS ST:
		//	a) se os dois últimos caracteres deste campo forem 10, 30 ou 70, os valores dos campos VL_BC_ST, ALIQ_ST e
		//	VL_ICMS_ST deverão ser maiores ou iguais a “0” (zero).
		//	b) se os dois últimos caracteres deste campo forem diferentes de 10, 30 ou 70, os valores dos campos VL_BC_ST,
		//	ALIQ_ST e VL_ICMS_ST deverão ser iguais a “0” (zero).
		if (factFiscal.isSOTrx() && ("10".equals(factFiscal.getICMSST_TaxStatus()) ||
			"30".equals(factFiscal.getICMSST_TaxStatus()) ||
			"70".equals(factFiscal.getICMSST_TaxStatus())))
		{
				reg.setVL_BC_ICMS_ST(factFiscal.getICMSST_TaxBaseAmt());
				reg.setALIQ_ST(factFiscal.getICMSST_TaxRate());
				reg.setVL_ICMS_ST(factFiscal.getICMSST_TaxAmt());
		}
		else
		{
			reg.setVL_BC_ICMS_ST(BigDecimal.ZERO);
			reg.setALIQ_ST(BigDecimal.ZERO);
			reg.setVL_ICMS_ST(BigDecimal.ZERO);
		}					
		
		// ipi
		reg.setIND_APUR(IND_APUR);
		reg.setCST_IPI(factFiscal.getIPI_TaxStatus());
		
		// TODO - ??
		reg.setCOD_ENQ("");
		reg.setVL_BC_IPI(factFiscal.getIPI_TaxBaseAmt());
		reg.setALIQ_IPI(factFiscal.getIPI_TaxRate());
		reg.setVL_IPI(factFiscal.getIPI_TaxAmt());
		
		// pis
		reg.setCST_PIS(factFiscal.getPIS_TaxStatus());
		reg.setVL_BC_PIS(factFiscal.getPIS_TaxBaseAmt());
		reg.setALIQ_PIS(factFiscal.getPIS_TaxRate());
		
		// TODO: BC e Aliq por Qtde
		reg.setQUANT_BC_PIS(null);
		reg.setALIQ_PIS_REAIS(null);
		
		//
		reg.setVL_PIS(factFiscal.getPIS_TaxAmt());
		
		// cofins
		reg.setCST_COFINS(factFiscal.getCOFINS_TaxStatus());
		reg.setVL_BC_COFINS(factFiscal.getCOFINS_TaxBaseAmt());
		reg.setALIQ_COFINS(factFiscal.getCOFINS_TaxRate());
		
		// TODO: BC e Aliq por Qtde
		reg.setQUANT_BC_COFINS(null);
		reg.setALIQ_COFINS_REAIS(null);
		
		//
		reg.setVL_COFINS(factFiscal.getCOFINS_TaxAmt());

		// TODO: Código da conta contábil
		reg.setCOD_CTA("");
		
		//	Desconto da Linha da Nota Fiscal
		//	TODO: Adicionar campo na Tabela LBR_FactFiscal
		if (factFiscal.getLBR_NotaFiscalLine() != null)
			reg.setVL_ABAT_NT(factFiscal.getLBR_NotaFiscalLine().getDiscountAmt());	
		else
			reg.setVL_ABAT_NT(BigDecimal.ZERO);	
		
		/*
		 * Definir valor da operação no registro C170 para
		 * depois utilizar na geração do C190
		 */
		reg.setVL_OPER(factFiscal.getLineTotalAmt());
	
		//
		return reg;
	}
	
	/**
	 * REGISTRO C195: OBSERVAÇOES DO LANÇAMENTO FISCAL (CÓDIGO 01, 1B E 55)
	 * 
	 * @param r0460
	 * @return
	 * @throws Exception
	 */
	public static RC195 createRC195(R0460 r0460) throws Exception
	{
		// se não tiver OBS nos registros zero, então não criar nos registros C195
		if(r0460 == null)
			return null;
		
		RC195 reg = new RC195();
		reg.setCOD_OBS(r0460.getCOD_OBS());
		reg.setTXT("");
		
		return reg;
	}
	
	/**
	 * REGISTRO C990: ENCERRAMENTO DO BLOCO C
	 * 
	 * @return
	 * @throws Exception
	 */
	public static RC990 createRC990() throws Exception 
	{
		RC990 reg = new RC990();
		reg.setQTD_LIN_C(String.valueOf(CounterSped.getBlockCounter(reg.getReg())));
	
		return reg;
	}
	
	
	/**
	 * REGISTRO D001: ABERTURA DO BLOCO D
	 * 
	 * @param hasInfo
	 * @return
	 * @throws Exception
	 */
	public static RD001 createRD001(boolean hasInfo) throws Exception
	{
		RD001 reg = new RD001();
		reg.setIND_MOV(hasInfo ? "0" : "1");
		
		return reg;
	}
	
	
	
	/**
	 * REGISTRO D100: NOTA FISCAL DE SERVIÇO DE TRANSPORTE (CÓDIGO 07) E 
	 * CONHECIMENTOS DE TRANSPORTE RODOVIÁRIO DE CARGAS (CÓDIGO 08), 
	 * CONHECIMENTOS DE TRANSPORTE DE CARGAS AVULSO (CÓDIGO 8B), 
	 * AQUAVIÁRIO DE CARGAS (CÓDIGO 09), AÉREO (CÓDIGO 10), FERROVIÁRIO DE CARGAS (CÓDIGO 11) 
	 * E MULTIMODAL DE CARGAS (CÓDIGO 26), NOTA FISCAL DE TRANSPORTE 
	 * FERROVIÁRIO DE CARGA ( CÓDIGO 27) E CONHECIMENTO DE TRANSPORTE 
	 * ELETRÔNICO – CT-e (CÓDIGO 57).
	 * 
	 * @param rD100
	 * @return
	 * @throws Exception
	 */
	public static RD100 createRD100(MLBRFactFiscal factFiscal) throws Exception
	{
		
		//
		RD100 reg = new RD100();
		reg.setIND_OPER(factFiscal.isSOTrx() ? "1" : "0");
		reg.setIND_EMIT(factFiscal.islbr_IsOwnDocument() ? "0" : "1");
		reg.setCOD_PART(getCOD_PART(factFiscal));
		reg.setCOD_MOD(getCOD_MOD(factFiscal));
		reg.setCOD_SIT(getCOD_SIT(factFiscal));
		reg.setSER(getSER(factFiscal));
		
		// TODO ??
		reg.setSUB(""); 
		
		reg.setNUM_DOC(factFiscal.getDocumentNo());
		reg.setCHV_CTE(factFiscal.getlbr_NFeID());
		reg.setDT_DOC(factFiscal.getDateDoc());
		reg.setDT_A_P(factFiscal.getlbr_DateInOut());
		
		// TODO - ??
		reg.setTP_CT_e("");
		
		// TODO ??
		reg.setCHV_CTE_REF("");
		
		//
		reg.setVL_DOC(factFiscal.getGrandTotal());
		reg.setVL_DESC(factFiscal.getDiscountAmt());
		reg.setIND_FRT(getIND_FRT(factFiscal));
		
		// Total dos Itens + Total dos Serviços - ??
		reg.setVL_SERV(factFiscal.getTotalLines());
		
		//
		reg.setVL_BC_ICMS(factFiscal.getICMS_NFTaxBaseAmt());
		reg.setVL_ICMS(factFiscal.getICMS_NFTaxAmt());
		reg.setVL_NT(reg.getVL_SERV().subtract(reg.getVL_BC_ICMS()));
		
		// 
		reg.setCOD_INF(null);
		reg.setCOD_CTA(null);
		reg.setCOD_MUN_ORIG(null);
		reg.setCOD_MUN_DEST(null);
		
		//
		return reg;
	}
	
	
	/**
	 * REGISTRO D110: ITENS DO DOCUMENTO - NOTA FISCAL DE 
	 * SERVIÇOS DE TRANSPORTE (CÓDIGO 07)
	 * 
	 * @param factFiscal
	 * @return
	 * @throws Exception
	 */
	public static RD110 createRD110(MLBRFactFiscal factFiscal, int NUM_ITEM) throws Exception
	{
		//
		RD110 reg = new RD110();
		reg.setNUM_ITEM(NUM_ITEM);
		reg.setCOD_ITEM(factFiscal.getProductValue());
		
		// Valor bruto
		reg.setVL_SERV(factFiscal.getLineNetAmt());
		
		// TODO - ??
		reg.setVL_OUT(null);
		
		//
		return reg;
	}
	
	public static RD190 createRD190(MLBRFactFiscal factFiscal, int NUM_ITEM) throws Exception
	{
		//
		RD190 reg = new RD190();
		
		/*
		 * Valores auxiliares somente utilizados para apurar
		 * o registro D190
		 */
		reg.setCST_ICMS(factFiscal.getICMS_TaxStatus());
		reg.setCFOP(factFiscal.getlbr_CFOPName());
		reg.setALIQ_ICMS(factFiscal.getICMS_TaxRate());
		reg.setVL_BC_ICMS(factFiscal.getICMS_TaxBaseAmt());
		reg.setVL_RED_BC(factFiscal.getICMS_TaxBase());
		reg.setVL_ICMS(factFiscal.getICMS_TaxAmt());
		reg.setVL_OPR(factFiscal.getLineTotalAmt());
		
		//
		return reg;
	}
	
	/**
	 * REGISTRO C500: NOTA FISCAL DE ENERGIA
	 * 
	 * @param rC500
	 * @return
	 * @throws Exception
	 */
	public static RC500 createRC500(MLBRFactFiscal factFiscal) throws Exception
	{
		
		//
		RC500 reg = new RC500();
		reg.setIND_OPER(factFiscal.isSOTrx() ? "1" : "0");
		reg.setIND_EMIT(factFiscal.islbr_IsOwnDocument() ? "0" : "1");
		reg.setCOD_PART(getCOD_PART(factFiscal));
		reg.setCOD_MOD(getCOD_MOD(factFiscal));
		reg.setCOD_SIT(getCOD_SIT(factFiscal));
		reg.setSER(getSER(factFiscal));
		
		// TODO ??
		reg.setSUB(""); 
		reg.setCOD_CONS("01");
		
		reg.setNUM_DOC(factFiscal.getDocumentNo());
		reg.setDT_DOC(factFiscal.getDateDoc());
		reg.setDT_E_S(factFiscal.getlbr_DateInOut());
		
		//
		reg.setVL_DOC(factFiscal.getGrandTotal());
		reg.setVL_DESC(factFiscal.getDiscountAmt());
		reg.setVL_FORN(factFiscal.getGrandTotal());

		
		// Total dos Itens + Total dos Serviços que não são tributados pelo ICMS
		if (reg.getVL_DOC() != null && reg.getVL_BC_ICMS() != null)
			reg.setVL_SERV_NT(reg.getVL_DOC().subtract(reg.getVL_BC_ICMS()));
		else
			reg.setVL_SERV_NT(Env.ZERO);
		
		// Valores cobrados em nome de terceiros
		reg.setVL_TERC(Env.ZERO);
		
		// Valores Outras Despesas
		reg.setVL_DA(Env.ZERO);
		
		//
		reg.setVL_BC_ICMS(factFiscal.getICMS_NFTaxBaseAmt());
		reg.setVL_ICMS(factFiscal.getICMS_NFTaxAmt());
		
		//
		reg.setVL_BC_ICMS_ST(factFiscal.getICMSST_NFTaxBaseAmt());
		reg.setVL_ICMS_ST(factFiscal.getICMSST_NFTaxAmt());
		
		//
		reg.setCOD_INF(null);
		
		//
		reg.setVL_PIS(factFiscal.getPIS_TaxAmt());
		reg.setVL_COFINS(factFiscal.getCOFINS_TaxAmt());
		reg.setTP_LIGACAO("01");
		reg.setCOD_GRUPO_TENSAO("01");

		
		//
		return reg;
	}
	
	public static RC590 createRC590(MLBRFactFiscal factFiscal, int NUM_ITEM) throws Exception
	{
		//
		RC590 reg = new RC590();
		
		/*
		 * Valores auxiliares somente utilizados para apurar
		 * o registro D190
		 */
		reg.setCST_ICMS(factFiscal.getICMS_TaxStatus());
		reg.setCFOP(factFiscal.getlbr_CFOPName());
		reg.setALIQ_ICMS(factFiscal.getICMS_TaxRate());
		reg.setVL_OPR(factFiscal.getLineTotalAmt());
		reg.setVL_BC_ICMS(factFiscal.getICMS_TaxBaseAmt());
		reg.setVL_ICMS(factFiscal.getICMS_TaxAmt());
		reg.setVL_BC_ICMS_ST(factFiscal.getICMSST_TaxBaseAmt());
		reg.setVL_ICMS_ST(factFiscal.getICMSST_TaxAmt());
		reg.setVL_RED_BC(factFiscal.getICMS_TaxBase());
		reg.setCOD_OBS("");

		//
		return reg;
	}
	
	/**
	 * REGISTRO D500: NOTA FISCAL DE TELEFONIA
	 * 
	 * @param rD500
	 * @return
	 * @throws Exception
	 */
	public static RD500 createRD500(MLBRFactFiscal factFiscal) throws Exception
	{
		
		//
		RD500 reg = new RD500();
		reg.setIND_OPER(factFiscal.isSOTrx() ? "1" : "0");
		reg.setIND_EMIT(factFiscal.islbr_IsOwnDocument() ? "0" : "1");
		reg.setCOD_PART(getCOD_PART(factFiscal));
		reg.setCOD_MOD(getCOD_MOD(factFiscal));
		reg.setCOD_SIT(getCOD_SIT(factFiscal));
		reg.setSER(getSER(factFiscal));
		
		// TODO ??
		reg.setSUB(""); 
		
		reg.setNUM_DOC(factFiscal.getDocumentNo());
		reg.setDT_DOC(factFiscal.getDateDoc());
		reg.setDT_A_P(factFiscal.getlbr_DateInOut());

		
		//
		reg.setVL_DOC(factFiscal.getGrandTotal());
		reg.setVL_DESC(factFiscal.getDiscountAmt());

		
		// Total dos Itens + Total dos Serviços - ??
		reg.setVL_SERV(factFiscal.getTotalLines());
		
		// Total dos Itens + Total dos Serviços que não são tributados pelo ICMS
		if (reg.getVL_SERV() != null && reg.getVL_BC_ICMS() != null)
			reg.setVL_SERV_NT(reg.getVL_SERV().subtract(reg.getVL_BC_ICMS()));
		else
			reg.setVL_SERV_NT(Env.ZERO);
		
		// Valores cobrados em nome de terceiros
		reg.setVL_TERC(Env.ZERO);
		
		// Valores Outras Despesas
		reg.setVL_DA(Env.ZERO);
		
		//
		reg.setVL_BC_ICMS(factFiscal.getICMS_NFTaxBaseAmt());
		reg.setVL_ICMS(factFiscal.getICMS_NFTaxAmt());
		
		//
		reg.setCOD_INF(null);
		
		//
		reg.setVL_PIS(factFiscal.getPIS_TaxAmt());
		reg.setVL_COFINS(factFiscal.getCOFINS_TaxAmt());
		
		// 
		reg.setCOD_CTA(null);
		
		// 
		reg.setTP_ASSINANTE("1");
		//
		return reg;
	}
	
	public static RD590 createRD590(MLBRFactFiscal factFiscal, int NUM_ITEM) throws Exception
	{
		//
		RD590 reg = new RD590();
		
		/*
		 * Valores auxiliares somente utilizados para apurar
		 * o registro D190
		 */
		reg.setCST_ICMS(factFiscal.getICMS_TaxStatus());
		reg.setCFOP(factFiscal.getlbr_CFOPName());
		reg.setALIQ_ICMS(factFiscal.getICMS_TaxRate());
		reg.setVL_OPR(factFiscal.getLineTotalAmt());
		reg.setVL_BC_ICMS(factFiscal.getICMS_TaxBaseAmt());
		reg.setVL_ICMS(factFiscal.getICMS_TaxAmt());
		reg.setVL_BC_ICMS_UF(factFiscal.getICMS_TaxBaseAmt());
		reg.setVL_ICMS_UF(factFiscal.getICMS_TaxAmt());
		reg.setVL_RED_BC(factFiscal.getICMS_TaxBase());
		reg.setCOD_OBS("");

		//
		return reg;
	}
	
	/**
	 * REGISTRO D990: ENCERRAMENTO DO BLOCO D
	 * 
	 * @return
	 * @throws Exception
	 */
	public static RD990 createRD990() throws Exception 
	{
		RD990 reg = new RD990();
		reg.setQTD_LIN_D(String.valueOf(CounterSped.getBlockCounter(reg.getReg())));
	
		return reg;
	}
	
	/**
	 * REGISTRO H001: ABERTURA DO BLOCO H
	 * 
	 * @param hasInfo
	 * @return
	 * @throws Exception
	 */
	public static RH001 createRH001(boolean hasInfo) throws Exception
	{
		RH001 reg = new RH001();
		reg.setIND_MOV(hasInfo ? "0" : "1");
		
		return reg;
	}
	
	
	/**
	 * REGISTRO H001: ABERTURA DO BLOCO H
	 * 
	 * @param hasInfo
	 * @return
	 * @throws Exception
	 */
	public static RK001 createRK001(boolean hasInfo) throws Exception
	{
		RK001 reg = new RK001();
		reg.setIND_MOV(hasInfo ? "0" : "1");
		
		return reg;
	}
	
	
	/**
	 * REGISTRO H005: TOTAIS DO INVENTÁRIO
	 * 
	 * @param dtInv
	 * @return
	 * @throws Exception
	 */
	public static RH005 createRH005(Timestamp dtInv) throws Exception 
	{
		RH005 reg = new RH005();
		reg.setDT_INV(dtInv);
		
		// fazer soma do total ao adicionar as linhas do inventário
		reg.setVL_INV(Env.ZERO);
		
		// TODO: Motivo do Inventário - 01 – No final no período;
		reg.setMOT_INV("01");
		
		return reg;
	
	}
	
	
	/**
	 * REGISTRO H010: INVENTÁRIO.
	 * 
	 * @return
	 * @throws Exception
	 */
	public static RH010 createRH010(String COD_ITEM, String UNID, BigDecimal QTD, 
			BigDecimal VL_UNIT, BigDecimal VL_ITEM, String IND_PROP, String COD_CTA) throws Exception 
	{
		
		RH010 reg = new RH010();
		reg.setCOD_ITEM(COD_ITEM);
		reg.setUNID(UNID);
		reg.setQTD(QTD);
		reg.setVL_UNIT(VL_UNIT);
		reg.setVL_ITEM(VL_ITEM);
		reg.setIND_PROP(IND_PROP);
		reg.setCOD_CTA(COD_CTA);
		reg.setCOD_PART(null);
		reg.setTXT_COMPL(null);
		reg.setVL_ITEM_IR(null);
		
		return reg;
	}
	
	/**
	 * REGISTRO K100: PERÍODO de APURAÇÃO DO ICMS/IPI.
	 * 
	 * @return
	 * @throws Exception
	 */
	public static RK100 createRK100(Timestamp DT_INI, Timestamp DT_FIN) throws Exception 
	{
		
		RK100 reg = new RK100();
		reg.setDT_INI(DT_INI);
		reg.setDT_FIN(DT_FIN);
		
		return reg;
	}
	
	/**
	 * REGISTRO K200: ESTOQUE ESCRITURADO.
	 * 
	 * @return
	 * @throws Exception
	 */
	public static RK200 createRK200(String COD_ITEM, String COD_PART, Timestamp DT_EST, String IND_EST, BigDecimal QTD) throws Exception 
	{
		
		RK200 reg = new RK200();
		reg.setCOD_ITEM(COD_ITEM);
		reg.setCOD_PART(COD_PART);
		reg.setDT_EST(DT_EST);
		reg.setIND_EST(IND_EST);
		reg.setQTD(QTD);
		
		return reg;
	}
	
	/**
	 * REGISTRO K280: CORREÇÃO DE APONTAMENTO - ESTOQUE ESCRITURADO.
	 * 
	 * @return
	 * @throws Exception
	 */
	public static RK280 createRK280(String COD_ITEM, String COD_PART, Timestamp DT_EST, String IND_EST, BigDecimal QTD) throws Exception 
	{
		
		RK280 reg = new RK280();
		reg.setCOD_ITEM(COD_ITEM);
		reg.setCOD_PART(COD_PART);
		reg.setDT_EST(DT_EST);
		reg.setIND_EST(IND_EST);
		if (QTD.compareTo(BigDecimal.ZERO) > 0)
			reg.setQTD_COR_POS(QTD.abs());
		else
			reg.setQTD_COR_NEG(QTD.abs());
		
		return reg;
	}
	
	

	/**
	 * REGISTRO H990: ENCERRAMENTO DO BLOCO H
	 * 
	 * @return
	 * @throws Exception
	 */
	public static RK990 createRK990() throws Exception 
	{
		RK990 reg = new RK990();
		reg.setQTD_LIN_K(String.valueOf(CounterSped.getBlockCounter(reg.getReg())));
	
		return reg;
	}
	
	
	/**
	 * REGISTRO H990: ENCERRAMENTO DO BLOCO H
	 * 
	 * @return
	 * @throws Exception
	 */
	public static RH990 createRH990() throws Exception 
	{
		RH990 reg = new RH990();
		reg.setQTD_LIN_H(String.valueOf(CounterSped.getBlockCounter(reg.getReg())));
	
		return reg;
	}
	
	
	/**
	 * REGISTRO E001: ABERTURA DO BLOCO E
	 * 
	 * @param hasInfo
	 * @return
	 * @throws Exception
	 */
	public static RE001 createRE001(boolean hasInfo) throws Exception
	{
		RE001 reg = new RE001();
		reg.setIND_MOV(hasInfo ? "0" : "1");
		
		return reg;
	}
	

	/**
	 * REGISTRO E100: PERÍODO DA APURAÇÃO DO ICMS.
	 * 
	 * TODO: Origem dos Dados?
	 * 
	 * @param dtIni
	 * @param dtFin
	 * @return
	 * @throws Exception
	 */
	public static RE100 createRE100(Timestamp dtIni, Timestamp dtFin) throws Exception
	{
		RE100 reg = new RE100();
		reg.setDT_INI(dtIni);
		reg.setDT_FIN(dtFin);
		
		return reg;
	}
	
	/**
	 * REGISTRO E110: APURAÇÃO DO ICMS – OPERAÇÕES PRÓPRIAS.
	 * 
	 * TODO: Origem dos Dados?
	 * 
	 * 
	 * @return
	 * @throws Exception
	 */
	public static RE110 createRE110(MLBRTaxAssessment m_taxassessment) throws Exception
	{

		
		
		RE110 reg = new RE110();
		// total de debito
		// reg.setVL_TOT_DEBITOS(AmtDr.abs());
		reg.setVL_TOT_DEBITOS(m_taxassessment.getTotalDr());
		
		// total ajuste débito
		reg.setVL_AJ_DEBITOS(Env.ZERO);
		
		// total ajuste débitos
		reg.setVL_TOT_AJ_DEBITOS(m_taxassessment.getAmtByType(X_LBR_TaxAssessmentLine.TYPE_OutrosDébitos).abs());
		
		// total de estorno de créditos
		reg.setVL_ESTORNOS_CRED(m_taxassessment.getAmtByType(X_LBR_TaxAssessmentLine.TYPE_EstornosDeCréditos).abs());
		
		// total de créditos
		reg.setVL_TOT_CREDITOS(m_taxassessment.getTotalCr());
		
		// total de ajustes de créditos
		reg.setVL_AJ_CREDITOS(Env.ZERO);
		
		// total ajuste créditos
		reg.setVL_TOT_AJ_CREDITOS(m_taxassessment.getAmtByType(X_LBR_TaxAssessmentLine.TYPE_OutrosCréditos).abs());
		
		// total estorno débitos
		reg.setVL_ESTORNOS_DEB(m_taxassessment.getAmtByType(X_LBR_TaxAssessmentLine.TYPE_EstornoDeDébitos).abs());
		
		// Saldo anterior
		reg.setVL_SLD_CREDOR_ANT(MLBRTaxAssessment.getCumulatedAmt(m_taxassessment.getCtx(), 
				m_taxassessment.getC_Period_ID(),
				m_taxassessment.getAD_Org_ID(), 
				m_taxassessment.getLBR_TaxName_ID()).abs());
		
		/*
		 * Campo 11 - Validação: O valor informado deve ser preenchido com base na expressão: 
		 * 	soma do total de débitos (VL_TOT_DEBITOS) com total de ajustes (VL_AJ_DEBITOS + VL_TOT_AJ_DEBITOS) 
		 * 	com total de estorno de crédito (VL_ESTORNOS_CRED) menos a soma do total de créditos (VL_TOT_CREDITOS) 
		 * 	com total de ajuste de créditos (VL_,AJ_CREDITOS + VL_TOT_AJ_CREDITOS) com total de estorno de débito 
		 * 	(VL_ESTORNOS_DEB) com saldo credor do período anterior (VL_SLD_CREDOR_ANT). Se o valor da expressão 
		 * 	for maior ou igual a “0” (zero), então este valor deve ser informado neste campo e o 
		 * 	campo 14 (VL_SLD_CREDOR_TRANSPORTAR) deve ser igual a “0” (zero). Se o valor da expressão
		 * 	for menor que “0” (zero), então este campo deve ser preenchido com “0” (zero) e o valor absoluto 
		 * 	da expressão deve ser informado no campo VL_SLD_CREDOR_TRANSPORTAR.
		 * 
		 * 
		 *  ((VL_TOT_DEBITOS + VL_TOT_AJ_DEBITOS + VL_ESTORNOS_CRED) - 
		 *  	(VL_AJ_CREDITOS + VL_TOT_AJ_CREDITOS + VL_ESTORNOS_DEB)) + 
		 *  	(VL_SLD_CREDOR_ANT)
		 *  
		 */
		BigDecimal saldo = ((reg.getVL_TOT_DEBITOS().add(reg.getVL_TOT_AJ_DEBITOS()).add(reg.getVL_ESTORNOS_CRED()))
				.subtract(reg.getVL_TOT_CREDITOS().add(reg.getVL_TOT_AJ_CREDITOS()).add(reg.getVL_ESTORNOS_DEB())
				.add(reg.getVL_SLD_CREDOR_ANT()))).setScale(2, RoundingMode.HALF_UP);
		
		// 
		if(saldo.signum() == 1)
		{
			reg.setVL_SLD_APURADO(saldo.abs());
			reg.setVL_SLD_CREDOR_TRANSPORTAR(Env.ZERO);
		}	
		else
		{
			reg.setVL_SLD_APURADO(Env.ZERO);
			reg.setVL_SLD_CREDOR_TRANSPORTAR(saldo.abs());			
		}
		

		// TODO
		reg.setVL_TOT_DED(Env.ZERO);

		//  VL_SLD_APURADO - VL_TOT_DED
		reg.setVL_ICMS_RECOLHER(reg.getVL_SLD_APURADO().abs());
		
		// TODO
		reg.setDEB_ESP(Env.ZERO);
		
		//
		return reg;
		
	}
	
	
	/**
	 * REGISTRO E111: AJUSTE/BENEFÍCIO/INCENTIVO DA APURAÇÃO DO ICMS.
	 * 
	 * TODO: Origem dos Dados?
	 * 
	 * COD_AJ_APUR
	 * 
	 * 1. Os dois primeiros caracteres (UF) referem-se à unidade da federação do estabelecimento;
	 * 
	 * 2. O caracter seguinte refere-se à apuração própria ou da substituição tributária, onde:
	 * 	0 – ICMS e
	 * 	1 – ICMS ST.
	 * 
	 * 3. O quarto caracter refere-se à UTILIZAÇÃO e identificará o campo a ser ajustado:
	 * 	0 – Outros débitos;
	 * 	1 – Estorno de créditos;
	 * 	2 – Outros créditos;
	 * 	3 – Estorno de débitos;
	 * 	4 – Deduções do imposto apurado.
	 * 
	 * 4.Os quatro caracteres seguintes, SEQÜÊNCIA, iniciando-se por 0001 deverá ser referente a identificação do tipo de ajuste deixando sempre um código genérico para a possibilidade de outras ocorrências não previstas.
	 * 
	 * 	0 – Outros Débitos 			0001 						
	 * 	1 – Estorno de crédito   	0001
	 * 	2 – Outros créditos			0001 (motivo a)
	 * 	2 – Outros créditos			0001 (motivo a)
	 * 	2 – Outros créditos			0002 (motivo b)apuração da Substituição Tributária
	 * 	3 – Estorno de débito 		0001 (motivo c)
	 * 	4 – Deduções				0001
	 * 
	 * @return
	 * @throws Exception
	 */
	public static RE111 createRE111(String UF, boolean isICSM, X_LBR_TaxAssessmentLine line) throws Exception
	{
		
		RE111 reg = new RE111();
		
		// UF + ICMS/ICMSST 
		String COD_AJ_APUR = UF.concat(isICSM ? "0" : "1");
		
		// Type
		if ( line.getType().equals(X_LBR_TaxAssessmentLine.TYPE_OutrosDébitos))
			COD_AJ_APUR += "0";
		else if ( line.getType().equals(X_LBR_TaxAssessmentLine.TYPE_EstornosDeCréditos))
			COD_AJ_APUR += "1";
		else if ( line.getType().equals(X_LBR_TaxAssessmentLine.TYPE_OutrosCréditos))
			COD_AJ_APUR += "2";
		else if ( line.getType().equals(X_LBR_TaxAssessmentLine.TYPE_EstornoDeDébitos))
			COD_AJ_APUR += "3";
		
		// Type 2
		COD_AJ_APUR += line.getLBR_COD_AJ_APUR();
		
		// 
		reg.setCOD_AJ_APUR(line.getLBR_COD_AJ_APUR());
		
		// 
		reg.setDESCR_COMPL_AJ(line.getDescription());
		
		// 
		reg.setVL_AJ_APUR(line.getAmt());
		
		return reg;
	}
	
	/**
	 * REGISTRO RE116: OBRIGAÇÕES DO ICMS RECOLHIDO OU A RECOLHER – OPERAÇÕES PRÓPRIAS.
	 * 
	 * Código da obrigação a recolher, conforme a Tabela 5.4
	 * 002 - Saídas para o Estados
	 * 999 - Saídas para outros Estados
	 * 
	 * @param isSameRegion mesmo estado do emitente
	 * @param DT_VCTO data de vcto
	 * @param VL_OR valor da obrigação de icms st a recolher
	 * @param MES_REF mês de referência
	 *
	 * @return
	 * @throws Exception
	 */
	public static RE116 createRE116(MLBRTaxAssessment m_taxAssessment) throws Exception
	{
		
		RE116 reg = new RE116();
		reg.setCOD_OR(m_taxAssessment.getLBR_Cod_OR());
		reg.setVL_OR(m_taxAssessment.getLBR_VL_OR());
		reg.setDT_VCTO(m_taxAssessment.getLBR_Dt_Vcto());
		reg.setCOD_REC(m_taxAssessment.getLBR_Cod_Rec());  
		reg.setNUM_PROC(m_taxAssessment.getLBR_Num_Proc());	
		reg.setIND_PROC(m_taxAssessment.getLBR_Ind_Proc());	
		reg.setPROC(m_taxAssessment.getLBR_Proc());	
		reg.setTXT_COMPL(m_taxAssessment.getLBR_Txt_Compl());
		reg.setMES_REF(TextUtil.timeToString(m_taxAssessment.getC_Period().getEndDate(), "MMyyyy"));
		
		return reg;
	}
	
	
	/**
	 * REGISTRO E200: PERÍODO DA APURAÇÃO DO ICMS - SUBSTITUIÇÃO TRIBUTÁRIA.
	 * 
	 * TODO: Origem dos Dados?
	 * 
	 * @param UF
	 * @param dtIni
	 * @param dtFin
	 * @return
	 * @throws Exception
	 */
	public static RE200 createRE200(String UF, Timestamp dtIni, Timestamp dtFin) throws Exception
	{
		
		RE200 reg = new RE200();
		reg.setUF(UF);
		reg.setDT_INI(dtIni);
		reg.setDT_FIN(dtFin);
		
		return reg;
	}
	
	
	/**
	 * REGISTRO E210: APURAÇÃO DO ICMS – SUBSTITUIÇÃO TRIBUTÁRIA.
	 * 
	 * @return
	 * @throws Exception
	 */
	public static RE210 createRE210() throws Exception
	{
		
		RE210 reg = new RE210();
		reg.setIND_MOV_ST("0");
		reg.setVL_SLD_CRED_ANT_ST(Env.ZERO);
		reg.setVL_DEVOL_ST(Env.ZERO);
		reg.setVL_RESSARC_ST(Env.ZERO);
		reg.setVL_OUT_CRED_ST(Env.ZERO);
		reg.setVL_AJ_CREDITOS_ST(Env.ZERO);
		reg.setVL_RETENÇAO_ST(Env.ZERO);
		reg.setVL_OUT_DEB_ST(Env.ZERO);
		reg.setVL_AJ_DEBITOS_ST(Env.ZERO);
		reg.setVL_SLD_DEV_ANT_ST(Env.ZERO);
		reg.setVL_DEVOL_ST(Env.ZERO);
		reg.setVL_ICMS_RECOL_ST(Env.ZERO);
		reg.setVL_SLD_CRED_ST_TRANSPORTAR(Env.ZERO);
		reg.setVL_DEDUCOES_ST(Env.ZERO);
		reg.setDEB_ESP_ST(Env.ZERO);
		
		return reg;		
	}
	
	
	/**
	 * REGISTRO E250: OBRIGAÇÕES DO ICMS RECOLHIDO OU A RECOLHER – SUBSTITUIÇÃO TRIBUTÁRIA.
	 * 
	 * Código da obrigação a recolher, conforme a Tabela 5.4
	 * 002 - Saídas para o Estados
	 * 999 - Saídas para outros Estados
	 * 
	 * @param isSameRegion mesmo estado do emitente
	 * @param DT_VCTO data de vcto
	 * @param VL_OR valor da obrigação de icms st a recolher
	 * @param MES_REF mês de referência
	 *
	 * @return
	 * @throws Exception
	 */
	public static RE250 createRE250(boolean isSameRegion, Timestamp DT_VCTO, BigDecimal VL_OR, Timestamp dateTo, String DocumentNo) throws Exception
	{
		//
		String COD_OR = "002";
		if(!isSameRegion)
			COD_OR = "999";
			
		RE250 reg = new RE250();
		reg.setCOD_OR(COD_OR);
		reg.setVL_OR(VL_OR);
		reg.setDT_VCTO(DT_VCTO);
		reg.setCOD_REC("10009-9"); 	// TODO ??? 
		reg.setNUM_PROC("");		// TODO ???
		reg.setIND_PROC("");		// TODO ???
		reg.setPROC("");			// TODO ???
		reg.setTXT_COMPL(DocumentNo);
		reg.setMES_REF(TextUtil.timeToString(dateTo, "MMyyyy"));
		
		return reg;
	}
	
	
	/**
	 * REGISTRO E500: PERÍODO DE APURAÇÃO DO IPI.
	 * 
	 * TODO: Origem dos Dados?
	 * 
	 * @param dtIni
	 * @param dtFin
	 * @return
	 * @throws Exception
	 */
	public static RE500 createRE500(Timestamp dtIni, Timestamp dtFin) throws Exception
	{
		RE500 reg = new RE500();
		reg.setIND_APUR(IND_APUR);
		reg.setDT_INI(dtIni);
		reg.setDT_FIN(dtFin);
		
		return reg;
	}
	
	
	/**
	 * REGISTRO E510: CONSOLIDAÇÃO DOS VALORES DO IPI.
	 * 
	 * TODO: Origem dos Dados?
	 * 
	 * @param dtIni
	 * @param dtFin
	 * @return
	 * @throws Exception
	 */
	public static RE510 createRE510(RC190 rc190) throws Exception
	{
		RE510 reg = new RE510();
		reg.setCFOP(rc190.getCFOP());
		reg.setCST_IPI(rc190.getCST_IPI());
		reg.setVL_CONT_IPI(rc190.getVL_OPR());
		reg.setVL_BC_IPI(rc190.getVL_BC_IPI());
		reg.setVL_IPI(rc190.getVL_IPI());
		
		return reg;
	}
	
	/**
	 * REGISTRO E520: APURAÇÃO DO IPI.
	 * 
	 * TODO: Origem dos Dados?
	 * 
	 * @param dtIni
	 * @param dtFin
	 * @return
	 * @throws Exception
	 */
	public static RE520 createRE520(MLBRTaxAssessment m_taxassessment, List<RE510> re510s) throws Exception
	{
		RE520 reg = new RE520();
		
		// valores defaults == zero
		reg.setVL_SD_ANT_IPI(Env.ZERO);
		reg.setVL_DEB_IPI(Env.ZERO);
		reg.setVL_CRED_IPI(Env.ZERO);
		reg.setVL_OD_IPI(Env.ZERO);
		reg.setVL_OC_IPI(Env.ZERO);
		reg.setVL_SC_IPI(Env.ZERO);
		reg.setVL_SD_IPI(Env.ZERO);
		
		
		// saldo anterior
		reg.setVL_SD_ANT_IPI(MLBRTaxAssessment.getCumulatedAmt(m_taxassessment.getCtx(), 
				m_taxassessment.getC_Period_ID(), 
				m_taxassessment.getAD_Org_ID(), 
				m_taxassessment.getLBR_TaxName_ID()));
		
		// crédito e débito baseado nos RE510s
		for(RE510 re510 : re510s)
		{
			// se for compra é crédito, venda é débito
			if(re510.getCFOP().startsWith("1") 
					|| re510.getCFOP().startsWith("2") 
					|| re510.getCFOP().startsWith("3"))
				reg.setVL_CRED_IPI(reg.getVL_CRED_IPI().add(re510.getVL_IPI()));	
			
			else if(re510.getCFOP().startsWith("5") 
					|| re510.getCFOP().startsWith("6"))
				reg.setVL_DEB_IPI(reg.getVL_DEB_IPI().add(re510.getVL_IPI()));
		}
		
		reg.setVL_OD_IPI(m_taxassessment.getAmtByType(X_LBR_TaxAssessmentLine.TYPE_OutrosDébitos));
		reg.setVL_OC_IPI(m_taxassessment.getAmtByType(X_LBR_TaxAssessmentLine.TYPE_OutrosCréditos));
		reg.setVL_SC_IPI(Env.ZERO);
		reg.setVL_SD_IPI(Env.ZERO);
		
		
		/* 
			Campo 07 - Validação: se a soma dos campos VL_DEB_IPI e VL_OD_IPI 
			menos a soma dos campos VL_SD_ANT_IPI, VL_CRED_IPI e VL_OC_IPI 
			for menor que “0” (zero), então o campo VL_SC_IPI deve ser igual 
			ao valor absoluto da expressão, e o valor do campo VL_SD_IPI deve 
			ser igual a “0” (zero).
			 
			 
			Campo 08 - Validação: se a soma dos campos VL_DEB_IPI e VL_OD_IPI 
			menos a soma dos campos VL_SD_ANT_IPI, VL_CRED_IPI e VL_OC_IPI for
			maior ou igual a “0” (zero), então o campo 08 (VL_SD_IPI) deve ser
			igual ao resultado da expressão, e o valor do campo VL_SC_IPI deve
			ser igual a “0” (zero).
		 */
		BigDecimal SLD = (reg.getVL_DEB_IPI().add(reg.getVL_OD_IPI()))
				.subtract((reg.getVL_SD_ANT_IPI().add(reg.getVL_CRED_IPI()).add(reg.getVL_OC_IPI())));

		if(SLD.signum() == -1)
			reg.setVL_SC_IPI(SLD.abs());
		else
			reg.setVL_SD_IPI(SLD);		
		
		return reg;
	}
	
	/**
	 * REGISTRO E990: ENCERRAMENTO DO BLOCO E
	 * 
	 * @return
	 * @throws Exception
	 */
	public static RE990 createRE990() throws Exception 
	{
		RE990 reg = new RE990();
		reg.setQTD_LIN_E(String.valueOf(CounterSped.getBlockCounter(reg.getReg())));
	
		return reg;
	}
	
	
	/**
	 * REGISTRO G001: ABERTURA DO BLOCO G
	 * 
	 * @param hasInfo
	 * @return
	 * @throws Exception
	 */
	public static RG001 createRG001(boolean hasInfo) throws Exception
	{
		RG001 reg = new RG001();
		reg.setIND_MOV(hasInfo ? "0" : "1");
		
		return reg;
	}
	
	/**
	 * REGISTRO G990: ENCERRAMENTO DO BLOCO G
	 * 
	 * @return
	 * @throws Exception
	 */
	public static RG990 createRG990() throws Exception 
	{
		RG990 reg = new RG990();
		reg.setQTD_LIN_G(String.valueOf(CounterSped.getBlockCounter(reg.getReg())));
	
		return reg;
	}
	
	
	
	/**
	 * REGISTRO 9001: ABERTURA DO BLOCO 9
	 * 
	 * @param hasInfo
	 * @return
	 * @throws Exception
	 */
	public static R9001 createR9001(boolean hasInfo) throws Exception
	{
		R9001 reg = new R9001();
		reg.setIND_MOV(hasInfo ? "0" : "1");
		
		return reg;
	}
	
	
	
	/**
	 * REGISTRO 9900: REGISTROS DO ARQUIVO.
	 * 
	 * Obs.: Cria todos e retorna uma lista com estes
	 * 
	 * @return
	 * @exception Exception
	 */
	public static List<R9900> createR9900() throws Exception
	{


		//
		List<R9900> list = new ArrayList<R9900>();
		
		//
		String[] regs = CounterSped.getRegsSped();

		
		// para todos os registros do sped
		for(int i=0; i<regs.length; i++)
		{
			// criar totalizador
			R9900 reg = new R9900();
			reg.setREG_BLC(regs[i]);
			reg.setQTD_REG_BLC(String.valueOf(CounterSped.getCounter(regs[i])));

			// add a lista 
			list.add(reg);
		}
		

		
		
		// totalizador do R9900 o +1 é pq depoisa desse registro, será criado o totalizador do 9900
		R9900 reg = new R9900();
		reg.setREG_BLC("9900");
		reg.setQTD_REG_BLC(String.valueOf(CounterSped.getCounter("9900") + 1));
		
		// add à lista também
		list.add(reg);
		
		
		// totalizador do R999
		reg = new R9900();
		reg.setREG_BLC("9999");
		reg.setQTD_REG_BLC(String.valueOf("1"));
		
		// add à lista também
		list.add(reg);
		
		//
		return list;
		
		
	} //createR9900
	
	
	
	/**
	 * REGISTRO 9990: ENCERRAMENTO DO BLOCO 9
	 * 
	 * @return
	 * @throws Exception
	 */
	public static R9990 createR9990() throws Exception 
	{
		R9990 reg = new R9990();
		reg.setQTD_LIN_9(String.valueOf(CounterSped.getBlockCounter(reg.getReg())));
	
		return reg;
	}
	
	
	/**
	 * REGISTRO 9999: ENCERRAMENTO DO ARQUIVO
	 * 
	 * @return
	 * @throws Exception
	 */
	public static R9999 createR9999() throws Exception 
	{
		R9999 reg = new R9999();
		reg.setQTD_LIN(String.valueOf(CounterSped.getTotalCounter()));
	
		return reg;
	}
	
	/**
	 * REGISTRO 1001: ABERTURA DO BLOCO 1
	 * 
	 * @param hasInfo
	 * @return
	 * @throws Exception
	 */
	public static R1001 createR1001(boolean hasInfo) throws Exception
	{
		R1001 reg = new R1001();
		reg.setIND_MOV(hasInfo ? "0" : "1");
//		createR1010(); //Registro Obrigatório
		
		return reg;
	}
	
	/**
	 * REGISTRO 1010: REGISTROS DO BLOCO 1
	 * @param p_C_Period_ID 
	 * @param Region
	 * 
	 * @return
	 * @throws Exception
	 */
	public static R1010 createR1010(int p_C_Period_ID, String Region) throws Exception
	{
		int salesCard = DB.getSQLValue (null, "SELECT COUNT('1') FROM LBR_SalesCardTotal c WHERE c.C_Period_ID=?", p_C_Period_ID);
		
		R1010 reg = new R1010();
		reg.setREG("1010");
		reg.setIND_EXP("N");
		reg.setIND_CCRF("N");
		reg.setIND_COMB("N");
		reg.setIND_USINA("N");
		reg.setIND_VA("N");
		reg.setIND_EE("N");
		reg.setIND_CART(salesCard > 0 ? "S" : "N");
		reg.setIND_FORM("N");
		reg.setIND_AER("N");
		//	Preenchimento: “S – Sim”, somente quando o estabelecimento informante for domiciliado no estado de Pernambuco
		reg.setIND_GIAF1(("PE".equals(Region) ? "S" : "N"));
		reg.setIND_GIAF3(("PE".equals(Region) ? "S" : "N"));
		reg.setIND_GIAF4(("PE".equals(Region) ? "S" : "N"));
		reg.setIND_REST_RESSARC_COMPL_ICMS("N");
		
		return reg;
	}
	
	/**
	 * REGISTRO 1600: INFORMACAO DE REGISTROS DE CARTAO DE CREDITO E DEBITO
	 * 
	 * @return
	 * @throws Exception
	 */
	public static R1600 createR1600(MLBRSalesCardTotal card) throws Exception
	{
		R1600 reg = new R1600();
		reg.setCOD_PART(TextUtil.retiraEspecial(card.getC_BPartner().getValue()));
		reg.setTOT_CREDITO(card.getLBR_CreditCardAmt());
		reg.setTOT_DEBITO(card.getLBR_DebitCardAmt());
		return reg;
	}
	
	/**
	 * REGISTRO 1990: ENCERRAMENTO DO BLOCO 1
	 * 
	 * @return
	 * @throws Exception
	 */
	public static R1990 createR1990() throws Exception 
	{
		R1990 reg = new R1990();
		reg.setQTD_LIN_1(String.valueOf(CounterSped.getBlockCounter(reg.getReg())));
	
		return reg;
	}
	

	
	
	
	/**
	 * Retornar a conta do produto
	 * 
	 * @param C_ElementValue_ID ID do Elemento de Contas
	 */
	public static int getProductAsseAcct(int M_Product_ID, String trxName) throws Exception
	{
	
		// sql
		String sql = " SELECT C_ElementValue_ID 																" +
					 "   FROM C_ElementValue 																	" +
					 "  WHERE C_ElementValue_ID = (SELECT Account_ID 											" +
					 "								 FROM C_ValidCombination									" +
					 "								WHERE C_ValidCombination_ID = (SELECT P_Asset_Acct			" +
					 "						  								         FROM M_Product_Acct 		" +
					 "																WHERE M_Product_ID = ?))	" +
					 "   AND IsActive = 'Y' 																	";
		
		// buscar valor
		int ret =  DB.getSQLValue(trxName, sql, M_Product_ID);
		
		// 
		if(ret == -1)
			return 0;
		
		// 
		return ret;
	}
	
	/**
	 * Retornar a query para buscar as informações do inventário
	 * 
	 * Parametros do SQL
	 * 
	 * #1 - C_Period_ID
	 * #2 - CostingMethod
	 * #3 - AD_Client_ID
	 * #4 - AD_Org_ID
	 * #5 - MovementDate
	 * 
	 * 
	 * @return Sql String
	 */
	public static String getSQLInv()  throws Exception
	{
		return getSQLInv(false);
	}	//	getSQLInv
	
	/**
	 * Retornar a query para buscar as informações do inventário
	 * 
	 * Parametros do SQL
	 * 
	 * #1 - C_Period_ID
	 * #2 - CostingMethod
	 * #3 - AD_Client_ID
	 * #4 - AD_Org_ID
	 * #5 - MovementDate
	 * 
	 * 
	 * @return Sql String
	 */
	public static String getSQLInv(boolean includeAsset)  throws Exception
	{
		// sql
		String sql = " SELECT 																			" +
				" 	mt.M_Product_ID,																	" +
				"   ROUND(SUM(MovementQty), 4) AS QtyOnHand, 											" +
				"	wh.lbr_WarehouseType,																" +
				"	getCurrentCost(mt.AD_Client_ID, mt.M_Product_ID, ?, ?) AS CurrentCostPrice			" + // # 1, 2
				" FROM M_Transaction mt																	" +
				"	INNER JOIN M_Product p ON mt.M_Product_id = p.M_Product_id							" +
				"	INNER JOIN M_Locator l ON mt.M_Locator_id = l.M_Locator_id 							" +
				"	INNER JOIN M_Warehouse wh ON wh.M_Warehouse_id = l.M_Warehouse_id					" +
				" WHERE mt.AD_Client_ID = ? 															" + // # 3
				"   AND mt.AD_Org_ID = ?																" + // # 4
				"	AND mt.MovementDate <= ?															" +	// # 5
				"	AND wh.AD_Org_ID = mt.AD_Org_ID 													";
		
		//	Should include assets in the inventory?
		if (!includeAsset)
			sql += "  AND (p.lbr_ItemTypeBR IS NULL OR p.lbr_ItemTypeBR<>'08') ";
		
		sql +=  " GROUP BY							" +
				" 	mt.AD_Client_ID, 				" +
				"	mt.M_Product_ID,				" +
				"	wh.lbr_WarehouseType			" +
				" HAVING SUM(MovementQty) > 0		" +
				" ORDER BY mt.M_Product_ID			";

		//
		return sql;
	}
	
	/**
	 * Retornar a query para buscar as informações do inventário para o Bloco K
	 * 
	 * Parametros do SQL
	 * 
	 * #1 - AD_Client_ID
	 * #2 - AD_Org_ID
	 * #3 - LBR_SPED_ID
	 * 
	 * @return Sql String
	 * @deprecated
	 */
	public static String getSQLBookInv()  throws Exception
	{
		// sql
		String sql = " SELECT AD_Client_ID, AD_Org_ID, C_BPartner_ID, SUM(QtyBook) AS QtyBook,	" + 
				" lbr_WarehouseType, movementdate, M_Product_ID,			" +
				" isRevalidate																	" +
				" FROM LBR_BookInventory														" +
				" WHERE AD_Client_ID = ? 														" + // # 1
				" AND AD_Org_ID = ?																" + // # 2
				" AND LBR_SPED_ID = ? "	  	 												  	  + // # 3
				" GROUP BY AD_Client_ID, AD_Org_ID, M_Product_ID, C_BPartner_ID, " + 
				" lbr_WarehouseType, movementdate, isRevalidate " + 
				" ORDER BY M_Product_ID															";

		//
		return sql;
	}
	
	/**
	 * Retornar a query para buscar as informações do inventário para o Bloco K
	 * 
	 * Parametros do SQL
	 * 
	 * #1 - AD_Client_ID
	 * #2 - AD_Org_ID
	 * #3 - LBR_EFDICMSIPI_ID
	 * 
	 * @return Sql String
	 */
	public static String getSQLBookInventory()  throws Exception
	{
		// sql
		String sql = " SELECT AD_Client_ID, AD_Org_ID, C_BPartner_ID, SUM(QtyBook) AS QtyBook,	" + 
				" lbr_WarehouseType, movementdate, M_Product_ID,			" +
				" isRevalidate																	" +
				" FROM LBR_BookInventory														" +
				" WHERE AD_Client_ID = ? 														" + // # 1
				" AND AD_Org_ID = ?																" + // # 2
				" AND LBR_EFDICMSIPI_ID = ? "	  	 											  + // # 3
				" GROUP BY AD_Client_ID, AD_Org_ID, M_Product_ID, C_BPartner_ID, " + 
				" lbr_WarehouseType, movementdate, isRevalidate " + 
				" ORDER BY M_Product_ID															";

		//
		return sql;
	}

} // EFDUtil