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
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LBR_ProofOfDelivery
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_ProofOfDelivery extends PO implements I_LBR_ProofOfDelivery, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20240612L;

    /** Standard Constructor */
    public X_LBR_ProofOfDelivery (Properties ctx, int LBR_ProofOfDelivery_ID, String trxName)
    {
      super (ctx, LBR_ProofOfDelivery_ID, trxName);
      /** if (LBR_ProofOfDelivery_ID == 0)
        {
			setIsValid (false);
// N
			setLBR_ProofOfDelivery_ID (0);
			setProcessed (false);
        } */
    }

    /** Load Constructor */
    public X_LBR_ProofOfDelivery (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_ProofOfDelivery[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Image.
		@param AD_Image_ID 
		Image or Icon
	  */
	public void setAD_Image_ID (int AD_Image_ID)
	{
		if (AD_Image_ID < 1) 
			set_Value (COLUMNNAME_AD_Image_ID, null);
		else 
			set_Value (COLUMNNAME_AD_Image_ID, Integer.valueOf(AD_Image_ID));
	}

	/** Get Image.
		@return Image or Icon
	  */
	public int getAD_Image_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_AD_Image_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Date Delivered.
		@param DateDelivered 
		Date when the product was delivered
	  */
	public void setDateDelivered (Timestamp DateDelivered)
	{
		set_Value (COLUMNNAME_DateDelivered, DateDelivered);
	}

	/** Get Date Delivered.
		@return Date when the product was delivered
	  */
	public Timestamp getDateDelivered () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateDelivered);
	}

	/** Set Document No.
		@param DocumentNo 
		Document sequence number of the document
	  */
	public void setDocumentNo (String DocumentNo)
	{
		set_Value (COLUMNNAME_DocumentNo, DocumentNo);
	}

	/** Get Document No.
		@return Document sequence number of the document
	  */
	public String getDocumentNo () 
	{
		return (String)get_Value(COLUMNNAME_DocumentNo);
	}

	/** Set Error Msg.
		@param ErrorMsg Error Msg	  */
	public void setErrorMsg (String ErrorMsg)
	{
		set_Value (COLUMNNAME_ErrorMsg, ErrorMsg);
	}

	/** Get Error Msg.
		@return Error Msg	  */
	public String getErrorMsg () 
	{
		return (String)get_Value(COLUMNNAME_ErrorMsg);
	}

	/** Set Valid.
		@param IsValid 
		Element is valid
	  */
	public void setIsValid (boolean IsValid)
	{
		set_Value (COLUMNNAME_IsValid, Boolean.valueOf(IsValid));
	}

	/** Get Valid.
		@return Element is valid
	  */
	public boolean isValid () 
	{
		Object oo = get_Value(COLUMNNAME_IsValid);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Hash.
		@param LBR_Hash Hash	  */
	public void setLBR_Hash (String LBR_Hash)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_Hash, LBR_Hash);
	}

	/** Get Hash.
		@return Hash	  */
	public String getLBR_Hash () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Hash);
	}

	/** Set Latitude.
		@param LBR_Latitude Latitude	  */
	public void setLBR_Latitude (BigDecimal LBR_Latitude)
	{
		set_Value (COLUMNNAME_LBR_Latitude, LBR_Latitude);
	}

	/** Get Latitude.
		@return Latitude	  */
	public BigDecimal getLBR_Latitude () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_Latitude);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Longitude.
		@param LBR_Longitude Longitude	  */
	public void setLBR_Longitude (BigDecimal LBR_Longitude)
	{
		set_Value (COLUMNNAME_LBR_Longitude, LBR_Longitude);
	}

	/** Get Longitude.
		@return Longitude	  */
	public BigDecimal getLBR_Longitude () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_Longitude);
		if (bd == null)
			 return Env.ZERO;
		return bd;
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

	/** Set LBR_ProofOfDelivery.
		@param LBR_ProofOfDelivery_ID LBR_ProofOfDelivery	  */
	public void setLBR_ProofOfDelivery_ID (int LBR_ProofOfDelivery_ID)
	{
		if (LBR_ProofOfDelivery_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_ProofOfDelivery_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_ProofOfDelivery_ID, Integer.valueOf(LBR_ProofOfDelivery_ID));
	}

	/** Get LBR_ProofOfDelivery.
		@return LBR_ProofOfDelivery	  */
	public int getLBR_ProofOfDelivery_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_ProofOfDelivery_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_ProofOfDelivery_UU.
		@param LBR_ProofOfDelivery_UU LBR_ProofOfDelivery_UU	  */
	public void setLBR_ProofOfDelivery_UU (String LBR_ProofOfDelivery_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_ProofOfDelivery_UU, LBR_ProofOfDelivery_UU);
	}

	/** Get LBR_ProofOfDelivery_UU.
		@return LBR_ProofOfDelivery_UU	  */
	public String getLBR_ProofOfDelivery_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ProofOfDelivery_UU);
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

	/** Set NF Serie.
		@param lbr_NFSerie NF Serie	  */
	public void setlbr_NFSerie (String lbr_NFSerie)
	{
		set_Value (COLUMNNAME_lbr_NFSerie, lbr_NFSerie);
	}

	/** Get NF Serie.
		@return NF Serie	  */
	public String getlbr_NFSerie () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFSerie);
	}
}