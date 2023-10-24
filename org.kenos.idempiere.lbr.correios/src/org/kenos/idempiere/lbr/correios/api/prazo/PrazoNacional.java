package org.kenos.idempiere.lbr.correios.api.prazo;

import java.sql.Timestamp;

public class PrazoNacional {

	private String coProduto = null;

	private String nuRequisicao = null;

	private Integer prazoEntrega = null;

	private Timestamp dataMaxima = null;

	private String txErro = null;

	private String entregaDomiciliar = null;

	private String entregaSabado = null;

	private String msgPrazo = null;

	public String getCoProduto() {
		return coProduto;
	}

	public void setCoProduto(String coProduto) {
		this.coProduto = coProduto;
	}

	public String getNuRequisicao() {
		return nuRequisicao;
	}

	public void setNuRequisicao(String nuRequisicao) {
		this.nuRequisicao = nuRequisicao;
	}

	public Integer getPrazoEntrega() {
		return prazoEntrega;
	}

	public void setPrazoEntrega(Integer prazoEntrega) {
		this.prazoEntrega = prazoEntrega;
	}

	public Timestamp getDataMaxima() {
		return dataMaxima;
	}

	public void setDataMaxima(Timestamp dataMaxima) {
		this.dataMaxima = dataMaxima;
	}

	public String getTxErro() {
		return txErro;
	}

	public void setTxErro(String txErro) {
		this.txErro = txErro;
	}

	public String getEntregaDomiciliar() {
		return entregaDomiciliar;
	}

	public void setEntregaDomiciliar(String entregaDomiciliar) {
		this.entregaDomiciliar = entregaDomiciliar;
	}

	public String getEntregaSabado() {
		return entregaSabado;
	}

	public void setEntregaSabado(String entregaSabado) {
		this.entregaSabado = entregaSabado;
	}

	public String getMsgPrazo() {
		return msgPrazo;
	}

	public void setMsgPrazo(String msgPrazo) {
		this.msgPrazo = msgPrazo;
	}

}
