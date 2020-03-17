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

/** Generated Interface for LBR_BankSlip
 *  @author iDempiere (generated) 
 *  @version Release 6.2
 */
@SuppressWarnings("all")
public interface I_LBR_BankSlip 
{

    /** TableName=LBR_BankSlip */
    public static final String Table_Name = "LBR_BankSlip";

    /** AD_Table_ID=1120666 */
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

    /** Column name C_BankAccount_ID */
    public static final String COLUMNNAME_C_BankAccount_ID = "C_BankAccount_ID";

	/** Set Bank Account.
	  * Account at the Bank
	  */
	public void setC_BankAccount_ID (int C_BankAccount_ID);

	/** Get Bank Account.
	  * Account at the Bank
	  */
	public int getC_BankAccount_ID();

	public org.compiere.model.I_C_BankAccount getC_BankAccount() throws RuntimeException;

    /** Column name C_Bank_ID */
    public static final String COLUMNNAME_C_Bank_ID = "C_Bank_ID";

	/** Set Bank.
	  * Bank
	  */
	public void setC_Bank_ID (int C_Bank_ID);

	/** Get Bank.
	  * Bank
	  */
	public int getC_Bank_ID();

	public org.compiere.model.I_C_Bank getC_Bank() throws RuntimeException;

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

    /** Column name C_InvoicePaySchedule_ID */
    public static final String COLUMNNAME_C_InvoicePaySchedule_ID = "C_InvoicePaySchedule_ID";

	/** Set Invoice Payment Schedule.
	  * Invoice Payment Schedule
	  */
	public void setC_InvoicePaySchedule_ID (int C_InvoicePaySchedule_ID);

	/** Get Invoice Payment Schedule.
	  * Invoice Payment Schedule
	  */
	public int getC_InvoicePaySchedule_ID();

	public org.compiere.model.I_C_InvoicePaySchedule getC_InvoicePaySchedule() throws RuntimeException;

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

    /** Column name DateAcct */
    public static final String COLUMNNAME_DateAcct = "DateAcct";

	/** Set Account Date.
	  * Accounting Date
	  */
	public void setDateAcct (Timestamp DateAcct);

	/** Get Account Date.
	  * Accounting Date
	  */
	public Timestamp getDateAcct();

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

    /** Column name DueDate */
    public static final String COLUMNNAME_DueDate = "DueDate";

	/** Set Due Date.
	  * Date when the payment is due
	  */
	public void setDueDate (Timestamp DueDate);

	/** Get Due Date.
	  * Date when the payment is due
	  */
	public Timestamp getDueDate();

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

    /** Column name GuarantorBP_ID */
    public static final String COLUMNNAME_GuarantorBP_ID = "GuarantorBP_ID";

	/** Set Guarantor	  */
	public void setGuarantorBP_ID (int GuarantorBP_ID);

	/** Get Guarantor	  */
	public int getGuarantorBP_ID();

	public org.compiere.model.I_C_BPartner getGuarantorBP() throws RuntimeException;

    /** Column name GuarantorBP_Location_ID */
    public static final String COLUMNNAME_GuarantorBP_Location_ID = "GuarantorBP_Location_ID";

	/** Set Guarantor Location	  */
	public void setGuarantorBP_Location_ID (int GuarantorBP_Location_ID);

	/** Get Guarantor Location	  */
	public int getGuarantorBP_Location_ID();

	public org.compiere.model.I_C_BPartner_Location getGuarantorBP_Location() throws RuntimeException;

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

    /** Column name IsPaid */
    public static final String COLUMNNAME_IsPaid = "IsPaid";

	/** Set Paid.
	  * The document is paid
	  */
	public void setIsPaid (boolean IsPaid);

	/** Get Paid.
	  * The document is paid
	  */
	public boolean isPaid();

    /** Column name LBR_BankSlipContract_ID */
    public static final String COLUMNNAME_LBR_BankSlipContract_ID = "LBR_BankSlipContract_ID";

	/** Set Bank Slip Contract	  */
	public void setLBR_BankSlipContract_ID (int LBR_BankSlipContract_ID);

