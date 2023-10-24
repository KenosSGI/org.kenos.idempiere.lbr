package org.kenos.idempiere.lbr.correios.api.token;

import java.io.Serializable;
import java.util.List;

public class CartaoPostagem implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4169117257916647072L;

	private String numero = null;

	private String contrato = null;

	private Long dr = null;

	private List<Integer> api = null;

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public String getContrato() {
		return contrato;
	}

	public void setContrato(String contrato) {
		this.contrato = contrato;
	}

	public Long getDr() {
		return dr;
	}

	public void setDr(Long dr) {
		this.dr = dr;
	}

	public List<Integer> getApi() {
		return api;
	}

	public void setApi(List<Integer> api) {
		this.api = api;
	}

}
