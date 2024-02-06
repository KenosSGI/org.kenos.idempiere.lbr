/******************************************************************************
 * Copyright (C) 2024 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2024 Ricardo Santana                                         *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.kenos.idempiere.lbr.base.process;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.util.Optional;
import java.util.logging.Level;

import org.adempierelbr.wrapper.I_W_C_OrderLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MRole;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * Class to apply discounts to order lines.
 * This class offers functionality to apply different types of discounts
 * (either cumulative or non-cumulative, amount-based or percentage-based)
 * and distribute them across order lines based on various criteria.
 *
 * @author Ricardo Santana
 */
public class ApplyDiscount extends SvrProcess
{
    // Order/Line ID to which the discount should be applied 
    private int p_Record_ID = 0;
    
    // Table name
    private String tableName = null;

    // Accumulate with existing discounts
    private static final String CUMULATIVE = "C";
    // Apply discount on the original price, ignoring any existing discounts
    @SuppressWarnings("unused")
	private static final String NON_CUMULATIVE = "N";
    // Discount cumulativeness level
    private String p_CumulativeLevel = null;

    // Amount (fixed discount amount)
    @SuppressWarnings("unused")
	private static final String DISCOUNT_AMOUNT = "A";
    // Percentage (discount based on a percentage of the order line amount)
    private static final String DISCOUNT_PERCENTAGE = "F";
    //Type of discount
    private String p_DiscountType = null;
    
    // Distribute evenly based on the line amount
    private static final String DISTRIBUTION_AMOUNT = "A";
    // Distribute based on the weight of each line
    @SuppressWarnings("unused")
	private static final String DISTRIBUTION_WEIGHT = "W";
    // Apply the entire discount to the line with the highest amount
    private static final String DISTRIBUTION_HIGHEST_AMOUNT = "H";
    //Distribution type of the discount across the order lines
    private String p_DistributionType = null;

    /** Discount amount: Specifies the discount value if the discount type is 'A' (Amount) */
    private BigDecimal p_Amount = Env.ZERO;
    
