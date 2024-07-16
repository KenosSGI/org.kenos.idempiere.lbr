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

/** Generated Interface for LBR_CTe
 *  @author iDempiere (generated) 
 *  @version Release 6.2
 */
@SuppressWarnings("all")
public interface I_LBR_CTe 
{

    /** TableName=LBR_CTe */
    public static final String Table_Name = "LBR_CTe";

    /** AD_Table_ID=1120770 */
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

    /** Column name C_Region_ID */
    public static final String COLUMNNAME_C_Region_ID = "C_Region_ID";

	/** Set Region.
	  * Identifies a geographical Region
	  */
	public void setC_Region_ID (int C_Region_ID);

	/** Get Region.
	  * Identifies a geographical Region
	  */
	public int getC_Region_ID();

	public org.compiere.model.I_C_Region getC_Region() throws RuntimeException;

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

    /** Column name DocumentNo */
    public static final String COLUMNNAME_DocumentNo = "DocumentNo";

	/** Set Document No.
	  * Document sequence number of the document
	  */
	public void setDocumentNo (String DocumentNo);

	/** Get Document No.
	  * Document sequence number of the document
	  */
	public String getDocumentNo();

    /** Column name GrandTotal */
    public static final String COLUMNNAME_GrandTotal = "GrandTotal";

	/** Set Grand Total.
	  * Total amount of document
	  */
	public void setGrandTotal (BigDecimal GrandTotal);

	/** Get Grand Total.
	  * Total amount of document
	  */
	public BigDecimal getGrandTotal();

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

    /** Column name LBR_CFOP_ID */
    public static final String COLUMNNAME_LBR_CFOP_ID = "LBR_CFOP_ID";

	/** Set CFOP.
	  * Primary key table LBR_CFOP
	  */
	public void setLBR_CFOP_ID (int LBR_CFOP_ID);

	/** Get CFOP.
	  * Primary key table LBR_CFOP
	  */
	public int getLBR_CFOP_ID();

	public org.adempierelbr.model.I_LBR_CFOP getLBR_CFOP() throws RuntimeException;

    /** Column name LBR_CTeConsignee */
    public static final String COLUMNNAME_LBR_CTeConsignee = "LBR_CTeConsignee";

	/** Set Consignee	  */
	public void setLBR_CTeConsignee (String LBR_CTeConsignee);

	/** Get Consignee	  */
	public String getLBR_CTeConsignee();

    /** Column name LBR_CTeConsignor */
    public static final String COLUMNNAME_LBR_CTeConsignor = "LBR_CTeConsignor";

	/** Set Consignor	  */
	public void setLBR_CTeConsignor (String LBR_CTeConsignor);

	/** Get Consignor	  */
	public String getLBR_CTeConsignor();

    /** Column name LBR_CTeServiceType */
    public static final String COLUMNNAME_LBR_CTeServiceType = "LBR_CTeServiceType";

	/** Set Service Type	  */
	public void setLBR_CTeServiceType (String LBR_CTeServiceType);

	/** Get Service Type	  */
	public String getLBR_CTeServiceType();

    /** Column name LBR_CTeType */
    public static final String COLUMNNAME_LBR_CTeType = "LBR_CTeType";

	/** Set CT-e Type	  */
	public void setLBR_CTeType (String LBR_CTeType);

	/** Get CT-e Type	  */
	public String getLBR_CTeType();

    /** Column name LBR_CTe_ID */
    public static final String COLUMNNAME_LBR_CTe_ID = "LBR_CTe_ID";

	/** Set CT-e	  */
	public void setLBR_CTe_ID (int LBR_CTe_ID);

	/** Get CT-e	  */
	public int getLBR_CTe_ID();

    /** Column name LBR_CTe_UU */
    public static final String COLUMNNAME_LBR_CTe_UU = "LBR_CTe_UU";

