package org.kenos.idempiere.lbr.bankslip;

/**
 * Factory for CNAB File Generator
 * @author Ricardo Santana
 */
public interface ICNABFactory
{
	/**
	 * 
	 * @param RoutingNo - e.g. [341] for Banco Itaú S.A.
	 * @param CNABType - e.g. [1] CNAB 240; or [2] CNAB 400
	 * @return CNAB File Generator
	 */
	public ICNABGenerator getCNABGenerator (int RoutingNo, String CNABType);
}	//	ICNABFactory
