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

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for LBR_CNABFile
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_CNABFile extends PO implements I_LBR_CNABFile, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20200908L;

    /** Standard Constructor */
    public X_LBR_CNABFile (Properties ctx, int LBR_CNABFile_ID, String trxName)
    {
      super (ctx, LBR_CNABFile_ID, trxName);
      /** if (LBR_CNABFile_ID == 0)
        {
			setAccountNo (null);
			setC_BankAccount_ID (0);
			setC_Bank_ID (0);
			setDateDoc (new Timestamp( System.currentTimeMillis() ));
// @#Date@
			setIsSOTrx (true);
// Y
			setLBR_BankSlipContract_ID (0);
			setLBR_CNABFile_ID (0);
			setProcessed (false);
// N
			setRoutingNo (null);
			setSeqNo (0);
// 1
			setlbr_AgencyNo (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_CNABFile (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_CNABFile[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Account No.
		@param AccountNo 
		Account Number
	  */
	public void setAccountNo (String AccountNo)
	{
		set_Value (COLUMNNAME_AccountNo, AccountNo);
	}

	/** Get Account No.
		@return Account Number
	  */
	public String getAccountNo () 
	{
		return (String)get_Value(COLUMNNAME_AccountNo);
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
			set_Value (COLUMNNAME_C_BankAccount_ID, null);
		else 
			set_Value (COLUMNNAME_C_BankAccount_ID, Integer.valueOf(C_BankAccount_ID));
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

	/** Set Sales Transaction.
		@param IsSOTrx 
		This is a Sales Transaction
	  */
	public void setIsSOTrx (boolean IsSOTrx)
	{
		set_ValueNoCheck (COLUMNNAME_IsSOTrx, Boolean.valueOf(IsSOTrx));
	}

	/** Get Sales Transaction.
		@return This is a Sales Transaction
	  */
	public boolean isSOTrx () 
	{
		Object oo = get_Value(COLUMNNAME_IsSOTrx);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Account Digit.
		@param LBR_BankAccountVD Account Digit	  */
	public void setLBR_BankAccountVD (String LBR_BankAccountVD)
	{
		set_Value (COLUMNNAME_LBR_BankAccountVD, LBR_BankAccountVD);
	}

	/** Get Account Digit.
		@return Account Digit	  */
	public String getLBR_BankAccountVD () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BankAccountVD);
	}

	/** Set Agency Digit.
		@param LBR_BankAgencyVD Agency Digit	  */
	public void setLBR_BankAgencyVD (String LBR_BankAgencyVD)
	{
		set_Value (COLUMNNAME_LBR_BankAgencyVD, LBR_BankAgencyVD);
	}

	/** Get Agency Digit.
		@return Agency Digit	  */
	public String getLBR_BankAgencyVD () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BankAgencyVD);
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

	/** Set CNAB File.
		@param LBR_CNABFile_ID CNAB File	  */
	public void setLBR_CNABFile_ID (int LBR_CNABFile_ID)
	{
		if (LBR_CNABFile_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_CNABFile_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_CNABFile_ID, Integer.valueOf(LBR_CNABFile_ID));
	}

	/** Get CNAB File.
		@return CNAB File	  */
	public int getLBR_CNABFile_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CNABFile_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_CNABFile_UU.
		@param LBR_CNABFile_UU LBR_CNABFile_UU	  */
	public void setLBR_CNABFile_UU (String LBR_CNABFile_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_CNABFile_UU, LBR_CNABFile_UU);
	}

	/** Get LBR_CNABFile_UU.
		@return LBR_CNABFile_UU	  */
	public String getLBR_CNABFile_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABFile_UU);
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

	/** Set Routing No.
		@param RoutingNo 
		Bank Routing Number
	  */
	public void setRoutingNo (String RoutingNo)
	{
		set_Value (COLUMNNAME_RoutingNo, RoutingNo);
	}

	/** Get Routing No.
		@return Bank Routing Number
	  */
	public String getRoutingNo () 
	{
		return (String)get_Value(COLUMNNAME_RoutingNo);
	}

	/** Set Sequence.
		@param SeqNo 
		Method of ordering records; lowest number comes first
	  */
	public void setSeqNo (int SeqNo)
	{
		set_Value (COLUMNNAME_SeqNo, Integer.valueOf(SeqNo));
	}

	/** Get Sequence.
		@return Method of ordering records; lowest number comes first
	  */
	public int getSeqNo () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_SeqNo);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Agency Number.
		@param lbr_AgencyNo 
		Agency Number
	  */
	public void setlbr_AgencyNo (String lbr_AgencyNo)
	{
		set_Value (COLUMNNAME_lbr_AgencyNo, lbr_AgencyNo);
	}

	/** Get Agency Number.
		@return Agency Number
	  */
	public String getlbr_AgencyNo () 
	{
		return (String)get_Value(COLUMNNAME_lbr_AgencyNo);
	}
}