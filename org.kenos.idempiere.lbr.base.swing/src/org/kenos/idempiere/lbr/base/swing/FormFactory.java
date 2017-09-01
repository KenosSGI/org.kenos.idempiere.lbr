package org.kenos.idempiere.lbr.base.swing;

import org.adempiere.ui.swing.factory.IFormFactory;
import org.compiere.apps.form.FormPanel;
import org.kenos.idempiere.lbr.base.swing.form.VInOutGen;
import org.kenos.idempiere.lbr.base.swing.form.VInvoiceGen;
import org.kenos.idempiere.lbr.base.swing.form.VPayment;

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
	public FormPanel newFormInstance (String formName)
	{
		//	Check the form name
		if (formName.equals ("org.compiere.apps.form.VInvoiceGen"))
			return new VInvoiceGen();
		
		else if (formName.equals ("org.compiere.apps.form.VInOutGen"))
			return new VInOutGen();
		
		else if (formName.equals ("org.kenos.apps.form.VPayment"))
			return new VPayment();
		return null;
	}	//	newFormInstance
}	//	FormFactory
