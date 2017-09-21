package org.kenos.idempiere.lbr.base.event;

/**
 * 		Signature Factory
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: IDocFiscalHandler.java, v1.0 2017/09/20 18:50:53 PM, ralexsander Exp $
 */
public interface IDocFiscalHandler
{
	public void signDocument (String tableName, Integer Doc_ID, String xml);
	public void transmitDocument (String tableName, Integer Doc_ID, String xml);
}	//	IDocFiscalHandler
