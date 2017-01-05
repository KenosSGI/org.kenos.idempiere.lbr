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

import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for LBR_Bank
 *  @author iDempiere (generated) 
 *  @version Release 4.1 - $Id$ */
public class X_LBR_Bank extends PO implements I_LBR_Bank, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20161221L;

    /** Standard Constructor */
    public X_LBR_Bank (Properties ctx, int LBR_Bank_ID, String trxName)
    {
      super (ctx, LBR_Bank_ID, trxName);
      /** if (LBR_Bank_ID == 0)
        {
			setLBR_Bank_ID (0);
			setName (null);
			setRoutingNo (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_Bank (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 7 - System - Client - Org 
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
      StringBuffer sb = new StringBuffer ("X_LBR_Bank[")
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

	/** Set Bank.
		@param LBR_Bank_ID 
		Primary Key table LBR_Bank
	  */
	public void setLBR_Bank_ID (int LBR_Bank_ID)
	{
		if (LBR_Bank_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_Bank_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_Bank_ID, Integer.valueOf(LBR_Bank_ID));
	}

	/** Get Bank.
		@return Primary Key table LBR_Bank
	  */
	public int getLBR_Bank_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Bank_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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