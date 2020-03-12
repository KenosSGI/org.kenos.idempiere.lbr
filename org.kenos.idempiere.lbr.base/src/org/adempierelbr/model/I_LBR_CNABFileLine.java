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

/** Generated Interface for LBR_CNABFileLine
 *  @author iDempiere (generated) 
 *  @version Release 6.2
 */
@SuppressWarnings("all")
public interface I_LBR_CNABFileLine 
{

    /** TableName=LBR_CNABFileLine */
    public static final String Table_Name = "LBR_CNABFileLine";

    /** AD_Table_ID=1120670 */
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

    /** Column name LBR_BankSlipMov_ID */
    public static final String COLUMNNAME_LBR_BankSlipMov_ID = "LBR_BankSlipMov_ID";

	/** Set Bank Slip Mov	  */
	public void setLBR_BankSlipMov_ID (int LBR_BankSlipMov_ID);

	/** Get Bank Slip Mov	  */
	public int getLBR_BankSlipMov_ID();

	public org.adempierelbr.model.I_LBR_BankSlipMov getLBR_BankSlipMov() throws RuntimeException;

    /** Column name LBR_CNABFileLine_ID */
    public static final String COLUMNNAME_LBR_CNABFileLine_ID = "LBR_CNABFileLine_ID";

	/** Set CNAB File Line	  */
	public void setLBR_CNABFileLine_ID (int LBR_CNABFileLine_ID);

	/** Get CNAB File Line	  */
	public int getLBR_CNABFileLine_ID();

    /** Column name LBR_CNABFileLine_UU */
    public static final String COLUMNNAME_LBR_CNABFileLine_UU = "LBR_CNABFileLine_UU";

	/** Set LBR_CNABFileLine_UU	  */
	public void setLBR_CNABFileLine_UU (String LBR_CNABFileLine_UU);

	/** Get LBR_CNABFileLine_UU	  */
	public String getLBR_CNABFileLine_UU();

    /** Column name LBR_CNABFile_ID */
    public static final String COLUMNNAME_LBR_CNABFile_ID = "LBR_CNABFile_ID";

	/** Set CNAB File	  */
	public void setLBR_CNABFile_ID (int LBR_CNABFile_ID);

	/** Get CNAB File	  */
	public int getLBR_CNABFile_ID();

	public org.adempierelbr.model.I_LBR_CNABFile getLBR_CNABFile() throws RuntimeException;

    /** Column name Processed */
    public static final String COLUMNNAME_Processed = "Processed";

	/** Set Processed.
	  * The document has been processed
	  */
	public void setProcessed (boolean Processed);

	/** Get Processed.
	  * The document has been processed
	  */
	public boolean isProcessed();

    /** Column name SeqNo */
    public static final String COLUMNNAME_SeqNo = "SeqNo";

	/** Set Sequence.
	  * Method of ordering records;
 lowest number comes first
	  */
	public void setSeqNo (int SeqNo);

	/** Get Sequence.
	  * Method of ordering records;
 lowest number comes first
	  */
	public int getSeqNo();

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
