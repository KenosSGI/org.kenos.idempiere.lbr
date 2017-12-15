package org.kenos.idempiere.lbr.tax.callout;

import java.math.BigDecimal;
import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MProductPricing;
import org.compiere.model.MProduction;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.base.model.MLBRProductionGroup;

/**
 * 	Callout for Production
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ProductionGroup.java, v1.0 2017/12/14 10:50:00 PM, ralexsander Exp $
 */
public class Production implements IColumnCallout 
{
	/**
	 * 	Fill Price and Taxes
	 */
	@Override
	public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
	{
		Integer LBR_ProductionGroup_ID = (Integer) mTab.getValue(MLBRProductionGroup.COLUMNNAME_LBR_ProductionGroup_ID);
		Integer M_Product_ID = (Integer) mTab.getValue (MProduction.COLUMNNAME_M_Product_ID);
		BigDecimal Qty = (BigDecimal) mTab.getValue (MProduction.COLUMNNAME_ProductionQty);
		
		//	Product not filled or Production Group not selected
		if (LBR_ProductionGroup_ID == null || LBR_ProductionGroup_ID.intValue() <= 0 
				|| M_Product_ID == null || M_Product_ID.intValue() <= 0)
			return "";
		if (Qty == null)
			Qty = Env.ONE;

		//	Production Group
		MLBRProductionGroup pg = new MLBRProductionGroup (ctx, LBR_ProductionGroup_ID, null);
		MProductPricing pp = new MProductPricing (M_Product_ID.intValue(), pg.getC_BPartner_ID(), Qty, false, null);
		
		//	Set Price
		if (pp != null)
		{
			int M_PriceList_ID = Env.getContextAsInt(ctx, WindowNo, "M_PriceList_ID");
			pp.setM_PriceList_ID(M_PriceList_ID);
			
			mTab.setValue("PriceEntered", pp.getPriceStd());
		}
		
		return "";
	}	//	start
}	//	Production
