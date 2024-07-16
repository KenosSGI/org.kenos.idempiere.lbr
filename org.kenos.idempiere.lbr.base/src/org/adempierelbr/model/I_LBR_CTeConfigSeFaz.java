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

/** Generated Interface for LBR_CTeConfigSeFaz
 *  @author iDempiere (generated) 
 *  @version Release 6.2
 */
@SuppressWarnings("all")
public interface I_LBR_CTeConfigSeFaz 
{

    /** TableName=LBR_CTeConfigSeFaz */
    public static final String Table_Name = "LBR_CTeConfigSeFaz";

    /** AD_Table_ID=1120769 */
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

    /** Column name LBR_CTeConfigSeFaz_ID */
    public static final String COLUMNNAME_LBR_CTeConfigSeFaz_ID = "LBR_CTeConfigSeFaz_ID";

	/** Set LBR_CTeConfigSeFaz	  */
	public void setLBR_CTeConfigSeFaz_ID (int LBR_CTeConfigSeFaz_ID);

	/** Get LBR_CTeConfigSeFaz	  */
	public int getLBR_CTeConfigSeFaz_ID();

    /** Column name LBR_CTeConfigSeFaz_UU */
    public static final String COLUMNNAME_LBR_CTeConfigSeFaz_UU = "LBR_CTeConfigSeFaz_UU";

	/** Set LBR_CTeConfigSeFaz_UU	  */
	public void setLBR_CTeConfigSeFaz_UU (String LBR_CTeConfigSeFaz_UU);

	/** Get LBR_CTeConfigSeFaz_UU	  */
	public String getLBR_CTeConfigSeFaz_UU();

    /** Column name LBR_CTeConfig_ID */
    public static final String COLUMNNAME_LBR_CTeConfig_ID = "LBR_CTeConfig_ID";

	/** Set CTe Config	  */
	public void setLBR_CTeConfig_ID (int LBR_CTeConfig_ID);

	/** Get CTe Config	  */
	public int getLBR_CTeConfig_ID();

	public org.adempierelbr.model.I_LBR_CTeConfig getLBR_CTeConfig() throws RuntimeException;

    /** Column name LBR_SeFaz_ID */
    public static final String COLUMNNAME_LBR_SeFaz_ID = "LBR_SeFaz_ID";

	/** Set SeFaz	  */
	public void setLBR_SeFaz_ID (int LBR_SeFaz_ID);

	/** Get SeFaz	  */
	public int getLBR_SeFaz_ID();

	public org.adempierelbr.model.I_LBR_SeFaz getLBR_SeFaz() throws RuntimeException;

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
}
