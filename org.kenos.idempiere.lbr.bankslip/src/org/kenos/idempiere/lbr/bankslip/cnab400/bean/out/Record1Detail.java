package org.kenos.idempiere.lbr.bankslip.cnab400.bean.out;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Date;

import org.kenos.idempiere.lbr.bankslip.cnab400.bean.RecordBase;
import org.kenos.idempiere.lbr.bankslip.cnab400.bean.formatter.CNABStringFormatter;
import org.kenos.idempiere.lbr.bankslip.cnab400.bean.formatter.NumericStringFormatter;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;
import com.ancientprogramming.fixedformat4j.format.impl.DateFormatter;

@Record  
public class Record1Detail extends RecordBase {

	public Record1Detail() {
		super(1);
	}	//	CNABRecord1Detail

	protected Integer codInscricaoEmpresa;  
	protected String numInscricaoEmpresa;
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
	public String getEmpty() { return ""; }
}	//	CNABRecord1Detail
