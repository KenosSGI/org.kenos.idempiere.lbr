package org.kenos.idempiere.lbr.bankslip.cnab;

import static org.adempierelbr.util.TextUtil.lPad;
import static org.adempierelbr.util.TextUtil.rPad;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.concurrent.atomic.AtomicInteger;

import org.adempierelbr.util.TextUtil;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.bankslip.ICNABGenerator;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlip;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipInfo;
import org.kenos.idempiere.lbr.bankslip.model.MLBRCNABFile;

/**
 * 	Generate CNAB for Itau Bank
 * 	@author Ricardo Santana
 */
public class Bradesco237 implements ICNABGenerator
{
	/**	Bank Routing Number	*/
	public static final int ROUNTING_NO = 237;
	
	/**	Bank Name			*/
	private static final String BANK_NAME = "BRADESCO";
	
//	/** Org BP Type				*/
//	private static final String BPTYPE_CPF_BENEFICIARIO 		= "01";
//	private static final String BPTYPE_CNPJ_BENEFICIARIO 		= "02";
//	private static final String BPTYPE_CPF_SACADOR_AVALISTA 	= "03";
//	private static final String BPTYPE_CNPJ_SACADOR_AVALISTA 	= "04";
	
	/** Payer BP Type				*/
	private static final String BPTYPE_CPF_PAGADOR 		= "01";
	private static final String BPTYPE_CNPJ_PAGADOR 	= "02";
	
	/** Aceite				*/
	private static final String IS_ACCEPTED 	= "A";
	private static final String NOT_ACCEPTED 	= "N";
	
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
		cnab.append(lPad(cnabFile.getLBR_BankSlipContract().getLBR_AccordNo(), 20));
		cnab.append(lPad(cnabFile.getlbr_LegalEntity(), 30)); 	//	NOME DA EMPRESA
		cnab.append(cnabFile.getRoutingNo()); 					//	CÓDIGO DO BANCO
		cnab.append(lPad(BANK_NAME, 15)); 						//	NOME DO BANCO
		cnab.append(timeToString(cnabFile.getDateDoc())); 		//	DATA DE GERAÇÃO
		cnab.append(rPad("", 8)); 								//	BRANCOS
		cnab.append(rPad("MX", 2)); 							//	MX
		cnab.append(lPad(cnabFile.getSeqNo(), 7));				//	SEQUENCIAL
		cnab.append(rPad("", 277)); 							//	BRANCOS
		cnab.append(lPad("1", 6)); 								//	NÚMERO SEQUENCIAL
		cnab.append(CR).append(LF);
		
		AtomicInteger count = new AtomicInteger (2);
		
