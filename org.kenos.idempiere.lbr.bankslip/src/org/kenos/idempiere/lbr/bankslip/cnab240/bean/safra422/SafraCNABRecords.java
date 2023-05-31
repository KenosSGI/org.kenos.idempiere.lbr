package org.kenos.idempiere.lbr.bankslip.cnab240.bean.safra422;

import org.kenos.idempiere.lbr.bankslip.cnab240.bean.CNABCobrancaTrailerLoteRecord;
import org.kenos.idempiere.lbr.bankslip.cnab240.bean.CNABRecords;
import org.kenos.idempiere.lbr.bankslip.cnab240.bean.CNABSegmentURecord;

import com.ancientprogramming.fixedformat4j.annotation.Record;

public class SafraCNABRecords extends CNABRecords {

	public SafraCNABRecords() {
		super();
		super.setHeaderArquivoClass(SafraCNABHeaderArquivo.class);

		// retorno utiliza trailer de lote padrão
		super.setTrailerLoteRetornoCobrancaClass(CNABCobrancaTrailerLoteRecord.class);

		super.setSegmentPClass(SafraCNABSegmentP.class);
		super.setSegmentUClass(SafraCNABSegmentU.class);
	}

	// exemplo para quando a modificação em uma classe é pequena
	// dispensa arquivo exclusivo

	@Record
	public class SafraCNABSegmentU extends CNABSegmentURecord {

		@Override
		public String getNossoNumeroBancoCorrespondente() {
			return super.getNossoNumeroBancoCorrespondente();
		}

	}

}
