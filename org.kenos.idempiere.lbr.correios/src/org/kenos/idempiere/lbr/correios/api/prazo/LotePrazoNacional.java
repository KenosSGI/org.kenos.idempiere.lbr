package org.kenos.idempiere.lbr.correios.api.prazo;

import java.util.ArrayList;
import java.util.List;

public class LotePrazoNacional {

	private String idLote = null;

	private List<ParamPrazoNacional> parametrosPrazo = new ArrayList<ParamPrazoNacional>();

	public String getIdLote() {
		return idLote;
	}

	public void setIdLote(String idLote) {
		this.idLote = idLote;
	}

	public List<ParamPrazoNacional> getParametrosPrazo() {
		return parametrosPrazo;
	}

	public void setParametrosPrazo(List<ParamPrazoNacional> parametrosPrazo) {
		this.parametrosPrazo = parametrosPrazo;
	}

	@Override
	public String toString() {
		return "LotePrazoNacional [idLote=" + idLote + ", parametrosPrazo=" + parametrosPrazo.toString() + "]";
	}
	
	
	

}
