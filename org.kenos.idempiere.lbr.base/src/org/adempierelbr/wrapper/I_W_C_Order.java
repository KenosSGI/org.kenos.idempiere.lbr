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

/** Generated Interface for C_Order
 *  @author Ricardo Santana
 *  @version Release 6.2
 */
public interface I_W_C_Order extends I_C_Order 
{


    /** Column name FOB */
    public static final String COLUMNNAME_FOB = "FOB";

	/** FOB AD_Reference_ID=200030 */
	public static final int FOB_AD_Reference_ID=200030;

	/** FOB Origin = A_DFOBO */
	public static final String FOB_FOBOrigin = "A_DFOBO";

	/** Ex Works = B_EXW */
	public static final String FOB_ExWorks = "B_EXW";

	/** CFR - Cost and Freight = CFR */
	public static final String FOB_CFR_CostAndFreight = "CFR";

	/** CIF - Cost, Insurance, and Freight (FedEx) = CIF */
	public static final String FOB_CIF_CostInsuranceAndFreightFedEx = "CIF";

	/** CIP - Carriage and Insurance Paid To (FedEx) = CIP */
	public static final String FOB_CIP_CarriageAndInsurancePaidToFedEx = "CIP";

	/** CPT - Carriage Paid To = CPT */
	public static final String FOB_CPT_CarriagePaidTo = "CPT";

	/** DAF - Delivered at Frontier = DAF */
	public static final String FOB_DAF_DeliveredAtFrontier = "DAF";

	/** DDP - Delivered Duty Paid (FedEx) = DDP */
	public static final String FOB_DDP_DeliveredDutyPaidFedEx = "DDP";

	/** DDU - Delivered Duty Unpaid (FedEx) = DDU */
	public static final String FOB_DDU_DeliveredDutyUnpaidFedEx = "DDU";

	/** DEQ - Delivered Ex Quay = DEQ */
	public static final String FOB_DEQ_DeliveredExQuay = "DEQ";

	/** DES - Delivered Ex Ship = DES */
	public static final String FOB_DES_DeliveredExShip = "DES";

	/** Domestic FOB Destination = DFOBD */
	public static final String FOB_DomesticFOBDestination = "DFOBD";

	/** EXW - Ex Works (FedEx) = EXW */
	public static final String FOB_EXW_ExWorksFedEx = "EXW";

	/** FAS - Free Alongside Ship = FAS */
	public static final String FOB_FAS_FreeAlongsideShip = "FAS";

	/** FCA - Free Carrier (FedEx) = FCA */
	public static final String FOB_FCA_FreeCarrierFedEx = "FCA";

	/** FOB - Free on Board (FedEx) = FOB */
	public static final String FOB_FOB_FreeOnBoardFedEx = "FOB";


	/** Set Freight Terms	  */
	public void setFOB (String FOB);

	/** Get Freight Terms	  */
	public String getFOB();

    /** Column name LBR_BankSlipContract_ID */
    public static final String COLUMNNAME_LBR_BankSlipContract_ID = "LBR_BankSlipContract_ID";

	/** Set Bank Slip Contract	  */
	public void setLBR_BankSlipContract_ID (int LBR_BankSlipContract_ID);

	/** Get Bank Slip Contract	  */
	public int getLBR_BankSlipContract_ID();

    /** Column name LBR_CNPJF */
    public static final String COLUMNNAME_LBR_CNPJF = "LBR_CNPJF";

	/** Set CNPJ/CPF.
	  * CNPJ ou CPF do cliente
	  */
	public void setLBR_CNPJF (String LBR_CNPJF);

	/** Get CNPJ/CPF.
	  * CNPJ ou CPF do cliente
	  */
	public String getLBR_CNPJF();

    /** Column name LBR_ConvertQuote */
    public static final String COLUMNNAME_LBR_ConvertQuote = "LBR_ConvertQuote";

	/** Set Convert Quote	  */
	public void setLBR_ConvertQuote (String LBR_ConvertQuote);

	/** Get Convert Quote	  */
	public String getLBR_ConvertQuote();

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

    /** Column name LBR_OtherChargesAmt */
    public static final String COLUMNNAME_LBR_OtherChargesAmt = "LBR_OtherChargesAmt";

	/** Set Other Charges Amount	  */
	public void setLBR_OtherChargesAmt (BigDecimal LBR_OtherChargesAmt);

	/** Get Other Charges Amount	  */
	public BigDecimal getLBR_OtherChargesAmt();

    /** Column name LBR_ProcCreatePO */
    public static final String COLUMNNAME_LBR_ProcCreatePO = "LBR_ProcCreatePO";

	/** Set Create PO.
	  * Process to Create PO Lines from Requisition
	  */
	public void setLBR_ProcCreatePO (String LBR_ProcCreatePO);

	/** Get Create PO.
	  * Process to Create PO Lines from Requisition
	  */
	public String getLBR_ProcCreatePO();

    /** Column name LBR_Withhold_Order_ID */
    public static final String COLUMNNAME_LBR_Withhold_Order_ID = "LBR_Withhold_Order_ID";

	/** Set Withhold Order.
	  * Defines the Withhold Order
	  */
	public void setLBR_Withhold_Order_ID (int LBR_Withhold_Order_ID);

	/** Get Withhold Order.
	  * Defines the Withhold Order
	  */
	public int getLBR_Withhold_Order_ID();

	public I_C_Order getLBR_Withhold_Order() throws RuntimeException;

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

    /** Column name lbr_InsuranceAmt */
    public static final String COLUMNNAME_lbr_InsuranceAmt = "lbr_InsuranceAmt";

	/** Set Insurance Amt.
	  * Defines the Insurance Amt
	  */
	public void setlbr_InsuranceAmt (BigDecimal lbr_InsuranceAmt);

	/** Get Insurance Amt.
	  * Defines the Insurance Amt
	  */
	public BigDecimal getlbr_InsuranceAmt();

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
