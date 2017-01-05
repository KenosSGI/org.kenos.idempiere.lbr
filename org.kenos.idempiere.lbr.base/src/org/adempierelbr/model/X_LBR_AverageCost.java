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

/** Generated Model for LBR_AverageCost
 *  @author iDempiere (generated) 
 *  @version Release 4.1 - $Id$ */
public class X_LBR_AverageCost extends PO implements I_LBR_AverageCost, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20170105L;

    /** Standard Constructor */
    public X_LBR_AverageCost (Properties ctx, int LBR_AverageCost_ID, String trxName)
    {
      super (ctx, LBR_AverageCost_ID, trxName);
      /** if (LBR_AverageCost_ID == 0)
        {
			setC_Period_ID (0);
			setLBR_AverageCost_ID (0);
			setLBR_AvgCost_ConfirmMAN (null);
// N
			setLBR_AvgCost_ConfirmPUR (null);
// N
			setLBR_AvgCost_CreateMAN (null);
// N
			setLBR_AvgCost_CreatePUR (null);
// N
			setLBR_AvgCost_RePostAcct (null);
// N
			setLBR_AvgStep1 (false);
// N
			setLBR_AvgStep2 (false);
// N
			setLBR_AvgStep3 (false);
// N
			setLBR_AvgStep4 (false);
// N
			setLBR_AvgStep5 (false);
// N
			setM_CostElement_ID (0);
			setName (null);
			setProcessed (false);
// N
        } */
    }

    /** Load Constructor */
    public X_LBR_AverageCost (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_AverageCost[")
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

	/** Set Average Cost.
		@param LBR_AverageCost_ID 
		Defines the Average Cost
	  */
	public void setLBR_AverageCost_ID (int LBR_AverageCost_ID)
	{
		if (LBR_AverageCost_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_AverageCost_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_AverageCost_ID, Integer.valueOf(LBR_AverageCost_ID));
	}

	/** Get Average Cost.
		@return Defines the Average Cost
	  */
	public int getLBR_AverageCost_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_AverageCost_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set AvgCost - Confirm Manufactured.
		@param LBR_AvgCost_ConfirmMAN AvgCost - Confirm Manufactured	  */
	public void setLBR_AvgCost_ConfirmMAN (String LBR_AvgCost_ConfirmMAN)
	{
		set_Value (COLUMNNAME_LBR_AvgCost_ConfirmMAN, LBR_AvgCost_ConfirmMAN);
	}

	/** Get AvgCost - Confirm Manufactured.
		@return AvgCost - Confirm Manufactured	  */
	public String getLBR_AvgCost_ConfirmMAN () 
	{
		return (String)get_Value(COLUMNNAME_LBR_AvgCost_ConfirmMAN);
	}

	/** Set AvgCost - Confirm Purchased.
		@param LBR_AvgCost_ConfirmPUR AvgCost - Confirm Purchased	  */
	public void setLBR_AvgCost_ConfirmPUR (String LBR_AvgCost_ConfirmPUR)
	{
		set_Value (COLUMNNAME_LBR_AvgCost_ConfirmPUR, LBR_AvgCost_ConfirmPUR);
	}

	/** Get AvgCost - Confirm Purchased.
		@return AvgCost - Confirm Purchased	  */
	public String getLBR_AvgCost_ConfirmPUR () 
	{
		return (String)get_Value(COLUMNNAME_LBR_AvgCost_ConfirmPUR);
	}

	/** Set AvgCost - Create Record Manufactured.
		@param LBR_AvgCost_CreateMAN AvgCost - Create Record Manufactured	  */
	public void setLBR_AvgCost_CreateMAN (String LBR_AvgCost_CreateMAN)
	{
		set_Value (COLUMNNAME_LBR_AvgCost_CreateMAN, LBR_AvgCost_CreateMAN);
	}

	/** Get AvgCost - Create Record Manufactured.
		@return AvgCost - Create Record Manufactured	  */
	public String getLBR_AvgCost_CreateMAN () 
	{
		return (String)get_Value(COLUMNNAME_LBR_AvgCost_CreateMAN);
	}

	/** Set AvgCost - Create Record Purchased.
		@param LBR_AvgCost_CreatePUR AvgCost - Create Record Purchased	  */
	public void setLBR_AvgCost_CreatePUR (String LBR_AvgCost_CreatePUR)
	{
		set_Value (COLUMNNAME_LBR_AvgCost_CreatePUR, LBR_AvgCost_CreatePUR);
	}

	/** Get AvgCost - Create Record Purchased.
		@return AvgCost - Create Record Purchased	  */
	public String getLBR_AvgCost_CreatePUR () 
	{
		return (String)get_Value(COLUMNNAME_LBR_AvgCost_CreatePUR);
	}

	/** Set AvgCost - RePost Acct.
		@param LBR_AvgCost_RePostAcct AvgCost - RePost Acct	  */
	public void setLBR_AvgCost_RePostAcct (String LBR_AvgCost_RePostAcct)
	{
		set_Value (COLUMNNAME_LBR_AvgCost_RePostAcct, LBR_AvgCost_RePostAcct);
	}

	/** Get AvgCost - RePost Acct.
		@return AvgCost - RePost Acct	  */
	public String getLBR_AvgCost_RePostAcct () 
	{
		return (String)get_Value(COLUMNNAME_LBR_AvgCost_RePostAcct);
	}

	/** Set Step 1.
		@param LBR_AvgStep1 Step 1	  */
	public void setLBR_AvgStep1 (boolean LBR_AvgStep1)
	{
		set_Value (COLUMNNAME_LBR_AvgStep1, Boolean.valueOf(LBR_AvgStep1));
	}

	/** Get Step 1.
		@return Step 1	  */
	public boolean isLBR_AvgStep1 () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_AvgStep1);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Step 2.
		@param LBR_AvgStep2 Step 2	  */
	public void setLBR_AvgStep2 (boolean LBR_AvgStep2)
	{
		set_Value (COLUMNNAME_LBR_AvgStep2, Boolean.valueOf(LBR_AvgStep2));
	}

	/** Get Step 2.
		@return Step 2	  */
	public boolean isLBR_AvgStep2 () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_AvgStep2);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Step 3.
		@param LBR_AvgStep3 Step 3	  */
	public void setLBR_AvgStep3 (boolean LBR_AvgStep3)
	{
		set_Value (COLUMNNAME_LBR_AvgStep3, Boolean.valueOf(LBR_AvgStep3));
	}

	/** Get Step 3.
		@return Step 3	  */
	public boolean isLBR_AvgStep3 () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_AvgStep3);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Step 4.
		@param LBR_AvgStep4 Step 4	  */
	public void setLBR_AvgStep4 (boolean LBR_AvgStep4)
	{
		set_Value (COLUMNNAME_LBR_AvgStep4, Boolean.valueOf(LBR_AvgStep4));
	}

	/** Get Step 4.
		@return Step 4	  */
	public boolean isLBR_AvgStep4 () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_AvgStep4);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Step 5.
		@param LBR_AvgStep5 Step 5	  */
	public void setLBR_AvgStep5 (boolean LBR_AvgStep5)
	{
		set_Value (COLUMNNAME_LBR_AvgStep5, Boolean.valueOf(LBR_AvgStep5));
	}

	/** Get Step 5.
		@return Step 5	  */
	public boolean isLBR_AvgStep5 () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_AvgStep5);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	public org.compiere.model.I_M_CostElement getM_CostElement() throws RuntimeException
    {
		return (org.compiere.model.I_M_CostElement)MTable.get(getCtx(), org.compiere.model.I_M_CostElement.Table_Name)
			.getPO(getM_CostElement_ID(), get_TrxName());	}

	/** Set Cost Element.
		@param M_CostElement_ID 
		Product Cost Element
	  */
	public void setM_CostElement_ID (int M_CostElement_ID)
	{
		if (M_CostElement_ID < 1) 
			set_Value (COLUMNNAME_M_CostElement_ID, null);
		else 
			set_Value (COLUMNNAME_M_CostElement_ID, Integer.valueOf(M_CostElement_ID));
	}

	/** Get Cost Element.
		@return Product Cost Element
	  */
	public int getM_CostElement_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_CostElement_ID);
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