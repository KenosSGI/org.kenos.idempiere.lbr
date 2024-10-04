
package org.kenos.idempiere.lbr.bankslip.api.inter;

import java.math.BigDecimal;

import com.fasterxml.jackson.annotation.JsonAlias;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;

@JsonInclude(Include.NON_NULL)
public class Desconto {

    public Desconto() {
    }

    public Desconto(String codigoDesconto, BigDecimal taxaOuDesconto, Integer quantidadeDias) {
        this.codigoDesconto = codigoDesconto;
        this.taxaOuDesconto = taxaOuDesconto;
        this.quantidadeDias = quantidadeDias;
    }

	@JsonAlias ( { "codigoDesconto", "codigo" } )
	private String codigoDesconto;
	@JsonAlias ( { "taxaOuDesconto", "taxa" } )
    private BigDecimal taxaOuDesconto;
    private Integer quantidadeDias;

    public static final String CODIGO_DESCONTO_VALOR_FIXO 		= "VALORFIXODATAINFORMADA";
    public static final String CODIGO_DESCONTO_PERCENTUAL 		= "PERCENTUALDATAINFORMADA";
    
    public String getCodigoDesconto() {
        return codigoDesconto;
    }

    public void setCodigoDesconto(String codigoDesconto) {
        this.codigoDesconto = codigoDesconto;
    }

    public BigDecimal getTaxa() {
        return taxaOuDesconto;
    }

    public void setTaxa(BigDecimal taxa) {
        this.taxaOuDesconto = taxa;
    }

    public Integer getQuantidadeDias() {
        return quantidadeDias;
    }

    public void setQuantidadeDias(Integer quantidadeDias) {
        this.quantidadeDias = quantidadeDias;
    }
}
