package org.kenos.idempiere.lbr.bankslip.cnab400.bean;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record  
public class RecordBase {

	public RecordBase() {}
	public RecordBase(Integer tipo) {
		this.tipo = tipo;
	}
	
	private Integer tipo;
	private Integer numeroSequencial;
	
	@Field( offset = 1, length = 1, paddingChar = '0' , align = Align.RIGHT )
	public Integer getTipo() {
		return tipo;
	}

	public void setTipo(Integer tipo) {
		this.tipo = tipo;
	}

	@Field( offset = 395, length = 6, paddingChar = '0' , align = Align.RIGHT )
	public Integer getNumeroSequencial() {
		return numeroSequencial;
	}

	public void setNumeroSequencial(Integer numeroSequencial) {
		this.numeroSequencial = numeroSequencial;
	}
}	//	RecordBase
