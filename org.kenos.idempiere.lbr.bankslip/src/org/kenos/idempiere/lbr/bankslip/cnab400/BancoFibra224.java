package org.kenos.idempiere.lbr.bankslip.cnab400;

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
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipMov;
import org.kenos.idempiere.lbr.bankslip.model.MLBRCNABFile;

/**
 * 	Generate CNAB for Banco Fibra Bank
 * 	@author Ricardo Santana
 */
public class BancoFibra224 implements ICNABGenerator
{
	/**	Bank Routing Number	*/
	public static final int ROUNTING_NO = 224;
	
	/**	Bank Name			*/
	private static final String BANK_NAME = "BANCO FIBRA";
	
//	/** Org BP Type				*/
	private static final String BPTYPE_CPF_BENEFICIARIO 		= "01";
	private static final String BPTYPE_CNPJ_BENEFICIARIO 		= "02";
	
	/** Payer BP Type				*/
	private static final String BPTYPE_CPF_PAGADOR 		= "03";
	private static final String BPTYPE_CNPJ_PAGADOR 	= "04";
	
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
		
		String identifier = lPad (cnabFile.getlbr_AgencyNo(), 4)
				+ lPad (cnabFile.getAccountNo(), 7)
				+ lPad (cnabFile.getLBR_BankAccountVD(), 1);
		//	Header
		cnab.append(CNAB_REG_TYPE_HEADER); 						//	TIPO DE REGISTRO
		cnab.append("1"); 										//	OPERAÇÃO
		cnab.append(rPad("REMESSA",7)); 						//	LITERAL DE REMESSA
		cnab.append("01"); 										//	CÓDIGO DE SERVIÇO
		cnab.append(rPad("COBRANCA", 15)); 						//	LITERAL DE SERVIÇO	
		cnab.append(rPad(identifier, 20));						//  CÓDIGO DA EMPRESA
		cnab.append(rPad(cnabFile.getlbr_LegalEntity(), 30)); 	//	NOME DA EMPRESA
		cnab.append(cnabFile.getRoutingNo()); 					//	CÓDIGO DO BANCO
		cnab.append(rPad(BANK_NAME, 15)); 						//	NOME DO BANCO
		cnab.append(timeToString(cnabFile.getDateDoc())); 		//	DATA DE GERAÇÃO		
		cnab.append(rPad("", 294)); 							//	BRANCOS
		cnab.append(lPad("1", 6)); 								//	NÚMERO SEQUENCIAL
		cnab.append(CR).append(LF);		
		AtomicInteger count = new AtomicInteger (2);
		
