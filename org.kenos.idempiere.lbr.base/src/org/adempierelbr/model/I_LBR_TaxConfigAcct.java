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
package org.adempierelbr.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for LBR_TaxConfigAcct
 *  @author iDempiere (generated) 
 *  @version Release 4.1
 */
@SuppressWarnings("all")
public interface I_LBR_TaxConfigAcct 
{

    /** TableName=LBR_TaxConfigAcct */
    public static final String Table_Name = "LBR_TaxConfigAcct";

    /** AD_Table_ID=1120597 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 3 - Client - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(3);

    /** Load Meta Data */

    /** Column name AD_Client_ID */
    public static final String COLUMNNAME_AD_Client_ID = "AD_Client_ID";

	/** Get Client.
	  * Client/Tenant for this installation.
	  */
	public int getAD_Client_ID();

    /** Column name AD_Org_ID */
    public static final String COLUMNNAME_AD_Org_ID = "AD_Org_ID";

	/** Set Organization.
	  * Organizational entity within client
	  */
	public void setAD_Org_ID (int AD_Org_ID);

	/** Get Organization.
	  * Organizational entity within client
	  */
	public int getAD_Org_ID();

    /** Column name C_AcctSchema_ID */
    public static final String COLUMNNAME_C_AcctSchema_ID = "C_AcctSchema_ID";

	/** Set Accounting Schema.
	  * Rules for accounting
	  */
	public void setC_AcctSchema_ID (int C_AcctSchema_ID);

	/** Get Accounting Schema.
	  * Rules for accounting
	  */
	public int getC_AcctSchema_ID();

	public org.compiere.model.I_C_AcctSchema getC_AcctSchema() throws RuntimeException;

    /** Column name C_BPartner_ID */
    public static final String COLUMNNAME_C_BPartner_ID = "C_BPartner_ID";

	/** Set Business Partner .
	  * Identifies a Business Partner
	  */
	public void setC_BPartner_ID (int C_BPartner_ID);

	/** Get Business Partner .
	  * Identifies a Business Partner
	  */
	public int getC_BPartner_ID();

	public org.compiere.model.I_C_BPartner getC_BPartner() throws RuntimeException;

    /** Column name C_DocType_ID */
    public static final String COLUMNNAME_C_DocType_ID = "C_DocType_ID";

	/** Set Document Type.
	  * Document type or rules
	  */
	public void setC_DocType_ID (int C_DocType_ID);

	/** Get Document Type.
	  * Document type or rules
	  */
	public int getC_DocType_ID();

	public org.compiere.model.I_C_DocType getC_DocType() throws RuntimeException;

    /** Column name C_Region_ID */
    public static final String COLUMNNAME_C_Region_ID = "C_Region_ID";

	/** Set Region.
	  * Identifies a geographical Region
	  */
	public void setC_Region_ID (int C_Region_ID);

	/** Get Region.
	  * Identifies a geographical Region
	  */
	public int getC_Region_ID();

	public org.compiere.model.I_C_Region getC_Region() throws RuntimeException;

    /** Column name Created */
    public static final String COLUMNNAME_Created = "Created";

	/** Get Created.
	  * Date this record was created
	  */
	public Timestamp getCreated();

    /** Column name CreatedBy */
    public static final String COLUMNNAME_CreatedBy = "CreatedBy";

	/** Get Created By.
	  * User who created this records
	  */
	public int getCreatedBy();

    /** Column name Description */
    public static final String COLUMNNAME_Description = "Description";

	/** Set Description.
	  * Optional short description of the record
	  */
	public void setDescription (String Description);

	/** Get Description.
	  * Optional short description of the record
	  */
	public String getDescription();

    /** Column name IsActive */
    public static final String COLUMNNAME_IsActive = "IsActive";

	/** Set Active.
	  * The record is active in the system
	  */
	public void setIsActive (boolean IsActive);

	/** Get Active.
	  * The record is active in the system
	  */
	public boolean isActive();

    /** Column name LBR_BPartnerCategory_ID */
    public static final String COLUMNNAME_LBR_BPartnerCategory_ID = "LBR_BPartnerCategory_ID";

	/** Set BPartner Category.
	  * Primary key table LBR_BPartnerCategory
	  */
	public void setLBR_BPartnerCategory_ID (int LBR_BPartnerCategory_ID);

