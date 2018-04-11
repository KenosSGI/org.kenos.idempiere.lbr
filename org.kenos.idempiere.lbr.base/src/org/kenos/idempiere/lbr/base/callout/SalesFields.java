package org.kenos.idempiere.lbr.base.callout;

import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.adempiere.model.POWrapper;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.adempierelbr.wrapper.I_W_C_Invoice;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MBPartner;
import org.compiere.model.MInvoice;
import org.compiere.model.MOrder;

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

		//	Payment Rule
		if (bpW.getlbr_PaymentRule() != null)
			mTab.setValue(I_W_C_BPartner.COLUMNNAME_lbr_PaymentRule, bpW.getlbr_PaymentRule());
		
		//	Bank Account
		if (bpW.getC_BankAccount_ID() > 0)
			mTab.setValue(I_W_C_BPartner.COLUMNNAME_C_BankAccount_ID, bpW.getC_BankAccount_ID());
		
		//	Orders only
		if (MOrder.Table_Name.equals (mTab.getTableName()))
		{
			//	Shipper
			if (bpW.getM_Shipper_ID() > 0)
				mTab.setValue(I_W_C_BPartner.COLUMNNAME_M_Shipper_ID, bpW.getM_Shipper_ID());
			
			//	Description
			if (bpW.getlbr_NFDescription() != null)
				mTab.setValue(I_W_C_BPartner.COLUMNNAME_lbr_NFDescription, bpW.getlbr_NFDescription());
		}
		
		//	Withhold
		mTab.setValue(I_W_C_Invoice.COLUMNNAME_LBR_HasWithhold, bpW.isLBR_HasWithhold());
		
		//	On Credit: FIXME
		mTab.setValue(MBPartner.COLUMNNAME_PaymentRule, MBPartner.PAYMENTRULE_OnCredit);
		
		return "";
	}	//	start
}	//	PaymentRule
