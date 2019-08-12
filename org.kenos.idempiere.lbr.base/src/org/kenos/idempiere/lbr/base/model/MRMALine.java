package org.kenos.idempiere.lbr.base.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.compiere.model.MRMA;
import org.compiere.util.DB;

/**
 * 		MRMA
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MRMALine.java, v1.0 2019/08/12 1:53:09 PM, ralexsander Exp $
 */
public class MRMALine extends org.compiere.model.MRMALine
{
	/**
	 * 	Serial ID
	 */
	private static final long serialVersionUID = 9217708727707191292L;

	public MRMALine (Properties ctx, int M_RMALine_ID, String trxName)
	{
		super (ctx, M_RMALine_ID, trxName);
	}	//	MRMALine
	
	public MRMALine (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MRMALine
	
	/**
	 * 	Called after Save for Post-Save Operation
	 * 	@param newRecord new record
	 *	@param success true if save operation was success
	 *	@return if save was a success
	 */
	@Override
	protected boolean afterSave (boolean newRecord, boolean success)
	{
		if (success)
			updateHeader();
		//
		return success;
	}	//	afterSave
	
	@Override
	protected boolean afterDelete (boolean success)
	{
		if (success)
			updateHeader();
		//
		return success;
	}	//	afterDelete

	/**
	 * 	Update Header
	 */
	private void updateHeader () 
	{
		String sql = "UPDATE " + MRMA.Table_Name + " SET " + MRMA.COLUMNNAME_Amt + 
				"=(SELECT SUM(rl." + COLUMNNAME_LineNetAmt + ") FROM " + Table_Name + 
				" rl WHERE rl." + COLUMNNAME_M_RMA_ID + "=" + MRMA.Table_Name + "." + COLUMNNAME_M_RMA_ID + ") " + 
				"WHERE " + MRMA.Table_Name + "." + COLUMNNAME_M_RMA_ID + "=?";
		int no = DB.executeUpdate(sql, getM_RMA_ID(), get_TrxName());
		if (no != 1)
			log.warning("(1) #" + no);
	}	//	updateHeader
}	//	MRMALine
