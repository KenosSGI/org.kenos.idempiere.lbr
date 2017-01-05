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

/** Generated Interface for LBR_Boleto
 *  @author iDempiere (generated) 
 *  @version Release 4.1
 */
@SuppressWarnings("all")
public interface I_LBR_Boleto 
{

    /** TableName=LBR_Boleto */
    public static final String Table_Name = "LBR_Boleto";

    /** AD_Table_ID=1000001 */
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

    /** Column name AccountNo */
    public static final String COLUMNNAME_AccountNo = "AccountNo";

	/** Set Account No.
	  * Account Number
	  */
	public void setAccountNo (String AccountNo);

	/** Get Account No.
	  * Account Number
	  */
	public String getAccountNo();

    /** Column name Address1 */
    public static final String COLUMNNAME_Address1 = "Address1";

	/** Set Address 1.
	  * Address line 1 for this location
	  */
	public void setAddress1 (String Address1);

	/** Get Address 1.
	  * Address line 1 for this location
	  */
	public String getAddress1();

    /** Column name Address2 */
    public static final String COLUMNNAME_Address2 = "Address2";

	/** Set Address 2.
	  * Address line 2 for this location
	  */
	public void setAddress2 (String Address2);

	/** Get Address 2.
	  * Address line 2 for this location
	  */
	public String getAddress2();

    /** Column name Address3 */
    public static final String COLUMNNAME_Address3 = "Address3";

	/** Set Address 3.
	  * Address Line 3 for the location
	  */
	public void setAddress3 (String Address3);

	/** Get Address 3.
	  * Address Line 3 for the location
	  */
	public String getAddress3();

    /** Column name Address4 */
    public static final String COLUMNNAME_Address4 = "Address4";

	/** Set Address 4.
	  * Address Line 4 for the location
	  */
	public void setAddress4 (String Address4);

	/** Get Address 4.
	  * Address Line 4 for the location
	  */
	public String getAddress4();

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

    /** Column name C_Payment_ID */
    public static final String COLUMNNAME_C_Payment_ID = "C_Payment_ID";

	/** Set Payment.
	  * Payment identifier
	  */
	public void setC_Payment_ID (int C_Payment_ID);

	/** Get Payment.
	  * Payment identifier
	  */
	public int getC_Payment_ID();

	public org.compiere.model.I_C_Payment getC_Payment() throws RuntimeException;

    /** Column name City */
    public static final String COLUMNNAME_City = "City";

	/** Set City.
	  * Identifies a City
	  */
	public void setCity (String City);

	/** Get City.
	  * Identifies a City
	  */
	public String getCity();

    /** Column name Comments */
    public static final String COLUMNNAME_Comments = "Comments";

	/** Set Comments.
	  * Comments or additional information
	  */
	public void setComments (String Comments);

	/** Get Comments.
	  * Comments or additional information
	  */
	public String getComments();

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

    /** Column name DiscountDate */
    public static final String COLUMNNAME_DiscountDate = "DiscountDate";

	/** Set Discount Date.
	  * Last Date for payments with discount
	  */
	public void setDiscountDate (Timestamp DiscountDate);

	/** Get Discount Date.
	  * Last Date for payments with discount
	  */
	public Timestamp getDiscountDate();

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

    /** Column name LBR_AgencyNo */
    public static final String COLUMNNAME_LBR_AgencyNo = "LBR_AgencyNo";

	/** Set Agency Number.
	  * Agency Number
	  */
	public void setLBR_AgencyNo (String LBR_AgencyNo);

	/** Get Agency Number.
	  * Agency Number
	  */
	public String getLBR_AgencyNo();

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

    /** Column name LBR_BillFold */
    public static final String COLUMNNAME_LBR_BillFold = "LBR_BillFold";

	/** Set Bill Fold.
	  * Type of Bill Fold - For Bank Usage
	  */
	public void setLBR_BillFold (String LBR_BillFold);

	/** Get Bill Fold.
	  * Type of Bill Fold - For Bank Usage
	  */
	public String getLBR_BillFold();

