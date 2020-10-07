package org.kenos.idempiere.lbr.base.callout;

import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.adempiere.model.POWrapper;
import org.adempierelbr.wrapper.I_W_C_BPartner_Location;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MInvoice;
import org.compiere.model.MOrder;
import org.compiere.model.MSalesRegion;
import org.compiere.util.Env;

/**
 * 		Callout Sales Rep By Region
 * 	@author Rogério Feitosa
 *	@version $Id: SalesRepByRegion.java, v1.0 2020/09/30 5:10:03 PM, rfeitosa Exp $
 */
public class SalesRepByRegion implements IColumnCallout 
{
	/**
	 * 	Fill the PaymentRule based on BPartner
	 */
	@Override
	public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
	{
		Integer C_BPartner_Location_ID = (Integer) mTab.getValue (MInvoice.COLUMNNAME_C_BPartner_Location_ID);

		if (C_BPartner_Location_ID == null 
				|| C_BPartner_Location_ID.intValue() <= 0
				|| !mTab.getValueAsBoolean(MInvoice.COLUMNNAME_IsSOTrx))
			return "";

		I_W_C_BPartner_Location bplW = POWrapper.create(new MBPartnerLocation (ctx, C_BPartner_Location_ID, null), I_W_C_BPartner_Location.class);
		
		//	Orders only
		if (MOrder.Table_Name.equals (mTab.getTableName()))
		{
			MBPartner bp = (MBPartner) bplW.getC_BPartner();
			if (bp.getSalesRep_ID() == 0 && bplW.getC_SalesRegion() != null
					&& bplW.getC_SalesRegion().getSalesRep_ID() > 0)
			{
				MSalesRegion sr = new MSalesRegion(Env.getCtx(), bplW.getC_SalesRegion_ID(), null);
				mTab.setValue(MOrder.COLUMNNAME_SalesRep_ID, sr.getSalesRep_ID());
			}
		}
		
		return "";
	}	//	start
}	//	PaymentRule
