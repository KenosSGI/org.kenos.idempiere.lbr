package org.kenos.idempiere.lbr.tax.ibpt;

import org.kenos.idempiere.lbr.tax.ibpt.IBPT;

/**
 * 		IBPT Factory
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: IBPTFactory.java, v1.0 2017/12/18 6:49:44 PM, ralexsander Exp $
 */
public interface IIBPTFactory
{
	public IBPT getIBPT (String token);
}	//	IIBPTFactory
