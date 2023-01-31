/******************************************************************************
 * Product: Kenos iDempiere ERP & CRM Smart Business Solution                 *
 * Copyright (C) 1999-2022 Kenos, Ltda. All Rights Reserved.                  *
 * Copyright (C) 1999-2022 Ricardo Santana. All Rights Reserved.              *
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
package org.adempierelbr.wrapper;

import org.compiere.model.*;

/** Generated Interface for C_BPartner
 *  @author Ricardo Santana
 *  @version Release 6.2
 */
public interface I_W_C_BPartner extends I_C_BPartner 
{


    /** Column name CategoryType */
    public static final String COLUMNNAME_CategoryType = "CategoryType";

	/** CategoryType AD_Reference_ID=1120372 */
	public static final int CATEGORYTYPE_AD_Reference_ID=1120372;

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
	  * Source of the Journal with this category
	  */
	public void setCategoryType (String CategoryType);

	/** Get Category Type.
	  * Source of the Journal with this category
	  */
	public String getCategoryType();

    /** Column name LBR_BankSlipContract_ID */
    public static final String COLUMNNAME_LBR_BankSlipContract_ID = "LBR_BankSlipContract_ID";

	/** Set Bank Slip Contract	  */
	public void setLBR_BankSlipContract_ID (int LBR_BankSlipContract_ID);

	/** Get Bank Slip Contract	  */
	public int getLBR_BankSlipContract_ID();

    /** Column name LBR_CustomerCategory_ID */
    public static final String COLUMNNAME_LBR_CustomerCategory_ID = "LBR_CustomerCategory_ID";

	/** Set Customer Category.
	  * Defines the Customer Category
	  */
	public void setLBR_CustomerCategory_ID (int LBR_CustomerCategory_ID);

	/** Get Customer Category.
	  * Defines the Customer Category
	  */
	public int getLBR_CustomerCategory_ID();

    /** Column name LBR_EMailBilling */
    public static final String COLUMNNAME_LBR_EMailBilling = "LBR_EMailBilling";

	/** Set Billing EMail.
	  * Billing EMail separated by semicolon
	  */
	public void setLBR_EMailBilling (String LBR_EMailBilling);

	/** Get Billing EMail.
	  * Billing EMail separated by semicolon
	  */
	public String getLBR_EMailBilling();

    /** Column name LBR_EMailNFSe */
    public static final String COLUMNNAME_LBR_EMailNFSe = "LBR_EMailNFSe";

	/** Set NFSe EMail.
	  * NFSe EMail separated by semicolon
	  */
	public void setLBR_EMailNFSe (String LBR_EMailNFSe);

	/** Get NFSe EMail.
	  * NFSe EMail separated by semicolon
	  */
	public String getLBR_EMailNFSe();

    /** Column name LBR_EMailNFe */
    public static final String COLUMNNAME_LBR_EMailNFe = "LBR_EMailNFe";

	/** Set NFe EMail.
	  * NFe EMail separated by semicolon
	  */
	public void setLBR_EMailNFe (String LBR_EMailNFe);

	/** Get NFe EMail.
	  * NFe EMail separated by semicolon
	  */
	public String getLBR_EMailNFe();

    /** Column name LBR_FiscalGroup_Customer_ID */
    public static final String COLUMNNAME_LBR_FiscalGroup_Customer_ID = "LBR_FiscalGroup_Customer_ID";

	/** Set Fiscal Group - Customer.
	  * Defines the Fiscal Group - Customer
	  */
	public void setLBR_FiscalGroup_Customer_ID (int LBR_FiscalGroup_Customer_ID);

	/** Get Fiscal Group - Customer.
	  * Defines the Fiscal Group - Customer
	  */
	public int getLBR_FiscalGroup_Customer_ID();

    /** Column name LBR_FiscalGroup_Vendor_ID */
    public static final String COLUMNNAME_LBR_FiscalGroup_Vendor_ID = "LBR_FiscalGroup_Vendor_ID";

	/** Set Fiscal Group - Vendor.
	  * Defines the Fiscal Group - Vendor
	  */
	public void setLBR_FiscalGroup_Vendor_ID (int LBR_FiscalGroup_Vendor_ID);

	/** Get Fiscal Group - Vendor.
	  * Defines the Fiscal Group - Vendor
	  */
	public int getLBR_FiscalGroup_Vendor_ID();

    /** Column name LBR_FreightCostRule */
    public static final String COLUMNNAME_LBR_FreightCostRule = "LBR_FreightCostRule";

