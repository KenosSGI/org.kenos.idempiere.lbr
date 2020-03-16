package org.kenos.idempiere.lbr.bankslip.callout;

import java.util.ArrayList;
import java.util.List;

import org.adempiere.base.IColumnCallout;
import org.adempiere.base.IColumnCalloutFactory;
import org.adempierelbr.util.TextUtil;
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
		}
		
		IColumnCallout[] result = new IColumnCallout[callouts.size()];
		return callouts.toArray (result);
	}	//	getColumnCallouts
}	//	CalloutFactory