	/** Get BPartner Category.
	  * Primary key table LBR_BPartnerCategory
	  */
	public int getLBR_BPartnerCategory_ID();

	public org.adempierelbr.model.I_LBR_BPartnerCategory getLBR_BPartnerCategory() throws RuntimeException;

    /** Column name LBR_CFOP_ID */
    public static final String COLUMNNAME_LBR_CFOP_ID = "LBR_CFOP_ID";

	/** Set CFOP.
	  * Primary key table LBR_CFOP
	  */
	public void setLBR_CFOP_ID (int LBR_CFOP_ID);

	/** Get CFOP.
	  * Primary key table LBR_CFOP
	  */
	public int getLBR_CFOP_ID();

	public org.adempierelbr.model.I_LBR_CFOP getLBR_CFOP() throws RuntimeException;

    /** Column name LBR_FiscalGroup_BPartner_ID */
    public static final String COLUMNNAME_LBR_FiscalGroup_BPartner_ID = "LBR_FiscalGroup_BPartner_ID";

	/** Set Fiscal Group - Business Partner.
	  * Primary key table LBR_FiscalGroup_BPartner
	  */
	public void setLBR_FiscalGroup_BPartner_ID (int LBR_FiscalGroup_BPartner_ID);

	/** Get Fiscal Group - Business Partner.
	  * Primary key table LBR_FiscalGroup_BPartner
	  */
	public int getLBR_FiscalGroup_BPartner_ID();

	public org.adempierelbr.model.I_LBR_FiscalGroup_BPartner getLBR_FiscalGroup_BPartner() throws RuntimeException;

    /** Column name LBR_FiscalGroup_Product_ID */
    public static final String COLUMNNAME_LBR_FiscalGroup_Product_ID = "LBR_FiscalGroup_Product_ID";

	/** Set Fiscal Group - Product.
	  * Primary key table LBR_FiscalGroup_Product
	  */
	public void setLBR_FiscalGroup_Product_ID (int LBR_FiscalGroup_Product_ID);

	/** Get Fiscal Group - Product.
	  * Primary key table LBR_FiscalGroup_Product
	  */
	public int getLBR_FiscalGroup_Product_ID();

	public org.adempierelbr.model.I_LBR_FiscalGroup_Product getLBR_FiscalGroup_Product() throws RuntimeException;

    /** Column name LBR_NCM_ID */
    public static final String COLUMNNAME_LBR_NCM_ID = "LBR_NCM_ID";

	/** Set NCM.
	  * Primary key table LBR_NCM
	  */
	public void setLBR_NCM_ID (int LBR_NCM_ID);

	/** Get NCM.
	  * Primary key table LBR_NCM
	  */
	public int getLBR_NCM_ID();

	public org.adempierelbr.model.I_LBR_NCM getLBR_NCM() throws RuntimeException;

    /** Column name LBR_ProductCategory_ID */
    public static final String COLUMNNAME_LBR_ProductCategory_ID = "LBR_ProductCategory_ID";

	/** Set Product Category.
	  * Primary key table LBR_ProductCategory
	  */
	public void setLBR_ProductCategory_ID (int LBR_ProductCategory_ID);

	/** Get Product Category.
	  * Primary key table LBR_ProductCategory
	  */
	public int getLBR_ProductCategory_ID();

	public org.adempierelbr.model.I_LBR_ProductCategory getLBR_ProductCategory() throws RuntimeException;

    /** Column name LBR_RecoverableCOFINS */
    public static final String COLUMNNAME_LBR_RecoverableCOFINS = "LBR_RecoverableCOFINS";

	/** Set COFINS Recoverable	  */
	public void setLBR_RecoverableCOFINS (String LBR_RecoverableCOFINS);

	/** Get COFINS Recoverable	  */
	public String getLBR_RecoverableCOFINS();

    /** Column name LBR_RecoverableICMS */
    public static final String COLUMNNAME_LBR_RecoverableICMS = "LBR_RecoverableICMS";

	/** Set ICMS Recoverable	  */
	public void setLBR_RecoverableICMS (String LBR_RecoverableICMS);

	/** Get ICMS Recoverable	  */
	public String getLBR_RecoverableICMS();

