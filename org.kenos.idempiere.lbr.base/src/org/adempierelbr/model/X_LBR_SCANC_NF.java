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

/** Generated Model for LBR_SCANC_NF
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_SCANC_NF extends PO implements I_LBR_SCANC_NF, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20201030L;

    /** Standard Constructor */
    public X_LBR_SCANC_NF (Properties ctx, int LBR_SCANC_NF_ID, String trxName)
    {
      super (ctx, LBR_SCANC_NF_ID, trxName);
      /** if (LBR_SCANC_NF_ID == 0)
        {
			setLBR_SCANC_NF_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_SCANC_NF (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_SCANC_NF[")
        .append(get_ID()).append("]");
      return sb.toString();
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

	/** Set ICMSST.
		@param ICMSST_TaxAmt ICMSST	  */
	public void setICMSST_TaxAmt (BigDecimal ICMSST_TaxAmt)
	{
		set_ValueNoCheck (COLUMNNAME_ICMSST_TaxAmt, ICMSST_TaxAmt);
	}

	/** Get ICMSST.
		@return ICMSST	  */
	public BigDecimal getICMSST_TaxAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ICMSST_TaxAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set ICMSST Base.
		@param ICMSST_TaxBaseAmt ICMSST Base	  */
	public void setICMSST_TaxBaseAmt (BigDecimal ICMSST_TaxBaseAmt)
	{
		set_ValueNoCheck (COLUMNNAME_ICMSST_TaxBaseAmt, ICMSST_TaxBaseAmt);
	}

	/** Get ICMSST Base.
		@return ICMSST Base	  */
	public BigDecimal getICMSST_TaxBaseAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ICMSST_TaxBaseAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
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

	/** 0 - Contratação do Frete por conta do Remetente (CIF) = 0 */
	public static final String LBR_FREIGHTCOSTRULE_0_ContrataçãoDoFretePorContaDoRemetenteCIF = "0";
	/** 1 - Contratação do Frete por conta do Destinatário (FOB) = 1 */
	public static final String LBR_FREIGHTCOSTRULE_1_ContrataçãoDoFretePorContaDoDestinatárioFOB = "1";
	/** 3 - Transporte Próprio por conta do Remetente = 3 */
	public static final String LBR_FREIGHTCOSTRULE_3_TransportePróprioPorContaDoRemetente = "3";
	/** 4 - Transporte Próprio por conta do Destinatário = 4 */
	public static final String LBR_FREIGHTCOSTRULE_4_TransportePróprioPorContaDoDestinatário = "4";
	/** 2 - Contratação do Frete por conta de Terceiros = 2 */
	public static final String LBR_FREIGHTCOSTRULE_2_ContrataçãoDoFretePorContaDeTerceiros = "2";
	/** 9 - Sem Ocorrência de Transporte = 9 */
	public static final String LBR_FREIGHTCOSTRULE_9_SemOcorrênciaDeTransporte = "9";
	/** Set Freight Cost Rule.
		@param LBR_FreightCostRule 
		Method for charging Freight
	  */
	public void setLBR_FreightCostRule (String LBR_FreightCostRule)
	{

		set_Value (COLUMNNAME_LBR_FreightCostRule, LBR_FreightCostRule);
	}

	/** Get Freight Cost Rule.
		@return Method for charging Freight
	  */
	public String getLBR_FreightCostRule () 
	{
		return (String)get_Value(COLUMNNAME_LBR_FreightCostRule);
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

	/** Set SCANC NF.
		@param LBR_SCANC_NF_ID SCANC NF	  */
	public void setLBR_SCANC_NF_ID (int LBR_SCANC_NF_ID)
	{
		if (LBR_SCANC_NF_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_SCANC_NF_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_SCANC_NF_ID, Integer.valueOf(LBR_SCANC_NF_ID));
	}

	/** Get SCANC NF.
		@return SCANC NF	  */
	public int getLBR_SCANC_NF_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_SCANC_NF_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_SCANC_NF_UU.
		@param LBR_SCANC_NF_UU LBR_SCANC_NF_UU	  */
	public void setLBR_SCANC_NF_UU (String LBR_SCANC_NF_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_SCANC_NF_UU, LBR_SCANC_NF_UU);
	}

	/** Get LBR_SCANC_NF_UU.
		@return LBR_SCANC_NF_UU	  */
	public String getLBR_SCANC_NF_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_SCANC_NF_UU);
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
		set_Value (COLUMNNAME_Qty, Qty);
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

	/** Sul = 0 */
	public static final String REGION_Sul = "0";
	/** Sudeste = 1 */
	public static final String REGION_Sudeste = "1";
	/** Norte = 2 */
	public static final String REGION_Norte = "2";
	/** Nordeste = 3 */
	public static final String REGION_Nordeste = "3";
	/** Centro-Oeste = 4 */
	public static final String REGION_Centro_Oeste = "4";
	/** Sul e Sudeste = 5 */
	public static final String REGION_SulESudeste = "5";
	/** Norte, Nordeste e Centro-Oeste = 6 */
	public static final String REGION_NorteNordesteECentro_Oeste = "6";
	/** Sul e Sudeste, exceto ES = 7 */
	public static final String REGION_SulESudesteExcetoES = "7";
	/** Norte, Nordeste, Centro-Oeste e ES = 8 */
	public static final String REGION_NorteNordesteCentro_OesteEES = "8";
	/** Set Region.
		@param Region Region	  */
	public void setRegion (String Region)
	{

		set_ValueNoCheck (COLUMNNAME_Region, Region);
	}

	/** Get Region.
		@return Region	  */
	public String getRegion () 
	{
		return (String)get_Value(COLUMNNAME_Region);
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

	/** Set BP Shipper CNPJ.
		@param lbr_BPShipperCNPJ 
		BP Shipper CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPShipperCNPJ (String lbr_BPShipperCNPJ)
	{
		set_Value (COLUMNNAME_lbr_BPShipperCNPJ, lbr_BPShipperCNPJ);
	}

	/** Get BP Shipper CNPJ.
		@return BP Shipper CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPShipperCNPJ () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPShipperCNPJ);
	}

	/** Set BP Shipper License Plate.
		@param lbr_BPShipperLicensePlate 
		Defines the BP Shipper License Plate
	  */
	public void setlbr_BPShipperLicensePlate (String lbr_BPShipperLicensePlate)
	{
		set_Value (COLUMNNAME_lbr_BPShipperLicensePlate, lbr_BPShipperLicensePlate);
	}

	/** Get BP Shipper License Plate.
		@return Defines the BP Shipper License Plate
	  */
	public String getlbr_BPShipperLicensePlate () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPShipperLicensePlate);
	}

	/** Set CFOP Name.
		@param lbr_CFOPName 
		Defines the CFOP Name
	  */
	public void setlbr_CFOPName (String lbr_CFOPName)
	{
		set_Value (COLUMNNAME_lbr_CFOPName, lbr_CFOPName);
	}

	/** Get CFOP Name.
		@return Defines the CFOP Name
	  */
	public String getlbr_CFOPName () 
	{
		return (String)get_Value(COLUMNNAME_lbr_CFOPName);
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
}