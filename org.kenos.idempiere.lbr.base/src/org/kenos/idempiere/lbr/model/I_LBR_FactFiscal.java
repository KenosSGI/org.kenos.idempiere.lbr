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
package org.kenos.idempiere.lbr.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for LBR_FactFiscal
 *  @author iDempiere (generated) 
 *  @version Release 4.1
 */
@SuppressWarnings("all")
public interface I_LBR_FactFiscal 
{

    /** TableName=LBR_FactFiscal */
    public static final String Table_Name = "LBR_FactFiscal";

    /** AD_Table_ID=1120466 */
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

    /** Column name BPName */
    public static final String COLUMNNAME_BPName = "BPName";

	/** Set BP Name	  */
	public void setBPName (String BPName);

	/** Get BP Name	  */
	public String getBPName();

    /** Column name C_BPartner_ID */
    public static final String COLUMNNAME_C_BPartner_ID = "C_BPartner_ID";

	/** Set Business Partner .
	  * Identifies a Business Partner
	  */
	public void setC_BPartner_ID (int C_BPartner_ID);

	/** Get Business Partner .
	  * Identifies a Business Partner
	  */
	public int getC_BPartner_ID();

	public org.compiere.model.I_C_BPartner getC_BPartner() throws RuntimeException;

    /** Column name C_BPartner_Location_ID */
    public static final String COLUMNNAME_C_BPartner_Location_ID = "C_BPartner_Location_ID";

	/** Set Partner Location.
	  * Identifies the (ship to) address for this Business Partner
	  */
	public void setC_BPartner_Location_ID (int C_BPartner_Location_ID);

	/** Get Partner Location.
	  * Identifies the (ship to) address for this Business Partner
	  */
	public int getC_BPartner_Location_ID();

	public org.compiere.model.I_C_BPartner_Location getC_BPartner_Location() throws RuntimeException;

    /** Column name C_Invoice_ID */
    public static final String COLUMNNAME_C_Invoice_ID = "C_Invoice_ID";

	/** Set Invoice.
	  * Invoice Identifier
	  */
	public void setC_Invoice_ID (int C_Invoice_ID);

	/** Get Invoice.
	  * Invoice Identifier
	  */
	public int getC_Invoice_ID();

	public org.compiere.model.I_C_Invoice getC_Invoice() throws RuntimeException;

    /** Column name C_Order_ID */
    public static final String COLUMNNAME_C_Order_ID = "C_Order_ID";

	/** Set Order.
	  * Order
	  */
	public void setC_Order_ID (int C_Order_ID);

	/** Get Order.
	  * Order
	  */
	public int getC_Order_ID();

	public org.compiere.model.I_C_Order getC_Order() throws RuntimeException;

    /** Column name C_UOM_ID */
    public static final String COLUMNNAME_C_UOM_ID = "C_UOM_ID";

	/** Set UOM.
	  * Unit of Measure
	  */
	public void setC_UOM_ID (int C_UOM_ID);

	/** Get UOM.
	  * Unit of Measure
	  */
	public int getC_UOM_ID();

	public org.compiere.model.I_C_UOM getC_UOM() throws RuntimeException;

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

    /** Column name DiscountAmt */
    public static final String COLUMNNAME_DiscountAmt = "DiscountAmt";

	/** Set Discount Amount.
	  * Calculated amount of discount
	  */
	public void setDiscountAmt (BigDecimal DiscountAmt);

	/** Get Discount Amount.
	  * Calculated amount of discount
	  */
	public BigDecimal getDiscountAmt();

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

    /** Column name EMail */
    public static final String COLUMNNAME_EMail = "EMail";

	/** Set EMail Address.
	  * Electronic Mail Address
	  */
	public void setEMail (String EMail);

	/** Get EMail Address.
	  * Electronic Mail Address
	  */
	public String getEMail();

    /** Column name FreightAmt */
    public static final String COLUMNNAME_FreightAmt = "FreightAmt";

	/** Set Freight Amount.
	  * Freight Amount 
	  */
	public void setFreightAmt (BigDecimal FreightAmt);

	/** Get Freight Amount.
	  * Freight Amount 
	  */
	public BigDecimal getFreightAmt();

    /** Column name FreightCostRule */
    public static final String COLUMNNAME_FreightCostRule = "FreightCostRule";

	/** Set Freight Cost Rule.
	  * Method for charging Freight
	  */
	public void setFreightCostRule (String FreightCostRule);

	/** Get Freight Cost Rule.
	  * Method for charging Freight
	  */
	public String getFreightCostRule();

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

    /** Column name IsCancelled */
    public static final String COLUMNNAME_IsCancelled = "IsCancelled";

	/** Set Cancelled.
	  * The transaction was cancelled
	  */
	public void setIsCancelled (String IsCancelled);

	/** Get Cancelled.
	  * The transaction was cancelled
	  */
	public String getIsCancelled();

    /** Column name IsSOTrx */
    public static final String COLUMNNAME_IsSOTrx = "IsSOTrx";

