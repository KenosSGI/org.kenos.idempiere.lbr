package org.kenos.idempiere.lbr.base.model;

import java.io.File;
import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.Properties;

import org.adempierelbr.model.X_LBR_ProductionBatch;
import org.compiere.model.MProduction;
import org.compiere.model.Query;
import org.compiere.model.X_M_Production;
import org.compiere.process.DocAction;
import org.compiere.process.DocOptions;
import org.compiere.process.DocumentEngine;

/**
 * Implements the production batch processing logic for the MLBR module, handling
 * the creation, validation, and status management of production batches. This class
 * extends the base production batch functionality and integrates document action
 * and options interfaces for comprehensive process control.
 * 
 * @author Ricardo Santana (Kenos, www.kenos.com.br)
 */
public class MLBRProductionBatch extends X_LBR_ProductionBatch implements DocAction, DocOptions
{
	/**
     * Unique identifier for serialization. Ensures that a deserialized object matches this version of the class.
     */
	private static final long serialVersionUID = -1108801215613775754L;

	/**
     * Constructs a new MLBRProductionBatch instance using the specified context, production batch ID, and transaction name.
     * This constructor is typically used when creating a new instance based on an existing database record.
     */
	public MLBRProductionBatch (Properties ctx, int LBR_ProductionBatch_ID, String trxName)
	{
		super (ctx, LBR_ProductionBatch_ID, trxName);
	}	//	MLBRProductionBatch
	
	/**
     * Constructs a new MLBRProductionBatch instance for an existing database record, identified by a ResultSet.
     * This constructor is used when loading an instance from a database query result.
     */
	public MLBRProductionBatch (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRProductionBatch

    /** Holds the message describing the outcome of the last process action. */
	private String		m_processMsg = null;

	/** 
	 * Set Document Status.
	 * @param DocStatus 
	 * The current status of the document
	 */
	@Override
	public void setDocStatus(String newStatus) {
		super.setDocStatus(newStatus);
	}

	/** 
	 * Get Document Status.
	 * @return The current status of the document
	 */
	@Override
	public String getDocStatus() {
		return super.getDocStatus();
	}

	@Override
	public boolean processIt(String action) throws Exception {
		m_processMsg = null;
		//
		DocumentEngine engine = new DocumentEngine (this, getDocStatus());
		return engine.processIt (action, getDocAction());
	}

	@Override
	public boolean unlockIt() {
		return true;
	}

	@Override
	public boolean invalidateIt() {
		return true;
	}

	@Override
	public String prepareIt() {
		getProduction().stream()
			.filter(p -> !p.isProcessed() && MProduction.ISCREATED_No.equals(p.getIsCreated()))
			.forEach(p -> {
				p.createLines(false);
				p.save();
			});
			
		return STATUS_InProgress;
	}	//	prepareIt

	@Override
	public boolean approveIt() {
		return false;
	}

	@Override
	public boolean rejectIt() {
		return false;
	}

	@Override
	public String completeIt() {
		if (m_processMsg != null && !m_processMsg.isBlank())
			return STATUS_Invalid;

		getProduction().stream()
			.filter(p -> !p.isProcessed() && MProduction.ISCREATED_Yes.equals(p.getIsCreated()))
			.forEach(p -> {
				String status = p.completeIt();
				p.setDocStatus(status);
				p.save();
			});;
		
		setProcessed(true);
		setDocAction(ACTION_None);
		
		return STATUS_Completed;
	}	//	completeIt

	@Override
	public boolean voidIt() {
		return true;		
	}	//	voidIt

	@Override
	public boolean closeIt() {
		return false;
	}

	@Override
	public boolean reverseCorrectIt() {
		return false;
	}

	@Override
	public boolean reverseAccrualIt() {
		return false;
	}

	@Override
	public boolean reActivateIt() {
		return false;
	}

	@Override
	public String getSummary() {
		return "";
	}

	@Override
	public String getDocumentInfo() {
		return getDocumentNo();
	}

	@Override
	public File createPDF() {
		return null;
	}

	@Override
	public String getProcessMsg() {
		return m_processMsg;
	}

	@Override
	public int getDoc_User_ID() {
		return 0;
	}

	@Override
	public int getC_Currency_ID() {
		return 0;
	}

	@Override
	public BigDecimal getApprovalAmt() {
		return null;
	}

	@Override
	public String getDocAction() {
		return super.getDocAction();
	}

	/**
     * Customizes valid document actions based on the current document status and processing state.
     * Adjusts the available document actions in the options array based on the document's current state,
     * streamlining process flow control for production batches.
     *
     * @param docStatus Current status of the document.
     * @param processing Current processing state of the document.
     * @param orderType Type of the order, if applicable.
     * @param isSOTrx Indicates if this is a sales transaction.
     * @param AD_Table_ID The table ID related to the document.
     * @param docAction The current document action.
     * @param options Array of document action options to be adjusted.
     * @param index Current index for option adjustment.
     * @return The number of valid actions available after adjustment.
     */
	@Override
	public int customizeValidActions (String docStatus, Object processing,
			String orderType, String isSOTrx, int AD_Table_ID, String[] docAction,
			String[] options, int index)
	{
		if (DOCSTATUS_Completed.equals(docStatus)) {
			options[0] = null;
			options[1] = null;
		}
		else if (DOCSTATUS_Drafted.equals(docStatus)) {
			options[0] = DOCACTION_Prepare;
			options[1] = null;
		}
		else if (DOCSTATUS_InProgress.equals(docStatus)) {
			options[0] = DOCACTION_Complete;
			options[1] = DOCACTION_Prepare;
		}

		//	Default
		options[2] = null;
		options[3] = null;
		options[4] = null;
		//
		return (int) Arrays.stream(options).filter(Objects::nonNull).count();
	}	//	customizeValidActions
	
	/**
     * Retrieves a list of MProduction instances associated with this production batch.
     * This method queries the database for related production records that are not voided or reversed,
     * wrapping each result into an MProduction instance for further processing.
     *
     * @return A list of MProduction instances associated with this batch.
     */
	public List<MProduction> getProduction ()
	{
		List<MProduction> productions = new ArrayList<MProduction>();
		
		String whereClause = COLUMNNAME_LBR_ProductionBatch_ID + "=? AND DocStatus NOT IN ('RE', 'VO')";
		List<X_M_Production> list = new Query (getCtx(), MProduction.Table_Name, whereClause, get_TrxName())
			.setParameters(getLBR_ProductionBatch_ID())
			.list();
		
		//	Include in list
		list.forEach(p -> productions.add(new MProduction(p.getCtx(), p.getM_Production_ID(), p.get_TrxName())));
		
		return productions;
	}	//	getProduction
}	//	MLBRProductionBatch