	/** Get Bank Slip Contract	  */
	public int getLBR_BankSlipContract_ID();

	public org.adempierelbr.model.I_LBR_BankSlipContract getLBR_BankSlipContract() throws RuntimeException;

    /** Column name LBR_BankSlipCurrency */
    public static final String COLUMNNAME_LBR_BankSlipCurrency = "LBR_BankSlipCurrency";

	/** Set Bank Slip Currency	  */
	public void setLBR_BankSlipCurrency (String LBR_BankSlipCurrency);

	/** Get Bank Slip Currency	  */
	public String getLBR_BankSlipCurrency();

    /** Column name LBR_BankSlipFold_ID */
    public static final String COLUMNNAME_LBR_BankSlipFold_ID = "LBR_BankSlipFold_ID";

	/** Set Fold	  */
	public void setLBR_BankSlipFold_ID (int LBR_BankSlipFold_ID);

	/** Get Fold	  */
	public int getLBR_BankSlipFold_ID();

	public org.adempierelbr.model.I_LBR_BankSlipFold getLBR_BankSlipFold() throws RuntimeException;

    /** Column name LBR_BankSlipKind_ID */
    public static final String COLUMNNAME_LBR_BankSlipKind_ID = "LBR_BankSlipKind_ID";

	/** Set Bank Slip Kind	  */
	public void setLBR_BankSlipKind_ID (int LBR_BankSlipKind_ID);

	/** Get Bank Slip Kind	  */
	public int getLBR_BankSlipKind_ID();

	public org.adempierelbr.model.I_LBR_BankSlipKind getLBR_BankSlipKind() throws RuntimeException;

    /** Column name LBR_BankSlipLayout_ID */
    public static final String COLUMNNAME_LBR_BankSlipLayout_ID = "LBR_BankSlipLayout_ID";

	/** Set Bank Slip Layout	  */
	public void setLBR_BankSlipLayout_ID (int LBR_BankSlipLayout_ID);

	/** Get Bank Slip Layout	  */
	public int getLBR_BankSlipLayout_ID();

	public org.adempierelbr.model.I_LBR_BankSlipLayout getLBR_BankSlipLayout() throws RuntimeException;

    /** Column name LBR_BankSlip_ID */
    public static final String COLUMNNAME_LBR_BankSlip_ID = "LBR_BankSlip_ID";

	/** Set Bank Slip	  */
	public void setLBR_BankSlip_ID (int LBR_BankSlip_ID);

	/** Get Bank Slip	  */
	public int getLBR_BankSlip_ID();

    /** Column name LBR_BankSlip_UU */
    public static final String COLUMNNAME_LBR_BankSlip_UU = "LBR_BankSlip_UU";

	/** Set LBR_BankSlip_UU	  */
	public void setLBR_BankSlip_UU (String LBR_BankSlip_UU);

	/** Get LBR_BankSlip_UU	  */
	public String getLBR_BankSlip_UU();

    /** Column name LBR_DirectDebitNotice */
    public static final String COLUMNNAME_LBR_DirectDebitNotice = "LBR_DirectDebitNotice";

	/** Set Direct Debit Notice	  */
	public void setLBR_DirectDebitNotice (String LBR_DirectDebitNotice);

	/** Get Direct Debit Notice	  */
	public String getLBR_DirectDebitNotice();

    /** Column name LBR_Discount1Date */
    public static final String COLUMNNAME_LBR_Discount1Date = "LBR_Discount1Date";

	/** Set Discount 1 Date	  */
	public void setLBR_Discount1Date (Timestamp LBR_Discount1Date);

	/** Get Discount 1 Date	  */
	public Timestamp getLBR_Discount1Date();

    /** Column name LBR_Discount1Type */
    public static final String COLUMNNAME_LBR_Discount1Type = "LBR_Discount1Type";

	/** Set Discount 1 Type	  */
	public void setLBR_Discount1Type (String LBR_Discount1Type);

	/** Get Discount 1 Type	  */
	public String getLBR_Discount1Type();

    /** Column name LBR_Discount1Value */
    public static final String COLUMNNAME_LBR_Discount1Value = "LBR_Discount1Value";

