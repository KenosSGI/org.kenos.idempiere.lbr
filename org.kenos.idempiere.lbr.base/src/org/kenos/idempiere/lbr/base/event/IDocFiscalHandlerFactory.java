package org.kenos.idempiere.lbr.base.event;

/**
 * 		Signature Factory
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: IDocFiscalHandlerFactory.java, v1.0 2017/09/20 18:50:53 PM, ralexsander Exp $
 */
public interface IDocFiscalHandlerFactory
{
	public IDocFiscalHandler getHandler (String tableName);
}	//	IDocFiscalHandlerFactory
