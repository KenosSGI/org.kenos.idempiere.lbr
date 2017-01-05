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

/** Generated Model for LBR_FactFiscal
 *  @author iDempiere (generated) 
 *  @version Release 4.1 - $Id$ */
public class X_LBR_FactFiscal extends PO implements I_LBR_FactFiscal, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20170105L;

    /** Standard Constructor */
    public X_LBR_FactFiscal (Properties ctx, int LBR_FactFiscal_ID, String trxName)
    {
      super (ctx, LBR_FactFiscal_ID, trxName);
      /** if (LBR_FactFiscal_ID == 0)
        {
        } */
    }

    /** Load Constructor */
    public X_LBR_FactFiscal (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_FactFiscal[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set BP Name.
		@param BPName BP Name	  */
	public void setBPName (String BPName)
	{
		set_ValueNoCheck (COLUMNNAME_BPName, BPName);
	}

	/** Get BP Name.
		@return BP Name	  */
	public String getBPName () 
	{
		return (String)get_Value(COLUMNNAME_BPName);
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

	public org.compiere.model.I_C_BPartner_Location getC_BPartner_Location() throws RuntimeException
    {
		return (org.compiere.model.I_C_BPartner_Location)MTable.get(getCtx(), org.compiere.model.I_C_BPartner_Location.Table_Name)
			.getPO(getC_BPartner_Location_ID(), get_TrxName());	}

	/** Set Partner Location.
		@param C_BPartner_Location_ID 
		Identifies the (ship to) address for this Business Partner
	  */
	public void setC_BPartner_Location_ID (int C_BPartner_Location_ID)
	{
		if (C_BPartner_Location_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_C_BPartner_Location_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_BPartner_Location_ID, Integer.valueOf(C_BPartner_Location_ID));
	}

	/** Get Partner Location.
		@return Identifies the (ship to) address for this Business Partner
	  */
	public int getC_BPartner_Location_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BPartner_Location_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_Invoice getC_Invoice() throws RuntimeException
    {
		return (org.compiere.model.I_C_Invoice)MTable.get(getCtx(), org.compiere.model.I_C_Invoice.Table_Name)
			.getPO(getC_Invoice_ID(), get_TrxName());	}

	/** Set Invoice.
		@param C_Invoice_ID 
		Invoice Identifier
	  */
	public void setC_Invoice_ID (int C_Invoice_ID)
	{
		if (C_Invoice_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_C_Invoice_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_Invoice_ID, Integer.valueOf(C_Invoice_ID));
	}

	/** Get Invoice.
		@return Invoice Identifier
	  */
	public int getC_Invoice_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Invoice_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_Order getC_Order() throws RuntimeException
    {
		return (org.compiere.model.I_C_Order)MTable.get(getCtx(), org.compiere.model.I_C_Order.Table_Name)
			.getPO(getC_Order_ID(), get_TrxName());	}

	/** Set Order.
		@param C_Order_ID 
		Order
	  */
	public void setC_Order_ID (int C_Order_ID)
	{
		if (C_Order_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_C_Order_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_Order_ID, Integer.valueOf(C_Order_ID));
	}

	/** Get Order.
		@return Order
	  */
	public int getC_Order_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Order_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_UOM getC_UOM() throws RuntimeException
    {
		return (org.compiere.model.I_C_UOM)MTable.get(getCtx(), org.compiere.model.I_C_UOM.Table_Name)
			.getPO(getC_UOM_ID(), get_TrxName());	}

	/** Set UOM.
		@param C_UOM_ID 
		Unit of Measure
	  */
	public void setC_UOM_ID (int C_UOM_ID)
	{
		if (C_UOM_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_C_UOM_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_UOM_ID, Integer.valueOf(C_UOM_ID));
	}

	/** Get UOM.
		@return Unit of Measure
	  */
	public int getC_UOM_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_UOM_ID);
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
		set_ValueNoCheck (COLUMNNAME_DateDoc, DateDoc);
	}

	/** Get Document Date.
		@return Date of the Document
	  */
	public Timestamp getDateDoc () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateDoc);
	}

	/** Set Discount Amount.
		@param DiscountAmt 
		Calculated amount of discount
	  */
	public void setDiscountAmt (BigDecimal DiscountAmt)
	{
		set_ValueNoCheck (COLUMNNAME_DiscountAmt, DiscountAmt);
	}

	/** Get Discount Amount.
		@return Calculated amount of discount
	  */
	public BigDecimal getDiscountAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_DiscountAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Document No.
		@param DocumentNo 
		Document sequence number of the document
	  */
	public void setDocumentNo (String DocumentNo)
	{
		set_ValueNoCheck (COLUMNNAME_DocumentNo, DocumentNo);
	}

	/** Get Document No.
		@return Document sequence number of the document
	  */
	public String getDocumentNo () 
	{
		return (String)get_Value(COLUMNNAME_DocumentNo);
	}

	/** Set EMail Address.
		@param EMail 
		Electronic Mail Address
	  */
	public void setEMail (String EMail)
	{
		set_ValueNoCheck (COLUMNNAME_EMail, EMail);
	}

	/** Get EMail Address.
		@return Electronic Mail Address
	  */
	public String getEMail () 
	{
		return (String)get_Value(COLUMNNAME_EMail);
	}

	/** Set Freight Amount.
		@param FreightAmt 
		Freight Amount 
	  */
	public void setFreightAmt (BigDecimal FreightAmt)
	{
		set_ValueNoCheck (COLUMNNAME_FreightAmt, FreightAmt);
	}

	/** Get Freight Amount.
		@return Freight Amount 
	  */
	public BigDecimal getFreightAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_FreightAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Freight Cost Rule.
		@param FreightCostRule 
		Method for charging Freight
	  */
	public void setFreightCostRule (String FreightCostRule)
	{
		set_ValueNoCheck (COLUMNNAME_FreightCostRule, FreightCostRule);
	}

	/** Get Freight Cost Rule.
		@return Method for charging Freight
	  */
	public String getFreightCostRule () 
	{
		return (String)get_Value(COLUMNNAME_FreightCostRule);
	}

	/** Set Grand Total.
		@param GrandTotal 
		Total amount of document
	  */
	public void setGrandTotal (BigDecimal GrandTotal)
	{
		set_ValueNoCheck (COLUMNNAME_GrandTotal, GrandTotal);
	}

	/** Get Grand Total.
		@return Total amount of document
	  */
	public BigDecimal getGrandTotal () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_GrandTotal);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Cancelled.
		@param IsCancelled 
		The transaction was cancelled
	  */
	public void setIsCancelled (String IsCancelled)
	{
		set_ValueNoCheck (COLUMNNAME_IsCancelled, IsCancelled);
	}

	/** Get Cancelled.
		@return The transaction was cancelled
	  */
	public String getIsCancelled () 
	{
		return (String)get_Value(COLUMNNAME_IsCancelled);
	}

	/** Set Sales Transaction.
		@param IsSOTrx 
		This is a Sales Transaction
	  */
	public void setIsSOTrx (String IsSOTrx)
	{
		set_ValueNoCheck (COLUMNNAME_IsSOTrx, IsSOTrx);
	}

	/** Get Sales Transaction.
		@return This is a Sales Transaction
	  */
	public String getIsSOTrx () 
	{
		return (String)get_Value(COLUMNNAME_IsSOTrx);
	}

	/** Set BP Address 1.
		@param LBR_BPAddress1 
		BP Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPAddress1 (String LBR_BPAddress1)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_BPAddress1, LBR_BPAddress1);
	}

	/** Get BP Address 1.
		@return BP Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPAddress1 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BPAddress1);
	}

	/** Set BP Address 2.
		@param LBR_BPAddress2 
		BP Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPAddress2 (String LBR_BPAddress2)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_BPAddress2, LBR_BPAddress2);
	}

	/** Get BP Address 2.
		@return BP Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPAddress2 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BPAddress2);
	}

	/** Set BP Address 3.
		@param LBR_BPAddress3 
		BP Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPAddress3 (String LBR_BPAddress3)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_BPAddress3, LBR_BPAddress3);
	}

	/** Get BP Address 3.
		@return BP Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPAddress3 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BPAddress3);
	}

	/** Set BP Address 4.
		@param LBR_BPAddress4 
		BP Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPAddress4 (String LBR_BPAddress4)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_BPAddress4, LBR_BPAddress4);
	}

	/** Get BP Address 4.
		@return BP Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPAddress4 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BPAddress4);
	}

	/** Set BP CNPJ.
		@param LBR_BPCNPJ 
		BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPCNPJ (String LBR_BPCNPJ)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_BPCNPJ, LBR_BPCNPJ);
	}

	/** Get BP CNPJ.
		@return BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPCNPJ () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BPCNPJ);
	}

	/** Set BP City.
		@param LBR_BPCity 
		BP City - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPCity (String LBR_BPCity)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_BPCity, LBR_BPCity);
	}

	/** Get BP City.
		@return BP City - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPCity () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BPCity);
	}

	/** Set BP IE.
		@param LBR_BPIE 
		BP IE - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPIE (String LBR_BPIE)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_BPIE, LBR_BPIE);
	}

	/** Get BP IE.
		@return BP IE - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPIE () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BPIE);
	}

	/** Set BP Phone.
		@param LBR_BPPhone 
		BP Phone - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPPhone (String LBR_BPPhone)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_BPPhone, LBR_BPPhone);
	}

	/** Get BP Phone.
		@return BP Phone - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPPhone () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BPPhone);
	}

	/** Set BP Postal.
		@param LBR_BPPostal 
		BP Postal - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPPostal (String LBR_BPPostal)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_BPPostal, LBR_BPPostal);
	}

	/** Get BP Postal.
		@return BP Postal - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPPostal () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BPPostal);
	}

	/** Set BP Region.
		@param LBR_BPRegion 
		BP Region - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setLBR_BPRegion (String LBR_BPRegion)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_BPRegion, LBR_BPRegion);
	}

	/** Get BP Region.
		@return BP Region - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getLBR_BPRegion () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BPRegion);
	}

	/** Set BP Suframa.
		@param LBR_BPSuframa 
		Defines the BP Suframa
	  */
	public void setLBR_BPSuframa (String LBR_BPSuframa)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_BPSuframa, LBR_BPSuframa);
	}

	/** Get BP Suframa.
		@return Defines the BP Suframa
	  */
	public String getLBR_BPSuframa () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BPSuframa);
	}

	public org.compiere.model.I_C_BPartner getLBR_BP_Accountant() throws RuntimeException
    {
		return (org.compiere.model.I_C_BPartner)MTable.get(getCtx(), org.compiere.model.I_C_BPartner.Table_Name)
			.getPO(getLBR_BP_Accountant_ID(), get_TrxName());	}

	/** Set Accountant.
		@param LBR_BP_Accountant_ID Accountant	  */
	public void setLBR_BP_Accountant_ID (int LBR_BP_Accountant_ID)
	{
		if (LBR_BP_Accountant_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_BP_Accountant_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_BP_Accountant_ID, Integer.valueOf(LBR_BP_Accountant_ID));
	}

	/** Get Accountant.
		@return Accountant	  */
	public int getLBR_BP_Accountant_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BP_Accountant_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set CFOP Name.
		@param LBR_CFOPName 
		Defines the CFOP Name
	  */
	public void setLBR_CFOPName (String LBR_CFOPName)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_CFOPName, LBR_CFOPName);
	}

	/** Get CFOP Name.
		@return Defines the CFOP Name
	  */
	public String getLBR_CFOPName () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CFOPName);
	}

	public org.adempierelbr.model.I_LBR_CFOP getLBR_CFOP() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_CFOP)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_CFOP.Table_Name)
			.getPO(getLBR_CFOP_ID(), get_TrxName());	}

	/** Set CFOP.
		@param LBR_CFOP_ID 
		Primary key table LBR_CFOP
	  */
	public void setLBR_CFOP_ID (int LBR_CFOP_ID)
	{
		if (LBR_CFOP_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_CFOP_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_CFOP_ID, Integer.valueOf(LBR_CFOP_ID));
	}

	/** Get CFOP.
		@return Primary key table LBR_CFOP
	  */
	public int getLBR_CFOP_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CFOP_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set CNAE.
		@param LBR_CNAE 
		Classificação Nacional de Atividades Econômicas
	  */
	public void setLBR_CNAE (String LBR_CNAE)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_CNAE, LBR_CNAE);
	}

	/** Get CNAE.
		@return Classificação Nacional de Atividades Econômicas
	  */
	public String getLBR_CNAE () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNAE);
	}

	/** Set CNPJ.
		@param LBR_CNPJ 
		Used to identify Legal Entities in Brazil
	  */
	public void setLBR_CNPJ (String LBR_CNPJ)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_CNPJ, LBR_CNPJ);
	}

	/** Get CNPJ.
		@return Used to identify Legal Entities in Brazil
	  */
	public String getLBR_CNPJ () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNPJ);
	}

	/** Set Date InOut.
		@param LBR_DateInOut 
		Defines the InOut Date
	  */
	public void setLBR_DateInOut (Timestamp LBR_DateInOut)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_DateInOut, LBR_DateInOut);
	}

	/** Get Date InOut.
		@return Defines the InOut Date
	  */
	public Timestamp getLBR_DateInOut () 
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_DateInOut);
	}

	/** Set Fact Nota Fiscal.
		@param LBR_FactFiscal_ID Fact Nota Fiscal	  */
	public void setLBR_FactFiscal_ID (int LBR_FactFiscal_ID)
	{
		if (LBR_FactFiscal_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_FactFiscal_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_FactFiscal_ID, Integer.valueOf(LBR_FactFiscal_ID));
	}

	/** Get Fact Nota Fiscal.
		@return Fact Nota Fiscal	  */
	public int getLBR_FactFiscal_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_FactFiscal_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Fantasia.
		@param LBR_Fantasia Fantasia	  */
	public void setLBR_Fantasia (String LBR_Fantasia)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_Fantasia, LBR_Fantasia);
	}

	/** Get Fantasia.
		@return Fantasia	  */
	public String getLBR_Fantasia () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Fantasia);
	}

	/** Set IE.
		@param LBR_IE 
		Used to Identify the IE (State Tax ID)
	  */
	public void setLBR_IE (String LBR_IE)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_IE, LBR_IE);
	}

	/** Get IE.
		@return Used to Identify the IE (State Tax ID)
	  */
	public String getLBR_IE () 
	{
		return (String)get_Value(COLUMNNAME_LBR_IE);
	}

	/** Set Tipo de atividade.
		@param LBR_IndAtividade 
		Tipo de atividade
	  */
	public void setLBR_IndAtividade (String LBR_IndAtividade)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_IndAtividade, LBR_IndAtividade);
	}

	/** Get Tipo de atividade.
		@return Tipo de atividade
	  */
	public String getLBR_IndAtividade () 
	{
		return (String)get_Value(COLUMNNAME_LBR_IndAtividade);
	}

	/** Set Insurance Amt.
		@param LBR_InsuranceAmt 
		Defines the Insurance Amt
	  */
	public void setLBR_InsuranceAmt (BigDecimal LBR_InsuranceAmt)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_InsuranceAmt, LBR_InsuranceAmt);
	}

	/** Get Insurance Amt.
		@return Defines the Insurance Amt
	  */
	public BigDecimal getLBR_InsuranceAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_InsuranceAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Is Own Document.
		@param LBR_IsOwnDocument 
		Identifies this is an own document
	  */
	public void setLBR_IsOwnDocument (String LBR_IsOwnDocument)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_IsOwnDocument, LBR_IsOwnDocument);
	}

	/** Get Is Own Document.
		@return Identifies this is an own document
	  */
	public String getLBR_IsOwnDocument () 
	{
		return (String)get_Value(COLUMNNAME_LBR_IsOwnDocument);
	}

	/** Set Is Service.
		@param LBR_IsService 
		Defines if the lines is a Service
	  */
	public void setLBR_IsService (String LBR_IsService)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_IsService, LBR_IsService);
	}

	/** Get Is Service.
		@return Defines if the lines is a Service
	  */
	public String getLBR_IsService () 
	{
		return (String)get_Value(COLUMNNAME_LBR_IsService);
	}

	/** Set Item Type (SPED).
		@param LBR_ItemTypeBR Item Type (SPED)	  */
	public void setLBR_ItemTypeBR (String LBR_ItemTypeBR)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_ItemTypeBR, LBR_ItemTypeBR);
	}

	/** Get Item Type (SPED).
		@return Item Type (SPED)	  */
	public String getLBR_ItemTypeBR () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ItemTypeBR);
	}

	/** Set NCM Name.
		@param LBR_NCMName 
		Defines the NCM Name
	  */
	public void setLBR_NCMName (String LBR_NCMName)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_NCMName, LBR_NCMName);
	}

	/** Get NCM Name.
		@return Defines the NCM Name
	  */
	public String getLBR_NCMName () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NCMName);
	}

	public org.adempierelbr.model.I_LBR_NCM getLBR_NCM() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_NCM)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_NCM.Table_Name)
			.getPO(getLBR_NCM_ID(), get_TrxName());	}

	/** Set NCM.
		@param LBR_NCM_ID 
		Primary key table LBR_NCM
	  */
	public void setLBR_NCM_ID (int LBR_NCM_ID)
	{
		if (LBR_NCM_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NCM_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NCM_ID, Integer.valueOf(LBR_NCM_ID));
	}

	/** Get NCM.
		@return Primary key table LBR_NCM
	  */
	public int getLBR_NCM_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NCM_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_NFDI getLBR_NFDI() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_NFDI)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_NFDI.Table_Name)
			.getPO(getLBR_NFDI_ID(), get_TrxName());	}

	/** Set DI.
		@param LBR_NFDI_ID DI	  */
	public void setLBR_NFDI_ID (int LBR_NFDI_ID)
	{
		if (LBR_NFDI_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NFDI_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NFDI_ID, Integer.valueOf(LBR_NFDI_ID));
	}

	/** Get DI.
		@return DI	  */
	public int getLBR_NFDI_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NFDI_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set NF Model.
		@param LBR_NFModel 
		Identifies the model of Nota Fiscal
	  */
	public void setLBR_NFModel (String LBR_NFModel)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_NFModel, LBR_NFModel);
	}

	/** Get NF Model.
		@return Identifies the model of Nota Fiscal
	  */
	public String getLBR_NFModel () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFModel);
	}

	/** Set NF Serie.
		@param LBR_NFSerie NF Serie	  */
	public void setLBR_NFSerie (String LBR_NFSerie)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_NFSerie, LBR_NFSerie);
	}

	/** Get NF Serie.
		@return NF Serie	  */
	public String getLBR_NFSerie () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFSerie);
	}

	/** Set NFe ID.
		@param LBR_NFeID 
		Identification of NFe
	  */
	public void setLBR_NFeID (String LBR_NFeID)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_NFeID, LBR_NFeID);
	}

	/** Get NFe ID.
		@return Identification of NFe
	  */
	public String getLBR_NFeID () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeID);
	}

	/** Set NFe Protocol.
		@param LBR_NFeProt NFe Protocol	  */
	public void setLBR_NFeProt (String LBR_NFeProt)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_NFeProt, LBR_NFeProt);
	}

	/** Get NFe Protocol.
		@return NFe Protocol	  */
	public String getLBR_NFeProt () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeProt);
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

	/** Set Organization Address 1.
		@param LBR_OrgAddress1 
		The issuer organization address 1
	  */
	public void setLBR_OrgAddress1 (String LBR_OrgAddress1)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_OrgAddress1, LBR_OrgAddress1);
	}

	/** Get Organization Address 1.
		@return The issuer organization address 1
	  */
	public String getLBR_OrgAddress1 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_OrgAddress1);
	}

	/** Set Organization Address 2.
		@param LBR_OrgAddress2 
		The issuer organization address 2
	  */
	public void setLBR_OrgAddress2 (String LBR_OrgAddress2)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_OrgAddress2, LBR_OrgAddress2);
	}

	/** Get Organization Address 2.
		@return The issuer organization address 2
	  */
	public String getLBR_OrgAddress2 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_OrgAddress2);
	}

	/** Set Organization Address 3.
		@param LBR_OrgAddress3 
		The issuer organization address 3
	  */
	public void setLBR_OrgAddress3 (String LBR_OrgAddress3)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_OrgAddress3, LBR_OrgAddress3);
	}

	/** Get Organization Address 3.
		@return The issuer organization address 3
	  */
	public String getLBR_OrgAddress3 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_OrgAddress3);
	}

	/** Set Organization Address 4.
		@param LBR_OrgAddress4 
		The issuer organization address 4
	  */
	public void setLBR_OrgAddress4 (String LBR_OrgAddress4)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_OrgAddress4, LBR_OrgAddress4);
	}

	/** Get Organization Address 4.
		@return The issuer organization address 4
	  */
	public String getLBR_OrgAddress4 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_OrgAddress4);
	}

	/** Set Organization CCM.
		@param LBR_OrgCCM 
		The Organization CCM
	  */
	public void setLBR_OrgCCM (String LBR_OrgCCM)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_OrgCCM, LBR_OrgCCM);
	}

	/** Get Organization CCM.
		@return The Organization CCM
	  */
	public String getLBR_OrgCCM () 
	{
		return (String)get_Value(COLUMNNAME_LBR_OrgCCM);
	}

	/** Set Organization City.
		@param LBR_OrgCity 
		The City of the Organization
	  */
	public void setLBR_OrgCity (String LBR_OrgCity)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_OrgCity, LBR_OrgCity);
	}

	/** Get Organization City.
		@return The City of the Organization
	  */
	public String getLBR_OrgCity () 
	{
		return (String)get_Value(COLUMNNAME_LBR_OrgCity);
	}

	/** Set Organization Name.
		@param LBR_OrgName 
		The Name of the Organization
	  */
	public void setLBR_OrgName (String LBR_OrgName)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_OrgName, LBR_OrgName);
	}

	/** Get Organization Name.
		@return The Name of the Organization
	  */
	public String getLBR_OrgName () 
	{
		return (String)get_Value(COLUMNNAME_LBR_OrgName);
	}

	/** Set Organization Phone.
		@param LBR_OrgPhone 
		The Organization Phone
	  */
	public void setLBR_OrgPhone (String LBR_OrgPhone)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_OrgPhone, LBR_OrgPhone);
	}

	/** Get Organization Phone.
		@return The Organization Phone
	  */
	public String getLBR_OrgPhone () 
	{
		return (String)get_Value(COLUMNNAME_LBR_OrgPhone);
	}

	/** Set Organization Postal Code.
		@param LBR_OrgPostal 
		The Postal Code of the Organization
	  */
	public void setLBR_OrgPostal (String LBR_OrgPostal)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_OrgPostal, LBR_OrgPostal);
	}

	/** Get Organization Postal Code.
		@return The Postal Code of the Organization
	  */
	public String getLBR_OrgPostal () 
	{
		return (String)get_Value(COLUMNNAME_LBR_OrgPostal);
	}

	/** Set Organization Region.
		@param LBR_OrgRegion 
		The Region of the Organization
	  */
	public void setLBR_OrgRegion (String LBR_OrgRegion)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_OrgRegion, LBR_OrgRegion);
	}

	/** Get Organization Region.
		@return The Region of the Organization
	  */
	public String getLBR_OrgRegion () 
	{
		return (String)get_Value(COLUMNNAME_LBR_OrgRegion);
	}

	/** Set Suframa.
		@param LBR_Suframa 
		Brazilian SUFRAMA Identification Number
	  */
	public void setLBR_Suframa (String LBR_Suframa)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_Suframa, LBR_Suframa);
	}

	/** Get Suframa.
		@return Brazilian SUFRAMA Identification Number
	  */
	public String getLBR_Suframa () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Suframa);
	}

	/** Set SISCOMEX Total.
		@param LBR_TotalSISCOMEX 
		SISCOMEX Total for all the document
	  */
	public void setLBR_TotalSISCOMEX (BigDecimal LBR_TotalSISCOMEX)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_TotalSISCOMEX, LBR_TotalSISCOMEX);
	}

	/** Get SISCOMEX Total.
		@return SISCOMEX Total for all the document
	  */
	public BigDecimal getLBR_TotalSISCOMEX () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TotalSISCOMEX);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set UOM Name.
		@param LBR_UOMName 
		Defines the UOM Name
	  */
	public void setLBR_UOMName (String LBR_UOMName)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_UOMName, LBR_UOMName);
	}

	/** Get UOM Name.
		@return Defines the UOM Name
	  */
	public String getLBR_UOMName () 
	{
		return (String)get_Value(COLUMNNAME_LBR_UOMName);
	}

	/** Set lbr_orgcitycode.
		@param LBR_orgcitycode lbr_orgcitycode	  */
	public void setLBR_orgcitycode (String LBR_orgcitycode)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_orgcitycode, LBR_orgcitycode);
	}

	/** Get lbr_orgcitycode.
		@return lbr_orgcitycode	  */
	public String getLBR_orgcitycode () 
	{
		return (String)get_Value(COLUMNNAME_LBR_orgcitycode);
	}

	/** Set lbr_uomdescription.
		@param LBR_uomdescription lbr_uomdescription	  */
	public void setLBR_uomdescription (String LBR_uomdescription)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_uomdescription, LBR_uomdescription);
	}

	/** Get lbr_uomdescription.
		@return lbr_uomdescription	  */
	public String getLBR_uomdescription () 
	{
		return (String)get_Value(COLUMNNAME_LBR_uomdescription);
	}

	/** Set Line No.
		@param Line 
		Unique line for this document
	  */
	public void setLine (BigDecimal Line)
	{
		set_ValueNoCheck (COLUMNNAME_Line, Line);
	}

	/** Get Line No.
		@return Unique line for this document
	  */
	public BigDecimal getLine () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Line);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Line Amount.
		@param LineNetAmt 
		Line Extended Amount (Quantity * Actual Price) without Freight and Charges
	  */
	public void setLineNetAmt (BigDecimal LineNetAmt)
	{
		set_ValueNoCheck (COLUMNNAME_LineNetAmt, LineNetAmt);
	}

	/** Get Line Amount.
		@return Line Extended Amount (Quantity * Actual Price) without Freight and Charges
	  */
	public BigDecimal getLineNetAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LineNetAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Line Total.
		@param LineTotalAmt 
		Total line amount incl. Tax
	  */
	public void setLineTotalAmt (BigDecimal LineTotalAmt)
	{
		set_ValueNoCheck (COLUMNNAME_LineTotalAmt, LineTotalAmt);
	}

	/** Get Line Total.
		@return Total line amount incl. Tax
	  */
	public BigDecimal getLineTotalAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LineTotalAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public org.compiere.model.I_M_Product getM_Product() throws RuntimeException
    {
		return (org.compiere.model.I_M_Product)MTable.get(getCtx(), org.compiere.model.I_M_Product.Table_Name)
			.getPO(getM_Product_ID(), get_TrxName());	}

	/** Set Product.
		@param M_Product_ID 
		Product, Service, Item
	  */
	public void setM_Product_ID (int M_Product_ID)
	{
		if (M_Product_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_M_Product_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_M_Product_ID, Integer.valueOf(M_Product_ID));
	}

	/** Get Product.
		@return Product, Service, Item
	  */
	public int getM_Product_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_Product_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_Location getOrg_Location() throws RuntimeException
    {
		return (org.compiere.model.I_C_Location)MTable.get(getCtx(), org.compiere.model.I_C_Location.Table_Name)
			.getPO(getOrg_Location_ID(), get_TrxName());	}

	/** Set Org Address.
		@param Org_Location_ID 
		Organization Location/Address
	  */
	public void setOrg_Location_ID (int Org_Location_ID)
	{
		if (Org_Location_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_Org_Location_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_Org_Location_ID, Integer.valueOf(Org_Location_ID));
	}

	/** Get Org Address.
		@return Organization Location/Address
	  */
	public int getOrg_Location_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Org_Location_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Price.
		@param Price 
		Price
	  */
	public void setPrice (BigDecimal Price)
	{
		set_ValueNoCheck (COLUMNNAME_Price, Price);
	}

	/** Get Price.
		@return Price
	  */
	public BigDecimal getPrice () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Price);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Product Name.
		@param ProductName 
		Name of the Product
	  */
	public void setProductName (String ProductName)
	{
		set_ValueNoCheck (COLUMNNAME_ProductName, ProductName);
	}

	/** Get Product Name.
		@return Name of the Product
	  */
	public String getProductName () 
	{
		return (String)get_Value(COLUMNNAME_ProductName);
	}

	/** Set Product Key.
		@param ProductValue 
		Key of the Product
	  */
	public void setProductValue (String ProductValue)
	{
		set_ValueNoCheck (COLUMNNAME_ProductValue, ProductValue);
	}

	/** Get Product Key.
		@return Key of the Product
	  */
	public String getProductValue () 
	{
		return (String)get_Value(COLUMNNAME_ProductValue);
	}

	/** Set Quantity.
		@param Qty 
		Quantity
	  */
	public void setQty (BigDecimal Qty)
	{
		set_ValueNoCheck (COLUMNNAME_Qty, Qty);
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

	/** Set Total Lines.
		@param TotalLines 
		Total of all document lines
	  */
	public void setTotalLines (BigDecimal TotalLines)
	{
		set_ValueNoCheck (COLUMNNAME_TotalLines, TotalLines);
	}

	/** Get Total Lines.
		@return Total of all document lines
	  */
	public BigDecimal getTotalLines () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_TotalLines);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set UPC/EAN.
		@param UPC 
		Bar Code (Universal Product Code or its superset European Article Number)
	  */
	public void setUPC (String UPC)
	{
		set_ValueNoCheck (COLUMNNAME_UPC, UPC);
	}

	/** Get UPC/EAN.
		@return Bar Code (Universal Product Code or its superset European Article Number)
	  */
	public String getUPC () 
	{
		return (String)get_Value(COLUMNNAME_UPC);
	}

	/** Set bpcitycode.
		@param bpcitycode bpcitycode	  */
	public void setbpcitycode (String bpcitycode)
	{
		set_ValueNoCheck (COLUMNNAME_bpcitycode, bpcitycode);
	}

	/** Get bpcitycode.
		@return bpcitycode	  */
	public String getbpcitycode () 
	{
		return (String)get_Value(COLUMNNAME_bpcitycode);
	}

	/** Set bpcountrycode.
		@param bpcountrycode bpcountrycode	  */
	public void setbpcountrycode (String bpcountrycode)
	{
		set_ValueNoCheck (COLUMNNAME_bpcountrycode, bpcountrycode);
	}

	/** Get bpcountrycode.
		@return bpcountrycode	  */
	public String getbpcountrycode () 
	{
		return (String)get_Value(COLUMNNAME_bpcountrycode);
	}

	/** Set cofins_nftaxamt.
		@param cofins_nftaxamt cofins_nftaxamt	  */
	public void setcofins_nftaxamt (BigDecimal cofins_nftaxamt)
	{
		set_ValueNoCheck (COLUMNNAME_cofins_nftaxamt, cofins_nftaxamt);
	}

	/** Get cofins_nftaxamt.
		@return cofins_nftaxamt	  */
	public BigDecimal getcofins_nftaxamt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_cofins_nftaxamt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set cofins_taxamt.
		@param cofins_taxamt cofins_taxamt	  */
	public void setcofins_taxamt (BigDecimal cofins_taxamt)
	{
		set_ValueNoCheck (COLUMNNAME_cofins_taxamt, cofins_taxamt);
	}

	/** Get cofins_taxamt.
		@return cofins_taxamt	  */
	public BigDecimal getcofins_taxamt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_cofins_taxamt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set cofins_taxbase.
		@param cofins_taxbase cofins_taxbase	  */
	public void setcofins_taxbase (BigDecimal cofins_taxbase)
	{
		set_ValueNoCheck (COLUMNNAME_cofins_taxbase, cofins_taxbase);
	}

	/** Get cofins_taxbase.
		@return cofins_taxbase	  */
	public BigDecimal getcofins_taxbase () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_cofins_taxbase);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set cofins_taxbaseamt.
		@param cofins_taxbaseamt cofins_taxbaseamt	  */
	public void setcofins_taxbaseamt (BigDecimal cofins_taxbaseamt)
	{
		set_ValueNoCheck (COLUMNNAME_cofins_taxbaseamt, cofins_taxbaseamt);
	}

	/** Get cofins_taxbaseamt.
		@return cofins_taxbaseamt	  */
	public BigDecimal getcofins_taxbaseamt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_cofins_taxbaseamt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set cofins_taxrate.
		@param cofins_taxrate cofins_taxrate	  */
	public void setcofins_taxrate (BigDecimal cofins_taxrate)
	{
		set_ValueNoCheck (COLUMNNAME_cofins_taxrate, cofins_taxrate);
	}

	/** Get cofins_taxrate.
		@return cofins_taxrate	  */
	public BigDecimal getcofins_taxrate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_cofins_taxrate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set cofins_taxstatus.
		@param cofins_taxstatus cofins_taxstatus	  */
	public void setcofins_taxstatus (String cofins_taxstatus)
	{
		set_ValueNoCheck (COLUMNNAME_cofins_taxstatus, cofins_taxstatus);
	}

	/** Get cofins_taxstatus.
		@return cofins_taxstatus	  */
	public String getcofins_taxstatus () 
	{
		return (String)get_Value(COLUMNNAME_cofins_taxstatus);
	}

	/** Set docbasetypebr.
		@param docbasetypebr docbasetypebr	  */
	public void setdocbasetypebr (String docbasetypebr)
	{
		set_ValueNoCheck (COLUMNNAME_docbasetypebr, docbasetypebr);
	}

	/** Get docbasetypebr.
		@return docbasetypebr	  */
	public String getdocbasetypebr () 
	{
		return (String)get_Value(COLUMNNAME_docbasetypebr);
	}

	/** Set icms_nftaxamt.
		@param icms_nftaxamt icms_nftaxamt	  */
	public void seticms_nftaxamt (BigDecimal icms_nftaxamt)
	{
		set_ValueNoCheck (COLUMNNAME_icms_nftaxamt, icms_nftaxamt);
	}

	/** Get icms_nftaxamt.
		@return icms_nftaxamt	  */
	public BigDecimal geticms_nftaxamt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_icms_nftaxamt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set icms_nftaxbaseamt.
		@param icms_nftaxbaseamt icms_nftaxbaseamt	  */
	public void seticms_nftaxbaseamt (BigDecimal icms_nftaxbaseamt)
	{
		set_ValueNoCheck (COLUMNNAME_icms_nftaxbaseamt, icms_nftaxbaseamt);
	}

	/** Get icms_nftaxbaseamt.
		@return icms_nftaxbaseamt	  */
	public BigDecimal geticms_nftaxbaseamt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_icms_nftaxbaseamt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set icms_taxamt.
		@param icms_taxamt icms_taxamt	  */
	public void seticms_taxamt (BigDecimal icms_taxamt)
	{
		set_ValueNoCheck (COLUMNNAME_icms_taxamt, icms_taxamt);
	}

	/** Get icms_taxamt.
		@return icms_taxamt	  */
	public BigDecimal geticms_taxamt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_icms_taxamt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set icms_taxbase.
		@param icms_taxbase icms_taxbase	  */
	public void seticms_taxbase (BigDecimal icms_taxbase)
	{
		set_ValueNoCheck (COLUMNNAME_icms_taxbase, icms_taxbase);
	}

	/** Get icms_taxbase.
		@return icms_taxbase	  */
	public BigDecimal geticms_taxbase () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_icms_taxbase);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set icms_taxbaseamt.
		@param icms_taxbaseamt icms_taxbaseamt	  */
	public void seticms_taxbaseamt (BigDecimal icms_taxbaseamt)
	{
		set_ValueNoCheck (COLUMNNAME_icms_taxbaseamt, icms_taxbaseamt);
	}

	/** Get icms_taxbaseamt.
		@return icms_taxbaseamt	  */
	public BigDecimal geticms_taxbaseamt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_icms_taxbaseamt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set icms_taxrate.
		@param icms_taxrate icms_taxrate	  */
	public void seticms_taxrate (BigDecimal icms_taxrate)
	{
		set_ValueNoCheck (COLUMNNAME_icms_taxrate, icms_taxrate);
	}

	/** Get icms_taxrate.
		@return icms_taxrate	  */
	public BigDecimal geticms_taxrate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_icms_taxrate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set icms_taxstatus.
		@param icms_taxstatus icms_taxstatus	  */
	public void seticms_taxstatus (String icms_taxstatus)
	{
		set_ValueNoCheck (COLUMNNAME_icms_taxstatus, icms_taxstatus);
	}

	/** Get icms_taxstatus.
		@return icms_taxstatus	  */
	public String geticms_taxstatus () 
	{
		return (String)get_Value(COLUMNNAME_icms_taxstatus);
	}

	/** Set icmsst_nftaxamt.
		@param icmsst_nftaxamt icmsst_nftaxamt	  */
	public void seticmsst_nftaxamt (BigDecimal icmsst_nftaxamt)
	{
		set_ValueNoCheck (COLUMNNAME_icmsst_nftaxamt, icmsst_nftaxamt);
	}

	/** Get icmsst_nftaxamt.
		@return icmsst_nftaxamt	  */
	public BigDecimal geticmsst_nftaxamt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_icmsst_nftaxamt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set icmsst_nftaxbaseamt.
		@param icmsst_nftaxbaseamt icmsst_nftaxbaseamt	  */
	public void seticmsst_nftaxbaseamt (BigDecimal icmsst_nftaxbaseamt)
	{
		set_ValueNoCheck (COLUMNNAME_icmsst_nftaxbaseamt, icmsst_nftaxbaseamt);
	}

	/** Get icmsst_nftaxbaseamt.
		@return icmsst_nftaxbaseamt	  */
	public BigDecimal geticmsst_nftaxbaseamt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_icmsst_nftaxbaseamt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set icmsst_taxamt.
		@param icmsst_taxamt icmsst_taxamt	  */
	public void seticmsst_taxamt (BigDecimal icmsst_taxamt)
	{
		set_ValueNoCheck (COLUMNNAME_icmsst_taxamt, icmsst_taxamt);
	}

	/** Get icmsst_taxamt.
		@return icmsst_taxamt	  */
	public BigDecimal geticmsst_taxamt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_icmsst_taxamt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set icmsst_taxbase.
		@param icmsst_taxbase icmsst_taxbase	  */
	public void seticmsst_taxbase (BigDecimal icmsst_taxbase)
	{
		set_ValueNoCheck (COLUMNNAME_icmsst_taxbase, icmsst_taxbase);
	}

	/** Get icmsst_taxbase.
		@return icmsst_taxbase	  */
	public BigDecimal geticmsst_taxbase () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_icmsst_taxbase);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set icmsst_taxbaseamt.
		@param icmsst_taxbaseamt icmsst_taxbaseamt	  */
	public void seticmsst_taxbaseamt (BigDecimal icmsst_taxbaseamt)
	{
		set_ValueNoCheck (COLUMNNAME_icmsst_taxbaseamt, icmsst_taxbaseamt);
	}

	/** Get icmsst_taxbaseamt.
		@return icmsst_taxbaseamt	  */
	public BigDecimal geticmsst_taxbaseamt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_icmsst_taxbaseamt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set icmsst_taxrate.
		@param icmsst_taxrate icmsst_taxrate	  */
	public void seticmsst_taxrate (BigDecimal icmsst_taxrate)
	{
		set_ValueNoCheck (COLUMNNAME_icmsst_taxrate, icmsst_taxrate);
	}

	/** Get icmsst_taxrate.
		@return icmsst_taxrate	  */
	public BigDecimal geticmsst_taxrate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_icmsst_taxrate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set icmsst_taxstatus.
		@param icmsst_taxstatus icmsst_taxstatus	  */
	public void seticmsst_taxstatus (String icmsst_taxstatus)
	{
		set_ValueNoCheck (COLUMNNAME_icmsst_taxstatus, icmsst_taxstatus);
	}

	/** Get icmsst_taxstatus.
		@return icmsst_taxstatus	  */
	public String geticmsst_taxstatus () 
	{
		return (String)get_Value(COLUMNNAME_icmsst_taxstatus);
	}

	/** Set ii_taxamt.
		@param ii_taxamt ii_taxamt	  */
	public void setii_taxamt (BigDecimal ii_taxamt)
	{
		set_ValueNoCheck (COLUMNNAME_ii_taxamt, ii_taxamt);
	}

	/** Get ii_taxamt.
		@return ii_taxamt	  */
	public BigDecimal getii_taxamt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ii_taxamt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set ii_taxbaseamt.
		@param ii_taxbaseamt ii_taxbaseamt	  */
	public void setii_taxbaseamt (BigDecimal ii_taxbaseamt)
	{
		set_ValueNoCheck (COLUMNNAME_ii_taxbaseamt, ii_taxbaseamt);
	}

	/** Get ii_taxbaseamt.
		@return ii_taxbaseamt	  */
	public BigDecimal getii_taxbaseamt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ii_taxbaseamt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set ii_taxrate.
		@param ii_taxrate ii_taxrate	  */
	public void setii_taxrate (BigDecimal ii_taxrate)
	{
		set_ValueNoCheck (COLUMNNAME_ii_taxrate, ii_taxrate);
	}

	/** Get ii_taxrate.
		@return ii_taxrate	  */
	public BigDecimal getii_taxrate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ii_taxrate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set ipi_nftaxamt.
		@param ipi_nftaxamt ipi_nftaxamt	  */
	public void setipi_nftaxamt (BigDecimal ipi_nftaxamt)
	{
		set_ValueNoCheck (COLUMNNAME_ipi_nftaxamt, ipi_nftaxamt);
	}

	/** Get ipi_nftaxamt.
		@return ipi_nftaxamt	  */
	public BigDecimal getipi_nftaxamt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ipi_nftaxamt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set ipi_taxamt.
		@param ipi_taxamt ipi_taxamt	  */
	public void setipi_taxamt (BigDecimal ipi_taxamt)
	{
		set_ValueNoCheck (COLUMNNAME_ipi_taxamt, ipi_taxamt);
	}

	/** Get ipi_taxamt.
		@return ipi_taxamt	  */
	public BigDecimal getipi_taxamt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ipi_taxamt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set ipi_taxbaseamt.
		@param ipi_taxbaseamt ipi_taxbaseamt	  */
	public void setipi_taxbaseamt (BigDecimal ipi_taxbaseamt)
	{
		set_ValueNoCheck (COLUMNNAME_ipi_taxbaseamt, ipi_taxbaseamt);
	}

	/** Get ipi_taxbaseamt.
		@return ipi_taxbaseamt	  */
	public BigDecimal getipi_taxbaseamt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ipi_taxbaseamt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set ipi_taxrate.
		@param ipi_taxrate ipi_taxrate	  */
	public void setipi_taxrate (BigDecimal ipi_taxrate)
	{
		set_ValueNoCheck (COLUMNNAME_ipi_taxrate, ipi_taxrate);
	}

	/** Get ipi_taxrate.
		@return ipi_taxrate	  */
	public BigDecimal getipi_taxrate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ipi_taxrate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set ipi_taxstatus.
		@param ipi_taxstatus ipi_taxstatus	  */
	public void setipi_taxstatus (String ipi_taxstatus)
	{
		set_ValueNoCheck (COLUMNNAME_ipi_taxstatus, ipi_taxstatus);
	}

	/** Get ipi_taxstatus.
		@return ipi_taxstatus	  */
	public String getipi_taxstatus () 
	{
		return (String)get_Value(COLUMNNAME_ipi_taxstatus);
	}

	/** Set pis_nftaxamt.
		@param pis_nftaxamt pis_nftaxamt	  */
	public void setpis_nftaxamt (BigDecimal pis_nftaxamt)
	{
		set_ValueNoCheck (COLUMNNAME_pis_nftaxamt, pis_nftaxamt);
	}

	/** Get pis_nftaxamt.
		@return pis_nftaxamt	  */
	public BigDecimal getpis_nftaxamt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_pis_nftaxamt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set pis_taxamt.
		@param pis_taxamt pis_taxamt	  */
	public void setpis_taxamt (BigDecimal pis_taxamt)
	{
		set_ValueNoCheck (COLUMNNAME_pis_taxamt, pis_taxamt);
	}

	/** Get pis_taxamt.
		@return pis_taxamt	  */
	public BigDecimal getpis_taxamt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_pis_taxamt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set pis_taxbase.
		@param pis_taxbase pis_taxbase	  */
	public void setpis_taxbase (BigDecimal pis_taxbase)
	{
		set_ValueNoCheck (COLUMNNAME_pis_taxbase, pis_taxbase);
	}

	/** Get pis_taxbase.
		@return pis_taxbase	  */
	public BigDecimal getpis_taxbase () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_pis_taxbase);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set pis_taxbaseamt.
		@param pis_taxbaseamt pis_taxbaseamt	  */
	public void setpis_taxbaseamt (BigDecimal pis_taxbaseamt)
	{
		set_ValueNoCheck (COLUMNNAME_pis_taxbaseamt, pis_taxbaseamt);
	}

	/** Get pis_taxbaseamt.
		@return pis_taxbaseamt	  */
	public BigDecimal getpis_taxbaseamt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_pis_taxbaseamt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set pis_taxrate.
		@param pis_taxrate pis_taxrate	  */
	public void setpis_taxrate (BigDecimal pis_taxrate)
	{
		set_ValueNoCheck (COLUMNNAME_pis_taxrate, pis_taxrate);
	}

	/** Get pis_taxrate.
		@return pis_taxrate	  */
	public BigDecimal getpis_taxrate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_pis_taxrate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set pis_taxstatus.
		@param pis_taxstatus pis_taxstatus	  */
	public void setpis_taxstatus (String pis_taxstatus)
	{
		set_ValueNoCheck (COLUMNNAME_pis_taxstatus, pis_taxstatus);
	}

	/** Get pis_taxstatus.
		@return pis_taxstatus	  */
	public String getpis_taxstatus () 
	{
		return (String)get_Value(COLUMNNAME_pis_taxstatus);
	}

	/** Set productncm.
		@param productncm productncm	  */
	public void setproductncm (String productncm)
	{
		set_ValueNoCheck (COLUMNNAME_productncm, productncm);
	}

	/** Get productncm.
		@return productncm	  */
	public String getproductncm () 
	{
		return (String)get_Value(COLUMNNAME_productncm);
	}

	/** Set productuom.
		@param productuom productuom	  */
	public void setproductuom (String productuom)
	{
		set_ValueNoCheck (COLUMNNAME_productuom, productuom);
	}

	/** Get productuom.
		@return productuom	  */
	public String getproductuom () 
	{
		return (String)get_Value(COLUMNNAME_productuom);
	}
}