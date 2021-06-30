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

/** Generated Interface for LBR_TaxDefinition
 *  @author iDempiere (generated) 
 *  @version Release 6.2
 */
@SuppressWarnings("all")
public interface I_LBR_TaxDefinition 
{

    /** TableName=LBR_TaxDefinition */
    public static final String Table_Name = "LBR_TaxDefinition";

    /** AD_Table_ID=1106001 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 6 - System - Client 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(6);

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

    /** Column name IsManual */
    public static final String COLUMNNAME_IsManual = "IsManual";

	/** Set Manual.
	  * This is a manual process
	  */
	public void setIsManual (boolean IsManual);

	/** Get Manual.
	  * This is a manual process
	  */
	public boolean isManual();

    /** Column name IsManufactured */
    public static final String COLUMNNAME_IsManufactured = "IsManufactured";

	/** Set Manufactured.
	  * This product is manufactured
	  */
	public void setIsManufactured (String IsManufactured);

	/** Get Manufactured.
	  * This product is manufactured
	  */
	public String getIsManufactured();

    /** Column name IsSOTrx */
    public static final String COLUMNNAME_IsSOTrx = "IsSOTrx";

	/** Set Sales Transaction.
	  * This is a Sales Transaction
	  */
	public void setIsSOTrx (String IsSOTrx);

	/** Get Sales Transaction.
	  * This is a Sales Transaction
	  */
	public String getIsSOTrx();

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

    /** Column name LBR_CEST_ID */
    public static final String COLUMNNAME_LBR_CEST_ID = "LBR_CEST_ID";

	/** Set CEST.
	  * Brazilian Specifier code Tax
	  */
	public void setLBR_CEST_ID (int LBR_CEST_ID);

	/** Get CEST.
	  * Brazilian Specifier code Tax
	  */
	public int getLBR_CEST_ID();

	public org.adempierelbr.model.I_LBR_CEST getLBR_CEST() throws RuntimeException;

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

    /** Column name LBR_IndIEDest */
    public static final String COLUMNNAME_LBR_IndIEDest = "LBR_IndIEDest";

	/** Set Indicador da IE.
	  * Indicador da IE do Destinatário
	  */
	public void setLBR_IndIEDest (String LBR_IndIEDest);

	/** Get Indicador da IE.
	  * Indicador da IE do Destinatário
	  */
	public String getLBR_IndIEDest();

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

    /** Column name LBR_RegionFrom */
    public static final String COLUMNNAME_LBR_RegionFrom = "LBR_RegionFrom";

	/** Set Region From	  */
	public void setLBR_RegionFrom (String LBR_RegionFrom);

	/** Get Region From	  */
	public String getLBR_RegionFrom();

    /** Column name LBR_RegionTo */
    public static final String COLUMNNAME_LBR_RegionTo = "LBR_RegionTo";

	/** Set Region To	  */
	public void setLBR_RegionTo (String LBR_RegionTo);

	/** Get Region To	  */
	public String getLBR_RegionTo();

    /** Column name LBR_TaxDefinition_ID */
    public static final String COLUMNNAME_LBR_TaxDefinition_ID = "LBR_TaxDefinition_ID";

	/** Set Tax Definition	  */
	public void setLBR_TaxDefinition_ID (int LBR_TaxDefinition_ID);

	/** Get Tax Definition	  */
	public int getLBR_TaxDefinition_ID();

    /** Column name LBR_TaxDefinition_UU */
    public static final String COLUMNNAME_LBR_TaxDefinition_UU = "LBR_TaxDefinition_UU";

	/** Set LBR_TaxDefinition_UU	  */
	public void setLBR_TaxDefinition_UU (String LBR_TaxDefinition_UU);

	/** Get LBR_TaxDefinition_UU	  */
	public String getLBR_TaxDefinition_UU();

    /** Column name LBR_TaxRegime */
    public static final String COLUMNNAME_LBR_TaxRegime = "LBR_TaxRegime";