	/** Set Sales Transaction.
	  * This is a Sales Transaction
	  */
	public void setIsSOTrx (String IsSOTrx);

	/** Get Sales Transaction.
	  * This is a Sales Transaction
	  */
	public String getIsSOTrx();

    /** Column name LBR_BPAddress1 */
    public static final String COLUMNNAME_LBR_BPAddress1 = "LBR_BPAddress1";

	/** Set BP Address 1.
	  * BP Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPAddress1 (String LBR_BPAddress1);

	/** Get BP Address 1.
	  * BP Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPAddress1();

    /** Column name LBR_BPAddress2 */
    public static final String COLUMNNAME_LBR_BPAddress2 = "LBR_BPAddress2";

	/** Set BP Address 2.
	  * BP Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPAddress2 (String LBR_BPAddress2);

	/** Get BP Address 2.
	  * BP Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPAddress2();

    /** Column name LBR_BPAddress3 */
    public static final String COLUMNNAME_LBR_BPAddress3 = "LBR_BPAddress3";

	/** Set BP Address 3.
	  * BP Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPAddress3 (String LBR_BPAddress3);

	/** Get BP Address 3.
	  * BP Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPAddress3();

    /** Column name LBR_BPAddress4 */
    public static final String COLUMNNAME_LBR_BPAddress4 = "LBR_BPAddress4";

	/** Set BP Address 4.
	  * BP Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPAddress4 (String LBR_BPAddress4);

	/** Get BP Address 4.
	  * BP Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPAddress4();

    /** Column name LBR_BPCNPJ */
    public static final String COLUMNNAME_LBR_BPCNPJ = "LBR_BPCNPJ";

	/** Set BP CNPJ.
	  * BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPCNPJ (String LBR_BPCNPJ);

	/** Get BP CNPJ.
	  * BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPCNPJ();

    /** Column name LBR_BPCity */
    public static final String COLUMNNAME_LBR_BPCity = "LBR_BPCity";

	/** Set BP City.
	  * BP City - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPCity (String LBR_BPCity);

	/** Get BP City.
	  * BP City - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPCity();

    /** Column name LBR_BPIE */
    public static final String COLUMNNAME_LBR_BPIE = "LBR_BPIE";

	/** Set BP IE.
	  * BP IE - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPIE (String LBR_BPIE);

	/** Get BP IE.
	  * BP IE - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPIE();

    /** Column name LBR_BPPhone */
    public static final String COLUMNNAME_LBR_BPPhone = "LBR_BPPhone";

	/** Set BP Phone.
	  * BP Phone - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPPhone (String LBR_BPPhone);

	/** Get BP Phone.
	  * BP Phone - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPPhone();

    /** Column name LBR_BPPostal */
    public static final String COLUMNNAME_LBR_BPPostal = "LBR_BPPostal";

	/** Set BP Postal.
	  * BP Postal - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPPostal (String LBR_BPPostal);

	/** Get BP Postal.
	  * BP Postal - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPPostal();

    /** Column name LBR_BPRegion */
    public static final String COLUMNNAME_LBR_BPRegion = "LBR_BPRegion";

	/** Set BP Region.
	  * BP Region - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPRegion (String LBR_BPRegion);

	/** Get BP Region.
	  * BP Region - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPRegion();

    /** Column name LBR_BPSuframa */
    public static final String COLUMNNAME_LBR_BPSuframa = "LBR_BPSuframa";

	/** Set BP Suframa.
	  * Defines the BP Suframa
	  */
	public void setLBR_BPSuframa (String LBR_BPSuframa);

	/** Get BP Suframa.
	  * Defines the BP Suframa
	  */
	public String getLBR_BPSuframa();

    /** Column name LBR_BP_Accountant_ID */
    public static final String COLUMNNAME_LBR_BP_Accountant_ID = "LBR_BP_Accountant_ID";

	/** Set Accountant	  */
	public void setLBR_BP_Accountant_ID (int LBR_BP_Accountant_ID);

	/** Get Accountant	  */
	public int getLBR_BP_Accountant_ID();

	public org.compiere.model.I_C_BPartner getLBR_BP_Accountant() throws RuntimeException;

    /** Column name LBR_CFOPName */
    public static final String COLUMNNAME_LBR_CFOPName = "LBR_CFOPName";

	/** Set CFOP Name.
	  * Defines the CFOP Name
	  */
	public void setLBR_CFOPName (String LBR_CFOPName);

	/** Get CFOP Name.
	  * Defines the CFOP Name
	  */
	public String getLBR_CFOPName();

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

	public org.kenos.idempiere.lbr.model.I_LBR_CFOP getLBR_CFOP() throws RuntimeException;

    /** Column name LBR_CNAE */
    public static final String COLUMNNAME_LBR_CNAE = "LBR_CNAE";

	/** Set CNAE.
	  * Classificação Nacional de Atividades Econômicas
	  */
	public void setLBR_CNAE (String LBR_CNAE);

	/** Get CNAE.
	  * Classificação Nacional de Atividades Econômicas
	  */
	public String getLBR_CNAE();