	/** Set Discount 1 Value	  */
	public void setLBR_Discount1Value (BigDecimal LBR_Discount1Value);

	/** Get Discount 1 Value	  */
	public BigDecimal getLBR_Discount1Value();

    /** Column name LBR_Discount2Date */
    public static final String COLUMNNAME_LBR_Discount2Date = "LBR_Discount2Date";

	/** Set Discount 2 Date	  */
	public void setLBR_Discount2Date (Timestamp LBR_Discount2Date);

	/** Get Discount 2 Date	  */
	public Timestamp getLBR_Discount2Date();

    /** Column name LBR_Discount2Type */
    public static final String COLUMNNAME_LBR_Discount2Type = "LBR_Discount2Type";

	/** Set Discount 2 Type	  */
	public void setLBR_Discount2Type (String LBR_Discount2Type);

	/** Get Discount 2 Type	  */
	public String getLBR_Discount2Type();

    /** Column name LBR_Discount2Value */
    public static final String COLUMNNAME_LBR_Discount2Value = "LBR_Discount2Value";

	/** Set Discount 2 Value	  */
	public void setLBR_Discount2Value (BigDecimal LBR_Discount2Value);

	/** Get Discount 2 Value	  */
	public BigDecimal getLBR_Discount2Value();

    /** Column name LBR_Discount3Date */
    public static final String COLUMNNAME_LBR_Discount3Date = "LBR_Discount3Date";

	/** Set Discount 3 Date	  */
	public void setLBR_Discount3Date (Timestamp LBR_Discount3Date);

	/** Get Discount 3 Date	  */
	public Timestamp getLBR_Discount3Date();

    /** Column name LBR_Discount3Type */
    public static final String COLUMNNAME_LBR_Discount3Type = "LBR_Discount3Type";

	/** Set Discount 3 Type	  */
	public void setLBR_Discount3Type (String LBR_Discount3Type);

	/** Get Discount 3 Type	  */
	public String getLBR_Discount3Type();

    /** Column name LBR_Discount3Value */
    public static final String COLUMNNAME_LBR_Discount3Value = "LBR_Discount3Value";

	/** Set Discount 3 Value	  */
	public void setLBR_Discount3Value (BigDecimal LBR_Discount3Value);

	/** Get Discount 3 Value	  */
	public BigDecimal getLBR_Discount3Value();

    /** Column name LBR_DistributedVia */
    public static final String COLUMNNAME_LBR_DistributedVia = "LBR_DistributedVia";

	/** Set Distributed Via	  */
	public void setLBR_DistributedVia (String LBR_DistributedVia);

	/** Get Distributed Via	  */
	public String getLBR_DistributedVia();

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

    /** Column name LBR_IOFAmt */
    public static final String COLUMNNAME_LBR_IOFAmt = "LBR_IOFAmt";

	/** Set IOF Amount	  */
	public void setLBR_IOFAmt (BigDecimal LBR_IOFAmt);

	/** Get IOF Amount	  */
	public BigDecimal getLBR_IOFAmt();

    /** Column name LBR_InterestDate */
    public static final String COLUMNNAME_LBR_InterestDate = "LBR_InterestDate";

	/** Set Interest Date	  */
	public void setLBR_InterestDate (Timestamp LBR_InterestDate);

	/** Get Interest Date	  */
	public Timestamp getLBR_InterestDate();

    /** Column name LBR_InterestDays */
    public static final String COLUMNNAME_LBR_InterestDays = "LBR_InterestDays";

	/** Set Interest Days	  */
	public void setLBR_InterestDays (int LBR_InterestDays);

	/** Get Interest Days	  */
	public int getLBR_InterestDays();

    /** Column name LBR_InterestType */
    public static final String COLUMNNAME_LBR_InterestType = "LBR_InterestType";

	/** Set Interest Type	  */
	public void setLBR_InterestType (String LBR_InterestType);

	/** Get Interest Type	  */
	public String getLBR_InterestType();

    /** Column name LBR_InterestValue */
    public static final String COLUMNNAME_LBR_InterestValue = "LBR_InterestValue";

	/** Set Interest Value	  */
	public void setLBR_InterestValue (BigDecimal LBR_InterestValue);

