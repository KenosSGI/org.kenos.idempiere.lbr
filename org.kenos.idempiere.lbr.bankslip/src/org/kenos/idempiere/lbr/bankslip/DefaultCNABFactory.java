package org.kenos.idempiere.lbr.bankslip;

import org.kenos.idempiere.lbr.bankslip.cnab.Bradesco237;
import org.kenos.idempiere.lbr.bankslip.cnab.Itau341;

/**
 * 		Factory for CNAB
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: DefaultCNABFactory.java, v1.0 2020/03/31 13:06:59 PM, ralexsander Exp $
 */
public class DefaultCNABFactory implements ICNABFactory
{

	@Override
	public ICNABGenerator getCNABGenerator (int RoutingNo, String CNABType)
	{
		if (Bradesco237.ROUNTING_NO == RoutingNo)
			return new Bradesco237();
		
		if (Itau341.ROUNTING_NO == RoutingNo)
			return new Itau341();
		return null;
	}	//	getCNABGenerator
}	//	FormFactory
