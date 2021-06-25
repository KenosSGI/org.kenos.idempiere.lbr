package org.kenos.idempiere.lbr.base.model;

import java.sql.ResultSet;
import java.util.Arrays;
import java.util.List;
import java.util.Properties;

import org.compiere.process.DocOptions;
import org.compiere.process.DocumentEngine;

/**
 * 		MInOut
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MInOut.java, v1.0 2021/06/24 1:53:09 PM, ralexsander Exp $
 */
public class MInOut extends org.compiere.model.MInOut implements DocOptions
{
	/**
	 * 	Serial ID
	 */
	private static final long serialVersionUID = 470532518469244667L;


	public MInOut (Properties ctx, int M_InOut_ID, String trxName)
	{
		super (ctx, M_InOut_ID, trxName);
	}	//	MInOut
	
	public MInOut (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MInOut

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
				|| docStatus.equals(DocumentEngine.STATUS_InProgress))
		{
			if (!list.contains(DocumentEngine.ACTION_Prepare))
				options[index++] = DocumentEngine.ACTION_Prepare;
													
		}
		return index;
	}	//	customizeValidActions
}	//	MInOut
