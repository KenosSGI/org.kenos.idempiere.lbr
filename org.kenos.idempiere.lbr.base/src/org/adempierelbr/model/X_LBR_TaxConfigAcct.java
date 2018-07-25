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

/** Generated Model for LBR_TaxConfigAcct
 *  @author iDempiere (generated) 
 *  @version Release 4.1 - $Id$ */
public class X_LBR_TaxConfigAcct extends PO implements I_LBR_TaxConfigAcct, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20180611L;

    /** Standard Constructor */
    public X_LBR_TaxConfigAcct (Properties ctx, int LBR_TaxConfigAcct_ID, String trxName)
    {
      super (ctx, LBR_TaxConfigAcct_ID, trxName);
      /** if (LBR_TaxConfigAcct_ID == 0)
        {
			setLBR_TaxConfigAcct_ID (0);
			setValidFrom (new Timestamp( System.currentTimeMillis() ));
        } */
    }

    /** Load Constructor */
    public X_LBR_TaxConfigAcct (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_TaxConfigAcct[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_AcctSchema getC_AcctSchema() throws RuntimeException
    {
		return (org.compiere.model.I_C_AcctSchema)MTable.get(getCtx(), org.compiere.model.I_C_AcctSchema.Table_Name)
			.getPO(getC_AcctSchema_ID(), get_TrxName());	}

	/** Set Accounting Schema.
		@param C_AcctSchema_ID 
		Rules for accounting
	  */
	public void setC_AcctSchema_ID (int C_AcctSchema_ID)
	{
		if (C_AcctSchema_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_C_AcctSchema_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_AcctSchema_ID, Integer.valueOf(C_AcctSchema_ID));
	}

	/** Get Accounting Schema.
		@return Rules for accounting
	  */
	public int getC_AcctSchema_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_AcctSchema_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	/** LBR_RecoverableCOFINS AD_Reference_ID=319 */
	public static final int LBR_RECOVERABLECOFINS_AD_Reference_ID=319;
	/** Yes = Y */
	public static final String LBR_RECOVERABLECOFINS_Yes = "Y";
	/** No = N */
	public static final String LBR_RECOVERABLECOFINS_No = "N";
	/** Set COFINS Recoverable.
		@param LBR_RecoverableCOFINS COFINS Recoverable	  */
	public void setLBR_RecoverableCOFINS (String LBR_RecoverableCOFINS)
	{

		set_Value (COLUMNNAME_LBR_RecoverableCOFINS, LBR_RecoverableCOFINS);
	}

	/** Get COFINS Recoverable.
		@return COFINS Recoverable	  */
	public String getLBR_RecoverableCOFINS () 
	{
		return (String)get_Value(COLUMNNAME_LBR_RecoverableCOFINS);
	}

	/** LBR_RecoverableICMS AD_Reference_ID=319 */
	public static final int LBR_RECOVERABLEICMS_AD_Reference_ID=319;
	/** Yes = Y */
	public static final String LBR_RECOVERABLEICMS_Yes = "Y";
	/** No = N */
	public static final String LBR_RECOVERABLEICMS_No = "N";
	/** Set ICMS Recoverable.
		@param LBR_RecoverableICMS ICMS Recoverable	  */
	public void setLBR_RecoverableICMS (String LBR_RecoverableICMS)
	{

		set_Value (COLUMNNAME_LBR_RecoverableICMS, LBR_RecoverableICMS);
	}

	/** Get ICMS Recoverable.
		@return ICMS Recoverable	  */
	public String getLBR_RecoverableICMS () 
	{
		return (String)get_Value(COLUMNNAME_LBR_RecoverableICMS);
	}

	/** LBR_RecoverableICMSST AD_Reference_ID=319 */
	public static final int LBR_RECOVERABLEICMSST_AD_Reference_ID=319;
	/** Yes = Y */
	public static final String LBR_RECOVERABLEICMSST_Yes = "Y";
	/** No = N */
	public static final String LBR_RECOVERABLEICMSST_No = "N";
	/** Set ICMSST Recoverable.
		@param LBR_RecoverableICMSST ICMSST Recoverable	  */
	public void setLBR_RecoverableICMSST (String LBR_RecoverableICMSST)
	{

		set_Value (COLUMNNAME_LBR_RecoverableICMSST, LBR_RecoverableICMSST);
	}

	/** Get ICMSST Recoverable.
		@return ICMSST Recoverable	  */
	public String getLBR_RecoverableICMSST () 
	{
		return (String)get_Value(COLUMNNAME_LBR_RecoverableICMSST);
	}

	/** LBR_RecoverableIPI AD_Reference_ID=319 */
	public static final int LBR_RECOVERABLEIPI_AD_Reference_ID=319;
	/** Yes = Y */
	public static final String LBR_RECOVERABLEIPI_Yes = "Y";
	/** No = N */
	public static final String LBR_RECOVERABLEIPI_No = "N";
	/** Set IPI Recoverable.
		@param LBR_RecoverableIPI IPI Recoverable	  */
	public void setLBR_RecoverableIPI (String LBR_RecoverableIPI)
	{

		set_Value (COLUMNNAME_LBR_RecoverableIPI, LBR_RecoverableIPI);
	}

	/** Get IPI Recoverable.
		@return IPI Recoverable	  */
	public String getLBR_RecoverableIPI () 
	{
		return (String)get_Value(COLUMNNAME_LBR_RecoverableIPI);
	}

	/** LBR_RecoverablePIS AD_Reference_ID=319 */
	public static final int LBR_RECOVERABLEPIS_AD_Reference_ID=319;
	/** Yes = Y */
	public static final String LBR_RECOVERABLEPIS_Yes = "Y";
	/** No = N */
	public static final String LBR_RECOVERABLEPIS_No = "N";
	/** Set PIS Recoverable.
		@param LBR_RecoverablePIS PIS Recoverable	  */
	public void setLBR_RecoverablePIS (String LBR_RecoverablePIS)
	{

		set_Value (COLUMNNAME_LBR_RecoverablePIS, LBR_RecoverablePIS);
	}

	/** Get PIS Recoverable.
		@return PIS Recoverable	  */
	public String getLBR_RecoverablePIS () 
	{
		return (String)get_Value(COLUMNNAME_LBR_RecoverablePIS);
	}

	/** Set Tax Config for Accounting.
		@param LBR_TaxConfigAcct_ID Tax Config for Accounting	  */
	public void setLBR_TaxConfigAcct_ID (int LBR_TaxConfigAcct_ID)
	{
		if (LBR_TaxConfigAcct_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxConfigAcct_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxConfigAcct_ID, Integer.valueOf(LBR_TaxConfigAcct_ID));
	}

	/** Get Tax Config for Accounting.
		@return Tax Config for Accounting	  */
	public int getLBR_TaxConfigAcct_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_TaxConfigAcct_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_TaxConfigAcct_UU.
		@param LBR_TaxConfigAcct_UU LBR_TaxConfigAcct_UU	  */
	public void setLBR_TaxConfigAcct_UU (String LBR_TaxConfigAcct_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_TaxConfigAcct_UU, LBR_TaxConfigAcct_UU);
	}

	/** Get LBR_TaxConfigAcct_UU.
		@return LBR_TaxConfigAcct_UU	  */
	public String getLBR_TaxConfigAcct_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_TaxConfigAcct_UU);
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