    /** Column name LBR_CNPJ */
    public static final String COLUMNNAME_LBR_CNPJ = "LBR_CNPJ";

	/** Set CNPJ.
	  * Used to identify Legal Entities in Brazil
	  */
	public void setLBR_CNPJ (String LBR_CNPJ);

	/** Get CNPJ.
	  * Used to identify Legal Entities in Brazil
	  */
	public String getLBR_CNPJ();

    /** Column name LBR_DateInOut */
    public static final String COLUMNNAME_LBR_DateInOut = "LBR_DateInOut";

	/** Set Date InOut.
	  * Defines the InOut Date
	  */
	public void setLBR_DateInOut (Timestamp LBR_DateInOut);

	/** Get Date InOut.
	  * Defines the InOut Date
	  */
	public Timestamp getLBR_DateInOut();

    /** Column name LBR_FactFiscal_ID */
    public static final String COLUMNNAME_LBR_FactFiscal_ID = "LBR_FactFiscal_ID";

	/** Set Fact Nota Fiscal	  */
	public void setLBR_FactFiscal_ID (int LBR_FactFiscal_ID);

	/** Get Fact Nota Fiscal	  */
	public int getLBR_FactFiscal_ID();

    /** Column name LBR_Fantasia */
    public static final String COLUMNNAME_LBR_Fantasia = "LBR_Fantasia";

	/** Set Fantasia	  */
	public void setLBR_Fantasia (String LBR_Fantasia);

	/** Get Fantasia	  */
	public String getLBR_Fantasia();

    /** Column name LBR_IE */
    public static final String COLUMNNAME_LBR_IE = "LBR_IE";

	/** Set IE.
	  * Used to Identify the IE (State Tax ID)
	  */
	public void setLBR_IE (String LBR_IE);

	/** Get IE.
	  * Used to Identify the IE (State Tax ID)
	  */
	public String getLBR_IE();

    /** Column name LBR_IndAtividade */
    public static final String COLUMNNAME_LBR_IndAtividade = "LBR_IndAtividade";

	/** Set Tipo de atividade.
	  * Tipo de atividade
	  */
	public void setLBR_IndAtividade (String LBR_IndAtividade);

	/** Get Tipo de atividade.
	  * Tipo de atividade
	  */
	public String getLBR_IndAtividade();

    /** Column name LBR_InsuranceAmt */
    public static final String COLUMNNAME_LBR_InsuranceAmt = "LBR_InsuranceAmt";

	/** Set Insurance Amt.
	  * Defines the Insurance Amt
	  */
	public void setLBR_InsuranceAmt (BigDecimal LBR_InsuranceAmt);

	/** Get Insurance Amt.
	  * Defines the Insurance Amt
	  */
	public BigDecimal getLBR_InsuranceAmt();

    /** Column name LBR_IsOwnDocument */
    public static final String COLUMNNAME_LBR_IsOwnDocument = "LBR_IsOwnDocument";

	/** Set Is Own Document.
	  * Identifies this is an own document
	  */
	public void setLBR_IsOwnDocument (String LBR_IsOwnDocument);

	/** Get Is Own Document.
	  * Identifies this is an own document
	  */
	public String getLBR_IsOwnDocument();

    /** Column name LBR_IsService */
    public static final String COLUMNNAME_LBR_IsService = "LBR_IsService";

	/** Set Is Service.
	  * Defines if the lines is a Service
	  */
	public void setLBR_IsService (String LBR_IsService);

	/** Get Is Service.
	  * Defines if the lines is a Service
	  */
	public String getLBR_IsService();

    /** Column name LBR_ItemTypeBR */
    public static final String COLUMNNAME_LBR_ItemTypeBR = "LBR_ItemTypeBR";

	/** Set Item Type (SPED)	  */
	public void setLBR_ItemTypeBR (String LBR_ItemTypeBR);

	/** Get Item Type (SPED)	  */
	public String getLBR_ItemTypeBR();

    /** Column name LBR_NCMName */
    public static final String COLUMNNAME_LBR_NCMName = "LBR_NCMName";

	/** Set NCM Name.
	  * Defines the NCM Name
	  */
	public void setLBR_NCMName (String LBR_NCMName);

	/** Get NCM Name.
	  * Defines the NCM Name
	  */
	public String getLBR_NCMName();

    /** Column name LBR_NCM_ID */
    public static final String COLUMNNAME_LBR_NCM_ID = "LBR_NCM_ID";

	/** Set NCM.
	  * Primary key table LBR_NCM
	  */
	public void setLBR_NCM_ID (int LBR_NCM_ID);

	/** Get NCM.
	  * Primary key table LBR_NCM
	  */
	public int getLBR_NCM_ID();

	public org.kenos.idempiere.lbr.model.I_LBR_NCM getLBR_NCM() throws RuntimeException;

    /** Column name LBR_NFDI_ID */
    public static final String COLUMNNAME_LBR_NFDI_ID = "LBR_NFDI_ID";

