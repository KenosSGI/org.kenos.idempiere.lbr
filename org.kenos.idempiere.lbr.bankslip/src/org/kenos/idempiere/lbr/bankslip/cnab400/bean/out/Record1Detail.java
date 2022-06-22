package org.kenos.idempiere.lbr.bankslip.cnab400.bean.out;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Date;

import org.kenos.idempiere.lbr.bankslip.cnab400.bean.RecordBase;
import org.kenos.idempiere.lbr.bankslip.cnab400.bean.formatter.CNABStringFormatter;
import org.kenos.idempiere.lbr.bankslip.cnab400.bean.formatter.NumericStringFormatter;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Fields;
import com.ancientprogramming.fixedformat4j.annotation.FixedFormatDecimal;
import com.ancientprogramming.fixedformat4j.annotation.Record;
import com.ancientprogramming.fixedformat4j.format.impl.DateFormatter;

@Record  
public class Record1Detail extends RecordBase {

	public Record1Detail() {
		super(1);
	}	//	CNABRecord1Detail

	protected Integer codInscricaoEmpresa;  
	protected String numInscricaoEmpresa;
	protected Integer agencia;
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
	protected String aceite;
	protected Timestamp dataDeEmissao;
	protected String instrucao1;
	protected String instrucao2;
	protected BigDecimal jurosDe1Dia;
	protected Timestamp descontoAte;
	protected BigDecimal valorDoDesconto;
	protected BigDecimal valorDoIOF;
	protected BigDecimal abatimento;
	protected Integer codInscricaoPagador;
	protected String numeroDeInscricaoPagador;
	protected String nome;
	protected String logradouro;
	protected String bairro;
	protected String cep;
	protected String cidade;
	protected String estado;
	protected String sacadorAvalista;
	protected Timestamp dataDeMora;
	protected Integer prazo;
	
	@Field ( offset = 2, length = 2, paddingChar = '0' , align = Align.RIGHT )
	public Integer getCodInscricaoEmpresa() {
		return codInscricaoEmpresa;
	}
	
	public void setCodInscricaoEmpresa(Integer codInscricaoEmpresa) {
		this.codInscricaoEmpresa = codInscricaoEmpresa;
	}
	
	@Field ( offset = 4, length = 14, paddingChar = '0' , align = Align.RIGHT, formatter = NumericStringFormatter.class )
	public String getNumInscricaoEmpresa() {
		return numInscricaoEmpresa;
	}
	
	public void setNumInscricaoEmpresa(String numInscricaoEmpresa) {
		this.numInscricaoEmpresa = numInscricaoEmpresa;
	}
	
	@Field ( offset = 18, length = 4, paddingChar = '0' , align = Align.RIGHT )
	public Integer getAgencia() {
		return agencia;
	}
	
