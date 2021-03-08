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

/** Generated Interface for LBR_NotaFiscal
 *  @author iDempiere (generated) 
 *  @version Release 6.2
 */
@SuppressWarnings("all")
public interface I_LBR_NotaFiscal 
{

    /** TableName=LBR_NotaFiscal */
    public static final String Table_Name = "LBR_NotaFiscal";

    /** AD_Table_ID=1000027 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 1 - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(1);

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

    /** Column name Bill_Location_ID */
    public static final String COLUMNNAME_Bill_Location_ID = "Bill_Location_ID";

	/** Set Invoice Location.
	  * Business Partner Location for invoicing
	  */
	public void setBill_Location_ID (int Bill_Location_ID);

	/** Get Invoice Location.
	  * Business Partner Location for invoicing
	  */
	public int getBill_Location_ID();

	public org.compiere.model.I_C_BPartner_Location getBill_Location() throws RuntimeException;

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

    /** Column name C_DocTypeTarget_ID */
    public static final String COLUMNNAME_C_DocTypeTarget_ID = "C_DocTypeTarget_ID";

	/** Set Target Document Type.
	  * Target document type for conversing documents
	  */
	public void setC_DocTypeTarget_ID (int C_DocTypeTarget_ID);

	/** Get Target Document Type.
	  * Target document type for conversing documents
	  */
	public int getC_DocTypeTarget_ID();

	public org.compiere.model.I_C_DocType getC_DocTypeTarget() throws RuntimeException;

    /** Column name C_DocType_ID */
    public static final String COLUMNNAME_C_DocType_ID = "C_DocType_ID";

	/** Set Document Type.
	  * Document type or rules
	  */
	public void setC_DocType_ID (int C_DocType_ID);

	/** Get Document Type.
	  * Document type or rules
	  */
	public int getC_DocType_ID();

	public org.compiere.model.I_C_DocType getC_DocType() throws RuntimeException;

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

    /** Column name C_PaymentTerm_ID */
    public static final String COLUMNNAME_C_PaymentTerm_ID = "C_PaymentTerm_ID";

	/** Set Payment Term.
	  * The terms of Payment (timing, discount)
	  */
	public void setC_PaymentTerm_ID (int C_PaymentTerm_ID);

	/** Get Payment Term.
	  * The terms of Payment (timing, discount)
	  */
	public int getC_PaymentTerm_ID();

	public org.compiere.model.I_C_PaymentTerm getC_PaymentTerm() throws RuntimeException;

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

    /** Column name DeliveryViaRule */
    public static final String COLUMNNAME_DeliveryViaRule = "DeliveryViaRule";

	/** Set Delivery Via.
	  * How the order will be delivered
	  */
	public void setDeliveryViaRule (String DeliveryViaRule);

	/** Get Delivery Via.
	  * How the order will be delivered
	  */
	public String getDeliveryViaRule();

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

    /** Column name DocumentNote */
    public static final String COLUMNNAME_DocumentNote = "DocumentNote";

	/** Set Document Note.
	  * Additional information for a Document
	  */
	public void setDocumentNote (String DocumentNote);

	/** Get Document Note.
	  * Additional information for a Document
	  */
	public String getDocumentNote();

    /** Column name ErrorMsg */
    public static final String COLUMNNAME_ErrorMsg = "ErrorMsg";

	/** Set Error Msg	  */
	public void setErrorMsg (String ErrorMsg);

	/** Get Error Msg	  */
	public String getErrorMsg();

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
	public void setIsCancelled (boolean IsCancelled);

	/** Get Cancelled.
	  * The transaction was cancelled
	  */
	public boolean isCancelled();

    /** Column name IsDiscountPrinted */
    public static final String COLUMNNAME_IsDiscountPrinted = "IsDiscountPrinted";

	/** Set Discount Printed.
	  * Print Discount on Invoice and Order
	  */
	public void setIsDiscountPrinted (boolean IsDiscountPrinted);

	/** Get Discount Printed.
	  * Print Discount on Invoice and Order
	  */
	public boolean isDiscountPrinted();

    /** Column name IsManual */
    public static final String COLUMNNAME_IsManual = "IsManual";

	/** Set Manual.
	  * This is a manual process
	  */
	public void setIsManual (boolean IsManual);

	/** Get Manual.
	  * This is a manual process
	  */
	public boolean isManual();

    /** Column name IsPrinted */
    public static final String COLUMNNAME_IsPrinted = "IsPrinted";

	/** Set Printed.
	  * Indicates if this document / line is printed
	  */
	public void setIsPrinted (boolean IsPrinted);

	/** Get Printed.
	  * Indicates if this document / line is printed
	  */
	public boolean isPrinted();

    /** Column name IsSOTrx */
    public static final String COLUMNNAME_IsSOTrx = "IsSOTrx";

	/** Set Sales Transaction.
	  * This is a Sales Transaction
	  */
	public void setIsSOTrx (boolean IsSOTrx);

	/** Get Sales Transaction.
	  * This is a Sales Transaction
	  */
	public boolean isSOTrx();

    /** Column name LBR_BPDeliveryEmail */
    public static final String COLUMNNAME_LBR_BPDeliveryEmail = "LBR_BPDeliveryEmail";

	/** Set BP Delivery Email.
	  * BP Delivery Email
	  */
	public void setLBR_BPDeliveryEmail (String LBR_BPDeliveryEmail);

	/** Get BP Delivery Email.
	  * BP Delivery Email
	  */
	public String getLBR_BPDeliveryEmail();

    /** Column name LBR_BPDeliveryName */
    public static final String COLUMNNAME_LBR_BPDeliveryName = "LBR_BPDeliveryName";

	/** Set BP Delivery Name	  */
	public void setLBR_BPDeliveryName (String LBR_BPDeliveryName);

	/** Get BP Delivery Name	  */
	public String getLBR_BPDeliveryName();

    /** Column name LBR_BPDeliveryPhone */
    public static final String COLUMNNAME_LBR_BPDeliveryPhone = "LBR_BPDeliveryPhone";

	/** Set BP Delivery Phone.
	  * BP Delivery Phone
	  */
	public void setLBR_BPDeliveryPhone (String LBR_BPDeliveryPhone);

	/** Get BP Delivery Phone.
	  * BP Delivery Phone
	  */
	public String getLBR_BPDeliveryPhone();

    /** Column name LBR_CSRTHash */
    public static final String COLUMNNAME_LBR_CSRTHash = "LBR_CSRTHash";

	/** Set CSRT Hash.
	  * CSRT Hash is generated using NFe ID and CSRT Code
	  */
	public void setLBR_CSRTHash (String LBR_CSRTHash);

	/** Get CSRT Hash.
	  * CSRT Hash is generated using NFe ID and CSRT Code
	  */
	public String getLBR_CSRTHash();

    /** Column name LBR_DE_ID */
    public static final String COLUMNNAME_LBR_DE_ID = "LBR_DE_ID";

	/** Set DE	  */
	public void setLBR_DE_ID (int LBR_DE_ID);

