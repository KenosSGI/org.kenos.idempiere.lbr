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

/** Generated Model for LBR_SIMP
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_SIMP extends PO implements I_LBR_SIMP, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20201016L;

    /** Standard Constructor */
    public X_LBR_SIMP (Properties ctx, int LBR_SIMP_ID, String trxName)
    {
      super (ctx, LBR_SIMP_ID, trxName);
      /** if (LBR_SIMP_ID == 0)
        {
			setC_Period_ID (0);
			setLBR_SIMP_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_SIMP (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_SIMP[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_Period getC_Period() throws RuntimeException
    {
		return (org.compiere.model.I_C_Period)MTable.get(getCtx(), org.compiere.model.I_C_Period.Table_Name)
			.getPO(getC_Period_ID(), get_TrxName());	}

	/** Set Period.
		@param C_Period_ID 
		Period of the Calendar
	  */
	public void setC_Period_ID (int C_Period_ID)
	{
		if (C_Period_ID < 1) 
			set_Value (COLUMNNAME_C_Period_ID, null);
		else 
			set_Value (COLUMNNAME_C_Period_ID, Integer.valueOf(C_Period_ID));
	}

	/** Get Period.
		@return Period of the Calendar
	  */
	public int getC_Period_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Period_ID);
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

	/** Set Chemical Agent.
		@param LBR_ChemicalAgent Chemical Agent	  */
	public void setLBR_ChemicalAgent (String LBR_ChemicalAgent)
	{
		set_Value (COLUMNNAME_LBR_ChemicalAgent, LBR_ChemicalAgent);
	}

	/** Get Chemical Agent.
		@return Chemical Agent	  */
	public String getLBR_ChemicalAgent () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ChemicalAgent);
	}

	/** Set Install Code 1.
		@param LBR_InstallCode1 Install Code 1	  */
	public void setLBR_InstallCode1 (String LBR_InstallCode1)
	{
		set_Value (COLUMNNAME_LBR_InstallCode1, LBR_InstallCode1);
	}

	/** Get Install Code 1.
		@return Install Code 1	  */
	public String getLBR_InstallCode1 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_InstallCode1);
	}

	/** Set Install Code 2.
		@param LBR_InstallCode2 Install Code 2	  */
	public void setLBR_InstallCode2 (String LBR_InstallCode2)
	{
		set_Value (COLUMNNAME_LBR_InstallCode2, LBR_InstallCode2);
	}

	/** Get Install Code 2.
		@return Install Code 2	  */
	public String getLBR_InstallCode2 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_InstallCode2);
	}

	/** Set SIMP.
		@param LBR_SIMP_ID SIMP	  */
	public void setLBR_SIMP_ID (int LBR_SIMP_ID)
	{
		if (LBR_SIMP_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_SIMP_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_SIMP_ID, Integer.valueOf(LBR_SIMP_ID));
	}

	/** Get SIMP.
		@return SIMP	  */
	public int getLBR_SIMP_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_SIMP_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_SIMP_UU.
		@param LBR_SIMP_UU LBR_SIMP_UU	  */
	public void setLBR_SIMP_UU (String LBR_SIMP_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_SIMP_UU, LBR_SIMP_UU);
	}

	/** Get LBR_SIMP_UU.
		@return LBR_SIMP_UU	  */
	public String getLBR_SIMP_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_SIMP_UU);
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
}