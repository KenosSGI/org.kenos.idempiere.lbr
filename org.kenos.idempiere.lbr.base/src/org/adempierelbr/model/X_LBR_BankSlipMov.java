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

/** Generated Model for LBR_BankSlipMov
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_BankSlipMov extends PO implements I_LBR_BankSlipMov, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20200401L;

    /** Standard Constructor */
    public X_LBR_BankSlipMov (Properties ctx, int LBR_BankSlipMov_ID, String trxName)
    {
      super (ctx, LBR_BankSlipMov_ID, trxName);
      /** if (LBR_BankSlipMov_ID == 0)
        {
			setChargeAmt (Env.ZERO);
// 0
			setDiscountAmt (Env.ZERO);
// 0
			setGrandTotal (Env.ZERO);
// 0
			setIsSOTrx (true);
// Y
			setLBR_BankSlipMov_ID (0);
			setLBR_BankSlip_ID (0);
			setLBR_InterestValue (Env.ZERO);
// 0
			setValue (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_BankSlipMov (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_BankSlipMov[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_Payment getC_Payment() throws RuntimeException
    {
		return (org.compiere.model.I_C_Payment)MTable.get(getCtx(), org.compiere.model.I_C_Payment.Table_Name)
			.getPO(getC_Payment_ID(), get_TrxName());	}

	/** Set Payment.
		@param C_Payment_ID 
		Payment identifier
	  */
	public void setC_Payment_ID (int C_Payment_ID)
	{
		if (C_Payment_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_C_Payment_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_Payment_ID, Integer.valueOf(C_Payment_ID));
	}

	/** Get Payment.
		@return Payment identifier
	  */
	public int getC_Payment_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Payment_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Charge amount.
		@param ChargeAmt 
		Charge Amount
	  */
	public void setChargeAmt (BigDecimal ChargeAmt)
	{
		set_ValueNoCheck (COLUMNNAME_ChargeAmt, ChargeAmt);
	}

	/** Get Charge amount.
		@return Charge Amount
	  */
	public BigDecimal getChargeAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ChargeAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Transaction Date.
		@param DateTrx 
		Transaction Date
	  */
	public void setDateTrx (Timestamp DateTrx)
	{
		set_ValueNoCheck (COLUMNNAME_DateTrx, DateTrx);
	}

	/** Get Transaction Date.
		@return Transaction Date
	  */
	public Timestamp getDateTrx () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateTrx);
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

	/** Set Discount Amount.
		@param DiscountAmt 
		Calculated amount of discount
	  */
	public void setDiscountAmt (BigDecimal DiscountAmt)
	{
		set_ValueNoCheck (COLUMNNAME_DiscountAmt, DiscountAmt);
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

	/** Set Grand Total.
		@param GrandTotal 
		Total amount of document
	  */
	public void setGrandTotal (BigDecimal GrandTotal)
	{
		set_ValueNoCheck (COLUMNNAME_GrandTotal, GrandTotal);
	}

	/** Get Grand Total.
		@return Total amount of document
	  */
	public BigDecimal getGrandTotal () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_GrandTotal);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Sales Transaction.
		@param IsSOTrx 
		This is a Sales Transaction
	  */
	public void setIsSOTrx (boolean IsSOTrx)
	{
		set_ValueNoCheck (COLUMNNAME_IsSOTrx, Boolean.valueOf(IsSOTrx));
	}

	/** Get Sales Transaction.
		@return This is a Sales Transaction
	  */
	public boolean isSOTrx () 
	{
		Object oo = get_Value(COLUMNNAME_IsSOTrx);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Bank Slip Mov.
		@param LBR_BankSlipMov_ID Bank Slip Mov	  */
	public void setLBR_BankSlipMov_ID (int LBR_BankSlipMov_ID)
	{
		if (LBR_BankSlipMov_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_BankSlipMov_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_BankSlipMov_ID, Integer.valueOf(LBR_BankSlipMov_ID));
	}

	/** Get Bank Slip Mov.
		@return Bank Slip Mov	  */
	public int getLBR_BankSlipMov_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BankSlipMov_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_BankSlipMov_UU.
		@param LBR_BankSlipMov_UU LBR_BankSlipMov_UU	  */
	public void setLBR_BankSlipMov_UU (String LBR_BankSlipMov_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_BankSlipMov_UU, LBR_BankSlipMov_UU);
	}

	/** Get LBR_BankSlipMov_UU.
		@return LBR_BankSlipMov_UU	  */
	public String getLBR_BankSlipMov_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BankSlipMov_UU);
	}

	public org.adempierelbr.model.I_LBR_BankSlipOccur getLBR_BankSlipOccur() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_BankSlipOccur)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_BankSlipOccur.Table_Name)
			.getPO(getLBR_BankSlipOccur_ID(), get_TrxName());	}

	/** Set Bank Slip Occurrence.
		@param LBR_BankSlipOccur_ID Bank Slip Occurrence	  */
	public void setLBR_BankSlipOccur_ID (int LBR_BankSlipOccur_ID)
	{
		if (LBR_BankSlipOccur_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_BankSlipOccur_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_BankSlipOccur_ID, Integer.valueOf(LBR_BankSlipOccur_ID));
	}

	/** Get Bank Slip Occurrence.
		@return Bank Slip Occurrence	  */
	public int getLBR_BankSlipOccur_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BankSlipOccur_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_BankSlip getLBR_BankSlip() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_BankSlip)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_BankSlip.Table_Name)
			.getPO(getLBR_BankSlip_ID(), get_TrxName());	}

	/** Set Bank Slip.
		@param LBR_BankSlip_ID Bank Slip	  */
	public void setLBR_BankSlip_ID (int LBR_BankSlip_ID)
	{
		if (LBR_BankSlip_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_BankSlip_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_BankSlip_ID, Integer.valueOf(LBR_BankSlip_ID));
	}

	/** Get Bank Slip.
		@return Bank Slip	  */
	public int getLBR_BankSlip_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BankSlip_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Interest Value.
		@param LBR_InterestValue Interest Value	  */
	public void setLBR_InterestValue (BigDecimal LBR_InterestValue)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_InterestValue, LBR_InterestValue);
	}

	/** Get Interest Value.
		@return Interest Value	  */
	public BigDecimal getLBR_InterestValue () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_InterestValue);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Movement Date.
		@param MovementDate 
		Date a product was moved in or out of inventory
	  */
	public void setMovementDate (Timestamp MovementDate)
	{
		set_ValueNoCheck (COLUMNNAME_MovementDate, MovementDate);
	}

	/** Get Movement Date.
		@return Date a product was moved in or out of inventory
	  */
	public Timestamp getMovementDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_MovementDate);
	}

	/** Liquidation = L */
	public static final String TYPE_Liquidation = "L";
	/** Occurrence = O */
	public static final String TYPE_Occurrence = "O";
	/** Register Request = R */
	public static final String TYPE_RegisterRequest = "R";
	/** Register Confirmed = C */
	public static final String TYPE_RegisterConfirmed = "C";
	/** Set Type.
		@param Type 
		Type of Validation (SQL, Java Script, Java Language)
	  */
	public void setType (String Type)
	{

		set_Value (COLUMNNAME_Type, Type);
	}

	/** Get Type.
		@return Type of Validation (SQL, Java Script, Java Language)
	  */
	public String getType () 
	{
		return (String)get_Value(COLUMNNAME_Type);
	}

	/** Set Search Key.
		@param Value 
		Search key for the record in the format required - must be unique
	  */
	public void setValue (String Value)
	{
		set_ValueNoCheck (COLUMNNAME_Value, Value);
	}

	/** Get Search Key.
		@return Search key for the record in the format required - must be unique
	  */
	public String getValue () 
	{
		return (String)get_Value(COLUMNNAME_Value);
	}
}