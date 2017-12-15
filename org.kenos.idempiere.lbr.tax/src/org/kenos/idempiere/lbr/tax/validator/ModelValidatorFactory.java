package org.kenos.idempiere.lbr.tax.validator;

import org.adempiere.base.IModelValidatorFactory;
import org.adempierelbr.validator.VLBROrder;
import org.adempierelbr.validator.VLBRRMA;
import org.adempierelbr.validator.VLBRTax;
import org.compiere.model.ModelValidator;

/**
 * 		Model Validator Factory
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ModelValidatorFactory.java, v1.0 2017/11/14 1:37:52 PM, ralexsander Exp $
 */
public class ModelValidatorFactory implements IModelValidatorFactory
{
	/**
	 * 	Model Validator Factory
	 */
	@Override
	public ModelValidator newModelValidatorInstance(String className)
	{
		if (VLBROrder.class.getName().equals(className))
			return new VLBROrder();
		else if (VLBRRMA.class.getName().equals(className))
			return new VLBRRMA();
		else if (VLBRTax.class.getName().equals(className))
			return new VLBRTax();
		return null;
	}	//	newModelValidatorInstance
}	//	ModelValidatorFactory
