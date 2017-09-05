package org.kenos.idempiere.lbr.base.model;

import java.sql.ResultSet;
import java.util.Arrays;
import java.util.List;
import java.util.Properties;

import org.compiere.process.DocOptions;
import org.compiere.process.DocumentEngine;

/**
 * 		MRMA
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MRMA.java, v1.0 2017/09/05 1:53:09 PM, ralexsander Exp $
 */
public class MRMA extends org.compiere.model.MRMA implements DocOptions
{
	/**
	 * 	Serial ID
	 */
	private static final long serialVersionUID = 8052957837388478900L;

	public MRMA (Properties ctx, int M_RMA_ID, String trxName)
	{
		super (ctx, M_RMA_ID, trxName);
	}	//	MRMA
	
	public MRMA (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MRMA

	/**
	 * 	Add custom document options
	 */
	@Override
	public int customizeValidActions (String docStatus, Object processing,
			String orderType, String isSOTrx, int AD_Table_ID, String[] docAction,
			String[] options, int index)
	{
		List<String> list = Arrays.asList (options);
		//
		if (docStatus.equals(DocumentEngine.STATUS_Drafted)
				|| docStatus.equals(DocumentEngine.STATUS_InProgress)
				|| docStatus.equals(DocumentEngine.STATUS_Invalid))
		{
			if (!list.contains(DocumentEngine.ACTION_Prepare))
				options[index++] = DocumentEngine.ACTION_Prepare;
			if (!list.contains(DocumentEngine.ACTION_Close))
				options[index++] = DocumentEngine.ACTION_Close;
			if (!list.contains(DocumentEngine.ACTION_Void))
				options[index++] = DocumentEngine.ACTION_Void;
													
		}
		//	Complete                    ..  CO
		else if (docStatus.equals(DocumentEngine.STATUS_Completed))
		{
			if (!list.contains(DocumentEngine.ACTION_Void))
				options[index++] = DocumentEngine.ACTION_Void;
			if (!list.contains(DocumentEngine.ACTION_ReActivate))
				options[index++] = DocumentEngine.ACTION_ReActivate;
		}
		return index;
	}	//	customizeValidActions
}	//	MRMA
