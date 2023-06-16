package org.kenos.idempiere.lbr.bankslip.cnab240.bean;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class CNABTrailerLoteRecord extends CNABBaseRecord {
	
	private int quantidadeRegistros;
	private int quantidadeTitulosSimples;
	private Double valorTitulosSimples;
	private int quantidadeTitulosVinculada;
	private Double valorTitulosVinculada;
	private int quantidadeTitulosCobrancaCaucionada;
	private int quantidadeTitulosCarteiraCaucionada;
	private int quantidadeTitulosCobrancaDescontada;
	
	public CNABTrailerLoteRecord() {
		super();
		this.setTipoRegistro(5);
	}
	
	@Field(offset = 18, length = 6, paddingChar = '0' , align = Align.RIGHT )
	public int getQuantidadeRegistros() {
		return quantidadeRegistros;
	}
	public void setQuantidadeRegistros(int quantidadeRegistros) {
		this.quantidadeRegistros = quantidadeRegistros;
	}
	
	@Field(offset = 24, length = 6, paddingChar = '0' , align = Align.RIGHT )
	public int getQuantidadeTitulosSimples() {
		return quantidadeTitulosSimples;
	}
	public void setQuantidadeTitulosSimples(int quantidadeTitulosSimples) {
		this.quantidadeTitulosSimples = quantidadeTitulosSimples;
	}
	
	@Field(offset = 30, length = 17, paddingChar = '0' , align = Align.RIGHT )
	public Double getValorTitulosSimples() {
		return valorTitulosSimples;
	}
	public void setValorTitulosSimples(Double valorTitulosSimples) {
		this.valorTitulosSimples = valorTitulosSimples;
	}
	
	@Field(offset = 47, length = 6, paddingChar = '0' , align = Align.RIGHT )
	public int getQuantidadeTitulosVinculada() {
		return quantidadeTitulosVinculada;
	}
	public void setQuantidadeTitulosVinculada(int quantidadeTitulosVinculada) {
		this.quantidadeTitulosVinculada = quantidadeTitulosVinculada;
	}
	
	@Field(offset = 53, length = 17, paddingChar = '0' , align = Align.RIGHT )
	public Double getValorTitulosVinculada() {
		return valorTitulosVinculada;
	}
	public void setValorTitulosVinculada(Double valorTitulosVinculada) {
		this.valorTitulosVinculada = valorTitulosVinculada;
	}
	
	@Field(offset = 70, length = 6, paddingChar = '0' , align = Align.RIGHT )
	public int getQuantidadeTitulosCobrancaCaucionada() {
		return quantidadeTitulosCobrancaCaucionada;
	}
	public void setQuantidadeTitulosCobrancaCaucionada(int quantidadeTitulosCobrancaCaucionada) {
		this.quantidadeTitulosCobrancaCaucionada = quantidadeTitulosCobrancaCaucionada;
	}
	
	@Field(offset = 76, length = 17, paddingChar = '0' , align = Align.RIGHT )
	public int getQuantidadeTitulosCarteiraCaucionada() {
		return quantidadeTitulosCarteiraCaucionada;
	}
	public void setQuantidadeTitulosCarteiraCaucionada(int quantidadeTitulosCarteiraCaucionada) {
		this.quantidadeTitulosCarteiraCaucionada = quantidadeTitulosCarteiraCaucionada;
	}
	
	@Field(offset = 93, length = 6, paddingChar = '0' , align = Align.RIGHT )
	public int getQuantidadeTitulosCobrancaDescontada() {
		return quantidadeTitulosCobrancaDescontada;
	}
	public void setQuantidadeTitulosCobrancaDescontada(int quantidadeTitulosCobrancaDescontada) {
		this.quantidadeTitulosCobrancaDescontada = quantidadeTitulosCobrancaDescontada;
	}
	
}
