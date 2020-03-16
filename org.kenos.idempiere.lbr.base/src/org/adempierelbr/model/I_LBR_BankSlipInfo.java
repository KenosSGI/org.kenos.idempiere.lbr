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

/** Generated Interface for LBR_BankSlipInfo
 *  @author iDempiere (generated) 
 *  @version Release 6.2
 */
@SuppressWarnings("all")
public interface I_LBR_BankSlipInfo 
{

    /** TableName=LBR_BankSlipInfo */
    public static final String Table_Name = "LBR_BankSlipInfo";

    /** AD_Table_ID=1120667 */
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

    /** Column name BPName */
    public static final String COLUMNNAME_BPName = "BPName";

	/** Set BP Name	  */
	public void setBPName (String BPName);

	/** Get BP Name	  */
	public String getBPName();

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

    /** Column name LBR_AccordNo */
    public static final String COLUMNNAME_LBR_AccordNo = "LBR_AccordNo";

	/** Set Accord	  */
	public void setLBR_AccordNo (String LBR_AccordNo);

	/** Get Accord	  */
	public String getLBR_AccordNo();

    /** Column name LBR_BankAccountVD */
    public static final String COLUMNNAME_LBR_BankAccountVD = "LBR_BankAccountVD";

	/** Set Account Digit	  */
	public void setLBR_BankAccountVD (String LBR_BankAccountVD);

	/** Get Account Digit	  */
	public String getLBR_BankAccountVD();

    /** Column name LBR_BankAgencyVD */
    public static final String COLUMNNAME_LBR_BankAgencyVD = "LBR_BankAgencyVD";

	/** Set Agency Digit	  */
	public void setLBR_BankAgencyVD (String LBR_BankAgencyVD);

	/** Get Agency Digit	  */
	public String getLBR_BankAgencyVD();

    /** Column name LBR_BankSlipFoldCode */
    public static final String COLUMNNAME_LBR_BankSlipFoldCode = "LBR_BankSlipFoldCode";

	/** Set Bank Slip Code	  */
	public void setLBR_BankSlipFoldCode (String LBR_BankSlipFoldCode);

	/** Get Bank Slip Code	  */
	public String getLBR_BankSlipFoldCode();

    /** Column name LBR_BankSlipFoldValue */
    public static final String COLUMNNAME_LBR_BankSlipFoldValue = "LBR_BankSlipFoldValue";

	/** Set Bank Slip Value	  */
	public void setLBR_BankSlipFoldValue (String LBR_BankSlipFoldValue);

	/** Get Bank Slip Value	  */
	public String getLBR_BankSlipFoldValue();

    /** Column name LBR_BankSlipInfo_UU */
    public static final String COLUMNNAME_LBR_BankSlipInfo_UU = "LBR_BankSlipInfo_UU";

	/** Set LBR_BankSlipInfo_UU	  */
	public void setLBR_BankSlipInfo_UU (String LBR_BankSlipInfo_UU);

	/** Get LBR_BankSlipInfo_UU	  */
	public String getLBR_BankSlipInfo_UU();

    /** Column name LBR_BankSlipKindCode */
    public static final String COLUMNNAME_LBR_BankSlipKindCode = "LBR_BankSlipKindCode";

	/** Set Bank Slip Kind Code	  */
	public void setLBR_BankSlipKindCode (String LBR_BankSlipKindCode);

	/** Get Bank Slip Kind Code	  */
	public String getLBR_BankSlipKindCode();

    /** Column name LBR_BankSlipKindValue */
    public static final String COLUMNNAME_LBR_BankSlipKindValue = "LBR_BankSlipKindValue";

	/** Set Bank Slip Kind Value	  */
	public void setLBR_BankSlipKindValue (String LBR_BankSlipKindValue);

	/** Get Bank Slip Kind Value	  */
	public String getLBR_BankSlipKindValue();

    /** Column name LBR_BankSlip_ID */
    public static final String COLUMNNAME_LBR_BankSlip_ID = "LBR_BankSlip_ID";

