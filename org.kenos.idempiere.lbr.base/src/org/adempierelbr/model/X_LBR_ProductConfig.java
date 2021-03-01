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

/** Generated Model for LBR_ProductConfig
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_ProductConfig extends PO implements I_LBR_ProductConfig, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20210227L;

    /** Standard Constructor */
    public X_LBR_ProductConfig (Properties ctx, int LBR_ProductConfig_ID, String trxName)
    {
      super (ctx, LBR_ProductConfig_ID, trxName);
      /** if (LBR_ProductConfig_ID == 0)
        {
			setLBR_ProductConfig_ID (0);
			setM_Product_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_ProductConfig (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_ProductConfig[")
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

	/** IsManufactured AD_Reference_ID=319 */
	public static final int ISMANUFACTURED_AD_Reference_ID=319;
	/** Yes = Y */
	public static final String ISMANUFACTURED_Yes = "Y";
	/** No = N */
	public static final String ISMANUFACTURED_No = "N";
	/** Set Manufactured.
		@param IsManufactured 
		This product is manufactured
	  */
	public void setIsManufactured (String IsManufactured)
	{

		set_Value (COLUMNNAME_IsManufactured, IsManufactured);
	}

	/** Get Manufactured.
		@return This product is manufactured
	  */
	public String getIsManufactured () 
	{
		return (String)get_Value(COLUMNNAME_IsManufactured);
	}

	/** Set Product Config.
		@param LBR_ProductConfig_ID Product Config	  */
	public void setLBR_ProductConfig_ID (int LBR_ProductConfig_ID)
	{
		if (LBR_ProductConfig_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_ProductConfig_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_ProductConfig_ID, Integer.valueOf(LBR_ProductConfig_ID));
	}

	/** Get Product Config.
		@return Product Config	  */
	public int getLBR_ProductConfig_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_ProductConfig_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_ProductConfig_UU.
		@param LBR_ProductConfig_UU LBR_ProductConfig_UU	  */
	public void setLBR_ProductConfig_UU (String LBR_ProductConfig_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_ProductConfig_UU, LBR_ProductConfig_UU);
	}

	/** Get LBR_ProductConfig_UU.
		@return LBR_ProductConfig_UU	  */
	public String getLBR_ProductConfig_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ProductConfig_UU);
	}

	public org.compiere.model.I_M_Product getM_Product() throws RuntimeException
    {
		return (org.compiere.model.I_M_Product)MTable.get(getCtx(), org.compiere.model.I_M_Product.Table_Name)
			.getPO(getM_Product_ID(), get_TrxName());	}

	/** Set Product.
		@param M_Product_ID 
		Product, Service, Item
	  */
	public void setM_Product_ID (int M_Product_ID)
	{
		if (M_Product_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_M_Product_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_M_Product_ID, Integer.valueOf(M_Product_ID));
	}

	/** Get Product.
		@return Product, Service, Item
	  */
	public int getM_Product_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_Product_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set UPC/EAN.
		@param UPC 
		Bar Code (Universal Product Code or its superset European Article Number)
	  */
	public void setUPC (String UPC)
	{
		set_Value (COLUMNNAME_UPC, UPC);
	}

	/** Get UPC/EAN.
		@return Bar Code (Universal Product Code or its superset European Article Number)
	  */
	public String getUPC () 
	{
		return (String)get_Value(COLUMNNAME_UPC);
	}

	/** 0 - Domestic = 0 */
	public static final String LBR_PRODUCTSOURCE_0_Domestic = "0";
	/** 1 - Imported = 1 */
	public static final String LBR_PRODUCTSOURCE_1_Imported = "1";
	/** 2 - Imported - Acquired from a domestic distributor = 2 */
	public static final String LBR_PRODUCTSOURCE_2_Imported_AcquiredFromADomesticDistributor = "2";
	/** 3 - Domestic with between 40 percent and 70 percent Imported = 3 */
	public static final String LBR_PRODUCTSOURCE_3_DomesticWithBetween40PercentAnd70PercentImported = "3";
	/** 4 - Product acquired from Manaus = 4 */
	public static final String LBR_PRODUCTSOURCE_4_ProductAcquiredFromManaus = "4";
	/** 5 - Domestic until 40 percent Imported = 5 */
	public static final String LBR_PRODUCTSOURCE_5_DomesticUntil40PercentImported = "5";
	/** 6 - Foreign - Direct import no similar national = 6 */
	public static final String LBR_PRODUCTSOURCE_6_Foreign_DirectImportNoSimilarNational = "6";
	/** 7 - Foreign - Acquired from a domestic distributor no similar national = 7 */
	public static final String LBR_PRODUCTSOURCE_7_Foreign_AcquiredFromADomesticDistributorNoSimilarNational = "7";
	/** 8 - Domestic above 70 percent Imported = 8 */
	public static final String LBR_PRODUCTSOURCE_8_DomesticAbove70PercentImported = "8";
	/** Set Product Source.
		@param lbr_ProductSource 
		Defines the Product Source
	  */
	public void setlbr_ProductSource (String lbr_ProductSource)
	{

		set_Value (COLUMNNAME_lbr_ProductSource, lbr_ProductSource);
	}

	/** Get Product Source.
		@return Defines the Product Source
	  */
	public String getlbr_ProductSource () 
	{
		return (String)get_Value(COLUMNNAME_lbr_ProductSource);
	}
}