package org.kenos.idempiere.lbr.bankslip.cnab400;

import static org.adempierelbr.util.TextUtil.lPad;
import static org.adempierelbr.util.TextUtil.rPad;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.Timestamp;
import java.util.concurrent.atomic.AtomicInteger;

import org.adempiere.model.POWrapper;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.compiere.model.MOrgInfo;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.bankslip.ICNABGenerator;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlip;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipContract;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipInfo;
import org.kenos.idempiere.lbr.bankslip.model.MLBRCNABFile;

/**
 * 	Generate CNAB for Itau Bank
 * 	@author Ricardo Santana
 */
public class Santander033 implements ICNABGenerator
{
	/**	Bank Routing Number	*/
	public static final int ROUNTING_NO = 033;
	
	/**	Bank Name			*/
	private static final String BANK_NAME = "SANTANDER";
	
	/** Payer BP Type				*/
	private static final String BPTYPE_CPF_PAGADOR 		= "01";
	private static final String BPTYPE_CNPJ_PAGADOR 	= "02";
	
	/**
	 * 	Generate CNAB File
	 */
	@Override
	public StringBuilder generateCNABFile (final MLBRCNABFile cnabFile)
	{
		final StringBuilder cnab = new StringBuilder ();
		
		//	Header
		cnab.append(CNAB_REG_TYPE_HEADER); 						//	TIPO DE REGISTRO
		cnab.append("1"); 										//	OPERAÇÃO
		cnab.append("REMESSA"); 								//	LITERAL DE REMESSA
		cnab.append("01"); 										//	CÓDIGO DE SERVIÇO
		cnab.append(rPad("COBRANCA", 15)); 						//	LITERAL DE SERVIÇO
																//	CONVÊNIO
		cnab.append(lPad(cnabFile.getLBR_BankSlipContract().getLBR_Param1(), 20));
		cnab.append(rPad(cnabFile.getlbr_LegalEntity(), 30)); 	//	NOME DA EMPRESA
		cnab.append(cnabFile.getRoutingNo()); 					//	CÓDIGO DO BANCO
		cnab.append(rPad(BANK_NAME, 15)); 						//	NOME DO BANCO
		cnab.append(timeToString(cnabFile.getDateDoc())); 		//	DATA DE GERAÇÃO
		cnab.append(rPad("0", 16)); 								//	BRANCOS
		cnab.append(rPad("", 275)); 							//	BRANCOS
		cnab.append(lPad("1", 6)); 								//	NÚMERO SEQUENCIAL
		cnab.append(CR).append(LF);
		
		AtomicInteger count = new AtomicInteger (2);
		
		//	Movements
		cnabFile.getLines().stream().forEach(line ->
		{
			MLBRBankSlip bs 				= line.getBankSlip();
			MLBRBankSlipInfo bsi 			= line.getBankSlipInfo();
			MLBRBankSlipContract contract 	= (MLBRBankSlipContract) line.getBankSlip().getLBR_BankSlipContract();
			//
			cnab.append(rPad(CNAB_REG_TYPE_DETAIL, 1));			//	TIPO DE REGISTRO
			
//			String orgBPTypeBR = BPTYPE_CNPJ_BENEFICIARIO;
//			String orgCNPJF = bsi.getlbr_CNPJ();
//			//
//			if (bs.getGuarantorBP_ID() > 0)
//			{
//				if (MLBRBankSlipInfo.LBR_GUARANTORBPTYPE_PJ_LegalEntity.equals(bsi.getLBR_GuarantorBPType()))
//					orgBPTypeBR = BPTYPE_CNPJ_SACADOR_AVALISTA;
//				else if (MLBRBankSlipInfo.LBR_GUARANTORBPTYPE_PF_Individual.equals(bsi.getLBR_GuarantorBPType()))
//					orgBPTypeBR = BPTYPE_CPF_SACADOR_AVALISTA;
//				//
//				orgCNPJF = bsi.getLBR_GuarantorCNPJ();	//	CPF and CNPJ
//			}
//			else if (MLBRBankSlipInfo.LBR_ORGBPTYPE_PF_Individual.equals(bsi.getLBR_OrgBPType()))
//				orgBPTypeBR = BPTYPE_CPF_BENEFICIARIO;
//
//			//	Aceite
//			String accepted = NOT_ACCEPTED;
//			//
//			if (MLBRBankSlip.LBR_ISACCEPTED_IsAccepted.equals(bs.getLBR_IsAccepted()))
//				accepted = IS_ACCEPTED;
			
			//	Penalty
			BigDecimal penaltyAmt = Env.ZERO;
			
			//	Mora por atraso
			if (bs.getLBR_PenaltyDays() == 1)
			{
				if (MLBRBankSlip.LBR_PENALTYTYPE_Amount.equals(bs.getLBR_PenaltyType()))
					penaltyAmt = bs.getLBR_PenaltyValue();
				else if (MLBRBankSlip.LBR_PENALTYTYPE_Rate.equals(bs.getLBR_PenaltyType()))
					penaltyAmt = bs.getGrandTotal().multiply(bs.getLBR_PenaltyValue()).divide(new BigDecimal (30), 2, RoundingMode.HALF_UP);
			}
			
			BigDecimal discountAmt = Env.ZERO;
			Timestamp discountDate = null;
			
			//	Has Discount
			if (bs.getLBR_Discount1Value().signum() == 1)
			{
				discountDate = bs.getLBR_Discount1Date();
				
				//	Discount Type = Amount
				if (TextUtil.match(bs.getLBR_Discount1Type(), 
					MLBRBankSlip.LBR_DISCOUNT1TYPE_AmountForEarlyPaymentInBusinessDays, 
					MLBRBankSlip.LBR_DISCOUNT1TYPE_AmountForEarlyPaymentInCalendarDays, 
					MLBRBankSlip.LBR_DISCOUNT1TYPE_FixedAmountUntilDateSet))
				{
					discountAmt = bs.getLBR_Discount1Value();
				}
				
				//	Discount Type = Rate
				else if (TextUtil.match(bs.getLBR_Discount1Type(), 
					MLBRBankSlip.LBR_DISCOUNT1TYPE_RateOverGrandTotalInBusinessDays, 
					MLBRBankSlip.LBR_DISCOUNT1TYPE_RateOverGrandTotalInCalendarDays, 
					MLBRBankSlip.LBR_DISCOUNT1TYPE_FixedRateUntilDateSet))
				{
					discountAmt = bs.getGrandTotal().multiply(bs.getLBR_Discount1Value());
				}
			}
			
			//	CNPJ/CPF payer
			String payerBPTypeBR = BPTYPE_CNPJ_PAGADOR;
			String payerCNPJF = bsi.getlbr_BPCNPJ();
			//
			if (MLBRBankSlipInfo.LBR_BPTYPEBR_PF_Individual.equals(bsi.getlbr_BPTypeBR()))
				payerBPTypeBR = BPTYPE_CPF_PAGADOR;
			
			I_W_AD_OrgInfo oiW = POWrapper.create (MOrgInfo.get (bs.getCtx(), bs.getAD_Org_ID(), bs.get_TrxName()), I_W_AD_OrgInfo.class);
//			I_W_C_BPartner bpW = POWrapper.create (new MBPartner (ctx, boleto.getC_BPartner_ID(), trxName), I_W_C_BPartner.class);
//			
			//	Dados do cedente
			String ocnpj = TextUtil.retiraEspecial (oiW.getlbr_CNPJ());
			
			//	Dados do sacado
//			String bpType = I_W_C_BPartner.LBR_BPTYPEBR_PF_Individual.equals (bs.getlbr_BPTypeBR()) ? "01" : "02";
//			String cnpjf = TextUtil.retiraEspecial (I_W_C_BPartner.LBR_BPTYPEBR_PF_Individual.equals(bpW.getlbr_BPTypeBR()) ? bpW.getlbr_CPF() : bpW.getlbr_CNPJ());
			
			//	Nosso Número
			String documentNo = TextUtil.lPad (TextUtil.retiraEspecial (bs.getDocumentNo()), 7);
			
			//	DV do Nosso Número
			documentNo += String.valueOf (bsi.getLBR_NumberInBankVD());
			
			//	Cobrança de Mora
			String instruction1 = "00";	//	Sem instrução 1
//			if (boleto.getlbr_Interest() != null && boleto.getlbr_Interest().signum() == 1)
//				instruction1 = "00";		//	Sem instrução 1
			
			//	Protesto
			String instruction2 = "00"; //	Sem instrução 2
			if (bs.isLBR_IsProtested() && bs.getLBR_ProtestDays() > 0)
				instruction2 = "06";
			
			//	Código do Participante
			//	LBR_Boleto_ID-DocumentNo/Parcel
//			String customerCode = "B" + boleto.getLBR_Boleto_ID() + 
//					"F" + (boleto.getC_Invoice_ID() > 0 ? boleto.getC_Invoice().getDocumentNo() : "") + 
//					"P" + boleto.getlbr_PayScheduleNo();
			
			// Seu Número composto de Fatura/Parcela
//			String seuNumero = "";			
//			if (boleto.getC_Invoice_ID() > 0)
//				seuNumero = boleto.getC_Invoice().getDocumentNo() + boleto.getlbr_PayScheduleNo();
//			else
//				seuNumero = documentNo;
			
			//
			cnab.append("1");									//	Código do registro = 1
			cnab.append("02");									//	Tipo de inscrição do cedente
			cnab.append(TextUtil.lPad (ocnpj, 14));				//	CNPJ ou CPF do cedente
			cnab.append(TextUtil.lPad (bsi.getAgency(), 4));	//	Código da agência cedente (nota 2)
			cnab.append(TextUtil.lPad (bsi.getAccountNo(), 8));	//	Conta movimento cedente (nota 2)
			cnab.append(TextUtil.lPad (bsi.getAccountNo(), 8));	//	Conta cobrança cedente (nota 2)
			cnab.append(TextUtil.rPad (bs.getLBR_NumberInOrg(), 25));		//	Número de controle do participante, para controle por parte do cedente
			cnab.append(TextUtil.lPad ("", 8));					//	Nosso número (nota 3)
			cnab.append(TextUtil.lPad ("0", 6));				//	Data do segundo desconto
			cnab.append(TextUtil.rPad ("", 1));					//	Branco
			cnab.append(TextUtil.lPad ("", 1));					//	Informação de multa = 4, senão houver informar zero Verificar página 16
			cnab.append(TextUtil.lPad ("", 4));					//	Percentual multa por atraso %
			cnab.append(TextUtil.lPad ("", 2));					//	Unidade de valor moeda corrente = 00
			cnab.append(TextUtil.lPad ("", 13));				//	Valor do título em outra unidade (consultar banco)
			cnab.append(TextUtil.rPad ("", 4));					//	Brancos
			cnab.append(TextUtil.lPad ("", 6));					//	Data para cobrança de multa. (Nota 4)
			cnab.append(TextUtil.lPad ("1", 1));				//	Código da carteira
			cnab.append(TextUtil.lPad ("01", 2));							//	Código da ocorrência
			cnab.append(TextUtil.rPad (bs.getDocumentNo(), 10));			//	Seu número
			cnab.append(TextUtil.lPad (timeToString(bs.getDueDate()), 6));	//	Data de vencimento do título
			cnab.append(TextUtil.lPad (bs.getGrandTotal(), 13));			//	Valor do título - moeda corrente
			cnab.append(TextUtil.lPad (ROUNTING_NO, 3));					//	Número do Banco cobrador = 353 / 033
			cnab.append(TextUtil.lPad ("", 5));								//	Código da agência cobradora do Banco Santander informar somente se carteira for igual a 5, caso contrário, informar zeros.
			cnab.append(TextUtil.lPad ("01", 2));							//	Espécie de documento
			cnab.append(TextUtil.rPad ("N", 1));							//	Tipo de aceite = N
			cnab.append(TextUtil.lPad (timeToString(bs.getDateDoc()), 6));	//	Data da emissão do título
			cnab.append(TextUtil.lPad (instruction1, 2));					//	Primeira instrução cobrança
			cnab.append(TextUtil.lPad (instruction2, 2));					//	Segunda instrução cobrança
			cnab.append(TextUtil.lPad (bs.getDailyLateInterest(), 13));		//	Valor de mora a ser cobrado por dia de atraso
			cnab.append(TextUtil.lPad (timeToString(bs.getLBR_Discount1Date()), 6));	//	Data limite para concessão de desconto
			cnab.append(TextUtil.lPad (bs.getDiscountAmt(), 13));			//	Valor de desconto a ser concedido
			cnab.append(TextUtil.lPad ("", 13));							//	Valor do IOF a ser recolhido pelo Banco para nota de seguro
			cnab.append(TextUtil.lPad ("", 13));							//	Valor do abatimento a ser concedido ou valor do segundo desconto. Vide posição 71.
			cnab.append(TextUtil.lPad (payerBPTypeBR, 2));					//	Tipo de inscrição do sacado:
			cnab.append(TextUtil.lPad (payerCNPJF, 14));					//	CNPJ ou CPF do sacado
			cnab.append(TextUtil.rPad (bsi.getBPName(), 40));				//	Nome do sacado
			cnab.append(TextUtil.rPad (bsi.getAddress(false), 40));			//	Endereço do sacado
			cnab.append(TextUtil.rPad (bsi.getlbr_BPAddress3(), 12));		//	Bairro do sacado (opcional)
			cnab.append(TextUtil.lPad (bsi.getlbr_BPPostal(), 8));			//	CEP do sacado
			cnab.append(TextUtil.rPad (bsi.getlbr_BPCity(), 15));			//	Município do sacado
			cnab.append(TextUtil.rPad (bsi.getlbr_BPRegion(), 2));			//	UF Estado do sacado
			cnab.append(TextUtil.rPad ("", 30));							//	Nome do sacador ou coobrigado
			cnab.append(TextUtil.rPad ("", 1));								//	Brancos
			cnab.append(TextUtil.rPad ("I", 1));							//	Identificador do Complemento (nota 2)
			cnab.append(TextUtil.lPad (bsi.getLBR_BankAccountVD(), 2));		//	Complemento (nota 2)
			cnab.append(TextUtil.rPad ("", 6));								//	Brancos
			cnab.append(TextUtil.lPad (bs.getLBR_ProtestDays(), 2));		//	Número de dias para protesto. Quando posições 157/158 ou 159/160 for igual a 06.
			cnab.append(TextUtil.rPad ("", 1));								//	Branco
			cnab.append(TextUtil.lPad (count.getAndIncrement(), 6));		//	Número sequencial do registro no arquivo
			
			cnab.append(CR).append(LF);
		});
		
		//	Footer
		cnab.append(CNAB_REG_TYPE_FOOTER); 	//	TIPO DE REGISTRO
		cnab.append(rPad("", 393)); 		//	BRANCOS
		cnab.append(lPad(count.get(), 6)); 	//	NÚMERO SEQUENCIAL
		cnab.append(CR).append(LF);
		
		return cnab;
	}	//	StringBuilder