	/** Set Bank Slip	  */
	public void setLBR_BankSlip_ID (int LBR_BankSlip_ID);

	/** Get Bank Slip	  */
	public int getLBR_BankSlip_ID();

    /** Column name LBR_Barcode */
    public static final String COLUMNNAME_LBR_Barcode = "LBR_Barcode";

	/** Set Barcode	  */
	public void setLBR_Barcode (String LBR_Barcode);

	/** Get Barcode	  */
	public String getLBR_Barcode();

    /** Column name LBR_GuarantorAddress1 */
    public static final String COLUMNNAME_LBR_GuarantorAddress1 = "LBR_GuarantorAddress1";

	/** Set Address 1	  */
	public void setLBR_GuarantorAddress1 (String LBR_GuarantorAddress1);

	/** Get Address 1	  */
	public String getLBR_GuarantorAddress1();

    /** Column name LBR_GuarantorAddress2 */
    public static final String COLUMNNAME_LBR_GuarantorAddress2 = "LBR_GuarantorAddress2";

	/** Set Address 2	  */
	public void setLBR_GuarantorAddress2 (String LBR_GuarantorAddress2);

	/** Get Address 2	  */
	public String getLBR_GuarantorAddress2();

    /** Column name LBR_GuarantorAddress3 */
    public static final String COLUMNNAME_LBR_GuarantorAddress3 = "LBR_GuarantorAddress3";

	/** Set Address 3	  */
	public void setLBR_GuarantorAddress3 (String LBR_GuarantorAddress3);

	/** Get Address 3	  */
	public String getLBR_GuarantorAddress3();

    /** Column name LBR_GuarantorAddress4 */
    public static final String COLUMNNAME_LBR_GuarantorAddress4 = "LBR_GuarantorAddress4";

	/** Set Address 4	  */
	public void setLBR_GuarantorAddress4 (String LBR_GuarantorAddress4);

	/** Get Address 4	  */
	public String getLBR_GuarantorAddress4();

    /** Column name LBR_GuarantorBPName */
    public static final String COLUMNNAME_LBR_GuarantorBPName = "LBR_GuarantorBPName";

	/** Set Guarantor Name	  */
	public void setLBR_GuarantorBPName (String LBR_GuarantorBPName);

	/** Get Guarantor Name	  */
	public String getLBR_GuarantorBPName();

    /** Column name LBR_GuarantorCNPJ */
    public static final String COLUMNNAME_LBR_GuarantorCNPJ = "LBR_GuarantorCNPJ";

	/** Set Guarantor CNPJ	  */
	public void setLBR_GuarantorCNPJ (String LBR_GuarantorCNPJ);

	/** Get Guarantor CNPJ	  */
	public String getLBR_GuarantorCNPJ();

    /** Column name LBR_GuarantorCity */
    public static final String COLUMNNAME_LBR_GuarantorCity = "LBR_GuarantorCity";

	/** Set Guarantor City	  */
	public void setLBR_GuarantorCity (String LBR_GuarantorCity);

	/** Get Guarantor City	  */
	public String getLBR_GuarantorCity();

    /** Column name LBR_GuarantorPostal */
    public static final String COLUMNNAME_LBR_GuarantorPostal = "LBR_GuarantorPostal";

	/** Set Guarantor Postal	  */
	public void setLBR_GuarantorPostal (String LBR_GuarantorPostal);

	/** Get Guarantor Postal	  */
	public String getLBR_GuarantorPostal();

    /** Column name LBR_GuarantorRegion */
    public static final String COLUMNNAME_LBR_GuarantorRegion = "LBR_GuarantorRegion";

	/** Set Guarantor Region	  */
	public void setLBR_GuarantorRegion (String LBR_GuarantorRegion);

	/** Get Guarantor Region	  */
	public String getLBR_GuarantorRegion();

    /** Column name LBR_Instruction4 */
    public static final String COLUMNNAME_LBR_Instruction4 = "LBR_Instruction4";

	/** Set Instruction 4	  */
	public void setLBR_Instruction4 (String LBR_Instruction4);

