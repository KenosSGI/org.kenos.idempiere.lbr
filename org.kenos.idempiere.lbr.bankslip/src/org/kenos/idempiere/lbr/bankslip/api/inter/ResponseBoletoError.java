
package org.kenos.idempiere.lbr.bankslip.api.inter;

import java.sql.Timestamp;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class ResponseBoletoError {

    private String title;
    private String detail;
    private Timestamp timestamp;
    private List<Violacao> violacoes;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public List<Violacao> getViolacoes() {
		return violacoes;
	}

	public void setViolacoes(List<Violacao> violacoes) {
		this.violacoes = violacoes;
	}

	public Timestamp getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(Timestamp timestamp) {
		this.timestamp = timestamp;
	}
}
