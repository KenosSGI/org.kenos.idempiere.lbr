package org.adempierelbr.apps.form;

import org.adempiere.ui.swing.factory.IFormFactory;
import org.compiere.apps.form.FormPanel;

/**
 * 		Boleto form factory
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: BoletoFormFactory.java, v1.0 2017/08/28 13:06:59 PM, ralexsander Exp $
 */
public class BoletoFormFactory implements IFormFactory
{
	/**
	 * 	Try to find the form 
	 */
	@Override
	public FormPanel newFormInstance (String formName)
	{
		//	Billing
		if (GenBilling.GEN_BILLING_SWING.equals(formName))
			return new VGenBilling();
		
		//	CNAB
		if (GenCNAB.GEN_CNAB_SWING.equals(formName))
			return new VGenCNAB();
		return null;
	}	//	newFormInstance
}	//	BoletoFormFactory
