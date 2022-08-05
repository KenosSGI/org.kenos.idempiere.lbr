package org.kenos.idempiere.lbr.base.callout;

import java.util.ArrayList;
import java.util.List;

import org.adempiere.base.IColumnCallout;
import org.adempiere.base.IColumnCalloutFactory;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.adempierelbr.wrapper.I_W_C_Order;
import org.adempierelbr.wrapper.I_W_C_OrderLine;
import org.compiere.model.MBPartner;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MMovementLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MPayment;

/**
 * 		Callout Factory
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ColumnCalloutFactory.java, v1.0 2017/01/04 5:06:32 PM, ralexsander Exp $
 */
public class ColumnCalloutFactory implements IColumnCalloutFactory
{
	/**
	 * 	Register LBR callouts for columns
	 */
	@Override
	public IColumnCallout[] getColumnCallouts (String tableName, String columnName)
	{
		List<IColumnCallout> callouts = new ArrayList<IColumnCallout>();
		if (MBPartner.Table_Name.equals(tableName))
		{
			if (TextUtil.match (columnName, 
					I_W_C_BPartner.COLUMNNAME_lbr_BPTypeBR,
					I_W_C_BPartner.COLUMNNAME_lbr_CPF))
				callouts.add (new BPartner ());
		}
		else if (MOrder.Table_Name.equals(tableName))
		{
			if (TextUtil.match (columnName, MOrder.COLUMNNAME_C_DocTypeTarget_ID))
				callouts.add (new DocType ());
			if (TextUtil.match (columnName, MOrder.COLUMNNAME_C_BPartner_ID))
				callouts.add (new SalesFields ());
			if (TextUtil.match (columnName, MOrder.COLUMNNAME_C_BPartner_Location_ID))
				callouts.add (new SalesRepByRegion ());
			if (TextUtil.match (columnName, MOrder.COLUMNNAME_Bill_BPartner_ID))
				callouts.add (new CreditCheck ());
			if (TextUtil.match (columnName, I_W_C_Order.COLUMNNAME_LBR_CNPJF))
				callouts.add (new CNPJCheck ());
		}
		else if (MOrderLine.Table_Name.equals(tableName))
		{
			if (TextUtil.match (columnName, I_W_C_OrderLine.COLUMNNAME_LBR_Tax_ID))
			{
				callouts.add (new OrderLinePromissed());
				callouts.add (new RecalculateTaxes());
			}
		}
		else if (MInvoice.Table_Name.equals(tableName))
		{
			if (TextUtil.match (columnName, MOrder.COLUMNNAME_C_BPartner_ID))
			{
				callouts.add (new SalesFields ());
				callouts.add (new CreditCheck ());
			}
		}
		else if (MInvoiceLine.Table_Name.equals(tableName))
		{
			if (TextUtil.match (columnName, I_W_C_OrderLine.COLUMNNAME_LBR_Tax_ID))
				callouts.add (new RecalculateTaxes());
		}
		else if (MMovementLine.Table_Name.equals(tableName))
		{
			if (TextUtil.match (columnName, MMovementLine.COLUMNNAME_M_Product_ID))
				callouts.add (new MovementLine());
		}
		else if (MPayment.Table_Name.equals(tableName))
		{
			if (TextUtil.match (columnName, MPayment.COLUMNNAME_C_Invoice_ID))
				callouts.add (new Payment());
		}
		
		IColumnCallout[] result = new IColumnCallout[callouts.size()];
		return callouts.toArray (result);
	}	//	getColumnCallouts
}	//	ColumnCalloutFactory
