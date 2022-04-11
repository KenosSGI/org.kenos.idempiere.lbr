package org.kenos.idempiere.lbr.bankslip;

import org.kenos.idempiere.lbr.bankslip.cnab.ICNABProcessor;
import org.kenos.idempiere.lbr.bankslip.cnab240.bean.CNABRecords;
import org.kenos.idempiere.lbr.bankslip.cnab240.bean.santander033.SantanderCNABRecords;
import org.kenos.idempiere.lbr.bankslip.cnab400.BancoDoBrasil001;
import org.kenos.idempiere.lbr.bankslip.cnab400.Bradesco237;
import org.kenos.idempiere.lbr.bankslip.cnab400.Itau341;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipLayout;

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
		//	CNAB 400 only
		if (MLBRBankSlipLayout.TYPE_CNAB400.equals(CNABType))
		{
			if (Bradesco237.ROUNTING_NO == RoutingNo)
				return new Bradesco237();
			
			if (Itau341.ROUNTING_NO == RoutingNo)
				return new Itau341();
			
			if (BancoDoBrasil001.ROUNTING_NO == RoutingNo)
				return new BancoDoBrasil001();
		}
		return null;
	}	//	getCNABGenerator

	@Override
	public ICNABProcessor getCNABProcessor (int RoutingNo, String CNABType)
	{
		if (MLBRBankSlipLayout.TYPE_CNAB240.equals(CNABType))
		{
			CNABRecords returnRecords = null;
			if (33 == RoutingNo)
				returnRecords = new SantanderCNABRecords();
			else
				returnRecords = new CNABRecords();
			//
			return new org.kenos.idempiere.lbr.bankslip.cnab240.bean.CNABProcessor(returnRecords);
		}
		else if (MLBRBankSlipLayout.TYPE_CNAB400.equals(CNABType))
			return new org.kenos.idempiere.lbr.bankslip.cnab400.bean.CNABProcessor();
		
		return null;
	}	//	getCNABProcessor
}	//	FormFactory
