package org.kenos.idempiere.lbr.base.event;

/**
 * 		Signature Factory
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: IDocFiscalHandler.java, v1.0 2017/09/20 18:50:53 PM, ralexsander Exp $
 */
public interface IDocFiscalHandler
{
	public static final String DOC_NFE 			= "nfe";
	public static final String DOC_NFE_STATUS 	= "nfestatus";
	public static final String DOC_MDFE 		= "mdfe";
	public static final String DOC_MDFE_STATUS 	= "mdfestatus";
	public static final String DOC_CADASTRO 	= "cad";
	//
	public static final String EVENT_PKCS11 				= "pkcs11";
	public static final String EVENT_PKCS11_FLUSH			= "pkcs11-flush";
	public static final String EVENT_PKCS11_PING 			= "pkcs11-ping";
	public static final String EVENT_PKCS11_STATUS_CHANGE 	= "pkcs11-status-change";
	public static final String EVENT_PKCS11_STATUS_REQUEST 	= "pkcs11-status-req";
	
	/**
	 * 	Signs the Fiscal Document using a remote PKCS#11 certificate
	 * 
	 * 	@param tableName
	 * 	@param Doc_ID
	 * 	@param xml
	 */
	public void signDocument (String tableName, Integer Doc_ID, String cnpjf, String xml);
	
	/**
	 * 	Transmits the Fiscal Document using a remote PKCS#11 certificate
	 * 
	 * 	@param docType
	 * 	@param uuid
	 * 	@param urlPK
	 * 	@param urlDoc
	 * 	@param regionCode
	 * 	@param xml
	 * 	@param result
	 * 	@throws Exception
	 */
	public void transmitDocument (String docType, String cnpjf, String uuid, String urlPK, String urlDoc, String regionCode, String xml, StringBuilder result) throws Exception;
}	//	IDocFiscalHandler
