package org.kenos.idempiere.lbr.bankslip.cnab240.bean.santander033;

import java.util.Date;

import org.kenos.idempiere.lbr.bankslip.cnab240.bean.CNABSegmentTRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.FixedFormatDecimal;
import com.ancientprogramming.fixedformat4j.annotation.FixedFormatPattern;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class SantanderCNABSegmentT extends CNABSegmentTRecord {


	@Override
	@Field( offset=18 , length=4, paddingChar='0' , align = Align.RIGHT)
	public int getAgenciaCedente() {
		return super.getAgenciaCedente();
	}

	@Override
	@Field( offset=22 , length=1, paddingChar='0' , align = Align.RIGHT)
	public String getDvAgenciaCedente() {
		return super.getDvAgenciaCedente();
	}

	@Override
	@Field( offset=23 , length=9, paddingChar='0' , align = Align.RIGHT)
	public long getContaCedente() {
		return super.getContaCedente();
	}

	@Override
	@Field( offset=32 , length=1, paddingChar='0' , align = Align.RIGHT)
	public String getDvContaCedente() {
		return super.getDvContaCedente();
	}

	@Override
	public String getDvAgenciaContaCedente() {
		return super.getDvAgenciaContaCedente();
	}

	@Field( offset=41 , length=13, paddingChar='0' , align = Align.RIGHT)
	public String getNossoNumero() {
		return super.getNossoNumero();
		// return nossoNumero;
	}
	
	@Field( offset=54 , length=1, paddingChar='0' , align = Align.RIGHT)
	public String getCodigoCarteira() {
		return super.getCodigoCarteira();
		// return carteira;
	}

	@Field( offset=55 , length=15, paddingChar=' ' , align = Align.LEFT)
	public String getNumeroDocumento() {
		return super.getNumeroDocumento();
		// return numeroDocumento;
	}
	
	
	@Field( offset=70 , length=8 , paddingChar = '0' , align = Align.LEFT )
	@FixedFormatPattern("ddMMyyyy")
	public Date getVencimento() {
		return super.getVencimento();
	}

	@Override
	@Field( offset=78 , length=15, paddingChar='0' , align = Align.RIGHT)
	@FixedFormatDecimal( decimals = 2 , useDecimalDelimiter = false )
	public Double getValorTitulo() {
		return super.getValorTitulo();
	}

	@Override
	@Field( offset=93 , length=3, paddingChar='0' , align = Align.RIGHT)
	public int getBancoCobrador() {
		return super.getBancoCobrador();
	}


	@Field( offset=96 , length=5 , paddingChar='0' , align = Align.RIGHT)
	public int getAgenciaCobradora() {
		return super.getAgenciaCobradora();
	}

	@Override
	@Field( offset=100 , length=1, paddingChar='0' , align = Align.RIGHT)
	public String getDvAgenciaCobradora() {
		return super.getDvAgenciaCobradora();
	}

	@Field( offset=101 , length=25 , paddingChar=' ' , align = Align.LEFT)
	public String getIdentificacaoTituloNaEmpresa() {
		return super.getIdentificacaoTituloNaEmpresa();
		// return numeroTituloNaEmpresa;
	}
	
	@Override
	@Field( offset=126 , length=2, paddingChar='0' , align = Align.RIGHT)
	public int getCodigoMoeda() {
		return super.getCodigoMoeda();
	}

	@Field( offset=128 , length=1, paddingChar='0' , align = Align.RIGHT)
	public int getTipoInscricaoSacado() {
		return super.getTipoInscricaoSacado();
		// return tipoInscricaoSacado;
	}

	@Field( offset=129 , length=15, paddingChar='0' , align = Align.RIGHT)
	public String getInscricaoSacado() {
		return super.getInscricaoSacado();
		// return inscricaoSacado;
	}

	@Override
	@Field( offset=144 , length=40, paddingChar=' ' , align = Align.LEFT)
	public String getNomeSacado() {
		return super.getNomeSacado();
	}

	@Field( offset=194 , length=15, paddingChar='0' , align = Align.RIGHT)
	@FixedFormatDecimal( decimals = 2 , useDecimalDelimiter = false )
	public Double getValorTarifas() {
		return super.getValorTarifas();
		// return valorTarifas;
	}

	@Override
	public long getNumeroContrato() {
		return super.getNumeroContrato();
	}

	@Field( offset=209 , length=10 , paddingChar=' ' , align = Align.LEFT)
	public String getMotivoOcorrencia() {
		return super.getMotivoOcorrencia();
	}

}
