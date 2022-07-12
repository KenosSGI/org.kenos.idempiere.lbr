package org.kenos.idempiere.lbr.bankslip.cnab400.bean.in.bb;

import java.math.BigDecimal;

import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record  
public class Record1Detail extends org.kenos.idempiere.lbr.bankslip.cnab400.bean.in.Record1Detail {

	public Record1Detail() {}
	public Record1Detail(Integer tipo) {
		super (tipo);
	}
	@Field( offset = 182, length = 7 )
	public BigDecimal getValorDaTarifa() {
		return valorDaTarifa;
	}
	public void setValorDaTarifa(BigDecimal valorDaTarifa) {
		this.valorDaTarifa = valorDaTarifa;
	}
}	//	Record1Detail
