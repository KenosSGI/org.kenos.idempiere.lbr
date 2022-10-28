package org.kenos.idempiere.lbr.bankslip.cnab400.bean.out.inter;

import java.math.BigDecimal;
import java.sql.Timestamp;

import org.kenos.idempiere.lbr.bankslip.cnab400.bean.formatter.CNABStringFormatter;
import org.kenos.idempiere.lbr.bankslip.cnab400.bean.formatter.NumericStringFormatter;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Fields;
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
	protected Integer multa;
	protected BigDecimal valorMulta;
	protected BigDecimal perMulta;
	protected Timestamp dataMulta;
	protected Integer mora;
	protected BigDecimal perMora;
	protected Timestamp dataMora;
	protected Integer desconto;
	protected BigDecimal perDesconto;
	protected String mensagemLivre;
	protected Integer dataLimite;

	@Override
	@Field ( offset = 2, length = 2 )
	public Integer getCodInscricaoEmpresa() {
		return codInscricaoEmpresa;
	}
	
	public void setCodInscricaoEmpresa(Integer codInscricaoEmpresa) {
		this.codInscricaoEmpresa = codInscricaoEmpresa;
	}
	
	@Override
	@Field ( offset = 4, length = 14 )
	public String getNumInscricaoEmpresa() {
		return numInscricaoEmpresa;
	}
	
	public void setNumInscricaoEmpresa(String numInscricaoEmpresa) {
		this.numInscricaoEmpresa = numInscricaoEmpresa;
	}
	
	
	@Field ( offset = 21, length = 3, paddingChar = '0' , align = Align.RIGHT, formatter = NumericStringFormatter.class )
	public String getNumCarteira() {
		return numCarteira;
	}
	
	public void setNumCarteira(String numCarteira) {
		this.numCarteira = numCarteira;
	}
	
	@Field ( offset = 24, length = 4, paddingChar = '0' , align = Align.RIGHT )
	public Integer getAgencia() {
		return usoExclusivo;
	}
	
	public void setAgencia(Integer usoExclusivo) {
		this.usoExclusivo = usoExclusivo;
	}
	
	@Field ( offset = 28, length = 10, paddingChar = '0' , align = Align.RIGHT )
	public Integer getConta() {
		return conta;
	}
	
	public void setConta(Integer conta) {
		this.conta = conta;
	}

	
	@Field ( offset = 38, length = 25 )
	public String getCodIdentificacao() {
		return codIdentificacao;
	}
	
	public void setCodIdentificacao(String codIdentificacao) {
		this.codIdentificacao = codIdentificacao;
	}
	
	@Field ( offset = 66, length = 1, paddingChar = '0' , align = Align.RIGHT )
	public Integer getMulta() {
		return multa;
	}

	public void setMulta(Integer multa) {
		this.multa = multa;
	}
	
	@Field ( offset = 67, length = 13, paddingChar = '0' , align = Align.RIGHT )
	public BigDecimal getValorMulta() {
		return valorMulta;
	}
	
	public void setValorMulta(BigDecimal valorMulta) {
		this.valorMulta = valorMulta;
	}
	
	@Field ( offset = 80, length = 4, paddingChar = '0' , align = Align.RIGHT )
	public BigDecimal getPerMulta() {
		return perMulta;
	}
	
	public void setPerMulta(BigDecimal perMulta) {
		this.perMulta = perMulta;
	}
	
	@Field ( offset = 84, length = 6, paddingChar = '0', align = Align.RIGHT, formatter = DateFormatter.class )
	public Timestamp getDataMulta() {
		return dataMulta;
	}
	
	public void setDataMulta(Timestamp dataMulta) {
		this.dataMulta = dataMulta;
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
	
	@Field ( offset = 140, length = 2 )
	public Integer getDataLimite() {
		return dataLimite;
	}

	public void setDataLimite(Integer dataLimite) {
		this.dataLimite = dataLimite;
	}
	
	@Field ( offset = 148, length = 2 )
	public String getEspecie() {
		return especie;
	}


	public void setEspecie(String especie) {
		this.especie = especie;
	}
	
	@Field ( offset = 160, length = 1 )
	public Integer getMora() {
		return mora;
	}
	
	public void setMora(Integer mora) {
		this.mora = mora;
	}
	
	@Field ( offset = 174, length = 4, paddingChar = '0' , align = Align.RIGHT)
	public BigDecimal getPerMora() {
		return perMora;
	}
	
	public void setPerMora(BigDecimal perMora) {
		this.perMora = perMora;
	}
	
	@Field ( offset = 178, length = 6, paddingChar = '0', align = Align.RIGHT, formatter = DateFormatter.class )
	public Timestamp getDataMora() {
		return dataMora;
	}
	
	public void setDataMora(Timestamp dataMora) {
		this.dataMora = dataMora;
	}

	@Field ( offset = 184, length = 1, paddingChar = '0', align = Align.RIGHT )
	public Integer getDesconto() {
		return desconto;
	}
	
	public void setDesconto(Integer desconto) {
		this.desconto = desconto;
	}
	
	
	@Field ( offset = 185, length = 13, paddingChar = '0' , align = Align.RIGHT )
	@Override
	public BigDecimal getValorDoDesconto() {
		return valorDoDesconto;
	}
	
	@Override
	public void setValorDoDesconto(BigDecimal valorDoDesconto) {
		this.valorDoDesconto = valorDoDesconto;
	}
	
	@Field ( offset = 198, length = 4, paddingChar = '0' , align = Align.RIGHT )
	public BigDecimal getPerDesconto() {
		return perDesconto;
	}
	
	public void setPerDesconto(BigDecimal perDesconto) {
		this.perDesconto = perDesconto;
	}
	
	
	@Field ( offset = 202, length = 6, paddingChar = '0' , align = Align.RIGHT, formatter = DateFormatter.class )
	@Override
	public Timestamp getDescontoAte() {
		return descontoAte;
	}
	@Override
	public void setDescontoAte(Timestamp descontoAte) {
		this.descontoAte = descontoAte;
	}
	
	@Override
	@Field ( offset = 221, length = 2, paddingChar = '0' , align = Align.RIGHT )
	public Integer getCodInscricaoPagador() {
		return codInscricaoPagador;
	}
	
	public void setCodInscricaoPagador(Integer codInscricaoPagador) {
		this.codInscricaoPagador = codInscricaoPagador;
	}
	
	
	@Field ( offset = 223, length = 14, paddingChar = '0' , align = Align.RIGHT, formatter = NumericStringFormatter.class )
	@Override
	public String getNumInscricaoPagador() {
		return numeroDeInscricaoPagador;
	}
	
	@Override
	public void setNumInscricaoPagador(String numeroDeInscricaoPagador) {
		this.numeroDeInscricaoPagador = numeroDeInscricaoPagador;
	}
		
	@Override
	@Field ( offset = 237, length = 40, formatter = CNABStringFormatter.class )
	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}

	@Override
	@Field ( offset = 277, length = 40, formatter = CNABStringFormatter.class )
	public String getLogradouro() {
		return logradouro;
	}
	
	public void setLogradouro(String logradouro) {
		this.logradouro = logradouro;
	}
	
	@Override
	@Field ( offset = 317, length = 8, paddingChar = '0' , align = Align.RIGHT, formatter = NumericStringFormatter.class )
	public String getCep() {
		return cep;
	}
	
	public void setCep(String cep) {
		this.cep = cep;
	}
	
	@Field ( offset = 325, length = 70 )
	public String getMensagemLivre() {
		return mensagemLivre;
	}

	public void setMensagemLivre(String mensagemLivre) {
		this.mensagemLivre = mensagemLivre;
	}
	

	@Fields( value = { 
			@Field ( offset =  2, length =  19 ) ,
			@Field ( offset =  63, length = 3 ) ,
			@Field ( offset =  90, length = 11, paddingChar = '0'),
			@Field ( offset = 101, length =  8 ) ,
			@Field ( offset = 142, length =  6 ) ,
			@Field ( offset = 157, length =  3 ) ,
			@Field ( offset = 208, length =  13, paddingChar = '0' ) ,
			@Field ( offset = 394, length =  1 ) 
			} )
	public String getEmpty() { return ""; }


}	//	CNABRecord1Detail
