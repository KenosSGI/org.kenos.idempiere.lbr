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

import java.math.BigDecimal;
import org.compiere.model.*;

/** Generated Interface for C_Invoice
 *  @author Ricardo Santana
 *  @version Release 6.2
 */
public interface I_W_C_Invoice extends I_C_Invoice 
{


    /** Column name LBR_BankSlipContract_ID */
    public static final String COLUMNNAME_LBR_BankSlipContract_ID = "LBR_BankSlipContract_ID";

	/** Set Bank Slip Contract	  */
	public void setLBR_BankSlipContract_ID (int LBR_BankSlipContract_ID);

	/** Get Bank Slip Contract	  */
	public int getLBR_BankSlipContract_ID();

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

    /** Column name LBR_IndPres */
    public static final String COLUMNNAME_LBR_IndPres = "LBR_IndPres";

	/** LBR_IndPres AD_Reference_ID=1120204 */
	public static final int LBR_INDPRES_AD_Reference_ID=1120204;

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
	  * Indicador de presença do comprador no estabelecimento comercial no momento da operação
	  */
	public void setLBR_IndPres (String LBR_IndPres);

	/** Get Indicação de Atendimento Presencial.
	  * Indicador de presença do comprador no estabelecimento comercial no momento da operação
	  */
	public String getLBR_IndPres();

    /** Column name LBR_NotaFiscal_ID */
    public static final String COLUMNNAME_LBR_NotaFiscal_ID = "LBR_NotaFiscal_ID";

	/** Set Nota Fiscal.
	  * Primary key table LBR_NotaFiscal
	  */
	public void setLBR_NotaFiscal_ID (int LBR_NotaFiscal_ID);

	/** Get Nota Fiscal.
	  * Primary key table LBR_NotaFiscal
	  */
	public int getLBR_NotaFiscal_ID();

    /** Column name LBR_OtherChargesAmt */
    public static final String COLUMNNAME_LBR_OtherChargesAmt = "LBR_OtherChargesAmt";

	/** Set Other Charges Amount	  */
	public void setLBR_OtherChargesAmt (BigDecimal LBR_OtherChargesAmt);

	/** Get Other Charges Amount	  */
	public BigDecimal getLBR_OtherChargesAmt();

    /** Column name LBR_ProcCancelBoleto */
    public static final String COLUMNNAME_LBR_ProcCancelBoleto = "LBR_ProcCancelBoleto";

	/** Set Process Cancel Boleto.
	  * Process to Cancel Boleto
	  */
	public void setLBR_ProcCancelBoleto (String LBR_ProcCancelBoleto);

	/** Get Process Cancel Boleto.
	  * Process to Cancel Boleto
	  */
	public String getLBR_ProcCancelBoleto();

    /** Column name LBR_Withhold_Invoice_ID */
    public static final String COLUMNNAME_LBR_Withhold_Invoice_ID = "LBR_Withhold_Invoice_ID";

	/** Set Withhold Invoice.
	  * Defines the Withhold Invoice
	  */
	public void setLBR_Withhold_Invoice_ID (int LBR_Withhold_Invoice_ID);

	/** Get Withhold Invoice.
	  * Defines the Withhold Invoice
	  */
	public int getLBR_Withhold_Invoice_ID();

	public I_C_Invoice getLBR_Withhold_Invoice() throws RuntimeException;

    /** Column name lbr_BillNote */
    public static final String COLUMNNAME_lbr_BillNote = "lbr_BillNote";

	/** Set Bill Note.
	  * Bill Note
	  */
	public void setlbr_BillNote (String lbr_BillNote);

	/** Get Bill Note.
	  * Bill Note
	  */
	public String getlbr_BillNote();

    /** Column name lbr_BoletoComments */
    public static final String COLUMNNAME_lbr_BoletoComments = "lbr_BoletoComments";

	/** Set Boleto Comments.
	  * Define the Boleto Comments
	  */
	public void setlbr_BoletoComments (String lbr_BoletoComments);

	/** Get Boleto Comments.
	  * Define the Boleto Comments
	  */
	public String getlbr_BoletoComments();

    /** Column name lbr_IsBillPrinted */
    public static final String COLUMNNAME_lbr_IsBillPrinted = "lbr_IsBillPrinted";

	/** Set Print Bill.
	  * Indicates if this Account is used to Print Bills
	  */
	public void setlbr_IsBillPrinted (boolean lbr_IsBillPrinted);

	/** Get Print Bill.
	  * Indicates if this Account is used to Print Bills
	  */
	public boolean islbr_IsBillPrinted();

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