	/** Get DE	  */
	public int getLBR_DE_ID();

	public org.adempierelbr.model.I_LBR_DE getLBR_DE() throws RuntimeException;

    /** Column name LBR_DispatchPlace */
    public static final String COLUMNNAME_LBR_DispatchPlace = "LBR_DispatchPlace";

	/** Set Dispatch Place.
	  * Dispatch Place Description
	  */
	public void setLBR_DispatchPlace (String LBR_DispatchPlace);

	/** Get Dispatch Place.
	  * Dispatch Place Description
	  */
	public String getLBR_DispatchPlace();

    /** Column name LBR_EMailSent */
    public static final String COLUMNNAME_LBR_EMailSent = "LBR_EMailSent";

	/** Set EMail Sent.
	  * Indicates if the email was sent
	  */
	public void setLBR_EMailSent (boolean LBR_EMailSent);

	/** Get EMail Sent.
	  * Indicates if the email was sent
	  */
	public boolean isLBR_EMailSent();

    /** Column name LBR_ExportPlace */
    public static final String COLUMNNAME_LBR_ExportPlace = "LBR_ExportPlace";

	/** Set Export Place.
	  * Description boarding location or border transposing
	  */
	public void setLBR_ExportPlace (String LBR_ExportPlace);

	/** Get Export Place.
	  * Description boarding location or border transposing
	  */
	public String getLBR_ExportPlace();

    /** Column name LBR_FreightCostRule */
    public static final String COLUMNNAME_LBR_FreightCostRule = "LBR_FreightCostRule";

	/** Set Freight Cost Rule.
	  * Method for charging Freight
	  */
	public void setLBR_FreightCostRule (String LBR_FreightCostRule);

	/** Get Freight Cost Rule.
	  * Method for charging Freight
	  */
	public String getLBR_FreightCostRule();

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

    /** Column name LBR_NFCeQRCodeURL */
    public static final String COLUMNNAME_LBR_NFCeQRCodeURL = "LBR_NFCeQRCodeURL";

	/** Set NFC-e QRCode URL	  */
	public void setLBR_NFCeQRCodeURL (String LBR_NFCeQRCodeURL);

	/** Get NFC-e QRCode URL	  */
	public String getLBR_NFCeQRCodeURL();

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

    /** Column name LBR_NotaFiscal_UU */
    public static final String COLUMNNAME_LBR_NotaFiscal_UU = "LBR_NotaFiscal_UU";

	/** Set LBR_NotaFiscal_UU	  */
	public void setLBR_NotaFiscal_UU (String LBR_NotaFiscal_UU);

	/** Get LBR_NotaFiscal_UU	  */
	public String getLBR_NotaFiscal_UU();

    /** Column name LBR_OtherChargesAmt */
    public static final String COLUMNNAME_LBR_OtherChargesAmt = "LBR_OtherChargesAmt";

	/** Set Other Charges Amount	  */
	public void setLBR_OtherChargesAmt (BigDecimal LBR_OtherChargesAmt);

	/** Get Other Charges Amount	  */
	public BigDecimal getLBR_OtherChargesAmt();

    /** Column name LBR_PartnerDFe_ID */
    public static final String COLUMNNAME_LBR_PartnerDFe_ID = "LBR_PartnerDFe_ID";

	/** Set Partner Doc Fiscal	  */
	public void setLBR_PartnerDFe_ID (int LBR_PartnerDFe_ID);

	/** Get Partner Doc Fiscal	  */
	public int getLBR_PartnerDFe_ID();

	public org.adempierelbr.model.I_LBR_PartnerDFe getLBR_PartnerDFe() throws RuntimeException;

    /** Column name LBR_ProcReactivateNF */
    public static final String COLUMNNAME_LBR_ProcReactivateNF = "LBR_ProcReactivateNF";

	/** Set Reactivate Nota Fiscal.
	  * This Process Reactivates the Nota Fiscal Document
	  */
	public void setLBR_ProcReactivateNF (String LBR_ProcReactivateNF);

	/** Get Reactivate Nota Fiscal.
	  * This Process Reactivates the Nota Fiscal Document
	  */
	public String getLBR_ProcReactivateNF();

    /** Column name LBR_Processing2 */
    public static final String COLUMNNAME_LBR_Processing2 = "LBR_Processing2";

	/** Set Process Now	  */
	public void setLBR_Processing2 (String LBR_Processing2);

	/** Get Process Now	  */
	public String getLBR_Processing2();

    /** Column name LBR_RNTRC */
    public static final String COLUMNNAME_LBR_RNTRC = "LBR_RNTRC";

	/** Set RNTRC.
	  * Registro Nacional dos Transportadores Rodoviários de Carga
	  */
	public void setLBR_RNTRC (String LBR_RNTRC);

	/** Get RNTRC.
	  * Registro Nacional dos Transportadores Rodoviários de Carga
	  */
	public String getLBR_RNTRC();

    /** Column name LBR_RegionExport_ID */
    public static final String COLUMNNAME_LBR_RegionExport_ID = "LBR_RegionExport_ID";

	/** Set Region Export .
	  * Acronym boarding Region or boundary crossing
	  */
	public void setLBR_RegionExport_ID (int LBR_RegionExport_ID);

	/** Get Region Export .
	  * Acronym boarding Region or boundary crossing
	  */
	public int getLBR_RegionExport_ID();

	public org.compiere.model.I_C_Region getLBR_RegionExport() throws RuntimeException;

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

    /** Column name LBR_SendEMail */
    public static final String COLUMNNAME_LBR_SendEMail = "LBR_SendEMail";

	/** Set Send EMail.
	  * Send EMail with Nota Fiscal
	  */
	public void setLBR_SendEMail (String LBR_SendEMail);

	/** Get Send EMail.
	  * Send EMail with Nota Fiscal
	  */
	public String getLBR_SendEMail();

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

    /** Column name LBR_TaxRegime */
    public static final String COLUMNNAME_LBR_TaxRegime = "LBR_TaxRegime";

	/** Set Tax Regime	  */
	public void setLBR_TaxRegime (String LBR_TaxRegime);

	/** Get Tax Regime	  */
	public String getLBR_TaxRegime();

    /** Column name M_InOut_ID */
    public static final String COLUMNNAME_M_InOut_ID = "M_InOut_ID";

	/** Set Shipment/Receipt.
	  * Material Shipment Document
	  */
	public void setM_InOut_ID (int M_InOut_ID);

	/** Get Shipment/Receipt.
	  * Material Shipment Document
	  */
	public int getM_InOut_ID();

	public org.compiere.model.I_M_InOut getM_InOut() throws RuntimeException;

    /** Column name M_Movement_ID */
    public static final String COLUMNNAME_M_Movement_ID = "M_Movement_ID";

	/** Set Inventory Move.
	  * Movement of Inventory
	  */
	public void setM_Movement_ID (int M_Movement_ID);

	/** Get Inventory Move.
	  * Movement of Inventory
	  */
	public int getM_Movement_ID();

