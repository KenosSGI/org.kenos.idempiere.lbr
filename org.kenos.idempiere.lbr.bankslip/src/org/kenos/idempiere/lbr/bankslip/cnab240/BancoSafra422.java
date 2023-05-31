package org.kenos.idempiere.lbr.bankslip.cnab240;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

import org.adempiere.model.POWrapper;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.adempierelbr.wrapper.I_W_C_Bank;
import org.compiere.model.MBank;
import org.compiere.model.MOrgInfo;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.bankslip.ICNABGenerator;
import org.kenos.idempiere.lbr.bankslip.cnab240.bean.CNAB240;
import org.kenos.idempiere.lbr.bankslip.cnab240.bean.CNABSegmentQRecord;
import org.kenos.idempiere.lbr.bankslip.cnab240.bean.CNABSegmentRRecord;
import org.kenos.idempiere.lbr.bankslip.cnab240.bean.CNABTrailerArquivoRecord;
import org.kenos.idempiere.lbr.bankslip.cnab240.bean.CNABTrailerLoteRecord;
import org.kenos.idempiere.lbr.bankslip.cnab240.bean.safra422.SafraCNABCobrancaRemessaHeaderLote;
import org.kenos.idempiere.lbr.bankslip.cnab240.bean.safra422.SafraCNABHeaderArquivo;
import org.kenos.idempiere.lbr.bankslip.cnab240.bean.safra422.SafraCNABSegmentP;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlip;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipInfo;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipMov;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipOccur;
import org.kenos.idempiere.lbr.bankslip.model.MLBRCNABFile;

/**
 * Generate CNAB for Itau Bank
 * 
 * @author Ricardo Santana
 */
public class BancoSafra422 implements ICNABGenerator {
	public static final String VERSION = "2.00";

	/** Bank Routing Number */
	public static final int ROUNTING_NO = 422;

	/** Org BP Type */
//	private static final Integer BPTYPE_CPF_BENEFICIARIO 		= 1;
	private static final Integer BPTYPE_CNPJ_BENEFICIARIO = 2;
//	private static final Integer BPTYPE_CPF_SACADOR_AVALISTA 	= 3;
//	private static final Integer BPTYPE_CNPJ_SACADOR_AVALISTA 	= 4;

	/** Payer BP Type */
	private static final Integer BPTYPE_CPF_PAGADOR = 1;
	private static final Integer BPTYPE_CNPJ_PAGADOR = 2;

	/** Aceite */
	private static final String IS_ACCEPTED = "A";
	private static final String NOT_ACCEPTED = "N";

	private static final String OPERATION_TYPE = "R";
	
	private static final Integer REGISTER_TYPE_HEADER_LOTE = 1;
	private static final Integer REGISTER_TYPE_DETAIL = 3;
	private static final Integer REGISTER_TYPE_TRAILER_LOTE = 5;
	private static final Integer REGISTER_TYPE_TRAILER = 9;

	// segment
	private static final String SEGMENTP = "P";
	private static final String SEGMENTQ = "Q";
	private static final String SEGMENTR = "R";

	private static final Integer CODIGO_MOEDA = 9;

	private static final Integer LAYOUT_VERSION = 103;
	private static final Integer LAYOUT_LOTE_VERSION = 60;
	
	private static final String MOVE_CODE = "01";

//	private BigDecimal valorDeTitulos = BigDecimal.ZERO;
	private int rows = 0;
//	private int titulos = 0;

	private AtomicInteger seq = new AtomicInteger(1);

