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

/** Generated Interface for LBR_ExportDetail
 *  @author iDempiere (generated) 
 *  @version Release 6.2
 */
@SuppressWarnings("all")
public interface I_LBR_ExportDetail 
{

    /** TableName=LBR_ExportDetail */
    public static final String Table_Name = "LBR_ExportDetail";

    /** AD_Table_ID=1120783 */
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

    /** Column name LBR_ExportDetail_ID */
    public static final String COLUMNNAME_LBR_ExportDetail_ID = "LBR_ExportDetail_ID";

	/** Set Export Detail	  */
	public void setLBR_ExportDetail_ID (int LBR_ExportDetail_ID);

	/** Get Export Detail	  */
	public int getLBR_ExportDetail_ID();

    /** Column name LBR_ExportDetail_UU */
    public static final String COLUMNNAME_LBR_ExportDetail_UU = "LBR_ExportDetail_UU";

	/** Set LBR_ExportDetail_UU	  */
	public void setLBR_ExportDetail_UU (String LBR_ExportDetail_UU);

	/** Get LBR_ExportDetail_UU	  */
	public String getLBR_ExportDetail_UU();

    /** Column name LBR_ExportRegNo */
    public static final String COLUMNNAME_LBR_ExportRegNo = "LBR_ExportRegNo";

	/** Set Export Registration.
	  * Export Registration
	  */
	public void setLBR_ExportRegNo (String LBR_ExportRegNo);

	/** Get Export Registration.
	  * Export Registration
	  */
	public String getLBR_ExportRegNo();

    /** Column name LBR_IsIndirectExport */
    public static final String COLUMNNAME_LBR_IsIndirectExport = "LBR_IsIndirectExport";

	/** Set Indirect Export.
	  * Indicates whether the export operation is indirect
	  */
	public void setLBR_IsIndirectExport (boolean LBR_IsIndirectExport);

	/** Get Indirect Export.
	  * Indicates whether the export operation is indirect
	  */
	public boolean isLBR_IsIndirectExport();

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

    /** Column name lbr_Drawback */
    public static final String COLUMNNAME_lbr_Drawback = "lbr_Drawback";

	/** Set Drawback No.
	  * Identifies the Drawback No
	  */
	public void setlbr_Drawback (String lbr_Drawback);

	/** Get Drawback No.
	  * Identifies the Drawback No
	  */
	public String getlbr_Drawback();

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
