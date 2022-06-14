package org.kenos.idempiere.lbr.bankslip.callout;

import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.adempiere.model.POWrapper;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.adempierelbr.wrapper.I_W_C_Order;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MBPartner;
import org.compiere.model.MInvoice;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipContract;

/**
 * 		Callout for RMA
 * 	@author Ricardo Santana
 *	@version $Id: RMA.java, v1.0 2017/MM/DD 5:10:03 PM, ralexsander Exp $
 */
public class SalesFields implements IColumnCallout 
{
	/**
	 * 	Fill the PaymentRule based on BPartner
	 */
	@Override
	public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
	{
		Integer C_BPartner_ID = (Integer) mTab.getValue (MInvoice.COLUMNNAME_C_BPartner_ID);

		if (C_BPartner_ID == null 
				|| C_BPartner_ID.intValue() <= 0
				|| !mTab.getValueAsBoolean(MInvoice.COLUMNNAME_IsSOTrx))
			return "";

		I_W_C_BPartner bpW = POWrapper.create(new MBPartner (ctx, C_BPartner_ID, null), I_W_C_BPartner.class);
		
		//	Bank Account
		int LBR_BankSlipContract_ID = bpW.getLBR_BankSlipContract_ID();
		if (LBR_BankSlipContract_ID > 0)
		{
			Object org = mTab.getValue(I_W_C_Order.COLUMNNAME_AD_Org_ID);
			//
			MLBRBankSlipContract bc = new MLBRBankSlipContract (ctx, LBR_BankSlipContract_ID, null);
			if (org != null && ((Integer)org).intValue() == bc.getC_BankAccount().getAD_Org_ID())
				mTab.setValue(I_W_C_BPartner.COLUMNNAME_LBR_BankSlipContract_ID, LBR_BankSlipContract_ID);
		}
		
		return "";
	}	//	start
}	//	PaymentRule
