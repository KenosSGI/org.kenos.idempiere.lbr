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

/** Generated Interface for LBR_NFeLotLine
 *  @author iDempiere (generated) 
 *  @version Release 6.2
 */
@SuppressWarnings("all")
public interface I_LBR_NFeLotLine 
{

    /** TableName=LBR_NFeLotLine */
    public static final String Table_Name = "LBR_NFeLotLine";

    /** AD_Table_ID=1120758 */
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

    /** Column name LBR_NFeLotLine_ID */
    public static final String COLUMNNAME_LBR_NFeLotLine_ID = "LBR_NFeLotLine_ID";

	/** Set NFe Lot Line	  */
	public void setLBR_NFeLotLine_ID (int LBR_NFeLotLine_ID);

	/** Get NFe Lot Line	  */
	public int getLBR_NFeLotLine_ID();

    /** Column name LBR_NFeLotLine_UU */
    public static final String COLUMNNAME_LBR_NFeLotLine_UU = "LBR_NFeLotLine_UU";

	/** Set LBR_NFeLotLine_UU	  */
	public void setLBR_NFeLotLine_UU (String LBR_NFeLotLine_UU);

	/** Get LBR_NFeLotLine_UU	  */
	public String getLBR_NFeLotLine_UU();

    /** Column name LBR_NFeLot_ID */
    public static final String COLUMNNAME_LBR_NFeLot_ID = "LBR_NFeLot_ID";

	/** Set NFe Lot	  */
	public void setLBR_NFeLot_ID (int LBR_NFeLot_ID);

	/** Get NFe Lot	  */
	public int getLBR_NFeLot_ID();

	public org.adempierelbr.model.I_LBR_NFeLot getLBR_NFeLot() throws RuntimeException;

    /** Column name LBR_NotaFiscal_ID */
    public static final String COLUMNNAME_LBR_NotaFiscal_ID = "LBR_NotaFiscal_ID";

	/** Set Nota Fiscal.
	  * Primary key table LBR_NotaFiscal
	  */
	public void setLBR_NotaFiscal_ID (int LBR_NotaFiscal_ID);

	/** Get Nota Fiscal.
	  * Primary key table LBR_NotaFiscal
	  */
	public int getLBR_NotaFiscal_ID();

	public org.adempierelbr.model.I_LBR_NotaFiscal getLBR_NotaFiscal() throws RuntimeException;

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
