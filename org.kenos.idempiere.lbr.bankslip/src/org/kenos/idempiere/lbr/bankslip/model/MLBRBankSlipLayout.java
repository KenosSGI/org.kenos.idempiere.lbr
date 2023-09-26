package org.kenos.idempiere.lbr.bankslip.model;

import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.adempierelbr.model.X_LBR_BankSlipLayout;
import org.compiere.model.Query;

/**
 * 	Brazilian Bank model
 * 	@author Ricardo Santana
 */
public class MLBRBankSlipLayout extends X_LBR_BankSlipLayout
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = -263371883991400518L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRBankSlipLayout (Properties ctx, int LBR_BankSlipLayout_ID, String trx)
	{
		super (ctx, LBR_BankSlipLayout_ID, trx);
	}	//	MLBRBankSlipLayout

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRBankSlipLayout (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRBankSlipLayout
	
	/**
	 * 	Get Bank Slip Occurrences
	 * 	@param isSOTrx
	 * 	@return
	 */
	public List<MLBRBankSlipOccur> getOccurrences ()
	{
		String sql = MLBRBankSlipOccur.COLUMNNAME_LBR_BankSlipLayout_ID + "=?";
		return new Query (getCtx(), MLBRBankSlipOccur.Table_Name, sql, get_TrxName()).setParameters(getLBR_BankSlipLayout_ID()).list();
	}	//	getOccurences
	
	/**
	 * 	Get Bank Slip Occurrences
	 * 	@param isSOTrx
	 * 	@return
	 */
	public List<MLBRBankSlipFold> getFolds ()
	{
		String sql = MLBRBankSlipFold.COLUMNNAME_LBR_BankSlipLayout_ID + "=?";
		return new Query (getCtx(), MLBRBankSlipFold.Table_Name, sql, get_TrxName()).setParameters(getLBR_BankSlipLayout_ID()).list();
	}	//	getFolds
	
	/**
	 * 	Get Bank Slip Occurrences
	 * 	@param isSOTrx
	 * 	@return
	 */
	public List<MLBRBankSlipOccur> getOccurrences (boolean isSOTrx)
	{
		String sql = MLBRBankSlipOccur.COLUMNNAME_IsSOTrx + "=? AND " + MLBRBankSlipOccur.COLUMNNAME_LBR_BankSlipLayout_ID + "=?";
		return new Query (getCtx(), MLBRBankSlipOccur.Table_Name, sql, get_TrxName()).setParameters(isSOTrx, getLBR_BankSlipLayout_ID()).list();
	}	//	getOccurences
	
	/**
	 * 	Delete record
	 * 	@return
	 */
	public boolean delete() 
	{
		return super.delete(true);
	}	//	delete
}	//	MLBRBankSlipLayout
