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
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LBR_BankSlipConfig
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_BankSlipConfig extends PO implements I_LBR_BankSlipConfig, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20200313L;

    /** Standard Constructor */
    public X_LBR_BankSlipConfig (Properties ctx, int LBR_BankSlipConfig_ID, String trxName)
    {
      super (ctx, LBR_BankSlipConfig_ID, trxName);
      /** if (LBR_BankSlipConfig_ID == 0)
        {
			setLBR_BankSlipConfig_ID (0);
			setLBR_InterestDays (0);
			setLBR_InterestValue (Env.ZERO);
// 0
			setLBR_PenaltyDays (0);
			setLBR_PenaltyValue (Env.ZERO);
// 0
			setLBR_ProtestDays (0);
// 0
			setLBR_ReturnDays (0);
// 0
			setName (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_BankSlipConfig (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_BankSlipConfig[")
        .append(get_ID()).append("]");
      return sb.toString();
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

	/** Set Bank Slip Config.
		@param LBR_BankSlipConfig_ID Bank Slip Config	  */
	public void setLBR_BankSlipConfig_ID (int LBR_BankSlipConfig_ID)
	{
		if (LBR_BankSlipConfig_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_BankSlipConfig_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_BankSlipConfig_ID, Integer.valueOf(LBR_BankSlipConfig_ID));
	}

	/** Get Bank Slip Config.
		@return Bank Slip Config	  */
	public int getLBR_BankSlipConfig_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BankSlipConfig_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_BankSlipConfig_UU.
		@param LBR_BankSlipConfig_UU LBR_BankSlipConfig_UU	  */
	public void setLBR_BankSlipConfig_UU (String LBR_BankSlipConfig_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_BankSlipConfig_UU, LBR_BankSlipConfig_UU);
	}

	/** Get LBR_BankSlipConfig_UU.
		@return LBR_BankSlipConfig_UU	  */
	public String getLBR_BankSlipConfig_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BankSlipConfig_UU);
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

	public org.compiere.model.I_C_Charge getLBR_InterestCharge() throws RuntimeException
    {
		return (org.compiere.model.I_C_Charge)MTable.get(getCtx(), org.compiere.model.I_C_Charge.Table_Name)
			.getPO(getLBR_InterestCharge_ID(), get_TrxName());	}

	/** Set Interest Charge.
		@param LBR_InterestCharge_ID Interest Charge	  */
	public void setLBR_InterestCharge_ID (int LBR_InterestCharge_ID)
	{
		if (LBR_InterestCharge_ID < 1) 
			set_Value (COLUMNNAME_LBR_InterestCharge_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_InterestCharge_ID, Integer.valueOf(LBR_InterestCharge_ID));
	}

	/** Get Interest Charge.
		@return Interest Charge	  */
	public int getLBR_InterestCharge_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_InterestCharge_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	/** Set Message 1.
		@param LBR_Message1 Message 1	  */
	public void setLBR_Message1 (String LBR_Message1)
	{
		set_Value (COLUMNNAME_LBR_Message1, LBR_Message1);
	}

	/** Get Message 1.
		@return Message 1	  */
	public String getLBR_Message1 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Message1);
	}

	/** Set Message 2.
		@param LBR_Message2 Message 2	  */
	public void setLBR_Message2 (String LBR_Message2)
	{
		set_Value (COLUMNNAME_LBR_Message2, LBR_Message2);
	}

	/** Get Message 2.
		@return Message 2	  */
	public String getLBR_Message2 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Message2);
	}

	public org.compiere.model.I_C_Charge getLBR_PenaltyCharge() throws RuntimeException
    {
		return (org.compiere.model.I_C_Charge)MTable.get(getCtx(), org.compiere.model.I_C_Charge.Table_Name)
			.getPO(getLBR_PenaltyCharge_ID(), get_TrxName());	}

	/** Set Penalty Charge.
		@param LBR_PenaltyCharge_ID Penalty Charge	  */
	public void setLBR_PenaltyCharge_ID (int LBR_PenaltyCharge_ID)
	{
		if (LBR_PenaltyCharge_ID < 1) 
			set_Value (COLUMNNAME_LBR_PenaltyCharge_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_PenaltyCharge_ID, Integer.valueOf(LBR_PenaltyCharge_ID));
	}

	/** Get Penalty Charge.
		@return Penalty Charge	  */
	public int getLBR_PenaltyCharge_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_PenaltyCharge_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	/** Set Name.
		@param Name 
		Alphanumeric identifier of the entity
	  */
	public void setName (String Name)
	{
		set_Value (COLUMNNAME_Name, Name);
	}

	/** Get Name.
		@return Alphanumeric identifier of the entity
	  */
	public String getName () 
	{
		return (String)get_Value(COLUMNNAME_Name);
	}
}