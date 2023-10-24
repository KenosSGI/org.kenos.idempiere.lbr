package org.kenos.idempiere.lbr.correios.api.prazo;

import java.util.ArrayList;
import java.util.List;

public class LotePrazoInternacional {

	private String idLote = null;

	private List<ParamPrazoInternacional> parametrosPrazo = new ArrayList<ParamPrazoInternacional>();

	public String getIdLote() {
		return idLote;
	}

	public void setIdLote(String idLote) {
		this.idLote = idLote;
	}

	public List<ParamPrazoInternacional> getParametrosPrazo() {
		return parametrosPrazo;
	}

	public void setParametrosPrazo(List<ParamPrazoInternacional> parametrosPrazo) {
		this.parametrosPrazo = parametrosPrazo;
	}

}
