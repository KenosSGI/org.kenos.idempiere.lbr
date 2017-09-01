package org.kenos.idempiere.lbr.base.zk;

import org.adempiere.webui.factory.IFormFactory;
import org.adempiere.webui.panel.ADForm;
import org.adempiere.webui.panel.IFormController;
import org.kenos.idempiere.lbr.base.zk.form.WInOutGen;
import org.kenos.idempiere.lbr.base.zk.form.WInvoiceGen;

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
		if (formName.equals ("org.compiere.apps.form.VInvoiceGen"))
		{
			WInvoiceGen invoice = new WInvoiceGen();
			IFormController controller = (IFormController) invoice;
			ADForm form = controller.getForm();
			form.setICustomForm(controller);
			return form;
		}
		else if (formName.equals ("org.compiere.apps.form.VInOutGen"))
		{
			WInOutGen inout = new WInOutGen();
			IFormController controller = (IFormController) inout;
			ADForm form = controller.getForm();
			form.setICustomForm(controller);
			return form;
		}
		return null;
	}
}	//	FormFactory
