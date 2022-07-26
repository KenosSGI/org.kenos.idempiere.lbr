package org.kenos.idempiere.lbr.bankslip.cnab400.bean.out.fibra;

import java.math.BigDecimal;
import java.sql.Timestamp;

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

	protected String  codEmpresa;
	protected String  usoDaEmpresa;
	protected Integer codIdentificacao;
	protected String  nossoNumero;
	protected String  nossoNumeroBanco;
	protected Integer codMulta;
	protected Integer codJuros;
	protected String  valMulta;
	protected Integer numDias;
	protected String  usoBanco;
	protected String codCarteira;
	protected String  codOcorrencia;
	protected Timestamp  vencimento;
	protected String  valTitulo;
	protected String  usoEmpresaBen;
	protected String  noDocumento;
	protected BigDecimal valorDoTitulo;
	protected Integer codigoDoBanco;
	protected String  especie;
	protected Integer codMoeda;
	
	
	@Field ( offset = 18, length = 20, paddingChar = '0' , align = Align.RIGHT )
	public String getCodEmpresa() {
		return codEmpresa;
	}


	public void setCodEmpresa(String codEmpresa) {
		this.codEmpresa = codEmpresa;
	}

	@Field ( offset = 38, length = 25, paddingChar = '0' , align = Align.RIGHT )
	public String getUsoDaEmpresa() {
		return usoDaEmpresa;
	}


	public void setUsoDaEmpresa(String usoDaEmpresa) {
		this.usoDaEmpresa = usoDaEmpresa;
	}

	@Field ( offset = 63, length = 13, paddingChar = '0' , align = Align.RIGHT )
	public String getNossoNumero() {
		return nossoNumero;
	}


	public void setNossoNumero(String nossoNumero) {
		this.nossoNumero = nossoNumero;
	}

	@Field ( offset = 74, length = 13, paddingChar = '0' , align = Align.RIGHT )
	public String getNossoNumeroBanco() {
		return nossoNumeroBanco;
	}

	
	public void setNossoNumeroBanco(String nossoNumeroBanco) {
		this.nossoNumeroBanco = nossoNumeroBanco;
	}

	@Field ( offset = 90, length = 1, paddingChar = '0' , align = Align.RIGHT )
	public Integer getCodMulta() {
		return codMulta;
	}
	
	
	public void setCodMulta(Integer codMulta) {
		this.codMulta = codMulta;
	}

	@Field ( offset = 91 , length = 13, paddingChar = '0' , align = Align.RIGHT )
	public String getValMulta() {
		return valMulta;
	}


	public void setValMulta(String valMulta) {
		this.valMulta = valMulta;
	}

	@Field ( offset = 104, length = 2, paddingChar = '0' , align = Align.RIGHT )
	public Integer getNumDias() {
		return numDias;
	}
	
	
	public void setNumDias(Integer numDias) {
		this.numDias = numDias;
	}

	
	@Field ( offset = 106, length = 2, paddingChar = '0' , align = Align.RIGHT )
	public String getUsoBanco() {
		return usoBanco;
	}


	public void setUsoBanco(String usoBanco) {
		this.usoBanco = usoBanco;
	}

	@Field ( offset = 108 , length = 1, paddingChar = '0' , align = Align.RIGHT )
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
	public String getNoDocumento() {
		return noDocumento;
	}


	public void setNoDocumento(String noDocumento) {
		this.noDocumento = noDocumento;
	}
	
	
	@Field ( offset = 121, length = 6, paddingChar = '0' , align = Align.RIGHT, formatter = DateFormatter.class)
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

	@Field ( offset = 148, length = 2, paddingChar = '0' , align = Align.RIGHT )
	public String getEspecie() {
		return especie;
	}


	public void setEspecie(String especie) {
		this.especie = especie;
	}

	@Field ( offset = 394, length = 1, paddingChar = '0' , align = Align.RIGHT )
	public Integer getCodMoeda() {
		return codMoeda;
	}


	public void setCodMoeda(Integer codMoeda) {
		this.codMoeda = codMoeda;
	}

	
	@Fields( value = { 
			@Field ( offset =  87, length =  3) ,
			@Field ( offset = 106, length =  2, paddingChar = '0' , align = Align.RIGHT ) ,
			@Field ( offset = 143, length =  5, paddingChar = '0' , align = Align.RIGHT) ,
			@Field ( offset = 382, length =  10 ) ,			
			} )
	public String getEmpty() { return ""; }
}	//	CNABRecord1Detail
