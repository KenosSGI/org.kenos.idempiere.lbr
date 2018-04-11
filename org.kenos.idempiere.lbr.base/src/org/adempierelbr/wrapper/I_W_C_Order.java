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
package org.adempierelbr.wrapper;

import java.math.BigDecimal;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for C_Order
 *  @author iDempiere (generated) 
 *  @version Release 4.1
 */
@SuppressWarnings("all")
public interface I_W_C_Order extends I_C_Order 
{

    /** TableName=C_Order */
    public static final String Table_Name = "C_Order";

    /** AD_Table_ID=259 */
    public static final int Table_ID = 259;


    /** Column name C_BankAccount_ID */
    public static final String COLUMNNAME_C_BankAccount_ID = "C_BankAccount_ID";

	/** Set Bank Account.
	  * Account at the Bank
	  */
	public void setC_BankAccount_ID (int C_BankAccount_ID);

	/** Get Bank Account.
	  * Account at the Bank
	  */
	public int getC_BankAccount_ID();

	public org.compiere.model.I_C_BankAccount getC_BankAccount() throws RuntimeException;

    /** Column name CreateFrom */
    public static final String COLUMNNAME_CreateFrom = "CreateFrom";

	/** Set Create lines from.
	  * Process which will generate a new document lines based on an existing document
	  */
	public void setCreateFrom (String CreateFrom);

	/** Get Create lines from.
	  * Process which will generate a new document lines based on an existing document
	  */
	public String getCreateFrom();

    /** Column name LBR_ConvertQuote */
    public static final String COLUMNNAME_LBR_ConvertQuote = "LBR_ConvertQuote";

	/** Set Convert Quote	  */
	public void setLBR_ConvertQuote (String LBR_ConvertQuote);

	/** Get Convert Quote	  */
	public String getLBR_ConvertQuote();

    /** Column name LBR_FreightCostRule */
    public static final String COLUMNNAME_LBR_FreightCostRule = "LBR_FreightCostRule";

	/** 0 - Frete por conta do Emitente = 0 */
	public static final String LBR_FREIGHTCOSTRULE_0_FretePorContaDoEmitente = "0";

	/** 1 - Frete por conta do Destinatário = 1 */
	public static final String LBR_FREIGHTCOSTRULE_1_FretePorContaDoDestinatário = "1";


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

    /** Column name LBR_INCOTERMS */
    public static final String COLUMNNAME_LBR_INCOTERMS = "LBR_INCOTERMS";

	/** EXW - Ex Works = EXW */
	public static final String LBR_INCOTERMS_EXW_ExWorks = "EXW";

	/** FCA - Free Carrier = FCA */
	public static final String LBR_INCOTERMS_FCA_FreeCarrier = "FCA";

	/** FAS - Free Alongside Ship = FAS */
	public static final String LBR_INCOTERMS_FAS_FreeAlongsideShip = "FAS";

	/** FOB - Free on Board = FOB */
	public static final String LBR_INCOTERMS_FOB_FreeOnBoard = "FOB";

	/** CFR - Cost and Freight = CFR */
	public static final String LBR_INCOTERMS_CFR_CostAndFreight = "CFR";

	/** CIF - Cost, Insurance and Freight = CIF */
	public static final String LBR_INCOTERMS_CIF_CostInsuranceAndFreight = "CIF";

	/** CPT - Carriage Paid To = CPT */
	public static final String LBR_INCOTERMS_CPT_CarriagePaidTo = "CPT";

	/** CIP - Carriage and Insurance Paid to = CIP */
	public static final String LBR_INCOTERMS_CIP_CarriageAndInsurancePaidTo = "CIP";

	/** DAF - Delivered At Frontier = DAF */
	public static final String LBR_INCOTERMS_DAF_DeliveredAtFrontier = "DAF";

	/** DES - Delivered Ex-Ship = DES */
	public static final String LBR_INCOTERMS_DES_DeliveredEx_Ship = "DES";

	/** DEQ - Delivered Ex-Quay = DEQ */
	public static final String LBR_INCOTERMS_DEQ_DeliveredEx_Quay = "DEQ";

	/** DDU - Delivered Duty Unpaid = DDU */
	public static final String LBR_INCOTERMS_DDU_DeliveredDutyUnpaid = "DDU";

	/** DDP - Delivered Duty Paid = DDP */
	public static final String LBR_INCOTERMS_DDP_DeliveredDutyPaid = "DDP";


	/** Set INCOTERMS.
	  * International Commercial Terms
	  */
	public void setLBR_INCOTERMS (String LBR_INCOTERMS);

	/** Get INCOTERMS.
	  * International Commercial Terms
	  */
	public String getLBR_INCOTERMS();

    /** Column name LBR_IndPres */
    public static final String COLUMNNAME_LBR_IndPres = "LBR_IndPres";

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

	public org.compiere.model.I_C_Order getLBR_Withhold_Order() throws RuntimeException;

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

	/** Cash = X */
	public static final String LBR_PAYMENTRULE_Cash = "X";

	/** Check = C */
	public static final String LBR_PAYMENTRULE_Check = "C";

	/** Bill = B */
	public static final String LBR_PAYMENTRULE_Bill = "B";

	/** Direct Deposit = D */
	public static final String LBR_PAYMENTRULE_DirectDeposit = "D";


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


	/** Set Transaction Type.
	  * Defines the Transaction Type
	  */
	public void setlbr_TransactionType (String lbr_TransactionType);

	/** Get Transaction Type.
	  * Defines the Transaction Type
	  */
	public String getlbr_TransactionType();
}