    /** Column name lbr_NFEntrada */
    public static final String COLUMNNAME_lbr_NFEntrada = "lbr_NFEntrada";

	/** Set Customer NF Number.
	  * Number of the Customer NF
	  */
	public void setlbr_NFEntrada (String lbr_NFEntrada);

	/** Get Customer NF Number.
	  * Number of the Customer NF
	  */
	public String getlbr_NFEntrada();

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

    /** Column name lbr_NFType */
    public static final String COLUMNNAME_lbr_NFType = "lbr_NFType";

	/** lbr_NFType AD_Reference_ID=1000044 */
	public static final int LBR_NFTYPE_AD_Reference_ID=1000044;

	/** 001_ACT-Autorização de Carregamento de Transporte = 001 */
	public static final String LBR_NFTYPE_001_ACT_AutorizaçãoDeCarregamentoDeTransporte = "001";

	/** 002_AIMR-Atestado de Intervenção em Máquina = 002 */
	public static final String LBR_NFTYPE_002_AIMR_AtestadoDeIntervençãoEmMáquina = "002";

	/** 003_AIPDV-Atestado de Intervenção em PDV = 003 */
	public static final String LBR_NFTYPE_003_AIPDV_AtestadoDeIntervençãoEmPDV = "003";

	/** 004_BPA-Bilhete de Passagem Aquaviário = 004 */
	public static final String LBR_NFTYPE_004_BPA_BilheteDePassagemAquaviário = "004";

	/** 005_BPF-Bilhete de Passagem Ferroviário = 005 */
	public static final String LBR_NFTYPE_005_BPF_BilheteDePassagemFerroviário = "005";

	/** 006_BPNB-Bilhete de Passagem e Nota de Bagagem = 006 */
	public static final String LBR_NFTYPE_006_BPNB_BilheteDePassagemENotaDeBagagem = "006";

	/** 007_BPR-Bilhete de Passagem Rodoviário = 007 */
	public static final String LBR_NFTYPE_007_BPR_BilheteDePassagemRodoviário = "007";

	/** 008_CA-Conhecimento Aéreo = 008 */
	public static final String LBR_NFTYPE_008_CA_ConhecimentoAéreo = "008";

	/** 009_CTA-Conhecimento de Transporte Avulso = 009 */
	public static final String LBR_NFTYPE_009_CTA_ConhecimentoDeTransporteAvulso = "009";

	/** 010_CTAC-Conhecimento de Transporte Aquaviário de Cargas = 010 */
	public static final String LBR_NFTYPE_010_CTAC_ConhecimentoDeTransporteAquaviárioDeCargas = "010";

	/** 011_CTFC-Conhecimento de Transporte Ferroviário de Cargas = 011 */
	public static final String LBR_NFTYPE_011_CTFC_ConhecimentoDeTransporteFerroviárioDeCargas = "011";

	/** 012_CTRC-Conhecimento de Transporte Rodoviário de Cargas = 012 */
	public static final String LBR_NFTYPE_012_CTRC_ConhecimentoDeTransporteRodoviárioDeCargas = "012";

	/** 013_DAICMS-Demons. de Apuração do ICMS-DAICMS = 013 */
	public static final String LBR_NFTYPE_013_DAICMS_DemonsDeApuraçãoDoICMS_DAICMS = "013";

	/** 014_DCICMS-Demons. de Apuração do Compl. do ICMS-DCICMS = 014 */
	public static final String LBR_NFTYPE_014_DCICMS_DemonsDeApuraçãoDoComplDoICMS_DCICMS = "014";

	/** 015_DCL-Despacho de Cargas em Lotação = 015 */
	public static final String LBR_NFTYPE_015_DCL_DespachoDeCargasEmLotação = "015";

	/** 016_DCMS-Despacho de Cargas Modelo Simplificado = 016 */
	public static final String LBR_NFTYPE_016_DCMS_DespachoDeCargasModeloSimplificado = "016";

	/** 017_DEB-Documento de Excesso de Bagagem = 017 */
	public static final String LBR_NFTYPE_017_DEB_DocumentoDeExcessoDeBagagem = "017";

	/** 018_DSEP-Documento Simplificado de Embarque de Passageiro = 018 */
	public static final String LBR_NFTYPE_018_DSEP_DocumentoSimplificadoDeEmbarqueDePassageiro = "018";

	/** 019_DSICMS-Demons. de Contrib. Substituto do ICMS-DSICMS = 019 */
	public static final String LBR_NFTYPE_019_DSICMS_DemonsDeContribSubstitutoDoICMS_DSICMS = "019";

