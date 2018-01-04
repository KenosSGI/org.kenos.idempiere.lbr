package org.kenos.idempiere.lbr.tax.provider;

import org.adempiere.base.ITaxProviderFactory;
import org.adempiere.model.ITaxProvider;

/**
 * 		Tax Provider Factory
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 */
public class TaxProviderFactory implements ITaxProviderFactory 
{
	@Override
	public ITaxProvider newTaxProviderInstance (String className)
	{
		if (LBRTaxProvider.class.getName().equals(className))
			return new LBRTaxProvider();
		return null;
	}	//	newTaxProviderInstance
}	//	TaxProviderFactory
