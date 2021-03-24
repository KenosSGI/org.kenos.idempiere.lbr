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

/** Generated Interface for LBR_EFDContrib
 *  @author iDempiere (generated) 
 *  @version Release 6.2
 */
@SuppressWarnings("all")
public interface I_LBR_EFDContrib 
{

    /** TableName=LBR_EFDContrib */
    public static final String Table_Name = "LBR_EFDContrib";

    /** AD_Table_ID=1120718 */
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

    /** Column name C_Period_ID */
    public static final String COLUMNNAME_C_Period_ID = "C_Period_ID";

	/** Set Period.
	  * Period of the Calendar
	  */
	public void setC_Period_ID (int C_Period_ID);

	/** Get Period.
	  * Period of the Calendar
	  */
	public int getC_Period_ID();

	public org.compiere.model.I_C_Period getC_Period() throws RuntimeException;

    /** Column name C_Year_ID */
    public static final String COLUMNNAME_C_Year_ID = "C_Year_ID";

	/** Set Year.
	  * Calendar Year
	  */
	public void setC_Year_ID (int C_Year_ID);

	/** Get Year.
	  * Calendar Year
	  */
	public int getC_Year_ID();

	public org.compiere.model.I_C_Year getC_Year() throws RuntimeException;

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

    /** Column name LBR_BP_Accountant_ID */
    public static final String COLUMNNAME_LBR_BP_Accountant_ID = "LBR_BP_Accountant_ID";

	/** Set Accountant	  */
	public void setLBR_BP_Accountant_ID (int LBR_BP_Accountant_ID);

	/** Get Accountant	  */
	public int getLBR_BP_Accountant_ID();

	public org.compiere.model.I_C_BPartner getLBR_BP_Accountant() throws RuntimeException;

    /** Column name LBR_COD_FIN */
    public static final String COLUMNNAME_LBR_COD_FIN = "LBR_COD_FIN";

	/** Set Finalidade do Arquivo.
	  * Finalidade do Arquivo SPED
	  */
	public void setLBR_COD_FIN (String LBR_COD_FIN);

	/** Get Finalidade do Arquivo.
	  * Finalidade do Arquivo SPED
	  */
	public String getLBR_COD_FIN();

    /** Column name LBR_COD_VER */
    public static final String COLUMNNAME_LBR_COD_VER = "LBR_COD_VER";

	/** Set Versão do arquivo.
	  * Código da versão do leiaute do Arquivo SPED
	  */
	public void setLBR_COD_VER (String LBR_COD_VER);

	/** Get Versão do arquivo.
	  * Código da versão do leiaute do Arquivo SPED
	  */
	public String getLBR_COD_VER();

    /** Column name LBR_EFDContrib_ID */
    public static final String COLUMNNAME_LBR_EFDContrib_ID = "LBR_EFDContrib_ID";

	/** Set EFD Contributions	  */
	public void setLBR_EFDContrib_ID (int LBR_EFDContrib_ID);

	/** Get EFD Contributions	  */
	public int getLBR_EFDContrib_ID();

    /** Column name LBR_EFDContrib_UU */
    public static final String COLUMNNAME_LBR_EFDContrib_UU = "LBR_EFDContrib_UU";

	/** Set LBR_EFDContrib_UU	  */
	public void setLBR_EFDContrib_UU (String LBR_EFDContrib_UU);

	/** Get LBR_EFDContrib_UU	  */
	public String getLBR_EFDContrib_UU();

    /** Column name LBR_IndPerfil */
    public static final String COLUMNNAME_LBR_IndPerfil = "LBR_IndPerfil";

	/** Set Perfil de Apresentação.
	  * Perfil de Apresentação do arquivo fiscal
	  */
	public void setLBR_IndPerfil (String LBR_IndPerfil);

	/** Get Perfil de Apresentação.
	  * Perfil de Apresentação do arquivo fiscal
	  */
	public String getLBR_IndPerfil();

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

    /** Column name Processing */
    public static final String COLUMNNAME_Processing = "Processing";

	/** Set Process Now	  */
	public void setProcessing (boolean Processing);

	/** Get Process Now	  */
	public boolean isProcessing();

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

    /** Column name lbr_IndAtividade */
    public static final String COLUMNNAME_lbr_IndAtividade = "lbr_IndAtividade";

	/** Set Tipo de atividade.
	  * Tipo de atividade
	  */
	public void setlbr_IndAtividade (String lbr_IndAtividade);

	/** Get Tipo de atividade.
	  * Tipo de atividade
	  */
	public String getlbr_IndAtividade();
}
