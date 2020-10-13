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

/** Generated Model for LBR_DigitalCertificate
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_DigitalCertificate extends PO implements I_LBR_DigitalCertificate, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20200924L;

    /** Standard Constructor */
    public X_LBR_DigitalCertificate (Properties ctx, int LBR_DigitalCertificate_ID, String trxName)
    {
      super (ctx, LBR_DigitalCertificate_ID, trxName);
      /** if (LBR_DigitalCertificate_ID == 0)
        {
			setIsValid (false);
// N
			setLBR_DigitalCertificate_ID (0);
			setName (null);
			setProcessing (false);
// N
			setValidFrom (new Timestamp( System.currentTimeMillis() ));
// @#Date@
        } */
    }

    /** Load Constructor */
    public X_LBR_DigitalCertificate (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 6 - System - Client 
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
      StringBuffer sb = new StringBuffer ("X_LBR_DigitalCertificate[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Alias.
		@param Alias 
		Defines an alternate method of indicating an account combination.
	  */
	public void setAlias (String Alias)
	{
		set_Value (COLUMNNAME_Alias, Alias);
	}

	/** Get Alias.
		@return Defines an alternate method of indicating an account combination.
	  */
	public String getAlias () 
	{
		return (String)get_Value(COLUMNNAME_Alias);
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

	/** Set Digital Certificate.
		@param LBR_DigitalCertificate_ID Digital Certificate	  */
	public void setLBR_DigitalCertificate_ID (int LBR_DigitalCertificate_ID)
	{
		if (LBR_DigitalCertificate_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_DigitalCertificate_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_DigitalCertificate_ID, Integer.valueOf(LBR_DigitalCertificate_ID));
	}

	/** Get Digital Certificate.
		@return Digital Certificate	  */
	public int getLBR_DigitalCertificate_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_DigitalCertificate_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_DigitalCertificate_UU.
		@param LBR_DigitalCertificate_UU LBR_DigitalCertificate_UU	  */
	public void setLBR_DigitalCertificate_UU (String LBR_DigitalCertificate_UU)
	{
		set_Value (COLUMNNAME_LBR_DigitalCertificate_UU, LBR_DigitalCertificate_UU);
	}

	/** Get LBR_DigitalCertificate_UU.
		@return LBR_DigitalCertificate_UU	  */
	public String getLBR_DigitalCertificate_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_DigitalCertificate_UU);
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

	/** Set Password.
		@param Password 
		Password of any length (case sensitive)
	  */
	public void setPassword (String Password)
	{
		set_Value (COLUMNNAME_Password, Password);
	}

	/** Get Password.
		@return Password of any length (case sensitive)
	  */
	public String getPassword () 
	{
		return (String)get_Value(COLUMNNAME_Password);
	}

	/** Set Process Now.
		@param Processing Process Now	  */
	public void setProcessing (boolean Processing)
	{
		set_Value (COLUMNNAME_Processing, Boolean.valueOf(Processing));
	}

	/** Get Process Now.
		@return Process Now	  */
	public boolean isProcessing () 
	{
		Object oo = get_Value(COLUMNNAME_Processing);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set URL.
		@param URL 
		Full URL address - e.g. http://www.idempiere.org
	  */
	public void setURL (String URL)
	{
		set_ValueNoCheck (COLUMNNAME_URL, URL);
	}

	/** Get URL.
		@return Full URL address - e.g. http://www.idempiere.org
	  */
	public String getURL () 
	{
		return (String)get_Value(COLUMNNAME_URL);
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

	/** Java Key Store = JKS */
	public static final String LBR_CERTTYPE_JavaKeyStore = "JKS";
	/** PKCS#12 = P12 */
	public static final String LBR_CERTTYPE_PKCS12 = "P12";
	/** ICP TrustStore (JKS) = ICP */
	public static final String LBR_CERTTYPE_ICPTrustStoreJKS = "ICP";
	/** PKCS#11 = P11 */
	public static final String LBR_CERTTYPE_PKCS11 = "P11";
	/** PKCS#11 (Remote) = R11 */
	public static final String LBR_CERTTYPE_PKCS11Remote = "R11";
	/** PKCS#11 (Network) = N11 */
	public static final String LBR_CERTTYPE_PKCS11Network = "N11";
	/** Set Certificate Type.
		@param lbr_CertType 
		Define the type of Digital Certificate
	  */
	public void setlbr_CertType (String lbr_CertType)
	{

		set_Value (COLUMNNAME_lbr_CertType, lbr_CertType);
	}

	/** Get Certificate Type.
		@return Define the type of Digital Certificate
	  */
	public String getlbr_CertType () 
	{
		return (String)get_Value(COLUMNNAME_lbr_CertType);
	}
}