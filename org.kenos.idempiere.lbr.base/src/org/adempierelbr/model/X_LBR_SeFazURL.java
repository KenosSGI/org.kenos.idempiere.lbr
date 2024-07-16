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

/** Generated Model for LBR_SeFazURL
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_SeFazURL extends PO implements I_LBR_SeFazURL, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20240619L;

    /** Standard Constructor */
    public X_LBR_SeFazURL (Properties ctx, int LBR_SeFazURL_ID, String trxName)
    {
      super (ctx, LBR_SeFazURL_ID, trxName);
      /** if (LBR_SeFazURL_ID == 0)
        {
			setLBR_EndpointName (null);
			setLBR_SeFazURL_ID (0);
			setLBR_SeFaz_ID (0);
			setLBR_URLScope (null);
			setURL (null);
			setValidFrom (new Timestamp( System.currentTimeMillis() ));
			setVersionNo (null);
			setlbr_NFeEnv (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_SeFazURL (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_SeFazURL[")
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

	/** NFeAutorizacao = 000 */
	public static final String LBR_ENDPOINTNAME_NFeAutorizacao = "000";
	/** NfeConsultaCadastro = 001 */
	public static final String LBR_ENDPOINTNAME_NfeConsultaCadastro = "001";
	/** NfeConsultaProtocolo = 002 */
	public static final String LBR_ENDPOINTNAME_NfeConsultaProtocolo = "002";
	/** NFeDistribuicaoDFe = 003 */
	public static final String LBR_ENDPOINTNAME_NFeDistribuicaoDFe = "003";
	/** NfeInutilizacao = 004 */
	public static final String LBR_ENDPOINTNAME_NfeInutilizacao = "004";
	/** NFeRetAutorizacao = 005 */
	public static final String LBR_ENDPOINTNAME_NFeRetAutorizacao = "005";
	/** NfeStatusServico = 006 */
	public static final String LBR_ENDPOINTNAME_NfeStatusServico = "006";
	/** RecepcaoEvento = 007 */
	public static final String LBR_ENDPOINTNAME_RecepcaoEvento = "007";
	/** CTeConsultaV4 = 100 */
	public static final String LBR_ENDPOINTNAME_CTeConsultaV4 = "100";
	/** CTeDistribuicaoDFe = 101 */
	public static final String LBR_ENDPOINTNAME_CTeDistribuicaoDFe = "101";
	/** CTeRecepcaoEventoV4 = 102 */
	public static final String LBR_ENDPOINTNAME_CTeRecepcaoEventoV4 = "102";
	/** CTeRecepcaoGTVeV4 = 103 */
	public static final String LBR_ENDPOINTNAME_CTeRecepcaoGTVeV4 = "103";
	/** CTeRecepcaoOSV4 = 104 */
	public static final String LBR_ENDPOINTNAME_CTeRecepcaoOSV4 = "104";
	/** CTeRecepcaoSincV4 = 105 */
	public static final String LBR_ENDPOINTNAME_CTeRecepcaoSincV4 = "105";
	/** CTeStatusServicoV4 = 106 */
	public static final String LBR_ENDPOINTNAME_CTeStatusServicoV4 = "106";
	/** QRCode = 107 */
	public static final String LBR_ENDPOINTNAME_QRCode = "107";
	/** Set Endpoint Name.
		@param LBR_EndpointName Endpoint Name	  */
	public void setLBR_EndpointName (String LBR_EndpointName)
	{

		set_Value (COLUMNNAME_LBR_EndpointName, LBR_EndpointName);
	}

	/** Get Endpoint Name.
		@return Endpoint Name	  */
	public String getLBR_EndpointName () 
	{
		return (String)get_Value(COLUMNNAME_LBR_EndpointName);
	}

	/** Set SeFaz URL.
		@param LBR_SeFazURL_ID SeFaz URL	  */
	public void setLBR_SeFazURL_ID (int LBR_SeFazURL_ID)
	{
		if (LBR_SeFazURL_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_SeFazURL_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_SeFazURL_ID, Integer.valueOf(LBR_SeFazURL_ID));
	}

	/** Get SeFaz URL.
		@return SeFaz URL	  */
	public int getLBR_SeFazURL_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_SeFazURL_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_SeFazURL_UU.
		@param LBR_SeFazURL_UU LBR_SeFazURL_UU	  */
	public void setLBR_SeFazURL_UU (String LBR_SeFazURL_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_SeFazURL_UU, LBR_SeFazURL_UU);
	}

	/** Get LBR_SeFazURL_UU.
		@return LBR_SeFazURL_UU	  */
	public String getLBR_SeFazURL_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_SeFazURL_UU);
	}

	public org.adempierelbr.model.I_LBR_SeFaz getLBR_SeFaz() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_SeFaz)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_SeFaz.Table_Name)
			.getPO(getLBR_SeFaz_ID(), get_TrxName());	}

	/** Set SeFaz.
		@param LBR_SeFaz_ID SeFaz	  */
	public void setLBR_SeFaz_ID (int LBR_SeFaz_ID)
	{
		if (LBR_SeFaz_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_SeFaz_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_SeFaz_ID, Integer.valueOf(LBR_SeFaz_ID));
	}

	/** Get SeFaz.
		@return SeFaz	  */
	public int getLBR_SeFaz_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_SeFaz_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** NF-e = 0 */
	public static final String LBR_URLSCOPE_NF_E = "0";
	/** CT-e = 1 */
	public static final String LBR_URLSCOPE_CT_E = "1";
	/** MDF-e = 2 */
	public static final String LBR_URLSCOPE_MDF_E = "2";
	/** Set URL Scope.
		@param LBR_URLScope URL Scope	  */
	public void setLBR_URLScope (String LBR_URLScope)
	{

		set_ValueNoCheck (COLUMNNAME_LBR_URLScope, LBR_URLScope);
	}

	/** Get URL Scope.
		@return URL Scope	  */
	public String getLBR_URLScope () 
	{
		return (String)get_Value(COLUMNNAME_LBR_URLScope);
	}

	/** Set URL.
		@param URL 
		Full URL address - e.g. http://www.idempiere.org
	  */
	public void setURL (String URL)
	{
		set_Value (COLUMNNAME_URL, URL);
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

	/** Set Version No.
		@param VersionNo 
		Version Number
	  */
	public void setVersionNo (String VersionNo)
	{
		set_ValueNoCheck (COLUMNNAME_VersionNo, VersionNo);
	}

	/** Get Version No.
		@return Version Number
	  */
	public String getVersionNo () 
	{
		return (String)get_Value(COLUMNNAME_VersionNo);
	}

	/** Production = 1 */
	public static final String LBR_NFEENV_Production = "1";
	/** Homologation = 2 */
	public static final String LBR_NFEENV_Homologation = "2";
	/** Set NFe Environment.
		@param lbr_NFeEnv NFe Environment	  */
	public void setlbr_NFeEnv (String lbr_NFeEnv)
	{

		set_Value (COLUMNNAME_lbr_NFeEnv, lbr_NFeEnv);
	}

	/** Get NFe Environment.
		@return NFe Environment	  */
	public String getlbr_NFeEnv () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFeEnv);
	}
}