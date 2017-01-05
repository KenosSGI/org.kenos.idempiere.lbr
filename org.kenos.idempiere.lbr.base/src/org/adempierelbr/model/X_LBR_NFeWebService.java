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

/** Generated Model for LBR_NFeWebService
 *  @author iDempiere (generated) 
 *  @version Release 4.1 - $Id$ */
public class X_LBR_NFeWebService extends PO implements I_LBR_NFeWebService, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20170105L;

    /** Standard Constructor */
    public X_LBR_NFeWebService (Properties ctx, int LBR_NFeWebService_ID, String trxName)
    {
      super (ctx, LBR_NFeWebService_ID, trxName);
      /** if (LBR_NFeWebService_ID == 0)
        {
			setLBR_NFeEnv (null);
			setLBR_NFeWebService_ID (0);
			setName (null);
			setURL (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_NFeWebService (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 4 - System 
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
      StringBuffer sb = new StringBuffer ("X_LBR_NFeWebService[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_Region getC_Region() throws RuntimeException
    {
		return (org.compiere.model.I_C_Region)MTable.get(getCtx(), org.compiere.model.I_C_Region.Table_Name)
			.getPO(getC_Region_ID(), get_TrxName());	}

	/** Set Region.
		@param C_Region_ID 
		Identifies a geographical Region
	  */
	public void setC_Region_ID (int C_Region_ID)
	{
		if (C_Region_ID < 1) 
			set_Value (COLUMNNAME_C_Region_ID, null);
		else 
			set_Value (COLUMNNAME_C_Region_ID, Integer.valueOf(C_Region_ID));
	}

	/** Get Region.
		@return Identifies a geographical Region
	  */
	public int getC_Region_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Region_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Production = 1 */
	public static final String LBR_NFEENV_Production = "1";
	/** Homologation = 2 */
	public static final String LBR_NFEENV_Homologation = "2";
	/** Set NFe Environment.
		@param LBR_NFeEnv NFe Environment	  */
	public void setLBR_NFeEnv (String LBR_NFeEnv)
	{

		set_Value (COLUMNNAME_LBR_NFeEnv, LBR_NFeEnv);
	}

	/** Get NFe Environment.
		@return NFe Environment	  */
	public String getLBR_NFeEnv () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeEnv);
	}

	/** Set WebService NFe.
		@param LBR_NFeWebService_ID 
		Defines the WebService NFe
	  */
	public void setLBR_NFeWebService_ID (int LBR_NFeWebService_ID)
	{
		if (LBR_NFeWebService_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NFeWebService_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NFeWebService_ID, Integer.valueOf(LBR_NFeWebService_ID));
	}

	/** Get WebService NFe.
		@return Defines the WebService NFe
	  */
	public int getLBR_NFeWebService_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NFeWebService_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Normal = 1 */
	public static final String LBR_WSTYPE_Normal = "1";
	/** SCAN = 2 */
	public static final String LBR_WSTYPE_SCAN = "2";
	/** Set WS Type.
		@param LBR_WSType 
		WebService Type
	  */
	public void setLBR_WSType (String LBR_WSType)
	{

		set_Value (COLUMNNAME_LBR_WSType, LBR_WSType);
	}

	/** Get WS Type.
		@return WebService Type
	  */
	public String getLBR_WSType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_WSType);
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

	/** Set URL.
		@param URL 
		Full URL address - e.g. http://www.adempiere.org
	  */
	public void setURL (String URL)
	{
		set_Value (COLUMNNAME_URL, URL);
	}

	/** Get URL.
		@return Full URL address - e.g. http://www.adempiere.org
	  */
	public String getURL () 
	{
		return (String)get_Value(COLUMNNAME_URL);
	}

	/** Set Version No.
		@param VersionNo 
		Version Number
	  */
	public void setVersionNo (String VersionNo)
	{
		set_Value (COLUMNNAME_VersionNo, VersionNo);
	}

	/** Get Version No.
		@return Version Number
	  */
	public String getVersionNo () 
	{
		return (String)get_Value(COLUMNNAME_VersionNo);
	}
}