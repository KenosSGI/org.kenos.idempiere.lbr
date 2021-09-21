package org.kenos.idempiere.lbr.tax.process;

import java.util.Map;
import java.util.logging.Level;

import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRTax;
import org.adempierelbr.model.MLBRTaxLine;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.adempierelbr.wrapper.I_W_C_Order;
import org.adempierelbr.wrapper.I_W_C_OrderLine;
import org.adempierelbr.wrapper.I_W_M_Product;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrderPaySchedule;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.tax.model.MOrder;

/**
 * 		ReProcess Order
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ReProcessOrder.java, v1.0 2018/01/11 12:58:16 PM, ralexsander Exp $
 */
public class ReProcessOrder extends SvrProcess
{
	/**	Logger							*/
	private static CLogger log = CLogger.getCLogger (ReProcessOrder.class);
	
	/**	Order	*/
	private int p_Record_ID;

	private boolean p_ReCalculateTax		= false;
	private boolean p_ReDefineTax 			= false;
	private boolean p_ReDefineCFOP 			= false;
	private boolean p_DistributeFreight		= false;
	private boolean p_EnforcePrice 			= false;
	private boolean p_UnReserveStock		= false;
	private boolean p_LBR_DeletePaySchedule = true;
	private int p_M_PriceList_ID			= -1;
	
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	@Override
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			
			else if (name.equals("lbr_RecalculateTax"))
				p_ReCalculateTax = "Y".equals(para[i].getParameter());
			
			else if (name.equals("LBR_RedefineTax"))
				p_ReDefineTax = "Y".equals(para[i].getParameter());
			
			else if (name.equals("LBR_RedefineCFOP"))
				p_ReDefineCFOP = "Y".equals(para[i].getParameter());
			
			else if (name.equals("LBR_DistributeFreight"))
				p_DistributeFreight = "Y".equals(para[i].getParameter());
			
			else if (name.equals("LBR_EnforcePriceList"))
				p_EnforcePrice = "Y".equals(para[i].getParameter());
			
			else if (name.equals("LBR_UnreserveStock"))
				p_UnReserveStock = "Y".equals(para[i].getParameter());
			
			else if (name.equals("LBR_DeletePaySchedule"))
				p_LBR_DeletePaySchedule = "Y".equals(para[i].getParameter());
			