    /** Column name LBR_BillKind */
    public static final String COLUMNNAME_LBR_BillKind = "LBR_BillKind";

	/** Set Bill Kind.
	  * Defines the kind of Bill
	  */
	public void setLBR_BillKind (String LBR_BillKind);

	/** Get Bill Kind.
	  * Defines the kind of Bill
	  */
	public String getLBR_BillKind();

    /** Column name LBR_Boleto_ID */
    public static final String COLUMNNAME_LBR_Boleto_ID = "LBR_Boleto_ID";

	/** Set Boleto.
	  * Primary Key table LBR_Boleto
	  */
	public void setLBR_Boleto_ID (int LBR_Boleto_ID);

	/** Get Boleto.
	  * Primary Key table LBR_Boleto
	  */
	public int getLBR_Boleto_ID();

    /** Column name LBR_Cessionary */
    public static final String COLUMNNAME_LBR_Cessionary = "LBR_Cessionary";

	/** Set Cessionary.
	  * Identifies the Cessionary
	  */
	public void setLBR_Cessionary (String LBR_Cessionary);

	/** Get Cessionary.
	  * Identifies the Cessionary
	  */
	public String getLBR_Cessionary();

    /** Column name LBR_ClientCode */
    public static final String COLUMNNAME_LBR_ClientCode = "LBR_ClientCode";

	/** Set Client Code.
	  * Client Code - needed for some Banks
	  */
	public void setLBR_ClientCode (String LBR_ClientCode);

	/** Get Client Code.
	  * Client Code - needed for some Banks
	  */
	public String getLBR_ClientCode();

    /** Column name LBR_DocDate */
    public static final String COLUMNNAME_LBR_DocDate = "LBR_DocDate";

	/** Set Document Date.
	  * Identifies the Document Date
	  */
	public void setLBR_DocDate (Timestamp LBR_DocDate);

	/** Get Document Date.
	  * Identifies the Document Date
	  */
	public Timestamp getLBR_DocDate();

    /** Column name LBR_HasSue */
    public static final String COLUMNNAME_LBR_HasSue = "LBR_HasSue";

	/** Set Has Sue.
	  * Define if this Document must be Sue
	  */
	public void setLBR_HasSue (boolean LBR_HasSue);

	/** Get Has Sue.
	  * Define if this Document must be Sue
	  */
	public boolean isLBR_HasSue();

    /** Column name LBR_Instruction1 */
    public static final String COLUMNNAME_LBR_Instruction1 = "LBR_Instruction1";

	/** Set Instruction 1.
	  * Identifies the Instrucion 1
	  */
	public void setLBR_Instruction1 (String LBR_Instruction1);

	/** Get Instruction 1.
	  * Identifies the Instrucion 1
	  */
	public String getLBR_Instruction1();

    /** Column name LBR_Instruction2 */
    public static final String COLUMNNAME_LBR_Instruction2 = "LBR_Instruction2";

	/** Set Instruction 2.
	  * Identifies the Instrucion 2
	  */
	public void setLBR_Instruction2 (String LBR_Instruction2);

	/** Get Instruction 2.
	  * Identifies the Instrucion 2
	  */
	public String getLBR_Instruction2();

    /** Column name LBR_Instruction3 */
    public static final String COLUMNNAME_LBR_Instruction3 = "LBR_Instruction3";

	/** Set Instruction 3.
	  * Identifies the Instrucion 3
	  */
	public void setLBR_Instruction3 (String LBR_Instruction3);

	/** Get Instruction 3.
	  * Identifies the Instrucion 3
	  */
	public String getLBR_Instruction3();

    /** Column name LBR_Interest */
    public static final String COLUMNNAME_LBR_Interest = "LBR_Interest";

	/** Set Interest.
	  * Defines the Interest
	  */
	public void setLBR_Interest (BigDecimal LBR_Interest);

	/** Get Interest.
	  * Defines the Interest
	  */
	public BigDecimal getLBR_Interest();

    /** Column name LBR_IsCancelled */
    public static final String COLUMNNAME_LBR_IsCancelled = "LBR_IsCancelled";

