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
import org.compiere.model.MSequence;
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
	@SuppressWarnings("unused")
	private static final String IS_ACCEPTED = "A";
	private static final String NOT_ACCEPTED = "N";

	private static final String OPERATION_TYPE = "R";
	
	private static final Integer REGISTER_TYPE_HEADER_LOTE = 1;
	private static final Integer REGISTER_TYPE_DETAIL = 3;
	private static final Integer REGISTER_TYPE_TRAILER_LOTE = 5;
	private static final Integer REGISTER_TYPE_TRAILER = 9;
	private static final Integer REGISTER_TYPE_TRAILER_LOTE_SERVICE = 9999;

	// segment
	private static final String SEGMENTP = "P";
	private static final String SEGMENTQ = "Q";
	private static final String SEGMENTR = "R";

	private static final Integer CODIGO_MOEDA = 9;

	private static final Integer LAYOUT_VERSION = 103;
	private static final Integer LAYOUT_LOTE_VERSION = 60;
	
	@SuppressWarnings("unused")
	private static final String MOVE_CODE = "01";

//	private BigDecimal valorDeTitulos = BigDecimal.ZERO;
	private int rows = 0;
//	private int titulos = 0;
	private BigDecimal totalTitulosSimples = BigDecimal.ZERO; 

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
		
		MSequence lotSequence = new MSequence(cnabFile.getCtx(),cnabFile.getLBR_BankSlipContract().getLBR_CNABLotSeq_ID(),null);
		
		header.setBanco(ROUNTING_NO);
		header.setTipoInscricaoEmpresa(BPTYPE_CNPJ_BENEFICIARIO);
		header.setInscricaoEmpresa(orgCNPJ);
		header.setAgencia(cnabFile.getAgencyNoAsInt());
		header.setConta(cnabFile.getAccountNoAsInt());
		header.setDvConta(cnabFile.getLBR_BankAccountVD());
		header.setDvAgencia(" ");
		if (cnabFile.isSOTrx()) 
			header.setCodigoRemessa(1);
		else header.setCodigoRemessa(0);
		header.setNomeEmpresa(cnabFile.getlbr_LegalEntity());
		header.setNomeBanco(bankW.getName());
		header.setDataHoraGeracao(cnabFile.getDateDoc());
		header.setSequenciaArquivo(cnabFile.getSeqNo());
		header.setVersaoLayout(LAYOUT_VERSION);

		cnab240.addRegistro(header);
		
		// Header Lote
		SafraCNABCobrancaRemessaHeaderLote headerLote = new SafraCNABCobrancaRemessaHeaderLote();

		headerLote.setBanco(ROUNTING_NO);
		headerLote.setLote(REGISTER_TYPE_HEADER_LOTE);
		headerLote.setTipoRegistro(REGISTER_TYPE_HEADER_LOTE);
		headerLote.setTipoOperacao(OPERATION_TYPE);
		headerLote.setTipoServico(01);
		headerLote.setVersaoLeiaute(LAYOUT_LOTE_VERSION);
		headerLote.setTipoInscricaoEmpresa(BPTYPE_CNPJ_BENEFICIARIO);
		headerLote.setInscricaoEmpresa(orgCNPJ);
		headerLote.setAgencia(cnabFile.getAgencyNoAsInt());
		headerLote.setDvAgencia(" ");
		headerLote.setConta(cnabFile.getAccountNoAsInt());
		headerLote.setDvConta(cnabFile.getLBR_BankAccountVD());
		headerLote.setNomeEmpresa(cnabFile.getlbr_LegalEntity());
		headerLote.setSequenciaLote(cnabFile.getSeqNo());
		headerLote.setDataGravacaoLote(cnabFile.getDateDoc());

		cnab240.addRegistro(headerLote);

		// Movements
		cnabFile.getLines().stream().forEach(line -> {
			MLBRBankSlipMov mov = line.getMovement();
			MLBRBankSlip bs = line.getBankSlip();
			MLBRBankSlipInfo bsi = line.getBankSlipInfo();

			SafraCNABSegmentP segmentP = new SafraCNABSegmentP();
			
			Integer penaltyType = 0; // Default para sem multa
			if (bs.getLBR_PenaltyType() != null)
				penaltyType = Integer.parseInt(bs.getLBR_PenaltyType());
			
			Integer interestType = Integer.parseInt(bs.getLBR_InterestType());
			// Safra aceita apenas 3 Isento ou 1 Valor por dia 
			if (interestType == 9) interestType = 3;
			else interestType = 1;
			
			Integer discountType = 0;
			if (bs.getLBR_Discount1Type() != null)
				discountType = Integer.parseInt(bs.getLBR_Discount1Type());
			
			// Aceite
			String accepted = NOT_ACCEPTED;

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
			segmentP.setLote(REGISTER_TYPE_HEADER_LOTE);
			segmentP.setTipoRegistro(REGISTER_TYPE_DETAIL);
			segmentP.setSequencia(seq.getAndIncrement());
			segmentP.setTipoSegmento(SEGMENTP);
			segmentP.setCodigoMovimento(mov.getValue());
			segmentP.setAgenciaCedente(bsi.getAgency());
			segmentP.setDvAgenciaCedente(" ");
			segmentP.setContaCedente(cnabFile.getAccountNoAsInt());
			segmentP.setDvContaCedente(cnabFile.getLBR_BankAccountVD());
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
			segmentP.setDvAgenciaCobradora(" ");
			segmentP.setEspecieTitulo(Integer.parseInt(convertKind(bsi.getLBR_BankSlipKindCode())));
			segmentP.setAceite(accepted);
			segmentP.setDataEmissao(bs.getDateDoc());
			segmentP.setCodigoJurosMora(interestType);
			segmentP.setDataJurosMora(bs.getLBR_InterestDate());
			segmentP.setJurosMora(interestAmt.doubleValue());
			segmentP.setCodigoDesconto(discountType);
			segmentP.setDataDesconto(discountDate);
			segmentP.setDesconto(discountAmt.doubleValue());
			segmentP.setValorIOF(bs.getLBR_IOFAmt().doubleValue());
			segmentP.setValorAbatimento(BigDecimal.ZERO.doubleValue());
			segmentP.setCodigoProtesto(Integer.parseInt(bs.getLBR_ProtestType()));
			segmentP.setPrazoProtesto(bs.getLBR_ProtestDays());
			segmentP.setCodigoBaixaDevolucao(Integer.parseInt(bs.getLBR_ReturnAction()));
			segmentP.setPrazoBaixaDevolucao(cnabFile.getLBR_BankSlipContract().getLBR_BankSlipConfig().getLBR_ReturnDays());
			segmentP.setCodigoMoeda(CODIGO_MOEDA);
			segmentP.setNumeroContrato(0);
			segmentP.setUsoLivre(1);

			cnab240.addRegistro(segmentP);
			// Segment Q
			CNABSegmentQRecord segmentQ = new CNABSegmentQRecord();
			segmentQ.setBanco(ROUNTING_NO);
			segmentQ.setLote(REGISTER_TYPE_HEADER_LOTE);
			segmentQ.setTipoRegistro(REGISTER_TYPE_DETAIL);
			segmentQ.setSequencia(seq.getAndIncrement());
			segmentQ.setTipoSegmento(SEGMENTQ);
			segmentQ.setCodigoMovimento(mov.getValue());
			segmentQ.setTipoInscricaoSacado(payerBPTypeBR);
			segmentQ.setInscricaoSacado(payerCNPJF);
			segmentQ.setNomeSacado(bsi.getBPName());			
			segmentQ.setEnderecoSacado(bsi.getAddress(true));
			segmentQ.setBairroSacado(bsi.getlbr_BPAddress3());
			segmentQ.setCepSacado(TextUtil.toNumeric(bsi.getlbr_BPPostal()));
			segmentQ.setMunicipioSacado(bsi.getlbr_BPCity());
			segmentQ.setUfSacado(bsi.getlbr_BPRegion());
			
			cnab240.addRegistro(segmentQ);
			// Segment R
			CNABSegmentRRecord segmentR = new CNABSegmentRRecord();
			segmentR.setBanco(ROUNTING_NO);
			segmentR.setLote(REGISTER_TYPE_HEADER_LOTE);
			segmentR.setTipoRegistro(REGISTER_TYPE_DETAIL);
			segmentR.setSequencia(seq.getAndIncrement());
			segmentR.setTipoSegmento(SEGMENTR);
			segmentR.setCodigoMovimento(mov.getValue());
			segmentR.setCodigoMulta(penaltyType);
			segmentR.setDataMulta(bs.getLBR_PenaltyDate());
			segmentR.setMulta(bs.getLBR_PenaltyValue().doubleValue());

			cnab240.addRegistro(segmentR);

			rows += 3;
			
			totalTitulosSimples = totalTitulosSimples.add(bs.getGrandTotal());
			
		});

		CNABTrailerLoteRecord trailerLote = new CNABTrailerLoteRecord();
		trailerLote.setBanco(ROUNTING_NO);
		trailerLote.setLote(REGISTER_TYPE_HEADER_LOTE);
		trailerLote.setTipoRegistro(REGISTER_TYPE_TRAILER_LOTE);
		trailerLote.setQuantidadeRegistros(rows+2);
		trailerLote.setQuantidadeTitulosSimples(cnabFile.getLines().size());
		trailerLote.setValorTitulosSimples(totalTitulosSimples.doubleValue());
		trailerLote.setValorTotalTitulosEmCarteira(BigDecimal.ZERO.doubleValue());
		
		cnab240.addRegistro(trailerLote);

		// Trailer
		CNABTrailerArquivoRecord trailer = new CNABTrailerArquivoRecord();
		trailer.setBanco(ROUNTING_NO);
		trailer.setLote(REGISTER_TYPE_TRAILER_LOTE_SERVICE);
		trailer.setTipoRegistro(REGISTER_TYPE_TRAILER);
		trailer.setQuantidadeLotes(1);
		trailer.setQuantidadeRegistros(rows + 4);
		
		cnab240.addRegistro(trailer);
		
		lotSequence.setCurrentNext(lotSequence.getCurrentNext() + 1);
		lotSequence.save(null);
		
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
			return "02";
		case MLBRBankSlip.ESPECIE_DUPLICATA_DE_SERVICO:
			return "04";
		case MLBRBankSlip.ESPECIE_NOTA_PROMISSORIA:
			return "12";
		case MLBRBankSlip.ESPECIE_RECIBO:
			return "17";
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
