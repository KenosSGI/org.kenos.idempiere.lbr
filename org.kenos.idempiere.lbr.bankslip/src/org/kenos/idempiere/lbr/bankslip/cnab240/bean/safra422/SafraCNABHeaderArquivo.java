package org.kenos.idempiere.lbr.bankslip.cnab240.bean.safra422;

import org.kenos.idempiere.lbr.bankslip.cnab240.bean.CNABHeaderArquivoRecord;

import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class SafraCNABHeaderArquivo extends CNABHeaderArquivoRecord {

	public SafraCNABHeaderArquivo() {
		
	}
	// campos seguintes não são utilizados pelo Santander
	@Override
	public String getDvAgenciaConta() {
		return super.getDvAgenciaConta();
	}
	
}
