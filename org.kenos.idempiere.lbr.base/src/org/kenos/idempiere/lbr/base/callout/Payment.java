package org.kenos.idempiere.lbr.base.callout;

import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MInvoicePaySchedule;
import org.compiere.util.Env;

/**
 * 		Callout for Payment
 * 	@author Ricardo Santana
 *	@version $Id: Payment.java, v1.0 2021/06/01 17:31:03 PM, ralexsander Exp $
 */
public class Payment implements IColumnCallout 
{
	/**
	 * 	Fill Pay Schedule
	 */
	@Override
	public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
	{
		Integer C_Invoice_ID = (Integer)value;
		if (C_Invoice_ID == null || C_Invoice_ID.intValue () == 0)
			return "";
		if (Env.getContextAsInt (ctx, WindowNo, Env.TAB_INFO, "C_Invoice_ID") == C_Invoice_ID.intValue ()
			&& Env.getContextAsInt (ctx, WindowNo, Env.TAB_INFO, "C_InvoicePaySchedule_ID") != 0)
		{
			int C_InvoicePaySchedule_ID = Env.getContextAsInt (ctx, WindowNo, Env.TAB_INFO, "C_InvoicePaySchedule_ID");
			mTab.setValue(MInvoicePaySchedule.COLUMNNAME_C_InvoicePaySchedule_ID, C_InvoicePaySchedule_ID);
		}
		return "";
	}	//	start
}	//	Payment
