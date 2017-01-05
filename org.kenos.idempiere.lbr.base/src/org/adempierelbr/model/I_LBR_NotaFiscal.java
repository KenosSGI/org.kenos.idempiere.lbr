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
 *  @version Release 4.1
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

    /** Column name LBR_BPCityCode */
    public static final String COLUMNNAME_LBR_BPCityCode = "LBR_BPCityCode";

	/** Set Cod. Cidade	  */
	public void setLBR_BPCityCode (int LBR_BPCityCode);

	/** Get Cod. Cidade	  */
	public int getLBR_BPCityCode();

    /** Column name LBR_BPCountry */
    public static final String COLUMNNAME_LBR_BPCountry = "LBR_BPCountry";

	/** Set BP Country.
	  * BP Country - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPCountry (String LBR_BPCountry);

	/** Get BP Country.
	  * BP Country - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPCountry();

    /** Column name LBR_BPCountryCode */
    public static final String COLUMNNAME_LBR_BPCountryCode = "LBR_BPCountryCode";

	/** Set Country Code.
	  * Country Code used for issue Nota Fiscal
	  */
	public void setLBR_BPCountryCode (String LBR_BPCountryCode);

	/** Get Country Code.
	  * Country Code used for issue Nota Fiscal
	  */
	public String getLBR_BPCountryCode();

    /** Column name LBR_BPDeliveryAddress1 */
    public static final String COLUMNNAME_LBR_BPDeliveryAddress1 = "LBR_BPDeliveryAddress1";

	/** Set BP Delivery Address 1.
	  * BP Delivery Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPDeliveryAddress1 (String LBR_BPDeliveryAddress1);

	/** Get BP Delivery Address 1.
	  * BP Delivery Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPDeliveryAddress1();

    /** Column name LBR_BPDeliveryAddress2 */
    public static final String COLUMNNAME_LBR_BPDeliveryAddress2 = "LBR_BPDeliveryAddress2";

	/** Set BP Delivery Address 2.
	  * BP Delivery Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPDeliveryAddress2 (String LBR_BPDeliveryAddress2);

	/** Get BP Delivery Address 2.
	  * BP Delivery Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPDeliveryAddress2();

    /** Column name LBR_BPDeliveryAddress3 */
    public static final String COLUMNNAME_LBR_BPDeliveryAddress3 = "LBR_BPDeliveryAddress3";

	/** Set BP Delivery Address 3.
	  * BP Delivery Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPDeliveryAddress3 (String LBR_BPDeliveryAddress3);

	/** Get BP Delivery Address 3.
	  * BP Delivery Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPDeliveryAddress3();

    /** Column name LBR_BPDeliveryAddress4 */
    public static final String COLUMNNAME_LBR_BPDeliveryAddress4 = "LBR_BPDeliveryAddress4";

	/** Set BP Delivery Address 4.
	  * BP Delivery Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPDeliveryAddress4 (String LBR_BPDeliveryAddress4);

	/** Get BP Delivery Address 4.
	  * BP Delivery Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPDeliveryAddress4();

    /** Column name LBR_BPDeliveryCNPJ */
    public static final String COLUMNNAME_LBR_BPDeliveryCNPJ = "LBR_BPDeliveryCNPJ";

	/** Set BP Delivery CNPJ.
	  * BP Delivery CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPDeliveryCNPJ (String LBR_BPDeliveryCNPJ);

	/** Get BP Delivery CNPJ.
	  * BP Delivery CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPDeliveryCNPJ();

    /** Column name LBR_BPDeliveryCity */
    public static final String COLUMNNAME_LBR_BPDeliveryCity = "LBR_BPDeliveryCity";

	/** Set BP Delivery City.
	  * BP Delivery City - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPDeliveryCity (String LBR_BPDeliveryCity);

	/** Get BP Delivery City.
	  * BP Delivery City - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPDeliveryCity();

    /** Column name LBR_BPDeliveryCityCode */
    public static final String COLUMNNAME_LBR_BPDeliveryCityCode = "LBR_BPDeliveryCityCode";

	/** Set Cod. Cidade	  */
	public void setLBR_BPDeliveryCityCode (int LBR_BPDeliveryCityCode);

	/** Get Cod. Cidade	  */
	public int getLBR_BPDeliveryCityCode();

    /** Column name LBR_BPDeliveryCountry */
    public static final String COLUMNNAME_LBR_BPDeliveryCountry = "LBR_BPDeliveryCountry";

	/** Set BP Delivery Country.
	  * BP Delivery Country - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPDeliveryCountry (String LBR_BPDeliveryCountry);

	/** Get BP Delivery Country.
	  * BP Delivery Country - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPDeliveryCountry();

    /** Column name LBR_BPDeliveryIE */
    public static final String COLUMNNAME_LBR_BPDeliveryIE = "LBR_BPDeliveryIE";

	/** Set BP Delivery IE.
	  * BP Delivery IE - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPDeliveryIE (String LBR_BPDeliveryIE);

	/** Get BP Delivery IE.
	  * BP Delivery IE - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPDeliveryIE();

    /** Column name LBR_BPDeliveryPostal */
    public static final String COLUMNNAME_LBR_BPDeliveryPostal = "LBR_BPDeliveryPostal";

	/** Set BP Delivery Postal.
	  * BP Delivery Postal - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPDeliveryPostal (String LBR_BPDeliveryPostal);

	/** Get BP Delivery Postal.
	  * BP Delivery Postal - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPDeliveryPostal();

    /** Column name LBR_BPDeliveryRegion */
    public static final String COLUMNNAME_LBR_BPDeliveryRegion = "LBR_BPDeliveryRegion";

	/** Set BP DeliveryRegion.
	  * BP DeliveryRegion - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPDeliveryRegion (String LBR_BPDeliveryRegion);

	/** Get BP DeliveryRegion.
	  * BP DeliveryRegion - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPDeliveryRegion();

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

    /** Column name LBR_BPInvoiceAddress1 */
    public static final String COLUMNNAME_LBR_BPInvoiceAddress1 = "LBR_BPInvoiceAddress1";

	/** Set BP Invoice Address 1.
	  * BP Invoice Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPInvoiceAddress1 (String LBR_BPInvoiceAddress1);

	/** Get BP Invoice Address 1.
	  * BP Invoice Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPInvoiceAddress1();

    /** Column name LBR_BPInvoiceAddress2 */
    public static final String COLUMNNAME_LBR_BPInvoiceAddress2 = "LBR_BPInvoiceAddress2";

	/** Set BP Invoice Address 2.
	  * BP Invoice Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPInvoiceAddress2 (String LBR_BPInvoiceAddress2);

	/** Get BP Invoice Address 2.
	  * BP Invoice Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPInvoiceAddress2();

    /** Column name LBR_BPInvoiceAddress3 */
    public static final String COLUMNNAME_LBR_BPInvoiceAddress3 = "LBR_BPInvoiceAddress3";

	/** Set BP Invoice Address 3.
	  * BP Invoice Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPInvoiceAddress3 (String LBR_BPInvoiceAddress3);

	/** Get BP Invoice Address 3.
	  * BP Invoice Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPInvoiceAddress3();

    /** Column name LBR_BPInvoiceAddress4 */
    public static final String COLUMNNAME_LBR_BPInvoiceAddress4 = "LBR_BPInvoiceAddress4";

	/** Set BP Invoice Address 4.
	  * BP Invoice Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPInvoiceAddress4 (String LBR_BPInvoiceAddress4);

	/** Get BP Invoice Address 4.
	  * BP Invoice Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPInvoiceAddress4();

    /** Column name LBR_BPInvoiceCNPJ */
    public static final String COLUMNNAME_LBR_BPInvoiceCNPJ = "LBR_BPInvoiceCNPJ";

	/** Set BP Invoice CNPJ.
	  * BP Invoice CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPInvoiceCNPJ (String LBR_BPInvoiceCNPJ);

	/** Get BP Invoice CNPJ.
	  * BP Invoice CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPInvoiceCNPJ();

    /** Column name LBR_BPInvoiceCity */
    public static final String COLUMNNAME_LBR_BPInvoiceCity = "LBR_BPInvoiceCity";

	/** Set BP Invoice City.
	  * BP Invoice City - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPInvoiceCity (String LBR_BPInvoiceCity);

	/** Get BP Invoice City.
	  * BP Invoice City - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPInvoiceCity();

    /** Column name LBR_BPInvoiceCountry */
    public static final String COLUMNNAME_LBR_BPInvoiceCountry = "LBR_BPInvoiceCountry";

	/** Set BP Invoice Country.
	  * BP Invoice Country - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPInvoiceCountry (String LBR_BPInvoiceCountry);

	/** Get BP Invoice Country.
	  * BP Invoice Country - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPInvoiceCountry();

    /** Column name LBR_BPInvoiceIE */
    public static final String COLUMNNAME_LBR_BPInvoiceIE = "LBR_BPInvoiceIE";

	/** Set BP Invoice IE.
	  * BP Invoice IE - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPInvoiceIE (String LBR_BPInvoiceIE);

	/** Get BP Invoice IE.
	  * BP Invoice IE - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPInvoiceIE();

    /** Column name LBR_BPInvoicePostal */
    public static final String COLUMNNAME_LBR_BPInvoicePostal = "LBR_BPInvoicePostal";

	/** Set BP Invoice Postal.
	  * BP Invoice Postal - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPInvoicePostal (String LBR_BPInvoicePostal);

	/** Get BP Invoice Postal.
	  * BP Invoice Postal - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPInvoicePostal();

    /** Column name LBR_BPInvoiceRegion */
    public static final String COLUMNNAME_LBR_BPInvoiceRegion = "LBR_BPInvoiceRegion";

	/** Set BP InvoiceRegion.
	  * BP InvoiceRegion - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPInvoiceRegion (String LBR_BPInvoiceRegion);

	/** Get BP InvoiceRegion.
	  * BP InvoiceRegion - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPInvoiceRegion();

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

    /** Column name LBR_BPShipperAddress */
    public static final String COLUMNNAME_LBR_BPShipperAddress = "LBR_BPShipperAddress";

	/** Set BP Shipper Address.
	  * BP Shipper Address on a String
	  */
	public void setLBR_BPShipperAddress (String LBR_BPShipperAddress);

	/** Get BP Shipper Address.
	  * BP Shipper Address on a String
	  */
	public String getLBR_BPShipperAddress();

    /** Column name LBR_BPShipperAddress1 */
    public static final String COLUMNNAME_LBR_BPShipperAddress1 = "LBR_BPShipperAddress1";

	/** Set BP Shipper Address 1.
	  * BP Shipper Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPShipperAddress1 (String LBR_BPShipperAddress1);

	/** Get BP Shipper Address 1.
	  * BP Shipper Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPShipperAddress1();

    /** Column name LBR_BPShipperAddress2 */
    public static final String COLUMNNAME_LBR_BPShipperAddress2 = "LBR_BPShipperAddress2";

	/** Set BP Shipper Address 2.
	  * BP Shipper Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPShipperAddress2 (String LBR_BPShipperAddress2);

	/** Get BP Shipper Address 2.
	  * BP Shipper Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPShipperAddress2();

    /** Column name LBR_BPShipperAddress3 */
    public static final String COLUMNNAME_LBR_BPShipperAddress3 = "LBR_BPShipperAddress3";

	/** Set BP Shipper Address 3.
	  * BP Shipper Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPShipperAddress3 (String LBR_BPShipperAddress3);

	/** Get BP Shipper Address 3.
	  * BP Shipper Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPShipperAddress3();

    /** Column name LBR_BPShipperAddress4 */
    public static final String COLUMNNAME_LBR_BPShipperAddress4 = "LBR_BPShipperAddress4";

	/** Set BP Shipper Address 4.
	  * BP Shipper Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPShipperAddress4 (String LBR_BPShipperAddress4);

	/** Get BP Shipper Address 4.
	  * BP Shipper Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPShipperAddress4();

    /** Column name LBR_BPShipperCNPJ */
    public static final String COLUMNNAME_LBR_BPShipperCNPJ = "LBR_BPShipperCNPJ";

	/** Set BP Shipper CNPJ.
	  * BP Shipper CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPShipperCNPJ (String LBR_BPShipperCNPJ);

	/** Get BP Shipper CNPJ.
	  * BP Shipper CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPShipperCNPJ();

    /** Column name LBR_BPShipperCity */
    public static final String COLUMNNAME_LBR_BPShipperCity = "LBR_BPShipperCity";

	/** Set BP Shipper City.
	  * BP Shipper City - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPShipperCity (String LBR_BPShipperCity);

	/** Get BP Shipper City.
	  * BP Shipper City - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPShipperCity();

    /** Column name LBR_BPShipperCountry */
    public static final String COLUMNNAME_LBR_BPShipperCountry = "LBR_BPShipperCountry";

	/** Set BP Shipper Country.
	  * BP Shipper Country - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPShipperCountry (String LBR_BPShipperCountry);

	/** Get BP Shipper Country.
	  * BP Shipper Country - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPShipperCountry();

    /** Column name LBR_BPShipperIE */
    public static final String COLUMNNAME_LBR_BPShipperIE = "LBR_BPShipperIE";

	/** Set BP Shipper IE.
	  * BP Shipper IE - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPShipperIE (String LBR_BPShipperIE);

	/** Get BP Shipper IE.
	  * BP Shipper IE - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPShipperIE();

    /** Column name LBR_BPShipperLicensePlate */
    public static final String COLUMNNAME_LBR_BPShipperLicensePlate = "LBR_BPShipperLicensePlate";

	/** Set BP Shipper License Plate.
	  * Defines the BP Shipper License Plate
	  */
	public void setLBR_BPShipperLicensePlate (String LBR_BPShipperLicensePlate);

	/** Get BP Shipper License Plate.
	  * Defines the BP Shipper License Plate
	  */
	public String getLBR_BPShipperLicensePlate();

    /** Column name LBR_BPShipperName */
    public static final String COLUMNNAME_LBR_BPShipperName = "LBR_BPShipperName";

	/** Set BPShipper Name.
	  * Defines the Shipper Name
	  */
	public void setLBR_BPShipperName (String LBR_BPShipperName);

	/** Get BPShipper Name.
	  * Defines the Shipper Name
	  */
	public String getLBR_BPShipperName();

    /** Column name LBR_BPShipperPostal */
    public static final String COLUMNNAME_LBR_BPShipperPostal = "LBR_BPShipperPostal";

	/** Set BP Shipper Postal.
	  * BP Shipper Postal - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPShipperPostal (String LBR_BPShipperPostal);

	/** Get BP Shipper Postal.
	  * BP Shipper Postal - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPShipperPostal();

    /** Column name LBR_BPShipperRegion */
    public static final String COLUMNNAME_LBR_BPShipperRegion = "LBR_BPShipperRegion";

	/** Set BP ShipperRegion.
	  * BP ShipperRegion - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPShipperRegion (String LBR_BPShipperRegion);

	/** Get BP ShipperRegion.
	  * BP ShipperRegion - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPShipperRegion();

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

    /** Column name LBR_BPTypeBR */
    public static final String COLUMNNAME_LBR_BPTypeBR = "LBR_BPTypeBR";

	/** Set Brazilian BP Type.
	  * Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)
	  */
	public void setLBR_BPTypeBR (String LBR_BPTypeBR);

	/** Get Brazilian BP Type.
	  * Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)
	  */
	public String getLBR_BPTypeBR();

    /** Column name LBR_Barcode1 */
    public static final String COLUMNNAME_LBR_Barcode1 = "LBR_Barcode1";

	/** Set Barcode 1.
	  * First Barcode of the Nota Fiscal
	  */
	public void setLBR_Barcode1 (String LBR_Barcode1);

	/** Get Barcode 1.
	  * First Barcode of the Nota Fiscal
	  */
	public String getLBR_Barcode1();

    /** Column name LBR_Barcode2 */
    public static final String COLUMNNAME_LBR_Barcode2 = "LBR_Barcode2";

	/** Set Barcode 2.
	  * Second Barcode of the Nota Fiscal
	  */
	public void setLBR_Barcode2 (String LBR_Barcode2);

	/** Get Barcode 2.
	  * Second Barcode of the Nota Fiscal
	  */
	public String getLBR_Barcode2();

    /** Column name LBR_BillNote */
    public static final String COLUMNNAME_LBR_BillNote = "LBR_BillNote";

	/** Set Bill Note.
	  * Bill Note
	  */
	public void setLBR_BillNote (String LBR_BillNote);

	/** Get Bill Note.
	  * Bill Note
	  */
	public String getLBR_BillNote();

    /** Column name LBR_Brand */
    public static final String COLUMNNAME_LBR_Brand = "LBR_Brand";

	/** Set Brand.
	  * Brand transport volumes
	  */
	public void setLBR_Brand (String LBR_Brand);

	/** Get Brand.
	  * Brand transport volumes
	  */
	public String getLBR_Brand();

    /** Column name LBR_CFOPNote */
    public static final String COLUMNNAME_LBR_CFOPNote = "LBR_CFOPNote";

	/** Set CFOP Note.
	  * Defines the CFOP Note
	  */
	public void setLBR_CFOPNote (String LBR_CFOPNote);

	/** Get CFOP Note.
	  * Defines the CFOP Note
	  */
	public String getLBR_CFOPNote();

    /** Column name LBR_CFOPReference */
    public static final String COLUMNNAME_LBR_CFOPReference = "LBR_CFOPReference";

	/** Set CFOP Reference.
	  * Defines the CFOP Reference
	  */
	public void setLBR_CFOPReference (String LBR_CFOPReference);

	/** Get CFOP Reference.
	  * Defines the CFOP Reference
	  */
	public String getLBR_CFOPReference();

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

    /** Column name LBR_DANFEFormat */
    public static final String COLUMNNAME_LBR_DANFEFormat = "LBR_DANFEFormat";

	/** Set DANFE Format	  */
	public void setLBR_DANFEFormat (String LBR_DANFEFormat);

	/** Get DANFE Format	  */
	public String getLBR_DANFEFormat();

    /** Column name LBR_DE_ID */
    public static final String COLUMNNAME_LBR_DE_ID = "LBR_DE_ID";

	/** Set DE	  */
	public void setLBR_DE_ID (int LBR_DE_ID);

	/** Get DE	  */
	public int getLBR_DE_ID();

	public org.adempierelbr.model.I_LBR_DE getLBR_DE() throws RuntimeException;

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

    /** Column name LBR_DateScan */
    public static final String COLUMNNAME_LBR_DateScan = "LBR_DateScan";

	/** Set Data contingência	  */
	public void setLBR_DateScan (Timestamp LBR_DateScan);

	/** Get Data contingência	  */
	public Timestamp getLBR_DateScan();

    /** Column name LBR_Delivery_Location_ID */
    public static final String COLUMNNAME_LBR_Delivery_Location_ID = "LBR_Delivery_Location_ID";

	/** Set Delivery Location.
	  * The Delivery Location ID
	  */
	public void setLBR_Delivery_Location_ID (int LBR_Delivery_Location_ID);

	/** Get Delivery Location.
	  * The Delivery Location ID
	  */
	public int getLBR_Delivery_Location_ID();

	public org.compiere.model.I_C_BPartner_Location getLBR_Delivery_Location() throws RuntimeException;

    /** Column name LBR_DigestValue */
    public static final String COLUMNNAME_LBR_DigestValue = "LBR_DigestValue";

	/** Set Digest Value	  */
	public void setLBR_DigestValue (String LBR_DigestValue);

	/** Get Digest Value	  */
	public String getLBR_DigestValue();

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

    /** Column name LBR_FinNFe */
    public static final String COLUMNNAME_LBR_FinNFe = "LBR_FinNFe";

	/** Set Finalidade NFe.
	  * Define a Finalidade da NFe
	  */
	public void setLBR_FinNFe (String LBR_FinNFe);

	/** Get Finalidade NFe.
	  * Define a Finalidade da NFe
	  */
	public String getLBR_FinNFe();

    /** Column name LBR_FiscalOBS */
    public static final String COLUMNNAME_LBR_FiscalOBS = "LBR_FiscalOBS";

	/** Set Fiscal Obs..
	  * Fiscal Observation for the Fiscal Books
	  */
	public void setLBR_FiscalOBS (String LBR_FiscalOBS);

	/** Get Fiscal Obs..
	  * Fiscal Observation for the Fiscal Books
	  */
	public String getLBR_FiscalOBS();

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

    /** Column name LBR_GenerateNFeXML */
    public static final String COLUMNNAME_LBR_GenerateNFeXML = "LBR_GenerateNFeXML";

	/** Set Generate NFe XML	  */
	public void setLBR_GenerateNFeXML (String LBR_GenerateNFeXML);

	/** Get Generate NFe XML	  */
	public String getLBR_GenerateNFeXML();

    /** Column name LBR_GrossWeight */
    public static final String COLUMNNAME_LBR_GrossWeight = "LBR_GrossWeight";

	/** Set Gross Weight.
	  * Defines the Gross Weight
	  */
	public void setLBR_GrossWeight (BigDecimal LBR_GrossWeight);

	/** Get Gross Weight.
	  * Defines the Gross Weight
	  */
	public BigDecimal getLBR_GrossWeight();

    /** Column name LBR_HasOpenItems */
    public static final String COLUMNNAME_LBR_HasOpenItems = "LBR_HasOpenItems";

	/** Set Has Open Items.
	  * Identifies if this Document Has Open Items
	  */
	public void setLBR_HasOpenItems (boolean LBR_HasOpenItems);

	/** Get Has Open Items.
	  * Identifies if this Document Has Open Items
	  */
	public boolean isLBR_HasOpenItems();

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
	public void setLBR_IsOwnDocument (boolean LBR_IsOwnDocument);

	/** Get Is Own Document.
	  * Identifies this is an own document
	  */
	public boolean isLBR_IsOwnDocument();

    /** Column name LBR_MotivoCancel */
    public static final String COLUMNNAME_LBR_MotivoCancel = "LBR_MotivoCancel";

	/** Set Motivo do Cancelamento.
	  * Motivo do Cancelamento (Entre 15 e 255 caracteres)
	  */
	public void setLBR_MotivoCancel (String LBR_MotivoCancel);

	/** Get Motivo do Cancelamento.
	  * Motivo do Cancelamento (Entre 15 e 255 caracteres)
	  */
	public String getLBR_MotivoCancel();

    /** Column name LBR_MotivoScan */
    public static final String COLUMNNAME_LBR_MotivoScan = "LBR_MotivoScan";

	/** Set Motivo contingência	  */
	public void setLBR_MotivoScan (String LBR_MotivoScan);

	/** Get Motivo contingência	  */
	public String getLBR_MotivoScan();

    /** Column name LBR_NCMReference */
    public static final String COLUMNNAME_LBR_NCMReference = "LBR_NCMReference";

	/** Set NCM Reference.
	  * Defines the NCM Reference
	  */
	public void setLBR_NCMReference (String LBR_NCMReference);

	/** Get NCM Reference.
	  * Defines the NCM Reference
	  */
	public String getLBR_NCMReference();

    /** Column name LBR_NFENo */
    public static final String COLUMNNAME_LBR_NFENo = "LBR_NFENo";

	/** Set NFe No	  */
	public void setLBR_NFENo (String LBR_NFENo);

	/** Get NFe No	  */
	public String getLBR_NFENo();

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

    /** Column name LBR_NFType */
    public static final String COLUMNNAME_LBR_NFType = "LBR_NFType";

	/** Set NF Type.
	  * Nota Fiscal Type
	  */
	public void setLBR_NFType (String LBR_NFType);

	/** Get NF Type.
	  * Nota Fiscal Type
	  */
	public String getLBR_NFType();

    /** Column name LBR_NFeDesc */
    public static final String COLUMNNAME_LBR_NFeDesc = "LBR_NFeDesc";

	/** Set NFe Description.
	  * Description of NFe
	  */
	public void setLBR_NFeDesc (String LBR_NFeDesc);

	/** Get NFe Description.
	  * Description of NFe
	  */
	public String getLBR_NFeDesc();

    /** Column name LBR_NFeEnv */
    public static final String COLUMNNAME_LBR_NFeEnv = "LBR_NFeEnv";

	/** Set NFe Environment	  */
	public void setLBR_NFeEnv (String LBR_NFeEnv);

	/** Get NFe Environment	  */
	public String getLBR_NFeEnv();

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

    /** Column name LBR_NFeLot_ID */
    public static final String COLUMNNAME_LBR_NFeLot_ID = "LBR_NFeLot_ID";

	/** Set NFe Lot	  */
	public void setLBR_NFeLot_ID (int LBR_NFeLot_ID);

	/** Get NFe Lot	  */
	public int getLBR_NFeLot_ID();

	public org.adempierelbr.model.I_LBR_NFeLot getLBR_NFeLot() throws RuntimeException;

    /** Column name LBR_NFeProt */
    public static final String COLUMNNAME_LBR_NFeProt = "LBR_NFeProt";

	/** Set NFe Protocol	  */
	public void setLBR_NFeProt (String LBR_NFeProt);

	/** Get NFe Protocol	  */
	public String getLBR_NFeProt();

    /** Column name LBR_NFeStatus */
    public static final String COLUMNNAME_LBR_NFeStatus = "LBR_NFeStatus";

	/** Set NFe Status.
	  * Status of NFe
	  */
	public void setLBR_NFeStatus (String LBR_NFeStatus);

	/** Get NFe Status.
	  * Status of NFe
	  */
	public String getLBR_NFeStatus();

    /** Column name LBR_NetWeight */
    public static final String COLUMNNAME_LBR_NetWeight = "LBR_NetWeight";

	/** Set Net Weight.
	  * Defines the Net Weight
	  */
	public void setLBR_NetWeight (BigDecimal LBR_NetWeight);

	/** Get Net Weight.
	  * Defines the Net Weight
	  */
	public BigDecimal getLBR_NetWeight();

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

    /** Column name LBR_OrgCountry */
    public static final String COLUMNNAME_LBR_OrgCountry = "LBR_OrgCountry";

	/** Set Organization Country.
	  * The Country of the Organization
	  */
	public void setLBR_OrgCountry (String LBR_OrgCountry);

	/** Get Organization Country.
	  * The Country of the Organization
	  */
	public String getLBR_OrgCountry();

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

    /** Column name LBR_OtherChargesAmt */
    public static final String COLUMNNAME_LBR_OtherChargesAmt = "LBR_OtherChargesAmt";

	/** Set Other Charges Amount	  */
	public void setLBR_OtherChargesAmt (BigDecimal LBR_OtherChargesAmt);

	/** Get Other Charges Amount	  */
	public BigDecimal getLBR_OtherChargesAmt();

    /** Column name LBR_PackingType */
    public static final String COLUMNNAME_LBR_PackingType = "LBR_PackingType";

	/** Set Packing Type.
	  * Defines the Packing Type
	  */
	public void setLBR_PackingType (String LBR_PackingType);

	/** Get Packing Type.
	  * Defines the Packing Type
	  */
	public String getLBR_PackingType();

    /** Column name LBR_ProcCancelNF */
    public static final String COLUMNNAME_LBR_ProcCancelNF = "LBR_ProcCancelNF";

	/** Set Process Cancel Nota Fiscal.
	  * Process to Cancel Nota Fiscal
	  */
	public void setLBR_ProcCancelNF (String LBR_ProcCancelNF);

	/** Get Process Cancel Nota Fiscal.
	  * Process to Cancel Nota Fiscal
	  */
	public String getLBR_ProcCancelNF();

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

    /** Column name LBR_RPSStatus */
    public static final String COLUMNNAME_LBR_RPSStatus = "LBR_RPSStatus";

	/** Set RPS Status	  */
	public void setLBR_RPSStatus (String LBR_RPSStatus);

	/** Get RPS Status	  */
	public String getLBR_RPSStatus();

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

    /** Column name LBR_ServiceTotalAmt */
    public static final String COLUMNNAME_LBR_ServiceTotalAmt = "LBR_ServiceTotalAmt";

	/** Set Service Total Amount.
	  * Defines the Service Total Amount
	  */
	public void setLBR_ServiceTotalAmt (BigDecimal LBR_ServiceTotalAmt);

	/** Get Service Total Amount.
	  * Defines the Service Total Amount
	  */
	public BigDecimal getLBR_ServiceTotalAmt();

    /** Column name LBR_ShipNote */
    public static final String COLUMNNAME_LBR_ShipNote = "LBR_ShipNote";

	/** Set Shipment Note.
	  * Extra Shipment Information 
	  */
	public void setLBR_ShipNote (String LBR_ShipNote);

	/** Get Shipment Note.
	  * Extra Shipment Information 
	  */
	public String getLBR_ShipNote();

    /** Column name LBR_Ship_Location_ID */
    public static final String COLUMNNAME_LBR_Ship_Location_ID = "LBR_Ship_Location_ID";

	/** Set Ship Location.
	  * The Shipment Location ID
	  */
	public void setLBR_Ship_Location_ID (int LBR_Ship_Location_ID);

	/** Get Ship Location.
	  * The Shipment Location ID
	  */
	public int getLBR_Ship_Location_ID();

	public org.compiere.model.I_C_BPartner_Location getLBR_Ship_Location() throws RuntimeException;

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

    /** Column name LBR_TimeInOut */
    public static final String COLUMNNAME_LBR_TimeInOut = "LBR_TimeInOut";

	/** Set Time InOut.
	  * Defines the InOut Time
	  */
	public void setLBR_TimeInOut (String LBR_TimeInOut);

	/** Get Time InOut.
	  * Defines the InOut Time
	  */
	public String getLBR_TimeInOut();

    /** Column name LBR_TotalCIF */
    public static final String COLUMNNAME_LBR_TotalCIF = "LBR_TotalCIF";

	/** Set CIF Total.
	  * CIF Total for all the document
	  */
	public void setLBR_TotalCIF (BigDecimal LBR_TotalCIF);

	/** Get CIF Total.
	  * CIF Total for all the document
	  */
	public BigDecimal getLBR_TotalCIF();

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

    /** Column name LBR_TransactionType */
    public static final String COLUMNNAME_LBR_TransactionType = "LBR_TransactionType";

	/** Set Transaction Type.
	  * Defines the Transaction Type
	  */
	public void setLBR_TransactionType (String LBR_TransactionType);

	/** Get Transaction Type.
	  * Defines the Transaction Type
	  */
	public String getLBR_TransactionType();

    /** Column name LBR_vTotTrib */
    public static final String COLUMNNAME_LBR_vTotTrib = "LBR_vTotTrib";

	/** Set Total de Tributo.
	  * Valor aproximado total de tributos federais, estaduais e municipais.
	  */
	public void setLBR_vTotTrib (BigDecimal LBR_vTotTrib);

	/** Get Total de Tributo.
	  * Valor aproximado total de tributos federais, estaduais e municipais.
	  */
	public BigDecimal getLBR_vTotTrib();

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
}
