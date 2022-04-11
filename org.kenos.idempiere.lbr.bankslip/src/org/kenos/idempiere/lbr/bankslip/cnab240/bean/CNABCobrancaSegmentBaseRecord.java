package org.kenos.idempiere.lbr.bankslip.cnab240.bean;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class CNABCobrancaSegmentBaseRecord extends CNABSegmentBaseRecord {

	private String codigoMovimento;

	@Field( offset=16 , length=2, paddingChar = ' ' , align = Align.LEFT)
	public String getCodigoMovimento() {
		return codigoMovimento;
	}

	public void setCodigoMovimento(String codigoMovimento) {
		this.codigoMovimento = codigoMovimento;
	}

}
