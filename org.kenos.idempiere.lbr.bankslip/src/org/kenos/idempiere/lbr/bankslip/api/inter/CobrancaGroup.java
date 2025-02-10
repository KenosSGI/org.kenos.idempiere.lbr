package org.kenos.idempiere.lbr.bankslip.api.inter;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;

@JsonInclude(Include.NON_NULL)
@JsonIgnoreProperties(ignoreUnknown = true)
public class CobrancaGroup {
	private BoletoDetailed cobranca;
	private BoletoDetailed boleto;
	private PixDetailed pix;
	
	public BoletoDetailed getCobranca() {
		return cobranca;
	}
	public void setCobranca(BoletoDetailed cobranca) {
		this.cobranca = cobranca;
	}
	public BoletoDetailed getBoleto() {
		return boleto;
	}
	public void setBoleto(BoletoDetailed boleto) {
		this.boleto = boleto;
	}
	public PixDetailed getPix() {
		return pix;
	}
	public void setPix(PixDetailed pix) {
		this.pix = pix;
	}
}	//	CobranceDetailed
