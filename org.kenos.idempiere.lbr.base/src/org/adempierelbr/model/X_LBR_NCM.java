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
import org.compiere.util.KeyNamePair;

/** Generated Model for LBR_NCM
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_NCM extends PO implements I_LBR_NCM, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20220503L;

    /** Standard Constructor */
    public X_LBR_NCM (Properties ctx, int LBR_NCM_ID, String trxName)
    {
      super (ctx, LBR_NCM_ID, trxName);
      /** if (LBR_NCM_ID == 0)
        {
			setLBR_NCM_ID (0);
			setValue (null);
			setlbr_HasSubstitution (false);
// N
        } */
    }

    /** Load Constructor */
    public X_LBR_NCM (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_NCM[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_UOM getC_UOM() throws RuntimeException
    {
		return (org.compiere.model.I_C_UOM)MTable.get(getCtx(), org.compiere.model.I_C_UOM.Table_Name)
			.getPO(getC_UOM_ID(), get_TrxName());	}

	/** Set UOM.
		@param C_UOM_ID 
		Unit of Measure
	  */
	public void setC_UOM_ID (int C_UOM_ID)
	{
		if (C_UOM_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_C_UOM_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_UOM_ID, Integer.valueOf(C_UOM_ID));
	}

	/** Get UOM.
		@return Unit of Measure
	  */
	public int getC_UOM_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_UOM_ID);
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

	/** Set NCM.
		@param LBR_NCM_ID 
		Primary key table LBR_NCM
	  */
	public void setLBR_NCM_ID (int LBR_NCM_ID)
	{
		if (LBR_NCM_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NCM_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NCM_ID, Integer.valueOf(LBR_NCM_ID));
	}

	/** Get NCM.
		@return Primary key table LBR_NCM
	  */
	public int getLBR_NCM_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NCM_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_NCM_UU.
		@param LBR_NCM_UU LBR_NCM_UU	  */
	public void setLBR_NCM_UU (String LBR_NCM_UU)
	{
		set_Value (COLUMNNAME_LBR_NCM_UU, LBR_NCM_UU);
	}

	/** Get LBR_NCM_UU.
		@return LBR_NCM_UU	  */
	public String getLBR_NCM_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NCM_UU);
	}

	/** Set Brazilian Tax.
		@param LBR_Tax_ID 
		Primary key table LBR_Tax
	  */
	public void setLBR_Tax_ID (Object LBR_Tax_ID)
	{
		set_Value (COLUMNNAME_LBR_Tax_ID, LBR_Tax_ID);
	}

	/** Get Brazilian Tax.
		@return Primary key table LBR_Tax
	  */
	public Object getLBR_Tax_ID () 
	{
				return get_Value(COLUMNNAME_LBR_Tax_ID);
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

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), getValue());
    }

	/** Set Has Substitution.
		@param lbr_HasSubstitution 
		Defines if the record has Substituion
	  */
	public void setlbr_HasSubstitution (boolean lbr_HasSubstitution)
	{
		set_Value (COLUMNNAME_lbr_HasSubstitution, Boolean.valueOf(lbr_HasSubstitution));
	}

	/** Get Has Substitution.
		@return Defines if the record has Substituion
	  */
	public boolean islbr_HasSubstitution () 
	{
		Object oo = get_Value(COLUMNNAME_lbr_HasSubstitution);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}
}