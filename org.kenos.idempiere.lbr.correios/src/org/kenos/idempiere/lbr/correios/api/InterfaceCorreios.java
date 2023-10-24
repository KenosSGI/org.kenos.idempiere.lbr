package org.kenos.idempiere.lbr.correios.api;

import org.kenos.idempiere.lbr.correios.api.cep.Cep;
import org.kenos.idempiere.lbr.correios.api.preco.PrecoNacionalParam;
import org.kenos.idempiere.lbr.correios.api.preco.PrecoPrazo;

public interface InterfaceCorreios {
	
	public Cep getCep(String cep) ;
	public PrecoPrazo calcPrazoPreco(PrecoNacionalParam precoNacional);
}
