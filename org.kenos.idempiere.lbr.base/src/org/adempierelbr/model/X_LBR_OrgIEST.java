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
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for LBR_OrgIEST
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_OrgIEST extends PO implements I_LBR_OrgIEST, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20200816L;

    /** Standard Constructor */
    public X_LBR_OrgIEST (Properties ctx, int LBR_OrgIEST_ID, String trxName)
    {
      super (ctx, LBR_OrgIEST_ID, trxName);
      /** if (LBR_OrgIEST_ID == 0)
        {
			setC_Region_ID (0);
			setLBR_IEST (null);
			setLBR_OrgIEST_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_OrgIEST (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_OrgIEST[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_Region getC_Region() throws RuntimeException
    {
		return (org.compiere.model.I_C_Region)MTable.get(getCtx(), org.compiere.model.I_C_Region.Table_Name)
			.getPO(getC_Region_ID(), get_TrxName());	}

	/** Set Region.
		@param C_Region_ID 
		Identifies a geographical Region
	  */
	public void setC_Region_ID (int C_Region_ID)
	{
		if (C_Region_ID < 1) 
			set_Value (COLUMNNAME_C_Region_ID, null);
		else 
			set_Value (COLUMNNAME_C_Region_ID, Integer.valueOf(C_Region_ID));
	}

	/** Get Region.
		@return Identifies a geographical Region
	  */
	public int getC_Region_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Region_ID);
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

	/** Set IE Substitute.
		@param LBR_IEST 
		To set IE by Region to Substitute IE from Organization
	  */
	public void setLBR_IEST (String LBR_IEST)
	{
		set_Value (COLUMNNAME_LBR_IEST, LBR_IEST);
	}

	/** Get IE Substitute.
		@return To set IE by Region to Substitute IE from Organization
	  */
	public String getLBR_IEST () 
	{
		return (String)get_Value(COLUMNNAME_LBR_IEST);
	}

	/** Set IE Substitute.
		@param LBR_OrgIEST_ID IE Substitute	  */
	public void setLBR_OrgIEST_ID (int LBR_OrgIEST_ID)
	{
		if (LBR_OrgIEST_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_OrgIEST_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_OrgIEST_ID, Integer.valueOf(LBR_OrgIEST_ID));
	}

	/** Get IE Substitute.
		@return IE Substitute	  */
	public int getLBR_OrgIEST_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_OrgIEST_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_OrgIEST_UU.
		@param LBR_OrgIEST_UU LBR_OrgIEST_UU	  */
	public void setLBR_OrgIEST_UU (String LBR_OrgIEST_UU)
	{
		set_Value (COLUMNNAME_LBR_OrgIEST_UU, LBR_OrgIEST_UU);
	}

	/** Get LBR_OrgIEST_UU.
		@return LBR_OrgIEST_UU	  */
	public String getLBR_OrgIEST_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_OrgIEST_UU);
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

	/** Set Valid to.
		@param ValidTo 
		Valid to including this date (last day)
	  */
	public void setValidTo (Timestamp ValidTo)
	{
		set_Value (COLUMNNAME_ValidTo, ValidTo);
	}

	/** Get Valid to.
		@return Valid to including this date (last day)
	  */
	public Timestamp getValidTo () 
	{
		return (Timestamp)get_Value(COLUMNNAME_ValidTo);
	}
}