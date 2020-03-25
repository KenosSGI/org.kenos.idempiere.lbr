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

/** Generated Interface for LBR_BankSlipConfig
 *  @author iDempiere (generated) 
 *  @version Release 6.2
 */
@SuppressWarnings("all")
public interface I_LBR_BankSlipConfig 
{

    /** TableName=LBR_BankSlipConfig */
    public static final String Table_Name = "LBR_BankSlipConfig";

    /** AD_Table_ID=1120665 */
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

    /** Column name LBR_BankSlipConfig_ID */
    public static final String COLUMNNAME_LBR_BankSlipConfig_ID = "LBR_BankSlipConfig_ID";

	/** Set Bank Slip Config	  */
	public void setLBR_BankSlipConfig_ID (int LBR_BankSlipConfig_ID);

	/** Get Bank Slip Config	  */
	public int getLBR_BankSlipConfig_ID();

    /** Column name LBR_BankSlipConfig_UU */
    public static final String COLUMNNAME_LBR_BankSlipConfig_UU = "LBR_BankSlipConfig_UU";

	/** Set LBR_BankSlipConfig_UU	  */
	public void setLBR_BankSlipConfig_UU (String LBR_BankSlipConfig_UU);

	/** Get LBR_BankSlipConfig_UU	  */
	public String getLBR_BankSlipConfig_UU();

    /** Column name LBR_DistributedVia */
    public static final String COLUMNNAME_LBR_DistributedVia = "LBR_DistributedVia";

	/** Set Distributed Via	  */
	public void setLBR_DistributedVia (String LBR_DistributedVia);

	/** Get Distributed Via	  */
	public String getLBR_DistributedVia();

    /** Column name LBR_InterestCharge_ID */
    public static final String COLUMNNAME_LBR_InterestCharge_ID = "LBR_InterestCharge_ID";

	/** Set Interest Charge	  */
	public void setLBR_InterestCharge_ID (int LBR_InterestCharge_ID);

	/** Get Interest Charge	  */
	public int getLBR_InterestCharge_ID();

	public org.compiere.model.I_C_Charge getLBR_InterestCharge() throws RuntimeException;

    /** Column name LBR_InterestDays */
    public static final String COLUMNNAME_LBR_InterestDays = "LBR_InterestDays";

	/** Set Interest Days	  */
	public void setLBR_InterestDays (int LBR_InterestDays);

	/** Get Interest Days	  */
	public int getLBR_InterestDays();

    /** Column name LBR_InterestType */
    public static final String COLUMNNAME_LBR_InterestType = "LBR_InterestType";

	/** Set Interest Type	  */
	public void setLBR_InterestType (String LBR_InterestType);

	/** Get Interest Type	  */
	public String getLBR_InterestType();

    /** Column name LBR_InterestValue */
    public static final String COLUMNNAME_LBR_InterestValue = "LBR_InterestValue";

	/** Set Interest Value	  */
	public void setLBR_InterestValue (BigDecimal LBR_InterestValue);

	/** Get Interest Value	  */
	public BigDecimal getLBR_InterestValue();

    /** Column name LBR_IsAccepted */
    public static final String COLUMNNAME_LBR_IsAccepted = "LBR_IsAccepted";

	/** Set Accepted	  */
	public void setLBR_IsAccepted (String LBR_IsAccepted);

	/** Get Accepted	  */
	public String getLBR_IsAccepted();

    /** Column name LBR_Message1 */
    public static final String COLUMNNAME_LBR_Message1 = "LBR_Message1";

	/** Set Message 1	  */
	public void setLBR_Message1 (String LBR_Message1);

	/** Get Message 1	  */
	public String getLBR_Message1();

    /** Column name LBR_Message2 */
    public static final String COLUMNNAME_LBR_Message2 = "LBR_Message2";

	/** Set Message 2	  */
	public void setLBR_Message2 (String LBR_Message2);

	/** Get Message 2	  */
	public String getLBR_Message2();

    /** Column name LBR_PenaltyCharge_ID */
    public static final String COLUMNNAME_LBR_PenaltyCharge_ID = "LBR_PenaltyCharge_ID";

	/** Set Penalty Charge	  */
	public void setLBR_PenaltyCharge_ID (int LBR_PenaltyCharge_ID);

	/** Get Penalty Charge	  */
	public int getLBR_PenaltyCharge_ID();

	public org.compiere.model.I_C_Charge getLBR_PenaltyCharge() throws RuntimeException;

    /** Column name LBR_PenaltyDays */
    public static final String COLUMNNAME_LBR_PenaltyDays = "LBR_PenaltyDays";

	/** Set Penalty Days	  */
	public void setLBR_PenaltyDays (int LBR_PenaltyDays);

	/** Get Penalty Days	  */
	public int getLBR_PenaltyDays();

    /** Column name LBR_PenaltyType */
    public static final String COLUMNNAME_LBR_PenaltyType = "LBR_PenaltyType";

	/** Set Penalty Type	  */
	public void setLBR_PenaltyType (String LBR_PenaltyType);

	/** Get Penalty Type	  */
	public String getLBR_PenaltyType();

    /** Column name LBR_PenaltyValue */
    public static final String COLUMNNAME_LBR_PenaltyValue = "LBR_PenaltyValue";

	/** Set Penalty Value	  */
	public void setLBR_PenaltyValue (BigDecimal LBR_PenaltyValue);

	/** Get Penalty Value	  */
	public BigDecimal getLBR_PenaltyValue();

    /** Column name LBR_ProtestDays */
    public static final String COLUMNNAME_LBR_ProtestDays = "LBR_ProtestDays";

	/** Set Protest Days	  */
	public void setLBR_ProtestDays (int LBR_ProtestDays);

	/** Get Protest Days	  */
	public int getLBR_ProtestDays();

    /** Column name LBR_ProtestType */
    public static final String COLUMNNAME_LBR_ProtestType = "LBR_ProtestType";

	/** Set Protest Type	  */
	public void setLBR_ProtestType (String LBR_ProtestType);

	/** Get Protest Type	  */
	public String getLBR_ProtestType();

    /** Column name LBR_ReturnAction */
    public static final String COLUMNNAME_LBR_ReturnAction = "LBR_ReturnAction";

	/** Set Return Action	  */
	public void setLBR_ReturnAction (String LBR_ReturnAction);

	/** Get Return Action	  */
	public String getLBR_ReturnAction();

    /** Column name LBR_ReturnDays */
    public static final String COLUMNNAME_LBR_ReturnDays = "LBR_ReturnDays";

	/** Set Return Days	  */
	public void setLBR_ReturnDays (int LBR_ReturnDays);

	/** Get Return Days	  */
	public int getLBR_ReturnDays();

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
