package org.kenos.idempiere.lbr.bankslip.cnab;

import java.io.File;
import java.util.List;

public interface ICNABProcessor {
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
	public static final String HEADER 			= "header";
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
	public static final String TRAILER 			= "trailer";
	public static final String TYPE 			= "type";
	public static final String XRETURNSERVICE 	= "xReturnService";

	public List<ICNABDetail> processFile (File returnFile) throws Exception;
}	//	ICNABProcessor
