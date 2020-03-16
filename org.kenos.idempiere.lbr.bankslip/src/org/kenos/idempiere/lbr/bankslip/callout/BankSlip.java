package org.kenos.idempiere.lbr.bankslip.callout;

import java.sql.Timestamp;
import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MBankAccount;
import org.compiere.model.Query;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlip;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipConfig;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipContract;

/**
 * 		Callout for Bank Slip
 * 	@author Ricardo Santana
 */
public class BankSlip 
{
	/**
	 * 	Fill bank account field with bank
	 */
	public static class Bank implements IColumnCallout { @Override public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
	{
		if (value == null)
			return "";

		int[] accounts = new Query (ctx, MBankAccount.Table_Name, MBankAccount.COLUMNNAME_C_Bank_ID + "=? AND " + MBankAccount.COLUMNNAME_AD_Org_ID + "=?", null)
			.setParameters(mTab.getValue(MLBRBankSlip.COLUMNNAME_C_Bank_ID), mTab.getValue(MLBRBankSlip.COLUMNNAME_AD_Org_ID))
			.getIDs();
		
		//	If there is only one account, then automatically set
		if (accounts.length == 1)
			mTab.setValue(MLBRBankSlip.COLUMNNAME_C_BankAccount_ID, accounts[0]);
		
		return "";
	}}	//	start
	
	/**
	 * 	Fill dependent fields of bank account
	 */
	public static class BankAccount implements IColumnCallout { @Override public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
	{
		if (value == null)
			return "";
		
		int[] accounts = new Query (ctx, MLBRBankSlipContract.Table_Name, MBankAccount.COLUMNNAME_C_BankAccount_ID + "=?", null)
			.setParameters(mTab.getValue(MLBRBankSlip.COLUMNNAME_C_BankAccount_ID))
			.getIDs();
		
		//	If there is only one account, then automatically set
		if (accounts.length == 1)
			mTab.setValue(MLBRBankSlip.COLUMNNAME_LBR_BankSlipContract_ID, accounts[0]);
		
		return "";
	}}	//	start
	
	/**
	 * 	Fill dependent fields of bank account
	 */
	public static class BankContract implements IColumnCallout { @Override public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
	{
		if (value == null)
			return "";
		
		MLBRBankSlipContract contract = new MLBRBankSlipContract (ctx, (Integer) mTab.getValue (MLBRBankSlip.COLUMNNAME_LBR_BankSlipContract_ID), null);

		mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_BankSlipLayout_ID, contract.getLBR_BankSlipLayout_ID ());
		mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_BankSlipFold_ID, contract.getLBR_BankSlipFold_ID ());
		mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_BankSlipKind_ID, contract.getLBR_BankSlipKind_ID ());
		mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_RegisterType, contract.getLBR_RegisterType ());
		
		if (contract.getLBR_BankSlipConfig_ID() < 1)
			return "";
		
		//	Set fields from configuration
		MLBRBankSlipConfig config = new MLBRBankSlipConfig (ctx, contract.getLBR_BankSlipConfig_ID(), null);

		Timestamp dueDate = (Timestamp) mTab.getValue (MLBRBankSlip.COLUMNNAME_DueDate);

		mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_IsAccepted, config.getLBR_IsAccepted());
		mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_IssueType, config.getLBR_IssueType());
		mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_ReturnAction, config.getLBR_ReturnAction());
		mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_ReturnDays, config.getLBR_ReturnDays());
		
		//	Interest
		mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_InterestType, config.getLBR_InterestType());
		mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_InterestValue, config.getLBR_InterestValue());
		mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_InterestDate, config.getLBR_InterestDate(dueDate));

		//	Penalty
		mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_PenaltyType, config.getLBR_PenaltyType());
		mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_PenaltyValue, config.getLBR_PenaltyValue());
		mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_PenaltyDate, config.getLBR_PenaltyDate(dueDate));
		
		//	Protest
		mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_ProtestType, config.getLBR_ProtestType());
		mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_ProtestDate, config.getLBR_ProtestDate(dueDate));
		
		return "";
	}}	//	start
}	//	BankSlip
