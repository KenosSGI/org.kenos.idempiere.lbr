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
import org.compiere.util.KeyNamePair;

/** Generated Model for LBR_NFPaySchedule
 *  @author iDempiere (generated) 
 *  @version Release 4.1 - $Id$ */
public class X_LBR_NFPaySchedule extends PO implements I_LBR_NFPaySchedule, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20180914L;

    /** Standard Constructor */
    public X_LBR_NFPaySchedule (Properties ctx, int LBR_NFPaySchedule_ID, String trxName)
    {
      super (ctx, LBR_NFPaySchedule_ID, trxName);
      /** if (LBR_NFPaySchedule_ID == 0)
        {
			setDiscountAmt (Env.ZERO);
			setDiscountDate (new Timestamp( System.currentTimeMillis() ));
			setDueAmt (Env.ZERO);
			setDueDate (new Timestamp( System.currentTimeMillis() ));
			setIsValid (false);
			setLBR_NFPaySchedule_ID (0);
			setLBR_NotaFiscal_ID (0);
			setProcessed (false);
        } */
    }

    /** Load Constructor */
    public X_LBR_NFPaySchedule (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 1 - Org 
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
      StringBuffer sb = new StringBuffer ("X_LBR_NFPaySchedule[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_PaySchedule getC_PaySchedule() throws RuntimeException
    {
		return (org.compiere.model.I_C_PaySchedule)MTable.get(getCtx(), org.compiere.model.I_C_PaySchedule.Table_Name)
			.getPO(getC_PaySchedule_ID(), get_TrxName());	}

	/** Set Payment Schedule.
		@param C_PaySchedule_ID 
		Payment Schedule Template
	  */
	public void setC_PaySchedule_ID (int C_PaySchedule_ID)
	{
		if (C_PaySchedule_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_C_PaySchedule_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_PaySchedule_ID, Integer.valueOf(C_PaySchedule_ID));
	}

	/** Get Payment Schedule.
		@return Payment Schedule Template
	  */
	public int getC_PaySchedule_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_PaySchedule_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Discount Amount.
		@param DiscountAmt 
		Calculated amount of discount
	  */
	public void setDiscountAmt (BigDecimal DiscountAmt)
	{
		set_Value (COLUMNNAME_DiscountAmt, DiscountAmt);
	}

	/** Get Discount Amount.
		@return Calculated amount of discount
	  */
	public BigDecimal getDiscountAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_DiscountAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Discount Date.
		@param DiscountDate 
		Last Date for payments with discount
	  */
	public void setDiscountDate (Timestamp DiscountDate)
	{
		set_Value (COLUMNNAME_DiscountDate, DiscountDate);
	}

	/** Get Discount Date.
		@return Last Date for payments with discount
	  */
	public Timestamp getDiscountDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DiscountDate);
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getDiscountDate()));
    }

	/** Set Amount due.
		@param DueAmt 
		Amount of the payment due
	  */
	public void setDueAmt (BigDecimal DueAmt)
	{
		set_Value (COLUMNNAME_DueAmt, DueAmt);
	}

	/** Get Amount due.
		@return Amount of the payment due
	  */
	public BigDecimal getDueAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_DueAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Due Date.
		@param DueDate 
		Date when the payment is due
	  */
	public void setDueDate (Timestamp DueDate)
	{
		set_Value (COLUMNNAME_DueDate, DueDate);
	}

	/** Get Due Date.
		@return Date when the payment is due
	  */
	public Timestamp getDueDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DueDate);
	}

	/** Set Valid.
		@param IsValid 
		Element is valid
	  */
	public void setIsValid (boolean IsValid)
	{
		set_Value (COLUMNNAME_IsValid, Boolean.valueOf(IsValid));
	}

	/** Get Valid.
		@return Element is valid
	  */
	public boolean isValid () 
	{
		Object oo = get_Value(COLUMNNAME_IsValid);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Boleto Comments.
		@param lbr_BoletoComments 
		Define the Boleto Comments
	  */
	public void setlbr_BoletoComments (String lbr_BoletoComments)
	{
		set_Value (COLUMNNAME_lbr_BoletoComments, lbr_BoletoComments);
	}

	/** Get Boleto Comments.
		@return Define the Boleto Comments
	  */
	public String getlbr_BoletoComments () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BoletoComments);
	}

	/** Set Nota Fiscal Payment Schedule.
		@param LBR_NFPaySchedule_ID Nota Fiscal Payment Schedule	  */
	public void setLBR_NFPaySchedule_ID (int LBR_NFPaySchedule_ID)
	{
		if (LBR_NFPaySchedule_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NFPaySchedule_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NFPaySchedule_ID, Integer.valueOf(LBR_NFPaySchedule_ID));
	}

	/** Get Nota Fiscal Payment Schedule.
		@return Nota Fiscal Payment Schedule	  */
	public int getLBR_NFPaySchedule_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NFPaySchedule_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_NFPaySchedule_UU.
		@param LBR_NFPaySchedule_UU LBR_NFPaySchedule_UU	  */
	public void setLBR_NFPaySchedule_UU (String LBR_NFPaySchedule_UU)
	{
		set_Value (COLUMNNAME_LBR_NFPaySchedule_UU, LBR_NFPaySchedule_UU);
	}

	/** Get LBR_NFPaySchedule_UU.
		@return LBR_NFPaySchedule_UU	  */
	public String getLBR_NFPaySchedule_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFPaySchedule_UU);
	}

	public org.adempierelbr.model.I_LBR_NotaFiscal getLBR_NotaFiscal() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_NotaFiscal)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_NotaFiscal.Table_Name)
			.getPO(getLBR_NotaFiscal_ID(), get_TrxName());	}

	/** Set Nota Fiscal.
		@param LBR_NotaFiscal_ID 
		Primary key table LBR_NotaFiscal
	  */
	public void setLBR_NotaFiscal_ID (int LBR_NotaFiscal_ID)
	{
		if (LBR_NotaFiscal_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscal_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscal_ID, Integer.valueOf(LBR_NotaFiscal_ID));
	}

	/** Get Nota Fiscal.
		@return Primary key table LBR_NotaFiscal
	  */
	public int getLBR_NotaFiscal_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscal_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Processed.
		@param Processed 
		The document has been processed
	  */
	public void setProcessed (boolean Processed)
	{
		set_Value (COLUMNNAME_Processed, Boolean.valueOf(Processed));
	}

	/** Get Processed.
		@return The document has been processed
	  */
	public boolean isProcessed () 
	{
		Object oo = get_Value(COLUMNNAME_Processed);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Process Now.
		@param Processing Process Now	  */
	public void setProcessing (boolean Processing)
	{
		set_Value (COLUMNNAME_Processing, Boolean.valueOf(Processing));
	}

	/** Get Process Now.
		@return Process Now	  */
	public boolean isProcessing () 
	{
		Object oo = get_Value(COLUMNNAME_Processing);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}
}