	/** 020_DT-Despacho de Transporte = 020 */
	public static final String LBR_NFTYPE_020_DT_DespachoDeTransporte = "020";

	/** 021_EF-Extrato de Faturamento = 021 */
	public static final String LBR_NFTYPE_021_EF_ExtratoDeFaturamento = "021";

	/** 022_GNR-Guia Nacional de Recolhimento de Tributos Estaduais = 022 */
	public static final String LBR_NFTYPE_022_GNR_GuiaNacionalDeRecolhimentoDeTributosEstaduais = "022";

	/** 023_MC-Manifesto de Carga = 023 */
	public static final String LBR_NFTYPE_023_MC_ManifestoDeCarga = "023";

	/** 024_NF-Nota Fiscal = 024 */
	public static final String LBR_NFTYPE_024_NF_NotaFiscal = "024";

	/** 025_NFA-Nota Fiscal Avulsa = 025 */
	public static final String LBR_NFTYPE_025_NFA_NotaFiscalAvulsa = "025";

	/** 026_NFCEE-Nota Fiscal/Conta de Energia Elétrica = 026 */
	public static final String LBR_NFTYPE_026_NFCEE_NotaFiscalContaDeEnergiaElétrica = "026";

	/** 027_NFCFA-Nota Fiscal/Conta de Fornecimento de Água = 027 */
	public static final String LBR_NFTYPE_027_NFCFA_NotaFiscalContaDeFornecimentoDeÁgua = "027";

	/** 028_NFE-Nota Fiscal de Entrada = 028 */
	public static final String LBR_NFTYPE_028_NFE_NotaFiscalDeEntrada = "028";

	/** 029_NFF-NFF = 029 */
	public static final String LBR_NFTYPE_029_NFF_NFF = "029";

	/** 030_NFME-Nota Fiscal Microempresa = 030 */
	public static final String LBR_NFTYPE_030_NFME_NotaFiscalMicroempresa = "030";

	/** 031_NFP-Nota Fiscal de Produtor = 031 */
	public static final String LBR_NFTYPE_031_NFP_NotaFiscalDeProdutor = "031";

	/** 032_NFS-Nota Fiscal Simplificada = 032 */
	public static final String LBR_NFTYPE_032_NFS_NotaFiscalSimplificada = "032";

	/** 033_NFSC-Nota Fiscal e Serviço de Comunicação = 033 */
	public static final String LBR_NFTYPE_033_NFSC_NotaFiscalEServiçoDeComunicação = "033";

	/** 034_NFSTC-Nota Fiscal de Serviço de Telecomunicações = 034 */
	public static final String LBR_NFTYPE_034_NFSTC_NotaFiscalDeServiçoDeTelecomunicações = "034";

	/** 035_NFSTR-Nota Fiscal de Serviço de Transporte = 035 */
	public static final String LBR_NFTYPE_035_NFSTR_NotaFiscalDeServiçoDeTransporte = "035";

	/** 036_NFVC-Nota Fiscal de Venda a Consumidor = 036 */
	public static final String LBR_NFTYPE_036_NFVC_NotaFiscalDeVendaAConsumidor = "036";

	/** 037_OCC-Ordem de Coleta de Carga = 037 */
	public static final String LBR_NFTYPE_037_OCC_OrdemDeColetaDeCarga = "037";

	/** 038_RD-Relação de Despachos = 038 */
	public static final String LBR_NFTYPE_038_RD_RelaçãoDeDespachos = "038";

	/** 039_RECA-Relatório de Emissão de Conhecimento Aéreos = 039 */
	public static final String LBR_NFTYPE_039_RECA_RelatórioDeEmissãoDeConhecimentoAéreos = "039";

	/** 040_REP-Relatório de Embarque de Passageiros = 040 */
	public static final String LBR_NFTYPE_040_REP_RelatórioDeEmbarqueDePassageiros = "040";

	/** 041_RMD-Resumo de Movimento Diário = 041 */
	public static final String LBR_NFTYPE_041_RMD_ResumoDeMovimentoDiário = "041";


	/** Set NF Type.
	  * Nota Fiscal Type
	  */
	public void setlbr_NFType (String lbr_NFType);

	/** Get NF Type.
	  * Nota Fiscal Type
	  */
	public String getlbr_NFType();

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

    /** Column name lbr_ShipNote */
    public static final String COLUMNNAME_lbr_ShipNote = "lbr_ShipNote";

	/** Set Shipment Note.
	  * Extra Shipment Information 
	  */
	public void setlbr_ShipNote (String lbr_ShipNote);

	/** Get Shipment Note.
	  * Extra Shipment Information 
	  */
	public String getlbr_ShipNote();

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
}
