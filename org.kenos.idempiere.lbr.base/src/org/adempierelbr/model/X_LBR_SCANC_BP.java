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

/** Generated Model for LBR_SCANC_BP
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_SCANC_BP extends PO implements I_LBR_SCANC_BP, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20201030L;

    /** Standard Constructor */
    public X_LBR_SCANC_BP (Properties ctx, int LBR_SCANC_BP_ID, String trxName)
    {
      super (ctx, LBR_SCANC_BP_ID, trxName);
      /** if (LBR_SCANC_BP_ID == 0)
        {
			setLBR_SCANC_BP_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_SCANC_BP (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_SCANC_BP[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Address.
		@param Address Address	  */
	public void setAddress (String Address)
	{
		set_ValueNoCheck (COLUMNNAME_Address, Address);
	}

	/** Get Address.
		@return Address	  */
	public String getAddress () 
	{
		return (String)get_Value(COLUMNNAME_Address);
	}

	/** Set Address 3.
		@param Address3 
		Address Line 3 for the location
	  */
	public void setAddress3 (String Address3)
	{
		set_ValueNoCheck (COLUMNNAME_Address3, Address3);
	}

	/** Get Address 3.
		@return Address Line 3 for the location
	  */
	public String getAddress3 () 
	{
		return (String)get_Value(COLUMNNAME_Address3);
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
			set_ValueNoCheck (COLUMNNAME_C_BPartner_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_BPartner_ID, Integer.valueOf(C_BPartner_ID));
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

	/** Armazenador = ARM */
	public static final String CATEGORYTYPE_Armazenador = "ARM";
	/** Consumidor Final = CNF */
	public static final String CATEGORYTYPE_ConsumidorFinal = "CNF";
	/** Central Petroquímica = CPQ */
	public static final String CATEGORYTYPE_CentralPetroquímica = "CPQ";
	/** Distribuidor = DIS */
	public static final String CATEGORYTYPE_Distribuidor = "DIS";
	/** Formulador = FOR */
	public static final String CATEGORYTYPE_Formulador = "FOR";
	/** Importador = IMP */
	public static final String CATEGORYTYPE_Importador = "IMP";
	/** Posto Varejista = PRV */
	public static final String CATEGORYTYPE_PostoVarejista = "PRV";
	/** Refinaria = REF */
	public static final String CATEGORYTYPE_Refinaria = "REF";
	/** Transportador e Revendedor Retalhista = TRR */
	public static final String CATEGORYTYPE_TransportadorERevendedorRetalhista = "TRR";
	/** Usina = USI */
	public static final String CATEGORYTYPE_Usina = "USI";
	/** Varejista de GLP = VGL */
	public static final String CATEGORYTYPE_VarejistaDeGLP = "VGL";
	/** Set Category Type.
		@param CategoryType 
		Source of the Journal with this category
	  */
	public void setCategoryType (String CategoryType)
	{

		set_Value (COLUMNNAME_CategoryType, CategoryType);
	}

	/** Get Category Type.
		@return Source of the Journal with this category
	  */
	public String getCategoryType () 
	{
		return (String)get_Value(COLUMNNAME_CategoryType);
	}

	/** Set City.
		@param City 
		Identifies a City
	  */
	public void setCity (String City)
	{
		set_ValueNoCheck (COLUMNNAME_City, City);
	}

	/** Get City.
		@return Identifies a City
	  */
	public String getCity () 
	{
		return (String)get_Value(COLUMNNAME_City);
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

	/** Set EMail Address.
		@param EMail 
		Electronic Mail Address
	  */
	public void setEMail (String EMail)
	{
		set_Value (COLUMNNAME_EMail, EMail);
	}

	/** Get EMail Address.
		@return Electronic Mail Address
	  */
	public String getEMail () 
	{
		return (String)get_Value(COLUMNNAME_EMail);
	}

	/** Set CNPJ/CPF.
		@param LBR_CNPJF 
		CNPJ ou CPF do cliente
	  */
	public void setLBR_CNPJF (String LBR_CNPJF)
	{
		set_Value (COLUMNNAME_LBR_CNPJF, LBR_CNPJF);
	}

	/** Get CNPJ/CPF.
		@return CNPJ ou CPF do cliente
	  */
	public String getLBR_CNPJF () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNPJF);
	}

	/** Set SCANC BP.
		@param LBR_SCANC_BP_ID SCANC BP	  */
	public void setLBR_SCANC_BP_ID (int LBR_SCANC_BP_ID)
	{
		if (LBR_SCANC_BP_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_SCANC_BP_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_SCANC_BP_ID, Integer.valueOf(LBR_SCANC_BP_ID));
	}

	/** Get SCANC BP.
		@return SCANC BP	  */
	public int getLBR_SCANC_BP_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_SCANC_BP_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_SCANC_BP_UU.
		@param LBR_SCANC_BP_UU LBR_SCANC_BP_UU	  */
	public void setLBR_SCANC_BP_UU (String LBR_SCANC_BP_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_SCANC_BP_UU, LBR_SCANC_BP_UU);
	}

	/** Get LBR_SCANC_BP_UU.
		@return LBR_SCANC_BP_UU	  */
	public String getLBR_SCANC_BP_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_SCANC_BP_UU);
	}

	public org.adempierelbr.model.I_LBR_SCANC getLBR_SCANC() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_SCANC)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_SCANC.Table_Name)
			.getPO(getLBR_SCANC_ID(), get_TrxName());	}

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

	/** Set ZIP.
		@param Postal 
		Postal code
	  */
	public void setPostal (String Postal)
	{
		set_Value (COLUMNNAME_Postal, Postal);
	}

	/** Get ZIP.
		@return Postal code
	  */
	public String getPostal () 
	{
		return (String)get_Value(COLUMNNAME_Postal);
	}

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