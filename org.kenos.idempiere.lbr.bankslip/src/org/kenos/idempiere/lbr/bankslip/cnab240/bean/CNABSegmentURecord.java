package org.kenos.idempiere.lbr.bankslip.cnab240.bean;

import java.math.BigDecimal;
import java.util.Date;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.FixedFormatDecimal;
import com.ancientprogramming.fixedformat4j.annotation.FixedFormatPattern;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class CNABSegmentURecord extends CNABCobrancaSegmentBaseRecord {

	private BigDecimal valorAcrescimos;
	private BigDecimal valorDesconto;
	private BigDecimal valorAbatimento;
	private BigDecimal valorIOF;
	private BigDecimal valorPago;
	private BigDecimal valorLiquido;
	private BigDecimal outrasDespesas;
	private BigDecimal outrosCreditos;
	private Date dataOcorrencia;
	private Date dataCredito;
	private String codigoOcorrenciaSacado;
	private Date dataOcorrenciaSacado;
	private BigDecimal valorOcorrenciaSacado;
	private String complementoOcorrenciaSacado;
	private int codigoBancoCorrespondente;
	private String nossoNumeroBancoCorrespondente;

	public CNABSegmentURecord() {
		super();
		this.setTipoSegmento("U");
	}
	
	@Field( offset=18 , length=15, paddingChar='0' , align = Align.RIGHT)
	@FixedFormatDecimal( decimals = 2 , useDecimalDelimiter = false )
	public BigDecimal getValorAcrescimos() {
		return valorAcrescimos;
	}
	public void setValorAcrescimos(BigDecimal valorAcrescimos) {
		this.valorAcrescimos = valorAcrescimos;
	}
	

	@Field( offset=33 , length=15, paddingChar='0' , align = Align.RIGHT)
	@FixedFormatDecimal( decimals = 2 , useDecimalDelimiter = false )
	public BigDecimal getValorDesconto() {
		return valorDesconto;
	}
	public void setValorDesconto(BigDecimal valorDesconto) {
		this.valorDesconto = valorDesconto;
	}
	
	@Field( offset=48 , length=15, paddingChar='0' , align = Align.RIGHT)
	@FixedFormatDecimal( decimals = 2 , useDecimalDelimiter = false )
	public BigDecimal getValorAbatimento() {
		return valorAbatimento;
	}
	public void setValorAbatimento(BigDecimal valorAbatimento) {
		this.valorAbatimento = valorAbatimento;
	}
	
	@Field( offset=63 , length=15, paddingChar='0' , align = Align.RIGHT)
	@FixedFormatDecimal( decimals = 2 , useDecimalDelimiter = false )
	public BigDecimal getValorIOF() {
		return valorIOF;
	}
	public void setValorIOF(BigDecimal valorIOF) {
		this.valorIOF = valorIOF;
	}
	
	@Field( offset=78 , length=15, paddingChar='0' , align = Align.RIGHT)
	@FixedFormatDecimal( decimals = 2 , useDecimalDelimiter = false )
	public BigDecimal getValorPago() {
		return valorPago;
	}
	public void setValorPago(BigDecimal valorPago) {
		this.valorPago = valorPago;
	}

	@Field( offset=93 , length=15, paddingChar='0' , align = Align.RIGHT)
	@FixedFormatDecimal( decimals = 2 , useDecimalDelimiter = false )
	public BigDecimal getValorLiquido() {
		return valorLiquido;
	}
	public void setValorLiquido(BigDecimal valorLiquido) {
		this.valorLiquido = valorLiquido;
	}

	@Field( offset=108 , length=15, paddingChar='0' , align = Align.RIGHT)
	@FixedFormatDecimal( decimals = 2 , useDecimalDelimiter = false )
	public BigDecimal getOutrasDespesas() {
		return outrasDespesas;
	}
	public void setOutrasDespesas(BigDecimal outrasDespesas) {
		this.outrasDespesas = outrasDespesas;
	}
	
	@Field( offset=123 , length=15, paddingChar='0' , align = Align.RIGHT)
	@FixedFormatDecimal( decimals = 2 , useDecimalDelimiter = false )
	public BigDecimal getOutrosCreditos() {
		return outrosCreditos;
	}
	public void setOutrosCreditos(BigDecimal outrosCreditos) {
		this.outrosCreditos = outrosCreditos;
	}
	
	@Field( offset=138 , length=8 , paddingChar = '0' , align = Align.LEFT )
	@FixedFormatPattern("ddMMyyyy")
	public Date getDataOcorrencia() {
		return dataOcorrencia;
	}
	public void setDataOcorrencia(Date dataOcorrencia) {
		this.dataOcorrencia = dataOcorrencia;
	}

	
	@Field( offset=146 , length=8 , paddingChar = '0' , align = Align.LEFT )
	@FixedFormatPattern("ddMMyyyy")
	public Date getDataCredito() {
		return dataCredito;
	}
	public void setDataCredito(Date dataCredito) {
		this.dataCredito = dataCredito;
	}

	@Field( offset=154 , length=4 , paddingChar = ' ' , align = Align.LEFT )
	public String getCodigoOcorrenciaSacado() {
		return codigoOcorrenciaSacado;
	}

	public void setCodigoOcorrenciaSacado(String codigoOcorrenciaSacado) {
		this.codigoOcorrenciaSacado = codigoOcorrenciaSacado;
	}

	@Field( offset=158 , length=8 , paddingChar = '0' , align = Align.LEFT )
	@FixedFormatPattern("ddMMyyyy")
	public Date getDataOcorrenciaSacado() {
		return dataOcorrenciaSacado;
	}

	public void setDataOcorrenciaSacado(Date dataOcorrenciaSacado) {
		this.dataOcorrenciaSacado = dataOcorrenciaSacado;
	}

	@Field( offset=166 , length=15, paddingChar='0' , align = Align.RIGHT)
	@FixedFormatDecimal( decimals = 2 , useDecimalDelimiter = false )
	public BigDecimal getValorOcorrenciaSacado() {
		return valorOcorrenciaSacado;
	}

	public void setValorOcorrenciaSacado(BigDecimal valorOcorrenciaSacado) {
		this.valorOcorrenciaSacado = valorOcorrenciaSacado;
	}

	@Field( offset=181 , length=30 , paddingChar = ' ' , align = Align.LEFT )
	public String getComplementoOcorrenciaSacado() {
		return complementoOcorrenciaSacado;
	}

	public void setComplementoOcorrenciaSacado(String complementoOcorrenciaSacado) {
		this.complementoOcorrenciaSacado = complementoOcorrenciaSacado;
	}

	@Field( offset=211 , length=3 , paddingChar = '0' , align = Align.RIGHT )
	public int getCodigoBancoCorrespondente() {
		return codigoBancoCorrespondente;
	}

	public void setCodigoBancoCorrespondente(int codigoBancoCorrespondente) {
		this.codigoBancoCorrespondente = codigoBancoCorrespondente;
	}

	@Field( offset=214 , length=20 , paddingChar = '0' , align = Align.RIGHT )
	public String getNossoNumeroBancoCorrespondente() {
		return nossoNumeroBancoCorrespondente;
	}

	public void setNossoNumeroBancoCorrespondente(
			String nossoNumeroBancoCorrespondente) {
		this.nossoNumeroBancoCorrespondente = nossoNumeroBancoCorrespondente;
	}
	
}
