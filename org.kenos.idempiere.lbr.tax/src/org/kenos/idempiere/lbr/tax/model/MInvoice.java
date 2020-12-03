package org.kenos.idempiere.lbr.tax.model;

import java.sql.ResultSet;
import java.util.Arrays;
import java.util.List;
import java.util.Properties;

import org.compiere.process.DocOptions;
import org.compiere.process.DocumentEngine;

/**
 * 		MInvoice
 * 
 * 	@author Rogério Feitosa
 *	@version $Id: MOrder.java, v1.0 2020/12/01 1:53:09 PM, rfeitosa Exp $
 */
public class MInvoice extends org.compiere.model.MInvoice implements DocOptions
{
	/**
	 * 	Serial ID
	 */
	private static final long serialVersionUID = 8052957837388478900L;

	public MInvoice (Properties ctx, int M_Order_ID, String trxName)
	{
		super (ctx, M_Order_ID, trxName);
	}	//	MInvoice
	
	public MInvoice (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MInvoice
	
	public int customizeValidActions (String docStatus, Object processing,
			String orderType, String isSOTrx, int AD_Table_ID, String[] docAction,
			String[] options, int index)
	{
		List<String> list = Arrays.asList (options);
		
		//	Completed
		if (docStatus.equals (DocumentEngine.STATUS_Drafted) || 
				docStatus.equals (DocumentEngine.STATUS_InProgress))
		{
			if (!list.contains(DocumentEngine.ACTION_Void))
				options[index++] = DocumentEngine.ACTION_Void;
			if (!list.contains(DocumentEngine.ACTION_Prepare))
				options[index++] = DocumentEngine.ACTION_Prepare;
			if (!list.contains(DocumentEngine.STATUS_Completed))
				options[index++] = DocumentEngine.STATUS_Completed;
		}
		return index;
	}	//	customizeValidActions

}	//	MInvoice
