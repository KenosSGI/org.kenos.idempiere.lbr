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

/** Generated Model for LBR_BankSlipLayout
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_BankSlipLayout extends PO implements I_LBR_BankSlipLayout, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20200316L;

    /** Standard Constructor */
    public X_LBR_BankSlipLayout (Properties ctx, int LBR_BankSlipLayout_ID, String trxName)
    {
      super (ctx, LBR_BankSlipLayout_ID, trxName);
      /** if (LBR_BankSlipLayout_ID == 0)
        {
			setLBR_BankSlipLayout_ID (0);
			setLBR_Bank_ID (0);
			setName (null);
			setType (null);
			setVersion (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_BankSlipLayout (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 4 - System 
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
      StringBuffer sb = new StringBuffer ("X_LBR_BankSlipLayout[")
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

	/** Set Bank Slip Layout.
		@param LBR_BankSlipLayout_ID Bank Slip Layout	  */
	public void setLBR_BankSlipLayout_ID (int LBR_BankSlipLayout_ID)
	{
		if (LBR_BankSlipLayout_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_BankSlipLayout_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_BankSlipLayout_ID, Integer.valueOf(LBR_BankSlipLayout_ID));
	}

	/** Get Bank Slip Layout.
		@return Bank Slip Layout	  */
	public int getLBR_BankSlipLayout_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BankSlipLayout_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_BankSlipLayout_UU.
		@param LBR_BankSlipLayout_UU LBR_BankSlipLayout_UU	  */
	public void setLBR_BankSlipLayout_UU (String LBR_BankSlipLayout_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_BankSlipLayout_UU, LBR_BankSlipLayout_UU);
	}

	/** Get LBR_BankSlipLayout_UU.
		@return LBR_BankSlipLayout_UU	  */
	public String getLBR_BankSlipLayout_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BankSlipLayout_UU);
	}

	public org.adempierelbr.model.I_LBR_Bank getLBR_Bank() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_Bank)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_Bank.Table_Name)
			.getPO(getLBR_Bank_ID(), get_TrxName());	}

	/** Set Bank.
		@param LBR_Bank_ID 
		Primary Key table LBR_Bank
	  */
	public void setLBR_Bank_ID (int LBR_Bank_ID)
	{
		if (LBR_Bank_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_Bank_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_Bank_ID, Integer.valueOf(LBR_Bank_ID));
	}

	/** Get Bank.
		@return Primary Key table LBR_Bank
	  */
	public int getLBR_Bank_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Bank_ID);
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

	/** CNAB 240 = 1 */
	public static final String TYPE_CNAB240 = "1";
	/** CNAB 400 = 2 */
	public static final String TYPE_CNAB400 = "2";
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

	/** Set Version.
		@param Version 
		Version of the table definition
	  */
	public void setVersion (String Version)
	{
		set_Value (COLUMNNAME_Version, Version);
	}

	/** Get Version.
		@return Version of the table definition
	  */
	public String getVersion () 
	{
		return (String)get_Value(COLUMNNAME_Version);
	}
}