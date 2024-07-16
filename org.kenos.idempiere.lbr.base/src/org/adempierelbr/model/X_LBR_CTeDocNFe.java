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

/** Generated Model for LBR_CTeDocNFe
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_CTeDocNFe extends PO implements I_LBR_CTeDocNFe, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20240715L;

    /** Standard Constructor */
    public X_LBR_CTeDocNFe (Properties ctx, int LBR_CTeDocNFe_ID, String trxName)
    {
      super (ctx, LBR_CTeDocNFe_ID, trxName);
      /** if (LBR_CTeDocNFe_ID == 0)
        {
			setLBR_CTeDocNFe_ID (0);
			setLBR_CTe_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_CTeDocNFe (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_CTeDocNFe[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Date Promised.
		@param DatePromised 
		Date Order was promised
	  */
	public void setDatePromised (Timestamp DatePromised)
	{
		set_ValueNoCheck (COLUMNNAME_DatePromised, DatePromised);
	}

	/** Get Date Promised.
		@return Date Order was promised
	  */
	public Timestamp getDatePromised () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DatePromised);
	}

	/** Set CT-e Document.
		@param LBR_CTeDocNFe_ID CT-e Document	  */
	public void setLBR_CTeDocNFe_ID (int LBR_CTeDocNFe_ID)
	{
		if (LBR_CTeDocNFe_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_CTeDocNFe_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_CTeDocNFe_ID, Integer.valueOf(LBR_CTeDocNFe_ID));
	}

	/** Get CT-e Document.
		@return CT-e Document	  */
	public int getLBR_CTeDocNFe_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CTeDocNFe_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_CTeDocNFe_UU.
		@param LBR_CTeDocNFe_UU LBR_CTeDocNFe_UU	  */
	public void setLBR_CTeDocNFe_UU (String LBR_CTeDocNFe_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_CTeDocNFe_UU, LBR_CTeDocNFe_UU);
	}

	/** Get LBR_CTeDocNFe_UU.
		@return LBR_CTeDocNFe_UU	  */
	public String getLBR_CTeDocNFe_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CTeDocNFe_UU);
	}

	public org.adempierelbr.model.I_LBR_CTe getLBR_CTe() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_CTe)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_CTe.Table_Name)
			.getPO(getLBR_CTe_ID(), get_TrxName());	}

	/** Set CT-e.
		@param LBR_CTe_ID CT-e	  */
	public void setLBR_CTe_ID (int LBR_CTe_ID)
	{
		if (LBR_CTe_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_CTe_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_CTe_ID, Integer.valueOf(LBR_CTe_ID));
	}

	/** Get CT-e.
		@return CT-e	  */
	public int getLBR_CTe_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CTe_ID);
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
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscal_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscal_ID, Integer.valueOf(LBR_NotaFiscal_ID));
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

	/** Set SUFRAMA Pin.
		@param LBR_SUFRAMAPin SUFRAMA Pin	  */
	public void setLBR_SUFRAMAPin (String LBR_SUFRAMAPin)
	{
		set_Value (COLUMNNAME_LBR_SUFRAMAPin, LBR_SUFRAMAPin);
	}

	/** Get SUFRAMA Pin.
		@return SUFRAMA Pin	  */
	public String getLBR_SUFRAMAPin () 
	{
		return (String)get_Value(COLUMNNAME_LBR_SUFRAMAPin);
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