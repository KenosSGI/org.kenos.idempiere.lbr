package org.kenos.idempiere.lbr.bankslip.cnab400;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.adempierelbr.util.TextUtil;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.bankslip.ICNABGenerator;
import org.kenos.idempiere.lbr.bankslip.cnab400.bean.CNAB400;
import org.kenos.idempiere.lbr.bankslip.cnab400.bean.Record9Trailer;
import org.kenos.idempiere.lbr.bankslip.cnab400.bean.out.bmp.Record0Header;
import org.kenos.idempiere.lbr.bankslip.cnab400.bean.out.bmp.Record1Detail;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlip;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipInfo;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipMov;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipOccur;
import org.kenos.idempiere.lbr.bankslip.model.MLBRCNABFile;

/**
 * 	Generate CNAB for Itau Bank
 * 	@author Ricardo Santana
 */
public class BancoMoneyPlus implements ICNABGenerator
{
	public static final String VERSION = "1.00";
	
	/**	Bank Routing Number	*/
	public static final int ROUNTING_NO = 274;
	
	/** Payer BP Type				*/
	private static final Integer BPTYPE_CPF_PAGADOR 	= 1;
	private static final Integer BPTYPE_CNPJ_PAGADOR 	= 2;
	
	/** Aceite				*/
	private static final String IS_ACCEPTED 	= "A";
	private static final String NOT_ACCEPTED 	= "N";

	/** Multa				*/
	private static final Integer PENAULTY_SEM_MULTA 	= 0;
	private static final Integer PENAULTY_PERCENTUAL 	= 2;
	
