package org.kenos.idempiere.lbr.correios.api.prazo;

public class ParamPrazoNacional {

	private String coProduto = null;

	private String nuRequisicao = null;

	private String dtEvento = null;

	private String cepOrigem = null;

	private String cepDestino = null;

	private String dataPostagem = null;

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

	public String getDtEvento() {
		return dtEvento;
	}

	public void setDtEvento(String dtEvento) {
		this.dtEvento = dtEvento;
	}

	public String getCepOrigem() {
		return cepOrigem;
	}

	public void setCepOrigem(String cepOrigem) {
		this.cepOrigem = cepOrigem;
	}

	public String getCepDestino() {
		return cepDestino;
	}

	public void setCepDestino(String cepDestino) {
		this.cepDestino = cepDestino;
	}

	public String getDataPostagem() {
		return dataPostagem;
	}

	public void setDataPostagem(String dataPostagem) {
		this.dataPostagem = dataPostagem;
	}

	@Override
	public String toString() {
		return "ParamPrazoNacional [coProduto=" + coProduto + ", nuRequisicao=" + nuRequisicao + ", dtEvento="
				+ dtEvento + ", cepOrigem=" + cepOrigem + ", cepDestino=" + cepDestino + ", dataPostagem="
				+ dataPostagem + "]";
	}
	
	
}
