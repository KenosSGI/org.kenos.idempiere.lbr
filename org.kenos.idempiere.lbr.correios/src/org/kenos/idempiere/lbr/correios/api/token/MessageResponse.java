package org.kenos.idempiere.lbr.correios.api.token;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

public class MessageResponse implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 2359206008781419312L;

	private List<String> msgs = null;

	private Timestamp date = null;

	private String method = null;

	private String path = null;

	private String causa = null;

	private String stackTrace = null;

	public List<String> getMsgs() {
		return msgs;
	}

	public void setMsgs(List<String> msgs) {
		this.msgs = msgs;
	}

	public Timestamp getDate() {
		return date;
	}

	public void setDate(Timestamp date) {
		this.date = date;
	}

	public String getMethod() {
		return method;
	}

	public void setMethod(String method) {
		this.method = method;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getCausa() {
		return causa;
	}

	public void setCausa(String causa) {
		this.causa = causa;
	}

	public String getStackTrace() {
		return stackTrace;
	}

	public void setStackTrace(String stackTrace) {
		this.stackTrace = stackTrace;
	}

}
