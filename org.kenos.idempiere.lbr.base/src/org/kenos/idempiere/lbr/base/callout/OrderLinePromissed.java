package org.kenos.idempiere.lbr.base.callout;

import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MProduct;
import org.compiere.model.MProductPO;
import org.compiere.util.TimeUtil;

/**
 * 		Callout to Fill Promissed Date on Order Line
 * 
 * 	@author Ricardo Santana
 *	@version $Id: OrderLinePromissed.java, v1.0 2017/MM/DD 5:10:03 PM, ralexsander Exp $
 */
public class OrderLinePromissed implements IColumnCallout 
{
	/**
	 * 	Fill Promissed Date
	 */
	@Override
	public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
	{
		//	Only proceed with valid values
		if (value == null)
			return "";
		
		Integer order_id = (Integer) mTab.getValue(MOrder.COLUMNNAME_C_Order_ID);
		if (order_id != null && order_id > 0)
		{
			//	Order
			MOrder order = new MOrder(ctx, order_id, null);		
			
			//	Fill the PromissedDate
			Object productID = mTab.getValue(MProduct.COLUMNNAME_M_Product_ID);
			if (productID == null)
				return "";
			
			MProductPO[] pos = MProductPO.getOfProduct (ctx, (Integer) productID, null);
			for (MProductPO po : pos)
			{
				if (po.getC_BPartner_ID() == order.getC_BPartner_ID ()
						&& po.getDeliveryTime_Promised() > 0)
				{
					mTab.setValue(MOrderLine.COLUMNNAME_DatePromised, TimeUtil.addDays (order.getDateOrdered(), po.getDeliveryTime_Promised()));
					break;
				}
			}
		}
		
		return "";
	}	//	start
}	//	OrderLinePromissed
