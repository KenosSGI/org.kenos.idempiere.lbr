package org.kenos.idempiere.lbr.bankslip.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.adempierelbr.model.X_LBR_BankSlipContract;
import org.compiere.model.Query;
import org.compiere.util.Env;

/**
 * 	Bank Slip Contract (Boleto) model
 * 	@author Ricardo Santana
 */
public class MLBRBankSlipContract extends X_LBR_BankSlipContract
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = -2504280473369009963L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRBankSlipContract (Properties ctx, int LBR_BankSlipContract_ID, String trx)
	{
		super (ctx, LBR_BankSlipContract_ID, trx);
	}	//	MLBRBankSlipContract

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRBankSlipContract (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRBankSlipContract
	
	public static MLBRBankSlipContract get (int C_BankAccount_ID)
	{
		MLBRBankSlipContract bsc = new Query(Env.getCtx(),MLBRBankSlipContract.Table_Name, "C_BankAccount_ID=?", null)
									.setParameters(C_BankAccount_ID)
									.first();
		
		return bsc;
	}
}	//	MLBRBankSlipContract
