package org.kenos.idempiere.lbr.bankslip.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.adempierelbr.model.X_LBR_BankSlipOccur;

/**
 * 	Brazilian Bank model
 * 	@author Ricardo Santana
 */
public class MLBRBankSlipOccur extends X_LBR_BankSlipOccur
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
	public MLBRBankSlipOccur (Properties ctx, int LBR_BankSlipOccur_ID, String trx)
	{
		super (ctx, LBR_BankSlipOccur_ID, trx);
	}	//	MLBRBankSlipOccur

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRBankSlipOccur (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRBankSlipOccur
}	//	MLBRBankSlipOccur
