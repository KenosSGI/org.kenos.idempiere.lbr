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
 * 	Generate CNAB for CAIXA ECONOMICA Bank
 * 	@author Ricardo Santana
 */
public class CaixaEconomica104 implements ICNABGenerator
{
	/**	Bank Routing Number	*/
	public static final int ROUNTING_NO = 104;
	
	/**	Bank Name			*/
	private static final String BANK_NAME = "CAIXA ECONOMICA FEDERAL";
	
//	/** Org BP Type				*/
	private static final String BPTYPE_CPF_BENEFICIARIO 		= "01";
	private static final String BPTYPE_CNPJ_BENEFICIARIO 		= "02";
	
	/** Payer BP Type				*/
	private static final String BPTYPE_CPF_PAGADOR 		= "01";
	private static final String BPTYPE_CNPJ_PAGADOR 	= "02";
	
	private static final String SEM_INTRUCAO	= "00";

	/** Aceite				*/
	private static final String IS_ACCEPTED 	= "A";
	private static final String NOT_ACCEPTED 	= "N";
	
	/**Versão do Layout */
	private static final int LAYOUT_VERSION     = 007;
	
	/**
	 * 	Generate CNAB File
	 */
	@Override
	public StringBuilder generateCNABFile (final MLBRCNABFile cnabFile)
	{
		final StringBuilder cnab = new StringBuilder ();
		
		//	Header		

		cnab.append(CNAB_REG_TYPE_HEADER); 						//	TIPO DE REGISTRO
		cnab.append(1); 										//	OPERAÇÃO
		cnab.append(rPad("",7)); 						        //	LITERAL DE REMESSA
		cnab.append(lPad(01,2)); 								//	CÓDIGO DE SERVIÇO
		cnab.append(rPad("COBRANCA", 15)); 						//	LITERAL DE SERVIÇO	
		cnab.append(cnabFile.get_Value(20));	                //	AGÊNCIA
		cnab.append(lPad(cnabFile.getLBR_BankSlipContract().getLBR_AccordNo(),7)); //  CÓDIGO BENEFICIÁRIO
		cnab.append(rPad(" ", 9)); 							    //	USO EXCLUSIVO
		cnab.append(rPad(cnabFile.getlbr_LegalEntity(), 30)); 	//	NOME DA EMPRESA
		cnab.append(cnabFile.getRoutingNo()); 					//	CÓDIGO DO BANCO
		cnab.append(rPad(BANK_NAME, 15)); 						//	NOME DO BANCO
		cnab.append(timeToString(cnabFile.getDateDoc())); 		//	DATA DE GERAÇÃO
		cnab.append(lPad(LAYOUT_VERSION,3));	                //  VERSÃO DE LAYOUT
		cnab.append(rPad("", 286)); 							//	BRANCOS
		cnab.append(lPad("1", 5)); 								//	NÚMERO SEQUENCIAL
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
			//cnab.append(rPad(CNAB_REG_TYPE_DETAIL_7, 1));			//	TIPO DE REGISTRO
			
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
			
			String intruction1 = SEM_INTRUCAO;
			String intruction2 = SEM_INTRUCAO;
			String intruction3 = SEM_INTRUCAO;
			
			//	CNPJ/CPF payer
			String payerBPTypeBR = BPTYPE_CNPJ_PAGADOR;
			String payerCNPJF = bsi.getlbr_BPCNPJ();
			//
			if (MLBRBankSlipInfo.LBR_BPTYPEBR_PF_Individual.equals(bsi.getlbr_BPTypeBR()))
				payerBPTypeBR = BPTYPE_CPF_PAGADOR;

			
			cnab.append(1); 						                //	TIPO DE REGISTRO
			cnab.append(rPad(payerBPTypeBR, 2));					//	CÓDIGO DE INSCRIÇÃO
			cnab.append(lPad(payerCNPJF, 14));						//	NÚMERO DE INSCRIÇÃO		
		    cnab.append(lPad(0,3));                                 //  USO EXCLUSIVO DA CAIXA
			cnab.append(lPad(cnabFile.getLBR_BankSlipContract().getLBR_AccordNo(),7)); //  CÓDIGO BENEFICIÁRIO
			cnab.append(lPad(1,1));                              	//  ID EMISSÃO
			cnab.append(lPad(0,1));                              	//  ID POSTAGEM
			cnab.append(lPad(0,2));                                 //  TAXA DE PERMANÊNCIA
			cnab.append(rPad(bs.getLBR_NumberInOrg(), 25));			//	USO DA EMPRESA
			cnab.append(lPad(14, 2)); 		                        //	MODALIDADE DE INDETIFICAÇ
			cnab.append(lPad(bs.getLBR_NumberInBank(), 15)); 		//	NOSSO NÚMERO
			cnab.append(rPad("",2));                                //  BRANCOS
			cnab.append(lPad(1,1));                                 //  USO LIVRE
			cnab.append(rPad("", 1));                               //  CÓDIGO DE JUROS
			cnab.append(lPad(timeToString(bs.getDueDate()), 6));	//	DATA DE JUROS
			cnab.append(lPad(0,1));                              	//  CÓDIGO DE DESCONTO
			cnab.append(rPad("",22));                               //  BRANCOS
			cnab.append(lPad("1", 2));								//  CARTEIRA
			cnab.append(lPad(mov.getValue(),2));                    //  CÓDIGO DE OCORRÊNCIA
			cnab.append(rPad(bs.getLBR_NumberInOrg(), 10));			//	USO DA EMPRESA
			cnab.append(lPad(timeToString(bs.getDueDate()), 6));	//	DATA DE VENCIMENTO
			cnab.append(lPad(bs.getGrandTotal(), 13));				//	VALOR DO TÍTULO
			cnab.append(bsi.getRoutingNo());				        //	CÓDIGO DO BANCO
			cnab.append(lPad(0, 5));								//	AGÊNCIA COBRADORA
			cnab.append(rPad(convertKind(bsi.getLBR_BankSlipKindCode()), 2));	//	ESPÉCIE
			cnab.append(rPad(accepted, 1));							//	ACEITE
			cnab.append(lPad(timeToString(bs.getDateDoc()), 6));	//	DATA DE EMISSÃO
			cnab.append(lPad(intruction1, 2));						//	INSTRUÇÃO 1
			cnab.append(lPad(intruction2, 2));						//	INSTRUÇÃO 2
			cnab.append(lPad(penaltyAmt, 13));						//	JUROS DE 1 DIA
			cnab.append(lPad(timeToString(discountDate), 6));		//	DESCONTO ATÉ
			cnab.append(lPad(discountAmt, 13));						//	VALOR DO DESCONTO
			cnab.append(lPad(bs.getLBR_IOFAmt(), 13));				//	VALOR DO IOF
			cnab.append(lPad(bs.getDiscountAmt(), 13));				//	VALOR DO ABATIMENTO
			cnab.append(rPad(orgBPTypeBR, 2));					    //	TIPO DE INSCRIÇÃO
			cnab.append(lPad(orgCNPJF, 14));						//	NÚMERO DE INSCRIÇÃO
			cnab.append(rPad(bsi.getBPName().toUpperCase(), 40));	//	NOME
			cnab.append(rPad(bsi.getAddress(true).toUpperCase(), 40));// LOGRADOURO
			cnab.append(rPad(bsi.getlbr_BPAddress3().toUpperCase(), 12));//	BAIRRO
			cnab.append(lPad(bsi.getlbr_BPPostal(), 8));			//	CEP
			cnab.append(rPad(bsi.getlbr_BPCity().toUpperCase(), 15));//	CIDADE
			cnab.append(rPad(bsi.getlbr_BPRegion(), 2));            //	ESTADO
			cnab.append(lPad(0, 6));	                            //	DATA DA MULTA
			cnab.append(lPad(0, 10));								//  VALOR DA MULTA
			cnab.append(rPad(bsi.getLBR_GuarantorBPName(), 22));	//	SACADOR/AVALISTA
			cnab.append(lPad(intruction3, 2));						//	INSTRUÇÃO 3
			cnab.append(lPad(0, 2));								//	PRAZO
			cnab.append(lPad(1, 1));								//	MOEDA
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
	 * 
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
			case MLBRBankSlip.ESPECIE_RECIBO:
				return "05";
			case MLBRBankSlip.ESPECIE_LETRA_DE_CAMBIO:
				return "08";
			case MLBRBankSlip.ESPECIE_WARRANT:
				return "09";
			case MLBRBankSlip.ESPECIE_CHEQUE:
				return "10";
			case MLBRBankSlip.ESPECIE_DUPLICATA_DE_SERVICO:
				return "12";
			case MLBRBankSlip.ESPECIE_NOTA_DE_DEBITO:
				return "13";
			case MLBRBankSlip.ESPECIE_APOLICE_DE_SEGURO:
				return "15";
			case MLBRBankSlip.ESPECIE_DIVIDA_ATIVA_DA_UNIAO:
				return "25";
			case MLBRBankSlip.ESPECIE_DIVIDA_ATIVA_DE_ESTADO:
				return "26";
			case MLBRBankSlip.ESPECIE_DIVIDA_ATIVA_DE_MUNICIPIO:
				return "27";
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