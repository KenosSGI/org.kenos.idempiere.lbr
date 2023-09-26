package org.kenos.idempiere.lbr.bankslip.callout;

import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.adempierelbr.model.I_LBR_Bank;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.I_C_Bank;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBank;

/**
 * 		Callout for RecalculateTaxes
 * 	@author Ricardo Santana
 *	@version $Id: Bank.java, v1.0 2017/MM/DD 5:10:03 PM, ralexsander Exp $
 */
public class Bank implements IColumnCallout 
{
	/**
	 * 	Fill bank field
	 */
	@Override
	public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
	{
		//	Try to find the LBR Bank
		Integer LBR_Bank_ID = null;
		LBR_Bank_ID = (Integer) mTab.getValue(I_LBR_Bank.COLUMNNAME_LBR_Bank_ID);
		if (LBR_Bank_ID == null || LBR_Bank_ID.intValue() == 0) return "";
		
		MLBRBank banco = new MLBRBank (ctx, LBR_Bank_ID, null);
		String routingNo = banco.getRoutingNo();
		String name      = banco.getName().trim();
		
		mTab.setValue(I_C_Bank.COLUMNNAME_RoutingNo, routingNo);
		mTab.setValue(I_C_Bank.COLUMNNAME_Name, name);
		
		return "";
	}	//	start
}	//	Bank
