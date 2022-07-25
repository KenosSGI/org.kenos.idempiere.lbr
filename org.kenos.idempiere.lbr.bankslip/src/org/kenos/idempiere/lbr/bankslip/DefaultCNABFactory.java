package org.kenos.idempiere.lbr.bankslip;

import org.kenos.idempiere.lbr.bankslip.cnab.ICNABProcessor;
import org.kenos.idempiere.lbr.bankslip.cnab240.bean.CNABRecords;
import org.kenos.idempiere.lbr.bankslip.cnab240.bean.santander033.SantanderCNABRecords;
import org.kenos.idempiere.lbr.bankslip.cnab400.BancoDoBrasil001;
import org.kenos.idempiere.lbr.bankslip.cnab400.BancoFibra224;
import org.kenos.idempiere.lbr.bankslip.cnab400.BancoFibra224v2;
import org.kenos.idempiere.lbr.bankslip.cnab400.Bradesco237;
import org.kenos.idempiere.lbr.bankslip.cnab400.CaixaEconomica104;
import org.kenos.idempiere.lbr.bankslip.cnab400.CaixaEconomica104v2;
import org.kenos.idempiere.lbr.bankslip.cnab400.Itau341;
import org.kenos.idempiere.lbr.bankslip.cnab400.Itau341v2;
import org.kenos.idempiere.lbr.bankslip.cnab400.Santander033;
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
	public ICNABGenerator getCNABGenerator (int RoutingNo, String CNABType, String version)
	{
		//	CNAB 400 only
		if (MLBRBankSlipLayout.TYPE_CNAB400.equals(CNABType))
		{
			if (Bradesco237.ROUNTING_NO == RoutingNo)
				return new Bradesco237();
			
			if (Itau341.ROUNTING_NO == RoutingNo)
			{
				if (Itau341v2.VERSION.equals(version))
					return new Itau341v2();
				return new Itau341();
			}
			
			if (BancoDoBrasil001.ROUNTING_NO == RoutingNo)
				return new BancoDoBrasil001();
			
			if (BancoFibra224.ROUNTING_NO == RoutingNo) {
				if(BancoFibra224v2.VERSION.equals(version))
					return new BancoFibra224v2();
				return new BancoFibra224();
			}
			if(CaixaEconomica104.ROUNTING_NO == RoutingNo) {
				if(CaixaEconomica104v2.VERSION.equals(version))
					return new CaixaEconomica104v2();
				return new CaixaEconomica104();
			}
			if (Santander033.ROUNTING_NO == RoutingNo)
				return new Santander033();
		}
		return null;
	}	//	getCNABGenerator

	@Override
	public ICNABProcessor getCNABProcessor (int RoutingNo, String CNABType, String version)
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
		{
			if (Itau341v2.VERSION.equals(version))
				return new org.kenos.idempiere.lbr.bankslip.cnab400.bean.CNABProcessorV2();
			return new org.kenos.idempiere.lbr.bankslip.cnab400.bean.CNABProcessor();
		}
		return null;
	}	//	getCNABProcessor
}	//	FormFactory
