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
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LBR_TaxHold
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_TaxHold extends PO implements I_LBR_TaxHold, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20210319L;

    /** Standard Constructor */
    public X_LBR_TaxHold (Properties ctx, int LBR_TaxHold_ID, String trxName)
    {
      super (ctx, LBR_TaxHold_ID, trxName);
      /** if (LBR_TaxHold_ID == 0)
        {
			setFCP_TaxAmt (Env.ZERO);
// 0
			setFCP_TaxBaseAmt (Env.ZERO);
// 0
			setFCP_TaxRate (Env.ZERO);
// 0
			setICMSST_TaxAmt (Env.ZERO);
// 0
			setICMSST_TaxBaseAmt (Env.ZERO);
// 0
			setICMSST_TaxRate (Env.ZERO);
// 0
			setICMS_TaxAmt (Env.ZERO);
// 0
			setICMS_TaxBaseAmt (Env.ZERO);
// 0
			setICMS_TaxRate (Env.ZERO);
// 0
			setLBR_TaxHold_ID (0);
			setM_Product_ID (0);
			setValidFrom (new Timestamp( System.currentTimeMillis() ));
// @#Date@
        } */
    }

    /** Load Constructor */
    public X_LBR_TaxHold (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_TaxHold[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_InvoiceLine getC_InvoiceLine() throws RuntimeException
    {
		return (org.compiere.model.I_C_InvoiceLine)MTable.get(getCtx(), org.compiere.model.I_C_InvoiceLine.Table_Name)
			.getPO(getC_InvoiceLine_ID(), get_TrxName());	}

	/** Set Invoice Line.
		@param C_InvoiceLine_ID 
		Invoice Detail Line
	  */
	public void setC_InvoiceLine_ID (int C_InvoiceLine_ID)
	{
		if (C_InvoiceLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_C_InvoiceLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_InvoiceLine_ID, Integer.valueOf(C_InvoiceLine_ID));
	}

	/** Get Invoice Line.
		@return Invoice Detail Line
	  */
	public int getC_InvoiceLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_InvoiceLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	/** Set FCP.
		@param FCP_TaxAmt FCP	  */
	public void setFCP_TaxAmt (BigDecimal FCP_TaxAmt)
	{
		set_Value (COLUMNNAME_FCP_TaxAmt, FCP_TaxAmt);
	}

	/** Get FCP.
		@return FCP	  */
	public BigDecimal getFCP_TaxAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_FCP_TaxAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set FCP Base.
		@param FCP_TaxBaseAmt FCP Base	  */
	public void setFCP_TaxBaseAmt (BigDecimal FCP_TaxBaseAmt)
	{
		set_Value (COLUMNNAME_FCP_TaxBaseAmt, FCP_TaxBaseAmt);
	}

	/** Get FCP Base.
		@return FCP Base	  */
	public BigDecimal getFCP_TaxBaseAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_FCP_TaxBaseAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax Rate.
		@param FCP_TaxRate Tax Rate	  */
	public void setFCP_TaxRate (BigDecimal FCP_TaxRate)
	{
		set_Value (COLUMNNAME_FCP_TaxRate, FCP_TaxRate);
	}

	/** Get Tax Rate.
		@return Tax Rate	  */
	public BigDecimal getFCP_TaxRate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_FCP_TaxRate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set ICMSST.
		@param ICMSST_TaxAmt ICMSST	  */
	public void setICMSST_TaxAmt (BigDecimal ICMSST_TaxAmt)
	{
		set_Value (COLUMNNAME_ICMSST_TaxAmt, ICMSST_TaxAmt);
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

	/** Set ICMSST Base.
		@param ICMSST_TaxBaseAmt ICMSST Base	  */
	public void setICMSST_TaxBaseAmt (BigDecimal ICMSST_TaxBaseAmt)
	{
		set_Value (COLUMNNAME_ICMSST_TaxBaseAmt, ICMSST_TaxBaseAmt);
	}

	/** Get ICMSST Base.
		@return ICMSST Base	  */
	public BigDecimal getICMSST_TaxBaseAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ICMSST_TaxBaseAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax Rate ICMSST.
		@param ICMSST_TaxRate Tax Rate ICMSST	  */
	public void setICMSST_TaxRate (BigDecimal ICMSST_TaxRate)
	{
		set_Value (COLUMNNAME_ICMSST_TaxRate, ICMSST_TaxRate);
	}

	/** Get Tax Rate ICMSST.
		@return Tax Rate ICMSST	  */
	public BigDecimal getICMSST_TaxRate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ICMSST_TaxRate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set ICMS.
		@param ICMS_TaxAmt ICMS	  */
	public void setICMS_TaxAmt (BigDecimal ICMS_TaxAmt)
	{
		set_Value (COLUMNNAME_ICMS_TaxAmt, ICMS_TaxAmt);
	}

	/** Get ICMS.
		@return ICMS	  */
	public BigDecimal getICMS_TaxAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ICMS_TaxAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set ICMS Base.
		@param ICMS_TaxBaseAmt ICMS Base	  */
	public void setICMS_TaxBaseAmt (BigDecimal ICMS_TaxBaseAmt)
	{
		set_Value (COLUMNNAME_ICMS_TaxBaseAmt, ICMS_TaxBaseAmt);
	}

	/** Get ICMS Base.
		@return ICMS Base	  */
	public BigDecimal getICMS_TaxBaseAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ICMS_TaxBaseAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax Rate ICMS.
		@param ICMS_TaxRate Tax Rate ICMS	  */
	public void setICMS_TaxRate (BigDecimal ICMS_TaxRate)
	{
		set_Value (COLUMNNAME_ICMS_TaxRate, ICMS_TaxRate);
	}

	/** Get Tax Rate ICMS.
		@return Tax Rate ICMS	  */
	public BigDecimal getICMS_TaxRate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ICMS_TaxRate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
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

	/** Set Tax Control.
		@param LBR_TaxHold_ID Tax Control	  */
	public void setLBR_TaxHold_ID (int LBR_TaxHold_ID)
	{
		if (LBR_TaxHold_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxHold_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxHold_ID, Integer.valueOf(LBR_TaxHold_ID));
	}

	/** Get Tax Control.
		@return Tax Control	  */
	public int getLBR_TaxHold_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_TaxHold_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_TaxHold_UU.
		@param LBR_TaxHold_UU LBR_TaxHold_UU	  */
	public void setLBR_TaxHold_UU (String LBR_TaxHold_UU)
	{
		set_Value (COLUMNNAME_LBR_TaxHold_UU, LBR_TaxHold_UU);
	}

	/** Get LBR_TaxHold_UU.
		@return LBR_TaxHold_UU	  */
	public String getLBR_TaxHold_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_TaxHold_UU);
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

	/** Set Quantity.
		@param Qty 
		Quantity
	  */
	public void setQty (BigDecimal Qty)
	{
		set_Value (COLUMNNAME_Qty, Qty);
	}

	/** Get Quantity.
		@return Quantity
	  */
	public BigDecimal getQty () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Qty);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Reference No.
		@param ReferenceNo 
		Your customer or vendor number at the Business Partner's site
	  */
	public void setReferenceNo (String ReferenceNo)
	{
		set_Value (COLUMNNAME_ReferenceNo, ReferenceNo);
	}

	/** Get Reference No.
		@return Your customer or vendor number at the Business Partner's site
	  */
	public String getReferenceNo () 
	{
		return (String)get_Value(COLUMNNAME_ReferenceNo);
	}

	/** Set Valid from.
		@param ValidFrom 
		Valid from including this date (first day)
	  */
	public void setValidFrom (Timestamp ValidFrom)
	{
		set_Value (COLUMNNAME_ValidFrom, ValidFrom);
	}

	/** Get Valid from.
		@return Valid from including this date (first day)
	  */
	public Timestamp getValidFrom () 
	{
		return (Timestamp)get_Value(COLUMNNAME_ValidFrom);
	}

	/** Set NFe ID.
		@param lbr_NFeID 
		Identification of NFe
	  */
	public void setlbr_NFeID (String lbr_NFeID)
	{
		set_Value (COLUMNNAME_lbr_NFeID, lbr_NFeID);
	}

	/** Get NFe ID.
		@return Identification of NFe
	  */
	public String getlbr_NFeID () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFeID);
	}
}