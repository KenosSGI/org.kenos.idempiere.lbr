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

/** Generated Model for LBR_ScoreStatus
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_ScoreStatus extends PO implements I_LBR_ScoreStatus, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20210414L;

    /** Standard Constructor */
    public X_LBR_ScoreStatus (Properties ctx, int LBR_ScoreStatus_ID, String trxName)
    {
      super (ctx, LBR_ScoreStatus_ID, trxName);
      /** if (LBR_ScoreStatus_ID == 0)
        {
			setC_BPartner_ID (0);
			setDateTrx (new Timestamp( System.currentTimeMillis() ));
// @#Date@
			setLBR_InternalScore (null);
			setLBR_Score (null);
			setLBR_ScoreProvider_ID (0);
			setLBR_ScoreStatus_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_ScoreStatus (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_ScoreStatus[")
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
			set_ValueNoCheck (COLUMNNAME_C_BPartner_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_BPartner_ID, Integer.valueOf(C_BPartner_ID));
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
			set_ValueNoCheck (COLUMNNAME_C_BPartner_Location_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_BPartner_Location_ID, Integer.valueOf(C_BPartner_Location_ID));
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

	/** Set Transaction Date.
		@param DateTrx 
		Transaction Date
	  */
	public void setDateTrx (Timestamp DateTrx)
	{
		set_ValueNoCheck (COLUMNNAME_DateTrx, DateTrx);
	}

	/** Get Transaction Date.
		@return Transaction Date
	  */
	public Timestamp getDateTrx () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateTrx);
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

	/** Set Internal Score.
		@param LBR_InternalScore 
		Score in the organization scale
	  */
	public void setLBR_InternalScore (String LBR_InternalScore)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_InternalScore, LBR_InternalScore);
	}

	/** Get Internal Score.
		@return Score in the organization scale
	  */
	public String getLBR_InternalScore () 
	{
		return (String)get_Value(COLUMNNAME_LBR_InternalScore);
	}

	/** Set Score.
		@param LBR_Score 
		Score in the scale of score provider
	  */
	public void setLBR_Score (String LBR_Score)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_Score, LBR_Score);
	}

	/** Get Score.
		@return Score in the scale of score provider
	  */
	public String getLBR_Score () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Score);
	}

	public org.adempierelbr.model.I_LBR_ScoreProvider getLBR_ScoreProvider() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_ScoreProvider)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_ScoreProvider.Table_Name)
			.getPO(getLBR_ScoreProvider_ID(), get_TrxName());	}

	/** Set Score Provider.
		@param LBR_ScoreProvider_ID Score Provider	  */
	public void setLBR_ScoreProvider_ID (int LBR_ScoreProvider_ID)
	{
		if (LBR_ScoreProvider_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_ScoreProvider_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_ScoreProvider_ID, Integer.valueOf(LBR_ScoreProvider_ID));
	}

	/** Get Score Provider.
		@return Score Provider	  */
	public int getLBR_ScoreProvider_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_ScoreProvider_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Score Status.
		@param LBR_ScoreStatus_ID Score Status	  */
	public void setLBR_ScoreStatus_ID (int LBR_ScoreStatus_ID)
	{
		if (LBR_ScoreStatus_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_ScoreStatus_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_ScoreStatus_ID, Integer.valueOf(LBR_ScoreStatus_ID));
	}

	/** Get Score Status.
		@return Score Status	  */
	public int getLBR_ScoreStatus_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_ScoreStatus_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_ScoreStatus_UU.
		@param LBR_ScoreStatus_UU LBR_ScoreStatus_UU	  */
	public void setLBR_ScoreStatus_UU (String LBR_ScoreStatus_UU)
	{
		set_Value (COLUMNNAME_LBR_ScoreStatus_UU, LBR_ScoreStatus_UU);
	}

	/** Get LBR_ScoreStatus_UU.
		@return LBR_ScoreStatus_UU	  */
	public String getLBR_ScoreStatus_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ScoreStatus_UU);
	}
}