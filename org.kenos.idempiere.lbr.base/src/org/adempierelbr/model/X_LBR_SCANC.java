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

/** Generated Model for LBR_SCANC
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_SCANC extends PO implements I_LBR_SCANC, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20201030L;

    /** Standard Constructor */
    public X_LBR_SCANC (Properties ctx, int LBR_SCANC_ID, String trxName)
    {
      super (ctx, LBR_SCANC_ID, trxName);
      /** if (LBR_SCANC_ID == 0)
        {
			setC_Period_ID (0);
			setDateDoc (new Timestamp( System.currentTimeMillis() ));
			setLBR_SCANC_ID (0);
			setProcessed (false);
// N
        } */
    }

    /** Load Constructor */
    public X_LBR_SCANC (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_SCANC[")
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
			set_ValueNoCheck (COLUMNNAME_C_Period_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_Period_ID, Integer.valueOf(C_Period_ID));
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

	/** Sul = 0 */
	public static final String LBR_REGIONTO_Sul = "0";
	/** Sudeste = 1 */
	public static final String LBR_REGIONTO_Sudeste = "1";
	/** Norte = 2 */
	public static final String LBR_REGIONTO_Norte = "2";
	/** Nordeste = 3 */
	public static final String LBR_REGIONTO_Nordeste = "3";
	/** Centro-Oeste = 4 */
	public static final String LBR_REGIONTO_Centro_Oeste = "4";
	/** Sul e Sudeste = 5 */
	public static final String LBR_REGIONTO_SulESudeste = "5";
	/** Norte, Nordeste e Centro-Oeste = 6 */
	public static final String LBR_REGIONTO_NorteNordesteECentro_Oeste = "6";
	/** Sul e Sudeste, exceto ES = 7 */
	public static final String LBR_REGIONTO_SulESudesteExcetoES = "7";
	/** Norte, Nordeste, Centro-Oeste e ES = 8 */
	public static final String LBR_REGIONTO_NorteNordesteCentro_OesteEES = "8";
	/** Set Region To.
		@param LBR_RegionTo Region To	  */
	public void setLBR_RegionTo (String LBR_RegionTo)
	{

		set_Value (COLUMNNAME_LBR_RegionTo, LBR_RegionTo);
	}

	/** Get Region To.
		@return Region To	  */
	public String getLBR_RegionTo () 
	{
		return (String)get_Value(COLUMNNAME_LBR_RegionTo);
	}

	/** Set SCANC.
		@param LBR_SCANC_ID SCANC	  */
	public void setLBR_SCANC_ID (int LBR_SCANC_ID)
	{
		if (LBR_SCANC_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_SCANC_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_SCANC_ID, Integer.valueOf(LBR_SCANC_ID));
	}

	/** Get SCANC.
		@return SCANC	  */
	public int getLBR_SCANC_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_SCANC_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_SCANC_UU.
		@param LBR_SCANC_UU LBR_SCANC_UU	  */
	public void setLBR_SCANC_UU (String LBR_SCANC_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_SCANC_UU, LBR_SCANC_UU);
	}

	/** Get LBR_SCANC_UU.
		@return LBR_SCANC_UU	  */
	public String getLBR_SCANC_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_SCANC_UU);
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

	/** Sul = 0 */
	public static final String REGIONNAME_Sul = "0";
	/** Sudeste = 1 */
	public static final String REGIONNAME_Sudeste = "1";
	/** Norte = 2 */
	public static final String REGIONNAME_Norte = "2";
	/** Nordeste = 3 */
	public static final String REGIONNAME_Nordeste = "3";
	/** Centro-Oeste = 4 */
	public static final String REGIONNAME_Centro_Oeste = "4";
	/** Sul e Sudeste = 5 */
	public static final String REGIONNAME_SulESudeste = "5";
	/** Norte, Nordeste e Centro-Oeste = 6 */
	public static final String REGIONNAME_NorteNordesteECentro_Oeste = "6";
	/** Sul e Sudeste, exceto ES = 7 */
	public static final String REGIONNAME_SulESudesteExcetoES = "7";
	/** Norte, Nordeste, Centro-Oeste e ES = 8 */
	public static final String REGIONNAME_NorteNordesteCentro_OesteEES = "8";
	/** Set Region.
		@param RegionName 
		Name of the Region
	  */
	public void setRegionName (String RegionName)
	{

		set_ValueNoCheck (COLUMNNAME_RegionName, RegionName);
	}

	/** Get Region.
		@return Name of the Region
	  */
	public String getRegionName () 
	{
		return (String)get_Value(COLUMNNAME_RegionName);
	}

	/** Set BP IE.
		@param lbr_BPIE 
		BP IE - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPIE (String lbr_BPIE)
	{
		set_ValueNoCheck (COLUMNNAME_lbr_BPIE, lbr_BPIE);
	}

	/** Get BP IE.
		@return BP IE - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPIE () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPIE);
	}

	/** Set CNPJ.
		@param lbr_CNPJ 
		Used to identify Legal Entities in Brazil
	  */
	public void setlbr_CNPJ (String lbr_CNPJ)
	{
		set_Value (COLUMNNAME_lbr_CNPJ, lbr_CNPJ);
	}

	/** Get CNPJ.
		@return Used to identify Legal Entities in Brazil
	  */
	public String getlbr_CNPJ () 
	{
		return (String)get_Value(COLUMNNAME_lbr_CNPJ);
	}

	/** Set IE.
		@param lbr_IE 
		Used to Identify the IE (State Tax ID)
	  */
	public void setlbr_IE (String lbr_IE)
	{
		set_Value (COLUMNNAME_lbr_IE, lbr_IE);
	}

	/** Get IE.
		@return Used to Identify the IE (State Tax ID)
	  */
	public String getlbr_IE () 
	{
		return (String)get_Value(COLUMNNAME_lbr_IE);
	}

	/** Set Legal Entity.
		@param lbr_LegalEntity Legal Entity	  */
	public void setlbr_LegalEntity (String lbr_LegalEntity)
	{
		set_ValueNoCheck (COLUMNNAME_lbr_LegalEntity, lbr_LegalEntity);
	}

	/** Get Legal Entity.
		@return Legal Entity	  */
	public String getlbr_LegalEntity () 
	{
		return (String)get_Value(COLUMNNAME_lbr_LegalEntity);
	}
}