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

/** Generated Model for LBR_SPEDContribution
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_SPEDContribution extends PO implements I_LBR_SPEDContribution, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20200811L;

    /** Standard Constructor */
    public X_LBR_SPEDContribution (Properties ctx, int LBR_SPEDContribution_ID, String trxName)
    {
      super (ctx, LBR_SPEDContribution_ID, trxName);
      /** if (LBR_SPEDContribution_ID == 0)
        {
			setC_Period_ID (0);
			setC_Year_ID (0);
			setLBR_SPEDContribution_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_SPEDContribution (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_SPEDContribution[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_Period getC_Period() throws RuntimeException
    {
		return (org.compiere.model.I_C_Period)MTable.get(getCtx(), org.compiere.model.I_C_Period.Table_Name)
			.getPO(getC_Period_ID(), get_TrxName());	}

	/** Set Period.
		@param C_Period_ID 
		Period of the Calendar
	  */
	public void setC_Period_ID (int C_Period_ID)
	{
		if (C_Period_ID < 1) 
			set_Value (COLUMNNAME_C_Period_ID, null);
		else 
			set_Value (COLUMNNAME_C_Period_ID, Integer.valueOf(C_Period_ID));
	}

	/** Get Period.
		@return Period of the Calendar
	  */
	public int getC_Period_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Period_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_Year getC_Year() throws RuntimeException
    {
		return (org.compiere.model.I_C_Year)MTable.get(getCtx(), org.compiere.model.I_C_Year.Table_Name)
			.getPO(getC_Year_ID(), get_TrxName());	}

	/** Set Year.
		@param C_Year_ID 
		Calendar Year
	  */
	public void setC_Year_ID (int C_Year_ID)
	{
		if (C_Year_ID < 1) 
			set_Value (COLUMNNAME_C_Year_ID, null);
		else 
			set_Value (COLUMNNAME_C_Year_ID, Integer.valueOf(C_Year_ID));
	}

	/** Get Year.
		@return Calendar Year
	  */
	public int getC_Year_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Year_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Generate To.
		@param GenerateTo 
		Generate To
	  */
	public void setGenerateTo (String GenerateTo)
	{
		set_Value (COLUMNNAME_GenerateTo, GenerateTo);
	}

	/** Get Generate To.
		@return Generate To
	  */
	public String getGenerateTo () 
	{
		return (String)get_Value(COLUMNNAME_GenerateTo);
	}

	/** Set SPED Contribution.
		@param LBR_SPEDContribution_ID SPED Contribution	  */
	public void setLBR_SPEDContribution_ID (int LBR_SPEDContribution_ID)
	{
		if (LBR_SPEDContribution_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_SPEDContribution_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_SPEDContribution_ID, Integer.valueOf(LBR_SPEDContribution_ID));
	}

	/** Get SPED Contribution.
		@return SPED Contribution	  */
	public int getLBR_SPEDContribution_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_SPEDContribution_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_SPEDContribution_UU.
		@param LBR_SPEDContribution_UU LBR_SPEDContribution_UU	  */
	public void setLBR_SPEDContribution_UU (String LBR_SPEDContribution_UU)
	{
		set_Value (COLUMNNAME_LBR_SPEDContribution_UU, LBR_SPEDContribution_UU);
	}

	/** Get LBR_SPEDContribution_UU.
		@return LBR_SPEDContribution_UU	  */
	public String getLBR_SPEDContribution_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_SPEDContribution_UU);
	}

	/** Set Process Now.
		@param Processing Process Now	  */
	public void setProcessing (boolean Processing)
	{
		set_Value (COLUMNNAME_Processing, Boolean.valueOf(Processing));
	}

	/** Get Process Now.
		@return Process Now	  */
	public boolean isProcessing () 
	{
		Object oo = get_Value(COLUMNNAME_Processing);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}
}