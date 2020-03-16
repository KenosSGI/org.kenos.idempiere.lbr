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

/** Generated Interface for LBR_BankSlipContract
 *  @author iDempiere (generated) 
 *  @version Release 6.2
 */
@SuppressWarnings("all")
public interface I_LBR_BankSlipContract 
{

    /** TableName=LBR_BankSlipContract */
    public static final String Table_Name = "LBR_BankSlipContract";

    /** AD_Table_ID=1120660 */
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

    /** Column name C_BankAccount_ID */
    public static final String COLUMNNAME_C_BankAccount_ID = "C_BankAccount_ID";

	/** Set Bank Account.
	  * Account at the Bank
	  */
	public void setC_BankAccount_ID (int C_BankAccount_ID);

	/** Get Bank Account.
	  * Account at the Bank
	  */
	public int getC_BankAccount_ID();

	public org.compiere.model.I_C_BankAccount getC_BankAccount() throws RuntimeException;

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

    /** Column name LBR_AccordNo */
    public static final String COLUMNNAME_LBR_AccordNo = "LBR_AccordNo";

	/** Set Accord	  */
	public void setLBR_AccordNo (String LBR_AccordNo);

	/** Get Accord	  */
	public String getLBR_AccordNo();

    /** Column name LBR_BankSlipConfig_ID */
    public static final String COLUMNNAME_LBR_BankSlipConfig_ID = "LBR_BankSlipConfig_ID";

	/** Set Bank Slip Config	  */
	public void setLBR_BankSlipConfig_ID (int LBR_BankSlipConfig_ID);

	/** Get Bank Slip Config	  */
	public int getLBR_BankSlipConfig_ID();

	public org.adempierelbr.model.I_LBR_BankSlipConfig getLBR_BankSlipConfig() throws RuntimeException;

    /** Column name LBR_BankSlipContract_ID */
    public static final String COLUMNNAME_LBR_BankSlipContract_ID = "LBR_BankSlipContract_ID";

	/** Set Bank Slip Contract	  */
	public void setLBR_BankSlipContract_ID (int LBR_BankSlipContract_ID);

	/** Get Bank Slip Contract	  */
	public int getLBR_BankSlipContract_ID();

    /** Column name LBR_BankSlipContract_UU */
    public static final String COLUMNNAME_LBR_BankSlipContract_UU = "LBR_BankSlipContract_UU";

	/** Set LBR_BankSlipContract_UU	  */
	public void setLBR_BankSlipContract_UU (String LBR_BankSlipContract_UU);

	/** Get LBR_BankSlipContract_UU	  */
	public String getLBR_BankSlipContract_UU();

    /** Column name LBR_BankSlipFold_ID */
    public static final String COLUMNNAME_LBR_BankSlipFold_ID = "LBR_BankSlipFold_ID";

	/** Set Fold	  */
	public void setLBR_BankSlipFold_ID (int LBR_BankSlipFold_ID);

	/** Get Fold	  */
	public int getLBR_BankSlipFold_ID();

	public org.adempierelbr.model.I_LBR_BankSlipFold getLBR_BankSlipFold() throws RuntimeException;

    /** Column name LBR_BankSlipKind_ID */
    public static final String COLUMNNAME_LBR_BankSlipKind_ID = "LBR_BankSlipKind_ID";

	/** Set Bank Slip Kind	  */
	public void setLBR_BankSlipKind_ID (int LBR_BankSlipKind_ID);

	/** Get Bank Slip Kind	  */
	public int getLBR_BankSlipKind_ID();

	public org.adempierelbr.model.I_LBR_BankSlipKind getLBR_BankSlipKind() throws RuntimeException;

    /** Column name LBR_BankSlipLayout_ID */
    public static final String COLUMNNAME_LBR_BankSlipLayout_ID = "LBR_BankSlipLayout_ID";

	/** Set Bank Slip Layout	  */
	public void setLBR_BankSlipLayout_ID (int LBR_BankSlipLayout_ID);

	/** Get Bank Slip Layout	  */
	public int getLBR_BankSlipLayout_ID();

	public org.adempierelbr.model.I_LBR_BankSlipLayout getLBR_BankSlipLayout() throws RuntimeException;

    /** Column name LBR_CNABFileSeq_ID */
    public static final String COLUMNNAME_LBR_CNABFileSeq_ID = "LBR_CNABFileSeq_ID";

	/** Set CNAB File Sequence	  */
	public void setLBR_CNABFileSeq_ID (int LBR_CNABFileSeq_ID);

	/** Get CNAB File Sequence	  */
	public int getLBR_CNABFileSeq_ID();

	public org.compiere.model.I_AD_Sequence getLBR_CNABFileSeq() throws RuntimeException;

    /** Column name LBR_CNABLotSeq_ID */
    public static final String COLUMNNAME_LBR_CNABLotSeq_ID = "LBR_CNABLotSeq_ID";

	/** Set CNAB Lot Sequence	  */
	public void setLBR_CNABLotSeq_ID (int LBR_CNABLotSeq_ID);

	/** Get CNAB Lot Sequence	  */
	public int getLBR_CNABLotSeq_ID();

	public org.compiere.model.I_AD_Sequence getLBR_CNABLotSeq() throws RuntimeException;

    /** Column name LBR_NumberInBankSeq_ID */
    public static final String COLUMNNAME_LBR_NumberInBankSeq_ID = "LBR_NumberInBankSeq_ID";

	/** Set NIB Sequence	  */
	public void setLBR_NumberInBankSeq_ID (int LBR_NumberInBankSeq_ID);

	/** Get NIB Sequence	  */
	public int getLBR_NumberInBankSeq_ID();

	public org.compiere.model.I_AD_Sequence getLBR_NumberInBankSeq() throws RuntimeException;

    /** Column name LBR_Param1 */
    public static final String COLUMNNAME_LBR_Param1 = "LBR_Param1";

	/** Set Parameter 1	  */
	public void setLBR_Param1 (String LBR_Param1);

	/** Get Parameter 1	  */
	public String getLBR_Param1();

    /** Column name LBR_Param2 */
    public static final String COLUMNNAME_LBR_Param2 = "LBR_Param2";

	/** Set Parameter 2	  */
	public void setLBR_Param2 (String LBR_Param2);

	/** Get Parameter 2	  */
	public String getLBR_Param2();

    /** Column name LBR_RegisterType */
    public static final String COLUMNNAME_LBR_RegisterType = "LBR_RegisterType";

	/** Set Register Type	  */
	public void setLBR_RegisterType (String LBR_RegisterType);

	/** Get Register Type	  */
	public String getLBR_RegisterType();

    /** Column name Name */
    public static final String COLUMNNAME_Name = "Name";

	/** Set Name.
	  * Alphanumeric identifier of the entity
	  */
	public void setName (String Name);

	/** Get Name.
	  * Alphanumeric identifier of the entity
	  */
	public String getName();

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
