package org.kenos.idempiere.lbr.base.model;

import java.sql.ResultSet;
import java.util.Arrays;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.process.DocOptions;
import org.compiere.process.DocumentEngine;

/**
 * 		Customized model for MTimeExpense
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MTimeExpense.java, v1.0 2017/09/05 2:16:42 PM, ralexsander Exp $
 */
public class MTimeExpense extends org.compiere.model.MTimeExpense implements DocOptions
{
	/**
	 * 	Serial ID
	 */
	private static final long serialVersionUID = -4730535165751685543L;

	public MTimeExpense (Properties ctx, int S_TimeExpense_ID, String trxName)
	{
		super (ctx, S_TimeExpense_ID, trxName);
	}	//	MTimeExpense
	
	public MTimeExpense (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MTimeExpense
	
	/**
	 * 	Before Delete
	 *	@return true of it can be deleted
	 */
	protected boolean beforeDelete ()
	{
		if (isProcessed())
			return false;
		return true;
	}	//	beforeDelete
	
	/** 
	 * 	Re-activate
	 * 	@return true if success 
	 */
	@Override
	public boolean reActivateIt()
	{
		if (log.isLoggable(Level.INFO)) log.info("reActivateIt - " + toString());
		// Before reActivate
		String m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_REACTIVATE);
		if (m_processMsg != null)
			return false;	
		
		setProcessed (false);
		
		// After reActivate
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_REACTIVATE);
		if (m_processMsg != null)
			return false;
		
		return true;
	}	//	reActivateIt

	@Override
	public int customizeValidActions (String docStatus, Object processing,
			String orderType, String isSOTrx, int AD_Table_ID, String[] docAction,
			String[] options, int index)
	{
		List<String> list = Arrays.asList (options);
		
		//	Completed
		if (docStatus.equals (DocumentEngine.STATUS_Completed))
		{
			if (!list.contains(DocumentEngine.ACTION_Void))
				options[index++] = DocumentEngine.ACTION_Void;
			if (!list.contains(DocumentEngine.ACTION_ReActivate))
				options[index++] = DocumentEngine.ACTION_ReActivate;
		}
		return index;
	}	//	customizeValidActions
}	//	MTimeExpense