	/** Set DI	  */
	public void setLBR_NFDI_ID (int LBR_NFDI_ID);

	/** Get DI	  */
	public int getLBR_NFDI_ID();

	public org.kenos.idempiere.lbr.model.I_LBR_NFDI getLBR_NFDI() throws RuntimeException;

    /** Column name LBR_NFModel */
    public static final String COLUMNNAME_LBR_NFModel = "LBR_NFModel";

	/** Set NF Model.
	  * Identifies the model of Nota Fiscal
	  */
	public void setLBR_NFModel (String LBR_NFModel);

	/** Get NF Model.
	  * Identifies the model of Nota Fiscal
	  */
	public String getLBR_NFModel();

    /** Column name LBR_NFSerie */
    public static final String COLUMNNAME_LBR_NFSerie = "LBR_NFSerie";

	/** Set NF Serie	  */
	public void setLBR_NFSerie (String LBR_NFSerie);

	/** Get NF Serie	  */
	public String getLBR_NFSerie();

    /** Column name LBR_NFeID */
    public static final String COLUMNNAME_LBR_NFeID = "LBR_NFeID";

	/** Set NFe ID.
	  * Identification of NFe
	  */
	public void setLBR_NFeID (String LBR_NFeID);

	/** Get NFe ID.
	  * Identification of NFe
	  */
	public String getLBR_NFeID();

    /** Column name LBR_NFeProt */
    public static final String COLUMNNAME_LBR_NFeProt = "LBR_NFeProt";

	/** Set NFe Protocol	  */
	public void setLBR_NFeProt (String LBR_NFeProt);

	/** Get NFe Protocol	  */
	public String getLBR_NFeProt();

    /** Column name LBR_NotaFiscalLine_ID */
    public static final String COLUMNNAME_LBR_NotaFiscalLine_ID = "LBR_NotaFiscalLine_ID";

	/** Set Nota Fiscal Line.
	  * Primary key table LBR_NotaFiscalLine
	  */
	public void setLBR_NotaFiscalLine_ID (int LBR_NotaFiscalLine_ID);

	/** Get Nota Fiscal Line.
	  * Primary key table LBR_NotaFiscalLine
	  */
	public int getLBR_NotaFiscalLine_ID();

	public org.kenos.idempiere.lbr.model.I_LBR_NotaFiscalLine getLBR_NotaFiscalLine() throws RuntimeException;

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

	public org.kenos.idempiere.lbr.model.I_LBR_NotaFiscal getLBR_NotaFiscal() throws RuntimeException;

    /** Column name LBR_OrgAddress1 */
    public static final String COLUMNNAME_LBR_OrgAddress1 = "LBR_OrgAddress1";

	/** Set Organization Address 1.
	  * The issuer organization address 1
	  */
	public void setLBR_OrgAddress1 (String LBR_OrgAddress1);

	/** Get Organization Address 1.
	  * The issuer organization address 1
	  */
	public String getLBR_OrgAddress1();

    /** Column name LBR_OrgAddress2 */
    public static final String COLUMNNAME_LBR_OrgAddress2 = "LBR_OrgAddress2";

	/** Set Organization Address 2.
	  * The issuer organization address 2
	  */
	public void setLBR_OrgAddress2 (String LBR_OrgAddress2);

	/** Get Organization Address 2.
	  * The issuer organization address 2
	  */
	public String getLBR_OrgAddress2();

    /** Column name LBR_OrgAddress3 */
    public static final String COLUMNNAME_LBR_OrgAddress3 = "LBR_OrgAddress3";

	/** Set Organization Address 3.
	  * The issuer organization address 3
	  */
	public void setLBR_OrgAddress3 (String LBR_OrgAddress3);

	/** Get Organization Address 3.
	  * The issuer organization address 3
	  */
	public String getLBR_OrgAddress3();

    /** Column name LBR_OrgAddress4 */
    public static final String COLUMNNAME_LBR_OrgAddress4 = "LBR_OrgAddress4";

	/** Set Organization Address 4.
	  * The issuer organization address 4
	  */
	public void setLBR_OrgAddress4 (String LBR_OrgAddress4);

	/** Get Organization Address 4.
	  * The issuer organization address 4
	  */
	public String getLBR_OrgAddress4();

    /** Column name LBR_OrgCCM */
    public static final String COLUMNNAME_LBR_OrgCCM = "LBR_OrgCCM";

	/** Set Organization CCM.
	  * The Organization CCM
	  */
	public void setLBR_OrgCCM (String LBR_OrgCCM);

	/** Get Organization CCM.
	  * The Organization CCM
	  */
	public String getLBR_OrgCCM();

    /** Column name LBR_OrgCity */
    public static final String COLUMNNAME_LBR_OrgCity = "LBR_OrgCity";

	/** Set Organization City.
	  * The City of the Organization
	  */
	public void setLBR_OrgCity (String LBR_OrgCity);

	/** Get Organization City.
	  * The City of the Organization
	  */
	public String getLBR_OrgCity();

    /** Column name LBR_OrgName */
    public static final String COLUMNNAME_LBR_OrgName = "LBR_OrgName";

