
package org.kenos.idempiere.lbr.bankslip.api.inter;

import java.sql.Timestamp;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;

@JsonInclude(Include.NON_NULL)
public class BoletoDetailed extends Boleto {
    private String nomeBeneficiario;
    private String cnpjCpfBeneficiario;
    private String tipoPessoaBeneficiario;
    private String contaCorrente;
    private String nossoNumero;
    private String situacao;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    private Timestamp dataHoraSituacao;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    private Timestamp dataEmissao;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    private String dataLimite;
    private String codigoEspecie;
    private String codigoBarras;
    private String linhaDigitavel;
    private String origem;

	public String getNomeBeneficiario() {
		return nomeBeneficiario;
	}

	public void setNomeBeneficiario(String nomeBeneficiario) {
		this.nomeBeneficiario = nomeBeneficiario;
	}

	public String getCnpjCpfBeneficiario() {
		return cnpjCpfBeneficiario;
	}

	public void setCnpjCpfBeneficiario(String cnpjCpfBeneficiario) {
		this.cnpjCpfBeneficiario = cnpjCpfBeneficiario;
	}

	public String getTipoPessoaBeneficiario() {
		return tipoPessoaBeneficiario;
	}

	public void setTipoPessoaBeneficiario(String tipoPessoaBeneficiario) {
		this.tipoPessoaBeneficiario = tipoPessoaBeneficiario;
	}

	public String getContaCorrente() {
		return contaCorrente;
	}

	public void setContaCorrente(String contaCorrente) {
		this.contaCorrente = contaCorrente;
	}

	public String getNossoNumero() {
		return nossoNumero;
	}

	public void setNossoNumero(String nossoNumero) {
		this.nossoNumero = nossoNumero;
	}

	public String getSituacao() {
		return situacao;
	}

	public void setSituacao(String situacao) {
		this.situacao = situacao;
	}

	public Timestamp getDataHoraSituacao() {
		return dataHoraSituacao;
	}

	public void setDataHoraSituacao(Timestamp dataHoraSituacao) {
		this.dataHoraSituacao = dataHoraSituacao;
	}

	public Timestamp getDataEmissao() {
		return dataEmissao;
	}

	public void setDataEmissao(Timestamp dataEmissao) {
		this.dataEmissao = dataEmissao;
	}

	public String getDataLimite() {
		return dataLimite;
	}

	public void setDataLimite(String dataLimite) {
		this.dataLimite = dataLimite;
	}

	public String getCodigoEspecie() {
		return codigoEspecie;
	}

	public void setCodigoEspecie(String codigoEspecie) {
		this.codigoEspecie = codigoEspecie;
	}

	public String getCodigoBarras() {
		return codigoBarras;
	}

	public void setCodigoBarras(String codigoBarras) {
		this.codigoBarras = codigoBarras;
	}

	public String getLinhaDigitavel() {
		return linhaDigitavel;
	}

	public void setLinhaDigitavel(String linhaDigitavel) {
		this.linhaDigitavel = linhaDigitavel;
	}

	public String getOrigem() {
		return origem;
	}

	public void setOrigem(String origem) {
		this.origem = origem;
	}
}
