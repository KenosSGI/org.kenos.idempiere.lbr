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

/** Generated Model for LBR_NFConfig
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_NFConfig extends PO implements I_LBR_NFConfig, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20210403L;

    /** Standard Constructor */
    public X_LBR_NFConfig (Properties ctx, int LBR_NFConfig_ID, String trxName)
    {
      super (ctx, LBR_NFConfig_ID, trxName);
      /** if (LBR_NFConfig_ID == 0)
        {
			setLBR_ConfigSystemResp (null);
// N
			setLBR_IBPTConfiguration (null);
// C
			setLBR_ISSQNAgreement (false);
// N
			setLBR_NFConfig_ID (0);
			setLBR_ReverseInOut (false);
// N
			setLBR_ReverseInvoice (false);
// N
			setLBR_TPEmis (null);
// 1
			setlbr_DANFEFormat (null);
// 1
			setlbr_NFModel (null);
// 55
			setlbr_NFeEnv (null);
// 2
        } */
    }

    /** Load Constructor */
    public X_LBR_NFConfig (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_NFConfig[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Classname.
		@param Classname 
		Java Classname
	  */
	public void setClassname (String Classname)
	{
		set_Value (COLUMNNAME_Classname, Classname);
	}

	/** Get Classname.
		@return Java Classname
	  */
	public String getClassname () 
	{
		return (String)get_Value(COLUMNNAME_Classname);
	}

	/** Set CSRT Code.
		@param LBR_CSRTCode 
		CSRT Code used to generate Hash CSRT
	  */
	public void setLBR_CSRTCode (String LBR_CSRTCode)
	{
		set_Value (COLUMNNAME_LBR_CSRTCode, LBR_CSRTCode);
	}

	/** Get CSRT Code.
		@return CSRT Code used to generate Hash CSRT
	  */
	public String getLBR_CSRTCode () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CSRTCode);
	}

	/** Set CSRT ID.
		@param LBR_CSRTID 
		CSRT ID corresponding to the CSRT Code
	  */
	public void setLBR_CSRTID (int LBR_CSRTID)
	{
		set_Value (COLUMNNAME_LBR_CSRTID, Integer.valueOf(LBR_CSRTID));
	}

	/** Get CSRT ID.
		@return CSRT ID corresponding to the CSRT Code
	  */
	public int getLBR_CSRTID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CSRTID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Inform System Responsible = I */
	public static final String LBR_CONFIGSYSTEMRESP_InformSystemResponsible = "I";
	/** Not Inform System Responsible = N */
	public static final String LBR_CONFIGSYSTEMRESP_NotInformSystemResponsible = "N";
	/** Set System Responsible.
		@param LBR_ConfigSystemResp System Responsible	  */
	public void setLBR_ConfigSystemResp (String LBR_ConfigSystemResp)
	{

		set_Value (COLUMNNAME_LBR_ConfigSystemResp, LBR_ConfigSystemResp);
	}

	/** Get System Responsible.
		@return System Responsible	  */
	public String getLBR_ConfigSystemResp () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ConfigSystemResp);
	}

	/** API (Online) = A */
	public static final String LBR_IBPTCONFIGURATION_APIOnline = "A";
	/** Offline (IBPT Table) = C */
	public static final String LBR_IBPTCONFIGURATION_OfflineIBPTTable = "C";
	/** Real Tax Value = R */
	public static final String LBR_IBPTCONFIGURATION_RealTaxValue = "R";
	/** Set IBPT Configuration.
		@param LBR_IBPTConfiguration IBPT Configuration	  */
	public void setLBR_IBPTConfiguration (String LBR_IBPTConfiguration)
	{

		set_Value (COLUMNNAME_LBR_IBPTConfiguration, LBR_IBPTConfiguration);
	}

	/** Get IBPT Configuration.
		@return IBPT Configuration	  */
	public String getLBR_IBPTConfiguration () 
	{
		return (String)get_Value(COLUMNNAME_LBR_IBPTConfiguration);
	}

	/** Set IBPT API Key.
		@param LBR_IBPT_API_Key 
		Key to Conect to IBPT API
	  */
	public void setLBR_IBPT_API_Key (String LBR_IBPT_API_Key)
	{
		set_Value (COLUMNNAME_LBR_IBPT_API_Key, LBR_IBPT_API_Key);
	}

	/** Get IBPT API Key.
		@return Key to Conect to IBPT API
	  */
	public String getLBR_IBPT_API_Key () 
	{
		return (String)get_Value(COLUMNNAME_LBR_IBPT_API_Key);
	}

	/** Set ISSQN Agreement.
		@param LBR_ISSQNAgreement 
		Indicates if the city has ISSQN agreement to issue NF-e combined
	  */
	public void setLBR_ISSQNAgreement (boolean LBR_ISSQNAgreement)
	{
		set_Value (COLUMNNAME_LBR_ISSQNAgreement, Boolean.valueOf(LBR_ISSQNAgreement));
	}

	/** Get ISSQN Agreement.
		@return Indicates if the city has ISSQN agreement to issue NF-e combined
	  */
	public boolean isLBR_ISSQNAgreement () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_ISSQNAgreement);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Não se Aplica = 0 */
	public static final String LBR_INDPRES_NãoSeAplica = "0";
	/** Operação Presencial = 1 */
	public static final String LBR_INDPRES_OperaçãoPresencial = "1";
	/** Operação não Presencial, pela Internet = 2 */
	public static final String LBR_INDPRES_OperaçãoNãoPresencialPelaInternet = "2";
	/** Operação não Presencial, Teleatendimento = 3 */
	public static final String LBR_INDPRES_OperaçãoNãoPresencialTeleatendimento = "3";
	/** NFC-e em Operação com Entrega em Domicílio = 4 */
	public static final String LBR_INDPRES_NFC_EEmOperaçãoComEntregaEmDomicílio = "4";
	/** Operação não Presencial, Outros = 9 */
	public static final String LBR_INDPRES_OperaçãoNãoPresencialOutros = "9";
	/** Operação presencial, fora do estabelecimento = 5 */
	public static final String LBR_INDPRES_OperaçãoPresencialForaDoEstabelecimento = "5";
	/** Set Indicação de Atendimento Presencial.
		@param LBR_IndPres 
		Indicador de presença do comprador no estabelecimento comercial no momento da operação
	  */
	public void setLBR_IndPres (String LBR_IndPres)
	{

		set_Value (COLUMNNAME_LBR_IndPres, LBR_IndPres);
	}

	/** Get Indicação de Atendimento Presencial.
		@return Indicador de presença do comprador no estabelecimento comercial no momento da operação
	  */
	public String getLBR_IndPres () 
	{
		return (String)get_Value(COLUMNNAME_LBR_IndPres);
	}

	/** Set NF Configuration.
		@param LBR_NFConfig_ID NF Configuration	  */
	public void setLBR_NFConfig_ID (int LBR_NFConfig_ID)
	{
		if (LBR_NFConfig_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NFConfig_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NFConfig_ID, Integer.valueOf(LBR_NFConfig_ID));
	}

	/** Get NF Configuration.
		@return NF Configuration	  */
	public int getLBR_NFConfig_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NFConfig_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_NFConfig_UU.
		@param LBR_NFConfig_UU LBR_NFConfig_UU	  */
	public void setLBR_NFConfig_UU (String LBR_NFConfig_UU)
	{
		set_Value (COLUMNNAME_LBR_NFConfig_UU, LBR_NFConfig_UU);
	}

	/** Get LBR_NFConfig_UU.
		@return LBR_NFConfig_UU	  */
	public String getLBR_NFConfig_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFConfig_UU);
	}

	/** Asynchronous = 0 */
	public static final String LBR_NFELOTMETHOD_Asynchronous = "0";
	/** Synchronous = 1 */
	public static final String LBR_NFELOTMETHOD_Synchronous = "1";
	/** Set Lot Method.
		@param LBR_NFeLotMethod 
		Method of transmission of NFe Lot
	  */
	public void setLBR_NFeLotMethod (String LBR_NFeLotMethod)
	{

		set_Value (COLUMNNAME_LBR_NFeLotMethod, LBR_NFeLotMethod);
	}

	/** Get Lot Method.
		@return Method of transmission of NFe Lot
	  */
	public String getLBR_NFeLotMethod () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeLotMethod);
	}

	/** Set Reverse InOut.
		@param LBR_ReverseInOut 
		Allow to Reverse InOut related with the NF
	  */
	public void setLBR_ReverseInOut (boolean LBR_ReverseInOut)
	{
		set_Value (COLUMNNAME_LBR_ReverseInOut, Boolean.valueOf(LBR_ReverseInOut));
	}

	/** Get Reverse InOut.
		@return Allow to Reverse InOut related with the NF
	  */
	public boolean isLBR_ReverseInOut () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_ReverseInOut);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Reverse Invoice.
		@param LBR_ReverseInvoice 
		Allow to Reverse Invoice related with the NF
	  */
	public void setLBR_ReverseInvoice (boolean LBR_ReverseInvoice)
	{
		set_Value (COLUMNNAME_LBR_ReverseInvoice, Boolean.valueOf(LBR_ReverseInvoice));
	}

	/** Get Reverse Invoice.
		@return Allow to Reverse Invoice related with the NF
	  */
	public boolean isLBR_ReverseInvoice () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_ReverseInvoice);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
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

	/** Set Data contingência.
		@param lbr_DateScan Data contingência	  */
	public void setlbr_DateScan (Timestamp lbr_DateScan)
	{
		set_Value (COLUMNNAME_lbr_DateScan, lbr_DateScan);
	}

	/** Get Data contingência.
		@return Data contingência	  */
	public Timestamp getlbr_DateScan () 
	{
		return (Timestamp)get_Value(COLUMNNAME_lbr_DateScan);
	}

	/** Set Motivo contingência.
		@param lbr_MotivoScan Motivo contingência	  */
	public void setlbr_MotivoScan (String lbr_MotivoScan)
	{
		set_Value (COLUMNNAME_lbr_MotivoScan, lbr_MotivoScan);
	}

	/** Get Motivo contingência.
		@return Motivo contingência	  */
	public String getlbr_MotivoScan () 
	{
		return (String)get_Value(COLUMNNAME_lbr_MotivoScan);
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

	/** Cash (old) = X */
	public static final String LBR_PAYMENTRULE_CashOld = "X";
	/** Check (old) = C */
	public static final String LBR_PAYMENTRULE_CheckOld = "C";
	/** Bill (old) = B */
	public static final String LBR_PAYMENTRULE_BillOld = "B";
	/** Direct Deposit (old) = D */
	public static final String LBR_PAYMENTRULE_DirectDepositOld = "D";
	/** Cash = 01 */
	public static final String LBR_PAYMENTRULE_Cash = "01";
	/** Check = 02 */
	public static final String LBR_PAYMENTRULE_Check = "02";
	/** Credit Card = 03 */
	public static final String LBR_PAYMENTRULE_CreditCard = "03";
	/** Debit Card = 04 */
	public static final String LBR_PAYMENTRULE_DebitCard = "04";
	/** Store Credit = 05 */
	public static final String LBR_PAYMENTRULE_StoreCredit = "05";
	/** Food Voucher = 10 */
	public static final String LBR_PAYMENTRULE_FoodVoucher = "10";
	/** Meal Voucher = 11 */
	public static final String LBR_PAYMENTRULE_MealVoucher = "11";
	/** Gift Card = 12 */
	public static final String LBR_PAYMENTRULE_GiftCard = "12";
	/** Fuel Voucher = 13 */
	public static final String LBR_PAYMENTRULE_FuelVoucher = "13";
	/** Trade Bill (old) = 14 */
	public static final String LBR_PAYMENTRULE_TradeBillOld = "14";
	/** Bank Slip = 15 */
	public static final String LBR_PAYMENTRULE_BankSlip = "15";
	/** No Payment Required = 90 */
	public static final String LBR_PAYMENTRULE_NoPaymentRequired = "90";
	/** Other = 99 */
	public static final String LBR_PAYMENTRULE_Other = "99";
	/** Bank Deposit = 16 */
	public static final String LBR_PAYMENTRULE_BankDeposit = "16";
	/** Instant Payment (PIX) = 17 */
	public static final String LBR_PAYMENTRULE_InstantPaymentPIX = "17";
	/** Bank Transfer, Digital Wallet = 18 */
	public static final String LBR_PAYMENTRULE_BankTransferDigitalWallet = "18";
	/** Loyalty Program, Cashback, Virtual Credit = 19 */
	public static final String LBR_PAYMENTRULE_LoyaltyProgramCashbackVirtualCredit = "19";
	/** Set Payment Rule.
		@param lbr_PaymentRule 
		How you pay the invoice
	  */
	public void setlbr_PaymentRule (String lbr_PaymentRule)
	{

		set_Value (COLUMNNAME_lbr_PaymentRule, lbr_PaymentRule);
	}

	/** Get Payment Rule.
		@return How you pay the invoice
	  */
	public String getlbr_PaymentRule () 
	{
		return (String)get_Value(COLUMNNAME_lbr_PaymentRule);
	}
}