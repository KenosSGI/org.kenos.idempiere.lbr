package org.kenos.idempiere.lbr.bankslip.api;

import org.kenos.idempiere.lbr.bankslip.cnab.ICNABDetail;

public interface IResponseAPI extends ICNABDetail {
	public String geBarcode();
	public String getManualInput();
	public void setBarcode(String barcode);
	public void setManualInput(String manualInput);
}	//	IResponseAPI