	/**
	 * 	Generate CNAB File
	 */
	@Override
	public StringBuilder generateCNABFile (final MLBRCNABFile cnabFile)
	{
		CNAB400 cnab400 = new CNAB400();
		
		Record0Header header = new Record0Header(cnabFile);
		cnab400.addRegistro(header);
		
		//	Movements
		cnabFile.getLines().stream().forEach(line ->
		{
			MLBRBankSlipMov mov 	= line.getMovement();
			MLBRBankSlip bs 		= line.getBankSlip();
			MLBRBankSlipInfo bsi 	= line.getBankSlipInfo();
			//
			Record1Detail detail = new Record1Detail();

			//	Aceite
			String accepted = NOT_ACCEPTED;
			//
			if (MLBRBankSlip.LBR_ISACCEPTED_IsAccepted.equals(bs.getLBR_IsAccepted()))
				accepted = IS_ACCEPTED;
			
			//	Interest	
			BigDecimal interestAmt = bs.getDailyLateInterest();
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
			
			Integer penaultyType = PENAULTY_SEM_MULTA;
			BigDecimal penaultPercent = BigDecimal.ZERO;
			
			if (bs.getLBR_PenaltyType() != null 
					&& MLBRBankSlip.LBR_PENALTYTYPE_Rate.equals(bs.getLBR_PenaltyType())
					&& bs.getLBR_PenaltyValue() != null
					&& bs.getLBR_PenaltyValue().signum() == 1) {
				penaultyType = PENAULTY_PERCENTUAL;
				penaultPercent = bs.getLBR_PenaltyValue().multiply(Env.ONEHUNDRED);
			}
			
			//	CNPJ/CPF payer
			Integer payerBPTypeBR = BPTYPE_CNPJ_PAGADOR;
			String payerCNPJF = bsi.getlbr_BPCNPJ();
			//
			if (MLBRBankSlipInfo.LBR_BPTYPEBR_PF_Individual.equals(bsi.getlbr_BPTypeBR()))
				payerBPTypeBR = BPTYPE_CPF_PAGADOR;

			String identifier = bs.getLBR_BankSlipContract().getLBR_Param1();
			if (identifier == null) 
			{ 
				identifier = TextUtil.lPad("0", 3) +						//	Zero
						TextUtil.lPad(bsi.getLBR_BankSlipFoldCode(), 2) +	//	Fold
						TextUtil.lPad(bsi.getlbr_AgencyNo(), 4) +			//	Agency
						TextUtil.lPad(bsi.getAccountNo(), 7) +				//	Account
						TextUtil.lPad(bsi.getLBR_BankAccountVD(), 1);		//	Account VD
			}
			
			detail.setIdentificacaoEmpresa(identifier);
			detail.setNossoNumero(bs.getLBR_NumberInBank());
			detail.setNossoNumeroDV(bsi.getLBR_NumberInBankVD());
			detail.setValorDoTitulo(bs.getGrandTotal());
			detail.setCodOcorrencia(mov.getValue());
			detail.setCodIdentificacao(bs.getIdentifier(15));

			String movType = mov.getType();
			
			//	Modificar vencimento
			if (MLBRBankSlipOccur.TYPE_ChangeDueDate.equals(movType))
			{
				detail.setVencimento(mov.getDueDate());
			}

			//	Conceder abatimento
			else if (MLBRBankSlipOccur.TYPE_GiveRebate.equals(movType))
			{
				detail.setAbatimento(mov.getWriteOffAmt());
			}

			//	Protestar
			else if (MLBRBankSlipOccur.TYPE_AskToProtest.equals(movType))
			{
				detail.setPrazo(mov.getLBR_ProtestDays());
			}

			//	Those occurrencies does not need to fill any other field.
			else if (TextUtil.match (movType, 
					MLBRBankSlipOccur.TYPE_AskToWriteOff, 
					MLBRBankSlipOccur.TYPE_CancelProtest, 
					MLBRBankSlipOccur.TYPE_DoNotProtest)) {}
			
			else
			{
				detail.setMulta(penaultyType);
				detail.setPercentualMulta(penaultPercent);
				detail.setNoDocumento(bs.getLBR_NumberInOrg());
				detail.setVencimento(bs.getDueDate());
				detail.setEspecie(convertKind (bsi.getLBR_BankSlipKindCode()));
				detail.setAceite(accepted);
				detail.setDataDeEmissao(bs.getDateDoc());
				detail.setJurosDe1Dia(interestAmt);
				detail.setDescontoAte(discountDate);
				detail.setValorDoDesconto(discountAmt);
				detail.setValorDoIOF(bs.getLBR_IOFAmt());
				detail.setAbatimento(bs.getDiscountAmt());
				detail.setCodInscricaoPagador(payerBPTypeBR);
				detail.setNumInscricaoPagador(payerCNPJF);
				detail.setNome(bsi.getBPName());
				detail.setLogradouro(bsi.getAddress(true));
				detail.setBairro(bsi.getlbr_BPAddress3());
				detail.setCep(bsi.getlbr_BPPostal());
				detail.setCidade(bsi.getlbr_BPCity());
				detail.setEstado(bsi.getlbr_BPRegion());
				detail.setSacadorAvalista(bsi.getLBR_GuarantorBPName());
			}
			//
			cnab400.addRegistro(detail);
		});
		
		Record9Trailer trailer = new Record9Trailer();
		cnab400.addRegistro(trailer);
		
		return cnab400.exportTxt();
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
			case MLBRBankSlip.ESPECIE_CHEQUE:
				return "01";
			case MLBRBankSlip.ESPECIE_DUPLICATA_MERCANTIL:
				return "02";
			case MLBRBankSlip.ESPECIE_DUPLICATA_MERCANTIL_POR_INDICACAO:
				return "03";
			case MLBRBankSlip.ESPECIE_DUPLICATA_DE_SERVICO:
				return "04";
			case MLBRBankSlip.ESPECIE_DUPLICATA_DE_SERVICO_POR_INDICACAO:
				return "05";
			case MLBRBankSlip.ESPECIE_DUPLICATA_RURAL:
				return "06";
			case MLBRBankSlip.ESPECIE_LETRA_DE_CAMBIO:
				return "07";
			case MLBRBankSlip.ESPECIE_NOTA_DE_CREDITO_COMERCIAL:
				return "08";
			case MLBRBankSlip.ESPECIE_NOTA_DE_CREDITO_PARA_EXPORTACAO:
				return "09";
			case MLBRBankSlip.ESPECIE_NOTA_DE_CREDITO_INDUSTRIAL:
				return "10";
			case MLBRBankSlip.ESPECIE_NOTA_DE_CREDITO_RURAL:
				return "11";
			case MLBRBankSlip.ESPECIE_NOTA_PROMISSORIA:
				return "12";
			case MLBRBankSlip.ESPECIE_NOTA_PROMISSORIA_RURAL:
				return "13";
			case MLBRBankSlip.ESPECIE_TRIPLICATA_MERCANTIL:
				return "14";
			case MLBRBankSlip.ESPECIE_TRIPLICATA_DE_SERVICO:
				return "15";
			case MLBRBankSlip.ESPECIE_NOTA_DE_SEGURO:
				return "16";
			case MLBRBankSlip.ESPECIE_RECIBO:
				return "17";
			case MLBRBankSlip.ESPECIE_BLOQUETO:
				return "18";
			case MLBRBankSlip.ESPECIE_NOTA_DE_DEBITO:
				return "19";
			case MLBRBankSlip.ESPECIE_APOLICE_DE_SEGURO:
				return "20";
			case MLBRBankSlip.ESPECIE_MENSALIDADE_ESCOLAR:
				return "21";
			case MLBRBankSlip.ESPECIE_PARCELA_DE_CONSORCIO:
				return "22";
			case MLBRBankSlip.ESPECIE_NOTA_FISCAL:
				return "23";
			case MLBRBankSlip.ESPECIE_DOCUMENTO_DE_DIVIDA:
				return "24";
			case MLBRBankSlip.ESPECIE_CEDULA_DE_PRODUTO_RURAL:
				return "25";
			case MLBRBankSlip.ESPECIE_WARRANT:
				return "26";
			case MLBRBankSlip.ESPECIE_DIVIDA_ATIVA_DE_ESTADO:
				return "27";
			case MLBRBankSlip.ESPECIE_DIVIDA_ATIVA_DE_MUNICIPIO:
				return "28";
			case MLBRBankSlip.ESPECIE_DIVIDA_ATIVA_DA_UNIAO:
				return "29";
			case MLBRBankSlip.ESPECIE_ENCARGOS_CONDOMINIAIS:
				return "30";
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
	
	/**
	 * 	Available occurrences in this layout
	 */
	@Override
	public List<String> getAvailableOccurs()
	{
		List<String> occurs = new ArrayList<String> ();
		occurs.add(MLBRBankSlipOccur.TYPE_ChangeDueDate);
		occurs.add(MLBRBankSlipOccur.TYPE_GiveRebate);
		occurs.add(MLBRBankSlipOccur.TYPE_AskToWriteOff);
		occurs.add(MLBRBankSlipOccur.TYPE_AskToProtest);
		occurs.add(MLBRBankSlipOccur.TYPE_DoNotProtest);
		occurs.add(MLBRBankSlipOccur.TYPE_CancelProtest);
		return occurs;
	}	//	getAvailableOccurs
}	//	generateCNABFile