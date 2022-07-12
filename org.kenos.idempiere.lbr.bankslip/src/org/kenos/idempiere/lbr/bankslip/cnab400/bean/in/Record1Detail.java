package org.kenos.idempiere.lbr.bankslip.cnab400.bean.in;

import java.math.BigDecimal;
import java.util.Date;

import org.kenos.idempiere.lbr.bankslip.cnab400.bean.IRecordDetail;
import org.kenos.idempiere.lbr.bankslip.cnab400.bean.RecordBase;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record  
public class Record1Detail extends RecordBase implements IRecordDetail {

	public Record1Detail() {}
	public Record1Detail(Integer tipo) {
		super (tipo);
	}
	
	protected String codIdentificacao;
	protected String nossoNumero;
	protected String codOcorrencia;
	protected Date dataOcorrencia;
	protected Date vencimento;
	protected String noDocumento;
	protected BigDecimal valorDaTarifa;
	protected BigDecimal valorDoTitulo;
	protected BigDecimal valorDoDesconto;
	protected BigDecimal valorDoPagto;
	protected BigDecimal valorDosJuros;
	protected BigDecimal abatimento;
	
	@Field( offset = 38, length = 25 )
	public String getCodIdentificacao() {
		return codIdentificacao;
	}
	public void setCodIdentificacao(String codIdentificacao) {
		this.codIdentificacao = codIdentificacao;
	}
	@Field( offset = 63, length = 8 )
	public String getNossoNumero() {
		return nossoNumero;
	}
	public void setNossoNumero(String nossoNumero) {
		this.nossoNumero = nossoNumero;
	}
	@Field( offset = 109, length = 2 )
	public String getCodOcorrencia() {
		return codOcorrencia;
	}
	public void setCodOcorrencia(String codOcorrencia) {
		this.codOcorrencia = codOcorrencia;
	}
	@Field( offset = 111, length = 6 )
	public Date getDataOcorrencia() {
		return dataOcorrencia;
	}
	public void setDataOcorrencia(Date dataOcorrencia) {
		this.dataOcorrencia = dataOcorrencia;
	}
	@Field( offset = 147, length = 6 )
	public Date getVencimento() {
		return vencimento;
	}
	public void setVencimento(Date vencimento) {
		this.vencimento = vencimento;
	}
	@Field( offset = 153, length = 13, paddingChar = '0' , align = Align.RIGHT )
	public BigDecimal getValorDoTitulo() {
		return valorDoTitulo;
	}
	public void setValorDoTitulo(BigDecimal valorDoTitulo) {
		this.valorDoTitulo = valorDoTitulo;
	}
	@Field( offset = 241, length = 13, paddingChar = '0' , align = Align.RIGHT )
	public BigDecimal getValorDoDesconto() {
		return valorDoDesconto;
	}
	public void setValorDoDesconto(BigDecimal valorDoDesconto) {
		this.valorDoDesconto = valorDoDesconto;
	}
	@Field( offset = 267, length = 13, paddingChar = '0' , align = Align.RIGHT )
	public BigDecimal getValorDosJuros() {
		return valorDosJuros;
	}
	public void setValorDosJuros(BigDecimal valorDosJuros) {
		this.valorDosJuros = valorDosJuros;
	}
	@Field( offset = 228, length = 13, paddingChar = '0' , align = Align.RIGHT )
	public BigDecimal getAbatimento() {
		return abatimento;
	}
	public void setAbatimento(BigDecimal abatimento) {
		this.abatimento = abatimento;
	}
	@Field( offset = 117, length = 10 )
	public String getNoDocumento() {
		return noDocumento;
	}
	public void setNoDocumento(String noDocumento) {
		this.noDocumento = noDocumento;
	}
	@Field( offset = 254, length = 13 )
	public BigDecimal getValorDoPagto() {
		return valorDoPagto;
	}
	public void setValorDoPagto(BigDecimal valorDoPagto) {
		this.valorDoPagto = valorDoPagto;
	}
	@Field( offset = 176, length = 13 )
	public BigDecimal getValorDaTarifa() {
		return valorDaTarifa;
	}
	public void setValorDaTarifa(BigDecimal valorDaTarifa) {
		this.valorDaTarifa = valorDaTarifa;
	}
}
