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

/** Generated Model for LBR_CTe
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_CTe extends PO implements I_LBR_CTe, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20240716L;

    /** Standard Constructor */
    public X_LBR_CTe (Properties ctx, int LBR_CTe_ID, String trxName)
    {
      super (ctx, LBR_CTe_ID, trxName);
      /** if (LBR_CTe_ID == 0)
        {
			setDateDoc (new Timestamp( System.currentTimeMillis() ));
// @#Date@
			setI_IsImported (false);
			setLBR_CFOP_ID (0);
			setLBR_CTeConsignor (null);
			setLBR_CTe_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_CTe (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_CTe[")
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

	/** Set Imported.
		@param I_IsImported 
		Has this import been processed
	  */
	public void setI_IsImported (boolean I_IsImported)
	{
		set_Value (COLUMNNAME_I_IsImported, Boolean.valueOf(I_IsImported));
	}

	/** Get Imported.
		@return Has this import been processed
	  */
	public boolean isI_IsImported () 
	{
		Object oo = get_Value(COLUMNNAME_I_IsImported);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
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
			set_Value (COLUMNNAME_LBR_CFOP_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_CFOP_ID, Integer.valueOf(LBR_CFOP_ID));
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

	/** Set Consignee.
		@param LBR_CTeConsignee Consignee	  */
	public void setLBR_CTeConsignee (String LBR_CTeConsignee)
	{
		set_Value (COLUMNNAME_LBR_CTeConsignee, LBR_CTeConsignee);
	}

	/** Get Consignee.
		@return Consignee	  */
	public String getLBR_CTeConsignee () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CTeConsignee);
	}

	/** Issuer = I */
	public static final String LBR_CTECONSIGNOR_Issuer = "I";
	/** Sender = 0 */
	public static final String LBR_CTECONSIGNOR_Sender = "0";
	/** Shipper = 1 */
	public static final String LBR_CTECONSIGNOR_Shipper = "1";
	/** Receiver = 2 */
	public static final String LBR_CTECONSIGNOR_Receiver = "2";
	/** Consignee = 3 */
	public static final String LBR_CTECONSIGNOR_Consignee = "3";
	/** Consignor = 4 */
	public static final String LBR_CTECONSIGNOR_Consignor = "4";
	/** Set Consignor.
		@param LBR_CTeConsignor Consignor	  */
	public void setLBR_CTeConsignor (String LBR_CTeConsignor)
	{

		set_Value (COLUMNNAME_LBR_CTeConsignor, LBR_CTeConsignor);
	}

	/** Get Consignor.
		@return Consignor	  */
	public String getLBR_CTeConsignor () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CTeConsignor);
	}

	/** Standard = 0 */
	public static final String LBR_CTESERVICETYPE_Standard = "0";
	/** Subcontracting = 1 */
	public static final String LBR_CTESERVICETYPE_Subcontracting = "1";
	/** Forwarding = 2 */
	public static final String LBR_CTESERVICETYPE_Forwarding = "2";
	/** Intermediate Forwarding = 3 */
	public static final String LBR_CTESERVICETYPE_IntermediateForwarding = "3";
	/** Service Linked to Multimodal = 4 */
	public static final String LBR_CTESERVICETYPE_ServiceLinkedToMultimodal = "4";
	/** Set Service Type.
		@param LBR_CTeServiceType Service Type	  */
	public void setLBR_CTeServiceType (String LBR_CTeServiceType)
	{

		set_Value (COLUMNNAME_LBR_CTeServiceType, LBR_CTeServiceType);
	}

	/** Get Service Type.
		@return Service Type	  */
	public String getLBR_CTeServiceType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CTeServiceType);
	}

	/** Set CTe Status.
		@param LBR_CTeStatus CTe Status	  */
	public void setLBR_CTeStatus (String LBR_CTeStatus)
	{
		set_Value (COLUMNNAME_LBR_CTeStatus, LBR_CTeStatus);
	}

	/** Get CTe Status.
		@return CTe Status	  */
	public String getLBR_CTeStatus () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CTeStatus);
	}

	/** Standard CTe = 0 */
	public static final String LBR_CTETYPE_StandardCTe = "0";
	/** Value Supplement CTe = 1 */
	public static final String LBR_CTETYPE_ValueSupplementCTe = "1";
	/** Replacement CTe = 3 */
	public static final String LBR_CTETYPE_ReplacementCTe = "3";
	/** Set CT-e Type.
		@param LBR_CTeType CT-e Type	  */
	public void setLBR_CTeType (String LBR_CTeType)
	{

		set_Value (COLUMNNAME_LBR_CTeType, LBR_CTeType);
	}

	/** Get CT-e Type.
		@return CT-e Type	  */
	public String getLBR_CTeType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CTeType);
	}

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

	/** Set LBR_CTe_UU.
		@param LBR_CTe_UU LBR_CTe_UU	  */
	public void setLBR_CTe_UU (String LBR_CTe_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_CTe_UU, LBR_CTe_UU);
	}

	/** Get LBR_CTe_UU.
		@return LBR_CTe_UU	  */
	public String getLBR_CTe_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CTe_UU);
	}

	/** Set UF Code.
		@param LBR_CUF UF Code	  */
	public void setLBR_CUF (String LBR_CUF)
	{
		set_Value (COLUMNNAME_LBR_CUF, LBR_CUF);
	}

	/** Get UF Code.
		@return UF Code	  */
	public String getLBR_CUF () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CUF);
	}

	/** Set CT-e Key.
		@param LBR_ChCTe CT-e Key	  */
	public void setLBR_ChCTe (String LBR_ChCTe)
	{
		set_Value (COLUMNNAME_LBR_ChCTe, LBR_ChCTe);
	}

	/** Get CT-e Key.
		@return CT-e Key	  */
	public String getLBR_ChCTe () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ChCTe);
	}

	/** 1 - Contribuinte de ICMS = 1 */
	public static final String LBR_INDIEDEST_1_ContribuinteDeICMS = "1";
	/** 2 - Contribuinte de ICMS - Isento = 2 */
	public static final String LBR_INDIEDEST_2_ContribuinteDeICMS_Isento = "2";
	/** 9 - Não Contribuinte de ICMS = 9 */
	public static final String LBR_INDIEDEST_9_NãoContribuinteDeICMS = "9";
	/** Set Indicador da IE.
		@param LBR_IndIEDest 
		Indicador da IE do Destinatário
	  */
	public void setLBR_IndIEDest (String LBR_IndIEDest)
	{

		set_Value (COLUMNNAME_LBR_IndIEDest, LBR_IndIEDest);
	}

	/** Get Indicador da IE.
		@return Indicador da IE do Destinatário
	  */
	public String getLBR_IndIEDest () 
	{
		return (String)get_Value(COLUMNNAME_LBR_IndIEDest);
	}

	/** Set NSU.
		@param LBR_NSU 
		Unic Sequencial Number used on Manifest of Fiscal Documento
	  */
	public void setLBR_NSU (String LBR_NSU)
	{
		set_Value (COLUMNNAME_LBR_NSU, LBR_NSU);
	}

	/** Get NSU.
		@return Unic Sequencial Number used on Manifest of Fiscal Documento
	  */
	public String getLBR_NSU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NSU);
	}

	/** Set Operation Type.
		@param LBR_NatOp Operation Type	  */
	public void setLBR_NatOp (String LBR_NatOp)
	{
		set_Value (COLUMNNAME_LBR_NatOp, LBR_NatOp);
	}

	/** Get Operation Type.
		@return Operation Type	  */
	public String getLBR_NatOp () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NatOp);
	}

	/** Road = 01 */
	public static final String LBR_SHIPMENTTYPE_Road = "01";
	/** Air = 02 */
	public static final String LBR_SHIPMENTTYPE_Air = "02";
	/** Marine = 03 */
	public static final String LBR_SHIPMENTTYPE_Marine = "03";
	/** Railway = 04 */
	public static final String LBR_SHIPMENTTYPE_Railway = "04";
	/** Pipeline = 05 */
	public static final String LBR_SHIPMENTTYPE_Pipeline = "05";
	/** Multimodal = 06 */
	public static final String LBR_SHIPMENTTYPE_Multimodal = "06";
	/** Set Shipment Type.
		@param LBR_ShipmentType Shipment Type	  */
	public void setLBR_ShipmentType (String LBR_ShipmentType)
	{

		set_Value (COLUMNNAME_LBR_ShipmentType, LBR_ShipmentType);
	}

	/** Get Shipment Type.
		@return Shipment Type	  */
	public String getLBR_ShipmentType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ShipmentType);
	}

	/** Emissão Normal = 1 */
	public static final String LBR_TPEMIS_EmissãoNormal = "1";
	/** Contingência FS-IA = 2 */
	public static final String LBR_TPEMIS_ContingênciaFS_IA = "2";
	/** Contingência SCAN = 3 */
	public static final String LBR_TPEMIS_ContingênciaSCAN = "3";
	/** Contingência DPEC = 4 */
	public static final String LBR_TPEMIS_ContingênciaDPEC = "4";
	/** Contingência FS-DA = 5 */
	public static final String LBR_TPEMIS_ContingênciaFS_DA = "5";
	/** Contingência SVC-AN = 6 */
	public static final String LBR_TPEMIS_ContingênciaSVC_AN = "6";
	/** Contingência SVC-RS = 7 */
	public static final String LBR_TPEMIS_ContingênciaSVC_RS = "7";
	/** Contingência off-line da NFC-e = 9 */
	public static final String LBR_TPEMIS_ContingênciaOff_LineDaNFC_E = "9";
	/** Set Tipo de Emissão.
		@param LBR_TPEmis 
		Indicar o Tipo de Emissão da NF-e.
	  */
	public void setLBR_TPEmis (String LBR_TPEmis)
	{

		set_Value (COLUMNNAME_LBR_TPEmis, LBR_TPEmis);
	}

	/** Get Tipo de Emissão.
		@return Indicar o Tipo de Emissão da NF-e.
	  */
	public String getLBR_TPEmis () 
	{
		return (String)get_Value(COLUMNNAME_LBR_TPEmis);
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

	public org.compiere.model.I_C_Region getTo_Region() throws RuntimeException
    {
		return (org.compiere.model.I_C_Region)MTable.get(getCtx(), org.compiere.model.I_C_Region.Table_Name)
			.getPO(getTo_Region_ID(), get_TrxName());	}

	/** Set To.
		@param To_Region_ID 
		Receiving Region
	  */
	public void setTo_Region_ID (int To_Region_ID)
	{
		if (To_Region_ID < 1) 
			set_Value (COLUMNNAME_To_Region_ID, null);
		else 
			set_Value (COLUMNNAME_To_Region_ID, Integer.valueOf(To_Region_ID));
	}

	/** Get To.
		@return Receiving Region
	  */
	public int getTo_Region_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_To_Region_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	/** Set CPF.
		@param lbr_CPF 
		Used to identify individuals in Brazil
	  */
	public void setlbr_CPF (String lbr_CPF)
	{
		set_Value (COLUMNNAME_lbr_CPF, lbr_CPF);
	}

	/** Get CPF.
		@return Used to identify individuals in Brazil
	  */
	public String getlbr_CPF () 
	{
		return (String)get_Value(COLUMNNAME_lbr_CPF);
	}

	/** 1 - Normal DANFE - Portrait = 1 */
	public static final String LBR_DANFEFORMAT_1_NormalDANFE_Portrait = "1";
	/** 2 - Normal DANFE - Landscape = 2 */
	public static final String LBR_DANFEFORMAT_2_NormalDANFE_Landscape = "2";
	/** 0 - No DANFE = 0 */
	public static final String LBR_DANFEFORMAT_0_NoDANFE = "0";
	/** 3 - Simple DANFE = 3 */
	public static final String LBR_DANFEFORMAT_3_SimpleDANFE = "3";
	/** 4 - DANFE NFC-e = 4 */
	public static final String LBR_DANFEFORMAT_4_DANFENFC_E = "4";
	/** 5 - DANFE NFC-e in Eletronic Message = 5 */
	public static final String LBR_DANFEFORMAT_5_DANFENFC_EInEletronicMessage = "5";
	/** Set DANFE Format.
		@param lbr_DANFEFormat DANFE Format	  */
	public void setlbr_DANFEFormat (String lbr_DANFEFormat)
	{

		set_Value (COLUMNNAME_lbr_DANFEFormat, lbr_DANFEFormat);
	}

	/** Get DANFE Format.
		@return DANFE Format	  */
	public String getlbr_DANFEFormat () 
	{
		return (String)get_Value(COLUMNNAME_lbr_DANFEFormat);
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

	/** Nota Fiscal = 01 */
	public static final String LBR_NFMODEL_NotaFiscal = "01";
	/** Nota Fiscal Avulsa = 1B */
	public static final String LBR_NFMODEL_NotaFiscalAvulsa = "1B";
	/** Nota Fiscal de Venda a Consumidor = 02 */
	public static final String LBR_NFMODEL_NotaFiscalDeVendaAConsumidor = "02";
	/** Cupom Fiscal emitido por ECF = 2D */
	public static final String LBR_NFMODEL_CupomFiscalEmitidoPorECF = "2D";
	/** Bilhete de Passagem emitido por ECF = 2E */
	public static final String LBR_NFMODEL_BilheteDePassagemEmitidoPorECF = "2E";
	/** Nota Fiscal de Produtor = 04 */
	public static final String LBR_NFMODEL_NotaFiscalDeProdutor = "04";
	/** Nota Fiscal/Conta de Energia Elétrica = 06 */
	public static final String LBR_NFMODEL_NotaFiscalContaDeEnergiaElétrica = "06";
	/** Nota Fiscal de Serviço de Transporte = 07 */
	public static final String LBR_NFMODEL_NotaFiscalDeServiçoDeTransporte = "07";
	/** Conhecimento de Transporte Rodoviário de Cargas = 08 */
	public static final String LBR_NFMODEL_ConhecimentoDeTransporteRodoviárioDeCargas = "08";
	/** Conhecimento de Transporte de Cargas Avulso = 8B */
	public static final String LBR_NFMODEL_ConhecimentoDeTransporteDeCargasAvulso = "8B";
	/** Conhecimento de Transporte Aquaviário de Cargas = 09 */
	public static final String LBR_NFMODEL_ConhecimentoDeTransporteAquaviárioDeCargas = "09";
	/** Conhecimento Aéreo = 10 */
	public static final String LBR_NFMODEL_ConhecimentoAéreo = "10";
	/** Conhecimento de Transporte Ferroviário de Cargas = 11 */
	public static final String LBR_NFMODEL_ConhecimentoDeTransporteFerroviárioDeCargas = "11";
	/** Bilhete de Passagem Rodoviário = 13 */
	public static final String LBR_NFMODEL_BilheteDePassagemRodoviário = "13";
	/** Bilhete de Passagem Aquaviário = 14 */
	public static final String LBR_NFMODEL_BilheteDePassagemAquaviário = "14";
	/** Bilhete de Passagem e Nota de Bagagem = 15 */
	public static final String LBR_NFMODEL_BilheteDePassagemENotaDeBagagem = "15";
	/** Despacho de Transporte = 17 */
	public static final String LBR_NFMODEL_DespachoDeTransporte = "17";
	/** Bilhete de Passagem Ferroviário = 16 */
	public static final String LBR_NFMODEL_BilheteDePassagemFerroviário = "16";
	/** Resumo de Movimento Diário = 18 */
	public static final String LBR_NFMODEL_ResumoDeMovimentoDiário = "18";
	/** Ordem de Coleta de Cargas = 20 */
	public static final String LBR_NFMODEL_OrdemDeColetaDeCargas = "20";
	/** Nota Fiscal de Serviço de Comunicação = 21 */
	public static final String LBR_NFMODEL_NotaFiscalDeServiçoDeComunicação = "21";
	/** Nota Fiscal de Serviço de Telecomunicação = 22 */
	public static final String LBR_NFMODEL_NotaFiscalDeServiçoDeTelecomunicação = "22";
	/** GNRE = 23 */
	public static final String LBR_NFMODEL_GNRE = "23";
	/** Autorização de Carregamento e Transporte = 24 */
	public static final String LBR_NFMODEL_AutorizaçãoDeCarregamentoETransporte = "24";
	/** Manifesto de Carga = 25 */
	public static final String LBR_NFMODEL_ManifestoDeCarga = "25";
	/** Conhecimento de Transporte Multimodal de Cargas = 26 */
	public static final String LBR_NFMODEL_ConhecimentoDeTransporteMultimodalDeCargas = "26";
	/** Nota Fiscal de Transporte Ferroviário de Cargas = 27 */
	public static final String LBR_NFMODEL_NotaFiscalDeTransporteFerroviárioDeCargas = "27";
	/** Nota Fiscal/Conta de Fornecimento de Gás Canalizado = 28 */
	public static final String LBR_NFMODEL_NotaFiscalContaDeFornecimentoDeGásCanalizado = "28";
	/** Nota Fiscal/Conta de Fornecimento de Água Canalizada = 29 */
	public static final String LBR_NFMODEL_NotaFiscalContaDeFornecimentoDeÁguaCanalizada = "29";
	/** Bilhete/Recibo do Passageiro = 30 */
	public static final String LBR_NFMODEL_BilheteReciboDoPassageiro = "30";
	/** Nota Fiscal Eletrônica = 55 */
	public static final String LBR_NFMODEL_NotaFiscalEletrônica = "55";
	/** Conhecimento de Transporte Eletrônico – CT-e = 57 */
	public static final String LBR_NFMODEL_ConhecimentoDeTransporteEletrônicoCT_E = "57";
	/** Nota Fiscal de Serviços Eletrônica (RPS) = S1 */
	public static final String LBR_NFMODEL_NotaFiscalDeServiçosEletrônicaRPS = "S1";
	/** Nota Fiscal de Consumidor Eletrônica = 65 */
	public static final String LBR_NFMODEL_NotaFiscalDeConsumidorEletrônica = "65";
	/** Recibo Provisório de Serviço = RS */
	public static final String LBR_NFMODEL_ReciboProvisórioDeServiço = "RS";
	/** Set NF Model.
		@param lbr_NFModel 
		Identifies the model of Nota Fiscal
	  */
	public void setlbr_NFModel (String lbr_NFModel)
	{

		set_Value (COLUMNNAME_lbr_NFModel, lbr_NFModel);
	}

	/** Get NF Model.
		@return Identifies the model of Nota Fiscal
	  */
	public String getlbr_NFModel () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFModel);
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

	/** Set NFe Protocol.
		@param lbr_NFeProt NFe Protocol	  */
	public void setlbr_NFeProt (String lbr_NFeProt)
	{
		set_Value (COLUMNNAME_lbr_NFeProt, lbr_NFeProt);
	}

	/** Get NFe Protocol.
		@return NFe Protocol	  */
	public String getlbr_NFeProt () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFeProt);
	}
}