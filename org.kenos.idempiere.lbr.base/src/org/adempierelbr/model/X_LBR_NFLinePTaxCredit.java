/******************************************************************************
 * Product: iDempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2012 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY, without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program, if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
/** Generated Model - DO NOT CHANGE */
package org.adempierelbr.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LBR_NFLinePTaxCredit
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_NFLinePTaxCredit extends PO implements I_LBR_NFLinePTaxCredit, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20250206L;

    /** Standard Constructor */
    public X_LBR_NFLinePTaxCredit (Properties ctx, int LBR_NFLinePTaxCredit_ID, String trxName)
    {
      super (ctx, LBR_NFLinePTaxCredit_ID, trxName);
      /** if (LBR_NFLinePTaxCredit_ID == 0)
        {
			setAmount (Env.ZERO);
// 0
			setLBR_NFLinePTaxCredit_ID (0);
			setLBR_NotaFiscalLine_ID (0);
			setLBR_TaxBenefitCode (null);
			setPercentage (Env.ZERO);
// 0
        } */
    }

    /** Load Constructor */
    public X_LBR_NFLinePTaxCredit (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 3 - Client - Org 
      */
    protected int get_AccessLevel()
    {
      return accessLevel.intValue();
    }

    /** Load Meta Data */
    protected POInfo initPO (Properties ctx)
    {
      POInfo poi = POInfo.getPOInfo (ctx, Table_ID, get_TrxName());
      return poi;
    }

    public String toString()
    {
      StringBuffer sb = new StringBuffer ("X_LBR_NFLinePTaxCredit[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Amount.
		@param Amount 
		Amount in a defined currency
	  */
	public void setAmount (BigDecimal Amount)
	{
		set_Value (COLUMNNAME_Amount, Amount);
	}

	/** Get Amount.
		@return Amount in a defined currency
	  */
	public BigDecimal getAmount () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Amount);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Description.
		@param Description 
		Optional short description of the record
	  */
	public void setDescription (String Description)
	{
		set_Value (COLUMNNAME_Description, Description);
	}

	/** Get Description.
		@return Optional short description of the record
	  */
	public String getDescription () 
	{
		return (String)get_Value(COLUMNNAME_Description);
	}

	/** Set Nota Fiscal Presumed Tax Credit.
		@param LBR_NFLinePTaxCredit_ID Nota Fiscal Presumed Tax Credit	  */
	public void setLBR_NFLinePTaxCredit_ID (int LBR_NFLinePTaxCredit_ID)
	{
		if (LBR_NFLinePTaxCredit_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NFLinePTaxCredit_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NFLinePTaxCredit_ID, Integer.valueOf(LBR_NFLinePTaxCredit_ID));
	}

	/** Get Nota Fiscal Presumed Tax Credit.
		@return Nota Fiscal Presumed Tax Credit	  */
	public int getLBR_NFLinePTaxCredit_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NFLinePTaxCredit_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_NotaFiscalLine getLBR_NotaFiscalLine() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_NotaFiscalLine)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_NotaFiscalLine.Table_Name)
			.getPO(getLBR_NotaFiscalLine_ID(), get_TrxName());	}

	/** Set Nota Fiscal Line.
		@param LBR_NotaFiscalLine_ID 
		Primary key table LBR_NotaFiscalLine
	  */
	public void setLBR_NotaFiscalLine_ID (int LBR_NotaFiscalLine_ID)
	{
		if (LBR_NotaFiscalLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalLine_ID, Integer.valueOf(LBR_NotaFiscalLine_ID));
	}

	/** Get Nota Fiscal Line.
		@return Primary key table LBR_NotaFiscalLine
	  */
	public int getLBR_NotaFiscalLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscalLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Tax Benefit Code.
		@param LBR_TaxBenefitCode Tax Benefit Code	  */
	public void setLBR_TaxBenefitCode (String LBR_TaxBenefitCode)
	{
		set_Value (COLUMNNAME_LBR_TaxBenefitCode, LBR_TaxBenefitCode);
	}

	/** Get Tax Benefit Code.
		@return Tax Benefit Code	  */
	public String getLBR_TaxBenefitCode () 
	{
		return (String)get_Value(COLUMNNAME_LBR_TaxBenefitCode);
	}

	/** Set Percentage.
		@param Percentage 
		Percent of the entire amount
	  */
	public void setPercentage (BigDecimal Percentage)
	{
		set_Value (COLUMNNAME_Percentage, Percentage);
	}

	/** Get Percentage.
		@return Percent of the entire amount
	  */
	public BigDecimal getPercentage () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Percentage);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}