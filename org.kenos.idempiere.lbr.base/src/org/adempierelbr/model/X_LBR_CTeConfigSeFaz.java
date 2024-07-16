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

/** Generated Model for LBR_CTeConfigSeFaz
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_CTeConfigSeFaz extends PO implements I_LBR_CTeConfigSeFaz, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20240716L;

    /** Standard Constructor */
    public X_LBR_CTeConfigSeFaz (Properties ctx, int LBR_CTeConfigSeFaz_ID, String trxName)
    {
      super (ctx, LBR_CTeConfigSeFaz_ID, trxName);
      /** if (LBR_CTeConfigSeFaz_ID == 0)
        {
			setLBR_CTeConfigSeFaz_ID (0);
			setLBR_CTeConfig_ID (0);
			setLBR_SeFaz_ID (0);
			setValidFrom (new Timestamp( System.currentTimeMillis() ));
        } */
    }

    /** Load Constructor */
    public X_LBR_CTeConfigSeFaz (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_CTeConfigSeFaz[")
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

	/** Set LBR_CTeConfigSeFaz.
		@param LBR_CTeConfigSeFaz_ID LBR_CTeConfigSeFaz	  */
	public void setLBR_CTeConfigSeFaz_ID (int LBR_CTeConfigSeFaz_ID)
	{
		if (LBR_CTeConfigSeFaz_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_CTeConfigSeFaz_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_CTeConfigSeFaz_ID, Integer.valueOf(LBR_CTeConfigSeFaz_ID));
	}

	/** Get LBR_CTeConfigSeFaz.
		@return LBR_CTeConfigSeFaz	  */
	public int getLBR_CTeConfigSeFaz_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CTeConfigSeFaz_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_CTeConfigSeFaz_UU.
		@param LBR_CTeConfigSeFaz_UU LBR_CTeConfigSeFaz_UU	  */
	public void setLBR_CTeConfigSeFaz_UU (String LBR_CTeConfigSeFaz_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_CTeConfigSeFaz_UU, LBR_CTeConfigSeFaz_UU);
	}

	/** Get LBR_CTeConfigSeFaz_UU.
		@return LBR_CTeConfigSeFaz_UU	  */
	public String getLBR_CTeConfigSeFaz_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CTeConfigSeFaz_UU);
	}

	public org.adempierelbr.model.I_LBR_CTeConfig getLBR_CTeConfig() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_CTeConfig)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_CTeConfig.Table_Name)
			.getPO(getLBR_CTeConfig_ID(), get_TrxName());	}

	/** Set CTe Config.
		@param LBR_CTeConfig_ID CTe Config	  */
	public void setLBR_CTeConfig_ID (int LBR_CTeConfig_ID)
	{
		if (LBR_CTeConfig_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_CTeConfig_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_CTeConfig_ID, Integer.valueOf(LBR_CTeConfig_ID));
	}

	/** Get CTe Config.
		@return CTe Config	  */
	public int getLBR_CTeConfig_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CTeConfig_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_SeFaz getLBR_SeFaz() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_SeFaz)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_SeFaz.Table_Name)
			.getPO(getLBR_SeFaz_ID(), get_TrxName());	}

	/** Set SeFaz.
		@param LBR_SeFaz_ID SeFaz	  */
	public void setLBR_SeFaz_ID (int LBR_SeFaz_ID)
	{
		if (LBR_SeFaz_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_SeFaz_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_SeFaz_ID, Integer.valueOf(LBR_SeFaz_ID));
	}

	/** Get SeFaz.
		@return SeFaz	  */
	public int getLBR_SeFaz_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_SeFaz_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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
}