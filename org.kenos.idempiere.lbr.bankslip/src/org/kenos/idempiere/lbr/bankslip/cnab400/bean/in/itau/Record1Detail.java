package org.kenos.idempiere.lbr.bankslip.cnab400.bean.in.itau;

import org.kenos.idempiere.lbr.bankslip.cnab400.bean.formatter.NumericStringFormatter;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record  
public class Record1Detail extends org.kenos.idempiere.lbr.bankslip.cnab400.bean.in.Record1Detail {

	public Record1Detail() {
		super();
	}	//	CNABRecord1Detail
	
	public Record1Detail(Integer tipo) {
		super(tipo);
	}	//	CNABRecord1Detail

	protected Integer codInscricaoEmpresa;  
	protected String numInscricaoEmpresa;
	protected Integer agencia;
	protected Integer conta;
	protected Integer dac;
	protected Integer instrucao;
	protected String numCarteira;
	protected String codCarteira;
	protected String nossoNumeroConfirm;
	protected Integer codigoDoBanco;
	protected Integer agenciaCobradora;
	protected String especie;
	protected String aceite;
	protected String instrucao1;
	protected String instrucao2;
	
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
		
	@Field ( offset = 84, length = 3, paddingChar = '0' , align = Align.RIGHT, formatter = NumericStringFormatter.class )
	public String getNumCarteira() {
		return numCarteira;
	}
	
	public void setNumCarteira(String numCarteira) {
		this.numCarteira = numCarteira;
	}
	
	@Field ( offset = 108, length = 1 )
	public String getCodCarteira() {
		return codCarteira;
	}
	
	public void setCodCarteira(String codCarteira) {
		this.codCarteira = codCarteira;
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
}	//	CNABRecord1Detail