	/** Set Organization Name.
	  * The Name of the Organization
	  */
	public void setLBR_OrgName (String LBR_OrgName);

	/** Get Organization Name.
	  * The Name of the Organization
	  */
	public String getLBR_OrgName();

    /** Column name LBR_OrgPhone */
    public static final String COLUMNNAME_LBR_OrgPhone = "LBR_OrgPhone";

	/** Set Organization Phone.
	  * The Organization Phone
	  */
	public void setLBR_OrgPhone (String LBR_OrgPhone);

	/** Get Organization Phone.
	  * The Organization Phone
	  */
	public String getLBR_OrgPhone();

    /** Column name LBR_OrgPostal */
    public static final String COLUMNNAME_LBR_OrgPostal = "LBR_OrgPostal";

	/** Set Organization Postal Code.
	  * The Postal Code of the Organization
	  */
	public void setLBR_OrgPostal (String LBR_OrgPostal);

	/** Get Organization Postal Code.
	  * The Postal Code of the Organization
	  */
	public String getLBR_OrgPostal();

    /** Column name LBR_OrgRegion */
    public static final String COLUMNNAME_LBR_OrgRegion = "LBR_OrgRegion";

	/** Set Organization Region.
	  * The Region of the Organization
	  */
	public void setLBR_OrgRegion (String LBR_OrgRegion);

	/** Get Organization Region.
	  * The Region of the Organization
	  */
	public String getLBR_OrgRegion();

    /** Column name LBR_Suframa */
    public static final String COLUMNNAME_LBR_Suframa = "LBR_Suframa";

	/** Set Suframa.
	  * Brazilian SUFRAMA Identification Number
	  */
	public void setLBR_Suframa (String LBR_Suframa);

	/** Get Suframa.
	  * Brazilian SUFRAMA Identification Number
	  */
	public String getLBR_Suframa();

    /** Column name LBR_TotalSISCOMEX */
    public static final String COLUMNNAME_LBR_TotalSISCOMEX = "LBR_TotalSISCOMEX";

	/** Set SISCOMEX Total.
	  * SISCOMEX Total for all the document
	  */
	public void setLBR_TotalSISCOMEX (BigDecimal LBR_TotalSISCOMEX);

	/** Get SISCOMEX Total.
	  * SISCOMEX Total for all the document
	  */
	public BigDecimal getLBR_TotalSISCOMEX();

    /** Column name LBR_UOMName */
    public static final String COLUMNNAME_LBR_UOMName = "LBR_UOMName";

	/** Set UOM Name.
	  * Defines the UOM Name
	  */
	public void setLBR_UOMName (String LBR_UOMName);

	/** Get UOM Name.
	  * Defines the UOM Name
	  */
	public String getLBR_UOMName();

    /** Column name LBR_orgcitycode */
    public static final String COLUMNNAME_LBR_orgcitycode = "LBR_orgcitycode";

	/** Set lbr_orgcitycode	  */
	public void setLBR_orgcitycode (String LBR_orgcitycode);

	/** Get lbr_orgcitycode	  */
	public String getLBR_orgcitycode();

    /** Column name LBR_uomdescription */
    public static final String COLUMNNAME_LBR_uomdescription = "LBR_uomdescription";

	/** Set lbr_uomdescription	  */
	public void setLBR_uomdescription (String LBR_uomdescription);

	/** Get lbr_uomdescription	  */
	public String getLBR_uomdescription();

    /** Column name Line */
    public static final String COLUMNNAME_Line = "Line";

	/** Set Line No.
	  * Unique line for this document
	  */
	public void setLine (BigDecimal Line);

	/** Get Line No.
	  * Unique line for this document
	  */
	public BigDecimal getLine();

    /** Column name LineNetAmt */
    public static final String COLUMNNAME_LineNetAmt = "LineNetAmt";

	/** Set Line Amount.
	  * Line Extended Amount (Quantity * Actual Price) without Freight and Charges
	  */
	public void setLineNetAmt (BigDecimal LineNetAmt);

	/** Get Line Amount.
	  * Line Extended Amount (Quantity * Actual Price) without Freight and Charges
	  */
	public BigDecimal getLineNetAmt();

    /** Column name LineTotalAmt */
    public static final String COLUMNNAME_LineTotalAmt = "LineTotalAmt";

	/** Set Line Total.
	  * Total line amount incl. Tax
	  */
	public void setLineTotalAmt (BigDecimal LineTotalAmt);

	/** Get Line Total.
	  * Total line amount incl. Tax
	  */
	public BigDecimal getLineTotalAmt();

    /** Column name M_Product_ID */
    public static final String COLUMNNAME_M_Product_ID = "M_Product_ID";

	/** Set Product.
	  * Product, Service, Item
	  */
	public void setM_Product_ID (int M_Product_ID);

	/** Get Product.
	  * Product, Service, Item
	  */
	public int getM_Product_ID();

	public org.compiere.model.I_M_Product getM_Product() throws RuntimeException;

