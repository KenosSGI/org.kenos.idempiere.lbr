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

/** Generated Interface for LBR_Product_Tax_Control
 *  @author iDempiere (generated) 
 *  @version Release 6.2
 */
@SuppressWarnings("all")
public interface I_LBR_Product_Tax_Control 
{

    /** TableName=LBR_Product_Tax_Control */
    public static final String Table_Name = "LBR_Product_Tax_Control";

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

    /** Column name ICMSST_TaxAmt */
    public static final String COLUMNNAME_ICMSST_TaxAmt = "ICMSST_TaxAmt";

	/** Set ICMSST	  */
	public void setICMSST_TaxAmt (BigDecimal ICMSST_TaxAmt);

	/** Get ICMSST	  */
	public BigDecimal getICMSST_TaxAmt();

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

    /** Column name LBR_ICMSSubstituto */
    public static final String COLUMNNAME_LBR_ICMSSubstituto = "LBR_ICMSSubstituto";

	/** Set ICMS Substituto.
	  * Valor do ICMS próprio do Substituto
	  */
	public void setLBR_ICMSSubstituto (BigDecimal LBR_ICMSSubstituto);

	/** Get ICMS Substituto.
	  * Valor do ICMS próprio do Substituto
	  */
	public BigDecimal getLBR_ICMSSubstituto();

    /** Column name LBR_Product_Tax_Control_ID */
    public static final String COLUMNNAME_LBR_Product_Tax_Control_ID = "LBR_Product_Tax_Control_ID";

	/** Set Tax Control	  */
	public void setLBR_Product_Tax_Control_ID (int LBR_Product_Tax_Control_ID);

	/** Get Tax Control	  */
	public int getLBR_Product_Tax_Control_ID();

    /** Column name LBR_Product_Tax_Control_UU */
    public static final String COLUMNNAME_LBR_Product_Tax_Control_UU = "LBR_Product_Tax_Control_UU";

	/** Set LBR_Product_Tax_Control_UU	  */
	public void setLBR_Product_Tax_Control_UU (String LBR_Product_Tax_Control_UU);

	/** Get LBR_Product_Tax_Control_UU	  */
	public String getLBR_Product_Tax_Control_UU();

    /** Column name LBR_QtyICMSSubstitute */
    public static final String COLUMNNAME_LBR_QtyICMSSubstitute = "LBR_QtyICMSSubstitute";

	/** Set Qty ICMS Substitute.
	  * Amount Quanty related to Own Substitute ICMS
	  */
	public void setLBR_QtyICMSSubstitute (BigDecimal LBR_QtyICMSSubstitute);

	/** Get Qty ICMS Substitute.
	  * Amount Quanty related to Own Substitute ICMS
	  */
	public BigDecimal getLBR_QtyICMSSubstitute();

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
}
