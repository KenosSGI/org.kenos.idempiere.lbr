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

/** Generated Model for LBR_CTeICMSFim
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_CTeICMSFim extends PO implements I_LBR_CTeICMSFim, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20240715L;

    /** Standard Constructor */
    public X_LBR_CTeICMSFim (Properties ctx, int LBR_CTeICMSFim_ID, String trxName)
    {
      super (ctx, LBR_CTeICMSFim_ID, trxName);
      /** if (LBR_CTeICMSFim_ID == 0)
        {
			setLBR_CTeICMSFim_ID (0);
			setLBR_CTe_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_CTeICMSFim (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_CTeICMSFim[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set CT-e ICMS Fim.
		@param LBR_CTeICMSFim_ID CT-e ICMS Fim	  */
	public void setLBR_CTeICMSFim_ID (int LBR_CTeICMSFim_ID)
	{
		if (LBR_CTeICMSFim_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_CTeICMSFim_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_CTeICMSFim_ID, Integer.valueOf(LBR_CTeICMSFim_ID));
	}

	/** Get CT-e ICMS Fim.
		@return CT-e ICMS Fim	  */
	public int getLBR_CTeICMSFim_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CTeICMSFim_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_CTeICMSFim_UU.
		@param LBR_CTeICMSFim_UU LBR_CTeICMSFim_UU	  */
	public void setLBR_CTeICMSFim_UU (String LBR_CTeICMSFim_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_CTeICMSFim_UU, LBR_CTeICMSFim_UU);
	}

	/** Get LBR_CTeICMSFim_UU.
		@return LBR_CTeICMSFim_UU	  */
	public String getLBR_CTeICMSFim_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CTeICMSFim_UU);
	}

	public org.adempierelbr.model.I_LBR_CTe getLBR_CTe() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_CTe)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_CTe.Table_Name)
			.getPO(getLBR_CTe_ID(), get_TrxName());	}

	/** Set CT-e.
		@param LBR_CTe_ID CT-e	  */
	public void setLBR_CTe_ID (int LBR_CTe_ID)
	{
		if (LBR_CTe_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_CTe_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_CTe_ID, Integer.valueOf(LBR_CTe_ID));
	}

	/** Get CT-e.
		@return CT-e	  */
	public int getLBR_CTe_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CTe_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Tax Credit Amt.
		@param LBR_TaxCreditAmt Tax Credit Amt	  */
	public void setLBR_TaxCreditAmt (BigDecimal LBR_TaxCreditAmt)
	{
		set_Value (COLUMNNAME_LBR_TaxCreditAmt, LBR_TaxCreditAmt);
	}

	/** Get Tax Credit Amt.
		@return Tax Credit Amt	  */
	public BigDecimal getLBR_TaxCreditAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxCreditAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public org.adempierelbr.model.I_LBR_TaxName getLBR_TaxName() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_TaxName)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_TaxName.Table_Name)
			.getPO(getLBR_TaxName_ID(), get_TrxName());	}

	/** Set Tax Name.
		@param LBR_TaxName_ID 
		Primary key table LBR_TaxName
	  */
	public void setLBR_TaxName_ID (int LBR_TaxName_ID)
	{
		if (LBR_TaxName_ID < 1) 
			set_Value (COLUMNNAME_LBR_TaxName_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_TaxName_ID, Integer.valueOf(LBR_TaxName_ID));
	}

	/** Get Tax Name.
		@return Primary key table LBR_TaxName
	  */
	public int getLBR_TaxName_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_TaxName_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_TaxStatus getLBR_TaxStatus() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_TaxStatus)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_TaxStatus.Table_Name)
			.getPO(getLBR_TaxStatus_ID(), get_TrxName());	}

	/** Set Tax Status.
		@param LBR_TaxStatus_ID Tax Status	  */
	public void setLBR_TaxStatus_ID (int LBR_TaxStatus_ID)
	{
		if (LBR_TaxStatus_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxStatus_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxStatus_ID, Integer.valueOf(LBR_TaxStatus_ID));
	}

	/** Get Tax Status.
		@return Tax Status	  */
	public int getLBR_TaxStatus_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_TaxStatus_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Tax Amount.
		@param lbr_TaxAmt 
		Defines the Tax Amount
	  */
	public void setlbr_TaxAmt (BigDecimal lbr_TaxAmt)
	{
		set_Value (COLUMNNAME_lbr_TaxAmt, lbr_TaxAmt);
	}

	/** Get Tax Amount.
		@return Defines the Tax Amount
	  */
	public BigDecimal getlbr_TaxAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_lbr_TaxAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax Base Reduction.
		@param lbr_TaxBase 
		Indicates the Tax Base Reduction
	  */
	public void setlbr_TaxBase (BigDecimal lbr_TaxBase)
	{
		set_Value (COLUMNNAME_lbr_TaxBase, lbr_TaxBase);
	}

	/** Get Tax Base Reduction.
		@return Indicates the Tax Base Reduction
	  */
	public BigDecimal getlbr_TaxBase () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_lbr_TaxBase);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax Base Amount.
		@param lbr_TaxBaseAmt 
		Defines the Tax Base Amount
	  */
	public void setlbr_TaxBaseAmt (BigDecimal lbr_TaxBaseAmt)
	{
		set_Value (COLUMNNAME_lbr_TaxBaseAmt, lbr_TaxBaseAmt);
	}

	/** Get Tax Base Amount.
		@return Defines the Tax Base Amount
	  */
	public BigDecimal getlbr_TaxBaseAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_lbr_TaxBaseAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax Rate.
		@param lbr_TaxRate 
		Indicates the Tax Rate
	  */
	public void setlbr_TaxRate (BigDecimal lbr_TaxRate)
	{
		set_Value (COLUMNNAME_lbr_TaxRate, lbr_TaxRate);
	}

	/** Get Tax Rate.
		@return Indicates the Tax Rate
	  */
	public BigDecimal getlbr_TaxRate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_lbr_TaxRate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}