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

/** Generated Interface for LBR_TaxHold
 *  @author iDempiere (generated) 
 *  @version Release 6.2
 */
@SuppressWarnings("all")
public interface I_LBR_TaxHold 
{

    /** TableName=LBR_TaxHold */
    public static final String Table_Name = "LBR_TaxHold";

    /** AD_Table_ID=1120692 */
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

    /** Column name FCP_TaxAmt */
    public static final String COLUMNNAME_FCP_TaxAmt = "FCP_TaxAmt";

	/** Set FCP	  */
	public void setFCP_TaxAmt (BigDecimal FCP_TaxAmt);

	/** Get FCP	  */
	public BigDecimal getFCP_TaxAmt();

    /** Column name FCP_TaxBaseAmt */
    public static final String COLUMNNAME_FCP_TaxBaseAmt = "FCP_TaxBaseAmt";

	/** Set FCP Base	  */
	public void setFCP_TaxBaseAmt (BigDecimal FCP_TaxBaseAmt);

	/** Get FCP Base	  */
	public BigDecimal getFCP_TaxBaseAmt();

    /** Column name FCP_TaxRate */
    public static final String COLUMNNAME_FCP_TaxRate = "FCP_TaxRate";

	/** Set Tax Rate	  */
	public void setFCP_TaxRate (BigDecimal FCP_TaxRate);

	/** Get Tax Rate	  */
	public BigDecimal getFCP_TaxRate();

    /** Column name ICMSST_TaxAmt */
    public static final String COLUMNNAME_ICMSST_TaxAmt = "ICMSST_TaxAmt";

	/** Set ICMSST	  */
	public void setICMSST_TaxAmt (BigDecimal ICMSST_TaxAmt);

	/** Get ICMSST	  */
	public BigDecimal getICMSST_TaxAmt();

    /** Column name ICMSST_TaxBaseAmt */
    public static final String COLUMNNAME_ICMSST_TaxBaseAmt = "ICMSST_TaxBaseAmt";

	/** Set ICMSST Base	  */
	public void setICMSST_TaxBaseAmt (BigDecimal ICMSST_TaxBaseAmt);

	/** Get ICMSST Base	  */
	public BigDecimal getICMSST_TaxBaseAmt();

    /** Column name ICMSST_TaxRate */
    public static final String COLUMNNAME_ICMSST_TaxRate = "ICMSST_TaxRate";

	/** Set Tax Rate ICMSST	  */
	public void setICMSST_TaxRate (BigDecimal ICMSST_TaxRate);

	/** Get Tax Rate ICMSST	  */
	public BigDecimal getICMSST_TaxRate();

    /** Column name ICMS_TaxAmt */
    public static final String COLUMNNAME_ICMS_TaxAmt = "ICMS_TaxAmt";

	/** Set ICMS	  */
	public void setICMS_TaxAmt (BigDecimal ICMS_TaxAmt);

	/** Get ICMS	  */
	public BigDecimal getICMS_TaxAmt();

    /** Column name ICMS_TaxBaseAmt */
    public static final String COLUMNNAME_ICMS_TaxBaseAmt = "ICMS_TaxBaseAmt";

	/** Set ICMS Base	  */
	public void setICMS_TaxBaseAmt (BigDecimal ICMS_TaxBaseAmt);

	/** Get ICMS Base	  */
	public BigDecimal getICMS_TaxBaseAmt();

    /** Column name ICMS_TaxRate */
    public static final String COLUMNNAME_ICMS_TaxRate = "ICMS_TaxRate";

	/** Set Tax Rate ICMS	  */
	public void setICMS_TaxRate (BigDecimal ICMS_TaxRate);

	/** Get Tax Rate ICMS	  */
	public BigDecimal getICMS_TaxRate();

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

    /** Column name LBR_ICMSActualAmt */
    public static final String COLUMNNAME_LBR_ICMSActualAmt = "LBR_ICMSActualAmt";

	/** Set ICMS Actual Amt	  */
	public void setLBR_ICMSActualAmt (BigDecimal LBR_ICMSActualAmt);

	/** Get ICMS Actual Amt	  */
	public BigDecimal getLBR_ICMSActualAmt();

    /** Column name LBR_ICMSActualBaseAmt */
    public static final String COLUMNNAME_LBR_ICMSActualBaseAmt = "LBR_ICMSActualBaseAmt";

	/** Set ICMS Actual Base Amt	  */
	public void setLBR_ICMSActualBaseAmt (BigDecimal LBR_ICMSActualBaseAmt);

	/** Get ICMS Actual Base Amt	  */
	public BigDecimal getLBR_ICMSActualBaseAmt();

    /** Column name LBR_ICMSActualBaseRed */
    public static final String COLUMNNAME_LBR_ICMSActualBaseRed = "LBR_ICMSActualBaseRed";

	/** Set ICMS Actual Base Red.	  */
	public void setLBR_ICMSActualBaseRed (BigDecimal LBR_ICMSActualBaseRed);

	/** Get ICMS Actual Base Red.	  */
	public BigDecimal getLBR_ICMSActualBaseRed();

    /** Column name LBR_ICMSActualRate */
    public static final String COLUMNNAME_LBR_ICMSActualRate = "LBR_ICMSActualRate";

	/** Set ICMS Actual Rate	  */
	public void setLBR_ICMSActualRate (BigDecimal LBR_ICMSActualRate);

	/** Get ICMS Actual Rate	  */
	public BigDecimal getLBR_ICMSActualRate();

    /** Column name LBR_TaxHold_ID */
    public static final String COLUMNNAME_LBR_TaxHold_ID = "LBR_TaxHold_ID";

	/** Set Tax Control	  */
	public void setLBR_TaxHold_ID (int LBR_TaxHold_ID);

	/** Get Tax Control	  */
	public int getLBR_TaxHold_ID();

    /** Column name LBR_TaxHold_UU */
    public static final String COLUMNNAME_LBR_TaxHold_UU = "LBR_TaxHold_UU";

	/** Set LBR_TaxHold_UU	  */
	public void setLBR_TaxHold_UU (String LBR_TaxHold_UU);

	/** Get LBR_TaxHold_UU	  */
	public String getLBR_TaxHold_UU();

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

    /** Column name Qty */
    public static final String COLUMNNAME_Qty = "Qty";

	/** Set Quantity.
	  * Quantity
	  */
	public void setQty (BigDecimal Qty);

	/** Get Quantity.
	  * Quantity
	  */
	public BigDecimal getQty();

    /** Column name ReferenceNo */
    public static final String COLUMNNAME_ReferenceNo = "ReferenceNo";

	/** Set Reference No.
	  * Your customer or vendor number at the Business Partner's site
	  */
	public void setReferenceNo (String ReferenceNo);

	/** Get Reference No.
	  * Your customer or vendor number at the Business Partner's site
	  */
	public String getReferenceNo();

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

    /** Column name lbr_NFeID */
    public static final String COLUMNNAME_lbr_NFeID = "lbr_NFeID";

	/** Set NFe ID.
	  * Identification of NFe
	  */
	public void setlbr_NFeID (String lbr_NFeID);

	/** Get NFe ID.
	  * Identification of NFe
	  */
	public String getlbr_NFeID();
}
