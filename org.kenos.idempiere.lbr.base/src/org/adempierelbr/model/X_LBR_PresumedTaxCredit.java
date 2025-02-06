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
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LBR_PresumedTaxCredit
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_PresumedTaxCredit extends PO implements I_LBR_PresumedTaxCredit, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20250206L;

    /** Standard Constructor */
    public X_LBR_PresumedTaxCredit (Properties ctx, int LBR_PresumedTaxCredit_ID, String trxName)
    {
      super (ctx, LBR_PresumedTaxCredit_ID, trxName);
      /** if (LBR_PresumedTaxCredit_ID == 0)
        {
			setLBR_NCM_ID (0);
			setLBR_PresumedTaxCredit_ID (0);
			setLBR_TaxBenefitCode (null);
			setPercentage (Env.ZERO);
// 0
			setValidFrom (new Timestamp( System.currentTimeMillis() ));
// @#Date@
        } */
    }

    /** Load Constructor */
    public X_LBR_PresumedTaxCredit (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_PresumedTaxCredit[")
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

	public org.adempierelbr.model.I_LBR_NCM getLBR_NCM() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_NCM)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_NCM.Table_Name)
			.getPO(getLBR_NCM_ID(), get_TrxName());	}

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

	/** Set Presumed Tax Credit.
		@param LBR_PresumedTaxCredit_ID Presumed Tax Credit	  */
	public void setLBR_PresumedTaxCredit_ID (int LBR_PresumedTaxCredit_ID)
	{
		if (LBR_PresumedTaxCredit_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_PresumedTaxCredit_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_PresumedTaxCredit_ID, Integer.valueOf(LBR_PresumedTaxCredit_ID));
	}

	/** Get Presumed Tax Credit.
		@return Presumed Tax Credit	  */
	public int getLBR_PresumedTaxCredit_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_PresumedTaxCredit_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_PresumedTaxCredit_UU.
		@param LBR_PresumedTaxCredit_UU LBR_PresumedTaxCredit_UU	  */
	public void setLBR_PresumedTaxCredit_UU (String LBR_PresumedTaxCredit_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_PresumedTaxCredit_UU, LBR_PresumedTaxCredit_UU);
	}

	/** Get LBR_PresumedTaxCredit_UU.
		@return LBR_PresumedTaxCredit_UU	  */
	public String getLBR_PresumedTaxCredit_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_PresumedTaxCredit_UU);
	}

	/** Set Tax Benefit Code.
		@param LBR_TaxBenefitCode Tax Benefit Code	  */
	public void setLBR_TaxBenefitCode (String LBR_TaxBenefitCode)
	{
		set_Value (COLUMNNAME_LBR_TaxBenefitCode, LBR_TaxBenefitCode);
	}

	/** Get Tax Benefit Code.
		@return Tax Benefit Code	  */
	public String getLBR_TaxBenefitCode () 
	{
		return (String)get_Value(COLUMNNAME_LBR_TaxBenefitCode);
	}

	/** Set Percentage.
		@param Percentage 
		Percent of the entire amount
	  */
	public void setPercentage (BigDecimal Percentage)
	{
		set_Value (COLUMNNAME_Percentage, Percentage);
	}

	/** Get Percentage.
		@return Percent of the entire amount
	  */
	public BigDecimal getPercentage () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Percentage);
		if (bd == null)
			 return Env.ZERO;
		return bd;
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