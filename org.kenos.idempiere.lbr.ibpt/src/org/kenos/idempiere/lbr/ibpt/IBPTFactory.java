package org.kenos.idempiere.lbr.ibpt;

import org.kenos.idempiere.lbr.tax.ibpt.IBPT;
import org.kenos.idempiere.lbr.tax.ibpt.IIBPTFactory;

/**
 * 		IBPT Factory
 * 
 * 	Manter compatibilidade com o IBPT do Adempiere, após marcar como deprecated a implementação
 * 	anterior, mover o código de consulta ao IBPT para cá.
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: IBPTFactory.java, v1.0 2017/12/18 6:51:42 PM, ralexsander Exp $
 */
public class IBPTFactory implements IIBPTFactory
{
	@Override
	public IBPT getIBPT(String token)
	{
		return new IBPTImpl(token);
	}	//	getIBPT
}	//	IBPTFactory
