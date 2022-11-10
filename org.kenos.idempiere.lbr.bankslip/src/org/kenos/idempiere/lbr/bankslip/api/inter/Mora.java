
package org.kenos.idempiere.lbr.bankslip.api.inter;

import java.math.BigDecimal;
import java.sql.Timestamp;

import com.fasterxml.jackson.annotation.JsonAlias;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;

@JsonInclude(Include.NON_NULL)
public class Mora {

	@JsonAlias ( { "codigoMora", "mora" } )
    private String codigoMora;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    private Timestamp data;
    private BigDecimal taxa;
    private BigDecimal valor;

    public static final String CODIGO_MORA_VALORDIA 	= "VALORDIA";
    public static final String CODIGO_MORA_TAXAMENSAL 	= "TAXAMENSAL";
    public static final String CODIGO_MORA_ISENTO 		= "ISENTO";

    public String getCodigoMora() {
        return codigoMora;
    }

    public void setCodigoMora(String codigoMora) {
        this.codigoMora = codigoMora;
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
