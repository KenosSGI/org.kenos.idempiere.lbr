
package org.kenos.idempiere.lbr.bankslip.api.inter;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;

@JsonInclude(Include.NON_NULL)
public class PixDetailed {
	private String pixCopiaECola;
	private String txid;
	
	public String getPixCopiaECola() {
		return pixCopiaECola;
	}
	public void setPixCopiaECola(String pixCopiaECola) {
		this.pixCopiaECola = pixCopiaECola;
	}
	public String getTxid() {
		return txid;
	}
	public void setTxid(String txid) {
		this.txid = txid;
	}
}	//	PixDetailed