	/** LBR_FreightCostRule AD_Reference_ID=1120147 */
	public static final int LBR_FREIGHTCOSTRULE_AD_Reference_ID=1120147;

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
	  * Method for charging Freight
	  */
	public void setLBR_FreightCostRule (String LBR_FreightCostRule);

	/** Get Freight Cost Rule.
	  * Method for charging Freight
	  */
	public String getLBR_FreightCostRule();

    /** Column name LBR_HasWithhold */
    public static final String COLUMNNAME_LBR_HasWithhold = "LBR_HasWithhold";

	/** Set Has Withhold.
	  * Defines if the Tax, has Withhold
	  */
	public void setLBR_HasWithhold (boolean LBR_HasWithhold);

	/** Get Has Withhold.
	  * Defines if the Tax, has Withhold
	  */
	public boolean isLBR_HasWithhold();

    /** Column name LBR_IndIEDest */
    public static final String COLUMNNAME_LBR_IndIEDest = "LBR_IndIEDest";

	/** LBR_IndIEDest AD_Reference_ID=1120235 */
	public static final int LBR_INDIEDEST_AD_Reference_ID=1120235;

	/** 1 - Contribuinte de ICMS = 1 */
	public static final String LBR_INDIEDEST_1_ContribuinteDeICMS = "1";

	/** 2 - Contribuinte de ICMS - Isento = 2 */
	public static final String LBR_INDIEDEST_2_ContribuinteDeICMS_Isento = "2";

	/** 9 - Não Contribuinte de ICMS = 9 */
	public static final String LBR_INDIEDEST_9_NãoContribuinteDeICMS = "9";


	/** Set Indicador da IE.
	  * Indicador da IE do Destinatário
	  */
	public void setLBR_IndIEDest (String LBR_IndIEDest);

	/** Get Indicador da IE.
	  * Indicador da IE do Destinatário
	  */
	public String getLBR_IndIEDest();

    /** Column name LBR_TaxRegime */
    public static final String COLUMNNAME_LBR_TaxRegime = "LBR_TaxRegime";

	/** LBR_TaxRegime AD_Reference_ID=1120245 */
	public static final int LBR_TAXREGIME_AD_Reference_ID=1120245;

	/** Normal = N */
	public static final String LBR_TAXREGIME_Normal = "N";

	/** Simple National = S */
	public static final String LBR_TAXREGIME_SimpleNational = "S";

	/** Simple National - MEI = M */
	public static final String LBR_TAXREGIME_SimpleNational_MEI = "M";


	/** Set Tax Regime	  */
	public void setLBR_TaxRegime (String LBR_TaxRegime);

	/** Get Tax Regime	  */
	public String getLBR_TaxRegime();

    /** Column name LBR_VendorCategory_ID */
    public static final String COLUMNNAME_LBR_VendorCategory_ID = "LBR_VendorCategory_ID";

	/** Set Vendor Category.
	  * Defines the Vendor Category
	  */
	public void setLBR_VendorCategory_ID (int LBR_VendorCategory_ID);

	/** Get Vendor Category.
	  * Defines the Vendor Category
	  */
	public int getLBR_VendorCategory_ID();

    /** Column name M_Shipper_ID */
    public static final String COLUMNNAME_M_Shipper_ID = "M_Shipper_ID";

	/** Set Shipper.
	  * Method or manner of product delivery
	  */
	public void setM_Shipper_ID (int M_Shipper_ID);

	/** Get Shipper.
	  * Method or manner of product delivery
	  */
	public int getM_Shipper_ID();

	public I_M_Shipper getM_Shipper() throws RuntimeException;

    /** Column name Supervisor_ID */
    public static final String COLUMNNAME_Supervisor_ID = "Supervisor_ID";

	/** Set Supervisor.
	  * Supervisor for this user/organization - used for escalation and approval
	  */
	public void setSupervisor_ID (int Supervisor_ID);

	/** Get Supervisor.
	  * Supervisor for this user/organization - used for escalation and approval
	  */
	public int getSupervisor_ID();

	public I_AD_User getSupervisor() throws RuntimeException;

    /** Column name lbr_BPTypeBR */
    public static final String COLUMNNAME_lbr_BPTypeBR = "lbr_BPTypeBR";

	/** lbr_BPTypeBR AD_Reference_ID=1000000 */
	public static final int LBR_BPTYPEBR_AD_Reference_ID=1000000;

	/** PJ - Legal Entity = PJ */
	public static final String LBR_BPTYPEBR_PJ_LegalEntity = "PJ";

	/** PF - Individual = PF */
	public static final String LBR_BPTYPEBR_PF_Individual = "PF";

	/** PM - Individual Minor = PM */
	public static final String LBR_BPTYPEBR_PM_IndividualMinor = "PM";

