
package org.kenos.idempiere.lbr.bankslip.api.inter;

import java.math.BigDecimal;
import java.sql.Timestamp;

import com.fasterxml.jackson.annotation.JsonAlias;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;

@JsonInclude(Include.NON_NULL)
public class Multa {

	@JsonAlias ( { "codigoMulta", "codigo" } )
	private String codigoMulta;
    private BigDecimal taxa;
    private BigDecimal valor;
    private Timestamp data;

    public static final String CODIGO_MULTA_NAO_TEM_MULTA 	= "NAOTEMMULTA";
    public static final String CODIGO_MULTA_VALOR_FIXO 		= "VALORFIXO";
    public static final String CODIGO_MULTA_PERCENTUAL 		= "PERCENTUAL";
    
    public String getCodigoMulta() {
        return codigoMulta;
    }

    public void setCodigoMulta(String codigoMulta) {
        this.codigoMulta = codigoMulta;
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

	public Timestamp getData() {
		return data;
	}

	public void setData(Timestamp data) {
		this.data = data;
	}
}
