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

/** Generated Interface for LBR_CTeICMSFim
 *  @author iDempiere (generated) 
 *  @version Release 6.2
 */
@SuppressWarnings("all")
public interface I_LBR_CTeICMSFim 
{

    /** TableName=LBR_CTeICMSFim */
    public static final String Table_Name = "LBR_CTeICMSFim";

    /** AD_Table_ID=1120773 */
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

    /** Column name LBR_CTeICMSFim_ID */
    public static final String COLUMNNAME_LBR_CTeICMSFim_ID = "LBR_CTeICMSFim_ID";

	/** Set CT-e ICMS Fim	  */
	public void setLBR_CTeICMSFim_ID (int LBR_CTeICMSFim_ID);

	/** Get CT-e ICMS Fim	  */
	public int getLBR_CTeICMSFim_ID();

    /** Column name LBR_CTeICMSFim_UU */
    public static final String COLUMNNAME_LBR_CTeICMSFim_UU = "LBR_CTeICMSFim_UU";

	/** Set LBR_CTeICMSFim_UU	  */
	public void setLBR_CTeICMSFim_UU (String LBR_CTeICMSFim_UU);

	/** Get LBR_CTeICMSFim_UU	  */
	public String getLBR_CTeICMSFim_UU();

    /** Column name LBR_CTe_ID */
    public static final String COLUMNNAME_LBR_CTe_ID = "LBR_CTe_ID";

	/** Set CT-e	  */
	public void setLBR_CTe_ID (int LBR_CTe_ID);

	/** Get CT-e	  */
	public int getLBR_CTe_ID();

	public org.adempierelbr.model.I_LBR_CTe getLBR_CTe() throws RuntimeException;

    /** Column name LBR_TaxCreditAmt */
    public static final String COLUMNNAME_LBR_TaxCreditAmt = "LBR_TaxCreditAmt";

	/** Set Tax Credit Amt	  */
	public void setLBR_TaxCreditAmt (BigDecimal LBR_TaxCreditAmt);

	/** Get Tax Credit Amt	  */
	public BigDecimal getLBR_TaxCreditAmt();

    /** Column name LBR_TaxName_ID */
    public static final String COLUMNNAME_LBR_TaxName_ID = "LBR_TaxName_ID";

	/** Set Tax Name.
	  * Primary key table LBR_TaxName
	  */
	public void setLBR_TaxName_ID (int LBR_TaxName_ID);

	/** Get Tax Name.
	  * Primary key table LBR_TaxName
	  */
	public int getLBR_TaxName_ID();

	public org.adempierelbr.model.I_LBR_TaxName getLBR_TaxName() throws RuntimeException;

    /** Column name LBR_TaxStatus_ID */
    public static final String COLUMNNAME_LBR_TaxStatus_ID = "LBR_TaxStatus_ID";

	/** Set Tax Status	  */
	public void setLBR_TaxStatus_ID (int LBR_TaxStatus_ID);

	/** Get Tax Status	  */
	public int getLBR_TaxStatus_ID();

	public org.adempierelbr.model.I_LBR_TaxStatus getLBR_TaxStatus() throws RuntimeException;

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

    /** Column name lbr_TaxAmt */
    public static final String COLUMNNAME_lbr_TaxAmt = "lbr_TaxAmt";

	/** Set Tax Amount.
	  * Defines the Tax Amount
	  */
	public void setlbr_TaxAmt (BigDecimal lbr_TaxAmt);

	/** Get Tax Amount.
	  * Defines the Tax Amount
	  */
	public BigDecimal getlbr_TaxAmt();

    /** Column name lbr_TaxBase */
    public static final String COLUMNNAME_lbr_TaxBase = "lbr_TaxBase";

	/** Set Tax Base Reduction.
	  * Indicates the Tax Base Reduction
	  */
	public void setlbr_TaxBase (BigDecimal lbr_TaxBase);

	/** Get Tax Base Reduction.
	  * Indicates the Tax Base Reduction
	  */
	public BigDecimal getlbr_TaxBase();

    /** Column name lbr_TaxBaseAmt */
    public static final String COLUMNNAME_lbr_TaxBaseAmt = "lbr_TaxBaseAmt";

	/** Set Tax Base Amount.
	  * Defines the Tax Base Amount
	  */
	public void setlbr_TaxBaseAmt (BigDecimal lbr_TaxBaseAmt);

	/** Get Tax Base Amount.
	  * Defines the Tax Base Amount
	  */
	public BigDecimal getlbr_TaxBaseAmt();

    /** Column name lbr_TaxRate */
    public static final String COLUMNNAME_lbr_TaxRate = "lbr_TaxRate";

	/** Set Tax Rate.
	  * Indicates the Tax Rate
	  */
	public void setlbr_TaxRate (BigDecimal lbr_TaxRate);

	/** Get Tax Rate.
	  * Indicates the Tax Rate
	  */
	public BigDecimal getlbr_TaxRate();
}
