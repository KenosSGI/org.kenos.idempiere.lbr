package org.kenos.idempiere.lbr.sped.model;

import java.io.File;
import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.TreeMap;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRFactFiscal;
import org.adempierelbr.model.MLBRTaxAssessment;
import org.adempierelbr.model.X_LBR_EFDContrib;
import org.adempierelbr.sped.SPEDComparator;
import org.adempierelbr.sped.SPEDUtil;
import org.adempierelbr.sped.contrib.bean.Bloco0;
import org.adempierelbr.sped.contrib.bean.Bloco1;
import org.adempierelbr.sped.contrib.bean.Bloco9;
import org.adempierelbr.sped.contrib.bean.BlocoA;
import org.adempierelbr.sped.contrib.bean.BlocoC;
import org.adempierelbr.sped.contrib.bean.BlocoD;
import org.adempierelbr.sped.contrib.bean.BlocoF;
import org.adempierelbr.sped.contrib.bean.BlocoM;
import org.adempierelbr.sped.contrib.bean.R0000;
import org.adempierelbr.sped.contrib.bean.R0100;
import org.adempierelbr.sped.contrib.bean.SPEDContrib;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.compiere.model.MAttachment;
import org.compiere.model.MColumn;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MTable;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.Query;
import org.compiere.process.DocAction;
import org.compiere.process.DocOptions;
import org.compiere.process.DocumentEngine;
import org.compiere.util.DB;

/**
 * 		Model for SPED EFD Contribuições
 * 
 * 	@author Ricardo Santana <rsantana@kenos.com.br>
 */