	/**
	 * 	BankSlip Kind
	 * 	@param KindValue
	 * 	@return
	 */
	private String convertKind (String kindValue)
	{
		switch (Integer.valueOf (kindValue))
		{
			case MLBRBankSlip.ESPECIE_DUPLICATA_MERCANTIL:
				return "01";
			case MLBRBankSlip.ESPECIE_NOTA_PROMISSORIA:
				return "02";
			case MLBRBankSlip.ESPECIE_NOTA_DE_SEGURO:
				return "03";
			case MLBRBankSlip.ESPECIE_COBRANCA_SERIADA:
				return "04";
			case MLBRBankSlip.ESPECIE_RECIBO:
				return "05";
			case MLBRBankSlip.ESPECIE_LETRA_DE_CAMBIO:
				return "10";
			case MLBRBankSlip.ESPECIE_NOTA_DE_DEBITO:
				return "11";
			case MLBRBankSlip.ESPECIE_DUPLICATA_DE_SERVICO:
				return "12";
			case MLBRBankSlip.ESPECIE_CARTAO_DE_CREDITO:
				return "31";
			case MLBRBankSlip.ESPECIE_BOLETO_DE_PROPOSTA:
				return "32";
			case MLBRBankSlip.ESPECIE_OUTROS:
				return "99";
				
			default:
				return "01";	//	Duplicata Mercantil
		}
	}	//	convertKind
}	//	generateCNABFile
