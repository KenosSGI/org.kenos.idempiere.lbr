package org.kenos.idempiere.lbr.bankslip.api;

import org.kenos.idempiere.lbr.bankslip.cnab.ICNABDetail;

public interface IResponseAPI extends ICNABDetail {
	public String geBarcode();
	public String getManualInput();
	public String getUUID();
	public void setBarcode(String barcode);
	public void setManualInput(String manualInput);
	public void setUUID(String uuid);
}	//	IResponseAPI