    /** Column name Org_Location_ID */
    public static final String COLUMNNAME_Org_Location_ID = "Org_Location_ID";

	/** Set Org Address.
	  * Organization Location/Address
	  */
	public void setOrg_Location_ID (int Org_Location_ID);

	/** Get Org Address.
	  * Organization Location/Address
	  */
	public int getOrg_Location_ID();

	public org.compiere.model.I_C_Location getOrg_Location() throws RuntimeException;

    /** Column name Price */
    public static final String COLUMNNAME_Price = "Price";

	/** Set Price.
	  * Price
	  */
	public void setPrice (BigDecimal Price);

	/** Get Price.
	  * Price
	  */
	public BigDecimal getPrice();

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

    /** Column name ProductValue */
    public static final String COLUMNNAME_ProductValue = "ProductValue";

	/** Set Product Key.
	  * Key of the Product
	  */
	public void setProductValue (String ProductValue);

	/** Get Product Key.
	  * Key of the Product
	  */
	public String getProductValue();

    /** Column name Qty */
    public static final String COLUMNNAME_Qty = "Qty";

	/** Set Quantity.
	  * Quantity
	  */
	public void setQty (BigDecimal Qty);

	/** Get Quantity.
	  * Quantity
	  */
	public BigDecimal getQty();

    /** Column name TotalLines */
    public static final String COLUMNNAME_TotalLines = "TotalLines";

	/** Set Total Lines.
	  * Total of all document lines
	  */
	public void setTotalLines (BigDecimal TotalLines);

	/** Get Total Lines.
	  * Total of all document lines
	  */
	public BigDecimal getTotalLines();

    /** Column name UPC */
    public static final String COLUMNNAME_UPC = "UPC";

	/** Set UPC/EAN.
	  * Bar Code (Universal Product Code or its superset European Article Number)
	  */
	public void setUPC (String UPC);

	/** Get UPC/EAN.
	  * Bar Code (Universal Product Code or its superset European Article Number)
	  */
	public String getUPC();

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

    /** Column name bpcitycode */
    public static final String COLUMNNAME_bpcitycode = "bpcitycode";

	/** Set bpcitycode	  */
	public void setbpcitycode (String bpcitycode);

	/** Get bpcitycode	  */
	public String getbpcitycode();

    /** Column name bpcountrycode */
    public static final String COLUMNNAME_bpcountrycode = "bpcountrycode";

	/** Set bpcountrycode	  */
	public void setbpcountrycode (String bpcountrycode);

	/** Get bpcountrycode	  */
	public String getbpcountrycode();

    /** Column name cofins_nftaxamt */
    public static final String COLUMNNAME_cofins_nftaxamt = "cofins_nftaxamt";

	/** Set cofins_nftaxamt	  */
	public void setcofins_nftaxamt (BigDecimal cofins_nftaxamt);

	/** Get cofins_nftaxamt	  */
	public BigDecimal getcofins_nftaxamt();

    /** Column name cofins_taxamt */
    public static final String COLUMNNAME_cofins_taxamt = "cofins_taxamt";

	/** Set cofins_taxamt	  */
	public void setcofins_taxamt (BigDecimal cofins_taxamt);

	/** Get cofins_taxamt	  */
	public BigDecimal getcofins_taxamt();

    /** Column name cofins_taxbase */
    public static final String COLUMNNAME_cofins_taxbase = "cofins_taxbase";

	/** Set cofins_taxbase	  */
	public void setcofins_taxbase (BigDecimal cofins_taxbase);

	/** Get cofins_taxbase	  */
	public BigDecimal getcofins_taxbase();

    /** Column name cofins_taxbaseamt */
    public static final String COLUMNNAME_cofins_taxbaseamt = "cofins_taxbaseamt";

	/** Set cofins_taxbaseamt	  */
	public void setcofins_taxbaseamt (BigDecimal cofins_taxbaseamt);

	/** Get cofins_taxbaseamt	  */
	public BigDecimal getcofins_taxbaseamt();

    /** Column name cofins_taxrate */
    public static final String COLUMNNAME_cofins_taxrate = "cofins_taxrate";

	/** Set cofins_taxrate	  */
	public void setcofins_taxrate (BigDecimal cofins_taxrate);

	/** Get cofins_taxrate	  */
	public BigDecimal getcofins_taxrate();

    /** Column name cofins_taxstatus */
    public static final String COLUMNNAME_cofins_taxstatus = "cofins_taxstatus";

	/** Set cofins_taxstatus	  */
	public void setcofins_taxstatus (String cofins_taxstatus);

	/** Get cofins_taxstatus	  */
	public String getcofins_taxstatus();

    /** Column name docbasetypebr */
    public static final String COLUMNNAME_docbasetypebr = "docbasetypebr";

	/** Set docbasetypebr	  */
	public void setdocbasetypebr (String docbasetypebr);

	/** Get docbasetypebr	  */
	public String getdocbasetypebr();

    /** Column name icms_nftaxamt */
    public static final String COLUMNNAME_icms_nftaxamt = "icms_nftaxamt";