	/** XX - Foreigner = XX */
	public static final String LBR_BPTYPEBR_XX_Foreigner = "XX";


	/** Set Brazilian BP Type.
	  * Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)
	  */
	public void setlbr_BPTypeBR (String lbr_BPTypeBR);

	/** Get Brazilian BP Type.
	  * Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)
	  */
	public String getlbr_BPTypeBR();

    /** Column name lbr_BPTypeBRIsValid */
    public static final String COLUMNNAME_lbr_BPTypeBRIsValid = "lbr_BPTypeBRIsValid";

	/** Set Brazilian BP Valid.
	  * Brazilian BP is Valid
	  */
	public void setlbr_BPTypeBRIsValid (boolean lbr_BPTypeBRIsValid);

	/** Get Brazilian BP Valid.
	  * Brazilian BP is Valid
	  */
	public boolean islbr_BPTypeBRIsValid();

    /** Column name lbr_CCM */
    public static final String COLUMNNAME_lbr_CCM = "lbr_CCM";

	/** Set CCM.
	  * City Identification Code used in Brazil (City Tax ID)
	  */
	public void setlbr_CCM (String lbr_CCM);

	/** Get CCM.
	  * City Identification Code used in Brazil (City Tax ID)
	  */
	public String getlbr_CCM();

    /** Column name lbr_CNAE */
    public static final String COLUMNNAME_lbr_CNAE = "lbr_CNAE";

	/** Set CNAE.
	  * Classificação Nacional de Atividades Econômicas
	  */
	public void setlbr_CNAE (String lbr_CNAE);

	/** Get CNAE.
	  * Classificação Nacional de Atividades Econômicas
	  */
	public String getlbr_CNAE();

    /** Column name lbr_CNPJ */
    public static final String COLUMNNAME_lbr_CNPJ = "lbr_CNPJ";

	/** Set CNPJ.
	  * Used to identify Legal Entities in Brazil
	  */
	public void setlbr_CNPJ (String lbr_CNPJ);

	/** Get CNPJ.
	  * Used to identify Legal Entities in Brazil
	  */
	public String getlbr_CNPJ();

    /** Column name lbr_CPF */
    public static final String COLUMNNAME_lbr_CPF = "lbr_CPF";

	/** Set CPF.
	  * Used to identify individuals in Brazil
	  */
	public void setlbr_CPF (String lbr_CPF);

	/** Get CPF.
	  * Used to identify individuals in Brazil
	  */
	public String getlbr_CPF();

    /** Column name lbr_HasSubstitution */
    public static final String COLUMNNAME_lbr_HasSubstitution = "lbr_HasSubstitution";

	/** Set Has Substitution.
	  * Defines if the record has Substituion
	  */
	public void setlbr_HasSubstitution (boolean lbr_HasSubstitution);

	/** Get Has Substitution.
	  * Defines if the record has Substituion
	  */
	public boolean islbr_HasSubstitution();

    /** Column name lbr_IE */
    public static final String COLUMNNAME_lbr_IE = "lbr_IE";

	/** Set IE.
	  * Used to Identify the IE (State Tax ID)
	  */
	public void setlbr_IE (String lbr_IE);

	/** Get IE.
	  * Used to Identify the IE (State Tax ID)
	  */
	public String getlbr_IE();

    /** Column name lbr_NFDescription */
    public static final String COLUMNNAME_lbr_NFDescription = "lbr_NFDescription";

	/** Set Nota Fiscal Description.
	  * Description Printed on Nota Fiscal
	  */
	public void setlbr_NFDescription (String lbr_NFDescription);

	/** Get Nota Fiscal Description.
	  * Description Printed on Nota Fiscal
	  */
	public String getlbr_NFDescription();

    /** Column name lbr_NFModel */
    public static final String COLUMNNAME_lbr_NFModel = "lbr_NFModel";

	/** lbr_NFModel AD_Reference_ID=1120009 */
	public static final int LBR_NFMODEL_AD_Reference_ID=1120009;

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
	  * Identifies the model of Nota Fiscal
	  */
	public void setlbr_NFModel (String lbr_NFModel);

	/** Get NF Model.
	  * Identifies the model of Nota Fiscal
	  */
	public String getlbr_NFModel();

    /** Column name lbr_PaymentRule */
    public static final String COLUMNNAME_lbr_PaymentRule = "lbr_PaymentRule";

	/** lbr_PaymentRule AD_Reference_ID=1000035 */
	public static final int LBR_PAYMENTRULE_AD_Reference_ID=1000035;

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
	  * How you pay the invoice
	  */
	public void setlbr_PaymentRule (String lbr_PaymentRule);

