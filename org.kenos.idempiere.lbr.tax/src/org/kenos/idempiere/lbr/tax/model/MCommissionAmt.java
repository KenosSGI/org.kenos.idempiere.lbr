package org.kenos.idempiere.lbr.tax.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Properties;

import org.adempierelbr.model.MLBRFormula;
import org.adempierelbr.model.MLBRTax;
import org.adempierelbr.model.MLBRTaxLine;
import org.adempierelbr.model.MLBRTaxName;
import org.compiere.model.MCommission;
import org.compiere.model.MCommissionDetail;
import org.compiere.model.MCommissionLine;
import org.compiere.model.MCommissionRun;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrderLine;
import org.compiere.model.PO;
import org.compiere.util.Env;

import bsh.EvalError;
import bsh.Interpreter;

/**
 * 		Model for Commission Amt
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MCommissionAmt.java, v1.0 2017/09/04 22:40:41 PM, ralexsander Exp $
 */
public class MCommissionAmt extends org.compiere.model.MCommissionAmt
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 6326095999403322680L;

	public MCommissionAmt (Properties ctx, int C_CommissionAmt_ID, String trxName)
	{
		super (ctx, C_CommissionAmt_ID, trxName);
	}	//	MCommissionAmt
	
	public MCommissionAmt (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MCommissionAmt

	public MCommissionAmt (MCommissionRun comRun, int c_CommissionLine_ID)
	{
		super (comRun, c_CommissionLine_ID);
	}	//	MCommissionAmt

	/**
	 * 	Calculate Commission
	 */
	@Override
	public void calculateCommission()
	{
		//	Details List
		MCommissionDetail[] details = getDetails();

		//	Variables
		BigDecimal convertedAmt 		= Env.ZERO;
		BigDecimal actualQty 			= Env.ZERO;
		BigDecimal convertedByFormula 	= Env.ZERO;
		
		//	Commission Line
		MCommissionLine cl = new MCommissionLine(getCtx(), getC_CommissionLine_ID(), get_TrxName());
		
		// Document Base Type to Calculate
		String docBaseType = cl.getC_Commission().getDocBasisType();
		
		// Formula
		int formula_ID = cl.get_ValueAsInt("LBR_Formula_ID");
		
		//	If List Details is Not Set, Force not use the Formula
		if (!cl.getC_Commission().isListDetails())
			formula_ID = 0;
		
		//	each Detail's list
		for (int i = 0; i < details.length; i++)
		{
			MCommissionDetail detail = details[i];
			BigDecimal amt = detail.getConvertedAmt();
			BigDecimal amtFormula = Env.ZERO;;
			
			if (amt == null)
				amt = Env.ZERO;
			
			convertedAmt = convertedAmt.add(amt);
			actualQty = actualQty.add(detail.getActualQty());			
			
			try
			{
				//	Call Method to apply Formula on Amout
				amtFormula = calculateFormula (formula_ID, detail, amt, docBaseType);
			}
			catch (EvalError e)
			{
				e.printStackTrace();
			}		
			
			//	Converted Amount after appled Calculated
			convertedByFormula = convertedByFormula.add(amtFormula);
		}
		setConvertedAmt(convertedAmt);
		setActualQty(actualQty);
		
		//	Qty
		BigDecimal qty = getActualQty().subtract(cl.getQtySubtract());
		if (cl.isPositiveOnly() && qty.signum() < 0)
			qty = Env.ZERO;
		qty = qty.multiply(cl.getQtyMultiplier());
		//	Amt
		BigDecimal amt = convertedByFormula.subtract(cl.getAmtSubtract());
		if (cl.isPositiveOnly() && amt.signum() < 0)
			amt = Env.ZERO;
		amt = amt.multiply(cl.getAmtMultiplier());
		//
		setCommissionAmt(amt.add(qty));
	}	//	calculateCommission
	
	/**
	 * Calculate Amout aplly the Formula
	 * 
	 * @param LBR_Formula_ID
	 * @param detail
	 * @param amt
	 * @return
	 * @throws EvalError
	 */
	protected BigDecimal calculateFormula (int LBR_Formula_ID, MCommissionDetail detail, BigDecimal amt, String DocBaseType) throws EvalError
	{
		//	Formula
		MLBRFormula formula = new MLBRFormula (Env.getCtx(), LBR_Formula_ID, null);
		
		//	Return Amt Original if Formula Is Not Valid
		if (formula == null || LBR_Formula_ID == 0)
			return amt;
		
		//	Result
		BigDecimal result = Env.ZERO;
		
		//	Percent Paid when Commission is based on Receipt (Payment)
		Double percentPaid = 1.0;
		
		// Order Line / Invoice Line
		PO po;
		
		//	Commission Based on Order Or Invoice
		if (MCommission.DOCBASISTYPE_Order.equals(DocBaseType))
			po = (MOrderLine) detail.getC_OrderLine();
		else
			po = (MInvoiceLine) detail.getC_InvoiceLine();
		
		//	Commission Based on Receipt (Payment)
		if (MCommission.DOCBASISTYPE_Receipt.equals(DocBaseType))
		{
			//	Get Invoice
			MInvoice invoice = new MInvoice (Env.getCtx(), po.get_ValueAsInt("C_Invoice_ID"), null);
			//	Total Invoiced
			BigDecimal invoicetotal = invoice.getGrandTotal();
			
			//	If Total Receipt is less then Total Invoiced (Partial Payment)
			if (amt.compareTo(invoicetotal) == -1)
			{
				//	Get Percent of Amt compared to Total Invoiced
				percentPaid = ((amt.doubleValue()*100) / (invoicetotal).doubleValue()) / 100;
			}
		}
		
		//	Tax
		MLBRTax tax = new MLBRTax (Env.getCtx(), po.get_ValueAsInt("LBR_Tax_ID"), null);
		
		// Tax Calculate
		Interpreter bsh = new Interpreter ();
		
		//	Add Order Line Total Amout
		bsh.set("AMT", amt.doubleValue());
		
		// Add Order Line Total Amout
		bsh.set("PERCENT", percentPaid);
		
		//	Add Tax to Avoid Error on calculate of formula
		for (MLBRTaxName txName :MLBRTaxName.getTaxNames())
			if (formula.toString().indexOf(txName.getName().trim()) > 0)
			{
				log.finer ("Fill to ZERO, TaxName=" + txName.getName().trim() + "=0");
				bsh.set(txName.getName().trim(), 1/Math.pow (10, 17));
			}
		
		// Add Tax to Calculate
		for (MLBRTaxLine tLine : tax.getLines())
		{
			//	Tax Amount
			BigDecimal amttax = tLine.getlbr_TaxAmt();

			//	Log
			log.fine ("Set Amt, TaxName=" + tLine.getLBR_TaxName().getName().trim() + "=" + amttax);
			//	Add Tax Amout
			bsh.set(tLine.getLBR_TaxName().getName().trim(),amttax.doubleValue());
		}
		
		//	Calculate and Receive the Result
		result = new BigDecimal ((Double)bsh.eval(formula.getlbr_Formula()));
		
		// Return de Result	
		return result.setScale(2, BigDecimal.ROUND_HALF_UP);		
	}	//	calculateFormula
}	//	MCommissionAmt
