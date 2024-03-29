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

/** Generated Interface for LBR_BSSetupLine
 *  @author iDempiere (generated) 
 *  @version Release 4.1
 */
@SuppressWarnings("all")
public interface I_LBR_BSSetupLine 
{

    /** TableName=LBR_BSSetupLine */
    public static final String Table_Name = "LBR_BSSetupLine";

    /** AD_Table_ID=1120557 */
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

    /** Column name C_Charge_ID */
    public static final String COLUMNNAME_C_Charge_ID = "C_Charge_ID";

	/** Set Charge.
	  * Additional document charges
	  */
	public void setC_Charge_ID (int C_Charge_ID);

	/** Get Charge.
	  * Additional document charges
	  */
	public int getC_Charge_ID();

	public org.compiere.model.I_C_Charge getC_Charge() throws RuntimeException;

    /** Column name CreatePayment */
    public static final String COLUMNNAME_CreatePayment = "CreatePayment";

	/** Set Create Payment	  */
	public void setCreatePayment (boolean CreatePayment);

	/** Get Create Payment	  */
	public boolean isCreatePayment();

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

    /** Column name LBR_BSSetupLine_ID */
    public static final String COLUMNNAME_LBR_BSSetupLine_ID = "LBR_BSSetupLine_ID";

	/** Set Bank Statement Setup Line	  */
	public void setLBR_BSSetupLine_ID (int LBR_BSSetupLine_ID);

	/** Get Bank Statement Setup Line	  */
	public int getLBR_BSSetupLine_ID();

    /** Column name LBR_BSSetup_ID */
    public static final String COLUMNNAME_LBR_BSSetup_ID = "LBR_BSSetup_ID";

	/** Set Bank Statement Setup	  */
	public void setLBR_BSSetup_ID (int LBR_BSSetup_ID);

	/** Get Bank Statement Setup	  */
	public int getLBR_BSSetup_ID();

	public org.adempierelbr.model.I_LBR_BSSetup getLBR_BSSetup() throws RuntimeException;

    /** Column name MaxAmt */
    public static final String COLUMNNAME_MaxAmt = "MaxAmt";

	/** Set Max Amount.
	  * Maximum Amount in invoice currency
	  */
	public void setMaxAmt (BigDecimal MaxAmt);

	/** Get Max Amount.
	  * Maximum Amount in invoice currency
	  */
	public BigDecimal getMaxAmt();

    /** Column name MinAmt */
    public static final String COLUMNNAME_MinAmt = "MinAmt";

	/** Set Min Amount.
	  * Minimum Amount in invoice currency
	  */
	public void setMinAmt (BigDecimal MinAmt);

	/** Get Min Amount.
	  * Minimum Amount in invoice currency
	  */
	public BigDecimal getMinAmt();

    /** Column name Text */
    public static final String COLUMNNAME_Text = "Text";

	/** Set Text	  */
	public void setText (String Text);

	/** Get Text	  */
	public String getText();

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
