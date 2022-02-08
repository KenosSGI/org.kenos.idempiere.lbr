package org.kenos.idempiere.lbr.bankslip.bean;

import java.io.File;
import java.io.FileReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.adempierelbr.util.TextUtil;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.bankslip.ICNABGenerator;

import net.sf.flatpack.DataError;
import net.sf.flatpack.DataSet;
import net.sf.flatpack.DefaultParserFactory;
import net.sf.flatpack.Parser;

/**
 * 		CNAB Detail
 * 	@author Ricardo Santana <rsantana@kenos.com.br>
 */
public class CNABDetail {
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
	public static List<CNABDetail> processFile (File returnFile) throws Exception {
		InputStream in = CNABDetail.class.getResourceAsStream("/org/kenos/idempiere/lbr/bankslip/bean/return-cnab-header.pzmap.xml");
		Parser pzparser = DefaultParserFactory.getInstance().newFixedLengthParser(new InputStreamReader(in, "UTF-8"), new FileReader(returnFile));
        DataSet ds = pzparser.parse();
        String routingNo = null;
        Timestamp fileDate = null;
        //
        while (ds.next()) {
        	if (ds.isRecordID(HEADER)
        			&& "2".equals(ds.getString(RETURNTYPE))			//	TYPE= RETORNO
        			&& "01".equals(ds.getString(RETURNSERVICE)))	//	SERVICE= COBRANÇA
        	{
        		//	Bank
        		routingNo = ds.getString(ROUTINGNO);
        		
        		//	Check the date of the file
        		String date = ds.getString(DATEFILE);
        		if (date != null && !date.isBlank())
        			fileDate = TextUtil.stringToTime(date, ICNABGenerator.DATE_FORMAT);
        		break;
        	}
        }
        
        //	Check for errors
        StringBuilder xErrors = new StringBuilder ();
        if (ds.getErrors() != null && ds.getErrors().size() > 0) {
        	Iterator<DataError> errors = ds.getErrors().iterator();
            while (errors.hasNext()) {
            	try {
            		DataError dataError = (DataError) errors.next();
                	xErrors.append("\nError: ").append(dataError.getErrorDesc()).append("Line: ").append(dataError.getLineNo());
            	}
            	catch (Exception e) {
                	xErrors.append("\nError parsing the file");
            	}
            }
        }
        
        //	Only process the whole file
        if (xErrors.length() > 0)
        	throw new Exception ("Parse errors: " + xErrors);
        
        //	Not able to parse header, or return type not supported
        if (routingNo == null)
        	throw new Exception ("Unsupported return type");
        
        in = CNABDetail.class.getResourceAsStream("/org/kenos/idempiere/lbr/bankslip/bean/return-cnab-" + routingNo + ".pzmap.xml");
		pzparser = DefaultParserFactory.getInstance().newFixedLengthParser(new InputStreamReader(in, "UTF-8"), new FileReader(returnFile));
        ds = pzparser.parse();
        
        //	Check for errors
        if (ds.getErrors() != null && ds.getErrors().size() > 0) {
        	Iterator<DataError> errors = ds.getErrors().iterator();
            while (errors.hasNext()) {
            	try {
            		DataError dataError = (DataError) errors.next();
                	xErrors.append("\nError: ").append(dataError.getErrorDesc()).append("Line: ").append(dataError.getLineNo());
            	}
            	catch (Exception e) {
                	xErrors.append("\nError parsing the file");
            	}
            }
        }
        
        //	Only process the whole file
        if (xErrors.length() > 0)
        	throw new Exception ("Parse errors: " + xErrors);
        
        List<CNABDetail> result = new ArrayList<CNABDetail>();
        while (ds.next()) {
        	if (ds.isRecordID(HEADER))	//	Already processed
        		continue;
        	if (ds.isRecordID(TRAILER))	//	TODO: Consistency check with trailer
        		continue;
        	
        	//	Parse transaction date
			String date = ds.getString(DATETRX);
        	Timestamp dateTrx = null, dueDate = null;
        	try
        	{
        		dateTrx = TextUtil.stringToTime(date, ICNABGenerator.DATE_FORMAT);
        	}
        	catch (Exception e) {}
        	
        	//	Parse due date
        	date = ds.getString(DUEDATE);
        	try
        	{
        		dueDate = TextUtil.stringToTime(date, ICNABGenerator.DATE_FORMAT);
        	}
        	catch (Exception e) {}
                	
        	CNABDetail detail = new CNABDetail ();
        	detail.setAmount(normalize (ds.getBigDecimal(AMOUNT)));
			detail.setDateTrx(dateTrx);
			detail.setDueDate(dueDate);
        	detail.setDiscount(normalize (ds.getBigDecimal(DISCOUNT)));
        	detail.setDocumentNo(ds.getString(DOCUMENTNO));
        	detail.setInterest(normalize (ds.getBigDecimal(INTEREST)));
        	detail.setNumberInBank(ds.getString(NUMBERINBANK));
        	detail.setNumberInOrg(ds.getString(NUMBERINORG));
        	detail.setOccurCod(ds.getString(OCCUR));
        	detail.setLineNo(ds.getInt(LINENO));
        	detail.setRoutingNo(routingNo);	//	From header
        	detail.setDateFile(fileDate);	//	From header
        	//
        	result.add(detail);
        }
		return result;
	}	//	processFile
	
