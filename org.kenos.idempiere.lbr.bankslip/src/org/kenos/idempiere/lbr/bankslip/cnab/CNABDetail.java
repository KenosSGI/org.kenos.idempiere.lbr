package org.kenos.idempiere.lbr.bankslip.cnab;

import java.math.BigDecimal;
import java.sql.Timestamp;

/**
 * 		CNAB Detail
 * 	@author Ricardo Santana <rsantana@kenos.com.br>
 */
public class CNABDetail implements ICNABDetail {
	String routingNo;
	Timestamp dateFile;
	String occurCod;
	String documentNo;
	String numberInBank;
	String numberInOrg;
	Timestamp  dateTrx;
	Timestamp  dueDate;
	BigDecimal amount;
	BigDecimal discount;
	BigDecimal interest;
	BigDecimal writeOffAmt;
	Integer lineNo;
	public String getRoutingNo() {
		return routingNo;
	}
	public void setRoutingNo(String routingNo) {
		this.routingNo = routingNo;
	}
	public Timestamp getDateFile() {
		return dateFile;
	}
	public void setDateFile(Timestamp dateFile) {
		this.dateFile = dateFile;
	}
	public String getOccurCod() {
		return occurCod;
	}
	public void setOccurCod(String occurCod) {
		this.occurCod = occurCod;
	}
	public String getDocumentNo() {
		return documentNo;
	}
	public void setDocumentNo(String documentNo) {
		this.documentNo = documentNo;
	}
	public String getNumberInBank() {
		return numberInBank;
	}
	public void setNumberInBank(String numberInBank) {
		this.numberInBank = numberInBank;
	}
	public String getNumberInOrg() {
		if (numberInOrg == null || numberInOrg.isBlank())
			return documentNo;
		return numberInOrg;
	}
	public void setNumberInOrg(String numberInOrg) {
		this.numberInOrg = numberInOrg;
	}
	public Timestamp getDateTrx() {
		return dateTrx;
	}
	public void setDateTrx(Timestamp dateTrx) {
		this.dateTrx = dateTrx;
	}
	public Timestamp getDueDate() {
		return dueDate;
	}
	public void setDueDate(Timestamp dueDate) {
		this.dueDate = dueDate;
	}
	public BigDecimal getAmount() {
		return amount;
	}
	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}
	public BigDecimal getDiscount() {
		return discount;
	}
	public void setDiscount(BigDecimal discount) {
		this.discount = discount;
	}
	public BigDecimal getInterest() {
		return interest;
	}
	public void setInterest(BigDecimal interest) {
		this.interest = interest;
	}
	public Integer getLineNo() {
		return lineNo;
	}
	public void setLineNo(Integer lineNo) {
		this.lineNo = lineNo;
	}
	public BigDecimal getWriteOffAmt() {
		return writeOffAmt;
	}
	public void setWriteOffAmt(BigDecimal writeOffAmt) {
		this.writeOffAmt = writeOffAmt;
	}
	@Override
	public String toString() {
		return "CNABDetail [RoutingNo=" + getRoutingNo() +
				", DocumentNo=" + getDocumentNo() + 
				", Ocurrence=" + getOccurCod() + 
				", DateTrx=" + getDateTrx() + 
				", NumberInOrg=" + getNumberInOrg() + 
				", Amount=" + getAmount() + "]";
	}	//	toString
}	//	CNABDetail