	/** Set LBR_CTe_UU	  */
	public void setLBR_CTe_UU (String LBR_CTe_UU);

	/** Get LBR_CTe_UU	  */
	public String getLBR_CTe_UU();

    /** Column name LBR_CUF */
    public static final String COLUMNNAME_LBR_CUF = "LBR_CUF";

	/** Set UF Code	  */
	public void setLBR_CUF (String LBR_CUF);

	/** Get UF Code	  */
	public String getLBR_CUF();

    /** Column name LBR_ChCTe */
    public static final String COLUMNNAME_LBR_ChCTe = "LBR_ChCTe";

	/** Set CT-e Key	  */
	public void setLBR_ChCTe (String LBR_ChCTe);

	/** Get CT-e Key	  */
	public String getLBR_ChCTe();

    /** Column name LBR_IndIEDest */
    public static final String COLUMNNAME_LBR_IndIEDest = "LBR_IndIEDest";

	/** Set Indicador da IE.
	  * Indicador da IE do Destinatário
	  */
	public void setLBR_IndIEDest (String LBR_IndIEDest);

	/** Get Indicador da IE.
	  * Indicador da IE do Destinatário
	  */
	public String getLBR_IndIEDest();

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

    /** Column name LBR_NatOp */
    public static final String COLUMNNAME_LBR_NatOp = "LBR_NatOp";

	/** Set Operation Type	  */
	public void setLBR_NatOp (String LBR_NatOp);

	/** Get Operation Type	  */
	public String getLBR_NatOp();

    /** Column name LBR_ShipmentType */
    public static final String COLUMNNAME_LBR_ShipmentType = "LBR_ShipmentType";

	/** Set Shipment Type	  */
	public void setLBR_ShipmentType (String LBR_ShipmentType);

	/** Get Shipment Type	  */
	public String getLBR_ShipmentType();

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

    /** Column name ProductName */
    public static final String COLUMNNAME_ProductName = "ProductName";

	/** Set Product Name.
	  * Name of the Product
	  */
	public void setProductName (String ProductName);

	/** Get Product Name.
	  * Name of the Product
	  */
	public String getProductName();

    /** Column name To_Region_ID */
    public static final String COLUMNNAME_To_Region_ID = "To_Region_ID";

	/** Set To.
	  * Receiving Region
	  */
	public void setTo_Region_ID (int To_Region_ID);

	/** Get To.
	  * Receiving Region
	  */
	public int getTo_Region_ID();

	public org.compiere.model.I_C_Region getTo_Region() throws RuntimeException;

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

    /** Column name lbr_CPF */
    public static final String COLUMNNAME_lbr_CPF = "lbr_CPF";

	/** Set CPF.
	  * Used to identify individuals in Brazil
	  */
	public void setlbr_CPF (String lbr_CPF);

	/** Get CPF.
	  * Used to identify individuals in Brazil
	  */
	public String getlbr_CPF();

    /** Column name lbr_DANFEFormat */
    public static final String COLUMNNAME_lbr_DANFEFormat = "lbr_DANFEFormat";

	/** Set DANFE Format	  */
	public void setlbr_DANFEFormat (String lbr_DANFEFormat);

	/** Get DANFE Format	  */
	public String getlbr_DANFEFormat();

    /** Column name lbr_IE */
    public static final String COLUMNNAME_lbr_IE = "lbr_IE";

	/** Set IE.
	  * Used to Identify the IE (State Tax ID)
	  */
	public void setlbr_IE (String lbr_IE);

	/** Get IE.
	  * Used to Identify the IE (State Tax ID)
	  */
	public String getlbr_IE();

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

    /** Column name lbr_NFSerie */
    public static final String COLUMNNAME_lbr_NFSerie = "lbr_NFSerie";

	/** Set NF Serie	  */
	public void setlbr_NFSerie (String lbr_NFSerie);

	/** Get NF Serie	  */
	public String getlbr_NFSerie();

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
