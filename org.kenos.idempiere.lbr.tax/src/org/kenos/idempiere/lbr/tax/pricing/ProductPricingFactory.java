package org.kenos.idempiere.lbr.tax.pricing;

import org.adempiere.base.AbstractProductPricing;
import org.adempiere.base.IProductPricingFactory;

public class ProductPricingFactory implements IProductPricingFactory {
	
	/**
	 * default constructor 
	 */
	public ProductPricingFactory() {}

	@Override
	public AbstractProductPricing newProductPricingInstance() {
		return new MProductPricing();
	}
}
