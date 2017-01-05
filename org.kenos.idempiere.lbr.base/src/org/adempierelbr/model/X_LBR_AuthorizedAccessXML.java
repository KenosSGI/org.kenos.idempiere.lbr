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
import org.compiere.util.KeyNamePair;

/** Generated Model for LBR_AuthorizedAccessXML
 *  @author iDempiere (generated) 
 *  @version Release 4.1 - $Id$ */
public class X_LBR_AuthorizedAccessXML extends PO implements I_LBR_AuthorizedAccessXML, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20170105L;

    /** Standard Constructor */
    public X_LBR_AuthorizedAccessXML (Properties ctx, int LBR_AuthorizedAccessXML_ID, String trxName)
    {
      super (ctx, LBR_AuthorizedAccessXML_ID, trxName);
      /** if (LBR_AuthorizedAccessXML_ID == 0)
        {
			setLBR_AuthorizedAccessXML_ID (0);
			setLBR_BPTypeBR (null);
// PJ
        } */
    }

    /** Load Constructor */
    public X_LBR_AuthorizedAccessXML (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_AuthorizedAccessXML[")
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
			set_Value (COLUMNNAME_C_BPartner_ID, null);
		else 
			set_Value (COLUMNNAME_C_BPartner_ID, Integer.valueOf(C_BPartner_ID));
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

	/** Set Authorized Access to XML.
		@param LBR_AuthorizedAccessXML_ID Authorized Access to XML	  */
	public void setLBR_AuthorizedAccessXML_ID (int LBR_AuthorizedAccessXML_ID)
	{
		if (LBR_AuthorizedAccessXML_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_AuthorizedAccessXML_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_AuthorizedAccessXML_ID, Integer.valueOf(LBR_AuthorizedAccessXML_ID));
	}

	/** Get Authorized Access to XML.
		@return Authorized Access to XML	  */
	public int getLBR_AuthorizedAccessXML_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_AuthorizedAccessXML_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getLBR_AuthorizedAccessXML_ID()));
    }

	/** PF - Individual = PF */
	public static final String LBR_BPTYPEBR_PF_Individual = "PF";
	/** PJ - Legal Entity = PJ */
	public static final String LBR_BPTYPEBR_PJ_LegalEntity = "PJ";
	/** Set Brazilian BP Type.
		@param LBR_BPTypeBR 
		Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)
	  */
	public void setLBR_BPTypeBR (String LBR_BPTypeBR)
	{

		set_Value (COLUMNNAME_LBR_BPTypeBR, LBR_BPTypeBR);
	}

	/** Get Brazilian BP Type.
		@return Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)
	  */
	public String getLBR_BPTypeBR () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BPTypeBR);
	}

	/** Set CNPJ.
		@param LBR_CNPJ 
		Used to identify Legal Entities in Brazil
	  */
	public void setLBR_CNPJ (String LBR_CNPJ)
	{
		set_Value (COLUMNNAME_LBR_CNPJ, LBR_CNPJ);
	}

	/** Get CNPJ.
		@return Used to identify Legal Entities in Brazil
	  */
	public String getLBR_CNPJ () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNPJ);
	}

	/** Set CPF.
		@param LBR_CPF 
		Used to identify individuals in Brazil
	  */
	public void setLBR_CPF (String LBR_CPF)
	{
		set_Value (COLUMNNAME_LBR_CPF, LBR_CPF);
	}

	/** Get CPF.
		@return Used to identify individuals in Brazil
	  */
	public String getLBR_CPF () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CPF);
	}
}