	public org.compiere.model.I_M_Movement getM_Movement() throws RuntimeException;

    /** Column name M_RMA_ID */
    public static final String COLUMNNAME_M_RMA_ID = "M_RMA_ID";

	/** Set RMA.
	  * Return Material Authorization
	  */
	public void setM_RMA_ID (int M_RMA_ID);

	/** Get RMA.
	  * Return Material Authorization
	  */
	public int getM_RMA_ID();

	public org.compiere.model.I_M_RMA getM_RMA() throws RuntimeException;

    /** Column name M_Shipper_ID */
    public static final String COLUMNNAME_M_Shipper_ID = "M_Shipper_ID";

	/** Set Shipper.
	  * Method or manner of product delivery
	  */
	public void setM_Shipper_ID (int M_Shipper_ID);

	/** Get Shipper.
	  * Method or manner of product delivery
	  */
	public int getM_Shipper_ID();

	public org.compiere.model.I_M_Shipper getM_Shipper() throws RuntimeException;

    /** Column name NoPackages */
    public static final String COLUMNNAME_NoPackages = "NoPackages";

	/** Set No Packages.
	  * Number of packages shipped
	  */
	public void setNoPackages (int NoPackages);

	/** Get No Packages.
	  * Number of packages shipped
	  */
	public int getNoPackages();

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

	public I_C_Location getOrg_Location() throws RuntimeException;

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

    /** Column name TaxID */
    public static final String COLUMNNAME_TaxID = "TaxID";

	/** Set Tax ID.
	  * Tax Identification
	  */
	public void setTaxID (String TaxID);

	/** Get Tax ID.
	  * Tax Identification
	  */
	public String getTaxID();

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

    /** Column name lbr_BPAddress1 */
    public static final String COLUMNNAME_lbr_BPAddress1 = "lbr_BPAddress1";

	/** Set BP Address 1.
	  * BP Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPAddress1 (String lbr_BPAddress1);

	/** Get BP Address 1.
	  * BP Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPAddress1();

    /** Column name lbr_BPAddress2 */
    public static final String COLUMNNAME_lbr_BPAddress2 = "lbr_BPAddress2";

	/** Set BP Address 2.
	  * BP Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPAddress2 (String lbr_BPAddress2);

	/** Get BP Address 2.
	  * BP Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPAddress2();

    /** Column name lbr_BPAddress3 */
    public static final String COLUMNNAME_lbr_BPAddress3 = "lbr_BPAddress3";

	/** Set BP Address 3.
	  * BP Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPAddress3 (String lbr_BPAddress3);

	/** Get BP Address 3.
	  * BP Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPAddress3();

    /** Column name lbr_BPAddress4 */
    public static final String COLUMNNAME_lbr_BPAddress4 = "lbr_BPAddress4";

	/** Set BP Address 4.
	  * BP Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPAddress4 (String lbr_BPAddress4);

	/** Get BP Address 4.
	  * BP Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPAddress4();

    /** Column name lbr_BPCNPJ */
    public static final String COLUMNNAME_lbr_BPCNPJ = "lbr_BPCNPJ";

	/** Set BP CNPJ.
	  * BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPCNPJ (String lbr_BPCNPJ);

	/** Get BP CNPJ.
	  * BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPCNPJ();

    /** Column name lbr_BPCity */
    public static final String COLUMNNAME_lbr_BPCity = "lbr_BPCity";

	/** Set BP City.
	  * BP City - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPCity (String lbr_BPCity);

	/** Get BP City.
	  * BP City - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPCity();

    /** Column name lbr_BPCityCode */
    public static final String COLUMNNAME_lbr_BPCityCode = "lbr_BPCityCode";

	/** Set Cod. Cidade	  */
	public void setlbr_BPCityCode (int lbr_BPCityCode);

	/** Get Cod. Cidade	  */
	public int getlbr_BPCityCode();

    /** Column name lbr_BPCountry */
    public static final String COLUMNNAME_lbr_BPCountry = "lbr_BPCountry";

	/** Set BP Country.
	  * BP Country - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPCountry (String lbr_BPCountry);

	/** Get BP Country.
	  * BP Country - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPCountry();

    /** Column name lbr_BPCountryCode */
    public static final String COLUMNNAME_lbr_BPCountryCode = "lbr_BPCountryCode";

	/** Set Country Code.
	  * Country Code used for issue Nota Fiscal
	  */
	public void setlbr_BPCountryCode (String lbr_BPCountryCode);

	/** Get Country Code.
	  * Country Code used for issue Nota Fiscal
	  */
	public String getlbr_BPCountryCode();

    /** Column name lbr_BPDeliveryAddress1 */
    public static final String COLUMNNAME_lbr_BPDeliveryAddress1 = "lbr_BPDeliveryAddress1";

	/** Set BP Delivery Address 1.
	  * BP Delivery Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPDeliveryAddress1 (String lbr_BPDeliveryAddress1);

	/** Get BP Delivery Address 1.
	  * BP Delivery Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPDeliveryAddress1();

    /** Column name lbr_BPDeliveryAddress2 */
    public static final String COLUMNNAME_lbr_BPDeliveryAddress2 = "lbr_BPDeliveryAddress2";

	/** Set BP Delivery Address 2.
	  * BP Delivery Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPDeliveryAddress2 (String lbr_BPDeliveryAddress2);

	/** Get BP Delivery Address 2.
	  * BP Delivery Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPDeliveryAddress2();

    /** Column name lbr_BPDeliveryAddress3 */
    public static final String COLUMNNAME_lbr_BPDeliveryAddress3 = "lbr_BPDeliveryAddress3";

	/** Set BP Delivery Address 3.
	  * BP Delivery Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPDeliveryAddress3 (String lbr_BPDeliveryAddress3);

	/** Get BP Delivery Address 3.
	  * BP Delivery Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPDeliveryAddress3();

    /** Column name lbr_BPDeliveryAddress4 */
    public static final String COLUMNNAME_lbr_BPDeliveryAddress4 = "lbr_BPDeliveryAddress4";

	/** Set BP Delivery Address 4.
	  * BP Delivery Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPDeliveryAddress4 (String lbr_BPDeliveryAddress4);

	/** Get BP Delivery Address 4.
	  * BP Delivery Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPDeliveryAddress4();

    /** Column name lbr_BPDeliveryCNPJ */
    public static final String COLUMNNAME_lbr_BPDeliveryCNPJ = "lbr_BPDeliveryCNPJ";

	/** Set BP Delivery CNPJ.
	  * BP Delivery CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPDeliveryCNPJ (String lbr_BPDeliveryCNPJ);

	/** Get BP Delivery CNPJ.
	  * BP Delivery CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPDeliveryCNPJ();

    /** Column name lbr_BPDeliveryCity */
    public static final String COLUMNNAME_lbr_BPDeliveryCity = "lbr_BPDeliveryCity";

	/** Set BP Delivery City.
	  * BP Delivery City - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPDeliveryCity (String lbr_BPDeliveryCity);

	/** Get BP Delivery City.
	  * BP Delivery City - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPDeliveryCity();

    /** Column name lbr_BPDeliveryCityCode */
    public static final String COLUMNNAME_lbr_BPDeliveryCityCode = "lbr_BPDeliveryCityCode";

