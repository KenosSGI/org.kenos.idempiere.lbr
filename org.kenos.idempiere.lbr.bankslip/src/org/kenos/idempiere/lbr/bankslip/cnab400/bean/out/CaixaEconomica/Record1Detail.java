package org.kenos.idempiere.lbr.bankslip.cnab400.bean.out.CaixaEconomica;

import java.math.BigDecimal;
import java.sql.Timestamp;

import org.kenos.idempiere.lbr.bankslip.cnab400.bean.formatter.CNABStringFormatter;

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

	protected String codBeneficiario;
	protected Integer idEmissao;
	protected Integer idPostagem;
	protected String usoDaEmpresa;
	protected Integer codIdentificacao;
	protected String nossoNumero;
	protected Timestamp dataDeJuros;
	protected Integer codJuros;
//	protected BigDecimal qteDeMoeda;
//	protected String numCarteira;
//	protected String usoDoBanco;
	protected Integer codDesconto;
	protected String codCarteira;
	protected String codOcorrencia;
	protected String usoEmpresaBen;
	protected String noDocumento;
	protected Timestamp vencimento;
	protected BigDecimal valorDoTitulo;
	protected Integer codigoDoBanco;
	protected Integer agenciaCobradora;
	protected String especie;
	protected Integer codMoeda;
	

	@Field ( offset = 21, length = 7, paddingChar = '0' , align = Align.RIGHT )
	public String getCodBeneficiario() {
		return codBeneficiario;
	}



	public void setCodBeneficiario(String string) {
		this.codBeneficiario = string;
	}


	@Field ( offset = 28, length = 1, paddingChar = '0' , align = Align.RIGHT )
	public Integer getIdEmissao() {
		return idEmissao;
	}



	public void setIdEmissao(Integer idEmissao) {
		this.idEmissao = idEmissao;
	}


	@Field ( offset = 29, length = 1, paddingChar = '0' , align = Align.RIGHT )
	public Integer getIdPostagem() {
		return idPostagem;
	}



	public void setIdPostagem(Integer idPostagem) {
		this.idPostagem = idPostagem;
	}


	@Field ( offset = 32, length = 25, paddingChar = '0' , align = Align.RIGHT )
	public String getUsoDaEmpresa() {
		return usoDaEmpresa;
	}



	public void setUsoDaEmpresa(String usoDaEmpresa) {
		this.usoDaEmpresa = usoDaEmpresa;
	}


	@Field ( offset = 57, length = 2, paddingChar = '0' , align = Align.RIGHT )
	public Integer getCodIdentificacao() {
		return codIdentificacao;
	}



	public void setCodIdentificacao(Integer codIdentificacao) {
		this.codIdentificacao = codIdentificacao;
	}


	@Field ( offset = 59, length = 15, paddingChar = '0' , align = Align.RIGHT )
	public String getNossoNumero() {
		return nossoNumero;
	}



	public void setNossoNumero(String nossoNumero) {
		this.nossoNumero = nossoNumero;
	}


//	@Field ( offset = 77, length = 1, paddingChar = '0' , align = Align.RIGHT )
//	public Integer getCodJuros() {
//		return codJuros;
//	}
//
//
//
//	public void setCodJuros(Integer codJuros) {
//		this.codJuros = codJuros;
//	}

	
	@Field ( offset = 78, length = 6, paddingChar = '0' , align = Align.RIGHT, formatter = DateFormatter.class)
	public Timestamp getDataDeJuros() {
		return dataDeJuros;
	}


	public void setDataDeJuros(Timestamp dataDeJuros) {
		this.dataDeJuros = dataDeJuros;
	}
	
	@Field ( offset = 84, length = 1, paddingChar = '0' , align = Align.RIGHT )
	public Integer getCodDesconto() {
		return codDesconto;
	}

	public void setCodDesconto(Integer codDesconto) {
		this.codDesconto = codDesconto;
	}
