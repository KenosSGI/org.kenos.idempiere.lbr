package org.kenos.idempiere.lbr.tax.acct;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;

import org.adempiere.base.IDocFactory;
import org.compiere.acct.Doc;
import org.compiere.model.MAcctSchema;
import org.compiere.model.MAllocationHdr;
import org.compiere.model.MInvoice;
import org.compiere.model.MMatchInv;
import org.compiere.model.MMatchPO;
import org.compiere.model.MTable;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * 		Factory for Accounting
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: DocFactory.java, v1.0 2018/02/20 10:21:35 AM, ralexsander Exp $
 */
public class DocAcctFactory implements IDocFactory
{
	/**	Log	*/
	private final static CLogger s_log = CLogger.getCLogger (DocAcctFactory.class);
	
	/**
	 * 	Get document for accounting
	 */
	@Override
	public Doc getDocument (MAcctSchema as, int AD_Table_ID, int Record_ID, String trxName)
	{
		String tableName = MTable.getTableName(Env.getCtx(), AD_Table_ID);
		//
		Doc doc = null;
		StringBuffer sql = new StringBuffer("SELECT * FROM ")
			.append(tableName)
			.append(" WHERE ").append(tableName).append("_ID=? AND Processed='Y'");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql.toString(), trxName);
			pstmt.setInt (1, Record_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				doc = getDocument (as, AD_Table_ID, rs, trxName);
			}
			else
				s_log.severe("Not Found: " + tableName + "_ID=" + Record_ID);
		}
		catch (Exception e)
		{
			s_log.log (Level.SEVERE, sql.toString(), e);
		}
		finally
		{
			DB.close(rs, pstmt);
			rs = null;
			pstmt = null;
		}
		return doc;
	}	//	getDocument

	/**
	 * 	Get document for accounting
	 */
	@Override
	public Doc getDocument (MAcctSchema as, int AD_Table_ID, ResultSet rs, String trxName)
	{
		if (MInvoice.Table_ID == AD_Table_ID)
			return new Doc_Invoice (as, rs, trxName);
		if (MAllocationHdr.Table_ID == AD_Table_ID)
			return new Doc_AllocationHdr (as, rs, trxName);
		if (MMatchInv.Table_ID == AD_Table_ID)
			return new Doc_MatchInv (as, rs, trxName);
		if (MMatchPO.Table_ID == AD_Table_ID)
			return new Doc_MatchPO (as, rs, trxName);
		return null;
	}	//	getDocument
}	//	DocFactory
