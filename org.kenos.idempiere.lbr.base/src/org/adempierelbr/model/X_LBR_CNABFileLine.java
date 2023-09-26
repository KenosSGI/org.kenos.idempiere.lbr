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

/** Generated Model for LBR_CNABFileLine
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_CNABFileLine extends PO implements I_LBR_CNABFileLine, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20200331L;

    /** Standard Constructor */
    public X_LBR_CNABFileLine (Properties ctx, int LBR_CNABFileLine_ID, String trxName)
    {
      super (ctx, LBR_CNABFileLine_ID, trxName);
      /** if (LBR_CNABFileLine_ID == 0)
        {
			setLBR_BankSlipMov_ID (0);
			setLBR_CNABFileLine_ID (0);
			setLBR_CNABFile_ID (0);
			setProcessed (false);
// N
			setSeqNo (0);
// 1
        } */
    }

    /** Load Constructor */
    public X_LBR_CNABFileLine (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_CNABFileLine[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.adempierelbr.model.I_LBR_BankSlipMov getLBR_BankSlipMov() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_BankSlipMov)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_BankSlipMov.Table_Name)
			.getPO(getLBR_BankSlipMov_ID(), get_TrxName());	}

	/** Set Bank Slip Mov.
		@param LBR_BankSlipMov_ID Bank Slip Mov	  */
	public void setLBR_BankSlipMov_ID (int LBR_BankSlipMov_ID)
	{
		if (LBR_BankSlipMov_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_BankSlipMov_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_BankSlipMov_ID, Integer.valueOf(LBR_BankSlipMov_ID));
	}

	/** Get Bank Slip Mov.
		@return Bank Slip Mov	  */
	public int getLBR_BankSlipMov_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BankSlipMov_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set CNAB File Line.
		@param LBR_CNABFileLine_ID CNAB File Line	  */
	public void setLBR_CNABFileLine_ID (int LBR_CNABFileLine_ID)
	{
		if (LBR_CNABFileLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_CNABFileLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_CNABFileLine_ID, Integer.valueOf(LBR_CNABFileLine_ID));
	}

	/** Get CNAB File Line.
		@return CNAB File Line	  */
	public int getLBR_CNABFileLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CNABFileLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_CNABFileLine_UU.
		@param LBR_CNABFileLine_UU LBR_CNABFileLine_UU	  */
	public void setLBR_CNABFileLine_UU (String LBR_CNABFileLine_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_CNABFileLine_UU, LBR_CNABFileLine_UU);
	}

	/** Get LBR_CNABFileLine_UU.
		@return LBR_CNABFileLine_UU	  */
	public String getLBR_CNABFileLine_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABFileLine_UU);
	}

	public org.adempierelbr.model.I_LBR_CNABFile getLBR_CNABFile() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_CNABFile)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_CNABFile.Table_Name)
			.getPO(getLBR_CNABFile_ID(), get_TrxName());	}

	/** Set CNAB File.
		@param LBR_CNABFile_ID CNAB File	  */
	public void setLBR_CNABFile_ID (int LBR_CNABFile_ID)
	{
		if (LBR_CNABFile_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_CNABFile_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_CNABFile_ID, Integer.valueOf(LBR_CNABFile_ID));
	}

	/** Get CNAB File.
		@return CNAB File	  */
	public int getLBR_CNABFile_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CNABFile_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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
}