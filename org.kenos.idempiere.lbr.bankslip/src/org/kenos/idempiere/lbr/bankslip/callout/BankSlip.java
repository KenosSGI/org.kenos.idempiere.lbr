package org.kenos.idempiere.lbr.bankslip.callout;

import java.sql.Timestamp;
import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MBankAccount;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoicePaySchedule;
import org.compiere.model.Query;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlip;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipConfig;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipContract;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipFold;

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

		mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_IsAccepted, config.getLBR_IsAccepted());
		mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_ReturnAction, config.getLBR_ReturnAction());
		mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_ReturnDays, config.getLBR_ReturnDays());
		mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_DistributedVia, config.getLBR_DistributedVia());
		
		//	Interest
		mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_InterestType, config.getLBR_InterestType());
		mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_InterestValue, config.getLBR_InterestValue());
		mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_InterestDays, config.getLBR_InterestDays());

		//	Penalty
		mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_PenaltyType, config.getLBR_PenaltyType());
		mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_PenaltyValue, config.getLBR_PenaltyValue());
		mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_PenaltyDays, config.getLBR_PenaltyDays());
		
		//	Protest
		mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_ProtestType, config.getLBR_ProtestType());
		mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_ProtestDays, config.getLBR_ProtestDays());
		
		return "";
	}}	//	start
	
	/**
	 * 	Fill dependent fields of bank account
	 */
	public static class Fold implements IColumnCallout { @Override public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
	{
		if (value == null)
			return "";
		
		MLBRBankSlipFold fold = new MLBRBankSlipFold (ctx, (Integer) mTab.getValue (MLBRBankSlip.COLUMNNAME_LBR_BankSlipFold_ID), null);

		mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_IssueType, fold.getLBR_IssueType());
		
		return "";
	}}	//	start
	
	/**
	 * 	Fill dependent fields of bank account
	 */
	public static class Interest implements IColumnCallout { @Override public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
	{
		Timestamp dueDate = (Timestamp) mTab.getValue (MLBRBankSlip.COLUMNNAME_DueDate);
		String interestType = (String) mTab.getValue (MLBRBankSlip.COLUMNNAME_LBR_InterestType);
		
		//	Mandatory field, safe to use primitive object
		int days = (Integer) mTab.getValue (MLBRBankSlip.COLUMNNAME_LBR_InterestDays);
		
		if (interestType == null || MLBRBankSlip.LBR_INTERESTTYPE_DoNotCharge.equals (interestType))
			mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_InterestDate, null);

		else
			mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_InterestDate, MLBRBankSlipConfig.addDays(dueDate, days));
			
		return "";
	}}	//	start
	
	/**
	 * 	Fill dependent fields of bank account
	 */
	public static class Penalty implements IColumnCallout { @Override public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
	{
		Timestamp dueDate = (Timestamp) mTab.getValue (MLBRBankSlip.COLUMNNAME_DueDate);
		String penaltyType = (String) mTab.getValue (MLBRBankSlip.COLUMNNAME_LBR_PenaltyType);
		
		//	Mandatory field, safe to use primitive object
		int days = (Integer) mTab.getValue (MLBRBankSlip.COLUMNNAME_LBR_PenaltyDays);
		
		if (penaltyType == null)
			mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_PenaltyDate, null);

		else
			mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_PenaltyDate, MLBRBankSlipConfig.addDays(dueDate, days));
		
		
		return "";
	}}	//	start
	
	/**
	 * 	Fill dependent fields of bank account
	 */
	public static class Protest implements IColumnCallout { @Override public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
	{
		Timestamp dueDate = (Timestamp) mTab.getValue (MLBRBankSlip.COLUMNNAME_DueDate);
		String protestType = (String) mTab.getValue (MLBRBankSlip.COLUMNNAME_LBR_ProtestType);
		
		//	Mandatory field, safe to use primitive object
		int days = (Integer) mTab.getValue (MLBRBankSlip.COLUMNNAME_LBR_ProtestDays);
		
		if (protestType == null || MLBRBankSlip.LBR_PROTESTTYPE_DoNotProtest.equals (protestType))
			mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_ProtestDate, null);

		else if (TextUtil.match(protestType, MLBRBankSlip.LBR_PROTESTTYPE_ProtestCalendarDays, MLBRBankSlip.LBR_PROTESTTYPE_ProtestForBankruptcyCalendarDays))
			mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_ProtestDate, MLBRBankSlipConfig.addDays(dueDate, days));
		
		else if (TextUtil.match(protestType, MLBRBankSlip.LBR_PROTESTTYPE_ProtestBusinessDays, MLBRBankSlip.LBR_PROTESTTYPE_ProtestForBankruptcyWorkingDays))
			mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_ProtestDate, MLBRBankSlipConfig.addDays(dueDate, true, days));
		
		return "";
	}}	//	start
	
	/**
	 * 	Fill dependent fields of bank account
	 */
	public static class BPartner implements IColumnCallout { @Override public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
	{
		Integer C_BPartner_ID = (Integer) mTab.getValue (MLBRBankSlip.COLUMNNAME_C_BPartner_ID);
		if (C_BPartner_ID == null)
			return "";
		//
		String sql = MBPartnerLocation.COLUMNNAME_C_BPartner_ID + "=? AND " + MBPartnerLocation.COLUMNNAME_IsPayFrom + "='Y'";
		//
		int[] locations = new Query (ctx, MBPartnerLocation.Table_Name, sql, null).setParameters(C_BPartner_ID).getIDs();
		if (locations.length == 1)
			mTab.setValue (MLBRBankSlip.COLUMNNAME_C_BPartner_Location_ID, locations[0]);
		
		return "";
	}}	//	start
	
	/**
	 * 	Fill dependent fields of bank account
	 */
	public static class Invoice implements IColumnCallout { @Override public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
	{
		Integer C_Invoice_ID = (Integer) mTab.getValue (MLBRBankSlip.COLUMNNAME_C_Invoice_ID);
		if (C_Invoice_ID == null)
			return "";
		
		MInvoice invoice = new MInvoice (ctx, C_Invoice_ID, null);
		//
		mTab.setValue (MLBRBankSlip.COLUMNNAME_GrandTotal, invoice.getGrandTotal());
		mTab.setValue (MLBRBankSlip.COLUMNNAME_C_BPartner_ID, invoice.getC_BPartner_ID());
		
		return "";
	}}	//	start
	
	/**
	 * 	Fill dependent fields of bank account
	 */
	public static class PaySchedule implements IColumnCallout { @Override public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
	{
		Integer C_InvoicePaySchedule_ID = (Integer) mTab.getValue (MLBRBankSlip.COLUMNNAME_C_InvoicePaySchedule_ID);
		if (C_InvoicePaySchedule_ID == null)
			return "";
		
		MInvoicePaySchedule ips = new MInvoicePaySchedule (ctx, C_InvoicePaySchedule_ID, null);
		//
		mTab.setValue (MLBRBankSlip.COLUMNNAME_GrandTotal, ips.getDueAmt());
		mTab.setValue (MLBRBankSlip.COLUMNNAME_DueDate, ips.getDueDate());
		
		//	Discount 1
		if (ips.getDiscountAmt().signum() == 1 
				&& (ips.getDiscountDate().before(ips.getDueDate()) || ips.getDiscountDate().equals(ips.getDueDate())))
		{
			mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_Discount1Date, ips.getDiscountDate());
			mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_Discount1Value, ips.getDiscountAmt());
			mTab.setValue (MLBRBankSlip.COLUMNNAME_LBR_Discount1Type, MLBRBankSlip.LBR_DISCOUNT1TYPE_FixedAmountUntilDateSet);
		}
		
		return "";
	}}	//	start
}	//	BankSlip
