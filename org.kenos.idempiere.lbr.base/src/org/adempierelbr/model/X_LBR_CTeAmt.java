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

/** Generated Model for LBR_CTeAmt
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_CTeAmt extends PO implements I_LBR_CTeAmt, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20240716L;

    /** Standard Constructor */
    public X_LBR_CTeAmt (Properties ctx, int LBR_CTeAmt_ID, String trxName)
    {
      super (ctx, LBR_CTeAmt_ID, trxName);
      /** if (LBR_CTeAmt_ID == 0)
        {
			setAmount (Env.ZERO);
			setLBR_CTeAmt_ID (0);
			setLBR_CTe_ID (0);
			setName (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_CTeAmt (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_CTeAmt[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Amount.
		@param Amount 
		Amount in a defined currency
	  */
	public void setAmount (BigDecimal Amount)
	{
		set_ValueNoCheck (COLUMNNAME_Amount, Amount);
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

	/** Set CT-e Amounts.
		@param LBR_CTeAmt_ID CT-e Amounts	  */
	public void setLBR_CTeAmt_ID (int LBR_CTeAmt_ID)
	{
		if (LBR_CTeAmt_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_CTeAmt_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_CTeAmt_ID, Integer.valueOf(LBR_CTeAmt_ID));
	}

	/** Get CT-e Amounts.
		@return CT-e Amounts	  */
	public int getLBR_CTeAmt_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CTeAmt_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_CTeAmt_UU.
		@param LBR_CTeAmt_UU LBR_CTeAmt_UU	  */
	public void setLBR_CTeAmt_UU (String LBR_CTeAmt_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_CTeAmt_UU, LBR_CTeAmt_UU);
	}

	/** Get LBR_CTeAmt_UU.
		@return LBR_CTeAmt_UU	  */
	public String getLBR_CTeAmt_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CTeAmt_UU);
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

	/** Set Name.
		@param Name 
		Alphanumeric identifier of the entity
	  */
	public void setName (String Name)
	{
		set_Value (COLUMNNAME_Name, Name);
	}

	/** Get Name.
		@return Alphanumeric identifier of the entity
	  */
	public String getName () 
	{
		return (String)get_Value(COLUMNNAME_Name);
	}
}