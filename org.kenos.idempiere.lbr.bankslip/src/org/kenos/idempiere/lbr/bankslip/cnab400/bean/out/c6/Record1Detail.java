package org.kenos.idempiere.lbr.bankslip.cnab400.bean.out.c6;

import java.math.BigDecimal;
import java.sql.Timestamp;

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

	protected String codEmpresa;
	protected String codIdentificacao;
	protected String nossoNumero;
	protected String dvNossoNumero;
	protected String codDoBanco;
	protected String codCarteira;
	protected String codOcorrencia;
	protected String noDocumento;
	protected Timestamp vencimento;
	protected BigDecimal valorDoTitulo;
	protected String especie;
	
	@Field ( offset = 18, length = 12, paddingChar = '0' , align = Align.RIGHT )
	public String getCodEmpresa() {
		return codEmpresa;
	}
	
	public void setCodEmpresa(String codEmpresa) {
		this.codEmpresa = codEmpresa;
	}
	
	@Field ( offset = 38, length = 25 )
	public String getCodIdentificacao() {
		return codIdentificacao;
	}
	
	public void setCodIdentificacao(String codIdentificacao) {
		this.codIdentificacao = codIdentificacao;
	}
	
	@Field ( offset = 63, length = 11 )
	public String getNossoNumero() {
		return nossoNumero;
	}
	
	public void setNossoNumero(String nossoNumero) {
		this.nossoNumero = nossoNumero;
	}
	
	@Field ( offset = 74, length = 1, paddingChar = '0' , align = Align.RIGHT )
	public String getDVNossoNumero() {
		return dvNossoNumero;
	}
	
	public void setDVNossoNumero(String dvNossoNumero) {
		this.dvNossoNumero = dvNossoNumero;
	}
	
	@Field ( offset = 83, length = 3, paddingChar = '0' , align = Align.RIGHT, formatter = NumericStringFormatter.class )
	public String getCodDoBanco() {
		return codDoBanco;
	}
	
	public void setCodDoBanco(String usoDoBanco) {
		this.codDoBanco = usoDoBanco;
	}
	
	@Field ( offset = 107, length = 2 )
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
	
	@Field ( offset = 148, length = 2 )
	public String getEspecie() {
		return especie;
	}
	
	public void setEspecie(String especie) {
		this.especie = especie;
	}

	@Fields( value = { 
			@Field ( offset =  30, length =  8 ) ,
			@Field ( offset =  75, length =  8 ) ,
			@Field ( offset =  86, length = 21 ) ,
			@Field ( offset = 140, length =  8 ) 
			} )
	public String getEmpty() { return ""; }
}	//	CNABRecord1Detail
