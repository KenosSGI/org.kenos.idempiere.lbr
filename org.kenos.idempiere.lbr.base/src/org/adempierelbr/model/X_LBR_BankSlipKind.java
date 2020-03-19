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

import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for LBR_BankSlipKind
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_BankSlipKind extends PO implements I_LBR_BankSlipKind, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20200319L;

    /** Standard Constructor */
    public X_LBR_BankSlipKind (Properties ctx, int LBR_BankSlipKind_ID, String trxName)
    {
      super (ctx, LBR_BankSlipKind_ID, trxName);
      /** if (LBR_BankSlipKind_ID == 0)
        {
			setLBR_BankSlipKind_ID (0);
			setName (null);
			setValue (null);
			setValueNumber (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_BankSlipKind (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 6 - System - Client 
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
      StringBuffer sb = new StringBuffer ("X_LBR_BankSlipKind[")
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

	/** Set Bank Slip Kind.
		@param LBR_BankSlipKind_ID Bank Slip Kind	  */
	public void setLBR_BankSlipKind_ID (int LBR_BankSlipKind_ID)
	{
		if (LBR_BankSlipKind_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_BankSlipKind_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_BankSlipKind_ID, Integer.valueOf(LBR_BankSlipKind_ID));
	}

	/** Get Bank Slip Kind.
		@return Bank Slip Kind	  */
	public int getLBR_BankSlipKind_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BankSlipKind_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_BankSlipKind_UU.
		@param LBR_BankSlipKind_UU LBR_BankSlipKind_UU	  */
	public void setLBR_BankSlipKind_UU (String LBR_BankSlipKind_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_BankSlipKind_UU, LBR_BankSlipKind_UU);
	}

	/** Get LBR_BankSlipKind_UU.
		@return LBR_BankSlipKind_UU	  */
	public String getLBR_BankSlipKind_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BankSlipKind_UU);
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

	/** Set Search Key.
		@param Value 
		Search key for the record in the format required - must be unique
	  */
	public void setValue (String Value)
	{
		set_Value (COLUMNNAME_Value, Value);
	}

	/** Get Search Key.
		@return Search key for the record in the format required - must be unique
	  */
	public String getValue () 
	{
		return (String)get_Value(COLUMNNAME_Value);
	}

	/** Set Value.
		@param ValueNumber 
		Numeric Value
	  */
	public void setValueNumber (int ValueNumber)
	{
		set_Value (COLUMNNAME_ValueNumber, Integer.valueOf(ValueNumber));
	}

	/** Get Value.
		@return Numeric Value
	  */
	public int getValueNumber () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_ValueNumber);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
}