	/** Set Cod. Cidade	  */
	public void setlbr_BPDeliveryCityCode (int lbr_BPDeliveryCityCode);

	/** Get Cod. Cidade	  */
	public int getlbr_BPDeliveryCityCode();

    /** Column name lbr_BPDeliveryCountry */
    public static final String COLUMNNAME_lbr_BPDeliveryCountry = "lbr_BPDeliveryCountry";

	/** Set BP Delivery Country.
	  * BP Delivery Country - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPDeliveryCountry (String lbr_BPDeliveryCountry);

	/** Get BP Delivery Country.
	  * BP Delivery Country - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPDeliveryCountry();

    /** Column name lbr_BPDeliveryIE */
    public static final String COLUMNNAME_lbr_BPDeliveryIE = "lbr_BPDeliveryIE";

	/** Set BP Delivery IE.
	  * BP Delivery IE - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPDeliveryIE (String lbr_BPDeliveryIE);

	/** Get BP Delivery IE.
	  * BP Delivery IE - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPDeliveryIE();

    /** Column name lbr_BPDeliveryPostal */
    public static final String COLUMNNAME_lbr_BPDeliveryPostal = "lbr_BPDeliveryPostal";

	/** Set BP Delivery Postal.
	  * BP Delivery Postal - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPDeliveryPostal (String lbr_BPDeliveryPostal);

	/** Get BP Delivery Postal.
	  * BP Delivery Postal - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPDeliveryPostal();

    /** Column name lbr_BPDeliveryRegion */
    public static final String COLUMNNAME_lbr_BPDeliveryRegion = "lbr_BPDeliveryRegion";

	/** Set BP DeliveryRegion.
	  * BP DeliveryRegion - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPDeliveryRegion (String lbr_BPDeliveryRegion);

	/** Get BP DeliveryRegion.
	  * BP DeliveryRegion - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPDeliveryRegion();

    /** Column name lbr_BPIE */
    public static final String COLUMNNAME_lbr_BPIE = "lbr_BPIE";

	/** Set BP IE.
	  * BP IE - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPIE (String lbr_BPIE);

	/** Get BP IE.
	  * BP IE - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPIE();

    /** Column name lbr_BPInvoiceAddress1 */
    public static final String COLUMNNAME_lbr_BPInvoiceAddress1 = "lbr_BPInvoiceAddress1";

	/** Set BP Invoice Address 1.
	  * BP Invoice Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPInvoiceAddress1 (String lbr_BPInvoiceAddress1);

	/** Get BP Invoice Address 1.
	  * BP Invoice Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPInvoiceAddress1();

    /** Column name lbr_BPInvoiceAddress2 */
    public static final String COLUMNNAME_lbr_BPInvoiceAddress2 = "lbr_BPInvoiceAddress2";

	/** Set BP Invoice Address 2.
	  * BP Invoice Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPInvoiceAddress2 (String lbr_BPInvoiceAddress2);

	/** Get BP Invoice Address 2.
	  * BP Invoice Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPInvoiceAddress2();

    /** Column name lbr_BPInvoiceAddress3 */
    public static final String COLUMNNAME_lbr_BPInvoiceAddress3 = "lbr_BPInvoiceAddress3";

	/** Set BP Invoice Address 3.
	  * BP Invoice Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPInvoiceAddress3 (String lbr_BPInvoiceAddress3);

	/** Get BP Invoice Address 3.
	  * BP Invoice Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPInvoiceAddress3();

    /** Column name lbr_BPInvoiceAddress4 */
    public static final String COLUMNNAME_lbr_BPInvoiceAddress4 = "lbr_BPInvoiceAddress4";

	/** Set BP Invoice Address 4.
	  * BP Invoice Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPInvoiceAddress4 (String lbr_BPInvoiceAddress4);

	/** Get BP Invoice Address 4.
	  * BP Invoice Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPInvoiceAddress4();

    /** Column name lbr_BPInvoiceCNPJ */
    public static final String COLUMNNAME_lbr_BPInvoiceCNPJ = "lbr_BPInvoiceCNPJ";

	/** Set BP Invoice CNPJ.
	  * BP Invoice CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPInvoiceCNPJ (String lbr_BPInvoiceCNPJ);

	/** Get BP Invoice CNPJ.
	  * BP Invoice CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPInvoiceCNPJ();

    /** Column name lbr_BPInvoiceCity */
    public static final String COLUMNNAME_lbr_BPInvoiceCity = "lbr_BPInvoiceCity";

	/** Set BP Invoice City.
	  * BP Invoice City - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPInvoiceCity (String lbr_BPInvoiceCity);

	/** Get BP Invoice City.
	  * BP Invoice City - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPInvoiceCity();

    /** Column name lbr_BPInvoiceCountry */
    public static final String COLUMNNAME_lbr_BPInvoiceCountry = "lbr_BPInvoiceCountry";

	/** Set BP Invoice Country.
	  * BP Invoice Country - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPInvoiceCountry (String lbr_BPInvoiceCountry);

	/** Get BP Invoice Country.
	  * BP Invoice Country - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPInvoiceCountry();

    /** Column name lbr_BPInvoiceIE */
    public static final String COLUMNNAME_lbr_BPInvoiceIE = "lbr_BPInvoiceIE";

	/** Set BP Invoice IE.
	  * BP Invoice IE - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPInvoiceIE (String lbr_BPInvoiceIE);

	/** Get BP Invoice IE.
	  * BP Invoice IE - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPInvoiceIE();

    /** Column name lbr_BPInvoicePostal */
    public static final String COLUMNNAME_lbr_BPInvoicePostal = "lbr_BPInvoicePostal";

	/** Set BP Invoice Postal.
	  * BP Invoice Postal - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPInvoicePostal (String lbr_BPInvoicePostal);

	/** Get BP Invoice Postal.
	  * BP Invoice Postal - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPInvoicePostal();

    /** Column name lbr_BPInvoiceRegion */
    public static final String COLUMNNAME_lbr_BPInvoiceRegion = "lbr_BPInvoiceRegion";

	/** Set BP InvoiceRegion.
	  * BP InvoiceRegion - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPInvoiceRegion (String lbr_BPInvoiceRegion);

	/** Get BP InvoiceRegion.
	  * BP InvoiceRegion - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPInvoiceRegion();

    /** Column name lbr_BPPhone */
    public static final String COLUMNNAME_lbr_BPPhone = "lbr_BPPhone";

	/** Set BP Phone.
	  * BP Phone - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPPhone (String lbr_BPPhone);

	/** Get BP Phone.
	  * BP Phone - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPPhone();

    /** Column name lbr_BPPostal */
    public static final String COLUMNNAME_lbr_BPPostal = "lbr_BPPostal";

