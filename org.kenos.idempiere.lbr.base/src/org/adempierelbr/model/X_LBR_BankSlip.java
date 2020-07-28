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
/** Generated Model - DO NOT CHANGE */
package org.adempierelbr.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LBR_BankSlip
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_BankSlip extends PO implements I_LBR_BankSlip, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20200727L;

    /** Standard Constructor */
    public X_LBR_BankSlip (Properties ctx, int LBR_BankSlip_ID, String trxName)
    {
      super (ctx, LBR_BankSlip_ID, trxName);
      /** if (LBR_BankSlip_ID == 0)
        {
			setC_BPartner_ID (0);
			setC_BPartner_Location_ID (0);
			setC_BankAccount_ID (0);
			setC_Bank_ID (0);
			setC_DocType_ID (0);
			setDateAcct (new Timestamp( System.currentTimeMillis() ));
// @#Date@
			setDateDoc (new Timestamp( System.currentTimeMillis() ));
// @#Date@
			setDiscountAmt (Env.ZERO);
// 0
			setDocAction (null);
// CO
			setDocStatus (null);
// DR
			setDocumentNo (null);
			setDueDate (new Timestamp( System.currentTimeMillis() ));
// @#Date@
			setGrandTotal (Env.ZERO);
// 0
			setLBR_BankSlipContract_ID (0);
			setLBR_BankSlipCurrency (null);
// 09
			setLBR_BankSlipFold_ID (0);
			setLBR_BankSlipKind_ID (0);
			setLBR_BankSlip_ID (0);
			setLBR_Discount1Value (Env.ZERO);
// 0
			setLBR_Discount2Value (Env.ZERO);
// 0
			setLBR_Discount3Value (Env.ZERO);
// 0
			setLBR_DistributedVia (null);
			setLBR_IOFAmt (Env.ZERO);
// 0
			setLBR_InterestDays (0);
// 0
			setLBR_InterestValue (Env.ZERO);
// 0
			setLBR_IsAccepted (null);
			setLBR_IsPartialPayment (false);
// N
			setLBR_IssueType (null);
			setLBR_IssuedBy (null);
// 2
			setLBR_NumberInOrg (null);
			setLBR_PenaltyDays (0);
// 0
			setLBR_ProtestDays (0);
// 0
			setLBR_RecipientType (null);
// 1
			setLBR_RegisterType (null);
			setLBR_ReturnAction (null);
			setPosted (false);
// N
			setProcessed (false);
// N
			setlbr_PayScheduleNo (0);
// 1
        } */
    }

    /** Load Constructor */
    public X_LBR_BankSlip (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 3 - Client - Org 
      */
    protected int get_AccessLevel()
    {
      return accessLevel.intValue();
    }

    /** Load Meta Data */
    protected POInfo initPO (Properties ctx)
    {
      POInfo poi = POInfo.getPOInfo (ctx, Table_ID, get_TrxName());
      return poi;
    }

    public String toString()
    {
      StringBuffer sb = new StringBuffer ("X_LBR_BankSlip[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_BPartner getC_BPartner() throws RuntimeException
    {
		return (org.compiere.model.I_C_BPartner)MTable.get(getCtx(), org.compiere.model.I_C_BPartner.Table_Name)
			.getPO(getC_BPartner_ID(), get_TrxName());	}

	/** Set Business Partner .
		@param C_BPartner_ID 
		Identifies a Business Partner
	  */
	public void setC_BPartner_ID (int C_BPartner_ID)
	{
		if (C_BPartner_ID < 1) 
			set_Value (COLUMNNAME_C_BPartner_ID, null);
		else 
			set_Value (COLUMNNAME_C_BPartner_ID, Integer.valueOf(C_BPartner_ID));
	}

	/** Get Business Partner .
		@return Identifies a Business Partner
	  */
	public int getC_BPartner_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BPartner_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_BPartner_Location getC_BPartner_Location() throws RuntimeException
    {
		return (org.compiere.model.I_C_BPartner_Location)MTable.get(getCtx(), org.compiere.model.I_C_BPartner_Location.Table_Name)
			.getPO(getC_BPartner_Location_ID(), get_TrxName());	}

	/** Set Partner Location.
		@param C_BPartner_Location_ID 
		Identifies the (ship to) address for this Business Partner
	  */
	public void setC_BPartner_Location_ID (int C_BPartner_Location_ID)
	{
		if (C_BPartner_Location_ID < 1) 
			set_Value (COLUMNNAME_C_BPartner_Location_ID, null);
		else 
			set_Value (COLUMNNAME_C_BPartner_Location_ID, Integer.valueOf(C_BPartner_Location_ID));
	}

	/** Get Partner Location.
		@return Identifies the (ship to) address for this Business Partner
	  */
	public int getC_BPartner_Location_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BPartner_Location_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_BankAccount getC_BankAccount() throws RuntimeException
    {
		return (org.compiere.model.I_C_BankAccount)MTable.get(getCtx(), org.compiere.model.I_C_BankAccount.Table_Name)
			.getPO(getC_BankAccount_ID(), get_TrxName());	}

	/** Set Bank Account.
		@param C_BankAccount_ID 
		Account at the Bank
	  */
	public void setC_BankAccount_ID (int C_BankAccount_ID)
	{
		if (C_BankAccount_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_C_BankAccount_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_BankAccount_ID, Integer.valueOf(C_BankAccount_ID));
	}

	/** Get Bank Account.
		@return Account at the Bank
	  */
	public int getC_BankAccount_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BankAccount_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_Bank getC_Bank() throws RuntimeException
    {
		return (org.compiere.model.I_C_Bank)MTable.get(getCtx(), org.compiere.model.I_C_Bank.Table_Name)
			.getPO(getC_Bank_ID(), get_TrxName());	}

	/** Set Bank.
		@param C_Bank_ID 
		Bank
	  */
	public void setC_Bank_ID (int C_Bank_ID)
	{
		if (C_Bank_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_C_Bank_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_Bank_ID, Integer.valueOf(C_Bank_ID));
	}

	/** Get Bank.
		@return Bank
	  */
	public int getC_Bank_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Bank_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_DocType getC_DocType() throws RuntimeException
    {
		return (org.compiere.model.I_C_DocType)MTable.get(getCtx(), org.compiere.model.I_C_DocType.Table_Name)
			.getPO(getC_DocType_ID(), get_TrxName());	}

	/** Set Document Type.
		@param C_DocType_ID 
		Document type or rules
	  */
	public void setC_DocType_ID (int C_DocType_ID)
	{
		if (C_DocType_ID < 0) 
			set_ValueNoCheck (COLUMNNAME_C_DocType_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_DocType_ID, Integer.valueOf(C_DocType_ID));
	}

	/** Get Document Type.
		@return Document type or rules
	  */
	public int getC_DocType_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_DocType_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_InvoicePaySchedule getC_InvoicePaySchedule() throws RuntimeException
    {
		return (org.compiere.model.I_C_InvoicePaySchedule)MTable.get(getCtx(), org.compiere.model.I_C_InvoicePaySchedule.Table_Name)
			.getPO(getC_InvoicePaySchedule_ID(), get_TrxName());	}

	/** Set Invoice Payment Schedule.
		@param C_InvoicePaySchedule_ID 
		Invoice Payment Schedule
	  */
	public void setC_InvoicePaySchedule_ID (int C_InvoicePaySchedule_ID)
	{
		if (C_InvoicePaySchedule_ID < 1) 
			set_Value (COLUMNNAME_C_InvoicePaySchedule_ID, null);
		else 
			set_Value (COLUMNNAME_C_InvoicePaySchedule_ID, Integer.valueOf(C_InvoicePaySchedule_ID));
	}

	/** Get Invoice Payment Schedule.
		@return Invoice Payment Schedule
	  */
	public int getC_InvoicePaySchedule_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_InvoicePaySchedule_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_Invoice getC_Invoice() throws RuntimeException
    {
		return (org.compiere.model.I_C_Invoice)MTable.get(getCtx(), org.compiere.model.I_C_Invoice.Table_Name)
			.getPO(getC_Invoice_ID(), get_TrxName());	}

	/** Set Invoice.
		@param C_Invoice_ID 
		Invoice Identifier
	  */
	public void setC_Invoice_ID (int C_Invoice_ID)
	{
		if (C_Invoice_ID < 1) 
			set_Value (COLUMNNAME_C_Invoice_ID, null);
		else 
			set_Value (COLUMNNAME_C_Invoice_ID, Integer.valueOf(C_Invoice_ID));
	}

	/** Get Invoice.
		@return Invoice Identifier
	  */
	public int getC_Invoice_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Invoice_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Account Date.
		@param DateAcct 
		Accounting Date
	  */
	public void setDateAcct (Timestamp DateAcct)
	{
		set_Value (COLUMNNAME_DateAcct, DateAcct);
	}

	/** Get Account Date.
		@return Accounting Date
	  */
	public Timestamp getDateAcct () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateAcct);
	}

	/** Set Document Date.
		@param DateDoc 
		Date of the Document
	  */
	public void setDateDoc (Timestamp DateDoc)
	{
		set_Value (COLUMNNAME_DateDoc, DateDoc);
	}

	/** Get Document Date.
		@return Date of the Document
	  */
	public Timestamp getDateDoc () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateDoc);
	}

	/** Set Description.
		@param Description 
		Optional short description of the record
	  */
	public void setDescription (String Description)
	{
		set_Value (COLUMNNAME_Description, Description);
	}

	/** Get Description.
		@return Optional short description of the record
	  */
	public String getDescription () 
	{
		return (String)get_Value(COLUMNNAME_Description);
	}

	/** Set Discount Amount.
		@param DiscountAmt 
		Calculated amount of discount
	  */
	public void setDiscountAmt (BigDecimal DiscountAmt)
	{
		set_ValueNoCheck (COLUMNNAME_DiscountAmt, DiscountAmt);
	}

	/** Get Discount Amount.
		@return Calculated amount of discount
	  */
	public BigDecimal getDiscountAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_DiscountAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** DocAction AD_Reference_ID=135 */
	public static final int DOCACTION_AD_Reference_ID=135;
	/** Complete = CO */
	public static final String DOCACTION_Complete = "CO";
	/** Approve = AP */
	public static final String DOCACTION_Approve = "AP";
	/** Reject = RJ */
	public static final String DOCACTION_Reject = "RJ";
	/** Post = PO */
	public static final String DOCACTION_Post = "PO";
	/** Void = VO */
	public static final String DOCACTION_Void = "VO";
	/** Close = CL */
	public static final String DOCACTION_Close = "CL";
	/** Reverse - Correct = RC */
	public static final String DOCACTION_Reverse_Correct = "RC";
	/** Reverse - Accrual = RA */
	public static final String DOCACTION_Reverse_Accrual = "RA";
	/** Invalidate = IN */
	public static final String DOCACTION_Invalidate = "IN";
	/** Re-activate = RE */
	public static final String DOCACTION_Re_Activate = "RE";
	/** <None> = -- */
	public static final String DOCACTION_None = "--";
	/** Prepare = PR */
	public static final String DOCACTION_Prepare = "PR";
	/** Unlock = XL */
	public static final String DOCACTION_Unlock = "XL";
	/** Wait Complete = WC */
	public static final String DOCACTION_WaitComplete = "WC";
	/** Set Document Action.
		@param DocAction 
		The targeted status of the document
	  */
	public void setDocAction (String DocAction)
	{

		set_Value (COLUMNNAME_DocAction, DocAction);
	}

	/** Get Document Action.
		@return The targeted status of the document
	  */
	public String getDocAction () 
	{
		return (String)get_Value(COLUMNNAME_DocAction);
	}

	/** DocStatus AD_Reference_ID=131 */
	public static final int DOCSTATUS_AD_Reference_ID=131;
	/** Drafted = DR */
	public static final String DOCSTATUS_Drafted = "DR";
	/** Completed = CO */
	public static final String DOCSTATUS_Completed = "CO";
	/** Approved = AP */
	public static final String DOCSTATUS_Approved = "AP";
	/** Not Approved = NA */
	public static final String DOCSTATUS_NotApproved = "NA";
	/** Voided = VO */
	public static final String DOCSTATUS_Voided = "VO";
	/** Invalid = IN */
	public static final String DOCSTATUS_Invalid = "IN";
	/** Reversed = RE */
	public static final String DOCSTATUS_Reversed = "RE";
	/** Closed = CL */
	public static final String DOCSTATUS_Closed = "CL";
	/** Unknown = ?? */
	public static final String DOCSTATUS_Unknown = "??";
	/** In Progress = IP */
	public static final String DOCSTATUS_InProgress = "IP";
	/** Waiting Payment = WP */
	public static final String DOCSTATUS_WaitingPayment = "WP";
	/** Waiting Confirmation = WC */
	public static final String DOCSTATUS_WaitingConfirmation = "WC";
	/** Set Document Status.
		@param DocStatus 
		The current status of the document
	  */
	public void setDocStatus (String DocStatus)
	{

		set_Value (COLUMNNAME_DocStatus, DocStatus);
	}

	/** Get Document Status.
		@return The current status of the document
	  */
	public String getDocStatus () 
	{
		return (String)get_Value(COLUMNNAME_DocStatus);
	}

	/** Set Document No.
		@param DocumentNo 
		Document sequence number of the document
	  */
	public void setDocumentNo (String DocumentNo)
	{
		set_ValueNoCheck (COLUMNNAME_DocumentNo, DocumentNo);
	}

	/** Get Document No.
		@return Document sequence number of the document
	  */
	public String getDocumentNo () 
	{
		return (String)get_Value(COLUMNNAME_DocumentNo);
	}

	/** Set Due Date.
		@param DueDate 
		Date when the payment is due
	  */
	public void setDueDate (Timestamp DueDate)
	{
		set_Value (COLUMNNAME_DueDate, DueDate);
	}

	/** Get Due Date.
		@return Date when the payment is due
	  */
	public Timestamp getDueDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DueDate);
	}

	/** Set Grand Total.
		@param GrandTotal 
		Total amount of document
	  */
	public void setGrandTotal (BigDecimal GrandTotal)
	{
		set_Value (COLUMNNAME_GrandTotal, GrandTotal);
	}

	/** Get Grand Total.
		@return Total amount of document
	  */
	public BigDecimal getGrandTotal () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_GrandTotal);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public org.compiere.model.I_C_BPartner getGuarantorBP() throws RuntimeException
    {
		return (org.compiere.model.I_C_BPartner)MTable.get(getCtx(), org.compiere.model.I_C_BPartner.Table_Name)
			.getPO(getGuarantorBP_ID(), get_TrxName());	}

	/** Set Guarantor.
		@param GuarantorBP_ID Guarantor	  */
	public void setGuarantorBP_ID (int GuarantorBP_ID)
	{
		if (GuarantorBP_ID < 1) 
			set_Value (COLUMNNAME_GuarantorBP_ID, null);
		else 
			set_Value (COLUMNNAME_GuarantorBP_ID, Integer.valueOf(GuarantorBP_ID));
	}

	/** Get Guarantor.
		@return Guarantor	  */
	public int getGuarantorBP_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_GuarantorBP_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_BPartner_Location getGuarantorBP_Location() throws RuntimeException
    {
		return (org.compiere.model.I_C_BPartner_Location)MTable.get(getCtx(), org.compiere.model.I_C_BPartner_Location.Table_Name)
			.getPO(getGuarantorBP_Location_ID(), get_TrxName());	}

	/** Set Guarantor Location.
		@param GuarantorBP_Location_ID Guarantor Location	  */
	public void setGuarantorBP_Location_ID (int GuarantorBP_Location_ID)
	{
		if (GuarantorBP_Location_ID < 1) 
			set_Value (COLUMNNAME_GuarantorBP_Location_ID, null);
		else 
			set_Value (COLUMNNAME_GuarantorBP_Location_ID, Integer.valueOf(GuarantorBP_Location_ID));
	}

	/** Get Guarantor Location.
		@return Guarantor Location	  */
	public int getGuarantorBP_Location_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_GuarantorBP_Location_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Cancelled.
		@param IsCancelled 
		The transaction was cancelled
	  */
	public void setIsCancelled (boolean IsCancelled)
	{
		set_ValueNoCheck (COLUMNNAME_IsCancelled, Boolean.valueOf(IsCancelled));
	}

	/** Get Cancelled.
		@return The transaction was cancelled
	  */
	public boolean isCancelled () 
	{
		Object oo = get_Value(COLUMNNAME_IsCancelled);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Paid.
		@param IsPaid 
		The document is paid
	  */
	public void setIsPaid (boolean IsPaid)
	{
		set_ValueNoCheck (COLUMNNAME_IsPaid, Boolean.valueOf(IsPaid));
	}

	/** Get Paid.
		@return The document is paid
	  */
	public boolean isPaid () 
	{
		Object oo = get_Value(COLUMNNAME_IsPaid);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	public org.adempierelbr.model.I_LBR_BankSlipContract getLBR_BankSlipContract() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_BankSlipContract)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_BankSlipContract.Table_Name)
			.getPO(getLBR_BankSlipContract_ID(), get_TrxName());	}

	/** Set Bank Slip Contract.
		@param LBR_BankSlipContract_ID Bank Slip Contract	  */
	public void setLBR_BankSlipContract_ID (int LBR_BankSlipContract_ID)
	{
		if (LBR_BankSlipContract_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_BankSlipContract_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_BankSlipContract_ID, Integer.valueOf(LBR_BankSlipContract_ID));
	}

	/** Get Bank Slip Contract.
		@return Bank Slip Contract	  */
	public int getLBR_BankSlipContract_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BankSlipContract_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** 09 - Brazilian Real = 09 */
	public static final String LBR_BANKSLIPCURRENCY_09_BrazilianReal = "09";
	/** Set Bank Slip Currency.
		@param LBR_BankSlipCurrency Bank Slip Currency	  */
	public void setLBR_BankSlipCurrency (String LBR_BankSlipCurrency)
	{

		set_Value (COLUMNNAME_LBR_BankSlipCurrency, LBR_BankSlipCurrency);
	}

	/** Get Bank Slip Currency.
		@return Bank Slip Currency	  */
	public String getLBR_BankSlipCurrency () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BankSlipCurrency);
	}

	public org.adempierelbr.model.I_LBR_BankSlipFold getLBR_BankSlipFold() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_BankSlipFold)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_BankSlipFold.Table_Name)
			.getPO(getLBR_BankSlipFold_ID(), get_TrxName());	}

	/** Set Fold.
		@param LBR_BankSlipFold_ID Fold	  */
	public void setLBR_BankSlipFold_ID (int LBR_BankSlipFold_ID)
	{
		if (LBR_BankSlipFold_ID < 1) 
			set_Value (COLUMNNAME_LBR_BankSlipFold_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_BankSlipFold_ID, Integer.valueOf(LBR_BankSlipFold_ID));
	}

	/** Get Fold.
		@return Fold	  */
	public int getLBR_BankSlipFold_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BankSlipFold_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_BankSlipKind getLBR_BankSlipKind() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_BankSlipKind)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_BankSlipKind.Table_Name)
			.getPO(getLBR_BankSlipKind_ID(), get_TrxName());	}

	/** Set Bank Slip Kind.
		@param LBR_BankSlipKind_ID Bank Slip Kind	  */
	public void setLBR_BankSlipKind_ID (int LBR_BankSlipKind_ID)
	{
		if (LBR_BankSlipKind_ID < 1) 
			set_Value (COLUMNNAME_LBR_BankSlipKind_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_BankSlipKind_ID, Integer.valueOf(LBR_BankSlipKind_ID));
	}

	/** Get Bank Slip Kind.
		@return Bank Slip Kind	  */
	public int getLBR_BankSlipKind_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BankSlipKind_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_BankSlipLayout getLBR_BankSlipLayout() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_BankSlipLayout)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_BankSlipLayout.Table_Name)
			.getPO(getLBR_BankSlipLayout_ID(), get_TrxName());	}

	/** Set Bank Slip Layout.
		@param LBR_BankSlipLayout_ID Bank Slip Layout	  */
	public void setLBR_BankSlipLayout_ID (int LBR_BankSlipLayout_ID)
	{
		if (LBR_BankSlipLayout_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_BankSlipLayout_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_BankSlipLayout_ID, Integer.valueOf(LBR_BankSlipLayout_ID));
	}

	/** Get Bank Slip Layout.
		@return Bank Slip Layout	  */
	public int getLBR_BankSlipLayout_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BankSlipLayout_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Bank Slip.
		@param LBR_BankSlip_ID Bank Slip	  */
	public void setLBR_BankSlip_ID (int LBR_BankSlip_ID)
	{
		if (LBR_BankSlip_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_BankSlip_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_BankSlip_ID, Integer.valueOf(LBR_BankSlip_ID));
	}

	/** Get Bank Slip.
		@return Bank Slip	  */
	public int getLBR_BankSlip_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BankSlip_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_BankSlip_UU.
		@param LBR_BankSlip_UU LBR_BankSlip_UU	  */
	public void setLBR_BankSlip_UU (String LBR_BankSlip_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_BankSlip_UU, LBR_BankSlip_UU);
	}

	/** Get LBR_BankSlip_UU.
		@return LBR_BankSlip_UU	  */
	public String getLBR_BankSlip_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BankSlip_UU);
	}

	/** Notice with Address in File = 1 */
	public static final String LBR_DIRECTDEBITNOTICE_NoticeWithAddressInFile = "1";
	/** No Notice = 2 */
	public static final String LBR_DIRECTDEBITNOTICE_NoNotice = "2";
	/** Notice with Address in the Bank = 3 */
	public static final String LBR_DIRECTDEBITNOTICE_NoticeWithAddressInTheBank = "3";
	/** Set Direct Debit Notice.
		@param LBR_DirectDebitNotice Direct Debit Notice	  */
	public void setLBR_DirectDebitNotice (String LBR_DirectDebitNotice)
	{

		set_Value (COLUMNNAME_LBR_DirectDebitNotice, LBR_DirectDebitNotice);
	}

	/** Get Direct Debit Notice.
		@return Direct Debit Notice	  */
	public String getLBR_DirectDebitNotice () 
	{
		return (String)get_Value(COLUMNNAME_LBR_DirectDebitNotice);
	}

	/** Set Discount 1 Date.
		@param LBR_Discount1Date Discount 1 Date	  */
	public void setLBR_Discount1Date (Timestamp LBR_Discount1Date)
	{
		set_Value (COLUMNNAME_LBR_Discount1Date, LBR_Discount1Date);
	}

	/** Get Discount 1 Date.
		@return Discount 1 Date	  */
	public Timestamp getLBR_Discount1Date () 
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_Discount1Date);
	}

	/** Fixed Amount until Date Set = 1 */
	public static final String LBR_DISCOUNT1TYPE_FixedAmountUntilDateSet = "1";
	/** Fixed Rate until Date Set = 2 */
	public static final String LBR_DISCOUNT1TYPE_FixedRateUntilDateSet = "2";
	/** Amount for Early Payment in Calendar Days = 3 */
	public static final String LBR_DISCOUNT1TYPE_AmountForEarlyPaymentInCalendarDays = "3";
	/** Amount for Early Payment in Business Days = 4 */
	public static final String LBR_DISCOUNT1TYPE_AmountForEarlyPaymentInBusinessDays = "4";
	/** Rate over Grand Total in Calendar Days = 5 */
	public static final String LBR_DISCOUNT1TYPE_RateOverGrandTotalInCalendarDays = "5";
	/** Rate over Grand Total in Business Days = 6 */
	public static final String LBR_DISCOUNT1TYPE_RateOverGrandTotalInBusinessDays = "6";
	/** Set Discount 1 Type.
		@param LBR_Discount1Type Discount 1 Type	  */
	public void setLBR_Discount1Type (String LBR_Discount1Type)
	{

		set_Value (COLUMNNAME_LBR_Discount1Type, LBR_Discount1Type);
	}

	/** Get Discount 1 Type.
		@return Discount 1 Type	  */
	public String getLBR_Discount1Type () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Discount1Type);
	}

	/** Set Discount 1 Value.
		@param LBR_Discount1Value Discount 1 Value	  */
	public void setLBR_Discount1Value (BigDecimal LBR_Discount1Value)
	{
		set_Value (COLUMNNAME_LBR_Discount1Value, LBR_Discount1Value);
	}

	/** Get Discount 1 Value.
		@return Discount 1 Value	  */
	public BigDecimal getLBR_Discount1Value () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_Discount1Value);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Discount 2 Date.
		@param LBR_Discount2Date Discount 2 Date	  */
	public void setLBR_Discount2Date (Timestamp LBR_Discount2Date)
	{
		set_Value (COLUMNNAME_LBR_Discount2Date, LBR_Discount2Date);
	}

	/** Get Discount 2 Date.
		@return Discount 2 Date	  */
	public Timestamp getLBR_Discount2Date () 
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_Discount2Date);
	}

	/** Fixed Amount until Date Set = 1 */
	public static final String LBR_DISCOUNT2TYPE_FixedAmountUntilDateSet = "1";
	/** Fixed Rate until Date Set = 2 */
	public static final String LBR_DISCOUNT2TYPE_FixedRateUntilDateSet = "2";
	/** Amount for Early Payment in Calendar Days = 3 */
	public static final String LBR_DISCOUNT2TYPE_AmountForEarlyPaymentInCalendarDays = "3";
	/** Amount for Early Payment in Business Days = 4 */
	public static final String LBR_DISCOUNT2TYPE_AmountForEarlyPaymentInBusinessDays = "4";
	/** Rate over Grand Total in Calendar Days = 5 */
	public static final String LBR_DISCOUNT2TYPE_RateOverGrandTotalInCalendarDays = "5";
	/** Rate over Grand Total in Business Days = 6 */
	public static final String LBR_DISCOUNT2TYPE_RateOverGrandTotalInBusinessDays = "6";
	/** Set Discount 2 Type.
		@param LBR_Discount2Type Discount 2 Type	  */
	public void setLBR_Discount2Type (String LBR_Discount2Type)
	{

		set_Value (COLUMNNAME_LBR_Discount2Type, LBR_Discount2Type);
	}

	/** Get Discount 2 Type.
		@return Discount 2 Type	  */
	public String getLBR_Discount2Type () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Discount2Type);
	}

	/** Set Discount 2 Value.
		@param LBR_Discount2Value Discount 2 Value	  */
	public void setLBR_Discount2Value (BigDecimal LBR_Discount2Value)
	{
		set_Value (COLUMNNAME_LBR_Discount2Value, LBR_Discount2Value);
	}

	/** Get Discount 2 Value.
		@return Discount 2 Value	  */
	public BigDecimal getLBR_Discount2Value () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_Discount2Value);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Discount 3 Date.
		@param LBR_Discount3Date Discount 3 Date	  */
	public void setLBR_Discount3Date (Timestamp LBR_Discount3Date)
	{
		set_Value (COLUMNNAME_LBR_Discount3Date, LBR_Discount3Date);
	}

	/** Get Discount 3 Date.
		@return Discount 3 Date	  */
	public Timestamp getLBR_Discount3Date () 
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_Discount3Date);
	}

	/** Fixed Amount until Date Set = 1 */
	public static final String LBR_DISCOUNT3TYPE_FixedAmountUntilDateSet = "1";
	/** Fixed Rate until Date Set = 2 */
	public static final String LBR_DISCOUNT3TYPE_FixedRateUntilDateSet = "2";
	/** Amount for Early Payment in Calendar Days = 3 */
	public static final String LBR_DISCOUNT3TYPE_AmountForEarlyPaymentInCalendarDays = "3";
	/** Amount for Early Payment in Business Days = 4 */
	public static final String LBR_DISCOUNT3TYPE_AmountForEarlyPaymentInBusinessDays = "4";
	/** Rate over Grand Total in Calendar Days = 5 */
	public static final String LBR_DISCOUNT3TYPE_RateOverGrandTotalInCalendarDays = "5";
	/** Rate over Grand Total in Business Days = 6 */
	public static final String LBR_DISCOUNT3TYPE_RateOverGrandTotalInBusinessDays = "6";
	/** Set Discount 3 Type.
		@param LBR_Discount3Type Discount 3 Type	  */
	public void setLBR_Discount3Type (String LBR_Discount3Type)
	{

		set_Value (COLUMNNAME_LBR_Discount3Type, LBR_Discount3Type);
	}

	/** Get Discount 3 Type.
		@return Discount 3 Type	  */
	public String getLBR_Discount3Type () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Discount3Type);
	}

	/** Set Discount 3 Value.
		@param LBR_Discount3Value Discount 3 Value	  */
	public void setLBR_Discount3Value (BigDecimal LBR_Discount3Value)
	{
		set_Value (COLUMNNAME_LBR_Discount3Value, LBR_Discount3Value);
	}

	/** Get Discount 3 Value.
		@return Discount 3 Value	  */
	public BigDecimal getLBR_Discount3Value () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_Discount3Value);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Printed and Mailed = 1 */
	public static final String LBR_DISTRIBUTEDVIA_PrintedAndMailed = "1";
	/** Printed with Fiscal Document = 2 */
	public static final String LBR_DISTRIBUTEDVIA_PrintedWithFiscalDocument = "2";
	/** Printed with Fiscal Document & E-mailed = 3r */
	public static final String LBR_DISTRIBUTEDVIA_PrintedWithFiscalDocumentE_Mailed = "3r";
	/** E-mailed = 4 */
	public static final String LBR_DISTRIBUTEDVIA_E_Mailed = "4";
	/** E-mailed with Fiscal Document XML = 5 */
	public static final String LBR_DISTRIBUTEDVIA_E_MailedWithFiscalDocumentXML = "5";
	/** Set Distributed Via.
		@param LBR_DistributedVia Distributed Via	  */
	public void setLBR_DistributedVia (String LBR_DistributedVia)
	{

		set_Value (COLUMNNAME_LBR_DistributedVia, LBR_DistributedVia);
	}

	/** Get Distributed Via.
		@return Distributed Via	  */
	public String getLBR_DistributedVia () 
	{
		return (String)get_Value(COLUMNNAME_LBR_DistributedVia);
	}

	/** Set EMail Sent.
		@param LBR_EMailSent 
		Indicates if the email was sent
	  */
	public void setLBR_EMailSent (boolean LBR_EMailSent)
	{
		set_Value (COLUMNNAME_LBR_EMailSent, Boolean.valueOf(LBR_EMailSent));
	}

	/** Get EMail Sent.
		@return Indicates if the email was sent
	  */
	public boolean isLBR_EMailSent () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_EMailSent);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set IOF Amount.
		@param LBR_IOFAmt IOF Amount	  */
	public void setLBR_IOFAmt (BigDecimal LBR_IOFAmt)
	{
		set_Value (COLUMNNAME_LBR_IOFAmt, LBR_IOFAmt);
	}

	/** Get IOF Amount.
		@return IOF Amount	  */
	public BigDecimal getLBR_IOFAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IOFAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Interest Date.
		@param LBR_InterestDate Interest Date	  */
	public void setLBR_InterestDate (Timestamp LBR_InterestDate)
	{
		set_Value (COLUMNNAME_LBR_InterestDate, LBR_InterestDate);
	}

	/** Get Interest Date.
		@return Interest Date	  */
	public Timestamp getLBR_InterestDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_InterestDate);
	}

	/** Set Interest Days.
		@param LBR_InterestDays Interest Days	  */
	public void setLBR_InterestDays (int LBR_InterestDays)
	{
		set_Value (COLUMNNAME_LBR_InterestDays, Integer.valueOf(LBR_InterestDays));
	}

	/** Get Interest Days.
		@return Interest Days	  */
	public int getLBR_InterestDays () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_InterestDays);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Daily Value = 1 */
	public static final String LBR_INTERESTTYPE_DailyValue = "1";
	/** Monthly Rate = 2 */
	public static final String LBR_INTERESTTYPE_MonthlyRate = "2";
	/** Do not charge = 9 */
	public static final String LBR_INTERESTTYPE_DoNotCharge = "9";
	/** Set Interest Type.
		@param LBR_InterestType Interest Type	  */
	public void setLBR_InterestType (String LBR_InterestType)
	{

		set_Value (COLUMNNAME_LBR_InterestType, LBR_InterestType);
	}

	/** Get Interest Type.
		@return Interest Type	  */
	public String getLBR_InterestType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_InterestType);
	}

	/** Set Interest Value.
		@param LBR_InterestValue Interest Value	  */
	public void setLBR_InterestValue (BigDecimal LBR_InterestValue)
	{
		set_Value (COLUMNNAME_LBR_InterestValue, LBR_InterestValue);
	}

	/** Get Interest Value.
		@return Interest Value	  */
	public BigDecimal getLBR_InterestValue () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_InterestValue);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Not Accepted = 0 */
	public static final String LBR_ISACCEPTED_NotAccepted = "0";
	/** Is Accepted = 1 */
	public static final String LBR_ISACCEPTED_IsAccepted = "1";
	/** Set Accepted.
		@param LBR_IsAccepted Accepted	  */
	public void setLBR_IsAccepted (String LBR_IsAccepted)
	{

		set_Value (COLUMNNAME_LBR_IsAccepted, LBR_IsAccepted);
	}

	/** Get Accepted.
		@return Accepted	  */
	public String getLBR_IsAccepted () 
	{
		return (String)get_Value(COLUMNNAME_LBR_IsAccepted);
	}

	/** Set Halted.
		@param LBR_IsHalted Halted	  */
	public void setLBR_IsHalted (boolean LBR_IsHalted)
	{
		set_Value (COLUMNNAME_LBR_IsHalted, Boolean.valueOf(LBR_IsHalted));
	}

	/** Get Halted.
		@return Halted	  */
	public boolean isLBR_IsHalted () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_IsHalted);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Partial Payment.
		@param LBR_IsPartialPayment Partial Payment	  */
	public void setLBR_IsPartialPayment (boolean LBR_IsPartialPayment)
	{
		set_Value (COLUMNNAME_LBR_IsPartialPayment, Boolean.valueOf(LBR_IsPartialPayment));
	}

	/** Get Partial Payment.
		@return Partial Payment	  */
	public boolean isLBR_IsPartialPayment () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_IsPartialPayment);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Protested.
		@param LBR_IsProtested Protested	  */
	public void setLBR_IsProtested (boolean LBR_IsProtested)
	{
		set_Value (COLUMNNAME_LBR_IsProtested, Boolean.valueOf(LBR_IsProtested));
	}

	/** Get Protested.
		@return Protested	  */
	public boolean isLBR_IsProtested () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_IsProtested);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Written Off.
		@param LBR_IsWrittenOff Written Off	  */
	public void setLBR_IsWrittenOff (boolean LBR_IsWrittenOff)
	{
		set_Value (COLUMNNAME_LBR_IsWrittenOff, Boolean.valueOf(LBR_IsWrittenOff));
	}

	/** Get Written Off.
		@return Written Off	  */
	public boolean isLBR_IsWrittenOff () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_IsWrittenOff);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Direta = 1 */
	public static final String LBR_ISSUETYPE_Direta = "1";
	/** Escritural = 2 */
	public static final String LBR_ISSUETYPE_Escritural = "2";
	/** Set Issue Type.
		@param LBR_IssueType Issue Type	  */
	public void setLBR_IssueType (String LBR_IssueType)
	{

		set_Value (COLUMNNAME_LBR_IssueType, LBR_IssueType);
	}

	/** Get Issue Type.
		@return Issue Type	  */
	public String getLBR_IssueType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_IssueType);
	}

	/** Bank = 1 */
	public static final String LBR_ISSUEDBY_Bank = "1";
	/** Organization = 2 */
	public static final String LBR_ISSUEDBY_Organization = "2";
	/** Set Issued By.
		@param LBR_IssuedBy Issued By	  */
	public void setLBR_IssuedBy (String LBR_IssuedBy)
	{

		set_Value (COLUMNNAME_LBR_IssuedBy, LBR_IssuedBy);
	}

	/** Get Issued By.
		@return Issued By	  */
	public String getLBR_IssuedBy () 
	{
		return (String)get_Value(COLUMNNAME_LBR_IssuedBy);
	}

	/** Set Loan Contract No.
		@param LBR_LoanContractNo Loan Contract No	  */
	public void setLBR_LoanContractNo (String LBR_LoanContractNo)
	{
		set_Value (COLUMNNAME_LBR_LoanContractNo, LBR_LoanContractNo);
	}

	/** Get Loan Contract No.
		@return Loan Contract No	  */
	public String getLBR_LoanContractNo () 
	{
		return (String)get_Value(COLUMNNAME_LBR_LoanContractNo);
	}

	/** Set Number In Bank.
		@param LBR_NumberInBank Number In Bank	  */
	public void setLBR_NumberInBank (String LBR_NumberInBank)
	{
		set_Value (COLUMNNAME_LBR_NumberInBank, LBR_NumberInBank);
	}

	/** Get Number In Bank.
		@return Number In Bank	  */
	public String getLBR_NumberInBank () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NumberInBank);
	}

	/** Set Number in the Org.
		@param LBR_NumberInOrg Number in the Org	  */
	public void setLBR_NumberInOrg (String LBR_NumberInOrg)
	{
		set_Value (COLUMNNAME_LBR_NumberInOrg, LBR_NumberInOrg);
	}

	/** Get Number in the Org.
		@return Number in the Org	  */
	public String getLBR_NumberInOrg () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NumberInOrg);
	}

	/** Set Penalty Date.
		@param LBR_PenaltyDate Penalty Date	  */
	public void setLBR_PenaltyDate (Timestamp LBR_PenaltyDate)
	{
		set_Value (COLUMNNAME_LBR_PenaltyDate, LBR_PenaltyDate);
	}

	/** Get Penalty Date.
		@return Penalty Date	  */
	public Timestamp getLBR_PenaltyDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_PenaltyDate);
	}

	/** Set Penalty Days.
		@param LBR_PenaltyDays Penalty Days	  */
	public void setLBR_PenaltyDays (int LBR_PenaltyDays)
	{
		set_Value (COLUMNNAME_LBR_PenaltyDays, Integer.valueOf(LBR_PenaltyDays));
	}

	/** Get Penalty Days.
		@return Penalty Days	  */
	public int getLBR_PenaltyDays () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_PenaltyDays);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Amount = 1 */
	public static final String LBR_PENALTYTYPE_Amount = "1";
	/** Rate = 2 */
	public static final String LBR_PENALTYTYPE_Rate = "2";
	/** Set Penalty Type.
		@param LBR_PenaltyType Penalty Type	  */
	public void setLBR_PenaltyType (String LBR_PenaltyType)
	{

		set_Value (COLUMNNAME_LBR_PenaltyType, LBR_PenaltyType);
	}

	/** Get Penalty Type.
		@return Penalty Type	  */
	public String getLBR_PenaltyType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_PenaltyType);
	}

	/** Set Penalty Value.
		@param LBR_PenaltyValue Penalty Value	  */
	public void setLBR_PenaltyValue (BigDecimal LBR_PenaltyValue)
	{
		set_Value (COLUMNNAME_LBR_PenaltyValue, LBR_PenaltyValue);
	}

	/** Get Penalty Value.
		@return Penalty Value	  */
	public BigDecimal getLBR_PenaltyValue () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_PenaltyValue);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Protest Date.
		@param LBR_ProtestDate Protest Date	  */
	public void setLBR_ProtestDate (Timestamp LBR_ProtestDate)
	{
		set_Value (COLUMNNAME_LBR_ProtestDate, LBR_ProtestDate);
	}

	/** Get Protest Date.
		@return Protest Date	  */
	public Timestamp getLBR_ProtestDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_ProtestDate);
	}

	/** Set Protest Days.
		@param LBR_ProtestDays Protest Days	  */
	public void setLBR_ProtestDays (int LBR_ProtestDays)
	{
		set_Value (COLUMNNAME_LBR_ProtestDays, Integer.valueOf(LBR_ProtestDays));
	}

	/** Get Protest Days.
		@return Protest Days	  */
	public int getLBR_ProtestDays () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_ProtestDays);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Protest Calendar Days = 1 */
	public static final String LBR_PROTESTTYPE_ProtestCalendarDays = "1";
	/** Protest Business Days = 2 */
	public static final String LBR_PROTESTTYPE_ProtestBusinessDays = "2";
	/** Do not Protest = 3 */
	public static final String LBR_PROTESTTYPE_DoNotProtest = "3";
	/** Protest for Bankruptcy Calendar Days = 4 */
	public static final String LBR_PROTESTTYPE_ProtestForBankruptcyCalendarDays = "4";
	/** Protest for Bankruptcy Working Days = 5 */
	public static final String LBR_PROTESTTYPE_ProtestForBankruptcyWorkingDays = "5";
	/** Notify Credit Score = 8 */
	public static final String LBR_PROTESTTYPE_NotifyCreditScore = "8";
	/** Set Protest Type.
		@param LBR_ProtestType Protest Type	  */
	public void setLBR_ProtestType (String LBR_ProtestType)
	{

		set_Value (COLUMNNAME_LBR_ProtestType, LBR_ProtestType);
	}

	/** Get Protest Type.
		@return Protest Type	  */
	public String getLBR_ProtestType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ProtestType);
	}

	/** Organization = 1 */
	public static final String LBR_RECIPIENTTYPE_Organization = "1";
	/** FIDC or 3rd Party = 2 */
	public static final String LBR_RECIPIENTTYPE_FIDCOr3rdParty = "2";
	/** Set Recipient Type.
		@param LBR_RecipientType Recipient Type	  */
	public void setLBR_RecipientType (String LBR_RecipientType)
	{

		set_Value (COLUMNNAME_LBR_RecipientType, LBR_RecipientType);
	}

	/** Get Recipient Type.
		@return Recipient Type	  */
	public String getLBR_RecipientType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_RecipientType);
	}

	public org.compiere.model.I_C_BPartner getLBR_Recipient() throws RuntimeException
    {
		return (org.compiere.model.I_C_BPartner)MTable.get(getCtx(), org.compiere.model.I_C_BPartner.Table_Name)
			.getPO(getLBR_Recipient_ID(), get_TrxName());	}

	/** Set Recipient.
		@param LBR_Recipient_ID Recipient	  */
	public void setLBR_Recipient_ID (int LBR_Recipient_ID)
	{
		if (LBR_Recipient_ID < 1) 
			set_Value (COLUMNNAME_LBR_Recipient_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_Recipient_ID, Integer.valueOf(LBR_Recipient_ID));
	}

	/** Get Recipient.
		@return Recipient	  */
	public int getLBR_Recipient_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Recipient_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_BPartner_Location getLBR_Recipient_Location() throws RuntimeException
    {
		return (org.compiere.model.I_C_BPartner_Location)MTable.get(getCtx(), org.compiere.model.I_C_BPartner_Location.Table_Name)
			.getPO(getLBR_Recipient_Location_ID(), get_TrxName());	}

	/** Set Recipient Location.
		@param LBR_Recipient_Location_ID Recipient Location	  */
	public void setLBR_Recipient_Location_ID (int LBR_Recipient_Location_ID)
	{
		if (LBR_Recipient_Location_ID < 1) 
			set_Value (COLUMNNAME_LBR_Recipient_Location_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_Recipient_Location_ID, Integer.valueOf(LBR_Recipient_Location_ID));
	}

	/** Get Recipient Location.
		@return Recipient Location	  */
	public int getLBR_Recipient_Location_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Recipient_Location_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Registered = 1 */
	public static final String LBR_REGISTERTYPE_Registered = "1";
	/** Not Registered = 2 */
	public static final String LBR_REGISTERTYPE_NotRegistered = "2";
	/** Set Register Type.
		@param LBR_RegisterType Register Type	  */
	public void setLBR_RegisterType (String LBR_RegisterType)
	{

		set_Value (COLUMNNAME_LBR_RegisterType, LBR_RegisterType);
	}

	/** Get Register Type.
		@return Register Type	  */
	public String getLBR_RegisterType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_RegisterType);
	}

	/** Write Off = 1 */
	public static final String LBR_RETURNACTION_WriteOff = "1";
	/** Keep = 2 */
	public static final String LBR_RETURNACTION_Keep = "2";
	/** Set Return Action.
		@param LBR_ReturnAction Return Action	  */
	public void setLBR_ReturnAction (String LBR_ReturnAction)
	{

		set_Value (COLUMNNAME_LBR_ReturnAction, LBR_ReturnAction);
	}

	/** Get Return Action.
		@return Return Action	  */
	public String getLBR_ReturnAction () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ReturnAction);
	}

	/** Set Return Days.
		@param LBR_ReturnDays Return Days	  */
	public void setLBR_ReturnDays (int LBR_ReturnDays)
	{
		set_Value (COLUMNNAME_LBR_ReturnDays, Integer.valueOf(LBR_ReturnDays));
	}

	/** Get Return Days.
		@return Return Days	  */
	public int getLBR_ReturnDays () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_ReturnDays);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Posted.
		@param Posted 
		Posting status
	  */
	public void setPosted (boolean Posted)
	{
		set_ValueNoCheck (COLUMNNAME_Posted, Boolean.valueOf(Posted));
	}

	/** Get Posted.
		@return Posting status
	  */
	public boolean isPosted () 
	{
		Object oo = get_Value(COLUMNNAME_Posted);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Processed.
		@param Processed 
		The document has been processed
	  */
	public void setProcessed (boolean Processed)
	{
		set_Value (COLUMNNAME_Processed, Boolean.valueOf(Processed));
	}

	/** Get Processed.
		@return The document has been processed
	  */
	public boolean isProcessed () 
	{
		Object oo = get_Value(COLUMNNAME_Processed);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Processed On.
		@param ProcessedOn 
		The date+time (expressed in decimal format) when the document has been processed
	  */
	public void setProcessedOn (BigDecimal ProcessedOn)
	{
		set_Value (COLUMNNAME_ProcessedOn, ProcessedOn);
	}

	/** Get Processed On.
		@return The date+time (expressed in decimal format) when the document has been processed
	  */
	public BigDecimal getProcessedOn () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ProcessedOn);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Process Now.
		@param Processing Process Now	  */
	public void setProcessing (boolean Processing)
	{
		set_Value (COLUMNNAME_Processing, Boolean.valueOf(Processing));
	}

	/** Get Process Now.
		@return Process Now	  */
	public boolean isProcessing () 
	{
		Object oo = get_Value(COLUMNNAME_Processing);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Write-off Amount.
		@param WriteOffAmt 
		Amount to write-off
	  */
	public void setWriteOffAmt (BigDecimal WriteOffAmt)
	{
		set_ValueNoCheck (COLUMNNAME_WriteOffAmt, WriteOffAmt);
	}

	/** Get Write-off Amount.
		@return Amount to write-off
	  */
	public BigDecimal getWriteOffAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_WriteOffAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set PaySchedule Number.
		@param lbr_PayScheduleNo 
		Defines the PaySchedule Number
	  */
	public void setlbr_PayScheduleNo (int lbr_PayScheduleNo)
	{
		set_Value (COLUMNNAME_lbr_PayScheduleNo, Integer.valueOf(lbr_PayScheduleNo));
	}

	/** Get PaySchedule Number.
		@return Defines the PaySchedule Number
	  */
	public int getlbr_PayScheduleNo () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_lbr_PayScheduleNo);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
}