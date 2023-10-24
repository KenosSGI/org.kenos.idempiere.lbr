package org.kenos.idempiere.lbr.correios.api.prazo;

import java.sql.Timestamp;
import java.util.List;

public class PrazoInternacional {

	private String coProduto = null;

	private String noProduto = null;

	private String nuRequisicao = null;

	private String modalidade = null;

	private String noCidadeDestino = null;

	private Integer prazoMinimo = null;

	private Integer prazoMaximo = null;

	private String txErro = null;
	
	private Timestamp dataMinEntrega = null;

	private Timestamp dataMaxEntrega = null;

	private List<InfoAdicionais> infoAdicionais = null;

	public String getCoProduto() {
		return coProduto;
	}

	public void setCoProduto(String coProduto) {
		this.coProduto = coProduto;
	}

	public String getNoProduto() {
		return noProduto;
	}

	public void setNoProduto(String noProduto) {
		this.noProduto = noProduto;
	}

	public String getNuRequisicao() {
		return nuRequisicao;
	}

	public void setNuRequisicao(String nuRequisicao) {
		this.nuRequisicao = nuRequisicao;
	}

	public String getModalidade() {
		return modalidade;
	}

	public void setModalidade(String modalidade) {
		this.modalidade = modalidade;
	}

	public String getNoCidadeDestino() {
		return noCidadeDestino;
	}

	public void setNoCidadeDestino(String noCidadeDestino) {
		this.noCidadeDestino = noCidadeDestino;
	}

	public Integer getPrazoMinimo() {
		return prazoMinimo;
	}

	public void setPrazoMinimo(Integer prazoMinimo) {
		this.prazoMinimo = prazoMinimo;
	}

	public Integer getPrazoMaximo() {
		return prazoMaximo;
	}

	public void setPrazoMaximo(Integer prazoMaximo) {
		this.prazoMaximo = prazoMaximo;
	}

	public String getTxErro() {
		return txErro;
	}

	public void setTxErro(String txErro) {
		this.txErro = txErro;
	}

	public List<InfoAdicionais> getInfoAdicionais() {
		return infoAdicionais;
	}

	public void setInfoAdicionais(List<InfoAdicionais> infoAdicionais) {
		this.infoAdicionais = infoAdicionais;
	}

	public Timestamp getDataMinEntrega() {
		return dataMinEntrega;
	}

	public void setDataMinEntrega(Timestamp dataMinEntrega) {
		this.dataMinEntrega = dataMinEntrega;
	}

	public Timestamp getDataMaxEntrega() {
		return dataMaxEntrega;
	}

	public void setDataMaxEntrega(Timestamp dataMaxEntrega) {
		this.dataMaxEntrega = dataMaxEntrega;
	}

}
