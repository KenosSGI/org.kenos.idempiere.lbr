package org.kenos.idempiere.lbr.bankslip.cnab240.bean.santander033;

import java.util.Date;

import org.kenos.idempiere.lbr.bankslip.cnab240.bean.CNABSegmentRRecord;

import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class SantanderCNABSegmentR extends CNABSegmentRRecord {
	
	public SantanderCNABSegmentR() {
		super();
		super.setDecimaisPercentualMulta(2);
		super.setDecimaisPercentualDesconto(5);
	}
	
	@Override
	public int getCodigoDesconto3() {
		return super.getCodigoDesconto3();
	}
	@Override
	public Date getDataDesconto3() {
		return super.getDataDesconto3();
	}
	@Override
	public String getDesconto3() {
		return super.getDesconto3();
	}
	@Override
	public String getInformacoesSacado() {
		return super.getInformacoesSacado();
	}
	@Override
	public int getCodOcorrenciaSacado() {
		return super.getCodOcorrenciaSacado();
	}
	@Override
	public int getDebitoBanco() {
		return super.getDebitoBanco();
	}
	@Override
	public int getDebitoAgencia() {
		return super.getDebitoAgencia();
	}
	@Override
	public String getDebitoAgenciaDV() {
		return super.getDebitoAgenciaDV();
	}
	@Override
	public long getDebitoConta() {
		return super.getDebitoConta();
	}
	@Override
	public String getDebitoContaDV() {
		return super.getDebitoContaDV();
	}
	@Override
	public String getDebitoAgContaDV() {
		return super.getDebitoAgContaDV();
	}
	@Override
	public int getAvisoDebito() {
		return super.getAvisoDebito();
	}

	
}
