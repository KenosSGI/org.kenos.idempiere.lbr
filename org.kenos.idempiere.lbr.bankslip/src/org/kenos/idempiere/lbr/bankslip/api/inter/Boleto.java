
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
    private Desconto desconto;
    private Multa multa;
    private Mora mora;
    private PagadorBeneficiario beneficiarioFinal;

    public Boleto() {
	}
    
    public PagadorBeneficiario getPagador() {
        return pagador;
    }

    public void setPagador(PagadorBeneficiario pagador) {
        this.pagador = pagador;
    }

    public String getSeuNumero() {
        return seuNumero;
    }

    public void setSeuNumero(String seuNumero) {
        this.seuNumero = seuNumero;
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

    public Desconto getDesconto() {
        return desconto;
    }

    public void setDesconto(Desconto desconto) {
        this.desconto = desconto;
    }
    
    public BigDecimal getValorNominal() {
        return valorNominal;
    }

    public void setValorNominal(BigDecimal valorNominal) {
        this.valorNominal = valorNominal;
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