	/** Set Tax Regime	  */
	public void setLBR_TaxRegime (String LBR_TaxRegime);

	/** Get Tax Regime	  */
	public String getLBR_TaxRegime();

    /** Column name LBR_Tax_ID */
    public static final String COLUMNNAME_LBR_Tax_ID = "LBR_Tax_ID";

	/** Set Brazilian Tax.
	  * Primary key table LBR_Tax
	  */
	public void setLBR_Tax_ID (int LBR_Tax_ID);

	/** Get Brazilian Tax.
	  * Primary key table LBR_Tax
	  */
	public int getLBR_Tax_ID();

    /** Column name M_Product_Category_ID */
    public static final String COLUMNNAME_M_Product_Category_ID = "M_Product_Category_ID";

	/** Set Product Category.
	  * Category of a Product
	  */
	public void setM_Product_Category_ID (int M_Product_Category_ID);

	/** Get Product Category.
	  * Category of a Product
	  */
	public int getM_Product_Category_ID();

	public org.compiere.model.I_M_Product_Category getM_Product_Category() throws RuntimeException;

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

    /** Column name PriorityNo */
    public static final String COLUMNNAME_PriorityNo = "PriorityNo";

	/** Set Relative Priority.
	  * Where inventory should be picked from first
	  */
	public void setPriorityNo (int PriorityNo);

	/** Get Relative Priority.
	  * Where inventory should be picked from first
	  */
	public int getPriorityNo();

    /** Column name Script */
    public static final String COLUMNNAME_Script = "Script";

	/** Set Script.
	  * Dynamic Java Language Script to calculate result
	  */
	public void setScript (String Script);

	/** Get Script.
	  * Dynamic Java Language Script to calculate result
	  */
	public String getScript();

    /** Column name To_Region_ID */
    public static final String COLUMNNAME_To_Region_ID = "To_Region_ID";

	/** Set To.
	  * Receiving Region
	  */
	public void setTo_Region_ID (int To_Region_ID);

	/** Get To.
	  * Receiving Region
	  */
	public int getTo_Region_ID();

	public org.compiere.model.I_C_Region getTo_Region() throws RuntimeException;

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

    /** Column name lbr_DestionationType */
    public static final String COLUMNNAME_lbr_DestionationType = "lbr_DestionationType";

	/** Set Destination Type.
	  * Defines the Destination Type
	  */
	public void setlbr_DestionationType (String lbr_DestionationType);

	/** Get Destination Type.
	  * Defines the Destination Type
	  */
	public String getlbr_DestionationType();

    /** Column name lbr_DocBaseType */
    public static final String COLUMNNAME_lbr_DocBaseType = "lbr_DocBaseType";

	/** Set LBR DocBaseType.
	  * Localization Brasil Document Base Type
	  */
	public void setlbr_DocBaseType (String lbr_DocBaseType);

	/** Get LBR DocBaseType.
	  * Localization Brasil Document Base Type
	  */
	public String getlbr_DocBaseType();

    /** Column name lbr_IsSubTributaria */
    public static final String COLUMNNAME_lbr_IsSubTributaria = "lbr_IsSubTributaria";

	/** Set Is Substituicao Tributaria.
	  * Defines the Is Substituicao Tributaria Status
	  */
	public void setlbr_IsSubTributaria (String lbr_IsSubTributaria);

	/** Get Is Substituicao Tributaria.
	  * Defines the Is Substituicao Tributaria Status
	  */
	public String getlbr_IsSubTributaria();

    /** Column name lbr_ProductSource */
    public static final String COLUMNNAME_lbr_ProductSource = "lbr_ProductSource";

	/** Set Product Source.
	  * Defines the Product Source
	  */
	public void setlbr_ProductSource (String lbr_ProductSource);

	/** Get Product Source.
	  * Defines the Product Source
	  */
	public String getlbr_ProductSource();

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
