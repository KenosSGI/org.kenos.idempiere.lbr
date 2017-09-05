package org.kenos.idempiere.lbr.base.model;

import java.sql.ResultSet;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.process.DocOptions;

/**
 * 		MRequisiton allowing cancellation
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MRequisition.java, v1.0 2017/MM/DD 10:25:35 AM, ralexsander Exp $
 */
public class MRequisition extends org.compiere.model.MRequisition implements DocOptions
{
	/**
	 * 	Serial ID
	 */
	private static final long serialVersionUID = -3414632071474136202L;

	public MRequisition (Properties ctx, int M_Requisition_ID, String trxName)
	{
		super(ctx, M_Requisition_ID, trxName);
	}	//	MRequisition
	
	public MRequisition (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//	MRequisition
	
	/**
	 * 	Reverse Correction
	 * 	@return true if success 
	 */
	@Override
	public boolean reverseCorrectIt()
	{
		if (log.isLoggable(Level.INFO)) log.info("reverseCorrectIt - " + toString());
		// Before reverseCorrect
		String m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_REVERSECORRECT);
		if (m_processMsg != null)
			return false;

		// After reverseCorrect
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_REVERSECORRECT);
		if (m_processMsg != null)
			return false;

		return true;
	}	//	reverseCorrectionIt

	@Override
	public int customizeValidActions(String docStatus, Object processing,
			String orderType, String isSOTrx, int AD_Table_ID, String[] docAction,
			String[] options, int index)
	{
		if (DOCSTATUS_Completed.equals(docStatus))
		{
			options[index++] = DOCACTION_Reverse_Correct;
		}
		//
		return index;
	}	//	customizeValidActions
}	//	MRequisition
