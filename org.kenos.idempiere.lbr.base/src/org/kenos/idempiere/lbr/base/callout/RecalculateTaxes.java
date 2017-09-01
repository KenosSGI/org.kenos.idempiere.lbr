package org.kenos.idempiere.lbr.base.callout;

import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.adempierelbr.wrapper.I_W_C_OrderLine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;

/**
 * 		Callout for RecalculateTaxes
 * 	@author Ricardo Santana
 *	@version $Id: RecalculateTaxes.java, v1.0 2017/MM/DD 5:10:03 PM, ralexsander Exp $
 */
public class RecalculateTaxes implements IColumnCallout 
{
	/**
	 * 	Recalculate taxes
	 */
	@Override
	public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
	{
		//	Mark order to be recalculated
		mTab.setValue(I_W_C_OrderLine.COLUMNNAME_lbr_RecalculateTax, true);
		return "";
	}	//	start
}	//	RecalculateTaxes
