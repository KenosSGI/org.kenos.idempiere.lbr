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

/** Generated Model for LBR_ExportDetail
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_ExportDetail extends PO implements I_LBR_ExportDetail, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20241119L;

    /** Standard Constructor */
    public X_LBR_ExportDetail (Properties ctx, int LBR_ExportDetail_ID, String trxName)
    {
      super (ctx, LBR_ExportDetail_ID, trxName);
      /** if (LBR_ExportDetail_ID == 0)
        {
			setLBR_ExportDetail_ID (0);
			setLBR_IsIndirectExport (false);
// N
			setLBR_NotaFiscalLine_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_ExportDetail (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_ExportDetail[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Export Detail.
		@param LBR_ExportDetail_ID Export Detail	  */
	public void setLBR_ExportDetail_ID (int LBR_ExportDetail_ID)
	{
		if (LBR_ExportDetail_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_ExportDetail_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_ExportDetail_ID, Integer.valueOf(LBR_ExportDetail_ID));
	}

	/** Get Export Detail.
		@return Export Detail	  */
	public int getLBR_ExportDetail_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_ExportDetail_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_ExportDetail_UU.
		@param LBR_ExportDetail_UU LBR_ExportDetail_UU	  */
	public void setLBR_ExportDetail_UU (String LBR_ExportDetail_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_ExportDetail_UU, LBR_ExportDetail_UU);
	}

	/** Get LBR_ExportDetail_UU.
		@return LBR_ExportDetail_UU	  */
	public String getLBR_ExportDetail_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ExportDetail_UU);
	}

	/** Set Export Registration.
		@param LBR_ExportRegNo 
		Export Registration
	  */
	public void setLBR_ExportRegNo (String LBR_ExportRegNo)
	{
		set_Value (COLUMNNAME_LBR_ExportRegNo, LBR_ExportRegNo);
	}

	/** Get Export Registration.
		@return Export Registration
	  */
	public String getLBR_ExportRegNo () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ExportRegNo);
	}

	/** Set Indirect Export.
		@param LBR_IsIndirectExport 
		Indicates whether the export operation is indirect
	  */
	public void setLBR_IsIndirectExport (boolean LBR_IsIndirectExport)
	{
		set_Value (COLUMNNAME_LBR_IsIndirectExport, Boolean.valueOf(LBR_IsIndirectExport));
	}

	/** Get Indirect Export.
		@return Indicates whether the export operation is indirect
	  */
	public boolean isLBR_IsIndirectExport () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_IsIndirectExport);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	public org.adempierelbr.model.I_LBR_NotaFiscalLine getLBR_NotaFiscalLine() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_NotaFiscalLine)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_NotaFiscalLine.Table_Name)
			.getPO(getLBR_NotaFiscalLine_ID(), get_TrxName());	}

	/** Set Nota Fiscal Line.
		@param LBR_NotaFiscalLine_ID 
		Primary key table LBR_NotaFiscalLine
	  */
	public void setLBR_NotaFiscalLine_ID (int LBR_NotaFiscalLine_ID)
	{
		if (LBR_NotaFiscalLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalLine_ID, Integer.valueOf(LBR_NotaFiscalLine_ID));
	}

	/** Get Nota Fiscal Line.
		@return Primary key table LBR_NotaFiscalLine
	  */
	public int getLBR_NotaFiscalLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscalLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Quantity.
		@param Qty 
		Quantity
	  */
	public void setQty (BigDecimal Qty)
	{
		set_Value (COLUMNNAME_Qty, Qty);
	}

	/** Get Quantity.
		@return Quantity
	  */
	public BigDecimal getQty () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Qty);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Drawback No.
		@param lbr_Drawback 
		Identifies the Drawback No
	  */
	public void setlbr_Drawback (String lbr_Drawback)
	{
		set_Value (COLUMNNAME_lbr_Drawback, lbr_Drawback);
	}

	/** Get Drawback No.
		@return Identifies the Drawback No
	  */
	public String getlbr_Drawback () 
	{
		return (String)get_Value(COLUMNNAME_lbr_Drawback);
	}

	/** Set NFe ID.
		@param lbr_NFeID 
		Identification of NFe
	  */
	public void setlbr_NFeID (String lbr_NFeID)
	{
		set_Value (COLUMNNAME_lbr_NFeID, lbr_NFeID);
	}

	/** Get NFe ID.
		@return Identification of NFe
	  */
	public String getlbr_NFeID () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFeID);
	}
}