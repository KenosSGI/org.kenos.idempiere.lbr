package org.kenos.idempiere.lbr.bankslip.cnab240.bean.santander033;

import java.util.Date;

import org.kenos.idempiere.lbr.bankslip.cnab240.bean.CNABCobrancaHeaderLoteRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class SantanderCNABCobrancaRemessaHeaderLote extends
		CNABCobrancaHeaderLoteRecord {

	
	public SantanderCNABCobrancaRemessaHeaderLote() {
		super();
		super.setVersaoLeiaute(30);
	}

	@Override
	@Field ( offset = 54 , length = 4 , paddingChar = '0' , align = Align.RIGHT )
	public int getAgencia() {
		return super.getAgencia();
	}

	@Override
	@Field ( offset = 58 , length = 11 , paddingChar = '0' , align = Align.RIGHT )
	public String getConvenio() {
		return super.getConvenio();
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
