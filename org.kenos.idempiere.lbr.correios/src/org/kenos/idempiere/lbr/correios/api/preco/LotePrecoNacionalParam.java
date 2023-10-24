package org.kenos.idempiere.lbr.correios.api.preco;

import java.util.List;

public class LotePrecoNacionalParam {
	private String idLote = null;

	private List<PrecoNacionalParam> parametrosProduto = null;

	public String getIdLote() {
		return idLote;
	}

	public void setIdLote(String idLote) {
		this.idLote = idLote;
	}

	public List<PrecoNacionalParam> getParametrosProduto() {
		return parametrosProduto;
	}

	public void setParametrosProduto(List<PrecoNacionalParam> parametrosProduto) {
		this.parametrosProduto = parametrosProduto;
	}

}
