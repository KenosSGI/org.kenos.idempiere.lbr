package org.kenos.idempiere.lbr.bankslip.cnab400.bean.in.bb;

import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record  
public class Record7Detail extends Record1Detail {

	public Record7Detail() {}
	public Record7Detail(Integer tipo) {
		super (tipo);
	}
	
	protected String codIdentificacao;
	
	@Field( offset = 39, length = 25 )
	public String getCodIdentificacao() {
		return codIdentificacao;
	}
	public void setCodIdentificacao(String codIdentificacao) {
		this.codIdentificacao = codIdentificacao;
	}
}
