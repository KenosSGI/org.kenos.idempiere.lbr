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

/** Generated Interface for LBR_CTeEvent
 *  @author iDempiere (generated) 
 *  @version Release 6.2
 */
@SuppressWarnings("all")
public interface I_LBR_CTeEvent 
{

    /** TableName=LBR_CTeEvent */
    public static final String Table_Name = "LBR_CTeEvent";

    /** AD_Table_ID=1120775 */
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

    /** Column name DateDoc */
    public static final String COLUMNNAME_DateDoc = "DateDoc";

	/** Set Document Date.
	  * Date of the Document
	  */
	public void setDateDoc (Timestamp DateDoc);

	/** Get Document Date.
	  * Date of the Document
	  */
	public Timestamp getDateDoc();

    /** Column name DateTrx */
    public static final String COLUMNNAME_DateTrx = "DateTrx";

	/** Set Transaction Date.
	  * Transaction Date
	  */
	public void setDateTrx (Timestamp DateTrx);

	/** Get Transaction Date.
	  * Transaction Date
	  */
	public Timestamp getDateTrx();

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

    /** Column name DocAction */
    public static final String COLUMNNAME_DocAction = "DocAction";

	/** Set Document Action.
	  * The targeted status of the document
	  */
	public void setDocAction (String DocAction);

	/** Get Document Action.
	  * The targeted status of the document
	  */
	public String getDocAction();

    /** Column name DocStatus */
    public static final String COLUMNNAME_DocStatus = "DocStatus";

	/** Set Document Status.
	  * The current status of the document
	  */
	public void setDocStatus (String DocStatus);

	/** Get Document Status.
	  * The current status of the document
	  */
	public String getDocStatus();

    /** Column name I_IsImported */
    public static final String COLUMNNAME_I_IsImported = "I_IsImported";

	/** Set Imported.
	  * Has this import been processed
	  */
	public void setI_IsImported (boolean I_IsImported);

	/** Get Imported.
	  * Has this import been processed
	  */
	public boolean isI_IsImported();

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

    /** Column name LBR_CTeEvent_ID */
    public static final String COLUMNNAME_LBR_CTeEvent_ID = "LBR_CTeEvent_ID";

	/** Set CT-e Event	  */
	public void setLBR_CTeEvent_ID (int LBR_CTeEvent_ID);

	/** Get CT-e Event	  */
	public int getLBR_CTeEvent_ID();

    /** Column name LBR_CTeEvent_UU */
    public static final String COLUMNNAME_LBR_CTeEvent_UU = "LBR_CTeEvent_UU";

	/** Set LBR_CTeEvent_UU	  */
	public void setLBR_CTeEvent_UU (String LBR_CTeEvent_UU);

	/** Get LBR_CTeEvent_UU	  */
	public String getLBR_CTeEvent_UU();

    /** Column name LBR_CTeStatus */
    public static final String COLUMNNAME_LBR_CTeStatus = "LBR_CTeStatus";

	/** Set CTe Status	  */
	public void setLBR_CTeStatus (String LBR_CTeStatus);

	/** Get CTe Status	  */
	public String getLBR_CTeStatus();

    /** Column name LBR_CTe_ID */
    public static final String COLUMNNAME_LBR_CTe_ID = "LBR_CTe_ID";

	/** Set CT-e	  */
	public void setLBR_CTe_ID (int LBR_CTe_ID);

	/** Get CT-e	  */
	public int getLBR_CTe_ID();

	public org.adempierelbr.model.I_LBR_CTe getLBR_CTe() throws RuntimeException;

    /** Column name LBR_ChCTe */
    public static final String COLUMNNAME_LBR_ChCTe = "LBR_ChCTe";

	/** Set CT-e Key	  */
	public void setLBR_ChCTe (String LBR_ChCTe);

	/** Get CT-e Key	  */
	public String getLBR_ChCTe();

    /** Column name LBR_EventType */
    public static final String COLUMNNAME_LBR_EventType = "LBR_EventType";

	/** Set Event Type	  */
	public void setLBR_EventType (String LBR_EventType);

	/** Get Event Type	  */
	public String getLBR_EventType();

    /** Column name LBR_NSU */
    public static final String COLUMNNAME_LBR_NSU = "LBR_NSU";

	/** Set NSU.
	  * Unic Sequencial Number used on Manifest of Fiscal Documento
	  */
	public void setLBR_NSU (String LBR_NSU);

	/** Get NSU.
	  * Unic Sequencial Number used on Manifest of Fiscal Documento
	  */
	public String getLBR_NSU();

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

    /** Column name lbr_NFeEnv */
    public static final String COLUMNNAME_lbr_NFeEnv = "lbr_NFeEnv";

	/** Set NFe Environment	  */
	public void setlbr_NFeEnv (String lbr_NFeEnv);

	/** Get NFe Environment	  */
	public String getlbr_NFeEnv();

    /** Column name lbr_NFeProt */
    public static final String COLUMNNAME_lbr_NFeProt = "lbr_NFeProt";

	/** Set NFe Protocol	  */
	public void setlbr_NFeProt (String lbr_NFeProt);

	/** Get NFe Protocol	  */
	public String getlbr_NFeProt();
}
