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
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for LBR_BankSlipInfo
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_BankSlipInfo extends PO implements I_LBR_BankSlipInfo, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20200316L;

    /** Standard Constructor */
    public X_LBR_BankSlipInfo (Properties ctx, int LBR_BankSlipInfo_ID, String trxName)
    {
      super (ctx, LBR_BankSlipInfo_ID, trxName);
      /** if (LBR_BankSlipInfo_ID == 0)
        {
			setAccountNo (null);
			setBPName (null);
			setLBR_BankSlip_ID (0);
			setLBR_OrgBPType (null);
			setlbr_AgencyNo (null);
			setlbr_BPAddress1 (null);
			setlbr_BPCNPJ (null);
			setlbr_BPCity (null);
			setlbr_BPPostal (null);
			setlbr_BPRegion (null);
			setlbr_BPTypeBR (null);
			setlbr_CNPJ (null);
			setlbr_OrgAddress1 (null);
			setlbr_OrgCity (null);
			setlbr_OrgName (null);
			setlbr_OrgPostal (null);
			setlbr_OrgRegion (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_BankSlipInfo (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_BankSlipInfo[")
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

	/** Set BP Name.
		@param BPName BP Name	  */
	public void setBPName (String BPName)
	{
		set_ValueNoCheck (COLUMNNAME_BPName, BPName);
	}

	/** Get BP Name.
		@return BP Name	  */
	public String getBPName () 
	{
		return (String)get_Value(COLUMNNAME_BPName);
	}

	/** Set Accord.
		@param LBR_AccordNo Accord	  */
	public void setLBR_AccordNo (String LBR_AccordNo)
	{
		set_Value (COLUMNNAME_LBR_AccordNo, LBR_AccordNo);
	}

	/** Get Accord.
		@return Accord	  */
	public String getLBR_AccordNo () 
	{
		return (String)get_Value(COLUMNNAME_LBR_AccordNo);
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

	/** Set Bank Slip Code.
		@param LBR_BankSlipFoldCode Bank Slip Code	  */
	public void setLBR_BankSlipFoldCode (String LBR_BankSlipFoldCode)
	{
		set_Value (COLUMNNAME_LBR_BankSlipFoldCode, LBR_BankSlipFoldCode);
	}

	/** Get Bank Slip Code.
		@return Bank Slip Code	  */
	public String getLBR_BankSlipFoldCode () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BankSlipFoldCode);
	}

	/** Set Bank Slip Value.
		@param LBR_BankSlipFoldValue Bank Slip Value	  */
	public void setLBR_BankSlipFoldValue (String LBR_BankSlipFoldValue)
	{
		set_Value (COLUMNNAME_LBR_BankSlipFoldValue, LBR_BankSlipFoldValue);
	}

	/** Get Bank Slip Value.
		@return Bank Slip Value	  */
	public String getLBR_BankSlipFoldValue () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BankSlipFoldValue);
	}

	/** Set LBR_BankSlipInfo_UU.
		@param LBR_BankSlipInfo_UU LBR_BankSlipInfo_UU	  */
	public void setLBR_BankSlipInfo_UU (String LBR_BankSlipInfo_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_BankSlipInfo_UU, LBR_BankSlipInfo_UU);
	}

	/** Get LBR_BankSlipInfo_UU.
		@return LBR_BankSlipInfo_UU	  */
	public String getLBR_BankSlipInfo_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BankSlipInfo_UU);
	}

	/** Set Bank Slip Kind Code.
		@param LBR_BankSlipKindCode Bank Slip Kind Code	  */
	public void setLBR_BankSlipKindCode (String LBR_BankSlipKindCode)
	{
		set_Value (COLUMNNAME_LBR_BankSlipKindCode, LBR_BankSlipKindCode);
	}

	/** Get Bank Slip Kind Code.
		@return Bank Slip Kind Code	  */
	public String getLBR_BankSlipKindCode () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BankSlipKindCode);
	}

	/** Set Bank Slip Kind Value.
		@param LBR_BankSlipKindValue Bank Slip Kind Value	  */
	public void setLBR_BankSlipKindValue (String LBR_BankSlipKindValue)
	{
		set_Value (COLUMNNAME_LBR_BankSlipKindValue, LBR_BankSlipKindValue);
	}

	/** Get Bank Slip Kind Value.
		@return Bank Slip Kind Value	  */
	public String getLBR_BankSlipKindValue () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BankSlipKindValue);
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

	/** Set Barcode.
		@param LBR_Barcode Barcode	  */
	public void setLBR_Barcode (String LBR_Barcode)
	{
		set_Value (COLUMNNAME_LBR_Barcode, LBR_Barcode);
	}

	/** Get Barcode.
		@return Barcode	  */
	public String getLBR_Barcode () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Barcode);
	}

	/** Set Address 1.
		@param LBR_GuarantorAddress1 Address 1	  */
	public void setLBR_GuarantorAddress1 (String LBR_GuarantorAddress1)
	{
		set_Value (COLUMNNAME_LBR_GuarantorAddress1, LBR_GuarantorAddress1);
	}

	/** Get Address 1.
		@return Address 1	  */
	public String getLBR_GuarantorAddress1 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_GuarantorAddress1);
	}

	/** Set Address 2.
		@param LBR_GuarantorAddress2 Address 2	  */
	public void setLBR_GuarantorAddress2 (String LBR_GuarantorAddress2)
	{
		set_Value (COLUMNNAME_LBR_GuarantorAddress2, LBR_GuarantorAddress2);
	}

	/** Get Address 2.
		@return Address 2	  */
	public String getLBR_GuarantorAddress2 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_GuarantorAddress2);
	}

	/** Set Address 3.
		@param LBR_GuarantorAddress3 Address 3	  */
	public void setLBR_GuarantorAddress3 (String LBR_GuarantorAddress3)
	{
		set_Value (COLUMNNAME_LBR_GuarantorAddress3, LBR_GuarantorAddress3);
	}

	/** Get Address 3.
		@return Address 3	  */
	public String getLBR_GuarantorAddress3 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_GuarantorAddress3);
	}

	/** Set Address 4.
		@param LBR_GuarantorAddress4 Address 4	  */
	public void setLBR_GuarantorAddress4 (String LBR_GuarantorAddress4)
	{
		set_Value (COLUMNNAME_LBR_GuarantorAddress4, LBR_GuarantorAddress4);
	}

	/** Get Address 4.
		@return Address 4	  */
	public String getLBR_GuarantorAddress4 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_GuarantorAddress4);
	}

	/** Set Guarantor Name.
		@param LBR_GuarantorBPName Guarantor Name	  */
	public void setLBR_GuarantorBPName (String LBR_GuarantorBPName)
	{
		set_Value (COLUMNNAME_LBR_GuarantorBPName, LBR_GuarantorBPName);
	}

	/** Get Guarantor Name.
		@return Guarantor Name	  */
	public String getLBR_GuarantorBPName () 
	{
		return (String)get_Value(COLUMNNAME_LBR_GuarantorBPName);
	}

	/** Set Guarantor CNPJ.
		@param LBR_GuarantorCNPJ Guarantor CNPJ	  */
	public void setLBR_GuarantorCNPJ (String LBR_GuarantorCNPJ)
	{
		set_Value (COLUMNNAME_LBR_GuarantorCNPJ, LBR_GuarantorCNPJ);
	}

	/** Get Guarantor CNPJ.
		@return Guarantor CNPJ	  */
	public String getLBR_GuarantorCNPJ () 
	{
		return (String)get_Value(COLUMNNAME_LBR_GuarantorCNPJ);
	}

	/** Set Guarantor City.
		@param LBR_GuarantorCity Guarantor City	  */
	public void setLBR_GuarantorCity (String LBR_GuarantorCity)
	{
		set_Value (COLUMNNAME_LBR_GuarantorCity, LBR_GuarantorCity);
	}

	/** Get Guarantor City.
		@return Guarantor City	  */
	public String getLBR_GuarantorCity () 
	{
		return (String)get_Value(COLUMNNAME_LBR_GuarantorCity);
	}

	/** Set Guarantor Postal.
		@param LBR_GuarantorPostal Guarantor Postal	  */
	public void setLBR_GuarantorPostal (String LBR_GuarantorPostal)
	{
		set_Value (COLUMNNAME_LBR_GuarantorPostal, LBR_GuarantorPostal);
	}

	/** Get Guarantor Postal.
		@return Guarantor Postal	  */
	public String getLBR_GuarantorPostal () 
	{
		return (String)get_Value(COLUMNNAME_LBR_GuarantorPostal);
	}

	/** Set Guarantor Region.
		@param LBR_GuarantorRegion Guarantor Region	  */
	public void setLBR_GuarantorRegion (String LBR_GuarantorRegion)
	{
		set_Value (COLUMNNAME_LBR_GuarantorRegion, LBR_GuarantorRegion);
	}

	/** Get Guarantor Region.
		@return Guarantor Region	  */
	public String getLBR_GuarantorRegion () 
	{
		return (String)get_Value(COLUMNNAME_LBR_GuarantorRegion);
	}

	/** Set Instruction 4.
		@param LBR_Instruction4 Instruction 4	  */
	public void setLBR_Instruction4 (String LBR_Instruction4)
	{
		set_Value (COLUMNNAME_LBR_Instruction4, LBR_Instruction4);
	}

	/** Get Instruction 4.
		@return Instruction 4	  */
	public String getLBR_Instruction4 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Instruction4);
	}

	/** Set Instruction 5.
		@param LBR_Instruction5 Instruction 5	  */
	public void setLBR_Instruction5 (String LBR_Instruction5)
	{
		set_Value (COLUMNNAME_LBR_Instruction5, LBR_Instruction5);
	}

	/** Get Instruction 5.
		@return Instruction 5	  */
	public String getLBR_Instruction5 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Instruction5);
	}

	/** Set Instruction 6.
		@param LBR_Instruction6 Instruction 6	  */
	public void setLBR_Instruction6 (String LBR_Instruction6)
	{
		set_Value (COLUMNNAME_LBR_Instruction6, LBR_Instruction6);
	}

	/** Get Instruction 6.
		@return Instruction 6	  */
	public String getLBR_Instruction6 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Instruction6);
	}

	/** Set Instruction 7.
		@param LBR_Instruction7 Instruction 7	  */
	public void setLBR_Instruction7 (String LBR_Instruction7)
	{
		set_Value (COLUMNNAME_LBR_Instruction7, LBR_Instruction7);
	}

	/** Get Instruction 7.
		@return Instruction 7	  */
	public String getLBR_Instruction7 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Instruction7);
	}

	/** Set Instruction to BP.
		@param LBR_InstructionBP Instruction to BP	  */
	public void setLBR_InstructionBP (String LBR_InstructionBP)
	{
		set_Value (COLUMNNAME_LBR_InstructionBP, LBR_InstructionBP);
	}

	/** Get Instruction to BP.
		@return Instruction to BP	  */
	public String getLBR_InstructionBP () 
	{
		return (String)get_Value(COLUMNNAME_LBR_InstructionBP);
	}

	/** Set Manual Input.
		@param LBR_ManualInput Manual Input	  */
	public void setLBR_ManualInput (String LBR_ManualInput)
	{
		set_Value (COLUMNNAME_LBR_ManualInput, LBR_ManualInput);
	}

	/** Get Manual Input.
		@return Manual Input	  */
	public String getLBR_ManualInput () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ManualInput);
	}

	/** PF - Individual = PF */
	public static final String LBR_ORGBPTYPE_PF_Individual = "PF";
	/** PJ - Legal Entity = PJ */
	public static final String LBR_ORGBPTYPE_PJ_LegalEntity = "PJ";
	/** Set Org Type.
		@param LBR_OrgBPType Org Type	  */
	public void setLBR_OrgBPType (String LBR_OrgBPType)
	{

		set_Value (COLUMNNAME_LBR_OrgBPType, LBR_OrgBPType);
	}

	/** Get Org Type.
		@return Org Type	  */
	public String getLBR_OrgBPType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_OrgBPType);
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

	/** Set BP Address 1.
		@param lbr_BPAddress1 
		BP Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPAddress1 (String lbr_BPAddress1)
	{
		set_ValueNoCheck (COLUMNNAME_lbr_BPAddress1, lbr_BPAddress1);
	}

	/** Get BP Address 1.
		@return BP Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPAddress1 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPAddress1);
	}

	/** Set BP Address 2.
		@param lbr_BPAddress2 
		BP Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPAddress2 (String lbr_BPAddress2)
	{
		set_ValueNoCheck (COLUMNNAME_lbr_BPAddress2, lbr_BPAddress2);
	}

	/** Get BP Address 2.
		@return BP Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPAddress2 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPAddress2);
	}

	/** Set BP Address 3.
		@param lbr_BPAddress3 
		BP Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPAddress3 (String lbr_BPAddress3)
	{
		set_ValueNoCheck (COLUMNNAME_lbr_BPAddress3, lbr_BPAddress3);
	}

	/** Get BP Address 3.
		@return BP Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPAddress3 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPAddress3);
	}

	/** Set BP Address 4.
		@param lbr_BPAddress4 
		BP Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPAddress4 (String lbr_BPAddress4)
	{
		set_ValueNoCheck (COLUMNNAME_lbr_BPAddress4, lbr_BPAddress4);
	}

	/** Get BP Address 4.
		@return BP Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPAddress4 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPAddress4);
	}

	/** Set BP CNPJ.
		@param lbr_BPCNPJ 
		BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPCNPJ (String lbr_BPCNPJ)
	{
		set_Value (COLUMNNAME_lbr_BPCNPJ, lbr_BPCNPJ);
	}

	/** Get BP CNPJ.
		@return BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPCNPJ () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPCNPJ);
	}

	/** Set BP City.
		@param lbr_BPCity 
		BP City - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPCity (String lbr_BPCity)
	{
		set_ValueNoCheck (COLUMNNAME_lbr_BPCity, lbr_BPCity);
	}

	/** Get BP City.
		@return BP City - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPCity () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPCity);
	}

	/** Set BP Postal.
		@param lbr_BPPostal 
		BP Postal - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPPostal (String lbr_BPPostal)
	{
		set_Value (COLUMNNAME_lbr_BPPostal, lbr_BPPostal);
	}

	/** Get BP Postal.
		@return BP Postal - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPPostal () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPPostal);
	}

	/** Set BP Region.
		@param lbr_BPRegion 
		BP Region - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPRegion (String lbr_BPRegion)
	{
		set_Value (COLUMNNAME_lbr_BPRegion, lbr_BPRegion);
	}

	/** Get BP Region.
		@return BP Region - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPRegion () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPRegion);
	}

	/** PF - Individual = PF */
	public static final String LBR_BPTYPEBR_PF_Individual = "PF";
	/** PJ - Legal Entity = PJ */
	public static final String LBR_BPTYPEBR_PJ_LegalEntity = "PJ";
	/** Set Brazilian BP Type.
		@param lbr_BPTypeBR 
		Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)
	  */
	public void setlbr_BPTypeBR (String lbr_BPTypeBR)
	{

		set_ValueNoCheck (COLUMNNAME_lbr_BPTypeBR, lbr_BPTypeBR);
	}

	/** Get Brazilian BP Type.
		@return Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)
	  */
	public String getlbr_BPTypeBR () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPTypeBR);
	}

	/** Set CNPJ.
		@param lbr_CNPJ 
		Used to identify Legal Entities in Brazil
	  */
	public void setlbr_CNPJ (String lbr_CNPJ)
	{
		set_Value (COLUMNNAME_lbr_CNPJ, lbr_CNPJ);
	}

	/** Get CNPJ.
		@return Used to identify Legal Entities in Brazil
	  */
	public String getlbr_CNPJ () 
	{
		return (String)get_Value(COLUMNNAME_lbr_CNPJ);
	}

	/** Set Instruction 1.
		@param lbr_Instruction1 
		Identifies the Instrucion 1
	  */
	public void setlbr_Instruction1 (String lbr_Instruction1)
	{
		set_ValueNoCheck (COLUMNNAME_lbr_Instruction1, lbr_Instruction1);
	}

	/** Get Instruction 1.
		@return Identifies the Instrucion 1
	  */
	public String getlbr_Instruction1 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_Instruction1);
	}

	/** Set Instruction 2.
		@param lbr_Instruction2 
		Identifies the Instrucion 2
	  */
	public void setlbr_Instruction2 (String lbr_Instruction2)
	{
		set_ValueNoCheck (COLUMNNAME_lbr_Instruction2, lbr_Instruction2);
	}

	/** Get Instruction 2.
		@return Identifies the Instrucion 2
	  */
	public String getlbr_Instruction2 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_Instruction2);
	}

	/** Set Instruction 3.
		@param lbr_Instruction3 
		Identifies the Instrucion 3
	  */
	public void setlbr_Instruction3 (String lbr_Instruction3)
	{
		set_ValueNoCheck (COLUMNNAME_lbr_Instruction3, lbr_Instruction3);
	}

	/** Get Instruction 3.
		@return Identifies the Instrucion 3
	  */
	public String getlbr_Instruction3 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_Instruction3);
	}

	/** Set Organization Address 1.
		@param lbr_OrgAddress1 
		The issuer organization address 1
	  */
	public void setlbr_OrgAddress1 (String lbr_OrgAddress1)
	{
		set_Value (COLUMNNAME_lbr_OrgAddress1, lbr_OrgAddress1);
	}

	/** Get Organization Address 1.
		@return The issuer organization address 1
	  */
	public String getlbr_OrgAddress1 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_OrgAddress1);
	}

	/** Set Organization Address 2.
		@param lbr_OrgAddress2 
		The issuer organization address 2
	  */
	public void setlbr_OrgAddress2 (String lbr_OrgAddress2)
	{
		set_Value (COLUMNNAME_lbr_OrgAddress2, lbr_OrgAddress2);
	}

	/** Get Organization Address 2.
		@return The issuer organization address 2
	  */
	public String getlbr_OrgAddress2 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_OrgAddress2);
	}

	/** Set Organization Address 3.
		@param lbr_OrgAddress3 
		The issuer organization address 3
	  */
	public void setlbr_OrgAddress3 (String lbr_OrgAddress3)
	{
		set_Value (COLUMNNAME_lbr_OrgAddress3, lbr_OrgAddress3);
	}

	/** Get Organization Address 3.
		@return The issuer organization address 3
	  */
	public String getlbr_OrgAddress3 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_OrgAddress3);
	}

	/** Set Organization Address 4.
		@param lbr_OrgAddress4 
		The issuer organization address 4
	  */
	public void setlbr_OrgAddress4 (String lbr_OrgAddress4)
	{
		set_Value (COLUMNNAME_lbr_OrgAddress4, lbr_OrgAddress4);
	}

	/** Get Organization Address 4.
		@return The issuer organization address 4
	  */
	public String getlbr_OrgAddress4 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_OrgAddress4);
	}

	/** Set Organization City.
		@param lbr_OrgCity 
		The City of the Organization
	  */
	public void setlbr_OrgCity (String lbr_OrgCity)
	{
		set_Value (COLUMNNAME_lbr_OrgCity, lbr_OrgCity);
	}

	/** Get Organization City.
		@return The City of the Organization
	  */
	public String getlbr_OrgCity () 
	{
		return (String)get_Value(COLUMNNAME_lbr_OrgCity);
	}

	/** Set Organization Name.
		@param lbr_OrgName 
		The Name of the Organization
	  */
	public void setlbr_OrgName (String lbr_OrgName)
	{
		set_Value (COLUMNNAME_lbr_OrgName, lbr_OrgName);
	}

	/** Get Organization Name.
		@return The Name of the Organization
	  */
	public String getlbr_OrgName () 
	{
		return (String)get_Value(COLUMNNAME_lbr_OrgName);
	}

	/** Set Organization Postal Code.
		@param lbr_OrgPostal 
		The Postal Code of the Organization
	  */
	public void setlbr_OrgPostal (String lbr_OrgPostal)
	{
		set_Value (COLUMNNAME_lbr_OrgPostal, lbr_OrgPostal);
	}

	/** Get Organization Postal Code.
		@return The Postal Code of the Organization
	  */
	public String getlbr_OrgPostal () 
	{
		return (String)get_Value(COLUMNNAME_lbr_OrgPostal);
	}

	/** Set Organization Region.
		@param lbr_OrgRegion 
		The Region of the Organization
	  */
	public void setlbr_OrgRegion (String lbr_OrgRegion)
	{
		set_Value (COLUMNNAME_lbr_OrgRegion, lbr_OrgRegion);
	}

	/** Get Organization Region.
		@return The Region of the Organization
	  */
	public String getlbr_OrgRegion () 
	{
		return (String)get_Value(COLUMNNAME_lbr_OrgRegion);
	}

	/** Set Payment Location 1.
		@param lbr_PaymentLocation1 
		Identifies the Payment Location 1
	  */
	public void setlbr_PaymentLocation1 (String lbr_PaymentLocation1)
	{
		set_Value (COLUMNNAME_lbr_PaymentLocation1, lbr_PaymentLocation1);
	}

	/** Get Payment Location 1.
		@return Identifies the Payment Location 1
	  */
	public String getlbr_PaymentLocation1 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_PaymentLocation1);
	}
}