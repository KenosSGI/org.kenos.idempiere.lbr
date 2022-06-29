package org.kenos.idempiere.lbr.bankslip.cnab400.bean;

import java.math.BigDecimal;
import java.util.Date;

public interface IRecordDetail {

	String getNossoNumero();
	String getNoDocumento();
	String getCodIdentificacao();
	String getCodOcorrencia();
	Date getDataOcorrencia();
	Date getVencimento();
	BigDecimal getValorDoTitulo();
	BigDecimal getValorDoDesconto();
	BigDecimal getValorDosJuros();
	BigDecimal getAbatimento();

}
