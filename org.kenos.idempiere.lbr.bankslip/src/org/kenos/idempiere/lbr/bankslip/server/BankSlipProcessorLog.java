package org.kenos.idempiere.lbr.bankslip.server;

import java.sql.Timestamp;

import org.compiere.model.AdempiereProcessorLog;

public class BankSlipProcessorLog implements AdempiereProcessorLog {

	public BankSlipProcessorLog(String summary, boolean isError) {
		setSummary(summary);
		setIsError(isError);
		setCreated(new Timestamp(System.currentTimeMillis()));
	}	//	BankSlipProcessorLog
	
	Timestamp created;
	String summary;
	String description;
	Boolean error;
	String reference;
	String txtMsg;
	
	@Override
	public Timestamp getCreated() {
		return created;
	}

	@Override
	public String getSummary() {
		return summary;
	}

	@Override
	public String getDescription() {
		return description;
	}

	@Override
	public boolean isError() {
		return error;
	}

	@Override
	public String getReference() {
		return reference;
	}

	@Override
	public String getTextMsg() {
		return txtMsg;
	}

	public void setCreated(Timestamp created) {
		this.created = created;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public void setIsError(Boolean error) {
		this.error = error;
	}

	public void setReference(String reference) {
		this.reference = reference;
	}

	public void setTxtMsg(String txtMsg) {
		this.txtMsg = txtMsg;
	}
}	//	BankSlipProcessorLog