	/** Set BP Postal.
	  * BP Postal - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPPostal (String lbr_BPPostal);

	/** Get BP Postal.
	  * BP Postal - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPPostal();

    /** Column name lbr_BPRegion */
    public static final String COLUMNNAME_lbr_BPRegion = "lbr_BPRegion";

	/** Set BP Region.
	  * BP Region - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPRegion (String lbr_BPRegion);

	/** Get BP Region.
	  * BP Region - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPRegion();

    /** Column name lbr_BPShipperAddress */
    public static final String COLUMNNAME_lbr_BPShipperAddress = "lbr_BPShipperAddress";

	/** Set BP Shipper Address.
	  * BP Shipper Address on a String
	  */
	public void setlbr_BPShipperAddress (String lbr_BPShipperAddress);

	/** Get BP Shipper Address.
	  * BP Shipper Address on a String
	  */
	public String getlbr_BPShipperAddress();

    /** Column name lbr_BPShipperAddress1 */
    public static final String COLUMNNAME_lbr_BPShipperAddress1 = "lbr_BPShipperAddress1";

	/** Set BP Shipper Address 1.
	  * BP Shipper Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPShipperAddress1 (String lbr_BPShipperAddress1);

	/** Get BP Shipper Address 1.
	  * BP Shipper Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPShipperAddress1();

    /** Column name lbr_BPShipperAddress2 */
    public static final String COLUMNNAME_lbr_BPShipperAddress2 = "lbr_BPShipperAddress2";

	/** Set BP Shipper Address 2.
	  * BP Shipper Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPShipperAddress2 (String lbr_BPShipperAddress2);

	/** Get BP Shipper Address 2.
	  * BP Shipper Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPShipperAddress2();

    /** Column name lbr_BPShipperAddress3 */
    public static final String COLUMNNAME_lbr_BPShipperAddress3 = "lbr_BPShipperAddress3";

	/** Set BP Shipper Address 3.
	  * BP Shipper Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPShipperAddress3 (String lbr_BPShipperAddress3);

	/** Get BP Shipper Address 3.
	  * BP Shipper Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPShipperAddress3();

    /** Column name lbr_BPShipperAddress4 */
    public static final String COLUMNNAME_lbr_BPShipperAddress4 = "lbr_BPShipperAddress4";

	/** Set BP Shipper Address 4.
	  * BP Shipper Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPShipperAddress4 (String lbr_BPShipperAddress4);

	/** Get BP Shipper Address 4.
	  * BP Shipper Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPShipperAddress4();

    /** Column name lbr_BPShipperCNPJ */
    public static final String COLUMNNAME_lbr_BPShipperCNPJ = "lbr_BPShipperCNPJ";

	/** Set BP Shipper CNPJ.
	  * BP Shipper CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPShipperCNPJ (String lbr_BPShipperCNPJ);

	/** Get BP Shipper CNPJ.
	  * BP Shipper CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPShipperCNPJ();

    /** Column name lbr_BPShipperCity */
    public static final String COLUMNNAME_lbr_BPShipperCity = "lbr_BPShipperCity";

	/** Set BP Shipper City.
	  * BP Shipper City - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPShipperCity (String lbr_BPShipperCity);

	/** Get BP Shipper City.
	  * BP Shipper City - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPShipperCity();

    /** Column name lbr_BPShipperCountry */
    public static final String COLUMNNAME_lbr_BPShipperCountry = "lbr_BPShipperCountry";

	/** Set BP Shipper Country.
	  * BP Shipper Country - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPShipperCountry (String lbr_BPShipperCountry);

	/** Get BP Shipper Country.
	  * BP Shipper Country - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPShipperCountry();

    /** Column name lbr_BPShipperIE */
    public static final String COLUMNNAME_lbr_BPShipperIE = "lbr_BPShipperIE";

	/** Set BP Shipper IE.
	  * BP Shipper IE - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPShipperIE (String lbr_BPShipperIE);

	/** Get BP Shipper IE.
	  * BP Shipper IE - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPShipperIE();

    /** Column name lbr_BPShipperLicensePlate */
    public static final String COLUMNNAME_lbr_BPShipperLicensePlate = "lbr_BPShipperLicensePlate";

	/** Set BP Shipper License Plate.
	  * Defines the BP Shipper License Plate
	  */
	public void setlbr_BPShipperLicensePlate (String lbr_BPShipperLicensePlate);

	/** Get BP Shipper License Plate.
	  * Defines the BP Shipper License Plate
	  */
	public String getlbr_BPShipperLicensePlate();

    /** Column name lbr_BPShipperName */
    public static final String COLUMNNAME_lbr_BPShipperName = "lbr_BPShipperName";

	/** Set BPShipper Name.
	  * Defines the Shipper Name
	  */
	public void setlbr_BPShipperName (String lbr_BPShipperName);

	/** Get BPShipper Name.
	  * Defines the Shipper Name
	  */
	public String getlbr_BPShipperName();

    /** Column name lbr_BPShipperPostal */
    public static final String COLUMNNAME_lbr_BPShipperPostal = "lbr_BPShipperPostal";

	/** Set BP Shipper Postal.
	  * BP Shipper Postal - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPShipperPostal (String lbr_BPShipperPostal);

	/** Get BP Shipper Postal.
	  * BP Shipper Postal - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPShipperPostal();

    /** Column name lbr_BPShipperRegion */
    public static final String COLUMNNAME_lbr_BPShipperRegion = "lbr_BPShipperRegion";

	/** Set BP ShipperRegion.
	  * BP ShipperRegion - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPShipperRegion (String lbr_BPShipperRegion);

	/** Get BP ShipperRegion.
	  * BP ShipperRegion - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPShipperRegion();

    /** Column name lbr_BPSuframa */
    public static final String COLUMNNAME_lbr_BPSuframa = "lbr_BPSuframa";

	/** Set BP Suframa.
	  * Defines the BP Suframa
	  */
	public void setlbr_BPSuframa (String lbr_BPSuframa);

	/** Get BP Suframa.
	  * Defines the BP Suframa
	  */
	public String getlbr_BPSuframa();

    /** Column name lbr_BPTypeBR */
    public static final String COLUMNNAME_lbr_BPTypeBR = "lbr_BPTypeBR";

	/** Set Brazilian BP Type.
	  * Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)
	  */
	public void setlbr_BPTypeBR (String lbr_BPTypeBR);

	/** Get Brazilian BP Type.
	  * Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)
	  */
	public String getlbr_BPTypeBR();

    /** Column name lbr_Barcode1 */
    public static final String COLUMNNAME_lbr_Barcode1 = "lbr_Barcode1";

	/** Set Barcode 1.
	  * First Barcode of the Nota Fiscal
	  */
	public void setlbr_Barcode1 (String lbr_Barcode1);

	/** Get Barcode 1.
	  * First Barcode of the Nota Fiscal
	  */
	public String getlbr_Barcode1();

    /** Column name lbr_Barcode2 */
    public static final String COLUMNNAME_lbr_Barcode2 = "lbr_Barcode2";

	/** Set Barcode 2.
	  * Second Barcode of the Nota Fiscal
	  */
	public void setlbr_Barcode2 (String lbr_Barcode2);

