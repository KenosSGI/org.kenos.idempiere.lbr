package org.kenos.idempiere.lbr.correios.api.token;

import java.io.Serializable;

public class ContratoRequest implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 3214845158456623380L;
	private String numero = null;

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

}
