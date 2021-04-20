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

/** Generated Interface for LBR_Bank
 *  @author iDempiere (generated) 
 *  @version Release 6.2
 */
@SuppressWarnings("all")
public interface I_LBR_Bank 
{

    /** TableName=LBR_Bank */
    public static final String Table_Name = "LBR_Bank";

    /** AD_Table_ID=1000003 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 7 - System - Client - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(7);

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

    /** Column name LBR_BankAccountVD */
    public static final String COLUMNNAME_LBR_BankAccountVD = "LBR_BankAccountVD";

	/** Set Account Digit	  */
	public void setLBR_BankAccountVD (boolean LBR_BankAccountVD);

	/** Get Account Digit	  */
	public boolean isLBR_BankAccountVD();

    /** Column name LBR_BankAgencyVD */
    public static final String COLUMNNAME_LBR_BankAgencyVD = "LBR_BankAgencyVD";

	/** Set Agency Digit	  */
	public void setLBR_BankAgencyVD (boolean LBR_BankAgencyVD);

	/** Get Agency Digit	  */
	public boolean isLBR_BankAgencyVD();

    /** Column name LBR_Bank_ID */
    public static final String COLUMNNAME_LBR_Bank_ID = "LBR_Bank_ID";

	/** Set Bank.
	  * Primary Key table LBR_Bank
	  */
	public void setLBR_Bank_ID (int LBR_Bank_ID);

	/** Get Bank.
	  * Primary Key table LBR_Bank
	  */
	public int getLBR_Bank_ID();

    /** Column name LBR_Bank_UU */
    public static final String COLUMNNAME_LBR_Bank_UU = "LBR_Bank_UU";

	/** Set LBR_Bank_UU	  */
	public void setLBR_Bank_UU (String LBR_Bank_UU);

	/** Get LBR_Bank_UU	  */
	public String getLBR_Bank_UU();

    /** Column name Logo_ID */
    public static final String COLUMNNAME_Logo_ID = "Logo_ID";

	/** Set Logo	  */
	public void setLogo_ID (int Logo_ID);

	/** Get Logo	  */
	public int getLogo_ID();

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

    /** Column name RoutingNo */
    public static final String COLUMNNAME_RoutingNo = "RoutingNo";

	/** Set Routing No.
	  * Bank Routing Number
	  */
	public void setRoutingNo (String RoutingNo);

	/** Get Routing No.
	  * Bank Routing Number
	  */
	public String getRoutingNo();

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

    /** Column name lbr_PaymentLocation1 */
    public static final String COLUMNNAME_lbr_PaymentLocation1 = "lbr_PaymentLocation1";

	/** Set Payment Location 1.
	  * Identifies the Payment Location 1
	  */
	public void setlbr_PaymentLocation1 (String lbr_PaymentLocation1);

	/** Get Payment Location 1.
	  * Identifies the Payment Location 1
	  */
	public String getlbr_PaymentLocation1();

    /** Column name lbr_PaymentLocation2 */
    public static final String COLUMNNAME_lbr_PaymentLocation2 = "lbr_PaymentLocation2";

	/** Set Payment Location 2.
	  * Identifies the Payment Location 2
	  */
	public void setlbr_PaymentLocation2 (String lbr_PaymentLocation2);

	/** Get Payment Location 2.
	  * Identifies the Payment Location 2
	  */
	public String getlbr_PaymentLocation2();

    /** Column name lbr_jBoletoNo */
    public static final String COLUMNNAME_lbr_jBoletoNo = "lbr_jBoletoNo";

	/** Set jBoleto Number.
	  * Identifies the bank number at jBoleto
	  */
	public void setlbr_jBoletoNo (String lbr_jBoletoNo);

	/** Get jBoleto Number.
	  * Identifies the bank number at jBoleto
	  */
	public String getlbr_jBoletoNo();
}
