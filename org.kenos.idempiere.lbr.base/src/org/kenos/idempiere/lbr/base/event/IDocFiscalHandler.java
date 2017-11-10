package org.kenos.idempiere.lbr.base.event;

/**
 * 		Signature Factory
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: IDocFiscalHandler.java, v1.0 2017/09/20 18:50:53 PM, ralexsander Exp $
 */
public interface IDocFiscalHandler
{
	//	DF-e
	public static final String DOC_DFE 			= "dfe";
	public static final String DOC_DFE_XML 		= "dfe-xml";

	//	NF-e
	public static final String DOC_NFE 			= "nfe";
	public static final String DOC_NFE_EVENT 	= "nfe-event";
	public static final String DOC_NFE_INUT 	= "nfe-inut";
	public static final String DOC_NFE_RET 		= "nfe-ret";
	public static final String DOC_NFE_STATUS 	= "nfe-status";
	public static final String DOC_NFE_CAD 		= "nfe-cad";
	public static final String DOC_NFE_CONSULT 	= "nfe-consult";

	//	NFC-e
	public static final String DOC_NFCE 		= "nfce";

	//	NFS-e
	public static final String DOC_NFSE 		= "nfse";

	//	MDF-e
	public static final String DOC_MDFE 		= "mdfe";
	public static final String DOC_MDFE_EVENT 	= "mdfe-event";
	public static final String DOC_MDFE_RET 	= "mdfe-ret";
	public static final String DOC_MDFE_STATUS 	= "mdfe-status";
	
	//	Events
	public static final String EVENT_PKCS11 				= "pkcs11";
	public static final String EVENT_PKCS11_FLUSH			= "pkcs11-flush";
	public static final String EVENT_PKCS11_PING 			= "pkcs11-ping";
	public static final String EVENT_PKCS11_STATUS_CHANGE 	= "pkcs11-status-change";
	public static final String EVENT_PKCS11_STATUS_REQUEST 	= "pkcs11-status-req";
	
	/**
	 * 	Signs the Fiscal Document using a remote PKCS#11 certificate
	 * 
	 * 	@param remoteURL URL of Remote Signature App
	 * 	@param cnpjf CNPJ or CPF
	 * 	@param xml Document to be Signed
	 * 	@throws Exception 
	 */
	public void signDocument (String remoteURL, String cnpjf, StringBuilder xml) throws Exception;
	
	/**
	 * 	Signs the Fiscal Document using a remote PKCS#11 certificate
	 * 
	 * 	@param urlPK URL of Remote Signature App
	 * 	@param cnpjf CNPJ or CPF
	 * 	@param xml Document to be Signed
	 * 	@throws Exception 
	 */
	public void signText (String remoteURL, String get_ValueAsString, StringBuilder respStatus) throws Exception;

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
