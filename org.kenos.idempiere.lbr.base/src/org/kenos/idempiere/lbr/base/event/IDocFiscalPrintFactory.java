package org.kenos.idempiere.lbr.base.event;

import java.util.Properties;

/**
 * 		Signature Factory
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: IDocFiscalPrintFactory.java, v1.0 2017/09/20 18:50:53 PM, ralexsander Exp $
 */
public interface IDocFiscalPrintFactory
{
	public IDocFiscalPrint get (int tableID, Properties ctx, int recordID, String trxName);
}	//	IDocFiscalPrintFactory
