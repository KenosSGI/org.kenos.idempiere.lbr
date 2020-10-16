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

/** Generated Model for LBR_FuelInstallation
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_FuelInstallation extends PO implements I_LBR_FuelInstallation, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20201016L;

    /** Standard Constructor */
    public X_LBR_FuelInstallation (Properties ctx, int LBR_FuelInstallation_ID, String trxName)
    {
      super (ctx, LBR_FuelInstallation_ID, trxName);
      /** if (LBR_FuelInstallation_ID == 0)
        {
			setLBR_FuelInstallation_ID (0);
			setValue (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_FuelInstallation (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_FuelInstallation[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Fuel Installation.
		@param LBR_FuelInstallation_ID Fuel Installation	  */
	public void setLBR_FuelInstallation_ID (int LBR_FuelInstallation_ID)
	{
		if (LBR_FuelInstallation_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_FuelInstallation_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_FuelInstallation_ID, Integer.valueOf(LBR_FuelInstallation_ID));
	}

	/** Get Fuel Installation.
		@return Fuel Installation	  */
	public int getLBR_FuelInstallation_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_FuelInstallation_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_FuelInstallation_UU.
		@param LBR_FuelInstallation_UU LBR_FuelInstallation_UU	  */
	public void setLBR_FuelInstallation_UU (String LBR_FuelInstallation_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_FuelInstallation_UU, LBR_FuelInstallation_UU);
	}

	/** Get LBR_FuelInstallation_UU.
		@return LBR_FuelInstallation_UU	  */
	public String getLBR_FuelInstallation_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_FuelInstallation_UU);
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

	/** Set CNPJ.
		@param lbr_CNPJ 
		Used to identify Legal Entities in Brazil
	  */
	public void setlbr_CNPJ (String lbr_CNPJ)
	{
		set_Value (COLUMNNAME_lbr_CNPJ, lbr_CNPJ);
	}

	/** Get CNPJ.
		@return Used to identify Legal Entities in Brazil
	  */
	public String getlbr_CNPJ () 
	{
		return (String)get_Value(COLUMNNAME_lbr_CNPJ);
	}
}