	/** Get Instruction 4	  */
	public String getLBR_Instruction4();

    /** Column name LBR_Instruction5 */
    public static final String COLUMNNAME_LBR_Instruction5 = "LBR_Instruction5";

	/** Set Instruction 5	  */
	public void setLBR_Instruction5 (String LBR_Instruction5);

	/** Get Instruction 5	  */
	public String getLBR_Instruction5();

    /** Column name LBR_Instruction6 */
    public static final String COLUMNNAME_LBR_Instruction6 = "LBR_Instruction6";

	/** Set Instruction 6	  */
	public void setLBR_Instruction6 (String LBR_Instruction6);

	/** Get Instruction 6	  */
	public String getLBR_Instruction6();

    /** Column name LBR_Instruction7 */
    public static final String COLUMNNAME_LBR_Instruction7 = "LBR_Instruction7";

	/** Set Instruction 7	  */
	public void setLBR_Instruction7 (String LBR_Instruction7);

	/** Get Instruction 7	  */
	public String getLBR_Instruction7();

    /** Column name LBR_InstructionBP */
    public static final String COLUMNNAME_LBR_InstructionBP = "LBR_InstructionBP";

	/** Set Instruction to BP	  */
	public void setLBR_InstructionBP (String LBR_InstructionBP);

	/** Get Instruction to BP	  */
	public String getLBR_InstructionBP();

    /** Column name LBR_ManualInput */
    public static final String COLUMNNAME_LBR_ManualInput = "LBR_ManualInput";

	/** Set Manual Input	  */
	public void setLBR_ManualInput (String LBR_ManualInput);

	/** Get Manual Input	  */
	public String getLBR_ManualInput();

    /** Column name LBR_OrgBPType */
    public static final String COLUMNNAME_LBR_OrgBPType = "LBR_OrgBPType";

	/** Set Org Type	  */
	public void setLBR_OrgBPType (String LBR_OrgBPType);

	/** Get Org Type	  */
	public String getLBR_OrgBPType();

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

    /** Column name lbr_AgencyNo */
    public static final String COLUMNNAME_lbr_AgencyNo = "lbr_AgencyNo";

	/** Set Agency Number.
	  * Agency Number
	  */
	public void setlbr_AgencyNo (String lbr_AgencyNo);

	/** Get Agency Number.
	  * Agency Number
	  */
	public String getlbr_AgencyNo();

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

    /** Column name lbr_Instruction1 */
    public static final String COLUMNNAME_lbr_Instruction1 = "lbr_Instruction1";

	/** Set Instruction 1.
	  * Identifies the Instrucion 1
	  */
	public void setlbr_Instruction1 (String lbr_Instruction1);

	/** Get Instruction 1.
	  * Identifies the Instrucion 1
	  */
	public String getlbr_Instruction1();

    /** Column name lbr_Instruction2 */
    public static final String COLUMNNAME_lbr_Instruction2 = "lbr_Instruction2";

	/** Set Instruction 2.
	  * Identifies the Instrucion 2
	  */
	public void setlbr_Instruction2 (String lbr_Instruction2);

	/** Get Instruction 2.
	  * Identifies the Instrucion 2
	  */
	public String getlbr_Instruction2();

    /** Column name lbr_Instruction3 */
    public static final String COLUMNNAME_lbr_Instruction3 = "lbr_Instruction3";

	/** Set Instruction 3.
	  * Identifies the Instrucion 3
	  */
	public void setlbr_Instruction3 (String lbr_Instruction3);

	/** Get Instruction 3.
	  * Identifies the Instrucion 3
	  */
	public String getlbr_Instruction3();

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

    /** Column name lbr_PaymentLocation1 */
    public static final String COLUMNNAME_lbr_PaymentLocation1 = "lbr_PaymentLocation1";

	/** Set Payment Location 1.
	  * Identifies the Payment Location 1
	  */
	public void setlbr_PaymentLocation1 (String lbr_PaymentLocation1);

	/** Get Payment Location 1.
	  * Identifies the Payment Location 1
	  */
	public String getlbr_PaymentLocation1();
}
