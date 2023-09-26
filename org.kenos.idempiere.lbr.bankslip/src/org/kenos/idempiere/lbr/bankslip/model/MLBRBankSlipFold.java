package org.kenos.idempiere.lbr.bankslip.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.adempierelbr.model.X_LBR_BankSlipFold;

/**
 * 	Brazilian Bank model
 * 	@author Ricardo Santana
 */
public class MLBRBankSlipFold extends X_LBR_BankSlipFold
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
	public MLBRBankSlipFold (Properties ctx, int LBR_BankSlipFold_ID, String trx)
	{
		super (ctx, LBR_BankSlipFold_ID, trx);
	}	//	MLBRBankSlipFold

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRBankSlipFold (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRBankSlipFold
}	//	MLBRBankSlipFold
