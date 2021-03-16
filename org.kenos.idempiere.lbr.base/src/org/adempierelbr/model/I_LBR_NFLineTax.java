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

/** Generated Interface for LBR_NFLineTax
 *  @author iDempiere (generated) 
 *  @version Release 4.1
 */
@SuppressWarnings("all")
public interface I_LBR_NFLineTax 
{

    /** TableName=LBR_NFLineTax */
    public static final String Table_Name = "LBR_NFLineTax";

    /** AD_Table_ID=1000035 */
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

    /** Column name LBR_LegalMessage_ID */
    public static final String COLUMNNAME_LBR_LegalMessage_ID = "LBR_LegalMessage_ID";

	/** Set Legal Message.
	  * Defines the Legal Message
	  */
	public void setLBR_LegalMessage_ID (int LBR_LegalMessage_ID);

	/** Get Legal Message.
	  * Defines the Legal Message
	  */
	public int getLBR_LegalMessage_ID();

	public org.adempierelbr.model.I_LBR_LegalMessage getLBR_LegalMessage() throws RuntimeException;

    /** Column name LBR_NFLineTax_ID */
    public static final String COLUMNNAME_LBR_NFLineTax_ID = "LBR_NFLineTax_ID";

	/** Set Nota Fiscal Line Tax.
	  * Defines the Nota Fiscal Line Tax
	  */
	public void setLBR_NFLineTax_ID (int LBR_NFLineTax_ID);

	/** Get Nota Fiscal Line Tax.
	  * Defines the Nota Fiscal Line Tax
	  */
	public int getLBR_NFLineTax_ID();

    /** Column name LBR_NotaFiscalLine_ID */
    public static final String COLUMNNAME_LBR_NotaFiscalLine_ID = "LBR_NotaFiscalLine_ID";

	/** Set Nota Fiscal Line.
	  * Primary key table LBR_NotaFiscalLine
	  */
	public void setLBR_NotaFiscalLine_ID (int LBR_NotaFiscalLine_ID);

	/** Get Nota Fiscal Line.
	  * Primary key table LBR_NotaFiscalLine
	  */
	public int getLBR_NotaFiscalLine_ID();

	public org.adempierelbr.model.I_LBR_NotaFiscalLine getLBR_NotaFiscalLine() throws RuntimeException;

    /** Column name LBR_TaxBaseType_ID */
    public static final String COLUMNNAME_LBR_TaxBaseType_ID = "LBR_TaxBaseType_ID";

	/** Set Tax Base Type	  */
	public void setLBR_TaxBaseType_ID (int LBR_TaxBaseType_ID);

	/** Get Tax Base Type	  */
	public int getLBR_TaxBaseType_ID();

	public org.adempierelbr.model.I_LBR_TaxBaseType getLBR_TaxBaseType() throws RuntimeException;

    /** Column name LBR_TaxGroup_ID */
    public static final String COLUMNNAME_LBR_TaxGroup_ID = "LBR_TaxGroup_ID";

	/** Set Tax Group.
	  * Defines the Tax Group
	  */
	public void setLBR_TaxGroup_ID (int LBR_TaxGroup_ID);

	/** Get Tax Group.
	  * Defines the Tax Group
	  */
	public int getLBR_TaxGroup_ID();

	public org.adempierelbr.model.I_LBR_TaxGroup getLBR_TaxGroup() throws RuntimeException;

    /** Column name LBR_TaxLegalFW_ID */
    public static final String COLUMNNAME_LBR_TaxLegalFW_ID = "LBR_TaxLegalFW_ID";

	/** Set Tax Legal Framework	  */
	public void setLBR_TaxLegalFW_ID (int LBR_TaxLegalFW_ID);

	/** Get Tax Legal Framework	  */
	public int getLBR_TaxLegalFW_ID();

	public org.adempierelbr.model.I_LBR_TaxLegalFW getLBR_TaxLegalFW() throws RuntimeException;

    /** Column name LBR_TaxListAmt */
    public static final String COLUMNNAME_LBR_TaxListAmt = "LBR_TaxListAmt";

	/** Set Tax List Amt	  */
	public void setLBR_TaxListAmt (BigDecimal LBR_TaxListAmt);

	/** Get Tax List Amt	  */
	public BigDecimal getLBR_TaxListAmt();

    /** Column name LBR_TaxStatus_ID */
    public static final String COLUMNNAME_LBR_TaxStatus_ID = "LBR_TaxStatus_ID";

	/** Set Tax Status	  */
	public void setLBR_TaxStatus_ID (int LBR_TaxStatus_ID);

	/** Get Tax Status	  */
	public int getLBR_TaxStatus_ID();

	public org.adempierelbr.model.I_LBR_TaxStatus getLBR_TaxStatus() throws RuntimeException;

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
