package org.kenos.idempiere.lbr.bankslip.api;

import org.kenos.idempiere.lbr.bankslip.cnab.CNABDetail;

public class ResponseAPI extends CNABDetail implements IResponseAPI {

	String barcode;
	String manualInput;
	String uuid;
	
	@Override
	public String geBarcode() {
		return barcode;
	}

	@Override
	public String getManualInput() {
		return manualInput;
	}

	@Override
	public void setBarcode(String barcode) {
		this.barcode = barcode;
	}

	@Override
	public void setManualInput(String manualInput) {
		this.manualInput = manualInput;
	}

	@Override
	public String getUUID() {
		return uuid;
	}

	@Override
	public void setUUID(String uuid) {
		this.uuid = uuid;
	}
}	//	ResponseAPI
