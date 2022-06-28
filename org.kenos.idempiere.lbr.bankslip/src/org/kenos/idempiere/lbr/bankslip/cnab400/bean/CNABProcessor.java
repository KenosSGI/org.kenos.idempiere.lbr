package org.kenos.idempiere.lbr.bankslip.cnab400.bean;

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
import org.kenos.idempiere.lbr.bankslip.cnab.CNABDetail;
import org.kenos.idempiere.lbr.bankslip.cnab.ICNABDetail;
import org.kenos.idempiere.lbr.bankslip.cnab.ICNABProcessor;

import net.sf.flatpack.DataError;
import net.sf.flatpack.DataSet;
import net.sf.flatpack.DefaultParserFactory;
import net.sf.flatpack.Parser;

/**
 * 		CNAB Detail
 * 	@author Ricardo Santana <rsantana@kenos.com.br>
 */
public class CNABProcessor implements ICNABProcessor {
	public List<ICNABDetail> processFile (File returnFile) throws Exception {
		InputStream in = CNABProcessor.class.getResourceAsStream("/org/kenos/idempiere/lbr/bankslip/cnab400/bean/return-cnab-header.pzmap.xml");
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
        
        in = CNABProcessor.class.getResourceAsStream("/org/kenos/idempiere/lbr/bankslip/cnab400/bean/return-cnab-" + routingNo + ".pzmap.xml");
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
        
        List<ICNABDetail> result = new ArrayList<ICNABDetail>();
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
                	
        	ICNABDetail detail = new CNABDetail ();
        	detail.setAmount(normalize (ds.getBigDecimal(PAYAMT)));
			detail.setDateTrx(dateTrx);
			detail.setDueDate(dueDate);
        	detail.setDiscount(normalize (ds.getBigDecimal(DISCOUNT)));
        	detail.setDocumentNo(ds.getString(DOCUMENTNO));
        	detail.setInterest(normalize (ds.getBigDecimal(INTEREST)).add(normalize (ds.getBigDecimal(PENAULTY))));
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
}	//	CNABDetail