	/** Set IsCancelled.
	  * Defines if the Document IsCancelled
	  */
	public void setLBR_IsCancelled (boolean LBR_IsCancelled);

	/** Get IsCancelled.
	  * Defines if the Document IsCancelled
	  */
	public boolean isLBR_IsCancelled();

    /** Column name LBR_OccurNo */
    public static final String COLUMNNAME_LBR_OccurNo = "LBR_OccurNo";

	/** Set Occurrence Number.
	  * Defines the Occurrence Number
	  */
	public void setLBR_OccurNo (int LBR_OccurNo);

	/** Get Occurrence Number.
	  * Defines the Occurrence Number
	  */
	public int getLBR_OccurNo();

    /** Column name LBR_PayScheduleNo */
    public static final String COLUMNNAME_LBR_PayScheduleNo = "LBR_PayScheduleNo";

	/** Set PaySchedule Number.
	  * Defines the PaySchedule Number
	  */
	public void setLBR_PayScheduleNo (String LBR_PayScheduleNo);

	/** Get PaySchedule Number.
	  * Defines the PaySchedule Number
	  */
	public String getLBR_PayScheduleNo();

    /** Column name LBR_PaymentLocation1 */
    public static final String COLUMNNAME_LBR_PaymentLocation1 = "LBR_PaymentLocation1";

	/** Set Payment Location 1.
	  * Identifies the Payment Location 1
	  */
	public void setLBR_PaymentLocation1 (String LBR_PaymentLocation1);

	/** Get Payment Location 1.
	  * Identifies the Payment Location 1
	  */
	public String getLBR_PaymentLocation1();

    /** Column name LBR_PaymentLocation2 */
    public static final String COLUMNNAME_LBR_PaymentLocation2 = "LBR_PaymentLocation2";

	/** Set Payment Location 2.
	  * Identifies the Payment Location 2
	  */
	public void setLBR_PaymentLocation2 (String LBR_PaymentLocation2);

	/** Get Payment Location 2.
	  * Identifies the Payment Location 2
	  */
	public String getLBR_PaymentLocation2();

    /** Column name LBR_ReceiverName */
    public static final String COLUMNNAME_LBR_ReceiverName = "LBR_ReceiverName";

	/** Set Receiver Name.
	  * Name of the Receiver
	  */
	public void setLBR_ReceiverName (String LBR_ReceiverName);

	/** Get Receiver Name.
	  * Name of the Receiver
	  */
	public String getLBR_ReceiverName();

    /** Column name LBR_SueDays */
    public static final String COLUMNNAME_LBR_SueDays = "LBR_SueDays";

	/** Set Sue Days.
	  * Define the Sue Days
	  */
	public void setLBR_SueDays (int LBR_SueDays);

	/** Get Sue Days.
	  * Define the Sue Days
	  */
	public int getLBR_SueDays();

    /** Column name LBR_jBoletoNo */
    public static final String COLUMNNAME_LBR_jBoletoNo = "LBR_jBoletoNo";

	/** Set jBoleto Number.
	  * Identifies the bank number at jBoleto
	  */
	public void setLBR_jBoletoNo (String LBR_jBoletoNo);

	/** Get jBoleto Number.
	  * Identifies the bank number at jBoleto
	  */
	public String getLBR_jBoletoNo();

    /** Column name Postal */
    public static final String COLUMNNAME_Postal = "Postal";

	/** Set ZIP.
	  * Postal code
	  */
	public void setPostal (String Postal);

	/** Get ZIP.
	  * Postal code
	  */
	public String getPostal();

    /** Column name RegionName */
    public static final String COLUMNNAME_RegionName = "RegionName";

	/** Set Region.
	  * Name of the Region
	  */
	public void setRegionName (String RegionName);

	/** Get Region.
	  * Name of the Region
	  */
	public String getRegionName();

    /** Column name RoutingNo */
    public static final String COLUMNNAME_RoutingNo = "RoutingNo";

	/** Set Routing No.
	  * Bank Routing Number
	  */
	public void setRoutingNo (String RoutingNo);

	/** Get Routing No.
	  * Bank Routing Number
	  */
	public String getRoutingNo();

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
