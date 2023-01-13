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

/** Generated Model for LBR_NFeLotLine
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_NFeLotLine extends PO implements I_LBR_NFeLotLine, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20230112L;

    /** Standard Constructor */
    public X_LBR_NFeLotLine (Properties ctx, int LBR_NFeLotLine_ID, String trxName)
    {
      super (ctx, LBR_NFeLotLine_ID, trxName);
      /** if (LBR_NFeLotLine_ID == 0)
        {
			setLBR_NFeLotLine_ID (0);
			setLBR_NFeLot_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_NFeLotLine (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_NFeLotLine[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set NFe Lot Line.
		@param LBR_NFeLotLine_ID NFe Lot Line	  */
	public void setLBR_NFeLotLine_ID (int LBR_NFeLotLine_ID)
	{
		if (LBR_NFeLotLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NFeLotLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NFeLotLine_ID, Integer.valueOf(LBR_NFeLotLine_ID));
	}

	/** Get NFe Lot Line.
		@return NFe Lot Line	  */
	public int getLBR_NFeLotLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NFeLotLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_NFeLotLine_UU.
		@param LBR_NFeLotLine_UU LBR_NFeLotLine_UU	  */
	public void setLBR_NFeLotLine_UU (String LBR_NFeLotLine_UU)
	{
		set_Value (COLUMNNAME_LBR_NFeLotLine_UU, LBR_NFeLotLine_UU);
	}

	/** Get LBR_NFeLotLine_UU.
		@return LBR_NFeLotLine_UU	  */
	public String getLBR_NFeLotLine_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeLotLine_UU);
	}

	public org.adempierelbr.model.I_LBR_NFeLot getLBR_NFeLot() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_NFeLot)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_NFeLot.Table_Name)
			.getPO(getLBR_NFeLot_ID(), get_TrxName());	}

	/** Set NFe Lot.
		@param LBR_NFeLot_ID NFe Lot	  */
	public void setLBR_NFeLot_ID (int LBR_NFeLot_ID)
	{
		if (LBR_NFeLot_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NFeLot_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NFeLot_ID, Integer.valueOf(LBR_NFeLot_ID));
	}

	/** Get NFe Lot.
		@return NFe Lot	  */
	public int getLBR_NFeLot_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NFeLot_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_NotaFiscal getLBR_NotaFiscal() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_NotaFiscal)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_NotaFiscal.Table_Name)
			.getPO(getLBR_NotaFiscal_ID(), get_TrxName());	}

	/** Set Nota Fiscal.
		@param LBR_NotaFiscal_ID 
		Primary key table LBR_NotaFiscal
	  */
	public void setLBR_NotaFiscal_ID (int LBR_NotaFiscal_ID)
	{
		if (LBR_NotaFiscal_ID < 1) 
			set_Value (COLUMNNAME_LBR_NotaFiscal_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_NotaFiscal_ID, Integer.valueOf(LBR_NotaFiscal_ID));
	}

	/** Get Nota Fiscal.
		@return Primary key table LBR_NotaFiscal
	  */
	public int getLBR_NotaFiscal_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscal_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
}