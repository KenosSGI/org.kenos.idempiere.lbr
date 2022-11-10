
package org.kenos.idempiere.lbr.bankslip.api.inter;

import java.math.BigDecimal;
import java.sql.Timestamp;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;

@JsonInclude(Include.NON_NULL)
public class Boleto {

    private String seuNumero;
    private BigDecimal valorNominal;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    private Timestamp dataVencimento;
    private Integer numDiasAgenda;
    private PagadorBeneficiario pagador;
    private Mensagem mensagem;
    private Desconto desconto1;
    private Desconto desconto2;
    private Desconto desconto3;
    private Multa multa;
    private Mora mora;
    private PagadorBeneficiario beneficiarioFinal;

    private Timestamp dataEmissao;
    private String dataLimite;
    private BigDecimal valorAbatimento;
    private String cnpjCPFBeneficiario;

    public Boleto() {
	}
    
    public PagadorBeneficiario getPagador() {
        return pagador;
    }

    public void setPagador(PagadorBeneficiario pagador) {
        this.pagador = pagador;
    }

    public Timestamp getDataEmissao() {
        return dataEmissao;
    }

    public void setDataEmissao(Timestamp dataEmissao) {
        this.dataEmissao = dataEmissao;
    }

    public String getSeuNumero() {
        return seuNumero;
    }

    public void setSeuNumero(String seuNumero) {
        this.seuNumero = seuNumero;
    }

    public String getDataLimite() {
        return dataLimite;
    }

    public void setDataLimite(String dataLimite) {
        this.dataLimite = dataLimite;
    }

    public Timestamp getDataVencimento() {
        return dataVencimento;
    }

    public void setDataVencimento(Timestamp dataVencimento) {
        this.dataVencimento = dataVencimento;
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

    public BigDecimal getValorNominal() {
        return valorNominal;
    }

    public void setValorNominal(BigDecimal valorNominal) {
        this.valorNominal = valorNominal;
    }

    public BigDecimal getValorAbatimento() {
        return valorAbatimento;
    }

    public void setValorAbatimento(BigDecimal valorAbatimento) {
        this.valorAbatimento = valorAbatimento;
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

    public String getCnpjCPFBeneficiario() {
        return cnpjCPFBeneficiario;
    }

    public void setCnpjCPFBeneficiario(String cnpjCPFBeneficiario) {
        this.cnpjCPFBeneficiario = cnpjCPFBeneficiario;
    }

    public Integer getNumDiasAgenda() {
        return numDiasAgenda;
    }

    public void setNumDiasAgenda(Integer numDiasAgenda) {
        this.numDiasAgenda = numDiasAgenda;
    }

	public PagadorBeneficiario getBeneficiarioFinal() {
		return beneficiarioFinal;
	}

	public void setBeneficiarioFinal(PagadorBeneficiario beneficiarioFinal) {
		this.beneficiarioFinal = beneficiarioFinal;
	}
}
