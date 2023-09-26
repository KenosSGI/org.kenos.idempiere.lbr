package org.kenos.idempiere.lbr.bankslip.cnab240.bean.santander033;

import java.util.Date;

import org.kenos.idempiere.lbr.bankslip.cnab240.bean.CNABCobrancaHeaderLoteRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class SantanderCNABCobrancaRetornoHeaderLote extends CNABCobrancaHeaderLoteRecord {
	
	@Override
	@Field ( offset = 34 , length = 9 , paddingChar = '0' , align = Align.RIGHT )
	public String getConvenio() {
		return super.getConvenio();
	}

	public void setConvenio(String convenio) {
		super.setConvenio(convenio);
	}

	@Override
	public int getAgencia() {
		return super.getAgencia();
	}

	@Override
	public String getDvAgencia() {
		return super.getDvAgencia();
	}

	@Override
	public long getConta() {
		return super.getConta();
	}

	@Override
	public String getDvConta() {
		return super.getDvConta();
	}

	@Override
	public String getDvAgenciaConta() {
		return super.getDvAgenciaConta();
	}

	@Override
	public Date getDataCredito() {
		return super.getDataCredito();
	}
	
}
