package org.kenos.idempiere.lbr.bankslip.callout;

import java.util.ArrayList;
import java.util.List;

import org.adempiere.base.IColumnCallout;
import org.adempiere.base.IColumnCalloutFactory;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MBank;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBank;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlip;

/**
 * 		Callout Factory
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 */
public class CalloutFactory implements IColumnCalloutFactory
{
	/**
	 * 	Register LBR callouts for columns
	 */
	@Override
	public IColumnCallout[] getColumnCallouts (String tableName, String columnName)
	{
		List<IColumnCallout> callouts = new ArrayList<IColumnCallout>();
		if (MLBRBankSlip.Table_Name.equals(tableName))
		{
			if (TextUtil.match (columnName, MLBRBankSlip.COLUMNNAME_C_Bank_ID))
				callouts.add (new BankSlip.Bank ());
			if (TextUtil.match (columnName, MLBRBankSlip.COLUMNNAME_C_BankAccount_ID))
				callouts.add (new BankSlip.BankAccount ());
			if (TextUtil.match (columnName, MLBRBankSlip.COLUMNNAME_LBR_BankSlipContract_ID))
				callouts.add (new BankSlip.BankContract ());
			if (TextUtil.match (columnName, MLBRBankSlip.COLUMNNAME_LBR_BankSlipFold_ID))
				callouts.add (new BankSlip.Fold ());
			if (TextUtil.match (columnName, MLBRBankSlip.COLUMNNAME_LBR_InterestType, MLBRBankSlip.COLUMNNAME_LBR_InterestDays))
				callouts.add (new BankSlip.Interest ());
			if (TextUtil.match (columnName, MLBRBankSlip.COLUMNNAME_LBR_PenaltyDays))
				callouts.add (new BankSlip.Penalty ());
			if (TextUtil.match (columnName, MLBRBankSlip.COLUMNNAME_LBR_ProtestType, MLBRBankSlip.COLUMNNAME_LBR_ProtestDays))
				callouts.add (new BankSlip.Protest ());
			if (TextUtil.match (columnName, MLBRBankSlip.COLUMNNAME_C_BPartner_ID))
				callouts.add (new BankSlip.BPartner ());
			if (TextUtil.match (columnName, MLBRBankSlip.COLUMNNAME_C_Invoice_ID))
				callouts.add (new BankSlip.Invoice ());
			if (TextUtil.match (columnName, MLBRBankSlip.COLUMNNAME_C_InvoicePaySchedule_ID))
				callouts.add (new BankSlip.PaySchedule ());
		}
		else if (MBank.Table_Name.equals(tableName))
		{
			if (TextUtil.match(columnName, MLBRBank.COLUMNNAME_LBR_Bank_ID))
				callouts.add (new Bank());
		}
		
		IColumnCallout[] result = new IColumnCallout[callouts.size()];
		return callouts.toArray (result);
	}	//	getColumnCallouts
}	//	CalloutFactory
