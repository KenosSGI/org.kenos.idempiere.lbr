package org.kenos.idempiere.lbr.bankslip.model;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.adempiere.base.Service;
import org.adempierelbr.model.I_LBR_BankSlipLayout;
import org.adempierelbr.model.X_LBR_CNABFile;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MSequence;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.Query;
import org.compiere.process.DocAction;
import org.compiere.process.DocOptions;
import org.compiere.process.DocumentEngine;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.bankslip.ICNABFactory;
import org.kenos.idempiere.lbr.bankslip.ICNABGenerator;

/**
 * 	CNAB File
 * 	@author Ricardo Santana
 */
public class MLBRCNABFile extends X_LBR_CNABFile implements DocAction, DocOptions
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = 1826027754620508514L;

	/**	CNAB Generator Handler */
	ICNABGenerator handler = null;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRCNABFile (Properties ctx, int LBR_CNABFile_ID, String trx)
	{
		super (ctx, LBR_CNABFile_ID, trx);
	}	//	MLBRCNABFile

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRCNABFile (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRCNABFile

	/**
	 * 	Get Lines
	 *	@return Org Info
	 */
	public List<MLBRCNABFileLine> getLines ()
	{
		return new Query(p_ctx, MLBRCNABFileLine.Table_Name, MLBRCNABFileLine.COLUMNNAME_LBR_CNABFile_ID + "=?", get_TrxName())
				.setParameters(getLBR_CNABFile_ID())
				.setOrderBy(MLBRCNABFileLine.COLUMNNAME_SeqNo)
				.list();
	}	//	getLines

	/**
	 * 
	 * @return	Legal Entity
	 */
	public String getlbr_LegalEntity()
	{
		MOrgInfo oi = MOrgInfo.get(p_ctx, getAD_Org_ID(), null);
		String legalEntity = oi.get_ValueAsString(I_W_AD_OrgInfo.COLUMNNAME_lbr_LegalEntity);
		return legalEntity != null ? legalEntity.toUpperCase().trim() : "";
	}	//	getlbr_LegalEntity
	
	@Override
	protected boolean beforeDelete()
	{
		//	Delete Lines
		getLines().stream().forEach(l -> l.delete(true));
		return true;
	}	//	beforeDelete
	
	@Override
	protected boolean beforeSave (boolean newRecord)
	{
		//	Sequence
		if (newRecord && isSOTrx() && getSeqNo() == 0)
		{
			String nextSeq = "";
			//
			int seqFile = getLBR_BankSlipContract().getLBR_CNABFileSeq_ID();
			if (seqFile > 0)
			{
				MSequence seq = new MSequence (getCtx(), seqFile, null);
				
				// Numeric Prefix
				if (seq.getPrefix() != null && TextUtil.isNumber (seq.getPrefix())) 
					nextSeq += seq.getPrefix();
				
				//	Next Sequence
				nextSeq += seq.getNextID();
				
				//	Numeric Suffix
				if (seq.getSuffix() != null && TextUtil.isNumber (seq.getSuffix())) 
					nextSeq += seq.getSuffix();

				seq.save();
			}
			else
			{
				/**
				 * 	e.g. for the first file of 21-July-2017 the sequence will be:
				 * 
				 * 	17072101
				 */
				nextSeq = TextUtil.timeToString (getDateDoc(), "yyMMdd");
				nextSeq += TextUtil.lPad(DB.getSQLValueString (get_TrxName(), "SELECT COALESCE (COUNT(0), 0)+1 FROM " + Table_Name + 
						" WHERE " + COLUMNNAME_LBR_BankSlipContract_ID + "=? AND " + 
						COLUMNNAME_DateDoc + "=" + DB.TO_DATE(getDateDoc()), getLBR_BankSlipContract_ID()), 2);
			}
			//
			setSeqNo(Integer.valueOf (nextSeq));
		}
		return super.beforeSave(newRecord);
	}
	
	@Override
	public File createPDF ()
	{
		return null;
	}	//	createPDF
	
	@Override
	public String getDocumentNo ()
	{
		return TextUtil.lPad(getRoutingNo(), 3) + "_" + TextUtil.timeToString(getDateDoc(), "YYYYMMDD") + "_" + getSeqNo();
	}	//	getDocumentNo
	
	public static MLBRCNABFile get (int LBR_BankSlipContract_ID, String hash)
	{
		return new Query (Env.getCtx(), MLBRCNABFile.Table_Name, COLUMNNAME_DocStatus + " IN ('CL','CO') AND " +  COLUMNNAME_LBR_BankSlipContract_ID + "=? AND " + COLUMNNAME_lbr_DigestValue + "=?", null)
			.setParameters(LBR_BankSlipContract_ID, hash)
			.first();
	}	//	get

	@Override
	public int customizeValidActions(String docStatus, Object processing, 
			String orderType, String isSOTrx, int AD_Table_ID, String[] docAction,
			String[] options, int index)
	{
		options[0] = null;
		options[1] = null;
		options[2] = null;
		options[3] = null;
		options[4] = null;
		index = 0;
		
		if (DocAction.STATUS_Invalid.equals(docStatus))
		{
			options[index++] = DocAction.ACTION_Prepare;
			options[index++] = DocAction.ACTION_Void;
		}
		else if (DocAction.STATUS_InProgress.equals(docStatus))
		{
			options[index++] = DocAction.ACTION_Complete;
			options[index++] = DocAction.ACTION_Void;
		}
		else if (DocAction.STATUS_Drafted.equals(docStatus))
		{
			options[index++] = DocAction.ACTION_Prepare;
			options[index++] = DocAction.ACTION_Complete;
		}
		else if (DocAction.STATUS_Completed.equals(docStatus))
		{
			options[index++] = DocAction.ACTION_Void;
			if (isSOTrx())
				options[index++] = DocAction.ACTION_ReActivate;
		}
		//
		return index;
	}

	@Override
	public boolean processIt(String processAction) throws Exception
	{
		m_processMsg = null;
		DocumentEngine engine = new DocumentEngine (this, getDocStatus());
		return engine.processIt (processAction, getDocAction());
	}	//	processIt
	
	/**	Process Message 			*/
	private String		m_processMsg = null;

	@Override
	public boolean unlockIt()
	{
		return false;
	}	//	unlockIt

	@Override
	public boolean invalidateIt()
	{
		return false;
	}	//	invalidateIt

	@Override
	public String prepareIt()
	{
		//	Model Validator
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		
		I_LBR_BankSlipLayout layout = getLBR_BankSlipContract().getLBR_BankSlipLayout();

		//	Locate a handler to generate CNAB file
		if (handler == null)
		{
			List<ICNABFactory> list = Service.locator ().list (ICNABFactory.class).getServices();
			for (ICNABFactory cnabFactory : list)
			{
				handler = cnabFactory.getCNABGenerator(Integer.valueOf(getRoutingNo()), layout.getType(), layout.getVersion());
				if (handler != null)
					break;
			}
		}
		
		//	Unable to find a handler
		if (handler == null)
		{
			m_processMsg = "Unable to find a handler to bank [" + getRoutingNo() + "]  and layout [" + layout.getName() + "]";
			return DocAction.STATUS_Invalid;		
		}
		
		//	Model Validator
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		
		return DocAction.STATUS_InProgress;
	}	//	prepareIt

	@Override
	public boolean approveIt()
	{
		return false;
	}	//	approveIt

	@Override
	public boolean rejectIt()
	{
		return false;
	}	//	rejectIt

	@Override
	public String completeIt()
	{
		int count = new Query (Env.getCtx(), Table_Name, COLUMNNAME_IsSOTrx + "='Y' AND " + COLUMNNAME_LBR_CNABFile_ID + "!=? AND " + 
					COLUMNNAME_LBR_BankSlipContract_ID + "=? AND TRUNC(" + COLUMNNAME_DateDoc + ")=" + DB.TO_DATE(getDateDoc()), get_TrxName())
					.setParameters(getLBR_CNABFile_ID(), getLBR_BankSlipContract_ID()).count();
		
		String cnabFileName = "CB" + TextUtil.timeToString(getDateDoc(), "ddMM") + TextUtil.lPad (count+1, 2) + ".REM";
		StringBuilder cnabFileContent = handler.generateCNABFile (this);
		
		try 
		{
			MAttachment attachment = getAttachment (true);
			if (attachment != null) {
				MAttachmentEntry entry = attachment.getEntry(0);
				
				//	Preserve file name
				if (entry != null)
					cnabFileName = entry.getName();
				getAttachment ().delete (true);
			}
			
			getAttachment(true);	//	FIX
			MAttachment attachCNAB = createAttachment();
			attachCNAB.addEntry(cnabFileName, cnabFileContent.toString().getBytes("UTF-8"));
			attachCNAB.save();
		} 
		catch (UnsupportedEncodingException e)
		{
			e.printStackTrace();
			m_processMsg = "Erro ao gerar o arquivo";
			return DOCSTATUS_Invalid;
		}
		
		setProcessed(true);
		
		return DOCSTATUS_Completed;
	}	//	completeIt

	@Override
	public boolean voidIt()
	{
		if (!isSOTrx())
			return true;
		return false;
	}	//	voidIt

	@Override
	public boolean closeIt()
	{
		return false;
	}	//	closeIt

	@Override
	public boolean reverseCorrectIt()
	{
		return false;
	}	//	reverseCorrectIt

	@Override
	public boolean reverseAccrualIt()
	{
		return false;
	}	//	reverseAccrualIt
	
	@Override
	public boolean reActivateIt()
	{
		setProcessed(false);
		return true;
	}	//	reActivateIt

	@Override
	public String getSummary()
	{
		return null;
	}	//	getSummary

	@Override
	public String getDocumentInfo()
	{
		return null;
	}	//	getDocumentInfo

	@Override
	public String getProcessMsg()
	{
		return m_processMsg;
	}	//	getProcessMsg

	@Override
	public int getDoc_User_ID()
	{
		return 0;
	}	//	getDoc_User_ID

	@Override
	public int getC_Currency_ID()
	{
		return 297;
	}	//	getC_Currency_ID

	@Override
	public BigDecimal getApprovalAmt()
	{
		return Env.ZERO;
	}	//	getApprovalAmt
	
	public int getAgencyNoAsInt() {
		String agencyNo = TextUtil.toNumeric(super.getlbr_AgencyNo());
		return agencyNo.isBlank() ? 0 : Integer.valueOf(agencyNo).intValue();
	}	//	getAgencyNoAsInt
	
	public int getAccountNoAsInt() {
		String accountNo = TextUtil.toNumeric(super.getAccountNo());
		return accountNo.isBlank() ? 0 : Integer.valueOf(accountNo).intValue();
	}	//	getAccountNoAsInt
	
	public int getAccountVDAsInt() {
		String accountVD = TextUtil.toNumeric(super.getLBR_BankAccountVD());
		return accountVD.isBlank() ? 0 : Integer.valueOf(accountVD).intValue();
	}	//	getAccountNoAsInt
	
	public int getRoutingNoAsInt() {
		String routingNo = TextUtil.toNumeric(super.getRoutingNo());
		return routingNo.isBlank() ? 0 : Integer.valueOf(routingNo).intValue();
	}	//	getRoutingNoAsInt
}	//	MLBRCNABFile