    /** Discount percentage: Specifies the discount value if the discount type is 'P' (Percentage) */
    private BigDecimal p_Percent = Env.ZERO;
	
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals("CumulativeLevel"))
				p_CumulativeLevel = para[i].getParameterAsString();
			else if (name.equals("DiscountType"))
				p_DiscountType = para[i].getParameterAsString();
			else if (name.equals("DistributionType"))
				p_DistributionType = para[i].getParameterAsString();
			else if (name.equals("Amount"))
				p_Amount = para[i].getParameterAsBigDecimal().setScale(2, RoundingMode.HALF_UP);
			else if (name.equals("Percentage"))
				p_Percent = para[i].getParameterAsBigDecimal();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}

		p_Record_ID = getRecord_ID();

		if (MOrder.Table_ID == getTable_ID())
			tableName = MOrder.Table_Name;
		if (MOrderLine.Table_ID == getTable_ID())
			tableName = MOrderLine.Table_Name;
	}	//	prepare

	/**
	 * 	
	 * 
	 *	@return info
	 *	@throws Exception
	 */
	protected String doIt () throws Exception
	{
		BigDecimal total = DB.getSQLValueBD(null, "SELECT SUM(LineNetAmt) FROM C_OrderLine WHERE " + tableName + "_ID=?", p_Record_ID);
		BigDecimal existingDiscount = DB.getSQLValueBD(get_TrxName(), "SELECT SUM(DiscountAmt) FROM C_OrderLine WHERE " + tableName + "_ID=?", p_Record_ID);
		MOrderLine[] lines;
		
		if (MOrder.Table_Name.equals(tableName)) {
			MOrder order = new MOrder (getCtx(), p_Record_ID, get_TrxName());
			lines = order.getLines(null, "LineNetAmt");
		}
		else if (MOrderLine.Table_Name.equals(tableName)) {
			lines = new MOrderLine[] { new MOrderLine (getCtx(), p_Record_ID, get_TrxName()) };
		}
		else {
			return "@Error@";
		}
		
		int linesCount = lines.length;
		boolean cumulativeDiscount = CUMULATIVE.equals(p_CumulativeLevel);
		
		// Calculate the amount of discount
		if (DISCOUNT_PERCENTAGE.equals(p_DiscountType))
			p_Amount = total.subtract(existingDiscount).multiply(p_Percent.divide(Env.ONEHUNDRED, 6, RoundingMode.HALF_UP)).setScale(2, RoundingMode.HALF_UP);
		
		// Highest Line
		if (DISTRIBUTION_HIGHEST_AMOUNT.equals(p_DistributionType)) {
			if (lines == null || linesCount < 1)
				return "@Error@ @NoLines@";
			//
			for (int lineNo=0; lineNo<linesCount; lineNo++) {
				MOrderLine line = lines[lineNo];
				
				if (lineNo == linesCount-1)
					applyDiscount(line, p_Amount, cumulativeDiscount);
				else if (!cumulativeDiscount)
					applyDiscount(line, BigDecimal.ZERO, cumulativeDiscount);
			}
		}
		
		//	Line Amount
		else if (DISTRIBUTION_AMOUNT.equals(p_DistributionType)) {
			
			BigDecimal remaining = p_Amount;
					
			//	Distribute
			for (int lineNo=0; lineNo<linesCount; lineNo++) {
				MOrderLine line = lines[lineNo];
				BigDecimal discount = p_Amount.multiply(line.getLineNetAmt()).divide(total, 2, RoundingMode.HALF_UP);
				//
				if (lineNo+1 == linesCount)
					discount = remaining;
				else
					remaining = remaining.subtract(discount);
				applyDiscount(line, discount, cumulativeDiscount);
			}
		}
		
		BigDecimal discountLimit = (BigDecimal) MRole.getDefault().get_Value("Limit_Discount");
		BigDecimal totalDiscountApplied = DB.getSQLValueBD(get_TrxName(), "SELECT SUM(DiscountAmt) FROM C_OrderLine WHERE " + tableName + "_ID=?", p_Record_ID);
		BigDecimal dicountPercent = totalDiscountApplied.divide(total, 4, RoundingMode.HALF_UP);
		if (dicountPercent.compareTo(discountLimit) == 1) {
			DecimalFormat decimalFormat = new DecimalFormat("0.00%");
			return "@Error@ @LBR|DiscountOverLimit@ Limite: " + decimalFormat.format(discountLimit) + ", Aplicado: " + decimalFormat.format(dicountPercent);
		}
		
		return "@Success@";
	}	//	doIt	

	/**
	 * Applies a discount to a given order line.
	 * The discount can be applied cumulatively (on top of any existing discount) or non-cumulatively (directly on the line amount).
	 *
	 * @param line        The order line to which the discount will be applied.
	 * @param discount    The discount amount to apply. This can be a fixed amount or a percentage of the line amount,
	 *                    depending on how the method is called.
	 * @param cumulative  If true, the discount is added to any existing discount on the order line.
	 *                    If false, the passed discount replaces any existing discount.
	 * @throws Exception  If the discount is greater than the line's net amount, an exception is thrown
	 *                    indicating that the discount cannot exceed the total amount of the order line.
	 */
	private static void applyDiscount (MOrderLine line, BigDecimal discount, boolean cumulative) throws Exception {
		BigDecimal applicableDiscount = discount;
		if (cumulative) {
			applicableDiscount = discount.add (Optional.ofNullable((BigDecimal) line.get_Value(I_W_C_OrderLine.COLUMNNAME_DiscountAmt))
					.orElse(BigDecimal.ZERO));
		}

		if (line.getLineNetAmt().compareTo(applicableDiscount) == -1)
			throw new Exception ("@Error@ Valor do Desconto maior que o Total da Linha");
		
		line.set_ValueNoCheck(I_W_C_OrderLine.COLUMNNAME_DiscountAmt, applicableDiscount);
		line.saveEx();
	}	//	applyDiscount
}	//	ApplyDiscount
