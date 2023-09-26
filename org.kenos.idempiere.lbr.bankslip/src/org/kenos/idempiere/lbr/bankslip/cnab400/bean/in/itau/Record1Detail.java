package org.kenos.idempiere.lbr.bankslip.cnab400.bean.in.itau;

import java.math.BigDecimal;
import java.util.Arrays;
import java.util.Objects;

import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record  
public class Record1Detail extends org.kenos.idempiere.lbr.bankslip.cnab400.bean.in.Record1Detail {

	BigDecimal valorCreditado = null;
	
	public Record1Detail() {}
	public Record1Detail(Integer tipo) {
		super (tipo);
	}
	@Field( offset = 254, length = 13 )
	public BigDecimal getValorCreditado() {
		return valorCreditado;
	}
	public void setValorCreditado(BigDecimal valorCreditado) {
		this.valorCreditado = valorCreditado;
	}
	@Override
	public BigDecimal getValorDoPagto() {
		return Arrays.stream (new BigDecimal [] {valorCreditado, super.getValorDaTarifa()})
	            .filter(Objects::nonNull)
	            .reduce(BigDecimal.ZERO, BigDecimal::add);
	}	//	getValorDoPagto
}	//	CNABRecord1Detail