	/** Get Barcode 2.
	  * Second Barcode of the Nota Fiscal
	  */
	public String getlbr_Barcode2();

    /** Column name lbr_BillNote */
    public static final String COLUMNNAME_lbr_BillNote = "lbr_BillNote";

	/** Set Bill Note.
	  * Bill Note
	  */
	public void setlbr_BillNote (String lbr_BillNote);

	/** Get Bill Note.
	  * Bill Note
	  */
	public String getlbr_BillNote();

    /** Column name lbr_Brand */
    public static final String COLUMNNAME_lbr_Brand = "lbr_Brand";

	/** Set Brand.
	  * Brand transport volumes
	  */
	public void setlbr_Brand (String lbr_Brand);

	/** Get Brand.
	  * Brand transport volumes
	  */
	public String getlbr_Brand();

    /** Column name lbr_CFOPNote */
    public static final String COLUMNNAME_lbr_CFOPNote = "lbr_CFOPNote";

	/** Set CFOP Note.
	  * Defines the CFOP Note
	  */
	public void setlbr_CFOPNote (String lbr_CFOPNote);

	/** Get CFOP Note.
	  * Defines the CFOP Note
	  */
	public String getlbr_CFOPNote();

    /** Column name lbr_CFOPReference */
    public static final String COLUMNNAME_lbr_CFOPReference = "lbr_CFOPReference";

	/** Set CFOP Reference.
	  * Defines the CFOP Reference
	  */
	public void setlbr_CFOPReference (String lbr_CFOPReference);

	/** Get CFOP Reference.
	  * Defines the CFOP Reference
	  */
	public String getlbr_CFOPReference();

    /** Column name lbr_CNAE */
    public static final String COLUMNNAME_lbr_CNAE = "lbr_CNAE";

	/** Set CNAE.
	  * Classificação Nacional de Atividades Econômicas
	  */
	public void setlbr_CNAE (String lbr_CNAE);

	/** Get CNAE.
	  * Classificação Nacional de Atividades Econômicas
	  */
	public String getlbr_CNAE();

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

    /** Column name lbr_CountryCode */
    public static final String COLUMNNAME_lbr_CountryCode = "lbr_CountryCode";

	/** Set Country Code.
	  * Country Code used for issue Nota Fiscal
	  */
	public void setlbr_CountryCode (String lbr_CountryCode);

	/** Get Country Code.
	  * Country Code used for issue Nota Fiscal
	  */
	public String getlbr_CountryCode();

    /** Column name lbr_DANFEFormat */
    public static final String COLUMNNAME_lbr_DANFEFormat = "lbr_DANFEFormat";

	/** Set DANFE Format	  */
	public void setlbr_DANFEFormat (String lbr_DANFEFormat);

	/** Get DANFE Format	  */
	public String getlbr_DANFEFormat();

    /** Column name lbr_DateInOut */
    public static final String COLUMNNAME_lbr_DateInOut = "lbr_DateInOut";

	/** Set Date InOut.
	  * Defines the InOut Date
	  */
	public void setlbr_DateInOut (Timestamp lbr_DateInOut);

	/** Get Date InOut.
	  * Defines the InOut Date
	  */
	public Timestamp getlbr_DateInOut();

    /** Column name lbr_DateScan */
    public static final String COLUMNNAME_lbr_DateScan = "lbr_DateScan";

	/** Set Data contingência	  */
	public void setlbr_DateScan (Timestamp lbr_DateScan);

	/** Get Data contingência	  */
	public Timestamp getlbr_DateScan();

    /** Column name lbr_Delivery_Location_ID */
    public static final String COLUMNNAME_lbr_Delivery_Location_ID = "lbr_Delivery_Location_ID";

	/** Set Delivery Location.
	  * The Delivery Location ID
	  */
	public void setlbr_Delivery_Location_ID (int lbr_Delivery_Location_ID);

	/** Get Delivery Location.
	  * The Delivery Location ID
	  */
	public int getlbr_Delivery_Location_ID();

	public org.compiere.model.I_C_BPartner_Location getlbr_Delivery_Location() throws RuntimeException;

    /** Column name lbr_DigestValue */
    public static final String COLUMNNAME_lbr_DigestValue = "lbr_DigestValue";

	/** Set Digest Value	  */
	public void setlbr_DigestValue (String lbr_DigestValue);

	/** Get Digest Value	  */
	public String getlbr_DigestValue();

    /** Column name lbr_Fantasia */
    public static final String COLUMNNAME_lbr_Fantasia = "lbr_Fantasia";

	/** Set Fantasia	  */
	public void setlbr_Fantasia (String lbr_Fantasia);

	/** Get Fantasia	  */
	public String getlbr_Fantasia();

    /** Column name lbr_FinNFe */
    public static final String COLUMNNAME_lbr_FinNFe = "lbr_FinNFe";

	/** Set Finalidade NFe.
	  * Define a Finalidade da NFe
	  */
	public void setlbr_FinNFe (String lbr_FinNFe);

	/** Get Finalidade NFe.
	  * Define a Finalidade da NFe
	  */
	public String getlbr_FinNFe();

    /** Column name lbr_FiscalOBS */
    public static final String COLUMNNAME_lbr_FiscalOBS = "lbr_FiscalOBS";

	/** Set Fiscal Obs..
	  * Fiscal Observation for the Fiscal Books
	  */
	public void setlbr_FiscalOBS (String lbr_FiscalOBS);

	/** Get Fiscal Obs..
	  * Fiscal Observation for the Fiscal Books
	  */
	public String getlbr_FiscalOBS();

    /** Column name lbr_GenerateNFeXML */
    public static final String COLUMNNAME_lbr_GenerateNFeXML = "lbr_GenerateNFeXML";

	/** Set Generate NFe XML	  */
	public void setlbr_GenerateNFeXML (String lbr_GenerateNFeXML);

	/** Get Generate NFe XML	  */
	public String getlbr_GenerateNFeXML();

    /** Column name lbr_GrossWeight */
    public static final String COLUMNNAME_lbr_GrossWeight = "lbr_GrossWeight";

	/** Set Gross Weight.
	  * Defines the Gross Weight
	  */
	public void setlbr_GrossWeight (BigDecimal lbr_GrossWeight);

	/** Get Gross Weight.
	  * Defines the Gross Weight
	  */
	public BigDecimal getlbr_GrossWeight();

    /** Column name lbr_HasOpenItems */
    public static final String COLUMNNAME_lbr_HasOpenItems = "lbr_HasOpenItems";

	/** Set Has Open Items.
	  * Identifies if this Document Has Open Items
	  */
	public void setlbr_HasOpenItems (boolean lbr_HasOpenItems);

	/** Get Has Open Items.
	  * Identifies if this Document Has Open Items
	  */
	public boolean islbr_HasOpenItems();

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

    /** Column name lbr_InsuranceAmt */
    public static final String COLUMNNAME_lbr_InsuranceAmt = "lbr_InsuranceAmt";

