package org.kenos.idempiere.lbr.correios.api.token;

import java.io.Serializable;

public class CartaoPostagemRequest implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 8502602958932185322L;
	private String numero = null;

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

}