		//	Movements
		cnabFile.getLines().stream().forEach(line ->
		{
//			MLBRBankSlipMov mov 	= line.getMovement();
			MLBRBankSlip bs 		= line.getBankSlip();
			MLBRBankSlipInfo bsi 	= line.getBankSlipInfo();
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

			//	Aceite
			String accepted = NOT_ACCEPTED;
			//
			if (MLBRBankSlip.LBR_ISACCEPTED_IsAccepted.equals(bs.getLBR_IsAccepted()))
				accepted = IS_ACCEPTED;
			
			//	Penalty
			BigDecimal penaltyAmt = Env.ZERO;
			
			//	Mora por atraso
			if (bs.getLBR_PenaltyDays() == 1)
			{
				if (MLBRBankSlip.LBR_PENALTYTYPE_Amount.equals(bs.getLBR_PenaltyType()))
					penaltyAmt = bs.getLBR_PenaltyValue();
				else if (MLBRBankSlip.LBR_PENALTYTYPE_Rate.equals(bs.getLBR_PenaltyType()))
					penaltyAmt = bs.getGrandTotal().multiply(bs.getLBR_PenaltyValue());
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
			
			cnab.append(lPad(0, 5));								//	AGÊNCIA
			cnab.append(rPad(null, 1));								//	DÍGITO
			cnab.append(lPad(0, 5));								//	RAZÃO
			cnab.append(lPad(0, 7));								//	CONTA
			cnab.append(lPad(0, 1));								//	DÍGITO

			
			cnab.append(lPad(0, 1));								//	ZERO
			cnab.append(lPad(bsi.getLBR_BankSlipFoldValue(), 3));	//	CARTEIRA
			cnab.append(lPad(bsi.getlbr_AgencyNo(), 5));			//	AGÊNCIA
			cnab.append(lPad(bsi.getAccountNo(), 7));				//	CONTA
			cnab.append(lPad(bsi.getLBR_BankAccountVD(), 1));		//	DÍGITO
			
			
			String controleParticipante = "B" + bs.getLBR_BankSlip_ID() + 
					"F" + (bs.getC_Invoice_ID() > 0 ? bs.getC_Invoice().getDocumentNo() : "") + 
					"P" + bs.getlbr_PayScheduleNo();

			
			cnab.append(rPad(controleParticipante, 25));			//	USO DA EMPRESA
			cnab.append(lPad(ROUNTING_NO, 3));						//	COD BANCO
			
			cnab.append(lPad(0, 1));								//	MULTA
			cnab.append(lPad(0, 4));								//	PERCENTUAL
			
			cnab.append(lPad(bs.getLBR_NumberInBank(), 11));		//	NOSSO NÚMERO
			cnab.append(lPad(bsi.getLBR_NumberInBankVD(), 1));
			
			cnab.append(lPad(0, 10));								//	DESCONTO
			cnab.append("2");
			cnab.append("N");
			cnab.append(rPad(null, 10));							//	BRANCOS
			cnab.append(rPad(null, 1));								//	BRANCOS
			cnab.append(lPad("2", 1));								//	BRANCOS
			cnab.append(rPad(null, 2));								//	BRANCOS
			cnab.append(lPad(line.getMovement().getValue(), 2));	//	IDENT. DA OCORRÊNCIA

			cnab.append(rPad(bs.getLBR_NumberInOrg(), 10));
			cnab.append(lPad(timeToString(bs.getDueDate()), 6));	//	DATA DE VENCIMENTO
			cnab.append(lPad(bs.getGrandTotal(), 13));				//	VALOR DO TÍTULO
			cnab.append(lPad(0, 3));								//	ZERO
			cnab.append(lPad(0, 5));								//	ZERO

			cnab.append(rPad(convertKind (bsi.getLBR_BankSlipKindCode()), 2));	//	ESPÉCIE
			cnab.append(rPad(accepted, 1));							//	ACEITE
			cnab.append(lPad(timeToString(bs.getDateDoc()), 6));	//	DATA DE EMISSÃO
			
			cnab.append(lPad(0, 2));								//	INSTRUÇÃO 1
			cnab.append(lPad(0, 2));								//	INSTRUÇÃO 2
			cnab.append(lPad(penaltyAmt, 13));						//	JUROS DE 1 DIA
			cnab.append(lPad(timeToString(discountDate), 6));		//	DESCONTO ATÉ
			cnab.append(lPad(discountAmt, 13));						//	VALOR DO DESCONTO
			cnab.append(lPad(bs.getLBR_IOFAmt(), 13));				//	VALOR DO IOF
			cnab.append(lPad(bs.getDiscountAmt(), 13));				//	VALOR DO ABATIMENTO
			cnab.append(lPad(payerBPTypeBR, 2));					//	CÓDIGO DE INSCRIÇÃO
			cnab.append(lPad(payerCNPJF, 14));						//	NÚMERO DE INSCRIÇÃO
			cnab.append(rPad(bsi.getBPName(), 40));					//	NOME
			cnab.append(rPad(bsi.getAddress(true), 40));			//	LOGRADOURO
			cnab.append(rPad("", 12));								//	1A MENSAGEM
			cnab.append(lPad(bsi.getlbr_BPPostal(), 8));			//	CEP
			cnab.append(rPad("", 60));								//	2A MENSAGEM
			cnab.append(lPad(count.getAndIncrement(), 6));			//	NÚMERO SEQÜENCIAL
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