	private static BigDecimal normalize (BigDecimal bd) {
		if (bd == null)
			return Env.ZERO;
		return bd.divide(Env.ONEHUNDRED, 2, RoundingMode.HALF_EVEN);
	}	//	normalize
	
	@Override
	public String toString() {
		return "CNABDetail [RoutingNo=" + getRoutingNo() +
				", DocumentNo=" + getDocumentNo() + 
				", Ocurrence=" + getOccurCod() + 
				", DateTrx=" + getDateTrx() + 
				", NumberInOrg=" + getNumberInOrg() + 
				", Amount=" + getAmount() + "]";
	}	//	toString
	
	public static final String HEADER 			= "header";
	public static final String TRAILER 			= "trailer";

	public static final String AGENCY 			= "agency";
	public static final String AMOUNT 			= "amount";
	public static final String BANKFEE 			= "bankFee";
	public static final String COLLECTIONBANK 	= "collectionBank";
	public static final String CURRENCY 		= "currency";
	public static final String DATEFILE 		= "dateFile";
	public static final String DATETRX 			= "dateTrx";
	public static final String DISCOUNT 		= "discount";
	public static final String DOCUMENTNO 		= "documentNo";
	public static final String DUEDATE 			= "dueDate";
	public static final String DUMMY1 			= "dummy1";
	public static final String DUMMY2 			= "dummy2";
	public static final String DUMMY3 			= "dummy3";
	public static final String DUMMY4 			= "dummy4";
	public static final String DUMMY5 			= "dummy5";
	public static final String DUMMY6 			= "dummy6";
	public static final String DUMMY7 			= "dummy7";
	public static final String IDENTIFIER 		= "identifier";
	public static final String INTEREST 		= "interest";
	public static final String IOF 				= "iof";
	public static final String LINENO 			= "lineno";
	public static final String NUMBERINBANK 	= "numberInBank";
	public static final String NUMBERINBANK2 	= "numberInBank2";
	public static final String NUMBERINORG 		= "numberInOrg";
	public static final String OCCUR 			= "occur";
	public static final String OTHERCHARGES 	= "otherCharges";
	public static final String OTHERREVENUE 	= "otherRevenue";
	public static final String PAYAMT 			= "payAmt";
	public static final String PENAULTY 		= "penaulty";
	public static final String REBATE 			= "rebate";
	public static final String RETURNSERVICE 	= "returnService";
	public static final String RETURNTYPE 		= "returnType";
	public static final String ROUTINGNO 		= "routingNo";
	public static final String TYPE 			= "type";
	public static final String XRETURNSERVICE 	= "xReturnService";
	public static final String XRETURNTYPE 		= "xReturnType";
}	//	CNABDetail