    /** Column name LBR_RecoverableICMSST */
    public static final String COLUMNNAME_LBR_RecoverableICMSST = "LBR_RecoverableICMSST";

	/** Set ICMSST Recoverable	  */
	public void setLBR_RecoverableICMSST (String LBR_RecoverableICMSST);

	/** Get ICMSST Recoverable	  */
	public String getLBR_RecoverableICMSST();

    /** Column name LBR_RecoverableIPI */
    public static final String COLUMNNAME_LBR_RecoverableIPI = "LBR_RecoverableIPI";

	/** Set IPI Recoverable	  */
	public void setLBR_RecoverableIPI (String LBR_RecoverableIPI);

	/** Get IPI Recoverable	  */
	public String getLBR_RecoverableIPI();

    /** Column name LBR_RecoverablePIS */
    public static final String COLUMNNAME_LBR_RecoverablePIS = "LBR_RecoverablePIS";

	/** Set PIS Recoverable	  */
	public void setLBR_RecoverablePIS (String LBR_RecoverablePIS);

	/** Get PIS Recoverable	  */
	public String getLBR_RecoverablePIS();

    /** Column name LBR_TaxConfigAcct_ID */
    public static final String COLUMNNAME_LBR_TaxConfigAcct_ID = "LBR_TaxConfigAcct_ID";

	/** Set Tax Config for Accounting	  */
	public void setLBR_TaxConfigAcct_ID (int LBR_TaxConfigAcct_ID);

	/** Get Tax Config for Accounting	  */
	public int getLBR_TaxConfigAcct_ID();

    /** Column name LBR_TaxConfigAcct_UU */
    public static final String COLUMNNAME_LBR_TaxConfigAcct_UU = "LBR_TaxConfigAcct_UU";

	/** Set LBR_TaxConfigAcct_UU	  */
	public void setLBR_TaxConfigAcct_UU (String LBR_TaxConfigAcct_UU);

	/** Get LBR_TaxConfigAcct_UU	  */
	public String getLBR_TaxConfigAcct_UU();

    /** Column name LBR_TaxRegime */
    public static final String COLUMNNAME_LBR_TaxRegime = "LBR_TaxRegime";

	/** Set Tax Regime	  */
	public void setLBR_TaxRegime (String LBR_TaxRegime);

	/** Get Tax Regime	  */
	public String getLBR_TaxRegime();

    /** Column name M_Product_ID */
    public static final String COLUMNNAME_M_Product_ID = "M_Product_ID";

	/** Set Product.
	  * Product, Service, Item
	  */
	public void setM_Product_ID (int M_Product_ID);

	/** Get Product.
	  * Product, Service, Item
	  */
	public int getM_Product_ID();

	public org.compiere.model.I_M_Product getM_Product() throws RuntimeException;

    /** Column name Updated */
    public static final String COLUMNNAME_Updated = "Updated";

	/** Get Updated.
	  * Date this record was updated
	  */
	public Timestamp getUpdated();

    /** Column name UpdatedBy */
    public static final String COLUMNNAME_UpdatedBy = "UpdatedBy";

	/** Get Updated By.
	  * User who updated this records
	  */
	public int getUpdatedBy();

    /** Column name ValidFrom */
    public static final String COLUMNNAME_ValidFrom = "ValidFrom";

	/** Set Valid from.
	  * Valid from including this date (first day)
	  */
	public void setValidFrom (Timestamp ValidFrom);

	/** Get Valid from.
	  * Valid from including this date (first day)
	  */
	public Timestamp getValidFrom();

    /** Column name ValidTo */
    public static final String COLUMNNAME_ValidTo = "ValidTo";

	/** Set Valid to.
	  * Valid to including this date (last day)
	  */
	public void setValidTo (Timestamp ValidTo);

	/** Get Valid to.
	  * Valid to including this date (last day)
	  */
	public Timestamp getValidTo();

    /** Column name lbr_TransactionType */
    public static final String COLUMNNAME_lbr_TransactionType = "lbr_TransactionType";

	/** Set Transaction Type.
	  * Defines the Transaction Type
	  */
	public void setlbr_TransactionType (String lbr_TransactionType);

	/** Get Transaction Type.
	  * Defines the Transaction Type
	  */
	public String getlbr_TransactionType();
}
