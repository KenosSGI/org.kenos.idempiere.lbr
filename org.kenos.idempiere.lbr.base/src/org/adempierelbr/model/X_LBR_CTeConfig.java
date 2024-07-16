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

/** Generated Model for LBR_CTeConfig
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_CTeConfig extends PO implements I_LBR_CTeConfig, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20240716L;

    /** Standard Constructor */
    public X_LBR_CTeConfig (Properties ctx, int LBR_CTeConfig_ID, String trxName)
    {
      super (ctx, LBR_CTeConfig_ID, trxName);
      /** if (LBR_CTeConfig_ID == 0)
        {
			setFrequency (0);
// 2
			setLBR_CTeConfig_ID (0);
			setLBR_DFeAutoRetrieve (false);
// N
			setVersionNo (null);
			setlbr_NFeEnv (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_CTeConfig (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_CTeConfig[")
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

	/** Set Frequency.
		@param Frequency 
		Frequency of events
	  */
	public void setFrequency (int Frequency)
	{
		set_Value (COLUMNNAME_Frequency, Integer.valueOf(Frequency));
	}

	/** Get Frequency.
		@return Frequency of events
	  */
	public int getFrequency () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Frequency);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

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

	/** Set LBR_CTeConfig_UU.
		@param LBR_CTeConfig_UU LBR_CTeConfig_UU	  */
	public void setLBR_CTeConfig_UU (String LBR_CTeConfig_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_CTeConfig_UU, LBR_CTeConfig_UU);
	}

	/** Get LBR_CTeConfig_UU.
		@return LBR_CTeConfig_UU	  */
	public String getLBR_CTeConfig_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CTeConfig_UU);
	}

	/** Set DF-e Auto Retrieve.
		@param LBR_DFeAutoRetrieve DF-e Auto Retrieve	  */
	public void setLBR_DFeAutoRetrieve (boolean LBR_DFeAutoRetrieve)
	{
		set_Value (COLUMNNAME_LBR_DFeAutoRetrieve, Boolean.valueOf(LBR_DFeAutoRetrieve));
	}

	/** Get DF-e Auto Retrieve.
		@return DF-e Auto Retrieve	  */
	public boolean isLBR_DFeAutoRetrieve () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_DFeAutoRetrieve);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set NSU.
		@param LBR_NSU 
		Unic Sequencial Number used on Manifest of Fiscal Documento
	  */
	public void setLBR_NSU (String LBR_NSU)
	{
		set_Value (COLUMNNAME_LBR_NSU, LBR_NSU);
	}

	/** Get NSU.
		@return Unic Sequencial Number used on Manifest of Fiscal Documento
	  */
	public String getLBR_NSU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NSU);
	}

	/** Set Version No.
		@param VersionNo 
		Version Number
	  */
	public void setVersionNo (String VersionNo)
	{
		set_ValueNoCheck (COLUMNNAME_VersionNo, VersionNo);
	}

	/** Get Version No.
		@return Version Number
	  */
	public String getVersionNo () 
	{
		return (String)get_Value(COLUMNNAME_VersionNo);
	}

	/** Production = 1 */
	public static final String LBR_NFEENV_Production = "1";
	/** Homologation = 2 */
	public static final String LBR_NFEENV_Homologation = "2";
	/** Set NFe Environment.
		@param lbr_NFeEnv NFe Environment	  */
	public void setlbr_NFeEnv (String lbr_NFeEnv)
	{

		set_Value (COLUMNNAME_lbr_NFeEnv, lbr_NFeEnv);
	}

	/** Get NFe Environment.
		@return NFe Environment	  */
	public String getlbr_NFeEnv () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFeEnv);
	}
}