			else if (name.equals(MOrder.COLUMNNAME_M_PriceList_ID))
				p_M_PriceList_ID = para[i].getParameterAsInt();
			
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		p_Record_ID = getRecord_ID();
	}	//	prepare

	@Override
	protected String doIt() throws Exception
	{
		MOrder order = null;
		MOrderLine orderLine = null;
		
		//	Process Order Line
		if (MOrderLine.Table_ID == getTable_ID())
		{
			orderLine = new MOrderLine (getCtx(), p_Record_ID, get_TrxName());
			order = new MOrder(getCtx(), orderLine.getC_Order_ID(), get_TrxName());
		}
		
		//	Process Order
		else if (MOrder.Table_ID == getTable_ID())
			order = new MOrder (getCtx(), p_Record_ID, get_TrxName());
		
		else
			return "@Error@ process not ready for [AD_Table_ID=" + getTable_ID() + "]";
		
		//	Do It
		processOrder (order, orderLine, p_ReCalculateTax, p_ReDefineTax, p_ReDefineCFOP, p_DistributeFreight, p_EnforcePrice, p_LBR_DeletePaySchedule, p_M_PriceList_ID, p_UnReserveStock);
		return "@Success@";
	}	//	doIt
	
	/**
	 * 	Process Order
	 * 
	 * @param order	- Order to be processed, mandatory
	 * @param single - Order Line, if null all lines from Order will be processed
	 * @param p_ReCalculateTax - Indicates if the Taxes should be recalculated
	 * @param p_ReDefineTax - Indicates if the Taxes should be redefined from configuration
	 * @param p_ReDefineCFOP - Indicates if CFOP should be redefined from configuration
	 * @param p_DistributeFreight - Distributes the Freight Value from order header to Order Lines
	 * @param p_EnforcePrice - Enforce Price List
	 * @param p_UnReserveStock - Unreserve Stock
	 */
	public static void processOrder (MOrder order, MOrderLine single, boolean p_ReCalculateTax, 
			boolean p_ReDefineTax, boolean p_ReDefineCFOP, boolean p_DistributeFreight, boolean p_EnforcePrice, boolean p_LBR_DeletePaySchedule, int p_M_PriceList_ID, boolean p_UnReserveStock)
	{
		I_W_AD_OrgInfo oi = POWrapper.create(MOrgInfo.get(Env.getCtx(), order.getAD_Org_ID(), null), I_W_AD_OrgInfo.class);
		I_W_C_Order o = POWrapper.create(order, I_W_C_Order.class);
		I_W_C_BPartner bp = POWrapper.create(new MBPartner (Env.getCtx(), o.getBill_BPartner_ID(), null), I_W_C_BPartner.class);
		MBPartnerLocation bpLoc = (MBPartnerLocation) order.getBill_Location(); 
		
		//	Redefine data from configuration
		MOrderLine[] lines = null;
		
		//	Single line process
		if (single != null)
			lines = new MOrderLine[]{single};
		
		//	All lines from order
		else
			lines = order.getLines();
		
		//	Check price list
		if (p_EnforcePrice 
				&& p_M_PriceList_ID > 0)
		{
			//	Do not save to avoid error
			order.setM_PriceList_ID (p_M_PriceList_ID);
			order.setIsTaxIncluded (order.getM_PriceList().isTaxIncluded());
			
			//	Make changes directly
			DB.executeUpdate ("UPDATE C_Order SET IsTaxIncluded='" + (order.isTaxIncluded() ? "Y" : "N") + "', M_PriceList_ID=" + p_M_PriceList_ID + " WHERE C_Order_ID=" + order.getC_Order_ID(), order.get_TrxName());
		}
		
		//	Process
		for (MOrderLine ol : lines)
		{
			//	Redefine data from configuration
			if (p_ReDefineTax || p_ReDefineCFOP)
			{
				I_W_M_Product p = POWrapper.create(new MProduct (Env.getCtx(), ol.getM_Product_ID(), null), I_W_M_Product.class);
				Object[] taxation = MLBRTax.getTaxes (o.getC_DocTypeTarget_ID(), o.isSOTrx(), o.getlbr_TransactionType(), p, oi, bp, bpLoc, o.getDateAcct());
				//
				if (p_ReDefineCFOP && ((Integer) taxation[2]) > 0)
					ol.set_CustomColumn ("LBR_CFOP_ID", ((Integer) taxation[2]));
				
				@SuppressWarnings("unchecked")
				Map<Integer, MLBRTaxLine> taxes = (Map<Integer, MLBRTaxLine>) taxation[0];
				if (p_ReDefineTax && taxes.size() > 0)
				{
					MLBRTax tax = new MLBRTax (Env.getCtx(), 0, null);
					tax.save();
					//
					for (Integer key : taxes.keySet())
					{
						MLBRTaxLine tl = taxes.get(key);
						tl.setLBR_Tax_ID(tax.getLBR_Tax_ID());
						tl.save();
					}
					//
					tax.setDescription();
					tax.save();
					//
					ol.set_CustomColumn("LBR_Tax_ID", tax.getLBR_Tax_ID());
				}
			}

			//	Tax Definition implies that taxes was already calculated, 
			//		only recalculated when definition is not checked
			if ((p_ReCalculateTax && !p_ReDefineTax) || p_EnforcePrice)
				ol.set_ValueOfColumn(I_W_C_OrderLine.COLUMNNAME_lbr_RecalculateTax, true);
			
			//	Fill the Price on line(s) using current price list
			if (p_EnforcePrice)
			{
				ol.setHeaderInfo(order);
				ol.setPrice();
			}
			
			ol.saveEx();
		}
		
		//	Distribute Freight
		if (!p_EnforcePrice && p_DistributeFreight)
		{
			order.setFreightCostRule(MOrder.FREIGHTCOSTRULE_FixPrice);
			order.saveEx();
		}
		
		//	Remove reserves from stock
		if (p_UnReserveStock)
		{
			if (!order.unReserveStock (null, lines))
				log.severe("Could not unreserve stock");
		}
		
		//	Delete Order Pay Schedule
		if (p_LBR_DeletePaySchedule)
		{
			new Query (order.getCtx(), MOrderPaySchedule.Table_Name, MOrderPaySchedule.COLUMNNAME_C_Order_ID+"=?", order.get_TrxName())
				.setParameters(order.getC_Order_ID())
				.list().forEach(s -> {
					s.delete(true);
				});;
		}
	}	//	processOrder
}	//	ReProcessOrder