	/** Get Payment Rule.
	  * How you pay the invoice
	  */
	public String getlbr_PaymentRule();

    /** Column name lbr_RG */
    public static final String COLUMNNAME_lbr_RG = "lbr_RG";

	/** Set RG.
	  * Used to identify individuals in Brazil
	  */
	public void setlbr_RG (String lbr_RG);

	/** Get RG.
	  * Used to identify individuals in Brazil
	  */
	public String getlbr_RG();

    /** Column name lbr_Suframa */
    public static final String COLUMNNAME_lbr_Suframa = "lbr_Suframa";

	/** Set Suframa.
	  * Brazilian SUFRAMA Identification Number
	  */
	public void setlbr_Suframa (String lbr_Suframa);

	/** Get Suframa.
	  * Brazilian SUFRAMA Identification Number
	  */
	public String getlbr_Suframa();

    /** Column name lbr_TransactionType */
    public static final String COLUMNNAME_lbr_TransactionType = "lbr_TransactionType";

	/** lbr_TransactionType AD_Reference_ID=1000024 */
	public static final int LBR_TRANSACTIONTYPE_AD_Reference_ID=1000024;

	/** End User = END */
	public static final String LBR_TRANSACTIONTYPE_EndUser = "END";

	/** Manufacturing = MAN */
	public static final String LBR_TRANSACTIONTYPE_Manufacturing = "MAN";

	/** Import = IMP */
	public static final String LBR_TRANSACTIONTYPE_Import = "IMP";

	/** Export = EXP */
	public static final String LBR_TRANSACTIONTYPE_Export = "EXP";

	/** Resale = RES */
	public static final String LBR_TRANSACTIONTYPE_Resale = "RES";

	/** End User (Double Base) = EN2 */
	public static final String LBR_TRANSACTIONTYPE_EndUserDoubleBase = "EN2";

	/** End User (RE 574.706) = EN3 */
	public static final String LBR_TRANSACTIONTYPE_EndUserRE574706 = "EN3";

	/** Resale (RE 574.706) = RE3 */
	public static final String LBR_TRANSACTIONTYPE_ResaleRE574706 = "RE3";

	/** End User (DIFAL out) = EN4 */
	public static final String LBR_TRANSACTIONTYPE_EndUserDIFALOut = "EN4";


	/** Set Transaction Type.
	  * Defines the Transaction Type
	  */
	public void setlbr_TransactionType (String lbr_TransactionType);

	/** Get Transaction Type.
	  * Defines the Transaction Type
	  */
	public String getlbr_TransactionType();

    /** Column name lbr_TransactionTypeVendor */
    public static final String COLUMNNAME_lbr_TransactionTypeVendor = "lbr_TransactionTypeVendor";

	/** lbr_TransactionTypeVendor AD_Reference_ID=1000024 */
	public static final int LBR_TRANSACTIONTYPEVENDOR_AD_Reference_ID=1000024;

	/** End User = END */
	public static final String LBR_TRANSACTIONTYPEVENDOR_EndUser = "END";

	/** Manufacturing = MAN */
	public static final String LBR_TRANSACTIONTYPEVENDOR_Manufacturing = "MAN";

	/** Import = IMP */
	public static final String LBR_TRANSACTIONTYPEVENDOR_Import = "IMP";

	/** Export = EXP */
	public static final String LBR_TRANSACTIONTYPEVENDOR_Export = "EXP";

	/** Resale = RES */
	public static final String LBR_TRANSACTIONTYPEVENDOR_Resale = "RES";

	/** End User (Double Base) = EN2 */
	public static final String LBR_TRANSACTIONTYPEVENDOR_EndUserDoubleBase = "EN2";

	/** End User (RE 574.706) = EN3 */
	public static final String LBR_TRANSACTIONTYPEVENDOR_EndUserRE574706 = "EN3";

	/** Resale (RE 574.706) = RE3 */
	public static final String LBR_TRANSACTIONTYPEVENDOR_ResaleRE574706 = "RE3";

	/** End User (DIFAL out) = EN4 */
	public static final String LBR_TRANSACTIONTYPEVENDOR_EndUserDIFALOut = "EN4";


	/** Set Transaction Type Vendor.
	  * Defines the Transaction Type of a Vendor on Business Partner
	  */
	public void setlbr_TransactionTypeVendor (String lbr_TransactionTypeVendor);

	/** Get Transaction Type Vendor.
	  * Defines the Transaction Type of a Vendor on Business Partner
	  */
	public String getlbr_TransactionTypeVendor();
}