	/** Set Insurance Amt.
	  * Defines the Insurance Amt
	  */
	public void setlbr_InsuranceAmt (BigDecimal lbr_InsuranceAmt);

	/** Get Insurance Amt.
	  * Defines the Insurance Amt
	  */
	public BigDecimal getlbr_InsuranceAmt();

    /** Column name lbr_IsOwnDocument */
    public static final String COLUMNNAME_lbr_IsOwnDocument = "lbr_IsOwnDocument";

	/** Set Is Own Document.
	  * Identifies this is an own document
	  */
	public void setlbr_IsOwnDocument (boolean lbr_IsOwnDocument);

	/** Get Is Own Document.
	  * Identifies this is an own document
	  */
	public boolean islbr_IsOwnDocument();

    /** Column name lbr_MotivoCancel */
    public static final String COLUMNNAME_lbr_MotivoCancel = "lbr_MotivoCancel";

	/** Set Motivo do Cancelamento.
	  * Motivo do Cancelamento (Entre 15 e 255 caracteres)
	  */
	public void setlbr_MotivoCancel (String lbr_MotivoCancel);

	/** Get Motivo do Cancelamento.
	  * Motivo do Cancelamento (Entre 15 e 255 caracteres)
	  */
	public String getlbr_MotivoCancel();

    /** Column name lbr_MotivoScan */
    public static final String COLUMNNAME_lbr_MotivoScan = "lbr_MotivoScan";

	/** Set Motivo contingência	  */
	public void setlbr_MotivoScan (String lbr_MotivoScan);

	/** Get Motivo contingência	  */
	public String getlbr_MotivoScan();

    /** Column name lbr_NCMReference */
    public static final String COLUMNNAME_lbr_NCMReference = "lbr_NCMReference";

	/** Set NCM Reference.
	  * Defines the NCM Reference
	  */
	public void setlbr_NCMReference (String lbr_NCMReference);

	/** Get NCM Reference.
	  * Defines the NCM Reference
	  */
	public String getlbr_NCMReference();

    /** Column name lbr_NFENo */
    public static final String COLUMNNAME_lbr_NFENo = "lbr_NFENo";

	/** Set NFe No	  */
	public void setlbr_NFENo (String lbr_NFENo);

	/** Get NFe No	  */
	public String getlbr_NFENo();

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

    /** Column name lbr_NFType */
    public static final String COLUMNNAME_lbr_NFType = "lbr_NFType";

	/** Set NF Type.
	  * Nota Fiscal Type
	  */
	public void setlbr_NFType (String lbr_NFType);

	/** Get NF Type.
	  * Nota Fiscal Type
	  */
	public String getlbr_NFType();

    /** Column name lbr_NFeDesc */
    public static final String COLUMNNAME_lbr_NFeDesc = "lbr_NFeDesc";

	/** Set NFe Description.
	  * Description of NFe
	  */
	public void setlbr_NFeDesc (String lbr_NFeDesc);

	/** Get NFe Description.
	  * Description of NFe
	  */
	public String getlbr_NFeDesc();

    /** Column name lbr_NFeEnv */
    public static final String COLUMNNAME_lbr_NFeEnv = "lbr_NFeEnv";

	/** Set NFe Environment	  */
	public void setlbr_NFeEnv (String lbr_NFeEnv);

	/** Get NFe Environment	  */
	public String getlbr_NFeEnv();

    /** Column name lbr_NFeID */
    public static final String COLUMNNAME_lbr_NFeID = "lbr_NFeID";

	/** Set NFe ID.
	  * Identification of NFe
	  */
	public void setlbr_NFeID (String lbr_NFeID);

	/** Get NFe ID.
	  * Identification of NFe
	  */
	public String getlbr_NFeID();

    /** Column name lbr_NFeProt */
    public static final String COLUMNNAME_lbr_NFeProt = "lbr_NFeProt";

	/** Set NFe Protocol	  */
	public void setlbr_NFeProt (String lbr_NFeProt);

	/** Get NFe Protocol	  */
	public String getlbr_NFeProt();

    /** Column name lbr_NFeStatus */
    public static final String COLUMNNAME_lbr_NFeStatus = "lbr_NFeStatus";

	/** Set NFe Status.
	  * Status of NFe
	  */
	public void setlbr_NFeStatus (String lbr_NFeStatus);

	/** Get NFe Status.
	  * Status of NFe
	  */
	public String getlbr_NFeStatus();

    /** Column name lbr_NetWeight */
    public static final String COLUMNNAME_lbr_NetWeight = "lbr_NetWeight";

	/** Set Net Weight.
	  * Defines the Net Weight
	  */
	public void setlbr_NetWeight (BigDecimal lbr_NetWeight);

	/** Get Net Weight.
	  * Defines the Net Weight
	  */
	public BigDecimal getlbr_NetWeight();

    /** Column name lbr_OrgAddress1 */
    public static final String COLUMNNAME_lbr_OrgAddress1 = "lbr_OrgAddress1";

	/** Set Organization Address 1.
	  * The issuer organization address 1
	  */
	public void setlbr_OrgAddress1 (String lbr_OrgAddress1);

	/** Get Organization Address 1.
	  * The issuer organization address 1
	  */
	public String getlbr_OrgAddress1();

    /** Column name lbr_OrgAddress2 */
    public static final String COLUMNNAME_lbr_OrgAddress2 = "lbr_OrgAddress2";

	/** Set Organization Address 2.
	  * The issuer organization address 2
	  */
	public void setlbr_OrgAddress2 (String lbr_OrgAddress2);

	/** Get Organization Address 2.
	  * The issuer organization address 2
	  */
	public String getlbr_OrgAddress2();

    /** Column name lbr_OrgAddress3 */
    public static final String COLUMNNAME_lbr_OrgAddress3 = "lbr_OrgAddress3";

	/** Set Organization Address 3.
	  * The issuer organization address 3
	  */
	public void setlbr_OrgAddress3 (String lbr_OrgAddress3);

	/** Get Organization Address 3.
	  * The issuer organization address 3
	  */
	public String getlbr_OrgAddress3();

    /** Column name lbr_OrgAddress4 */
    public static final String COLUMNNAME_lbr_OrgAddress4 = "lbr_OrgAddress4";

	/** Set Organization Address 4.
	  * The issuer organization address 4
	  */
	public void setlbr_OrgAddress4 (String lbr_OrgAddress4);

	/** Get Organization Address 4.
	  * The issuer organization address 4
	  */
	public String getlbr_OrgAddress4();

    /** Column name lbr_OrgCCM */
    public static final String COLUMNNAME_lbr_OrgCCM = "lbr_OrgCCM";

	/** Set Organization CCM.
	  * The Organization CCM
	  */
	public void setlbr_OrgCCM (String lbr_OrgCCM);

	/** Get Organization CCM.
	  * The Organization CCM
	  */
	public String getlbr_OrgCCM();

    /** Column name lbr_OrgCity */
    public static final String COLUMNNAME_lbr_OrgCity = "lbr_OrgCity";

