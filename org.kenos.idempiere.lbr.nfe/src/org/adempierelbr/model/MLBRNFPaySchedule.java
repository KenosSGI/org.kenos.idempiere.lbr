package org.adempierelbr.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.util.CLogger;
import org.compiere.util.DB;

/**
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRNFPaySchedule.java, v1.0 2018/09/14 14:26:00 PM, rfeitosa Exp $
 */
public class MLBRNFPaySchedule extends X_LBR_NFPaySchedule
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/** Static Logger					*/
	private static CLogger		s_log = CLogger.getCLogger (MLBRNFPaySchedule.class);

	/**
	 * 
	 * @param ctx
	 * @param LBR_NFPaySchedule_ID
	 * @param trxName
	 */
	public MLBRNFPaySchedule(Properties ctx, int LBR_NFPaySchedule_ID, String trxName)
	{
		super(ctx, LBR_NFPaySchedule_ID, trxName);
	}
	
	/** Load Constructor */
    public MLBRNFPaySchedule (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }
	
	/**
	 * 	Get Payment Schedule of the Nota Fiscal
	 * 	@param ctx context
	 * 	@param LBR_NotaFiscal_ID nota fiscal id (direct)
	 * 	@param LBR_NFPaySchedule_ID id (indirect)
	 *	@param trxName transaction
	 *	@return array of schedule
	 */
	public static MLBRNFPaySchedule[] getNFPaySchedule(Properties ctx, 
		int LBR_NotaFiscal_ID, int LBR_NFPaySchedule_ID, String trxName)
	{
		StringBuilder sql = new StringBuilder("SELECT * FROM LBR_NFPaySchedule nfps WHERE IsActive='Y' ");
		if (LBR_NotaFiscal_ID != 0)
			sql.append("AND LBR_NotaFiscal_ID=? ");
		else
			sql.append("AND EXISTS (SELECT * FROM LBR_NFPaySchedule x")
			.append(" WHERE x.LBR_NFPaySchedule_ID=? AND nfps.LBR_NotaFiscal_ID=x.LBR_NotaFiscal_ID) ");
		sql.append("ORDER BY DueDate");
		//
		ArrayList<MLBRNFPaySchedule> list = new ArrayList<MLBRNFPaySchedule>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), trxName);
			if (LBR_NotaFiscal_ID != 0)
				pstmt.setInt(1, LBR_NotaFiscal_ID);
			else
				pstmt.setInt(1, LBR_NFPaySchedule_ID);
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				list.add (new MLBRNFPaySchedule(ctx, rs, trxName));
			}
		}
		catch (Exception e)
		{
			s_log.log(Level.SEVERE, "getNFPaySchedule", e); 
		}
		finally
		{
			DB.close(rs, pstmt);
			rs = null;
			pstmt = null;
		}
		
		MLBRNFPaySchedule[] retValue = new MLBRNFPaySchedule[list.size()];
		list.toArray(retValue);
		return retValue;
	}	//	getSchedule

}
