package org.kenos.idempiere.lbr.bankslip.cnab400.bean.out.bmp;

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

	protected String agencia;
	protected String agenciaDV;
	protected String razaoConta;
	protected String contaCorrente;
	protected String contaCorrenteDV;
	protected String identificacaoEmpresa;
	protected String codIdentificacao;
	protected String codBanco;
	protected int multa;
	protected BigDecimal percentualMulta;
	protected String nossoNumero;
	protected String nossoNumeroDV;
	protected BigDecimal descontoBonificacao;
	protected String codOcorrencia;
	protected String noDocumento;
	protected String especie;
	protected Timestamp vencimento;
	protected BigDecimal valorDoTitulo;
	
	@Field ( offset = 2, length = 5, paddingChar = '0' , align = Align.RIGHT, formatter = NumericStringFormatter.class )
	public String getAgencia() {
		return agencia;
	}
	
	public void setAgencia(String agencia) {
		this.agencia = agencia;
	}
	
	@Field ( offset = 7, length = 1 )
	public String getAgenciaDV() {
		return agenciaDV;
	}
	
	public void setAgenciaDV(String agenciaDV) {
		this.agenciaDV = agenciaDV;
	}
	
	@Field ( offset = 8, length = 5, paddingChar = '0' , align = Align.RIGHT, formatter = NumericStringFormatter.class )
	public String getRazaoConta() {
		return razaoConta;
	}
	
	public void setRazaoConta(String razaoConta) {
		this.razaoConta = razaoConta;
	}
	
	@Field ( offset = 13, length = 7, paddingChar = '0' , align = Align.RIGHT, formatter = NumericStringFormatter.class )
	public String getContaCorrente() {
		return contaCorrente;
	}
	
	public void setContaCorrente(String contaCorrente) {
		this.contaCorrente = contaCorrente;
	}
	
	@Field ( offset = 20, length = 1 )
	public String getContaCorrenteDV() {
		return contaCorrenteDV;
	}
	
	public void setContaCorrenteDV(String contaCorrenteDV) {
		this.contaCorrenteDV = contaCorrenteDV;
	}
	
	@Field ( offset = 21, length = 17, paddingChar = '0' , align = Align.RIGHT, formatter = NumericStringFormatter.class )
	public String getIdentificacaoEmpresa() {
		return identificacaoEmpresa;
	}
	
	public void setIdentificacaoEmpresa(String identificacaoEmpresa) {
		this.identificacaoEmpresa = identificacaoEmpresa;
	}
	
	@Field ( offset = 38, length = 15, paddingChar = '0' , align = Align.RIGHT, formatter = NumericStringFormatter.class )
	public String getCodIdentificacao() {
		return codIdentificacao;
	}
	
	public void setCodIdentificacao(String codIdentificacao) {
		this.codIdentificacao = codIdentificacao;
	}
	
	@Field ( offset = 66, length = 1 )
	public int getMulta() {
		return multa;
	}
	
	public void setMulta(int multa) {
		this.multa = multa;
	}
	
	@Field ( offset = 67, length = 4, paddingChar = '0' , align = Align.RIGHT )
	public BigDecimal getPercentualMulta() {
		return percentualMulta;
	}
	
	public void setPercentualMulta(BigDecimal percentualMulta) {
		this.percentualMulta = percentualMulta;
	}
	
	@Field ( offset = 71, length = 11, paddingChar = '0' , align = Align.RIGHT )
	public String getNossoNumero() {
		return nossoNumero;
	}
	
	public void setNossoNumero(String nossoNumero) {
		this.nossoNumero = nossoNumero;
	}
	
	@Field ( offset = 82, length = 1 )
	public String getNossoNumeroDV() {
		return nossoNumeroDV;
	}
	
	public void setNossoNumeroDV(String dvNossoNumero) {
		this.nossoNumeroDV = dvNossoNumero;
	}
	
	@Field ( offset = 83, length = 10, paddingChar = '0' , align = Align.RIGHT )
	public BigDecimal getDescontoBonif() {
		return descontoBonificacao;
	}
	
	@Field ( offset = 93, length = 1 )
	public int getEmissaoPapeleta() {
		return 2;
	}
	
	@Field ( offset = 94, length = 1 )
	public String getDebitoAuto() {
		return "N";
	}
	
	@Field ( offset = 106, length = 1 )
	public int getAvisoDebito() {
		return 0;
	}
	
	public void setDescontoBonif(BigDecimal descontoBonificacao) {
		this.descontoBonificacao = descontoBonificacao;
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

	@Override
	public void setCidade(String cidade) {}
	@Override
	public String getCidade() { return null; }
	@Override
	public void setEstado(String estado) {}
	@Override
	public String getEstado() { return null; }
	
	@Fields( value = { 
			@Field ( offset =   7, length =  1 ),
			@Field ( offset =  63, length =  3, paddingChar = '0' ),
			@Field ( offset =  93, length =  1, paddingChar = '2' ),
			@Field ( offset =  94, length =  1, paddingChar = 'N' ),
			@Field ( offset =  95, length = 10 ),
			@Field ( offset = 105, length =  1 ),
			@Field ( offset = 106, length =  1, paddingChar = '0' ),
			@Field ( offset = 107, length =  2 ),
			@Field ( offset = 140, length =  3, paddingChar = '0' ),
			@Field ( offset = 143, length =  5, paddingChar = '0' ),
			@Field ( offset = 150, length =  1, paddingChar = 'N' ),
			@Field ( offset = 335, length =  1, paddingChar = '0' )
			} )
	public String getEmpty() { return ""; }
}	//	CNABRecord1Detail
