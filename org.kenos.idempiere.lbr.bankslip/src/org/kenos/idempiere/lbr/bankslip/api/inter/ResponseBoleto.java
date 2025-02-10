
package org.kenos.idempiere.lbr.bankslip.api.inter;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class ResponseBoleto {

    private String nomeBeneficiario;
    private String cnpjCpfBeneficiario;
    private String tipoPessoaBeneficiario;
    private LocalDateTime dataHoraSituacao;
    private String codigoBarras;
    private String linhaDigitavel;
    private LocalDate dataVencimento;
    private LocalDate dataEmissao;
    private String seuNumero;
    private BigDecimal valorNominal;
    private String nomePagador;
    private String emailPagador;
    private String dddPagador;
    private String telefonePagador;
    private String tipoPessoaPagador;
    private String cnpjCpfPagador;
    private String codigoEspecie;
    private LocalDate dataLimitePagamento;
    private BigDecimal valorAbatimento;
    private String situacao;
    private Mensagem mensagem;
    private Desconto desconto1;
    private Desconto desconto2;
    private Desconto desconto3;
    private Multa multa;
    private Mora mora;
    private String nossoNumero;
    private String codigoSolicitacao;

    public String getNossoNumero() {
        return nossoNumero;
    }

    public void setNossoNumero(String nossoNumero) {
        this.nossoNumero = nossoNumero;
    }

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

    public LocalDateTime getDataHoraSituacao() {
        return dataHoraSituacao;
    }

    public void setDataHoraSituacao(LocalDateTime dataHoraSituacao) {
        this.dataHoraSituacao = dataHoraSituacao;
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

    public LocalDate getDataVencimento() {
        return dataVencimento;
    }

    public void setDataVencimento(LocalDate dataVencimento) {
        this.dataVencimento = dataVencimento;
    }

    public LocalDate getDataEmissao() {
        return dataEmissao;
    }

    public void setDataEmissao(LocalDate dataEmissao) {
        this.dataEmissao = dataEmissao;
    }

    public String getSeuNumero() {
        return seuNumero;
    }

    public void setSeuNumero(String seuNumero) {
        this.seuNumero = seuNumero;
    }

    public BigDecimal getValorNominal() {
        return valorNominal;
    }

    public void setValorNominal(BigDecimal valorNominal) {
        this.valorNominal = valorNominal;
    }

    public String getNomePagador() {
        return nomePagador;
    }

    public void setNomePagador(String nomePagador) {
        this.nomePagador = nomePagador;
    }

    public String getEmailPagador() {
        return emailPagador;
    }

    public void setEmailPagador(String emailPagador) {
        this.emailPagador = emailPagador;
    }

    public String getDddPagador() {
        return dddPagador;
    }

    public void setDddPagador(String dddPagador) {
        this.dddPagador = dddPagador;
    }

    public String getTelefonePagador() {
        return telefonePagador;
    }

    public void setTelefonePagador(String telefonePagador) {
        this.telefonePagador = telefonePagador;
    }

    public String getTipoPessoaPagador() {
        return tipoPessoaPagador;
    }

    public void setTipoPessoaPagador(String tipoPessoaPagador) {
        this.tipoPessoaPagador = tipoPessoaPagador;
    }

    public String getCnpjCpfPagador() {
        return cnpjCpfPagador;
    }

    public void setCnpjCpfPagador(String cnpjCpfPagador) {
        this.cnpjCpfPagador = cnpjCpfPagador;
    }

    public String getCodigoEspecie() {
        return codigoEspecie;
    }

    public void setCodigoEspecie(String codigoEspecie) {
        this.codigoEspecie = codigoEspecie;
    }

    public LocalDate getDataLimitePagamento() {
        return dataLimitePagamento;
    }

    public void setDataLimitePagamento(LocalDate dataLimitePagamento) {
        this.dataLimitePagamento = dataLimitePagamento;
    }

    public BigDecimal getValorAbatimento() {
        return valorAbatimento;
    }

    public void setValorAbatimento(BigDecimal valorAbatimento) {
        this.valorAbatimento = valorAbatimento;
    }

    public String getSituacao() {
        return situacao;
    }

    public void setSituacao(String situacao) {
        this.situacao = situacao;
    }

    public Mensagem getMensagem() {
        return mensagem;
    }

    public void setMensagem(Mensagem mensagem) {
        this.mensagem = mensagem;
    }

    public Desconto getDesconto1() {
        return desconto1;
    }

    public void setDesconto1(Desconto desconto1) {
        this.desconto1 = desconto1;
    }

    public Desconto getDesconto2() {
        return desconto2;
    }

    public void setDesconto2(Desconto desconto2) {
        this.desconto2 = desconto2;
    }

    public Desconto getDesconto3() {
        return desconto3;
    }

    public void setDesconto3(Desconto desconto3) {
        this.desconto3 = desconto3;
    }

    public Multa getMulta() {
        return multa;
    }

    public void setMulta(Multa multa) {
        this.multa = multa;
    }

    public Mora getMora() {
        return mora;
    }

    public void setMora(Mora mora) {
        this.mora = mora;
    }

	public String getCodigoSolicitacao() {
		return codigoSolicitacao;
	}

	public void setCodigoSolicitacao(String codigoSolicitacao) {
		this.codigoSolicitacao = codigoSolicitacao;
	}
}
