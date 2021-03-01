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

/** Generated Model for LBR_TaxDefinition
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_TaxDefinition extends PO implements I_LBR_TaxDefinition, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20210228L;

    /** Standard Constructor */
    public X_LBR_TaxDefinition (Properties ctx, int LBR_TaxDefinition_ID, String trxName)
    {
      super (ctx, LBR_TaxDefinition_ID, trxName);
      /** if (LBR_TaxDefinition_ID == 0)
        {
			setIsManual (false);
// N
			setIsManufactured (null);
// B
			setIsSOTrx (null);
// B
			setLBR_TaxDefinition_ID (0);
			setValidFrom (new Timestamp( System.currentTimeMillis() ));
// @#Date@
			setlbr_IsSubTributaria (null);
// B
        } */
    }

    /** Load Constructor */
    public X_LBR_TaxDefinition (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_TaxDefinition[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_BPartner getC_BPartner() throws RuntimeException
    {
		return (org.compiere.model.I_C_BPartner)MTable.get(getCtx(), org.compiere.model.I_C_BPartner.Table_Name)
			.getPO(getC_BPartner_ID(), get_TrxName());	}

	/** Set Business Partner .
		@param C_BPartner_ID 
		Identifies a Business Partner
	  */
	public void setC_BPartner_ID (int C_BPartner_ID)
	{
		if (C_BPartner_ID < 1) 
			set_Value (COLUMNNAME_C_BPartner_ID, null);
		else 
			set_Value (COLUMNNAME_C_BPartner_ID, Integer.valueOf(C_BPartner_ID));
	}

	/** Get Business Partner .
		@return Identifies a Business Partner
	  */
	public int getC_BPartner_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BPartner_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_DocType getC_DocType() throws RuntimeException
    {
		return (org.compiere.model.I_C_DocType)MTable.get(getCtx(), org.compiere.model.I_C_DocType.Table_Name)
			.getPO(getC_DocType_ID(), get_TrxName());	}

	/** Set Document Type.
		@param C_DocType_ID 
		Document type or rules
	  */
	public void setC_DocType_ID (int C_DocType_ID)
	{
		if (C_DocType_ID < 0) 
			set_Value (COLUMNNAME_C_DocType_ID, null);
		else 
			set_Value (COLUMNNAME_C_DocType_ID, Integer.valueOf(C_DocType_ID));
	}

	/** Get Document Type.
		@return Document type or rules
	  */
	public int getC_DocType_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_DocType_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	/** Set Manual.
		@param IsManual 
		This is a manual process
	  */
	public void setIsManual (boolean IsManual)
	{
		set_Value (COLUMNNAME_IsManual, Boolean.valueOf(IsManual));
	}

	/** Get Manual.
		@return This is a manual process
	  */
	public boolean isManual () 
	{
		Object oo = get_Value(COLUMNNAME_IsManual);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Yes = Y */
	public static final String ISMANUFACTURED_Yes = "Y";
	/** No = N */
	public static final String ISMANUFACTURED_No = "N";
	/** Both = B */
	public static final String ISMANUFACTURED_Both = "B";
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

	/** Yes = Y */
	public static final String ISSOTRX_Yes = "Y";
	/** No = N */
	public static final String ISSOTRX_No = "N";
	/** Both = B */
	public static final String ISSOTRX_Both = "B";
	/** Set Sales Transaction.
		@param IsSOTrx 
		This is a Sales Transaction
	  */
	public void setIsSOTrx (String IsSOTrx)
	{

		set_Value (COLUMNNAME_IsSOTrx, IsSOTrx);
	}

	/** Get Sales Transaction.
		@return This is a Sales Transaction
	  */
	public String getIsSOTrx () 
	{
		return (String)get_Value(COLUMNNAME_IsSOTrx);
	}

	public org.adempierelbr.model.I_LBR_BPartnerCategory getLBR_BPartnerCategory() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_BPartnerCategory)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_BPartnerCategory.Table_Name)
			.getPO(getLBR_BPartnerCategory_ID(), get_TrxName());	}

	/** Set BPartner Category.
		@param LBR_BPartnerCategory_ID 
		Primary key table LBR_BPartnerCategory
	  */
	public void setLBR_BPartnerCategory_ID (int LBR_BPartnerCategory_ID)
	{
		if (LBR_BPartnerCategory_ID < 1) 
			set_Value (COLUMNNAME_LBR_BPartnerCategory_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_BPartnerCategory_ID, Integer.valueOf(LBR_BPartnerCategory_ID));
	}

	/** Get BPartner Category.
		@return Primary key table LBR_BPartnerCategory
	  */
	public int getLBR_BPartnerCategory_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BPartnerCategory_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_CEST getLBR_CEST() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_CEST)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_CEST.Table_Name)
			.getPO(getLBR_CEST_ID(), get_TrxName());	}

	/** Set CEST.
		@param LBR_CEST_ID 
		Brazilian Specifier code Tax
	  */
	public void setLBR_CEST_ID (int LBR_CEST_ID)
	{
		if (LBR_CEST_ID < 1) 
			set_Value (COLUMNNAME_LBR_CEST_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_CEST_ID, Integer.valueOf(LBR_CEST_ID));
	}

	/** Get CEST.
		@return Brazilian Specifier code Tax
	  */
	public int getLBR_CEST_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CEST_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_CFOP getLBR_CFOP() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_CFOP)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_CFOP.Table_Name)
			.getPO(getLBR_CFOP_ID(), get_TrxName());	}

	/** Set CFOP.
		@param LBR_CFOP_ID 
		Primary key table LBR_CFOP
	  */
	public void setLBR_CFOP_ID (int LBR_CFOP_ID)
	{
		if (LBR_CFOP_ID < 1) 
			set_Value (COLUMNNAME_LBR_CFOP_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_CFOP_ID, Integer.valueOf(LBR_CFOP_ID));
	}

	/** Get CFOP.
		@return Primary key table LBR_CFOP
	  */
	public int getLBR_CFOP_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CFOP_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_FiscalGroup_BPartner getLBR_FiscalGroup_BPartner() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_FiscalGroup_BPartner)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_FiscalGroup_BPartner.Table_Name)
			.getPO(getLBR_FiscalGroup_BPartner_ID(), get_TrxName());	}

	/** Set Fiscal Group - Business Partner.
		@param LBR_FiscalGroup_BPartner_ID 
		Primary key table LBR_FiscalGroup_BPartner
	  */
	public void setLBR_FiscalGroup_BPartner_ID (int LBR_FiscalGroup_BPartner_ID)
	{
		if (LBR_FiscalGroup_BPartner_ID < 1) 
			set_Value (COLUMNNAME_LBR_FiscalGroup_BPartner_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_FiscalGroup_BPartner_ID, Integer.valueOf(LBR_FiscalGroup_BPartner_ID));
	}

	/** Get Fiscal Group - Business Partner.
		@return Primary key table LBR_FiscalGroup_BPartner
	  */
	public int getLBR_FiscalGroup_BPartner_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_FiscalGroup_BPartner_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_FiscalGroup_Product getLBR_FiscalGroup_Product() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_FiscalGroup_Product)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_FiscalGroup_Product.Table_Name)
			.getPO(getLBR_FiscalGroup_Product_ID(), get_TrxName());	}

	/** Set Fiscal Group - Product.
		@param LBR_FiscalGroup_Product_ID 
		Primary key table LBR_FiscalGroup_Product
	  */
	public void setLBR_FiscalGroup_Product_ID (int LBR_FiscalGroup_Product_ID)
	{
		if (LBR_FiscalGroup_Product_ID < 1) 
			set_Value (COLUMNNAME_LBR_FiscalGroup_Product_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_FiscalGroup_Product_ID, Integer.valueOf(LBR_FiscalGroup_Product_ID));
	}

	/** Get Fiscal Group - Product.
		@return Primary key table LBR_FiscalGroup_Product
	  */
	public int getLBR_FiscalGroup_Product_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_FiscalGroup_Product_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** 1 - Contribuinte de ICMS = 1 */
	public static final String LBR_INDIEDEST_1_ContribuinteDeICMS = "1";
	/** 2 - Contribuinte de ICMS - Isento = 2 */
	public static final String LBR_INDIEDEST_2_ContribuinteDeICMS_Isento = "2";
	/** 9 - Não Contribuinte de ICMS = 9 */
	public static final String LBR_INDIEDEST_9_NãoContribuinteDeICMS = "9";
	/** Set Indicador da IE.
		@param LBR_IndIEDest 
		Indicador da IE do Destinatário
	  */
	public void setLBR_IndIEDest (String LBR_IndIEDest)
	{

		set_Value (COLUMNNAME_LBR_IndIEDest, LBR_IndIEDest);
	}

	/** Get Indicador da IE.
		@return Indicador da IE do Destinatário
	  */
	public String getLBR_IndIEDest () 
	{
		return (String)get_Value(COLUMNNAME_LBR_IndIEDest);
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

	public org.adempierelbr.model.I_LBR_ProductCategory getLBR_ProductCategory() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_ProductCategory)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_ProductCategory.Table_Name)
			.getPO(getLBR_ProductCategory_ID(), get_TrxName());	}

	/** Set Product Category.
		@param LBR_ProductCategory_ID 
		Primary key table LBR_ProductCategory
	  */
	public void setLBR_ProductCategory_ID (int LBR_ProductCategory_ID)
	{
		if (LBR_ProductCategory_ID < 1) 
			set_Value (COLUMNNAME_LBR_ProductCategory_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_ProductCategory_ID, Integer.valueOf(LBR_ProductCategory_ID));
	}

	/** Get Product Category.
		@return Primary key table LBR_ProductCategory
	  */
	public int getLBR_ProductCategory_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_ProductCategory_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Sul = 0 */
	public static final String LBR_REGIONFROM_Sul = "0";
	/** Sudeste = 1 */
	public static final String LBR_REGIONFROM_Sudeste = "1";
	/** Norte = 2 */
	public static final String LBR_REGIONFROM_Norte = "2";
	/** Nordeste = 3 */
	public static final String LBR_REGIONFROM_Nordeste = "3";
	/** Centro-Oeste = 4 */
	public static final String LBR_REGIONFROM_Centro_Oeste = "4";
	/** Sul e Sudeste = 5 */
	public static final String LBR_REGIONFROM_SulESudeste = "5";
	/** Norte, Nordeste e Centro-Oeste = 6 */
	public static final String LBR_REGIONFROM_NorteNordesteECentro_Oeste = "6";
	/** Sul e Sudeste, exceto ES = 7 */
	public static final String LBR_REGIONFROM_SulESudesteExcetoES = "7";
	/** Norte, Nordeste, Centro-Oeste e ES = 8 */
	public static final String LBR_REGIONFROM_NorteNordesteCentro_OesteEES = "8";
	/** Set Region From.
		@param LBR_RegionFrom Region From	  */
	public void setLBR_RegionFrom (String LBR_RegionFrom)
	{

		set_Value (COLUMNNAME_LBR_RegionFrom, LBR_RegionFrom);
	}

	/** Get Region From.
		@return Region From	  */
	public String getLBR_RegionFrom () 
	{
		return (String)get_Value(COLUMNNAME_LBR_RegionFrom);
	}

	/** Sul = 0 */
	public static final String LBR_REGIONTO_Sul = "0";
	/** Sudeste = 1 */
	public static final String LBR_REGIONTO_Sudeste = "1";
	/** Norte = 2 */
	public static final String LBR_REGIONTO_Norte = "2";
	/** Nordeste = 3 */
	public static final String LBR_REGIONTO_Nordeste = "3";
	/** Centro-Oeste = 4 */
	public static final String LBR_REGIONTO_Centro_Oeste = "4";
	/** Sul e Sudeste = 5 */
	public static final String LBR_REGIONTO_SulESudeste = "5";
	/** Norte, Nordeste e Centro-Oeste = 6 */
	public static final String LBR_REGIONTO_NorteNordesteECentro_Oeste = "6";
	/** Sul e Sudeste, exceto ES = 7 */
	public static final String LBR_REGIONTO_SulESudesteExcetoES = "7";
	/** Norte, Nordeste, Centro-Oeste e ES = 8 */
	public static final String LBR_REGIONTO_NorteNordesteCentro_OesteEES = "8";
	/** Set Region To.
		@param LBR_RegionTo Region To	  */
	public void setLBR_RegionTo (String LBR_RegionTo)
	{

		set_Value (COLUMNNAME_LBR_RegionTo, LBR_RegionTo);
	}

	/** Get Region To.
		@return Region To	  */
	public String getLBR_RegionTo () 
	{
		return (String)get_Value(COLUMNNAME_LBR_RegionTo);
	}

	/** Set Tax Definition.
		@param LBR_TaxDefinition_ID Tax Definition	  */
	public void setLBR_TaxDefinition_ID (int LBR_TaxDefinition_ID)
	{
		if (LBR_TaxDefinition_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxDefinition_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxDefinition_ID, Integer.valueOf(LBR_TaxDefinition_ID));
	}

	/** Get Tax Definition.
		@return Tax Definition	  */
	public int getLBR_TaxDefinition_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_TaxDefinition_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_TaxDefinition_UU.
		@param LBR_TaxDefinition_UU LBR_TaxDefinition_UU	  */
	public void setLBR_TaxDefinition_UU (String LBR_TaxDefinition_UU)
	{
		set_Value (COLUMNNAME_LBR_TaxDefinition_UU, LBR_TaxDefinition_UU);
	}

	/** Get LBR_TaxDefinition_UU.
		@return LBR_TaxDefinition_UU	  */
	public String getLBR_TaxDefinition_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_TaxDefinition_UU);
	}

	/** Simple National = S */
	public static final String LBR_TAXREGIME_SimpleNational = "S";
	/** Presumed Profit = P */
	public static final String LBR_TAXREGIME_PresumedProfit = "P";
	/** Real Profit = R */
	public static final String LBR_TAXREGIME_RealProfit = "R";
	/** Simple National - MEI = M */
	public static final String LBR_TAXREGIME_SimpleNational_MEI = "M";
	/** Set Tax Regime.
		@param LBR_TaxRegime Tax Regime	  */
	public void setLBR_TaxRegime (String LBR_TaxRegime)
	{

		set_Value (COLUMNNAME_LBR_TaxRegime, LBR_TaxRegime);
	}

	/** Get Tax Regime.
		@return Tax Regime	  */
	public String getLBR_TaxRegime () 
	{
		return (String)get_Value(COLUMNNAME_LBR_TaxRegime);
	}

	/** Set Brazilian Tax.
		@param LBR_Tax_ID 
		Primary key table LBR_Tax
	  */
	public void setLBR_Tax_ID (int LBR_Tax_ID)
	{
		if (LBR_Tax_ID < 1) 
			set_Value (COLUMNNAME_LBR_Tax_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_Tax_ID, Integer.valueOf(LBR_Tax_ID));
	}

	/** Get Brazilian Tax.
		@return Primary key table LBR_Tax
	  */
	public int getLBR_Tax_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Tax_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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
			set_Value (COLUMNNAME_M_Product_ID, null);
		else 
			set_Value (COLUMNNAME_M_Product_ID, Integer.valueOf(M_Product_ID));
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

	/** Set Relative Priority.
		@param PriorityNo 
		Where inventory should be picked from first
	  */
	public void setPriorityNo (int PriorityNo)
	{
		set_Value (COLUMNNAME_PriorityNo, Integer.valueOf(PriorityNo));
	}

	/** Get Relative Priority.
		@return Where inventory should be picked from first
	  */
	public int getPriorityNo () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_PriorityNo);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Script.
		@param Script 
		Dynamic Java Language Script to calculate result
	  */
	public void setScript (String Script)
	{
		set_Value (COLUMNNAME_Script, Script);
	}

	/** Get Script.
		@return Dynamic Java Language Script to calculate result
	  */
	public String getScript () 
	{
		return (String)get_Value(COLUMNNAME_Script);
	}

	public org.compiere.model.I_C_Region getTo_Region() throws RuntimeException
    {
		return (org.compiere.model.I_C_Region)MTable.get(getCtx(), org.compiere.model.I_C_Region.Table_Name)
			.getPO(getTo_Region_ID(), get_TrxName());	}

	/** Set To.
		@param To_Region_ID 
		Receiving Region
	  */
	public void setTo_Region_ID (int To_Region_ID)
	{
		if (To_Region_ID < 1) 
			set_Value (COLUMNNAME_To_Region_ID, null);
		else 
			set_Value (COLUMNNAME_To_Region_ID, Integer.valueOf(To_Region_ID));
	}

	/** Get To.
		@return Receiving Region
	  */
	public int getTo_Region_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_To_Region_ID);
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

	/** Estados Identicos = 0 */
	public static final String LBR_DESTIONATIONTYPE_EstadosIdenticos = "0";
	/** Estados Diferentes = 1 */
	public static final String LBR_DESTIONATIONTYPE_EstadosDiferentes = "1";
	/** Estrangeiro = 2 */
	public static final String LBR_DESTIONATIONTYPE_Estrangeiro = "2";
	/** Zona Franca = 3 */
	public static final String LBR_DESTIONATIONTYPE_ZonaFranca = "3";
	/** Set Destination Type.
		@param lbr_DestionationType 
		Defines the Destination Type
	  */
	public void setlbr_DestionationType (String lbr_DestionationType)
	{

		set_Value (COLUMNNAME_lbr_DestionationType, lbr_DestionationType);
	}

	/** Get Destination Type.
		@return Defines the Destination Type
	  */
	public String getlbr_DestionationType () 
	{
		return (String)get_Value(COLUMNNAME_lbr_DestionationType);
	}

	/** Yes = Y */
	public static final String LBR_ISSUBTRIBUTARIA_Yes = "Y";
	/** No = N */
	public static final String LBR_ISSUBTRIBUTARIA_No = "N";
	/** Both = B */
	public static final String LBR_ISSUBTRIBUTARIA_Both = "B";
	/** Set Is Substituicao Tributaria.
		@param lbr_IsSubTributaria 
		Defines the Is Substituicao Tributaria Status
	  */
	public void setlbr_IsSubTributaria (String lbr_IsSubTributaria)
	{

		set_Value (COLUMNNAME_lbr_IsSubTributaria, lbr_IsSubTributaria);
	}

	/** Get Is Substituicao Tributaria.
		@return Defines the Is Substituicao Tributaria Status
	  */
	public String getlbr_IsSubTributaria () 
	{
		return (String)get_Value(COLUMNNAME_lbr_IsSubTributaria);
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

	/** End User = END */
	public static final String LBR_TRANSACTIONTYPE_EndUser = "END";
	/** Manufacturing = MAN */
	public static final String LBR_TRANSACTIONTYPE_Manufacturing = "MAN";
	/** Import = IMP */
	public static final String LBR_TRANSACTIONTYPE_Import = "IMP";
	/** Export = EXP */
	public static final String LBR_TRANSACTIONTYPE_Export = "EXP";
	/** Resale = RES */
	public static final String LBR_TRANSACTIONTYPE_Resale = "RES";
	/** End User (Double Base) = EN2 */
	public static final String LBR_TRANSACTIONTYPE_EndUserDoubleBase = "EN2";
	/** End User (RE 574.706) = EN3 */
	public static final String LBR_TRANSACTIONTYPE_EndUserRE574706 = "EN3";
	/** Resale (RE 574.706) = RE3 */
	public static final String LBR_TRANSACTIONTYPE_ResaleRE574706 = "RE3";
	/** Set Transaction Type.
		@param lbr_TransactionType 
		Defines the Transaction Type
	  */
	public void setlbr_TransactionType (String lbr_TransactionType)
	{

		set_Value (COLUMNNAME_lbr_TransactionType, lbr_TransactionType);
	}

	/** Get Transaction Type.
		@return Defines the Transaction Type
	  */
	public String getlbr_TransactionType () 
	{
		return (String)get_Value(COLUMNNAME_lbr_TransactionType);
	}
}