//	@Field ( offset = 71, length = 13, paddingChar = '0' , align = Align.RIGHT )
//	public String getUsoDoBanco() {
//		return usoDoBanco;
//	}
//
//
//
//	public void setUsoDoBanco(String usoDoBanco) {
//		this.usoDoBanco = usoDoBanco;
//	}


	@Field ( offset = 107, length = 2, paddingChar = '0' , align = Align.RIGHT )
	public String getCodCarteira() {
		return codCarteira;
	}



	public void setCodCarteira(String codCarteira) {
		this.codCarteira = codCarteira;
	}


	@Field ( offset = 109, length = 2, paddingChar = '0' , align = Align.RIGHT )
	public String getCodOcorrencia() {
		return codOcorrencia;
	}



	public void setCodOcorrencia(String codOcorrencia) {
		this.codOcorrencia = codOcorrencia;
	}


	@Field ( offset = 111, length = 10, paddingChar = '0' , align = Align.RIGHT )
	public String getUsoEmpresaBen() {
		return usoEmpresaBen;
	}



	public void setUsoEmpresaBen(String usoEmpresaBen) {
		this.usoEmpresaBen = usoEmpresaBen;
	}



//	public String getNoDocumento() {
//		return noDocumento;
//	}
//
//
//
//	public void setNoDocumento(String noDocumento) {
//		this.noDocumento = noDocumento;
//	}


	@Field ( offset = 121, length = 6, paddingChar = '0' , align = Align.RIGHT, formatter = DateFormatter.class)
	public Timestamp getVencimento() {
		return vencimento;
	}



	public void setVencimento(Timestamp vencimento) {
		this.vencimento = vencimento;
	}


	@Field ( offset = 127, length =13, paddingChar = '0' , align = Align.RIGHT )
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

//	@Field ( offset = 143, length = 5, paddingChar = '0' , align = Align.RIGHT )
//	public Integer getAgenciaCobradora() {
//		return agenciaCobradora;
//	}
//
//
//
//	public void setAgenciaCobradora(Integer agenciaCobradora) {
//		this.agenciaCobradora = agenciaCobradora;
//	}


	@Field ( offset = 148, length = 2, paddingChar = '0' , align = Align.RIGHT )
	public String getEspecie() {
		return especie;
	}
	
	public void setEspecie(String especie) {
		this.especie = especie;
	}
	
	@Override
	@Field ( offset = 159, length = 2, paddingChar = '0' , align = Align.RIGHT)
	public String getInstrucao2() {
		return instrucao2;
	}
	
	public void setInstrucao2(String instrucao2) {
		this.instrucao2 = instrucao2;
	}
	@Override
	@Field ( offset = 368, length = 22, formatter = CNABStringFormatter.class )
	public String getSacadorAvalista() {
		return sacadorAvalista;
	}	
	
	public void setSacadorAvalista(String sacadorAvalista) {
		this.sacadorAvalista = sacadorAvalista;
	}
	
   @Field(offset = 394, length = 1, paddingChar = '0' , align = Align.RIGHT)
	public Integer getCodMoeda() {
		return codMoeda;
	}



	public void setCodMoeda(Integer codMoeda) {
		this.codMoeda = codMoeda;
	}



	//	@FixedFormatDecimal ( decimals = 5 )
//	@Field ( offset = 71, length = 13, paddingChar = '0' , align = Align.RIGHT )
//	public BigDecimal getQteDeMoeda() {
//		return qteDeMoeda;
//	}
//	
//	public void setQteDeMoeda(BigDecimal qteDeMoeda) {
//		this.qteDeMoeda = qteDeMoeda;
//	}
//	
	@Fields( value = { 
			@Field ( offset =  18, length =  3, paddingChar = '0' , align = Align.LEFT ) ,
			@Field ( offset =  30, length =  2, paddingChar = '0' , align = Align.RIGHT ) ,
			@Field ( offset =  74, length =  4 ) ,
			@Field ( offset =  85, length = 22 ) ,
			@Field ( offset = 143, length =  5, paddingChar = '0' , align = Align.RIGHT) ,
			@Field ( offset = 265, length = 10 ) ,
			@Field ( offset = 352, length =  6, paddingChar = '0' , align = Align.RIGHT) ,
			@Field ( offset = 358, length = 10, paddingChar = '0' , align = Align.RIGHT) ,
			@Field ( offset = 382, length =  4 ) ,
			
			} )
	public String getEmpty() { return ""; }
}	//	CNABRecord1Detail
