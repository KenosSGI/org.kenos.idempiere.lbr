package org.kenos.idempiere.lbr.bankslip.cnab400.bean.out.Itau;

import java.math.BigDecimal;
import java.sql.Timestamp;

import org.kenos.idempiere.lbr.bankslip.cnab400.bean.formatter.NumericStringFormatter;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Fields;
import com.ancientprogramming.fixedformat4j.annotation.FixedFormatDecimal;
import com.ancientprogramming.fixedformat4j.annotation.Record;
import com.ancientprogramming.fixedformat4j.format.impl.DateFormatter;

@Record  
public class Record1Detail extends org.kenos.idempiere.lbr.bankslip.cnab400.bean.out.Record1Detail {

	public Record1Detail() {
		super();
	}	//	CNABRecord1Detail

	protected Integer usoExclusivo;
	protected Integer conta;
	protected Integer dac;
	protected Integer instrucao;
	protected String codIdentificacao;
	protected String nossoNumero;
	protected BigDecimal qteDeMoeda;
	protected String numCarteira;
	protected String usoDoBanco;
	protected String codCarteira;
	protected String codOcorrencia;
	protected String noDocumento;
	protected Timestamp vencimento;
	protected BigDecimal valorDoTitulo;
	protected Integer codigoDoBanco;
	protected Integer agenciaCobradora;
	protected String especie;
	

	
	@Field ( offset = 18, length = 4, paddingChar = '0' , align = Align.RIGHT )
	public Integer getAgencia() {
		return usoExclusivo;
	}
	
	public void setAgencia(Integer usoExclusivo) {
		this.usoExclusivo = usoExclusivo;
	}
	
	@Field ( offset = 24, length = 5, paddingChar = '0' , align = Align.RIGHT )
	public Integer getConta() {
		return conta;
	}
	
	public void setConta(Integer conta) {
		this.conta = conta;
	}
	
	@Field ( offset = 29, length = 1, paddingChar = '0' , align = Align.RIGHT )
	public Integer getDac() {
		return dac;
	}
	
	public void setDac(Integer dac) {
		this.dac = dac;
	}
	
	@Field ( offset = 34, length = 4, paddingChar = '0' , align = Align.RIGHT )
	public Integer getInstrucao() {
		return instrucao;
	}
	
	public void setInstrucao(Integer instrucao) {
		this.instrucao = instrucao;
	}
	
	@Field ( offset = 38, length = 25 )
	public String getCodIdentificacao() {
		return codIdentificacao;
	}
	
	public void setCodIdentificacao(String codIdentificacao) {
		this.codIdentificacao = codIdentificacao;
	}
	
	@Field ( offset = 63, length = 8, paddingChar = '0', align = Align.RIGHT, formatter = NumericStringFormatter.class )
	public String getNossoNumero() {
		return nossoNumero;
	}
	
	public void setNossoNumero(String nossoNumero) {
		this.nossoNumero = nossoNumero;
	}
	
	@FixedFormatDecimal ( decimals = 5 )
	@Field ( offset = 71, length = 13, paddingChar = '0' , align = Align.RIGHT )
	public BigDecimal getQteDeMoeda() {
		return qteDeMoeda;
	}
	
	public void setQteDeMoeda(BigDecimal qteDeMoeda) {
		this.qteDeMoeda = qteDeMoeda;
	}
	
	@Field ( offset = 84, length = 3, paddingChar = '0' , align = Align.RIGHT, formatter = NumericStringFormatter.class )
	public String getNumCarteira() {
		return numCarteira;
	}
	
	public void setNumCarteira(String numCarteira) {
		this.numCarteira = numCarteira;
	}
	
	@Field ( offset = 87, length = 21 )
	public String getUsoDoBanco() {
		return usoDoBanco;
	}
	
	public void setUsoDoBanco(String usoDoBanco) {
		this.usoDoBanco = usoDoBanco;
	}
	
	@Field ( offset = 108, length = 1 )
	public String getCodCarteira() {
		return codCarteira;
	}
	
	public void setCodCarteira(String codCarteira) {
		this.codCarteira = codCarteira;
	}
	
	@Field ( offset = 109, length = 2, paddingChar = '0' , align = Align.RIGHT, formatter = NumericStringFormatter.class )
	public String getCodOcorrencia() {
		return codOcorrencia;
	}
	
	public void setCodOcorrencia(String codOcorrencia) {
		this.codOcorrencia = codOcorrencia;
	}
	
	@Field ( offset = 111, length = 10 )
	public String getNoDocumento() {
		return noDocumento;
	}
	
	public void setNoDocumento(String noDocumento) {
		this.noDocumento = noDocumento;
	}
	
	@Field ( offset = 121, length = 6, paddingChar = '0', align = Align.RIGHT, formatter = DateFormatter.class )
	public Timestamp getVencimento() {
		return vencimento;
	}
	
	public void setVencimento(Timestamp vencimento) {
		this.vencimento = vencimento;
	}
	
	@Field ( offset = 127, length = 13, paddingChar = '0' , align = Align.RIGHT )
	public BigDecimal getValorDoTitulo() {
		return valorDoTitulo;
	}
	
	public void setValorDoTitulo(BigDecimal valorDoTitulo) {
		this.valorDoTitulo = valorDoTitulo;
	}
	
	@Field ( offset = 140, length = 3, paddingChar = '0' , align = Align.RIGHT )
	public Integer getCodigoDoBanco() {
		return codigoDoBanco;
	}
	
	public void setCodigoDoBanco(Integer codigoDoBanco) {
		this.codigoDoBanco = codigoDoBanco;
	}
	
	@Field ( offset = 143, length = 5, paddingChar = '0' , align = Align.RIGHT )
	public Integer getAgenciaCobradora() {
		return agenciaCobradora;
	}
	
	public void setAgenciaCobradora(Integer agenciaCobradora) {
		this.agenciaCobradora = agenciaCobradora;
	}
	
	@Field ( offset = 148, length = 2 )
	public String getEspecie() {
		return especie;
	}
	
	public void setEspecie(String especie) {
		this.especie = especie;
	}
	

	@Fields( value = { 
			@Field ( offset =  22, length =  2, paddingChar = '0' , align = Align.RIGHT ) ,
			@Field ( offset =  30, length =  4 ) ,
			@Field ( offset =  87, length = 21 ) ,
			@Field ( offset = 265, length = 10 ) ,
			@Field ( offset = 382, length =  4 ) ,
			@Field ( offset = 394, length =  1 ) 
			} )
	public String getEmpty() { return ""; }
}	//	CNABRecord1Detail
