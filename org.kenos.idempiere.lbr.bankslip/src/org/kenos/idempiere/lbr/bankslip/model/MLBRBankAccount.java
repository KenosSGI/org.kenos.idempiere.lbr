package org.kenos.idempiere.lbr.bankslip.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.adempierelbr.wrapper.I_W_C_BankAccount;
import org.compiere.model.MBankAccount;

/**
 * 	Bank Account model
 * 	@author Ricardo Santana
 */
public class MLBRBankAccount extends MBankAccount
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
	public MLBRBankAccount (Properties ctx, int C_BankAccount_ID, String trx)
	{
		super (ctx, C_BankAccount_ID, trx);
	}	//	MLBRBankAccount

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRBankAccount (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRBankAccount
	
	/**
	 * 	Bank Account without verifying digit
	 */
	public String getAccountNoWOVD()
	{
		String accountNo = getAccountNo();
		//
		if (accountNo != null && accountNo.indexOf("-") > 0)
			return accountNo.split("-")[0];
		//
		return accountNo;
	}	//	getFormattedAccountNo
	
	/**
	 * 	Bank Account Verifying Digit
	 */
	public String getAccountVD()
	{
		String accountNo = getAccountNo();
		//
		if (accountNo != null && accountNo.indexOf("-") > 0)
			return accountNo.split("-")[1];
		//
		return "";
	}	//	getAccountVD
	
	/**
	 *  Agency
	 */
	public String getAgencyNo()
	{
		String agencyNo = get_ValueAsString(I_W_C_BankAccount.COLUMNNAME_lbr_AgencyNo);
		//
		if (agencyNo != null && agencyNo.indexOf("-") > 0)
			return agencyNo.split("-")[0];
		//
		return agencyNo;
	}	//	getAgencyNo
	
	/**
	 * 	Agency Verifying Digit
	 */
	public String getAgencyVD()
	{
		String agencyNo = get_ValueAsString(I_W_C_BankAccount.COLUMNNAME_lbr_AgencyNo);
		//
		if (agencyNo != null && agencyNo.indexOf("-") > 0)
			return agencyNo.split("-")[1];
		//
		return "";
	}	//	getAgencyVD
	
}	//	MLBRBankAccount
