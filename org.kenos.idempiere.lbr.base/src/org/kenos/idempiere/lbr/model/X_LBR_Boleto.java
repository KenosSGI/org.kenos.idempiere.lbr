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
package org.kenos.idempiere.lbr.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LBR_Boleto
 *  @author iDempiere (generated) 
 *  @version Release 4.1 - $Id$ */
public class X_LBR_Boleto extends PO implements I_LBR_Boleto, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20161221L;

    /** Standard Constructor */
    public X_LBR_Boleto (Properties ctx, int LBR_Boleto_ID, String trxName)
    {
      super (ctx, LBR_Boleto_ID, trxName);
      /** if (LBR_Boleto_ID == 0)
        {
			setAccountNo (null);
			setC_BPartner_ID (0);
			setC_Invoice_ID (0);
			setDiscountAmt (Env.ZERO);
			setDiscountDate (new Timestamp( System.currentTimeMillis() ));
			setDocumentNo (null);
			setDueDate (new Timestamp( System.currentTimeMillis() ));
			setGrandTotal (Env.ZERO);
			setIsPaid (false);
// 'N'
			setLBR_AgencyNo (null);
			setLBR_BPTypeBR (null);
			setLBR_BillFold (null);
			setLBR_Boleto_ID (0);
			setLBR_Cessionary (null);
			setLBR_DocDate (new Timestamp( System.currentTimeMillis() ));
			setLBR_HasSue (false);
// 'N'
			setLBR_IsCancelled (false);
// 'N'
			setLBR_ReceiverName (null);
			setLBR_jBoletoNo (null);
			setRoutingNo (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_Boleto (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_Boleto[")
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

	/** Set Address 1.
		@param Address1 
		Address line 1 for this location
	  */
	public void setAddress1 (String Address1)
	{
		set_Value (COLUMNNAME_Address1, Address1);
	}

	/** Get Address 1.
		@return Address line 1 for this location
	  */
	public String getAddress1 () 
	{
		return (String)get_Value(COLUMNNAME_Address1);
	}

	/** Set Address 2.
		@param Address2 
		Address line 2 for this location
	  */
	public void setAddress2 (String Address2)
	{
		set_Value (COLUMNNAME_Address2, Address2);
	}

	/** Get Address 2.
		@return Address line 2 for this location
	  */
	public String getAddress2 () 
	{
		return (String)get_Value(COLUMNNAME_Address2);
	}

	/** Set Address 3.
		@param Address3 
		Address Line 3 for the location
	  */
	public void setAddress3 (String Address3)
	{
		set_Value (COLUMNNAME_Address3, Address3);
	}

	/** Get Address 3.
		@return Address Line 3 for the location
	  */
	public String getAddress3 () 
	{
		return (String)get_Value(COLUMNNAME_Address3);
	}

	/** Set Address 4.
		@param Address4 
		Address Line 4 for the location
	  */
	public void setAddress4 (String Address4)
	{
		set_Value (COLUMNNAME_Address4, Address4);
	}

	/** Get Address 4.
		@return Address Line 4 for the location
	  */
	public String getAddress4 () 
	{
		return (String)get_Value(COLUMNNAME_Address4);
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

	public org.compiere.model.I_C_Payment getC_Payment() throws RuntimeException
    {
		return (org.compiere.model.I_C_Payment)MTable.get(getCtx(), org.compiere.model.I_C_Payment.Table_Name)
			.getPO(getC_Payment_ID(), get_TrxName());	}

	/** Set Payment.
		@param C_Payment_ID 
		Payment identifier
	  */
	public void setC_Payment_ID (int C_Payment_ID)
	{
		if (C_Payment_ID < 1) 
			set_Value (COLUMNNAME_C_Payment_ID, null);
		else 
			set_Value (COLUMNNAME_C_Payment_ID, Integer.valueOf(C_Payment_ID));
	}

	/** Get Payment.
		@return Payment identifier
	  */
	public int getC_Payment_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Payment_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set City.
		@param City 
		Identifies a City
	  */
	public void setCity (String City)
	{
		set_Value (COLUMNNAME_City, City);
	}

	/** Get City.
		@return Identifies a City
	  */
	public String getCity () 
	{
		return (String)get_Value(COLUMNNAME_City);
	}

	/** Set Comments.
		@param Comments 
		Comments or additional information
	  */
	public void setComments (String Comments)
	{
		set_Value (COLUMNNAME_Comments, Comments);
	}

	/** Get Comments.
		@return Comments or additional information
	  */
	public String getComments () 
	{
		return (String)get_Value(COLUMNNAME_Comments);
	}

	/** Set Discount Amount.
		@param DiscountAmt 
		Calculated amount of discount
	  */
	public void setDiscountAmt (BigDecimal DiscountAmt)
	{
		set_Value (COLUMNNAME_DiscountAmt, DiscountAmt);
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

	/** Set Discount Date.
		@param DiscountDate 
		Last Date for payments with discount
	  */
	public void setDiscountDate (Timestamp DiscountDate)
	{
		set_Value (COLUMNNAME_DiscountDate, DiscountDate);
	}

	/** Get Discount Date.
		@return Last Date for payments with discount
	  */
	public Timestamp getDiscountDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DiscountDate);
	}

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
		set_Value (COLUMNNAME_DocumentNo, DocumentNo);
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

	/** Set Paid.
		@param IsPaid 
		The document is paid
	  */
	public void setIsPaid (boolean IsPaid)
	{
		set_Value (COLUMNNAME_IsPaid, Boolean.valueOf(IsPaid));
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

	/** Set Agency Number.
		@param LBR_AgencyNo 
		Agency Number
	  */
	public void setLBR_AgencyNo (String LBR_AgencyNo)
	{
		set_Value (COLUMNNAME_LBR_AgencyNo, LBR_AgencyNo);
	}

	/** Get Agency Number.
		@return Agency Number
	  */
	public String getLBR_AgencyNo () 
	{
		return (String)get_Value(COLUMNNAME_LBR_AgencyNo);
	}

	/** PJ - Legal Entity = PJ */
	public static final String LBR_BPTYPEBR_PJ_LegalEntity = "PJ";
	/** PF - Individual = PF */
	public static final String LBR_BPTYPEBR_PF_Individual = "PF";
	/** PM - Individual Minor = PM */
	public static final String LBR_BPTYPEBR_PM_IndividualMinor = "PM";
	/** XX - Foreigner = XX */
	public static final String LBR_BPTYPEBR_XX_Foreigner = "XX";
	/** Set Brazilian BP Type.
		@param LBR_BPTypeBR 
		Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)
	  */
	public void setLBR_BPTypeBR (String LBR_BPTypeBR)
	{

		set_Value (COLUMNNAME_LBR_BPTypeBR, LBR_BPTypeBR);
	}

	/** Get Brazilian BP Type.
		@return Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)
	  */
	public String getLBR_BPTypeBR () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BPTypeBR);
	}

	/** Set Bill Fold.
		@param LBR_BillFold 
		Type of Bill Fold - For Bank Usage
	  */
	public void setLBR_BillFold (String LBR_BillFold)
	{
		set_Value (COLUMNNAME_LBR_BillFold, LBR_BillFold);
	}

	/** Get Bill Fold.
		@return Type of Bill Fold - For Bank Usage
	  */
	public String getLBR_BillFold () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BillFold);
	}

	/** Set Bill Kind.
		@param LBR_BillKind 
		Defines the kind of Bill
	  */
	public void setLBR_BillKind (String LBR_BillKind)
	{
		set_Value (COLUMNNAME_LBR_BillKind, LBR_BillKind);
	}

	/** Get Bill Kind.
		@return Defines the kind of Bill
	  */
	public String getLBR_BillKind () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BillKind);
	}

	/** Set Boleto.
		@param LBR_Boleto_ID 
		Primary Key table LBR_Boleto
	  */
	public void setLBR_Boleto_ID (int LBR_Boleto_ID)
	{
		if (LBR_Boleto_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_Boleto_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_Boleto_ID, Integer.valueOf(LBR_Boleto_ID));
	}

	/** Get Boleto.
		@return Primary Key table LBR_Boleto
	  */
	public int getLBR_Boleto_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Boleto_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Cessionary.
		@param LBR_Cessionary 
		Identifies the Cessionary
	  */
	public void setLBR_Cessionary (String LBR_Cessionary)
	{
		set_Value (COLUMNNAME_LBR_Cessionary, LBR_Cessionary);
	}

	/** Get Cessionary.
		@return Identifies the Cessionary
	  */
	public String getLBR_Cessionary () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Cessionary);
	}

	/** Set Client Code.
		@param LBR_ClientCode 
		Client Code - needed for some Banks
	  */
	public void setLBR_ClientCode (String LBR_ClientCode)
	{
		set_Value (COLUMNNAME_LBR_ClientCode, LBR_ClientCode);
	}

	/** Get Client Code.
		@return Client Code - needed for some Banks
	  */
	public String getLBR_ClientCode () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ClientCode);
	}

	/** Set Document Date.
		@param LBR_DocDate 
		Identifies the Document Date
	  */
	public void setLBR_DocDate (Timestamp LBR_DocDate)
	{
		set_Value (COLUMNNAME_LBR_DocDate, LBR_DocDate);
	}

	/** Get Document Date.
		@return Identifies the Document Date
	  */
	public Timestamp getLBR_DocDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_DocDate);
	}

	/** Set Has Sue.
		@param LBR_HasSue 
		Define if this Document must be Sue
	  */
	public void setLBR_HasSue (boolean LBR_HasSue)
	{
		set_Value (COLUMNNAME_LBR_HasSue, Boolean.valueOf(LBR_HasSue));
	}

	/** Get Has Sue.
		@return Define if this Document must be Sue
	  */
	public boolean isLBR_HasSue () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_HasSue);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Instruction 1.
		@param LBR_Instruction1 
		Identifies the Instrucion 1
	  */
	public void setLBR_Instruction1 (String LBR_Instruction1)
	{
		set_Value (COLUMNNAME_LBR_Instruction1, LBR_Instruction1);
	}

	/** Get Instruction 1.
		@return Identifies the Instrucion 1
	  */
	public String getLBR_Instruction1 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Instruction1);
	}

	/** Set Instruction 2.
		@param LBR_Instruction2 
		Identifies the Instrucion 2
	  */
	public void setLBR_Instruction2 (String LBR_Instruction2)
	{
		set_Value (COLUMNNAME_LBR_Instruction2, LBR_Instruction2);
	}

	/** Get Instruction 2.
		@return Identifies the Instrucion 2
	  */
	public String getLBR_Instruction2 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Instruction2);
	}

	/** Set Instruction 3.
		@param LBR_Instruction3 
		Identifies the Instrucion 3
	  */
	public void setLBR_Instruction3 (String LBR_Instruction3)
	{
		set_Value (COLUMNNAME_LBR_Instruction3, LBR_Instruction3);
	}

	/** Get Instruction 3.
		@return Identifies the Instrucion 3
	  */
	public String getLBR_Instruction3 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Instruction3);
	}

	/** Set Interest.
		@param LBR_Interest 
		Defines the Interest
	  */
	public void setLBR_Interest (BigDecimal LBR_Interest)
	{
		set_Value (COLUMNNAME_LBR_Interest, LBR_Interest);
	}

	/** Get Interest.
		@return Defines the Interest
	  */
	public BigDecimal getLBR_Interest () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_Interest);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set IsCancelled.
		@param LBR_IsCancelled 
		Defines if the Document IsCancelled
	  */
	public void setLBR_IsCancelled (boolean LBR_IsCancelled)
	{
		set_Value (COLUMNNAME_LBR_IsCancelled, Boolean.valueOf(LBR_IsCancelled));
	}

	/** Get IsCancelled.
		@return Defines if the Document IsCancelled
	  */
	public boolean isLBR_IsCancelled () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_IsCancelled);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Occurrence Number.
		@param LBR_OccurNo 
		Defines the Occurrence Number
	  */
	public void setLBR_OccurNo (int LBR_OccurNo)
	{
		set_Value (COLUMNNAME_LBR_OccurNo, Integer.valueOf(LBR_OccurNo));
	}

	/** Get Occurrence Number.
		@return Defines the Occurrence Number
	  */
	public int getLBR_OccurNo () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_OccurNo);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set PaySchedule Number.
		@param LBR_PayScheduleNo 
		Defines the PaySchedule Number
	  */
	public void setLBR_PayScheduleNo (String LBR_PayScheduleNo)
	{
		set_Value (COLUMNNAME_LBR_PayScheduleNo, LBR_PayScheduleNo);
	}

	/** Get PaySchedule Number.
		@return Defines the PaySchedule Number
	  */
	public String getLBR_PayScheduleNo () 
	{
		return (String)get_Value(COLUMNNAME_LBR_PayScheduleNo);
	}

	/** Set Payment Location 1.
		@param LBR_PaymentLocation1 
		Identifies the Payment Location 1
	  */
	public void setLBR_PaymentLocation1 (String LBR_PaymentLocation1)
	{
		set_Value (COLUMNNAME_LBR_PaymentLocation1, LBR_PaymentLocation1);
	}

	/** Get Payment Location 1.
		@return Identifies the Payment Location 1
	  */
	public String getLBR_PaymentLocation1 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_PaymentLocation1);
	}

	/** Set Payment Location 2.
		@param LBR_PaymentLocation2 
		Identifies the Payment Location 2
	  */
	public void setLBR_PaymentLocation2 (String LBR_PaymentLocation2)
	{
		set_Value (COLUMNNAME_LBR_PaymentLocation2, LBR_PaymentLocation2);
	}

	/** Get Payment Location 2.
		@return Identifies the Payment Location 2
	  */
	public String getLBR_PaymentLocation2 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_PaymentLocation2);
	}

	/** Set Receiver Name.
		@param LBR_ReceiverName 
		Name of the Receiver
	  */
	public void setLBR_ReceiverName (String LBR_ReceiverName)
	{
		set_Value (COLUMNNAME_LBR_ReceiverName, LBR_ReceiverName);
	}

	/** Get Receiver Name.
		@return Name of the Receiver
	  */
	public String getLBR_ReceiverName () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ReceiverName);
	}

	/** Set Sue Days.
		@param LBR_SueDays 
		Define the Sue Days
	  */
	public void setLBR_SueDays (int LBR_SueDays)
	{
		set_Value (COLUMNNAME_LBR_SueDays, Integer.valueOf(LBR_SueDays));
	}

	/** Get Sue Days.
		@return Define the Sue Days
	  */
	public int getLBR_SueDays () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_SueDays);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set jBoleto Number.
		@param LBR_jBoletoNo 
		Identifies the bank number at jBoleto
	  */
	public void setLBR_jBoletoNo (String LBR_jBoletoNo)
	{
		set_Value (COLUMNNAME_LBR_jBoletoNo, LBR_jBoletoNo);
	}

	/** Get jBoleto Number.
		@return Identifies the bank number at jBoleto
	  */
	public String getLBR_jBoletoNo () 
	{
		return (String)get_Value(COLUMNNAME_LBR_jBoletoNo);
	}

	/** Set ZIP.
		@param Postal 
		Postal code
	  */
	public void setPostal (String Postal)
	{
		set_Value (COLUMNNAME_Postal, Postal);
	}

	/** Get ZIP.
		@return Postal code
	  */
	public String getPostal () 
	{
		return (String)get_Value(COLUMNNAME_Postal);
	}

	/** Set Region.
		@param RegionName 
		Name of the Region
	  */
	public void setRegionName (String RegionName)
	{
		set_Value (COLUMNNAME_RegionName, RegionName);
	}

	/** Get Region.
		@return Name of the Region
	  */
	public String getRegionName () 
	{
		return (String)get_Value(COLUMNNAME_RegionName);
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
}