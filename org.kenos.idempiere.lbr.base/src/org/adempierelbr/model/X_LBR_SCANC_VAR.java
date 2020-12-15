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

/** Generated Model for LBR_SCANC_VAR
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_SCANC_VAR extends PO implements I_LBR_SCANC_VAR, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20201030L;

    /** Standard Constructor */
    public X_LBR_SCANC_VAR (Properties ctx, int LBR_SCANC_VAR_ID, String trxName)
    {
      super (ctx, LBR_SCANC_VAR_ID, trxName);
      /** if (LBR_SCANC_VAR_ID == 0)
        {
			setLBR_SCANC_VAR_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_SCANC_VAR (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_SCANC_VAR[")
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

	public org.adempierelbr.model.I_LBR_SCANC getLBR_SCANC() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_SCANC)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_SCANC.Table_Name)
			.getPO(getLBR_SCANC_ID(), get_TrxName());	}

	/** Set SCANC.
		@param LBR_SCANC_ID SCANC	  */
	public void setLBR_SCANC_ID (int LBR_SCANC_ID)
	{
		if (LBR_SCANC_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_SCANC_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_SCANC_ID, Integer.valueOf(LBR_SCANC_ID));
	}

	/** Get SCANC.
		@return SCANC	  */
	public int getLBR_SCANC_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_SCANC_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set SCANC Var.
		@param LBR_SCANC_VAR_ID SCANC Var	  */
	public void setLBR_SCANC_VAR_ID (int LBR_SCANC_VAR_ID)
	{
		if (LBR_SCANC_VAR_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_SCANC_VAR_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_SCANC_VAR_ID, Integer.valueOf(LBR_SCANC_VAR_ID));
	}

	/** Get SCANC Var.
		@return SCANC Var	  */
	public int getLBR_SCANC_VAR_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_SCANC_VAR_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_SCANC_VAR_UU.
		@param LBR_SCANC_VAR_UU LBR_SCANC_VAR_UU	  */
	public void setLBR_SCANC_VAR_UU (String LBR_SCANC_VAR_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_SCANC_VAR_UU, LBR_SCANC_VAR_UU);
	}

	/** Get LBR_SCANC_VAR_UU.
		@return LBR_SCANC_VAR_UU	  */
	public String getLBR_SCANC_VAR_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_SCANC_VAR_UU);
	}

	/** Set Movement Quantity.
		@param MovementQty 
		Quantity of a product moved.
	  */
	public void setMovementQty (BigDecimal MovementQty)
	{
		set_Value (COLUMNNAME_MovementQty, MovementQty);
	}

	/** Get Movement Quantity.
		@return Quantity of a product moved.
	  */
	public BigDecimal getMovementQty () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_MovementQty);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Product Key.
		@param ProductValue 
		Key of the Product
	  */
	public void setProductValue (String ProductValue)
	{
		set_Value (COLUMNNAME_ProductValue, ProductValue);
	}

	/** Get Product Key.
		@return Key of the Product
	  */
	public String getProductValue () 
	{
		return (String)get_Value(COLUMNNAME_ProductValue);
	}
}