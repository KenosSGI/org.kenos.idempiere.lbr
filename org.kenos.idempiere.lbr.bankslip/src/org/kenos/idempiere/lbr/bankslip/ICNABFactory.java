package org.kenos.idempiere.lbr.bankslip;

import org.kenos.idempiere.lbr.bankslip.cnab.ICNABProcessor;

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
	public default ICNABGenerator getCNABGenerator (int routingNo, String CNABType, String version)
	{
		return null;
	}
	public default ICNABProcessor getCNABProcessor (int routingNo, String CNABType, String version)
	{
		return null;
	}
	public default ICNABGenerator getCNABGenerator (int routingNo, String CNABType)
	{
		return getCNABGenerator (routingNo, CNABType, null);
	}
	public default ICNABProcessor getCNABProcessor (int routingNo, String CNABType)
	{
		return getCNABProcessor (routingNo, CNABType, null);
	}
}	//	ICNABFactory