	/** Set icms_nftaxamt	  */
	public void seticms_nftaxamt (BigDecimal icms_nftaxamt);

	/** Get icms_nftaxamt	  */
	public BigDecimal geticms_nftaxamt();

    /** Column name icms_nftaxbaseamt */
    public static final String COLUMNNAME_icms_nftaxbaseamt = "icms_nftaxbaseamt";

	/** Set icms_nftaxbaseamt	  */
	public void seticms_nftaxbaseamt (BigDecimal icms_nftaxbaseamt);

	/** Get icms_nftaxbaseamt	  */
	public BigDecimal geticms_nftaxbaseamt();

    /** Column name icms_taxamt */
    public static final String COLUMNNAME_icms_taxamt = "icms_taxamt";

	/** Set icms_taxamt	  */
	public void seticms_taxamt (BigDecimal icms_taxamt);

	/** Get icms_taxamt	  */
	public BigDecimal geticms_taxamt();

    /** Column name icms_taxbase */
    public static final String COLUMNNAME_icms_taxbase = "icms_taxbase";

	/** Set icms_taxbase	  */
	public void seticms_taxbase (BigDecimal icms_taxbase);

	/** Get icms_taxbase	  */
	public BigDecimal geticms_taxbase();

    /** Column name icms_taxbaseamt */
    public static final String COLUMNNAME_icms_taxbaseamt = "icms_taxbaseamt";

	/** Set icms_taxbaseamt	  */
	public void seticms_taxbaseamt (BigDecimal icms_taxbaseamt);

	/** Get icms_taxbaseamt	  */
	public BigDecimal geticms_taxbaseamt();

    /** Column name icms_taxrate */
    public static final String COLUMNNAME_icms_taxrate = "icms_taxrate";

	/** Set icms_taxrate	  */
	public void seticms_taxrate (BigDecimal icms_taxrate);

	/** Get icms_taxrate	  */
	public BigDecimal geticms_taxrate();

    /** Column name icms_taxstatus */
    public static final String COLUMNNAME_icms_taxstatus = "icms_taxstatus";

	/** Set icms_taxstatus	  */
	public void seticms_taxstatus (String icms_taxstatus);

	/** Get icms_taxstatus	  */
	public String geticms_taxstatus();

    /** Column name icmsst_nftaxamt */
    public static final String COLUMNNAME_icmsst_nftaxamt = "icmsst_nftaxamt";

	/** Set icmsst_nftaxamt	  */
	public void seticmsst_nftaxamt (BigDecimal icmsst_nftaxamt);

	/** Get icmsst_nftaxamt	  */
	public BigDecimal geticmsst_nftaxamt();

    /** Column name icmsst_nftaxbaseamt */
    public static final String COLUMNNAME_icmsst_nftaxbaseamt = "icmsst_nftaxbaseamt";

	/** Set icmsst_nftaxbaseamt	  */
	public void seticmsst_nftaxbaseamt (BigDecimal icmsst_nftaxbaseamt);

	/** Get icmsst_nftaxbaseamt	  */
	public BigDecimal geticmsst_nftaxbaseamt();

    /** Column name icmsst_taxamt */
    public static final String COLUMNNAME_icmsst_taxamt = "icmsst_taxamt";

	/** Set icmsst_taxamt	  */
	public void seticmsst_taxamt (BigDecimal icmsst_taxamt);

	/** Get icmsst_taxamt	  */
	public BigDecimal geticmsst_taxamt();

    /** Column name icmsst_taxbase */
    public static final String COLUMNNAME_icmsst_taxbase = "icmsst_taxbase";

	/** Set icmsst_taxbase	  */
	public void seticmsst_taxbase (BigDecimal icmsst_taxbase);

	/** Get icmsst_taxbase	  */
	public BigDecimal geticmsst_taxbase();

    /** Column name icmsst_taxbaseamt */
    public static final String COLUMNNAME_icmsst_taxbaseamt = "icmsst_taxbaseamt";

	/** Set icmsst_taxbaseamt	  */
	public void seticmsst_taxbaseamt (BigDecimal icmsst_taxbaseamt);

	/** Get icmsst_taxbaseamt	  */
	public BigDecimal geticmsst_taxbaseamt();

    /** Column name icmsst_taxrate */
    public static final String COLUMNNAME_icmsst_taxrate = "icmsst_taxrate";

	/** Set icmsst_taxrate	  */
	public void seticmsst_taxrate (BigDecimal icmsst_taxrate);

	/** Get icmsst_taxrate	  */
	public BigDecimal geticmsst_taxrate();

    /** Column name icmsst_taxstatus */
    public static final String COLUMNNAME_icmsst_taxstatus = "icmsst_taxstatus";

	/** Set icmsst_taxstatus	  */
	public void seticmsst_taxstatus (String icmsst_taxstatus);

	/** Get icmsst_taxstatus	  */
	public String geticmsst_taxstatus();

    /** Column name ii_taxamt */
    public static final String COLUMNNAME_ii_taxamt = "ii_taxamt";

