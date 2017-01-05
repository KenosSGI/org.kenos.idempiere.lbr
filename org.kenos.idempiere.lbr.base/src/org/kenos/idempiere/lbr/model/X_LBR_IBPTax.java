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
package org.kenos.idempiere.lbr.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LBR_IBPTax
 *  @author iDempiere (generated) 
 *  @version Release 4.1 - $Id$ */
public class X_LBR_IBPTax extends PO implements I_LBR_IBPTax, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20161221L;

    /** Standard Constructor */
    public X_LBR_IBPTax (Properties ctx, int LBR_IBPTax_ID, String trxName)
    {
      super (ctx, LBR_IBPTax_ID, trxName);
      /** if (LBR_IBPTax_ID == 0)
        {
			setC_Region_ID (0);
			setLBR_IBPTax_ID (0);
			setLBR_NCM_ID (0);
			setLBR_TaxRate (Env.ZERO);
// 0
			setLBR_TaxRateCity (Env.ZERO);
// 0
			setLBR_TaxRateImp (Env.ZERO);
// 0
			setLBR_TaxRateRegion (Env.ZERO);
// 0
			setVersion (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_IBPTax (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_IBPTax[")
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

	/** Set Tabela de Impostos do IBPT.
		@param LBR_IBPTax_ID Tabela de Impostos do IBPT	  */
	public void setLBR_IBPTax_ID (int LBR_IBPTax_ID)
	{
		if (LBR_IBPTax_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_IBPTax_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_IBPTax_ID, Integer.valueOf(LBR_IBPTax_ID));
	}

	/** Get Tabela de Impostos do IBPT.
		@return Tabela de Impostos do IBPT	  */
	public int getLBR_IBPTax_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_IBPTax_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.kenos.idempiere.lbr.model.I_LBR_NCM getLBR_NCM() throws RuntimeException
    {
		return (org.kenos.idempiere.lbr.model.I_LBR_NCM)MTable.get(getCtx(), org.kenos.idempiere.lbr.model.I_LBR_NCM.Table_Name)
			.getPO(getLBR_NCM_ID(), get_TrxName());	}

	/** Set NCM.
		@param LBR_NCM_ID 
		Primary key table LBR_NCM
	  */
	public void setLBR_NCM_ID (int LBR_NCM_ID)
	{
		if (LBR_NCM_ID < 1) 
			set_Value (COLUMNNAME_LBR_NCM_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_NCM_ID, Integer.valueOf(LBR_NCM_ID));
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

	/** Set Source.
		@param LBR_Source Source	  */
	public void setLBR_Source (String LBR_Source)
	{
		set_Value (COLUMNNAME_LBR_Source, LBR_Source);
	}

	/** Get Source.
		@return Source	  */
	public String getLBR_Source () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Source);
	}

	/** Set Tax Rate.
		@param LBR_TaxRate 
		Indicates the Tax Rate
	  */
	public void setLBR_TaxRate (BigDecimal LBR_TaxRate)
	{
		set_Value (COLUMNNAME_LBR_TaxRate, LBR_TaxRate);
	}

	/** Get Tax Rate.
		@return Indicates the Tax Rate
	  */
	public BigDecimal getLBR_TaxRate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxRate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax Rate City.
		@param LBR_TaxRateCity Tax Rate City	  */
	public void setLBR_TaxRateCity (BigDecimal LBR_TaxRateCity)
	{
		set_Value (COLUMNNAME_LBR_TaxRateCity, LBR_TaxRateCity);
	}

	/** Get Tax Rate City.
		@return Tax Rate City	  */
	public BigDecimal getLBR_TaxRateCity () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxRateCity);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax Rate Imported.
		@param LBR_TaxRateImp 
		Indicates the Imported Tax Rate 
	  */
	public void setLBR_TaxRateImp (BigDecimal LBR_TaxRateImp)
	{
		set_Value (COLUMNNAME_LBR_TaxRateImp, LBR_TaxRateImp);
	}

	/** Get Tax Rate Imported.
		@return Indicates the Imported Tax Rate 
	  */
	public BigDecimal getLBR_TaxRateImp () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxRateImp);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax Rate Region.
		@param LBR_TaxRateRegion Tax Rate Region	  */
	public void setLBR_TaxRateRegion (BigDecimal LBR_TaxRateRegion)
	{
		set_Value (COLUMNNAME_LBR_TaxRateRegion, LBR_TaxRateRegion);
	}

	/** Get Tax Rate Region.
		@return Tax Rate Region	  */
	public BigDecimal getLBR_TaxRateRegion () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxRateRegion);
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

	/** Set Search Key.
		@param Value 
		Search key for the record in the format required - must be unique
	  */
	public void setValue (String Value)
	{
		set_ValueNoCheck (COLUMNNAME_Value, Value);
	}

	/** Get Search Key.
		@return Search key for the record in the format required - must be unique
	  */
	public String getValue () 
	{
		return (String)get_Value(COLUMNNAME_Value);
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