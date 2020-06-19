package org.kenos.idempiere.lbr.base.callout;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Properties;

import org.adempiere.base.Core;
import org.adempiere.base.IProductPricing;
import org.adempiere.model.GridTabWrapper;
import org.compiere.model.CalloutOrder;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.I_C_OrderLine;
import org.compiere.model.MOrderLine;
import org.compiere.model.MProduct;
import org.compiere.model.MStorageReservation;
import org.compiere.model.MSysConfig;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.kenos.idempiere.lbr.base.model.SysConfig;

/**
 * 	Override default iDempiere Callout
 * 	@author Ricardo Santana <rsantana@kenos.com.br>
 */
public class OrderLineProduct extends CalloutOrder
{
	/*************************************************************************
	 *	Order Line - Product.
	 *		- reset C_Charge_ID / M_AttributeSetInstance_ID
	 *		- PriceList, PriceStd, PriceLimit, C_Currency_ID, EnforcePriceLimit
	 *		- UOM
	 *	Calls Tax
	 *
	 *  @param ctx context
	 *  @param WindowNo current Window No
	 *  @param mTab Grid Tab
	 *  @param mField Grid Field
	 *  @param value New Value
	 *  @return null or error message
	 */
	public String product (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		Integer M_Product_ID = (Integer)value;
		if (M_Product_ID == null || M_Product_ID.intValue() == 0)
			return "";
//		if (steps) log.warning("init");
		//
		mTab.setValue("C_Charge_ID", null);
		//	Set Attribute
		if (Env.getContextAsInt(ctx, WindowNo, Env.TAB_INFO, "M_Product_ID") == M_Product_ID.intValue()
			&& Env.getContextAsInt(ctx, WindowNo, Env.TAB_INFO, "M_AttributeSetInstance_ID") != 0)
			mTab.setValue("M_AttributeSetInstance_ID", Env.getContextAsInt(ctx, WindowNo, Env.TAB_INFO, "M_AttributeSetInstance_ID"));
		else
			mTab.setValue("M_AttributeSetInstance_ID", null);

		/*****	Price Calculation see also qty	****/
		int C_BPartner_ID = Env.getContextAsInt(ctx, WindowNo, "C_BPartner_ID");
		BigDecimal Qty = (BigDecimal)mTab.getValue("QtyOrdered");
		boolean IsSOTrx = Env.getContext(ctx, WindowNo, "IsSOTrx").equals("Y");
		IProductPricing pp = Core.getProductPricing();
		pp.setInitialValues(M_Product_ID.intValue(), C_BPartner_ID, Qty, IsSOTrx, null);
		Timestamp orderDate = (Timestamp)mTab.getValue("DateOrdered");
		pp.setPriceDate(orderDate);
		I_C_OrderLine orderLine = GridTabWrapper.create(mTab, I_C_OrderLine.class);
		pp.setOrderLine(orderLine, null);
		//
		int M_PriceList_ID = Env.getContextAsInt(ctx, WindowNo, "M_PriceList_ID");
		pp.setM_PriceList_ID(M_PriceList_ID);
		/** PLV is only accurate if PL selected in header */
		int M_PriceList_Version_ID = Env.getContextAsInt(ctx, WindowNo, "M_PriceList_Version_ID");
		if ( M_PriceList_Version_ID == 0 && M_PriceList_ID > 0)
		{
			String sql = "SELECT plv.M_PriceList_Version_ID "
				+ "FROM M_PriceList_Version plv "
				+ "WHERE plv.M_PriceList_ID=? "						//	1
				+ " AND plv.ValidFrom <= ? "
				+ "ORDER BY plv.ValidFrom DESC";
			//	Use newest price list - may not be future

			M_PriceList_Version_ID = DB.getSQLValueEx(null, sql, M_PriceList_ID, orderDate);
			if ( M_PriceList_Version_ID > 0 )
				Env.setContext(ctx, WindowNo, "M_PriceList_Version_ID", M_PriceList_Version_ID );
		}
		pp.setM_PriceList_Version_ID(M_PriceList_Version_ID);
		//
		mTab.setValue("PriceList", pp.getPriceList());
		mTab.setValue("PriceLimit", pp.getPriceLimit());
		mTab.setValue("PriceActual", pp.getPriceStd());
		mTab.setValue("PriceEntered", pp.getPriceStd());
		mTab.setValue("C_Currency_ID", Integer.valueOf(pp.getC_Currency_ID()));
		mTab.setValue("Discount", pp.getDiscount());
		mTab.setValue("C_UOM_ID", Integer.valueOf(pp.getC_UOM_ID()));
		mTab.setValue("QtyOrdered", mTab.getValue("QtyEntered"));
		Env.setContext(ctx, WindowNo, "EnforcePriceLimit", pp.isEnforcePriceLimit() ? "Y" : "N");
		Env.setContext(ctx, WindowNo, "DiscountSchema", pp.isDiscountSchema() ? "Y" : "N");

		//	Check/Update Warehouse Setting
		//	int M_Warehouse_ID = Env.getContextAsInt(ctx, WindowNo, "M_Warehouse_ID");
		//	Integer wh = (Integer)mTab.getValue("M_Warehouse_ID");
		//	if (wh.intValue() != M_Warehouse_ID)
		//	{
		//		mTab.setValue("M_Warehouse_ID", Integer.valueOf(M_Warehouse_ID));
		//		ADialog.warn(,WindowNo, "WarehouseChanged");
		//	}

		if (MSysConfig.getBooleanValue(SysConfig.LBR_SHOW_STOCK_MSG_ON_ORDER, true, Env.getAD_Client_ID(ctx))
				&& Env.isSOTrx(ctx, WindowNo))
		{
			MProduct product = MProduct.get (ctx, M_Product_ID.intValue());
			if (product.isStocked() && Env.getContext(ctx, WindowNo, "IsDropShip").equals("N"))
			{
				BigDecimal QtyOrdered = (BigDecimal)mTab.getValue("QtyOrdered");
				if (QtyOrdered == null)
					QtyOrdered = Env.ZERO;
				int M_Warehouse_ID = Env.getContextAsInt(ctx, WindowNo, "M_Warehouse_ID");
				int M_AttributeSetInstance_ID = Env.getContextAsInt(ctx, WindowNo, mTab.getTabNo(), "M_AttributeSetInstance_ID");
				BigDecimal available = MStorageReservation.getQtyAvailable
					(M_Warehouse_ID, M_Product_ID.intValue(), M_AttributeSetInstance_ID, null);
				if (available == null)
					available = Env.ZERO;
				if (available.signum() == 0)
					mTab.fireDataStatusEEvent ("NoQtyAvailable", "0", false);
				else if (available.compareTo(QtyOrdered) < 0)
					mTab.fireDataStatusEEvent ("InsufficientQtyAvailable", available.toString(), false);
				else
				{
					Integer C_OrderLine_ID = (Integer)mTab.getValue("C_OrderLine_ID");
					if (C_OrderLine_ID == null)
						C_OrderLine_ID = Integer.valueOf(0);
					BigDecimal notReserved = MOrderLine.getNotReserved(ctx,
						M_Warehouse_ID, M_Product_ID, M_AttributeSetInstance_ID,
						C_OrderLine_ID.intValue());
					if (notReserved == null)
						notReserved = Env.ZERO;
					BigDecimal total = available.subtract(notReserved);
					if (total.compareTo(QtyOrdered) < 0)
					{
						String info = Msg.parseTranslation(ctx, "@QtyAvailable@=" + available
							+ " - @QtyNotReserved@=" + notReserved + " = " + total);
						mTab.fireDataStatusEEvent ("InsufficientQtyAvailable",
							info, false);
					}
				}
			}
		}
		//
//		if (steps) log.warning("fini");
		return tax (ctx, WindowNo, mTab, mField, value);
	}	//	product
}	//	OrderLineProduct