	/** Get Interest Value	  */
	public BigDecimal getLBR_InterestValue();

    /** Column name LBR_IsAccepted */
    public static final String COLUMNNAME_LBR_IsAccepted = "LBR_IsAccepted";

	/** Set Accepted	  */
	public void setLBR_IsAccepted (String LBR_IsAccepted);

	/** Get Accepted	  */
	public String getLBR_IsAccepted();

    /** Column name LBR_IsHalted */
    public static final String COLUMNNAME_LBR_IsHalted = "LBR_IsHalted";

	/** Set Halted	  */
	public void setLBR_IsHalted (boolean LBR_IsHalted);

	/** Get Halted	  */
	public boolean isLBR_IsHalted();

    /** Column name LBR_IsPartialPayment */
    public static final String COLUMNNAME_LBR_IsPartialPayment = "LBR_IsPartialPayment";

	/** Set Partial Payment	  */
	public void setLBR_IsPartialPayment (boolean LBR_IsPartialPayment);

	/** Get Partial Payment	  */
	public boolean isLBR_IsPartialPayment();

    /** Column name LBR_IsProtested */
    public static final String COLUMNNAME_LBR_IsProtested = "LBR_IsProtested";

	/** Set Protested	  */
	public void setLBR_IsProtested (boolean LBR_IsProtested);

	/** Get Protested	  */
	public boolean isLBR_IsProtested();

    /** Column name LBR_IsWrittenOff */
    public static final String COLUMNNAME_LBR_IsWrittenOff = "LBR_IsWrittenOff";

	/** Set Written Off	  */
	public void setLBR_IsWrittenOff (boolean LBR_IsWrittenOff);

	/** Get Written Off	  */
	public boolean isLBR_IsWrittenOff();

    /** Column name LBR_IssueType */
    public static final String COLUMNNAME_LBR_IssueType = "LBR_IssueType";

	/** Set Issue Type	  */
	public void setLBR_IssueType (String LBR_IssueType);

	/** Get Issue Type	  */
	public String getLBR_IssueType();

    /** Column name LBR_IssuedBy */
    public static final String COLUMNNAME_LBR_IssuedBy = "LBR_IssuedBy";

	/** Set Issued By	  */
	public void setLBR_IssuedBy (String LBR_IssuedBy);

	/** Get Issued By	  */
	public String getLBR_IssuedBy();

    /** Column name LBR_LoanContractNo */
    public static final String COLUMNNAME_LBR_LoanContractNo = "LBR_LoanContractNo";

	/** Set Loan Contract No	  */
	public void setLBR_LoanContractNo (String LBR_LoanContractNo);

	/** Get Loan Contract No	  */
	public String getLBR_LoanContractNo();

    /** Column name LBR_NumberInBank */
    public static final String COLUMNNAME_LBR_NumberInBank = "LBR_NumberInBank";

	/** Set Number In Bank	  */
	public void setLBR_NumberInBank (String LBR_NumberInBank);

	/** Get Number In Bank	  */
	public String getLBR_NumberInBank();

    /** Column name LBR_NumberInOrg */
    public static final String COLUMNNAME_LBR_NumberInOrg = "LBR_NumberInOrg";

	/** Set Number in the Org	  */
	public void setLBR_NumberInOrg (String LBR_NumberInOrg);

	/** Get Number in the Org	  */
	public String getLBR_NumberInOrg();

    /** Column name LBR_PenaltyDate */
    public static final String COLUMNNAME_LBR_PenaltyDate = "LBR_PenaltyDate";

	/** Set Penalty Date	  */
	public void setLBR_PenaltyDate (Timestamp LBR_PenaltyDate);

	/** Get Penalty Date	  */
	public Timestamp getLBR_PenaltyDate();

    /** Column name LBR_PenaltyDays */
    public static final String COLUMNNAME_LBR_PenaltyDays = "LBR_PenaltyDays";

	/** Set Penalty Days	  */
	public void setLBR_PenaltyDays (int LBR_PenaltyDays);

	/** Get Penalty Days	  */
	public int getLBR_PenaltyDays();

