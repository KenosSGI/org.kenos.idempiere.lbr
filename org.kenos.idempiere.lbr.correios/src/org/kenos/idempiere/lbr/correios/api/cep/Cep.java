package org.kenos.idempiere.lbr.correios.api.cep;

public class Cep {

	private String cep = null;

	private String uf = null;

	private Integer numeroLocalidade = null;

	private String localidade = null;

	private String logradouro = null;

	private String tipoLogradouro = null;

	private String nomeLogradouro = null;

	private String numeroLogradouro = null;

	private String complemento = null;

	private String abreviatura = null;

	private String bairro = null;

	private Integer numeroLocalidadeSuperior = null;

	private String codigoMunicipio = null;

	private String nomeMunicipio = null;

	private String localidadeSuperior = null;

	private String nome = null;

	private String siglaUnidade = null;

	private Integer tipoCEP = null;

	private String cepAnterior = null;

	private String distrito = null;

	private String cepUnidadeOperacional = null;

	private String lado = null;

	private Long numeroInicial = null;

	private Long numeroFinal = null;

	private String clique = null;

	private String txMsg = null;

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}

	public String getUf() {
		return uf;
	}

	public void setUf(String uf) {
		this.uf = uf;
	}

	public Integer getNumeroLocalidade() {
		return numeroLocalidade;
	}

	public void setNumeroLocalidade(Integer numeroLocalidade) {
		this.numeroLocalidade = numeroLocalidade;
	}

	public String getLocalidade() {
		return localidade;
	}

	public void setLocalidade(String localidade) {
		this.localidade = localidade;
	}

	public String getLogradouro() {
		return logradouro;
	}

	public void setLogradouro(String logradouro) {
		this.logradouro = logradouro;
	}

	public String getTipoLogradouro() {
		return tipoLogradouro;
	}

	public void setTipoLogradouro(String tipoLogradouro) {
		this.tipoLogradouro = tipoLogradouro;
	}

	public String getNomeLogradouro() {
		return nomeLogradouro;
	}

	public void setNomeLogradouro(String nomeLogradouro) {
		this.nomeLogradouro = nomeLogradouro;
	}

	public String getNumeroLogradouro() {
		return numeroLogradouro;
	}

	public void setNumeroLogradouro(String numeroLogradouro) {
		this.numeroLogradouro = numeroLogradouro;
	}

	public String getComplemento() {
		return complemento;
	}

	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}

	public String getAbreviatura() {
		return abreviatura;
	}

	public void setAbreviatura(String abreviatura) {
		this.abreviatura = abreviatura;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public Integer getNumeroLocalidadeSuperior() {
		return numeroLocalidadeSuperior;
	}

	public void setNumeroLocalidadeSuperior(Integer numeroLocalidadeSuperior) {
		this.numeroLocalidadeSuperior = numeroLocalidadeSuperior;
	}

	public String getCodigoMunicipio() {
		return codigoMunicipio;
	}

	public void setCodigoMunicipio(String codigoMunicipio) {
		this.codigoMunicipio = codigoMunicipio;
	}

	public String getNomeMunicipio() {
		return nomeMunicipio;
	}

	public void setNomeMunicipio(String nomeMunicipio) {
		this.nomeMunicipio = nomeMunicipio;
	}

	public String getLocalidadeSuperior() {
		return localidadeSuperior;
	}

	public void setLocalidadeSuperior(String localidadeSuperior) {
		this.localidadeSuperior = localidadeSuperior;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSiglaUnidade() {
		return siglaUnidade;
	}

	public void setSiglaUnidade(String siglaUnidade) {
		this.siglaUnidade = siglaUnidade;
	}

	public Integer getTipoCEP() {
		return tipoCEP;
	}

	public void setTipoCEP(Integer tipoCEP) {
		this.tipoCEP = tipoCEP;
	}

	public String getCepAnterior() {
		return cepAnterior;
	}

	public void setCepAnterior(String cepAnterior) {
		this.cepAnterior = cepAnterior;
	}

	public String getDistrito() {
		return distrito;
	}

	public void setDistrito(String distrito) {
		this.distrito = distrito;
	}

	public String getCepUnidadeOperacional() {
		return cepUnidadeOperacional;
	}

	public void setCepUnidadeOperacional(String cepUnidadeOperacional) {
		this.cepUnidadeOperacional = cepUnidadeOperacional;
	}

	public String getLado() {
		return lado;
	}

	public void setLado(String lado) {
		this.lado = lado;
	}

	public Long getNumeroInicial() {
		return numeroInicial;
	}

	public void setNumeroInicial(Long numeroInicial) {
		this.numeroInicial = numeroInicial;
	}

	public Long getNumeroFinal() {
		return numeroFinal;
	}

	public void setNumeroFinal(Long numeroFinal) {
		this.numeroFinal = numeroFinal;
	}

	public String getClique() {
		return clique;
	}

	public void setClique(String clique) {
		this.clique = clique;
	}

	public String getTxMsg() {
		return txMsg;
	}

	public void setTxMsg(String txMsg) {
		this.txMsg = txMsg;
	}

	@Override
	public String toString() {
		return "Cep [cep=" + cep + ", uf=" + uf + ", numeroLocalidade=" + numeroLocalidade + ", localidade="
				+ localidade + ", logradouro=" + logradouro + ", tipoLogradouro=" + tipoLogradouro + ", nomeLogradouro="
				+ nomeLogradouro + ", numeroLogradouro=" + numeroLogradouro + ", complemento=" + complemento
				+ ", abreviatura=" + abreviatura + ", bairro=" + bairro + ", numeroLocalidadeSuperior="
				+ numeroLocalidadeSuperior + ", codigoMunicipio=" + codigoMunicipio + ", nomeMunicipio=" + nomeMunicipio
				+ ", localidadeSuperior=" + localidadeSuperior + ", nome=" + nome + ", siglaUnidade=" + siglaUnidade
				+ ", tipoCEP=" + tipoCEP + ", cepAnterior=" + cepAnterior + ", distrito=" + distrito
				+ ", cepUnidadeOperacional=" + cepUnidadeOperacional + ", lado=" + lado + ", numeroInicial="
				+ numeroInicial + ", numeroFinal=" + numeroFinal + ", clique=" + clique + ", txMsg=" + txMsg + "]";
	}

	
}