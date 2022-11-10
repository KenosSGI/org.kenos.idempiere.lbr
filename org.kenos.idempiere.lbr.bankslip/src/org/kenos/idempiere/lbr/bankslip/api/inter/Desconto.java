
package org.kenos.idempiere.lbr.bankslip.api.inter;

import java.math.BigDecimal;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;

@JsonInclude(Include.NON_NULL)
public class Desconto {

    public Desconto() {
    }

    public Desconto(String codigoDesconto, BigDecimal taxa, BigDecimal valor) {
        this.codigoDesconto = codigoDesconto;
        this.taxa = taxa;
        this.valor = valor;
    }

    private String codigoDesconto;
    private BigDecimal taxa;
    private BigDecimal valor;

    public static final String CODIGO_DESCONTO_NAO_TEM_DESCONTO = "NAOTEMDESCONTO";
    public static final String CODIGO_DESCONTO_VALOR_FIXO 		= "VALORFIXODATAINFORMADA";
    public static final String CODIGO_DESCONTO_PERCENTUAL 		= "PERCENTUALDATAINFORMADA";
    
    public String getCodigoDesconto() {
        return codigoDesconto;
    }

    public void setCodigoDesconto(String codigoDesconto) {
        this.codigoDesconto = codigoDesconto;
    }

    public BigDecimal getTaxa() {
        return taxa;
    }

    public void setTaxa(BigDecimal taxa) {
        this.taxa = taxa;
    }

    public BigDecimal getValor() {
        return valor;
    }

    public void setValor(BigDecimal valor) {
        this.valor = valor;
    }
}