	/**
	 * Generate CNAB File
	 */
	@Override
	public StringBuilder generateCNABFile(final MLBRCNABFile cnabFile) {
		CNAB240 cnab240 = new CNAB240();

		SafraCNABHeaderArquivo header = new SafraCNABHeaderArquivo();

		MBank bank = (MBank) cnabFile.getLBR_BankSlipContract().getC_BankAccount().getC_Bank();
		I_W_C_Bank bankW = POWrapper.create(bank, I_W_C_Bank.class);

		I_W_AD_OrgInfo oi = POWrapper.create(
				MOrgInfo.get(cnabFile.getCtx(), cnabFile.getC_BankAccount().getAD_Org_ID(), null),
				I_W_AD_OrgInfo.class);

		String orgCNPJ = oi.getlbr_CNPJ();
		
		header.setBanco(ROUNTING_NO);
		header.setTipoInscricaoEmpresa(BPTYPE_CNPJ_BENEFICIARIO);
		header.setInscricaoEmpresa(orgCNPJ);
		header.setAgencia(cnabFile.getAgencyNoAsInt());
		header.setDvAgencia(cnabFile.getLBR_BankAgencyVD());
		header.setConta(cnabFile.getAccountNoAsInt());
		header.setDvConta(cnabFile.getLBR_BankAccountVD());
		header.setDvAgencia(orgCNPJ);
		header.setNomeEmpresa(cnabFile.getlbr_LegalEntity());
		header.setNomeBanco(bankW.getName());
		header.setDataHoraGeracao(cnabFile.getDateDoc());
		header.setSequenciaArquivo(seq.getAndIncrement());
		header.setVersaoLayout(LAYOUT_VERSION);

		cnab240.addRegistro(header);
		
		// Header Lote
		SafraCNABCobrancaRemessaHeaderLote headerLote = new SafraCNABCobrancaRemessaHeaderLote();

		headerLote.setBanco(ROUNTING_NO);
		headerLote.setLote(seq.getAndIncrement());
		headerLote.setTipoRegistro(REGISTER_TYPE_HEADER_LOTE);
		headerLote.setTipoOperacao(OPERATION_TYPE);
		headerLote.setTipoServico(01);
		headerLote.setVersaoLeiaute(LAYOUT_LOTE_VERSION);
		headerLote.setTipoInscricaoEmpresa(BPTYPE_CNPJ_BENEFICIARIO);
		headerLote.setInscricaoEmpresa(orgCNPJ);
		headerLote.setAgencia(cnabFile.getAgencyNoAsInt());
		headerLote.setDvAgencia(cnabFile.getLBR_BankAgencyVD());
		headerLote.setConta(cnabFile.getAccountNoAsInt());
		headerLote.setDvConta(cnabFile.getLBR_BankAccountVD());
		headerLote.setNomeEmpresa(cnabFile.getlbr_LegalEntity());
		headerLote.setSequenciaLote(seq.getAndIncrement());
		headerLote.setDataGravacaoLote(cnabFile.getDateDoc());

		cnab240.addRegistro(headerLote);

		// Movements
		cnabFile.getLines().stream().forEach(line -> {
			MLBRBankSlipMov mov = line.getMovement();
			MLBRBankSlip bs = line.getBankSlip();
			MLBRBankSlipInfo bsi = line.getBankSlipInfo();

			SafraCNABSegmentP segmentP = new SafraCNABSegmentP();

			Integer penaltyType = Integer.parseInt(MLBRBankSlip.LBR_PENALTYTYPE_Amount);

//			Integer orgBPTypeBR = BPTYPE_CNPJ_BENEFICIARIO;
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

			// Aceite
			String accepted = NOT_ACCEPTED;
			//
			if (MLBRBankSlip.LBR_ISACCEPTED_IsAccepted.equals(bs.getLBR_IsAccepted()))
				accepted = IS_ACCEPTED;

			// Dígito deve ser sempre preenchido
			String agencyVD = bsi.getLBR_BankAgencyVD();
			if (agencyVD == null || agencyVD.isBlank())
				agencyVD = "0";

			// Dígito deve ser sempre preenchido
			String bankAccountVD = bsi.getLBR_BankAccountVD();
			if (bankAccountVD == null || bankAccountVD.isBlank())
				bankAccountVD = "0";

			// Interest
			BigDecimal interestAmt = bs.getDailyLateInterest();
			BigDecimal discountAmt = Env.ZERO;
			Timestamp discountDate = null;

			// Has Discount
			if (bs.getLBR_Discount1Value().signum() == 1) {
				discountDate = bs.getLBR_Discount1Date();

				// Discount Type = Amount
				if (TextUtil.match(bs.getLBR_Discount1Type(),
						MLBRBankSlip.LBR_DISCOUNT1TYPE_AmountForEarlyPaymentInBusinessDays,
						MLBRBankSlip.LBR_DISCOUNT1TYPE_AmountForEarlyPaymentInCalendarDays,
						MLBRBankSlip.LBR_DISCOUNT1TYPE_FixedAmountUntilDateSet)) {
					discountAmt = bs.getLBR_Discount1Value();
				}

				// Discount Type = Rate
				else if (TextUtil.match(bs.getLBR_Discount1Type(),
						MLBRBankSlip.LBR_DISCOUNT1TYPE_RateOverGrandTotalInBusinessDays,
						MLBRBankSlip.LBR_DISCOUNT1TYPE_RateOverGrandTotalInCalendarDays,
						MLBRBankSlip.LBR_DISCOUNT1TYPE_FixedRateUntilDateSet)) {
					discountAmt = bs.getGrandTotal().multiply(bs.getLBR_Discount1Value());
				}
			}
			// CNPJ/CPF payer
			Integer payerBPTypeBR = BPTYPE_CNPJ_PAGADOR;
			String payerCNPJF = bsi.getlbr_BPCNPJ();
			//
			if (MLBRBankSlipInfo.LBR_BPTYPEBR_PF_Individual.equals(bsi.getlbr_BPTypeBR()))
				payerBPTypeBR = BPTYPE_CPF_PAGADOR;

			segmentP.setBanco(ROUNTING_NO);
			segmentP.setLote(seq.getAndIncrement());
			segmentP.setTipoRegistro(REGISTER_TYPE_DETAIL);
			segmentP.setSequencia(seq.getAndIncrement());
			segmentP.setTipoSegmento(SEGMENTP);
			segmentP.setCodigoMovimento(MOVE_CODE);
			segmentP.setAgenciaCedente(bsi.getAgency());
			segmentP.setDvAgenciaCedente(agencyVD);
			segmentP.setContaCedente(Integer.parseInt(bsi.getAccountNo()));
			segmentP.setDvContaCedente(bankAccountVD);
			segmentP.setNossoNumero(bs.getLBR_NumberInBank());
			segmentP.setCodigoCarteira(bsi.getLBR_BankSlipFoldCode());
			segmentP.setFormaCadastramento(1);
			segmentP.setTipoDocumento("2");
			segmentP.setEmissaoBloqueto(2);
			segmentP.setDistribuicaoBloqueto("2");

			segmentP.setNumeroDocumento(bs.getDocumentNo());
			segmentP.setVencimento(bs.getDueDate());
			segmentP.setValorTitulo(bs.getGrandTotal().doubleValue());
			segmentP.setAgenciaCobradora(bsi.getAgency());
			segmentP.setDvAgenciaCobradora(agencyVD);
			segmentP.setEspecieTitulo(Integer.parseInt(convertKind(bsi.getLBR_BankSlipKindCode())));
			segmentP.setAceite(accepted);
			segmentP.setDataEmissao(bs.getDateDoc());
			segmentP.setCodigoJurosMora(penaltyType);
			segmentP.setDataJurosMora(bs.getDueDate());
			segmentP.setJurosMora(interestAmt.doubleValue());
			segmentP.setCodigoDesconto(1);
			segmentP.setDataDesconto(discountDate);
			segmentP.setDesconto(discountAmt.doubleValue());
			segmentP.setValorIOF(bs.getLBR_IOFAmt().doubleValue());
			segmentP.setValorAbatimento(bs.getDiscountAmt().doubleValue());
			segmentP.setCodigoProtesto(2);
			segmentP.setPrazoProtesto(mov.getLBR_ProtestDays());
			segmentP.setCodigoBaixaDevolucao(2);
			segmentP.setCodigoMoeda(CODIGO_MOEDA);
			segmentP.setNumeroContrato(0);
			segmentP.setUsoLivre(1);

			cnab240.addRegistro(segmentP);
			// Segment Q
			CNABSegmentQRecord segmentQ = new CNABSegmentQRecord();
			segmentQ.setBanco(ROUNTING_NO);
			segmentQ.setLote(seq.getAndIncrement());
			segmentQ.setTipoRegistro(REGISTER_TYPE_DETAIL);
			segmentQ.setSequencia(seq.getAndIncrement());
			segmentQ.setTipoSegmento(SEGMENTQ);
			segmentQ.setCodigoMovimento(MOVE_CODE);
			segmentQ.setTipoInscricaoSacado(payerBPTypeBR);
			segmentQ.setInscricaoSacado(payerCNPJF);
			segmentQ.setNomeSacado(bsi.getBPName());			
			segmentQ.setEnderecoSacado(bsi.getAddress(true));
			segmentQ.setBairroSacado(bsi.getlbr_BPAddress3());
			segmentQ.setCepSacado(bsi.getlbr_BPPostal());
			segmentQ.setMunicipioSacado(bsi.getlbr_BPCity());
			segmentQ.setUfSacado(bsi.getlbr_BPRegion());
			
			cnab240.addRegistro(segmentQ);
			// Segment R
			CNABSegmentRRecord segmentR = new CNABSegmentRRecord();
			segmentR.setBanco(ROUNTING_NO);
			segmentR.setLote(seq.getAndIncrement());
			segmentR.setTipoRegistro(REGISTER_TYPE_DETAIL);
			segmentR.setSequencia(seq.getAndIncrement());
			segmentR.setTipoSegmento(SEGMENTR);
			segmentR.setCodigoMovimento(MOVE_CODE);
			segmentR.setCodigoMulta(2);
			segmentR.setDataMulta(bs.getDueDate());
			segmentR.setMulta(bs.getCalculatedPenaltyAmt().doubleValue());

			cnab240.addRegistro(segmentR);

			rows += 3;;
		});

		CNABTrailerLoteRecord trailerLote = new CNABTrailerLoteRecord();
		trailerLote.setBanco(ROUNTING_NO);
		trailerLote.setLote(seq.getAndIncrement());
		trailerLote.setTipoRegistro(REGISTER_TYPE_TRAILER_LOTE);
		trailerLote.setQuantidadeRegistros(rows + 2);

		cnab240.addRegistro(trailerLote);

		// Trailer
		CNABTrailerArquivoRecord trailer = new CNABTrailerArquivoRecord();
		trailer.setBanco(ROUNTING_NO);
		trailer.setLote(seq.getAndIncrement());
		trailer.setTipoRegistro(REGISTER_TYPE_TRAILER);
		trailer.setQuantidadeLotes(1);
		trailer.setQuantidadeContasConciliacao(rows + 4);
		
		cnab240.addRegistro(trailer);

		return cnab240.exportTxt();
	} // StringBuilder

	/**
	 * BankSlip Kind
	 * 
	 * @param KindValue
	 * @return
	 */
	private String convertKind(String kindValue) {
		switch (Integer.valueOf(kindValue)) {
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
			return "01"; // Duplicata Mercantil
		}
	} // convertKind

	/**
	 * Available occurrences in this layout
	 */
	@Override
	public List<String> getAvailableOccurs() {
		List<String> occurs = new ArrayList<String>();
		occurs.add(MLBRBankSlipOccur.TYPE_ChangeDueDate);
		occurs.add(MLBRBankSlipOccur.TYPE_GiveRebate);
		occurs.add(MLBRBankSlipOccur.TYPE_AskToWriteOff);
		occurs.add(MLBRBankSlipOccur.TYPE_AskToProtest);
		occurs.add(MLBRBankSlipOccur.TYPE_DoNotProtest);
		occurs.add(MLBRBankSlipOccur.TYPE_CancelProtest);
		return occurs;
	} // getAvailableOccurs
} // generateCNABFile
