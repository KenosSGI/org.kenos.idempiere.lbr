package org.kenos.idempiere.lbr.correios.form;

import org.adempiere.webui.factory.IFormFactory;
import org.adempiere.webui.panel.ADForm;

/**
 * 		Boleto form factory
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: FormFactory.java, v1.0 2017/08/28 13:06:59 PM, ralexsander Exp $
 */
public class FormFactory implements IFormFactory
{
	/**
	 * 	Try to find the form 
	 */
	@Override
	public ADForm newFormInstance (String formName)
	{
		//	Check the form name
		if (formName.equals ("org.kenos.idempiere.lbr.correios.form.WFreightCalc"))
		{
			WFreightCalc freight = new WFreightCalc();
			return freight;
		}
		return null;
	}	//	newFormInstance
}	//	FormFactory
