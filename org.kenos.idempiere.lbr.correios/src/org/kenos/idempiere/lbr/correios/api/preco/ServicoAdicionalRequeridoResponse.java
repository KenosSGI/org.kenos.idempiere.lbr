package org.kenos.idempiere.lbr.correios.api.preco;

import java.sql.Timestamp;

public class ServicoAdicionalRequeridoResponse {
	
	private String coRequerido = null;

	private String coSubstituto = null;

	private Timestamp dtIniVigencia = null;

	private Timestamp dtFimVigencia = null;

	public String getCoRequerido() {
		return coRequerido;
	}

	public void setCoRequerido(String coRequerido) {
		this.coRequerido = coRequerido;
	}

	public String getCoSubstituto() {
		return coSubstituto;
	}

	public void setCoSubstituto(String coSubstituto) {
		this.coSubstituto = coSubstituto;
	}

	public Timestamp getDtIniVigencia() {
		return dtIniVigencia;
	}

	public void setDtIniVigencia(Timestamp dtIniVigencia) {
		this.dtIniVigencia = dtIniVigencia;
	}

	public Timestamp getDtFimVigencia() {
		return dtFimVigencia;
	}

	public void setDtFimVigencia(Timestamp dtFimVigencia) {
		this.dtFimVigencia = dtFimVigencia;
	}

}
