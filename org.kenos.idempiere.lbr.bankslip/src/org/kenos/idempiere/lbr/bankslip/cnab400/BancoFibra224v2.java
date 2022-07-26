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
import org.kenos.idempiere.lbr.bankslip.cnab400.bean.fibra.Record0Header;
import org.kenos.idempiere.lbr.bankslip.cnab400.bean.out.fibra.Record1Detail;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlip;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipInfo;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipMov;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipOccur;
import org.kenos.idempiere.lbr.bankslip.model.MLBRCNABFile;

/**
 * 	Generate CNAB for Itau Bank
 * 	@author Ricardo Santana
 */
public class BancoFibra224v2 implements ICNABGenerator
{
	public static final String VERSION = "2.00";
	
	/**	Bank Routing Number	*/
	public static final int ROUNTING_NO = 224;
	
	/** Org BP Type				*/
	private static final Integer BPTYPE_CPF_BENEFICIARIO 		= 1;
	private static final Integer BPTYPE_CNPJ_BENEFICIARIO 		= 2;
	private static final Integer BPTYPE_CPF_SACADOR_AVALISTA 	= 3;
	private static final Integer BPTYPE_CNPJ_SACADOR_AVALISTA 	= 4;
	
	/** Payer BP Type				*/
	private static final Integer BPTYPE_CPF_PAGADOR 		= 1;
	private static final Integer BPTYPE_CNPJ_PAGADOR 	= 2;
	
	/** Aceite				*/
	private static final String IS_ACCEPTED 	= "A";
	private static final String NOT_ACCEPTED 	= "N";

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
			Record1Detail detail =  new Record1Detail();
			
			
			
			Integer orgBPTypeBR = BPTYPE_CNPJ_BENEFICIARIO;
			String orgCNPJF = bsi.getlbr_CNPJ();
			//
			if (bs.getGuarantorBP_ID() > 0)
			{
				if (MLBRBankSlipInfo.LBR_GUARANTORBPTYPE_PJ_LegalEntity.equals(bsi.getLBR_GuarantorBPType()))
					orgBPTypeBR = BPTYPE_CNPJ_SACADOR_AVALISTA;
				else if (MLBRBankSlipInfo.LBR_GUARANTORBPTYPE_PF_Individual.equals(bsi.getLBR_GuarantorBPType()))
					orgBPTypeBR = BPTYPE_CPF_SACADOR_AVALISTA;
				//
				orgCNPJF = bsi.getLBR_GuarantorCNPJ();	//	CPF and CNPJ
			}
			else if (MLBRBankSlipInfo.LBR_ORGBPTYPE_PF_Individual.equals(bsi.getLBR_OrgBPType()))
				orgBPTypeBR = BPTYPE_CPF_BENEFICIARIO;

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
			
			//	CNPJ/CPF payer
			Integer payerBPTypeBR = BPTYPE_CNPJ_PAGADOR;
			String payerCNPJF = bsi.getlbr_BPCNPJ();
			//
			if (MLBRBankSlipInfo.LBR_BPTYPEBR_PF_Individual.equals(bsi.getlbr_BPTypeBR()))
				payerBPTypeBR = BPTYPE_CPF_PAGADOR;

			detail.setCodInscricaoEmpresa(orgBPTypeBR);
			detail.setNumInscricaoEmpresa(orgCNPJF);
			detail.setCodEmpresa(cnabFile.getLBR_BankSlipContract().getLBR_AccordNo());
			detail.setUsoDaEmpresa(bs.getLBR_NumberInOrg());
			detail.setCodCarteira(bsi.getLBR_BankSlipFoldCode());
			detail.setCodMulta(0);
			detail.setValMulta("0");
			detail.setNumDias(0);
			detail.setNossoNumero(bs.getLBR_NumberInBank());
			detail.setCodOcorrencia(mov.getValue());
			
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
				detail.setNoDocumento(bs.getLBR_NumberInOrg());
				detail.setVencimento(bs.getDueDate());
				detail.setValorDoTitulo(bs.getGrandTotal());
				detail.setCodigoDoBanco(cnabFile.getRoutingNoAsInt());
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
				detail.setPrazo(0);
				detail.setCodMoeda(0);
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
			case MLBRBankSlip.ESPECIE_DUPLICATA_MERCANTIL:
				return "01";
			case MLBRBankSlip.ESPECIE_NOTA_PROMISSORIA:
				return "02";
			case MLBRBankSlip.ESPECIE_NOTA_DE_SEGURO:
				return "03";
			case MLBRBankSlip.ESPECIE_MENSALIDADE_ESCOLAR:
				return "04";
			case MLBRBankSlip.ESPECIE_RECIBO:
				return "05";
			case MLBRBankSlip.ESPECIE_CONTRATO:
				return "06";
			case MLBRBankSlip.ESPECIE_COSSEGURO:
				return "07";
			case MLBRBankSlip.ESPECIE_DUPLICATA_DE_SERVICO:
				return "08";
			case MLBRBankSlip.ESPECIE_LETRA_DE_CAMBIO:
				return "09";
			case MLBRBankSlip.ESPECIE_NOTA_DE_DEBITO:
				return "13";
			case MLBRBankSlip.ESPECIE_DOCUMENTO_DE_DIVIDA:
				return "15";
			case MLBRBankSlip.ESPECIE_ENCARGOS_CONDOMINIAIS:
				return "16";
			case MLBRBankSlip.ESPECIE_CONTA_DE_PRESTACAO_DE_SERVICO:
				return "17";
			case MLBRBankSlip.ESPECIE_BOLETO_DE_PROPOSTA:
				return "18";
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