	/** Set Organization City.
	  * The City of the Organization
	  */
	public void setlbr_OrgCity (String lbr_OrgCity);

	/** Get Organization City.
	  * The City of the Organization
	  */
	public String getlbr_OrgCity();

    /** Column name lbr_OrgCountry */
    public static final String COLUMNNAME_lbr_OrgCountry = "lbr_OrgCountry";

	/** Set Organization Country.
	  * The Country of the Organization
	  */
	public void setlbr_OrgCountry (String lbr_OrgCountry);

	/** Get Organization Country.
	  * The Country of the Organization
	  */
	public String getlbr_OrgCountry();

    /** Column name lbr_OrgName */
    public static final String COLUMNNAME_lbr_OrgName = "lbr_OrgName";

	/** Set Organization Name.
	  * The Name of the Organization
	  */
	public void setlbr_OrgName (String lbr_OrgName);

	/** Get Organization Name.
	  * The Name of the Organization
	  */
	public String getlbr_OrgName();

    /** Column name lbr_OrgPhone */
    public static final String COLUMNNAME_lbr_OrgPhone = "lbr_OrgPhone";

	/** Set Organization Phone.
	  * The Organization Phone
	  */
	public void setlbr_OrgPhone (String lbr_OrgPhone);

	/** Get Organization Phone.
	  * The Organization Phone
	  */
	public String getlbr_OrgPhone();

    /** Column name lbr_OrgPostal */
    public static final String COLUMNNAME_lbr_OrgPostal = "lbr_OrgPostal";

	/** Set Organization Postal Code.
	  * The Postal Code of the Organization
	  */
	public void setlbr_OrgPostal (String lbr_OrgPostal);

	/** Get Organization Postal Code.
	  * The Postal Code of the Organization
	  */
	public String getlbr_OrgPostal();

    /** Column name lbr_OrgRegion */
    public static final String COLUMNNAME_lbr_OrgRegion = "lbr_OrgRegion";

	/** Set Organization Region.
	  * The Region of the Organization
	  */
	public void setlbr_OrgRegion (String lbr_OrgRegion);

	/** Get Organization Region.
	  * The Region of the Organization
	  */
	public String getlbr_OrgRegion();

    /** Column name lbr_PackingType */
    public static final String COLUMNNAME_lbr_PackingType = "lbr_PackingType";

	/** Set Packing Type.
	  * Defines the Packing Type
	  */
	public void setlbr_PackingType (String lbr_PackingType);

	/** Get Packing Type.
	  * Defines the Packing Type
	  */
	public String getlbr_PackingType();

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

    /** Column name lbr_ProcCancelNF */
    public static final String COLUMNNAME_lbr_ProcCancelNF = "lbr_ProcCancelNF";

	/** Set Process Cancel Nota Fiscal.
	  * Process to Cancel Nota Fiscal
	  */
	public void setlbr_ProcCancelNF (String lbr_ProcCancelNF);

	/** Get Process Cancel Nota Fiscal.
	  * Process to Cancel Nota Fiscal
	  */
	public String getlbr_ProcCancelNF();

    /** Column name lbr_RPSStatus */
    public static final String COLUMNNAME_lbr_RPSStatus = "lbr_RPSStatus";

	/** Set RPS Status	  */
	public void setlbr_RPSStatus (String lbr_RPSStatus);

	/** Get RPS Status	  */
	public String getlbr_RPSStatus();

    /** Column name lbr_ServiceTotalAmt */
    public static final String COLUMNNAME_lbr_ServiceTotalAmt = "lbr_ServiceTotalAmt";

	/** Set Service Total Amount.
	  * Defines the Service Total Amount
	  */
	public void setlbr_ServiceTotalAmt (BigDecimal lbr_ServiceTotalAmt);

	/** Get Service Total Amount.
	  * Defines the Service Total Amount
	  */
	public BigDecimal getlbr_ServiceTotalAmt();

    /** Column name lbr_ShipNote */
    public static final String COLUMNNAME_lbr_ShipNote = "lbr_ShipNote";

	/** Set Shipment Note.
	  * Extra Shipment Information 
	  */
	public void setlbr_ShipNote (String lbr_ShipNote);

	/** Get Shipment Note.
	  * Extra Shipment Information 
	  */
	public String getlbr_ShipNote();

    /** Column name lbr_Ship_Location_ID */
    public static final String COLUMNNAME_lbr_Ship_Location_ID = "lbr_Ship_Location_ID";

	/** Set Ship Location.
	  * The Shipment Location ID
	  */
	public void setlbr_Ship_Location_ID (int lbr_Ship_Location_ID);

	/** Get Ship Location.
	  * The Shipment Location ID
	  */
	public int getlbr_Ship_Location_ID();

	public org.compiere.model.I_C_BPartner_Location getlbr_Ship_Location() throws RuntimeException;

    /** Column name lbr_TimeInOut */
    public static final String COLUMNNAME_lbr_TimeInOut = "lbr_TimeInOut";

	/** Set Time InOut.
	  * Defines the InOut Time
	  */
	public void setlbr_TimeInOut (String lbr_TimeInOut);

	/** Get Time InOut.
	  * Defines the InOut Time
	  */
	public String getlbr_TimeInOut();

    /** Column name lbr_TotalCIF */
    public static final String COLUMNNAME_lbr_TotalCIF = "lbr_TotalCIF";

	/** Set CIF Total.
	  * CIF Total for all the document
	  */
	public void setlbr_TotalCIF (BigDecimal lbr_TotalCIF);

	/** Get CIF Total.
	  * CIF Total for all the document
	  */
	public BigDecimal getlbr_TotalCIF();

    /** Column name lbr_TotalSISCOMEX */
    public static final String COLUMNNAME_lbr_TotalSISCOMEX = "lbr_TotalSISCOMEX";

	/** Set SISCOMEX Total.
	  * SISCOMEX Total for all the document
	  */
	public void setlbr_TotalSISCOMEX (BigDecimal lbr_TotalSISCOMEX);

	/** Get SISCOMEX Total.
	  * SISCOMEX Total for all the document
	  */
	public BigDecimal getlbr_TotalSISCOMEX();

    /** Column name lbr_TransactionType */
    public static final String COLUMNNAME_lbr_TransactionType = "lbr_TransactionType";

	/** Set Transaction Type.
	  * Defines the Transaction Type
	  */
	public void setlbr_TransactionType (String lbr_TransactionType);

	/** Get Transaction Type.
	  * Defines the Transaction Type
	  */
	public String getlbr_TransactionType();

    /** Column name lbr_vTotTrib */
    public static final String COLUMNNAME_lbr_vTotTrib = "lbr_vTotTrib";

	/** Set Total de Tributo.
	  * Valor aproximado total de tributos federais, estaduais e municipais.
	  */
	public void setlbr_vTotTrib (BigDecimal lbr_vTotTrib);

	/** Get Total de Tributo.
	  * Valor aproximado total de tributos federais, estaduais e municipais.
	  */
	public BigDecimal getlbr_vTotTrib();
}
