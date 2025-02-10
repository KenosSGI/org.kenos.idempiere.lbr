
package org.kenos.idempiere.lbr.bankslip.api.inter;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class ResponseGetBoleto {

	private Integer totalPaginas;
	private Integer totalElementos;
	private Boolean primeiraPagina;
	private Boolean ultimaPagina;
	private Integer numeroDeElementos;
	private List<CobrancaGroup> cobrancas;

	public Integer getTotalPaginas() {
		return totalPaginas;
	}

	public void setTotalPaginas(Integer totalPaginas) {
		this.totalPaginas = totalPaginas;
	}

	public Integer getTotalElementos() {
		return totalElementos;
	}

	public void setTotalElementos(Integer totalElementos) {
		this.totalElementos = totalElementos;
	}

	public Boolean getPrimeiraPagina() {
		return primeiraPagina;
	}

	public void setPrimeiraPagina(Boolean primeiraPagina) {
		this.primeiraPagina = primeiraPagina;
	}

	public Boolean getUltimaPagina() {
		return ultimaPagina;
	}

	public void setUltimaPagina(Boolean ultimaPagina) {
		this.ultimaPagina = ultimaPagina;
	}

	public Integer getNumeroDeElementos() {
		return numeroDeElementos;
	}

	public void setNumeroDeElementos(Integer numeroDeElementos) {
		this.numeroDeElementos = numeroDeElementos;
	}

	public List<CobrancaGroup> getCobrancas() {
		return cobrancas;
	}

	public void setCobrancas(List<CobrancaGroup> cobrancas) {
		this.cobrancas = cobrancas;
	}
}	//	ResponseGetPDF
