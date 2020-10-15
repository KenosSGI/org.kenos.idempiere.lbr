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

/** Generated Model for LBR_FuelOperation
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_FuelOperation extends PO implements I_LBR_FuelOperation, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20201015L;

    /** Standard Constructor */
    public X_LBR_FuelOperation (Properties ctx, int LBR_FuelOperation_ID, String trxName)
    {
      super (ctx, LBR_FuelOperation_ID, trxName);
      /** if (LBR_FuelOperation_ID == 0)
        {
			setClassification (0);
			setLBR_Finality (0);
			setLBR_FuelOperation_ID (0);
			setName (null);
			setSeqNo (0);
			setType (0);
			setValue (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_FuelOperation (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_FuelOperation[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Classification.
		@param Classification 
		Classification for grouping
	  */
	public void setClassification (int Classification)
	{
		set_Value (COLUMNNAME_Classification, Integer.valueOf(Classification));
	}

	/** Get Classification.
		@return Classification for grouping
	  */
	public int getClassification () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Classification);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Finality.
		@param LBR_Finality Finality	  */
	public void setLBR_Finality (int LBR_Finality)
	{
		set_Value (COLUMNNAME_LBR_Finality, Integer.valueOf(LBR_Finality));
	}

	/** Get Finality.
		@return Finality	  */
	public int getLBR_Finality () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Finality);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Fuel Operation.
		@param LBR_FuelOperation_ID Fuel Operation	  */
	public void setLBR_FuelOperation_ID (int LBR_FuelOperation_ID)
	{
		if (LBR_FuelOperation_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_FuelOperation_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_FuelOperation_ID, Integer.valueOf(LBR_FuelOperation_ID));
	}

	/** Get Fuel Operation.
		@return Fuel Operation	  */
	public int getLBR_FuelOperation_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_FuelOperation_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_FuelOperation_UU.
		@param LBR_FuelOperation_UU LBR_FuelOperation_UU	  */
	public void setLBR_FuelOperation_UU (String LBR_FuelOperation_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_FuelOperation_UU, LBR_FuelOperation_UU);
	}

	/** Get LBR_FuelOperation_UU.
		@return LBR_FuelOperation_UU	  */
	public String getLBR_FuelOperation_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_FuelOperation_UU);
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

	/** Set Type.
		@param Type 
		Type of Validation (SQL, Java Script, Java Language)
	  */
	public void setType (int Type)
	{
		set_Value (COLUMNNAME_Type, Integer.valueOf(Type));
	}

	/** Get Type.
		@return Type of Validation (SQL, Java Script, Java Language)
	  */
	public int getType () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Type);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Valid from.
		@param ValidFrom 
		Valid from including this date (first day)
	  */
	public void setValidFrom (Timestamp ValidFrom)
	{
		set_Value (COLUMNNAME_ValidFrom, ValidFrom);
	}

	/** Get Valid from.
		@return Valid from including this date (first day)
	  */
	public Timestamp getValidFrom () 
	{
		return (Timestamp)get_Value(COLUMNNAME_ValidFrom);
	}

	/** Set Valid to.
		@param ValidTo 
		Valid to including this date (last day)
	  */
	public void setValidTo (Timestamp ValidTo)
	{
		set_Value (COLUMNNAME_ValidTo, ValidTo);
	}

	/** Get Valid to.
		@return Valid to including this date (last day)
	  */
	public Timestamp getValidTo () 
	{
		return (Timestamp)get_Value(COLUMNNAME_ValidTo);
	}

	/** Set Search Key.
		@param Value 
		Search key for the record in the format required - must be unique
	  */
	public void setValue (String Value)
	{
		set_Value (COLUMNNAME_Value, Value);
	}

	/** Get Search Key.
		@return Search key for the record in the format required - must be unique
	  */
	public String getValue () 
	{
		return (String)get_Value(COLUMNNAME_Value);
	}
}