public class MLBREFDContrib extends X_LBR_EFDContrib implements DocAction, DocOptions
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = 8076210649619272775L;

	/**
	 * 
	 * @param ctx
	 * @param LBR_EFDContrib_ID
	 * @param trxName
	 */
	public MLBREFDContrib (Properties ctx, int LBR_EFDContrib_ID, String trxName)
	{
		super (ctx, LBR_EFDContrib_ID, trxName);
	}	//	MLBREFDContrib
	
	/**
	 * 
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLBREFDContrib(Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBREFDContrib

	public boolean processIt(String processAction) throws Exception
	{
		m_processMsg = null;
		DocumentEngine engine = new DocumentEngine (this, getDocStatus());
		return engine.processIt (processAction, getDocAction());
	}	//	processIt
	
	/**	Process Message 			*/
	private String		m_processMsg = null;
	/**	Just Prepared Flag			*/
	private boolean		m_justPrepared = false;
	/** Org Info					*/
	protected MOrgInfo m_OrgInfo = null;

	public boolean unlockIt()
	{
		return false;
	}	//	unlockIt

	public boolean invalidateIt()
	{
		return false;
	}	//	invalidateIt

	public String prepareIt()
	{
		log.info(toString());
		
		if (m_justPrepared || TextUtil.match (getDocAction(), DOCACTION_Unlock, DOCACTION_Unlock, DOCACTION_Void))
			return DOCSTATUS_InProgress;
		
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;	
		/*
		 * Validar Organização e Periodo
		 */
		if (getC_Period_ID() == 0)
			return "@C_Period_ID@ @Mandatory@";
		
		if (getAD_Org_ID() == 0)
			return "@AD_Org_ID@ @Mandatory@";
		
		List<String> common = new ArrayList<String>();
		List<Object> array = Arrays.asList(Arrays.asList(MTable.get(getCtx(), "LBR_FactFiscal")
				.getColumns(false))
				.stream()
				.map(MColumn::getColumnName)
				.filter(c -> !TextUtil.match(c, "LBR_SPEDContribution_ID", "LBR_EFDContrib_ID", "LBR_EFDICMSIPI_ID", "LBR_FactFiscal_UU"))
				.toArray());
		
		//	TODO: Compare againt LBR_FactFiscalBase when LBR_FactFiscalBase is created in framework
		Arrays.asList(MTable.get(getCtx(), "LBR_FactFiscal")	//	Change to LBR_FactFiscalBase
				.getColumns(false))
				.stream()
				.map(MColumn::getColumnName)
				.filter(c -> array.contains(c) && !"LBR_EFDContrib_ID".equals(c))
				.forEach(c -> common.add(c));

		//	Delete to re-create later
		DB.executeUpdate("DELETE FROM LBR_FactFiscal"
				+ " WHERE LBR_EFDContrib_ID = " + getLBR_EFDContrib_ID() 
				+ " AND AD_Client_ID = " + getAD_Client_ID(), get_TrxName());
		
		//	Re-create from base
		DB.executeUpdate("INSERT INTO LBR_FactFiscal (" + String.join(",", common) + ", LBR_EFDContrib_ID) "
				+ " SELECT " + String.join(",", common) + "," + getLBR_EFDContrib_ID()
				+ " FROM LBR_FactFiscalBase"
				+ " WHERE (CASE WHEN IsSOTrx='Y' THEN DateDoc ELSE lbr_DateInOut END) BETWEEN " + DB.TO_DATE(getStartDate())
				+ " AND " + DB.TO_DATE(getEndDate())
				+ " AND ((IsSOTrx = 'Y' AND lbr_NFeProt IS NOT NULL) OR IsSOTrx ='N') "
				+ " AND AD_Client_ID = " + getAD_Client_ID(), get_TrxName());
		
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;

		m_justPrepared = true;
		
		return DocAction.STATUS_InProgress;
	}	//	prepareIt
	
	public boolean approveIt()
	{
		return false;
	}	//	approveIt
	
	public boolean rejectIt()
	{
		return false;
	}	//	rejectIt
	
	public String completeIt()
	{	
		StringBuilder result = new StringBuilder();
		
		/*
		 * Caminho do Arquivo
		 */
		String fileName = "";
		try
		{
			/*
			 * Rodar Processo
			 */
			result = genSPEDContrib ();
		}
		catch (Exception e)
		{
			return "@Error@ ao Gerar o SPED Fiscal";
		}		
		
		/*
		 * Nome do arquivo
		 * 
		 * EDF_CNPJ_DATA.txt
		 */
		I_W_AD_OrgInfo oi = POWrapper.create(MOrgInfo.get(getCtx(), getAD_Org_ID(), get_TrxName()), I_W_AD_OrgInfo.class);
		fileName = "EFD_Contrib_" + TextUtil.toNumeric(oi.getlbr_CNPJ()) + "_" + TextUtil.timeToString(getStartDate(), "MMyyyy") + ".txt";
		
		String tmp = System.getProperty("java.io.tmpdir") +
	             System.getProperty("file.separator");
		
		/*
		 * Gerar Arquivo no disco
		 */
		
		File file = new File(TextUtil.generateFile(result.toString(), tmp + "/" +  fileName));
		
		try
		{
			//	Anexa o XML na NF
			MAttachment attachNFe = createAttachment();
			attachNFe.addEntry(file);
			attachNFe.save(null);
		} 
		catch (Exception e)
		{
			return "Error saving SPED";
		}

		setDocAction(DOCACTION_None);
		setProcessed(true);
		//
		return DocAction.STATUS_Completed;
	}	//	completeIt
	
	public boolean voidIt()
	{
		return false;
	}	//	voidIt
	
	public boolean closeIt()
	{
		return false;
	}	//	closeIt
	
	public boolean reverseCorrectIt()
	{
		return false;
	}	//	reverseCorrectIt
	
	public boolean reverseAccrualIt()
	{
		return false;
	}	//	reverseAccrualIt
	
	public boolean reActivateIt()
	{
		setProcessed(false);
		setDocAction(ACTION_Prepare);
		return true;
	}	//	reActivateIt
	
	public String getSummary()
	{
		return null;
	}	//	getSummary
	
	public String getDocumentNo()
	{
		return null;
	}	//	getDocumentNo
	
	public String getDocumentInfo()
	{
		return null;
	}	//	getDocumentInfo
	
	public File createPDF()
	{
		return null;
	}	//	createPDF
	
	public String getProcessMsg()
	{
		return null;
	}	//	getProcessMsg
	
	public int getDoc_User_ID()
	{
		return 0;
	}	//	getDoc_User_ID
	
	public int getC_Currency_ID()
	{
		return 0;
	}	//	getC_Currency_ID

	public BigDecimal getApprovalAmt()
	{
		return null;
	}	//	getApprovalAmt
	
	private MOrgInfo getOrgInfo ()
	{
		if (m_OrgInfo == null)
			m_OrgInfo = MOrgInfo.get(getCtx(), getAD_Org_ID(), null);
		return m_OrgInfo;
	}
	
	public int customizeValidActions(String docStatus, Object processing, String orderType, String isSOTrx,
			int AD_Table_ID, String[] docAction, String[] options, int index) {
		if (DOCSTATUS_Drafted.equals(docStatus)
				|| DOCSTATUS_Invalid.equals(docStatus))
		{
			options[0] = DOCACTION_Prepare;
			options[1] = DOCACTION_Void;
			options[2] = null;
			options[3] = null;
			options[4] = null;
			index=2;
		}
		else if (DOCSTATUS_InProgress.equals(docStatus))
		{
			options[0] = DOCACTION_Complete;
			options[1] = DOCACTION_Prepare;
			options[2] = DOCACTION_Void;
			options[3] = null;
			options[4] = null;
			index=3;
		}
		else if (DOCSTATUS_Completed.equals(docStatus))
		{
			options[0] = DOCACTION_Re_Activate;
			options[1] = null;
			options[2] = null;
			options[3] = null;
			options[4] = null;
			index=1;
		}
		//
		return index;
	}	//	customizeValidActions
	
	private Timestamp getStartDate()
	{
		return getC_Period().getStartDate();
	}	//	getStartDate
	
	private Timestamp getEndDate()
	{
		return getC_Period().getEndDate();
	}	//	getEndDate
	
	@Override
	public String toString() 
	{
		StringBuilder sb = new StringBuilder("EFD [");
		sb.append(TextUtil.timeToString(getC_Period().getStartDate(), "MM/yyyy")).append("-").append(get_ID()).append("]");
		return sb.toString();	
	}	//	toString

	/**
	 * 	Gera o Arquivo do SPED
	 * @throws AdempiereException, Exception 
	 */
	protected StringBuilder genSPEDContrib () throws AdempiereException, Exception
	{
		List<MLBRFactFiscal> factFiscals = new Query(getCtx(), MLBRFactFiscal.Table_Name, "LBR_EFDContrib_ID=?", get_TrxName())
				.setParameters(getLBR_EFDContrib_ID())
				.setOrderBy("(CASE WHEN IsSOTrx='Y' THEN DateDoc ELSE lbr_DateInOut END), LBR_NotaFiscal_ID, Line, DocumentNo")
				.list();
		
		SPEDUtil.processFacts (getCtx(), factFiscals, SPEDUtil.TYPE_CONTRIB, get_TrxName());
		
		//	Inicio do Arquivo
		Bloco0 b0 = new Bloco0();
		BlocoA bA = new BlocoA();
		BlocoC bC = new BlocoC();
		BlocoD bD = new BlocoD();
		BlocoF bF = new BlocoF();
		BlocoM bM = new BlocoM();
		Bloco1 b1 = new Bloco1();
		Bloco9 b9 = new Bloco9();
		
		//	Registro 0000
		b0.setR0000 (SPEDUtil.fillR0000 (new R0000(), getCtx(), getStartDate(), getEndDate(), getLBR_COD_FIN(), getOrgInfo(), "", "", get_TrxName()));
		//	Registro 0100
		b0.setR0100 ((R0100) SPEDUtil.fillR0100 (new R0100 (), getCtx(), getOrgInfo(), get_TrxName()));
		//	Registro 0110
		b0.setR0110 (SPEDUtil.getR0110 (SPEDUtil.COD_INC_TRIB_NAO_CUM, SPEDUtil.IND_APRO_CRED_PROPORCIONAL, SPEDUtil.COD_TIPO_CONT_ALIQ_BASICA, ""));	//	FIXME
		
		b0.setR0111(SPEDUtil.getR0111());
		
		//	Registro 0140
		b0.setR0140 (SPEDUtil.getR0140 (getCtx(), new MOrgInfo[]{getOrgInfo()}, get_TrxName()));
		//	Registro 0150
		b0.setR0150 (SPEDUtil.getR0150 ());
		//	Registro 0190
		b0.setR0190 (SPEDUtil.getR0190 ());
		//	Registro 0200
		b0.setR0200 (SPEDUtil.getR0200 ());
		//	Registro 0500
		b0.setR0500 (SPEDUtil.getR0500 ());
		
		
		//	Registro A010
		bA.setRA010 (SPEDUtil.getRA010 ());
		//	Registro A100
		bA.setRA100 (SPEDUtil.getRA100 ());
		
		//	Registro C010
		bC.setRC010 (SPEDUtil.getRC010 ());
		//	Registro C010
		bC.setRC100 (SPEDUtil.getRC100 ());
		//	Registro C010
		bC.setRC500 (SPEDUtil.getRC500 ());
		
		//	Registro D010
		bD.setRD010 (SPEDUtil.getRD010 ());
		//	Registro D010
		bD.setRD100 (SPEDUtil.getRD100 ());
		//	Registro D010
		bD.setRD500 (SPEDUtil.getRD500 ());
		// Registro M100
		//bM.setRM100(SPEDUtil.getRM100 (p_C_Period_ID, orgInfo.getAD_Org_ID()));
		//	Registro M200
		bM.setRM200 (SPEDUtil.getRM200 ());
		
		/**
		 * PIS - M205
		 */
		
		MLBRTaxAssessment m_taxAssessmentPIS = MLBRTaxAssessment.get(getCtx(), getAD_Org_ID(), "PISPROD", getC_Period_ID(), null);
		if(m_taxAssessmentPIS != null && m_taxAssessmentPIS.get_ID() > 0)
		{
			bM.getRM200().setRM205(SPEDUtil.getRM205(m_taxAssessmentPIS));
		}
		
		//	Registro M400
		bM.setRM400 (SPEDUtil.getRM400 ());
		// Registro M100
		//bM.setRM500(SPEDUtil.getRM500 (p_C_Period_ID, orgInfo.getAD_Org_ID()));
		//	Registro M600
		bM.setRM600 (SPEDUtil.getRM600 ());		
		
		/**
		 * COFINS - M605
		 */
		
		MLBRTaxAssessment m_taxAssessmentCOFINS = MLBRTaxAssessment.get(getCtx(), getAD_Org_ID(), "COFINSPROD", getC_Period_ID(), null);
		if(m_taxAssessmentCOFINS != null && m_taxAssessmentCOFINS.get_ID() > 0)
		{
			bM.getRM600().setRM605(SPEDUtil.getRM605(m_taxAssessmentCOFINS));
		}
		
		//	Registro M800
		bM.setRM800 (SPEDUtil.getRM800 ());
		
		SPEDContrib sped = new SPEDContrib ();
		sped.setB0 ((Bloco0) b0.get (SPEDUtil.TYPE_CONTRIB));
		sped.setBA ((BlocoA) bA.get (SPEDUtil.TYPE_CONTRIB));
		sped.setBC ((BlocoC) bC.get (SPEDUtil.TYPE_CONTRIB));
		sped.setBD ((BlocoD) bD.get (SPEDUtil.TYPE_CONTRIB));
		sped.setBF ((BlocoF) bF.get (SPEDUtil.TYPE_CONTRIB));
		sped.setBM ((BlocoM) bM.get (SPEDUtil.TYPE_CONTRIB));
		sped.setB1 ((Bloco1) b1.get (SPEDUtil.TYPE_CONTRIB));
		
		//	Registro 9
		Map<String, Integer> regCount = new TreeMap<String, Integer>(SPEDComparator.get());
		sped.getCount (regCount);
		
		b9.setR9900 (SPEDUtil.getR9900 (SPEDUtil.TYPE_CONTRIB, regCount));
		b9.setR9999 (SPEDUtil.getR9999 (SPEDUtil.TYPE_CONTRIB, regCount));
		sped.setB9 ((Bloco9) b9.get (SPEDUtil.TYPE_CONTRIB));
		
		// Montar resultado			 
		StringBuilder result = new StringBuilder();
		result.append(sped.toString());
		
		return result;
		
		
	}	//	genSPEDContrib
}	//	MLBREFDICMSIPI
