package org.kenos.idempiere.lbr.bankslip.cnab;

import java.math.BigDecimal;
import java.sql.Timestamp;

public interface ICNABDetail {
	public BigDecimal getAmount();
	public BigDecimal getBankChargeAmt();
	public BigDecimal getDiscount();
	public BigDecimal getInterest();
	public BigDecimal getWriteOffAmt();
	public Integer getLineNo();	
	public String getDocumentNo();
	public String getNumberInBank();
	public String getNumberInOrg();
	public String getOccurCod();
	public String getRoutingNo();
	public String toString();
	public Timestamp getDateFile();
	public Timestamp getDateTrx();
	public Timestamp getDueDate();
	public void setAmount(BigDecimal amount);
	public void setDateFile(Timestamp dateFile);
	public void setDateTrx(Timestamp dateTrx);
	public void setDiscount(BigDecimal discount);
	public void setDocumentNo(String documentNo);
	public void setDueDate(Timestamp dueDate);
	public void setInterest(BigDecimal interest);
	public void setLineNo(Integer lineNo);
	public void setNumberInBank(String numberInBank);
	public void setNumberInOrg(String numberInOrg);
	public void setOccurCod(String occurCod);
	public void setWriteOffAmt(BigDecimal writeOffAmt);
	public void setRoutingNo(String routingNo);
	public void setBankChargeAmt(BigDecimal bankChargeAmt);
}