    /** Column name LBR_PenaltyType */
    public static final String COLUMNNAME_LBR_PenaltyType = "LBR_PenaltyType";

	/** Set Penalty Type	  */
	public void setLBR_PenaltyType (String LBR_PenaltyType);

	/** Get Penalty Type	  */
	public String getLBR_PenaltyType();

    /** Column name LBR_PenaltyValue */
    public static final String COLUMNNAME_LBR_PenaltyValue = "LBR_PenaltyValue";

	/** Set Penalty Value	  */
	public void setLBR_PenaltyValue (BigDecimal LBR_PenaltyValue);

	/** Get Penalty Value	  */
	public BigDecimal getLBR_PenaltyValue();

    /** Column name LBR_ProtestDate */
    public static final String COLUMNNAME_LBR_ProtestDate = "LBR_ProtestDate";

	/** Set Protest Date	  */
	public void setLBR_ProtestDate (Timestamp LBR_ProtestDate);

	/** Get Protest Date	  */
	public Timestamp getLBR_ProtestDate();

    /** Column name LBR_ProtestDays */
    public static final String COLUMNNAME_LBR_ProtestDays = "LBR_ProtestDays";

	/** Set Protest Days	  */
	public void setLBR_ProtestDays (int LBR_ProtestDays);

	/** Get Protest Days	  */
	public int getLBR_ProtestDays();

    /** Column name LBR_ProtestType */
    public static final String COLUMNNAME_LBR_ProtestType = "LBR_ProtestType";

	/** Set Protest Type	  */
	public void setLBR_ProtestType (String LBR_ProtestType);

	/** Get Protest Type	  */
	public String getLBR_ProtestType();

    /** Column name LBR_RegisterType */
    public static final String COLUMNNAME_LBR_RegisterType = "LBR_RegisterType";

	/** Set Register Type	  */
	public void setLBR_RegisterType (String LBR_RegisterType);

	/** Get Register Type	  */
	public String getLBR_RegisterType();

    /** Column name LBR_ReturnAction */
    public static final String COLUMNNAME_LBR_ReturnAction = "LBR_ReturnAction";

	/** Set Return Action	  */
	public void setLBR_ReturnAction (String LBR_ReturnAction);

	/** Get Return Action	  */
	public String getLBR_ReturnAction();

    /** Column name LBR_ReturnDays */
    public static final String COLUMNNAME_LBR_ReturnDays = "LBR_ReturnDays";

	/** Set Return Days	  */
	public void setLBR_ReturnDays (int LBR_ReturnDays);

	/** Get Return Days	  */
	public int getLBR_ReturnDays();

    /** Column name Posted */
    public static final String COLUMNNAME_Posted = "Posted";

	/** Set Posted.
	  * Posting status
	  */
	public void setPosted (boolean Posted);

	/** Get Posted.
	  * Posting status
	  */
	public boolean isPosted();

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

    /** Column name ProcessedOn */
    public static final String COLUMNNAME_ProcessedOn = "ProcessedOn";

	/** Set Processed On.
	  * The date+time (expressed in decimal format) when the document has been processed
	  */
	public void setProcessedOn (BigDecimal ProcessedOn);

	/** Get Processed On.
	  * The date+time (expressed in decimal format) when the document has been processed
	  */
	public BigDecimal getProcessedOn();

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

    /** Column name WriteOffAmt */
    public static final String COLUMNNAME_WriteOffAmt = "WriteOffAmt";

	/** Set Write-off Amount.
	  * Amount to write-off
	  */
	public void setWriteOffAmt (BigDecimal WriteOffAmt);

	/** Get Write-off Amount.
	  * Amount to write-off
	  */
	public BigDecimal getWriteOffAmt();

    /** Column name lbr_PayScheduleNo */
    public static final String COLUMNNAME_lbr_PayScheduleNo = "lbr_PayScheduleNo";

	/** Set PaySchedule Number.
	  * Defines the PaySchedule Number
	  */
	public void setlbr_PayScheduleNo (int lbr_PayScheduleNo);

	/** Get PaySchedule Number.
	  * Defines the PaySchedule Number
	  */
	public int getlbr_PayScheduleNo();
}