	/** Set ii_taxamt	  */
	public void setii_taxamt (BigDecimal ii_taxamt);

	/** Get ii_taxamt	  */
	public BigDecimal getii_taxamt();

    /** Column name ii_taxbaseamt */
    public static final String COLUMNNAME_ii_taxbaseamt = "ii_taxbaseamt";

	/** Set ii_taxbaseamt	  */
	public void setii_taxbaseamt (BigDecimal ii_taxbaseamt);

	/** Get ii_taxbaseamt	  */
	public BigDecimal getii_taxbaseamt();

    /** Column name ii_taxrate */
    public static final String COLUMNNAME_ii_taxrate = "ii_taxrate";

	/** Set ii_taxrate	  */
	public void setii_taxrate (BigDecimal ii_taxrate);

	/** Get ii_taxrate	  */
	public BigDecimal getii_taxrate();

    /** Column name ipi_nftaxamt */
    public static final String COLUMNNAME_ipi_nftaxamt = "ipi_nftaxamt";

	/** Set ipi_nftaxamt	  */
	public void setipi_nftaxamt (BigDecimal ipi_nftaxamt);

	/** Get ipi_nftaxamt	  */
	public BigDecimal getipi_nftaxamt();

    /** Column name ipi_taxamt */
    public static final String COLUMNNAME_ipi_taxamt = "ipi_taxamt";

	/** Set ipi_taxamt	  */
	public void setipi_taxamt (BigDecimal ipi_taxamt);

	/** Get ipi_taxamt	  */
	public BigDecimal getipi_taxamt();

    /** Column name ipi_taxbaseamt */
    public static final String COLUMNNAME_ipi_taxbaseamt = "ipi_taxbaseamt";

	/** Set ipi_taxbaseamt	  */
	public void setipi_taxbaseamt (BigDecimal ipi_taxbaseamt);

	/** Get ipi_taxbaseamt	  */
	public BigDecimal getipi_taxbaseamt();

    /** Column name ipi_taxrate */
    public static final String COLUMNNAME_ipi_taxrate = "ipi_taxrate";

	/** Set ipi_taxrate	  */
	public void setipi_taxrate (BigDecimal ipi_taxrate);

	/** Get ipi_taxrate	  */
	public BigDecimal getipi_taxrate();

    /** Column name ipi_taxstatus */
    public static final String COLUMNNAME_ipi_taxstatus = "ipi_taxstatus";

	/** Set ipi_taxstatus	  */
	public void setipi_taxstatus (String ipi_taxstatus);

	/** Get ipi_taxstatus	  */
	public String getipi_taxstatus();

    /** Column name pis_nftaxamt */
    public static final String COLUMNNAME_pis_nftaxamt = "pis_nftaxamt";

	/** Set pis_nftaxamt	  */
	public void setpis_nftaxamt (BigDecimal pis_nftaxamt);

	/** Get pis_nftaxamt	  */
	public BigDecimal getpis_nftaxamt();

    /** Column name pis_taxamt */
    public static final String COLUMNNAME_pis_taxamt = "pis_taxamt";

	/** Set pis_taxamt	  */
	public void setpis_taxamt (BigDecimal pis_taxamt);

	/** Get pis_taxamt	  */
	public BigDecimal getpis_taxamt();

    /** Column name pis_taxbase */
    public static final String COLUMNNAME_pis_taxbase = "pis_taxbase";

	/** Set pis_taxbase	  */
	public void setpis_taxbase (BigDecimal pis_taxbase);

	/** Get pis_taxbase	  */
	public BigDecimal getpis_taxbase();

    /** Column name pis_taxbaseamt */
    public static final String COLUMNNAME_pis_taxbaseamt = "pis_taxbaseamt";

	/** Set pis_taxbaseamt	  */
	public void setpis_taxbaseamt (BigDecimal pis_taxbaseamt);

	/** Get pis_taxbaseamt	  */
	public BigDecimal getpis_taxbaseamt();

    /** Column name pis_taxrate */
    public static final String COLUMNNAME_pis_taxrate = "pis_taxrate";

	/** Set pis_taxrate	  */
	public void setpis_taxrate (BigDecimal pis_taxrate);

	/** Get pis_taxrate	  */
	public BigDecimal getpis_taxrate();

    /** Column name pis_taxstatus */
    public static final String COLUMNNAME_pis_taxstatus = "pis_taxstatus";

	/** Set pis_taxstatus	  */
	public void setpis_taxstatus (String pis_taxstatus);

	/** Get pis_taxstatus	  */
	public String getpis_taxstatus();

    /** Column name productncm */
    public static final String COLUMNNAME_productncm = "productncm";

	/** Set productncm	  */
	public void setproductncm (String productncm);

	/** Get productncm	  */
	public String getproductncm();

    /** Column name productuom */
    public static final String COLUMNNAME_productuom = "productuom";

	/** Set productuom	  */
	public void setproductuom (String productuom);

	/** Get productuom	  */
	public String getproductuom();
}
