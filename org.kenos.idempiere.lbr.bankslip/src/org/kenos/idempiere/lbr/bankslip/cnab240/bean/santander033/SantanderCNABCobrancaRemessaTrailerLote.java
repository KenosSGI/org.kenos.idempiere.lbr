package org.kenos.idempiere.lbr.bankslip.cnab240.bean.santander033;

import org.kenos.idempiere.lbr.bankslip.cnab240.bean.CNABCobrancaTrailerLoteRecord;

import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class SantanderCNABCobrancaRemessaTrailerLote extends
		CNABCobrancaTrailerLoteRecord {

	
	// APENAS exclui campos da remessa
	
	@Override
	public int getQuantidadeCobrancaSimples() {
		return super.getQuantidadeCobrancaSimples();
	}

	@Override
	public Double getTotalCobrancaSimples() {
		return super.getTotalCobrancaSimples();
	}

	@Override
	public int getQuantidadeCobrancaVinculada() {
		return super.getQuantidadeCobrancaVinculada();
	}

	@Override
	public Double getTotalCobrancaVinculada() {
		return super.getTotalCobrancaVinculada();
	}

	@Override
	public int getQuantidadeCobrancaCaucionada() {
		return super.getQuantidadeCobrancaCaucionada();
	}

	@Override
	public Double getTotalCobrancaCaucionada() {
		return super.getTotalCobrancaCaucionada();
	}

	@Override
	public int getQuantidadeCobrancaDescontada() {
		return super.getQuantidadeCobrancaDescontada();
	}

	@Override
	public Double getTotalCobrancaDescontada() {
		return super.getTotalCobrancaDescontada();
	}

	@Override
	public String getNumeroAvisoLancamento() {
		return super.getNumeroAvisoLancamento();
	}

	
	
	
}
