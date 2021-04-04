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

/** Generated Interface for LBR_NFConfig
 *  @author iDempiere (generated) 
 *  @version Release 6.2
 */
@SuppressWarnings("all")
public interface I_LBR_NFConfig 
{

    /** TableName=LBR_NFConfig */
    public static final String Table_Name = "LBR_NFConfig";

    /** AD_Table_ID=1120547 */
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

    /** Column name Classname */
    public static final String COLUMNNAME_Classname = "Classname";

	/** Set Classname.
	  * Java Classname
	  */
	public void setClassname (String Classname);

	/** Get Classname.
	  * Java Classname
	  */
	public String getClassname();

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

    /** Column name LBR_CSRTCode */
    public static final String COLUMNNAME_LBR_CSRTCode = "LBR_CSRTCode";

	/** Set CSRT Code.
	  * CSRT Code used to generate Hash CSRT
	  */
	public void setLBR_CSRTCode (String LBR_CSRTCode);

	/** Get CSRT Code.
	  * CSRT Code used to generate Hash CSRT
	  */
	public String getLBR_CSRTCode();

    /** Column name LBR_CSRTID */
    public static final String COLUMNNAME_LBR_CSRTID = "LBR_CSRTID";

	/** Set CSRT ID.
	  * CSRT ID corresponding to the CSRT Code
	  */
	public void setLBR_CSRTID (int LBR_CSRTID);

	/** Get CSRT ID.
	  * CSRT ID corresponding to the CSRT Code
	  */
	public int getLBR_CSRTID();

    /** Column name LBR_ConfigSystemResp */
    public static final String COLUMNNAME_LBR_ConfigSystemResp = "LBR_ConfigSystemResp";

	/** Set System Responsible	  */
	public void setLBR_ConfigSystemResp (String LBR_ConfigSystemResp);

	/** Get System Responsible	  */
	public String getLBR_ConfigSystemResp();

    /** Column name LBR_IBPTConfiguration */
    public static final String COLUMNNAME_LBR_IBPTConfiguration = "LBR_IBPTConfiguration";

	/** Set IBPT Configuration	  */
	public void setLBR_IBPTConfiguration (String LBR_IBPTConfiguration);

	/** Get IBPT Configuration	  */
	public String getLBR_IBPTConfiguration();

    /** Column name LBR_IBPT_API_Key */
    public static final String COLUMNNAME_LBR_IBPT_API_Key = "LBR_IBPT_API_Key";

	/** Set IBPT API Key.
	  * Key to Conect to IBPT API
	  */
	public void setLBR_IBPT_API_Key (String LBR_IBPT_API_Key);

	/** Get IBPT API Key.
	  * Key to Conect to IBPT API
	  */
	public String getLBR_IBPT_API_Key();

    /** Column name LBR_ISSQNAgreement */
    public static final String COLUMNNAME_LBR_ISSQNAgreement = "LBR_ISSQNAgreement";

	/** Set ISSQN Agreement.
	  * Indicates if the city has ISSQN agreement to issue NF-e combined
	  */
	public void setLBR_ISSQNAgreement (boolean LBR_ISSQNAgreement);

	/** Get ISSQN Agreement.
	  * Indicates if the city has ISSQN agreement to issue NF-e combined
	  */
	public boolean isLBR_ISSQNAgreement();

    /** Column name LBR_IndPres */
    public static final String COLUMNNAME_LBR_IndPres = "LBR_IndPres";

	/** Set Indicação de Atendimento Presencial.
	  * Indicador de presença do comprador no estabelecimento comercial no momento da operação
	  */
	public void setLBR_IndPres (String LBR_IndPres);

	/** Get Indicação de Atendimento Presencial.
	  * Indicador de presença do comprador no estabelecimento comercial no momento da operação
	  */
	public String getLBR_IndPres();

    /** Column name LBR_NFConfig_ID */
    public static final String COLUMNNAME_LBR_NFConfig_ID = "LBR_NFConfig_ID";

	/** Set NF Configuration	  */
	public void setLBR_NFConfig_ID (int LBR_NFConfig_ID);

	/** Get NF Configuration	  */
	public int getLBR_NFConfig_ID();

    /** Column name LBR_NFConfig_UU */
    public static final String COLUMNNAME_LBR_NFConfig_UU = "LBR_NFConfig_UU";

	/** Set LBR_NFConfig_UU	  */
	public void setLBR_NFConfig_UU (String LBR_NFConfig_UU);