		//	Movements
		cnabFile.getLines().stream().forEach(line ->
		{
			MLBRBankSlipMov mov 	= line.getMovement();
			MLBRBankSlip bs 		= line.getBankSlip();
			MLBRBankSlipInfo bsi 	= line.getBankSlipInfo();
			//
			cnab.append(rPad(CNAB_REG_TYPE_DETAIL, 1));			//	TIPO DE REGISTRO
			
			String orgBPTypeBR = BPTYPE_CNPJ_BENEFICIARIO;
			String orgCNPJF = bsi.getlbr_CNPJ();
			//
			if (MLBRBankSlipInfo.LBR_ORGBPTYPE_PF_Individual.equals(bsi.getLBR_OrgBPType()))
				orgBPTypeBR = BPTYPE_CPF_BENEFICIARIO;

			//	Aceite
			String accepted = NOT_ACCEPTED;
			//
			if (MLBRBankSlip.LBR_ISACCEPTED_IsAccepted.equals(bs.getLBR_IsAccepted())) {
				accepted = IS_ACCEPTED;
			}
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

			cnab.append(rPad(orgBPTypeBR, 2));						//	CÓDIGO DE INSCRIÇÃO
			cnab.append(lPad(orgCNPJF, 14));						//	NÚMERO DE INSCRIÇÃO		
			cnab.append(rPad(identifier, 20)); 						//  CÓDIGO DA EMPRESA
			cnab.append(rPad(bs.getLBR_NumberInOrg(), 25));			//	USO DA EMPRESA
			cnab.append(lPad(bs.getLBR_NumberInBank(), 10)); 		//	NOSSO NÚMERO
			cnab.append(lPad(bsi.getLBR_NumberInBankVD(), 1)); 		//	NOSSO NÚMERO DV
			cnab.append(rPad("", 13));								//  CARTEIRA NO CORRESPONDETE
			cnab.append(rPad("", 3));								//  BRANCO
			cnab.append(lPad(0, 1));								//  CÓDIGO MULTA
			cnab.append(lPad(0, 13));								//  VALOR/TAXA MULTA
			cnab.append(lPad(0, 2));								//  NÚMERO DE DIAS
			cnab.append(rPad("", 2));								//	USO DO BANCO			
			cnab.append(rPad(bsi.getLBR_BankSlipFoldCode(), 1));	//	CÓDIGO DA CARTEIRA	
			cnab.append(lPad(mov.getValue(), 2));					//	CÓDIGO DA OCORRÊNCIA
			cnab.append(rPad(bs.getDocumentNo(), 10));				//	NÚMERO DO DOCUMENTO
			cnab.append(lPad(timeToString(bs.getDueDate()), 6));	//	DATA DE VENCIMENTO	
			cnab.append(lPad(bs.getGrandTotal(), 13));				//	VALOR DO TÍTULO
			cnab.append(lPad(0, 3));								//	CÓDIGO DO BANCO
			cnab.append(lPad(0, 4));								//	AGÊNCIA COBRADORA
			cnab.append(lPad(0, 1));								//	DV AGÊNCIA COBRADORA
			cnab.append(rPad(convertKind (bsi.getLBR_BankSlipKindCode()), 2));	//	ESPÉCIE
			cnab.append(rPad(accepted, 1));							//	ACEITE
			cnab.append(lPad(timeToString(bs.getDateDoc()), 6));	//	DATA DE EMISSÃO
			cnab.append(lPad(0, 2));								//	INSTRUÇÃO 1
			cnab.append(lPad(0, 2));								//	INSTRUÇÃO 2
			cnab.append(lPad(penaltyAmt, 13));						//	JUROS DE 1 DIA
			cnab.append(lPad(timeToString(discountDate), 6));		//	DESCONTO ATÉ
			cnab.append(lPad(discountAmt, 13));						//	VALOR DO DESCONTO
			cnab.append(lPad(bs.getLBR_IOFAmt(), 13));				//	VALOR DO IOF
			cnab.append(lPad(0, 13));								//	VALOR DO ABATIMENTO
			cnab.append(lPad(payerBPTypeBR, 2));					//	CÓDIGO DE INSCRIÇÃO
			cnab.append(lPad(payerCNPJF, 14));						//	NÚMERO DE INSCRIÇÃO
			cnab.append(rPad(bsi.getBPName(), 30));					//	NOME
			cnab.append(rPad("", 10));								//	BRANCOS
			cnab.append(rPad(bsi.getAddress(true), 40));			//	LOGRADOURO
			cnab.append(rPad(bsi.getlbr_BPAddress3(), 12));			//	BAIRRO
			cnab.append(lPad(bsi.getlbr_BPPostal(), 8));			//	CEP
			cnab.append(rPad(bsi.getlbr_BPCity(), 15));				//	CIDADE
			cnab.append(rPad(bsi.getlbr_BPRegion(), 2));			//	ESTADO
			cnab.append(rPad(bsi.getLBR_GuarantorBPName(), 30));	//	SACADOR/AVALISTA
			cnab.append(rPad("", 4));								//	BRANCOS
			cnab.append(rPad("", 6));								//	BRANCOS
			cnab.append(lPad(0, 2));								//	Prazo
			cnab.append(lPad(0, 1));								//	Moeda
			cnab.append(lPad(count.getAndIncrement(), 6));			//	NÚMERO SEQÜENCIAL
			cnab.append(CR).append(LF);

			//	NF
			cnab.append(CNAB_REG_TYPE_DETAIL_4);					//	TYPE
			cnab.append(rPad("", 15)); 								//	Nota Fiscal 1
			cnab.append(lPad(0, 13)); 								//	Valor N Fiscal 1
			cnab.append(lPad(0, 8)); 								//	Data Emissão 1
			cnab.append(lPad(bsi.getlbr_NFeID(), 44)); 				//	Chave Acesso 1
			cnab.append(rPad("", 15)); 								//	Nota Fiscal 2
			cnab.append(lPad(0, 13)); 								//	Valor N Fiscal 2
			cnab.append(lPad(0, 8)); 								//	Data Emissão 2
			cnab.append(lPad(0, 44)); 								//	Chave Acesso 2
			cnab.append(rPad("", 15)); 								//	Nota Fiscal 3
			cnab.append(lPad(0, 13)); 								//	Valor N Fiscal 3
			cnab.append(lPad(0, 8)); 								//	Data Emissão 3
			cnab.append(lPad(0, 44)); 								//	Chave Acesso 3
			cnab.append(rPad("", 153)); 							//	BRANCO
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
			case MLBRBankSlip.ESPECIE_CHEQUE:
				return "03";
			case MLBRBankSlip.ESPECIE_LETRA_DE_CAMBIO:
				return "04";
			case MLBRBankSlip.ESPECIE_RECIBO:
				return "05";
			case MLBRBankSlip.ESPECIE_APOLICE_DE_SEGURO:
				return "08";
			case MLBRBankSlip.ESPECIE_DUPLICATA_DE_SERVICO:
				return "12";
			case MLBRBankSlip.ESPECIE_CARTAO_DE_CREDITO:
				return "31";
			case MLBRBankSlip.ESPECIE_OUTROS:
				return "99";
				
			default:
				return "99";	//	Duplicata Mercantil
		}
	}	//	convertKind
}	//	generateCNABFile
