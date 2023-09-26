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

/** Generated Model for LBR_BankSlipFold
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_BankSlipFold extends PO implements I_LBR_BankSlipFold, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20200401L;

    /** Standard Constructor */
    public X_LBR_BankSlipFold (Properties ctx, int LBR_BankSlipFold_ID, String trxName)
    {
      super (ctx, LBR_BankSlipFold_ID, trxName);
      /** if (LBR_BankSlipFold_ID == 0)
        {
			setLBR_BankSlipFold_ID (0);
			setLBR_BankSlipLayout_ID (0);
			setName (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_BankSlipFold (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_BankSlipFold[")
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

	/** Set Fold.
		@param LBR_BankSlipFold_ID Fold	  */
	public void setLBR_BankSlipFold_ID (int LBR_BankSlipFold_ID)
	{
		if (LBR_BankSlipFold_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_BankSlipFold_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_BankSlipFold_ID, Integer.valueOf(LBR_BankSlipFold_ID));
	}

	/** Get Fold.
		@return Fold	  */
	public int getLBR_BankSlipFold_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BankSlipFold_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_BankSlipFold_UU.
		@param LBR_BankSlipFold_UU LBR_BankSlipFold_UU	  */
	public void setLBR_BankSlipFold_UU (String LBR_BankSlipFold_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_BankSlipFold_UU, LBR_BankSlipFold_UU);
	}

	/** Get LBR_BankSlipFold_UU.
		@return LBR_BankSlipFold_UU	  */
	public String getLBR_BankSlipFold_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BankSlipFold_UU);
	}

	public org.adempierelbr.model.I_LBR_BankSlipLayout getLBR_BankSlipLayout() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_BankSlipLayout)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_BankSlipLayout.Table_Name)
			.getPO(getLBR_BankSlipLayout_ID(), get_TrxName());	}

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

	/** Direta = 1 */
	public static final String LBR_ISSUETYPE_Direta = "1";
	/** Escritural = 2 */
	public static final String LBR_ISSUETYPE_Escritural = "2";
	/** Set Issue Type.
		@param LBR_IssueType Issue Type	  */
	public void setLBR_IssueType (String LBR_IssueType)
	{

		set_Value (COLUMNNAME_LBR_IssueType, LBR_IssueType);
	}

	/** Get Issue Type.
		@return Issue Type	  */
	public String getLBR_IssueType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_IssueType);
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