	/** Get LBR_NFConfig_UU	  */
	public String getLBR_NFConfig_UU();

    /** Column name LBR_NFeLotMethod */
    public static final String COLUMNNAME_LBR_NFeLotMethod = "LBR_NFeLotMethod";

	/** Set Lot Method.
	  * Method of transmission of NFe Lot
	  */
	public void setLBR_NFeLotMethod (String LBR_NFeLotMethod);

	/** Get Lot Method.
	  * Method of transmission of NFe Lot
	  */
	public String getLBR_NFeLotMethod();

    /** Column name LBR_ReverseInOut */
    public static final String COLUMNNAME_LBR_ReverseInOut = "LBR_ReverseInOut";

	/** Set Reverse InOut.
	  * Allow to Reverse InOut related with the NF
	  */
	public void setLBR_ReverseInOut (boolean LBR_ReverseInOut);

	/** Get Reverse InOut.
	  * Allow to Reverse InOut related with the NF
	  */
	public boolean isLBR_ReverseInOut();

    /** Column name LBR_ReverseInvoice */
    public static final String COLUMNNAME_LBR_ReverseInvoice = "LBR_ReverseInvoice";

	/** Set Reverse Invoice.
	  * Allow to Reverse Invoice related with the NF
	  */
	public void setLBR_ReverseInvoice (boolean LBR_ReverseInvoice);

	/** Get Reverse Invoice.
	  * Allow to Reverse Invoice related with the NF
	  */
	public boolean isLBR_ReverseInvoice();

    /** Column name LBR_TPEmis */
    public static final String COLUMNNAME_LBR_TPEmis = "LBR_TPEmis";

	/** Set Tipo de Emissão.
	  * Indicar o Tipo de Emissão da NF-e.
	  */
	public void setLBR_TPEmis (String LBR_TPEmis);

	/** Get Tipo de Emissão.
	  * Indicar o Tipo de Emissão da NF-e.
	  */
	public String getLBR_TPEmis();

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

    /** Column name VersionNo */
    public static final String COLUMNNAME_VersionNo = "VersionNo";

	/** Set Version No.
	  * Version Number
	  */
	public void setVersionNo (String VersionNo);

	/** Get Version No.
	  * Version Number
	  */
	public String getVersionNo();

    /** Column name lbr_DANFEFormat */
    public static final String COLUMNNAME_lbr_DANFEFormat = "lbr_DANFEFormat";

	/** Set DANFE Format	  */
	public void setlbr_DANFEFormat (String lbr_DANFEFormat);

	/** Get DANFE Format	  */
	public String getlbr_DANFEFormat();

    /** Column name lbr_DateScan */
    public static final String COLUMNNAME_lbr_DateScan = "lbr_DateScan";

	/** Set Data contingência	  */
	public void setlbr_DateScan (Timestamp lbr_DateScan);

	/** Get Data contingência	  */
	public Timestamp getlbr_DateScan();

    /** Column name lbr_MotivoScan */
    public static final String COLUMNNAME_lbr_MotivoScan = "lbr_MotivoScan";

	/** Set Motivo contingência	  */
	public void setlbr_MotivoScan (String lbr_MotivoScan);

	/** Get Motivo contingência	  */
	public String getlbr_MotivoScan();

    /** Column name lbr_NFModel */
    public static final String COLUMNNAME_lbr_NFModel = "lbr_NFModel";

	/** Set NF Model.
	  * Identifies the model of Nota Fiscal
	  */
	public void setlbr_NFModel (String lbr_NFModel);

	/** Get NF Model.
	  * Identifies the model of Nota Fiscal
	  */
	public String getlbr_NFModel();

    /** Column name lbr_NFeEnv */
    public static final String COLUMNNAME_lbr_NFeEnv = "lbr_NFeEnv";

	/** Set NFe Environment	  */
	public void setlbr_NFeEnv (String lbr_NFeEnv);

	/** Get NFe Environment	  */
	public String getlbr_NFeEnv();

    /** Column name lbr_PaymentRule */
    public static final String COLUMNNAME_lbr_PaymentRule = "lbr_PaymentRule";

	/** Set Payment Rule.
	  * How you pay the invoice
	  */
	public void setlbr_PaymentRule (String lbr_PaymentRule);

	/** Get Payment Rule.
	  * How you pay the invoice
	  */
	public String getlbr_PaymentRule();
}
