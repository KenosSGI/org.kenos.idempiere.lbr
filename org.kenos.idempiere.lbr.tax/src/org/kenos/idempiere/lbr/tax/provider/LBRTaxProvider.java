package org.kenos.idempiere.lbr.tax.provider;

import java.math.BigDecimal;

import org.adempiere.model.ITaxProvider;
import org.adempierelbr.validator.VLBROrder;
import org.adempierelbr.validator.VLBRTax;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MRMA;
import org.compiere.model.MRMALine;
import org.compiere.model.MTaxProvider;
import org.compiere.model.PO;
import org.compiere.process.ProcessInfo;
import org.compiere.util.CLogger;
import org.compiere.util.DB;

/**
 * 		Tax Provider
 * 
 * 	Taxes already calculated using validators, just update the totals
 * 
 * 	TODO: Migrate from validators to here
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 */
public class LBRTaxProvider implements ITaxProvider
{
	/**	Logger							*/
	protected transient CLogger	log = CLogger.getCLogger (getClass());
	
	@Override
	public boolean calculateOrderTaxTotal(MTaxProvider provider, MOrder order)
	{
		VLBRTax.updateTax (order, false);
		order.setTotalLines(getTotalLines(provider, order, order.get_TrxName()));
		order.setGrandTotal(getGrandTotal(provider, order, order.get_TrxName()));
		return true;
	}

	@Override
	public boolean updateOrderTax(MTaxProvider provider, MOrderLine line)
	{
		return true;
	}

	@Override
	public boolean recalculateTax(MTaxProvider provider, MOrderLine line, boolean newRecord)
	{
		line.updateHeaderTax();
		//
		return true;
	}

	@Override
	public boolean updateHeaderTax(MTaxProvider provider, MOrderLine line)
	{
		updateHeaderTax (provider, line.getParent(), line.get_TrxName());
		//
		return true;
	}

	@Override
	public boolean calculateInvoiceTaxTotal(MTaxProvider provider, MInvoice invoice)
	{
		VLBRTax.updateTax (invoice, false);
		invoice.setTotalLines(getTotalLines(provider, invoice, invoice.get_TrxName()));
		invoice.setGrandTotal(getGrandTotal(provider, invoice, invoice.get_TrxName()));
		return true;
	}

	@Override
	public boolean updateInvoiceTax(MTaxProvider provider, MInvoiceLine line)
	{
		return true;
	}

	@Override
	public boolean recalculateTax(MTaxProvider provider, MInvoiceLine line, boolean newRecord)
	{
		line.updateHeaderTax();
		//
		return true;
	}

	@Override
	public boolean updateHeaderTax(MTaxProvider provider, MInvoiceLine line)
	{
		updateHeaderTax (provider, line.getParent(), line.get_TrxName());
		//
		return true;
	}

	@Override
	public boolean calculateRMATaxTotal(MTaxProvider provider, MRMA rma)
	{
		return true;
	}

	@Override
	public boolean updateRMATax(MTaxProvider provider, MRMALine line)
	{
		return true;
	}

	@Override
	public boolean recalculateTax(MTaxProvider provider, MRMALine line, boolean newRecord)
	{
		return true;
	}

	@Override
	public boolean updateHeaderTax(MTaxProvider provider, MRMALine line)
	{
		return true;
	}

	@Override
	public String validateConnection(MTaxProvider provider, ProcessInfo pi) throws Exception
	{
		return null;
	}

	public boolean updateHeaderTax (MTaxProvider provider, PO po, String trxName)
	{
		String tableName = po.get_TableName();
		//
		BigDecimal totalLines = getTotalLines (provider, po, trxName);
		BigDecimal grandTotal = getGrandTotal (provider, po, trxName);
		//
		String sql = "UPDATE " + tableName + " i "
				+ " SET TotalLines=?, GrandTotal=? "
					+ "WHERE " + tableName + "_ID=?";
		int no = DB.executeUpdate (sql, new Object[]{totalLines, grandTotal, po.get_ID()}, false, trxName);
		if (no != 1)
			log.warning("(2) #" + no);
		//
		return true;
	}	//	updateHeaderTax
	
	private BigDecimal getGrandTotal (MTaxProvider provider, PO po, String trxName)
	{
		String tableName = po.get_TableName();
		//
		BigDecimal taxes = DB.getSQLValueBD (trxName, "SELECT COALESCE(SUM(TaxAmt),0) FROM " + tableName + "Tax it WHERE it.IsTaxIncluded='N' AND it." + tableName + "_ID=?", po.get_ID());
		return getTotalLines(provider, po, trxName).add(taxes);
	}	//	getGrandTotal
	
	private BigDecimal getTotalLines (MTaxProvider provider, PO po, String trxName)
	{
		String tableName = po.get_TableName();
		//
		BigDecimal totalLines = DB.getSQLValueBD (trxName, "SELECT COALESCE(SUM(LineNetAmt),0) FROM " + tableName + "Line il WHERE il." + tableName + "_ID=?", po.get_ID());
		BigDecimal charges = VLBROrder.getChargeAmt(po);

		/**
		 * 	Para o pedido o valor do SEGURO, FRETE e SISCOMEX
		 * 		são adicionados no total, já para a fatura
		 * 		é adicionado uma nova linha.
		 */
		if (MOrder.Table_Name.equals(tableName))
			totalLines = totalLines.add(charges);
		
		return totalLines;
	}	//	getTotalLines
}	//	LBRTaxProvider
