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

/** Generated Interface for LBR_DigitalCertificate
 *  @author iDempiere (generated) 
 *  @version Release 6.2
 */
@SuppressWarnings("all")
public interface I_LBR_DigitalCertificate 
{

    /** TableName=LBR_DigitalCertificate */
    public static final String Table_Name = "LBR_DigitalCertificate";

    /** AD_Table_ID=1100000 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 6 - System - Client 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(6);

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

    /** Column name AD_Role_ID */
    public static final String COLUMNNAME_AD_Role_ID = "AD_Role_ID";

	/** Set Role.
	  * Responsibility Role
	  */
	public void setAD_Role_ID (int AD_Role_ID);

	/** Get Role.
	  * Responsibility Role
	  */
	public int getAD_Role_ID();

	public org.compiere.model.I_AD_Role getAD_Role() throws RuntimeException;

    /** Column name AD_User_ID */
    public static final String COLUMNNAME_AD_User_ID = "AD_User_ID";

	/** Set User/Contact.
	  * User within the system - Internal or Business Partner Contact
	  */
	public void setAD_User_ID (int AD_User_ID);

	/** Get User/Contact.
	  * User within the system - Internal or Business Partner Contact
	  */
	public int getAD_User_ID();

	public org.compiere.model.I_AD_User getAD_User() throws RuntimeException;

    /** Column name Alias */
    public static final String COLUMNNAME_Alias = "Alias";

	/** Set Alias.
	  * Defines an alternate method of indicating an account combination.
	  */
	public void setAlias (String Alias);

	/** Get Alias.
	  * Defines an alternate method of indicating an account combination.
	  */
	public String getAlias();

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

    /** Column name IsValid */
    public static final String COLUMNNAME_IsValid = "IsValid";

	/** Set Valid.
	  * Element is valid
	  */
	public void setIsValid (boolean IsValid);

	/** Get Valid.
	  * Element is valid
	  */
	public boolean isValid();

    /** Column name LBR_DigitalCertificate_ID */
    public static final String COLUMNNAME_LBR_DigitalCertificate_ID = "LBR_DigitalCertificate_ID";

	/** Set Digital Certificate	  */
	public void setLBR_DigitalCertificate_ID (int LBR_DigitalCertificate_ID);

	/** Get Digital Certificate	  */
	public int getLBR_DigitalCertificate_ID();

    /** Column name LBR_DigitalCertificate_UU */
    public static final String COLUMNNAME_LBR_DigitalCertificate_UU = "LBR_DigitalCertificate_UU";

	/** Set LBR_DigitalCertificate_UU	  */
	public void setLBR_DigitalCertificate_UU (String LBR_DigitalCertificate_UU);

	/** Get LBR_DigitalCertificate_UU	  */
	public String getLBR_DigitalCertificate_UU();

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

    /** Column name Password */
    public static final String COLUMNNAME_Password = "Password";

	/** Set Password.
	  * Password of any length (case sensitive)
	  */
	public void setPassword (String Password);

	/** Get Password.
	  * Password of any length (case sensitive)
	  */
	public String getPassword();

    /** Column name Processing */
    public static final String COLUMNNAME_Processing = "Processing";

	/** Set Process Now	  */
	public void setProcessing (boolean Processing);

	/** Get Process Now	  */
	public boolean isProcessing();

    /** Column name URL */
    public static final String COLUMNNAME_URL = "URL";

	/** Set URL.
	  * Full URL address - e.g. http://www.idempiere.org
	  */
	public void setURL (String URL);

	/** Get URL.
	  * Full URL address - e.g. http://www.idempiere.org
	  */
	public String getURL();

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

    /** Column name ValidTo */
    public static final String COLUMNNAME_ValidTo = "ValidTo";

	/** Set Valid to.
	  * Valid to including this date (last day)
	  */
	public void setValidTo (Timestamp ValidTo);

	/** Get Valid to.
	  * Valid to including this date (last day)
	  */
	public Timestamp getValidTo();

    /** Column name lbr_CNPJ */
    public static final String COLUMNNAME_lbr_CNPJ = "lbr_CNPJ";

	/** Set CNPJ.
	  * Used to identify Legal Entities in Brazil
	  */
	public void setlbr_CNPJ (String lbr_CNPJ);

	/** Get CNPJ.
	  * Used to identify Legal Entities in Brazil
	  */
	public String getlbr_CNPJ();

    /** Column name lbr_CertType */
    public static final String COLUMNNAME_lbr_CertType = "lbr_CertType";

	/** Set Certificate Type.
	  * Define the type of Digital Certificate
	  */
	public void setlbr_CertType (String lbr_CertType);

	/** Get Certificate Type.
	  * Define the type of Digital Certificate
	  */
	public String getlbr_CertType();
}