	public void setAgencia(Integer agencia) {
		this.agencia = agencia;
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
	
	@Field ( offset = 150, length = 1 )
	public String getAceite() {
		return aceite;
	}
	
	public void setAceite(String aceite) {
		this.aceite = aceite;
	}
	
	@Field ( offset = 151, length = 6, paddingChar = '0' , align = Align.RIGHT, formatter = DateFormatter.class )
	public Timestamp getDataDeEmissao() {
		return dataDeEmissao;
	}
	
	public void setDataDeEmissao(Timestamp dataDeEmissao) {
		this.dataDeEmissao = dataDeEmissao;
	}
	
	@Field ( offset = 157, length = 2 )
	public String getInstrucao1() {
		return instrucao1;
	}
	
	public void setInstrucao1(String instrucao1) {
		this.instrucao1 = instrucao1;
	}
	
	@Field ( offset = 159, length = 2 )
	public String getInstrucao2() {
		return instrucao2;
	}
	
	public void setInstrucao2(String instrucao2) {
		this.instrucao2 = instrucao2;
	}
	
	@Field ( offset = 161, length = 13, paddingChar = '0' , align = Align.RIGHT )
	public BigDecimal getJurosDe1Dia() {
		return jurosDe1Dia;
	}
	
	public void setJurosDe1Dia(BigDecimal jurosDe1Dia) {
		this.jurosDe1Dia = jurosDe1Dia;
	}
	
	@Field ( offset = 174, length = 6, paddingChar = '0' , align = Align.RIGHT, formatter = DateFormatter.class )
	public Timestamp getDescontoAte() {
		return descontoAte;
	}
	
	public void setDescontoAte(Timestamp descontoAte) {
		this.descontoAte = descontoAte;
	}
	
	@Field ( offset = 180, length = 13, paddingChar = '0' , align = Align.RIGHT )
	public BigDecimal getValorDoDesconto() {
		return valorDoDesconto;
	}
	
	public void setValorDoDesconto(BigDecimal valorDoDesconto) {
		this.valorDoDesconto = valorDoDesconto;
	}
	
	@Field ( offset = 193, length = 13, paddingChar = '0' , align = Align.RIGHT )
	public BigDecimal getValorDoIOF() {
		return valorDoIOF;
	}
	
	public void setValorDoIOF(BigDecimal valorDoIOF) {
		this.valorDoIOF = valorDoIOF;
	}
	
	@Field ( offset = 206, length = 13, paddingChar = '0' , align = Align.RIGHT )
	public BigDecimal getAbatimento() {
		return abatimento;
	}
	
	public void setAbatimento(BigDecimal abatimento) {
		this.abatimento = abatimento;
	}
	
	@Field ( offset = 219, length = 2, paddingChar = '0' , align = Align.RIGHT )
	public Integer getCodInscricaoPagador() {
		return codInscricaoPagador;
	}
	
	public void setCodInscricaoPagador(Integer codInscricaoPagador) {
		this.codInscricaoPagador = codInscricaoPagador;
	}
	
	@Field ( offset = 221, length = 14, paddingChar = '0' , align = Align.RIGHT, formatter = NumericStringFormatter.class )
	public String getNumInscricaoPagador() {
		return numeroDeInscricaoPagador;
	}
	
	public void setNumInscricaoPagador(String numeroDeInscricaoPagador) {
		this.numeroDeInscricaoPagador = numeroDeInscricaoPagador;
	}
	
	@Field ( offset = 235, length = 30, formatter = CNABStringFormatter.class )
	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	@Field ( offset = 275, length = 40, formatter = CNABStringFormatter.class )
	public String getLogradouro() {
		return logradouro;
	}
	
	public void setLogradouro(String logradouro) {
		this.logradouro = logradouro;
	}
	
	@Field ( offset = 315, length = 12, formatter = CNABStringFormatter.class )
	public String getBairro() {
		return bairro;
	}
	
	public void setBairro(String bairro) {
		this.bairro = bairro;
	}
	
	@Field ( offset = 327, length = 8, paddingChar = '0' , align = Align.RIGHT, formatter = NumericStringFormatter.class )
	public String getCep() {
		return cep;
	}
	
	public void setCep(String cep) {
		this.cep = cep;
	}
	
	@Field ( offset = 335, length = 15, formatter = CNABStringFormatter.class )
	public String getCidade() {
		return cidade;
	}
	
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	
	@Field ( offset = 350, length = 2 )
	public String getEstado() {
		return estado;
	}
	
	public void setEstado(String estado) {
		this.estado = estado;
	}
	
	@Field ( offset = 352, length = 30, formatter = CNABStringFormatter.class )
	public String getSacadorAvalista() {
		return sacadorAvalista;
	}
	
	public void setSacadorAvalista(String sacadorAvalista) {
		this.sacadorAvalista = sacadorAvalista;
	}
	
	@Field ( offset = 386, length = 6, paddingChar = '0' , align = Align.RIGHT )
	public Date getDataDeMora() {
		return dataDeMora;
	}
	
	public void setDataDeMora(Timestamp dataDeMora) {
		this.dataDeMora = dataDeMora;
	}
	
	@Field ( offset = 392, length = 2, paddingChar = '0' , align = Align.RIGHT )
	public Integer getPrazo() {
		return prazo;
	}
	
	public void setPrazo(Integer prazo) {
		this.prazo = prazo;
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
