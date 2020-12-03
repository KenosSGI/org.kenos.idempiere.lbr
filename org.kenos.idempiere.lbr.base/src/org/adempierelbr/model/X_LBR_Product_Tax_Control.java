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

/** Generated Model for LBR_Product_Tax_Control
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_Product_Tax_Control extends PO implements I_LBR_Product_Tax_Control, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20200915L;

    /** Standard Constructor */
    public X_LBR_Product_Tax_Control (Properties ctx, int LBR_Product_Tax_Control_ID, String trxName)
    {
      super (ctx, LBR_Product_Tax_Control_ID, trxName);
      /** if (LBR_Product_Tax_Control_ID == 0)
        {
			setICMSST_TaxAmt (Env.ZERO);
// 0
			setLBR_ICMSSubstituto (Env.ZERO);
// 0
			setLBR_Product_Tax_Control_ID (0);
			setLBR_QtyICMSSubstitute (Env.ZERO);
// 0
			setM_Product_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_Product_Tax_Control (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_Product_Tax_Control[")
        .append(get_ID()).append("]");
      return sb.toString();
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

	/** Set ICMSST.
		@param ICMSST_TaxAmt ICMSST	  */
	public void setICMSST_TaxAmt (BigDecimal ICMSST_TaxAmt)
	{
		set_ValueNoCheck (COLUMNNAME_ICMSST_TaxAmt, ICMSST_TaxAmt);
	}

	/** Get ICMSST.
		@return ICMSST	  */
	public BigDecimal getICMSST_TaxAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ICMSST_TaxAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set ICMS Substituto.
		@param LBR_ICMSSubstituto 
		Valor do ICMS próprio do Substituto
	  */
	public void setLBR_ICMSSubstituto (BigDecimal LBR_ICMSSubstituto)
	{
		set_Value (COLUMNNAME_LBR_ICMSSubstituto, LBR_ICMSSubstituto);
	}

	/** Get ICMS Substituto.
		@return Valor do ICMS próprio do Substituto
	  */
	public BigDecimal getLBR_ICMSSubstituto () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ICMSSubstituto);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax Control.
		@param LBR_Product_Tax_Control_ID Tax Control	  */
	public void setLBR_Product_Tax_Control_ID (int LBR_Product_Tax_Control_ID)
	{
		if (LBR_Product_Tax_Control_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_Product_Tax_Control_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_Product_Tax_Control_ID, Integer.valueOf(LBR_Product_Tax_Control_ID));
	}

	/** Get Tax Control.
		@return Tax Control	  */
	public int getLBR_Product_Tax_Control_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Product_Tax_Control_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_Product_Tax_Control_UU.
		@param LBR_Product_Tax_Control_UU LBR_Product_Tax_Control_UU	  */
	public void setLBR_Product_Tax_Control_UU (String LBR_Product_Tax_Control_UU)
	{
		set_Value (COLUMNNAME_LBR_Product_Tax_Control_UU, LBR_Product_Tax_Control_UU);
	}

	/** Get LBR_Product_Tax_Control_UU.
		@return LBR_Product_Tax_Control_UU	  */
	public String getLBR_Product_Tax_Control_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Product_Tax_Control_UU);
	}

	/** Set Qty ICMS Substitute.
		@param LBR_QtyICMSSubstitute 
		Amount Quanty related to Own Substitute ICMS
	  */
	public void setLBR_QtyICMSSubstitute (BigDecimal LBR_QtyICMSSubstitute)
	{
		set_Value (COLUMNNAME_LBR_QtyICMSSubstitute, LBR_QtyICMSSubstitute);
	}

	/** Get Qty ICMS Substitute.
		@return Amount Quanty related to Own Substitute ICMS
	  */
	public BigDecimal getLBR_QtyICMSSubstitute () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_QtyICMSSubstitute);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public org.compiere.model.I_M_Product getM_Product() throws RuntimeException
    {
		return (org.compiere.model.I_M_Product)MTable.get(getCtx(), org.compiere.model.I_M_Product.Table_Name)
			.getPO(getM_Product_ID(), get_TrxName());	}

	/** Set Product.
		@param M_Product_ID 
		Product, Service, Item
	  */
	public void setM_Product_ID (int M_Product_ID)
	{
		if (M_Product_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_M_Product_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_M_Product_ID, Integer.valueOf(M_Product_ID));
	}

	/** Get Product.
		@return Product, Service, Item
	  */
	public int getM_Product_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_Product_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
}