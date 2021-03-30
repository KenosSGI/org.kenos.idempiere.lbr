package org.kenos.idempiere.lbr.base.zk.form;

import org.adempiere.webui.factory.IFormFactory;
import org.adempiere.webui.panel.ADForm;
import org.adempiere.webui.panel.IFormController;

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
		IFormController controller = null;
				
		//	Check the form name
		if (formName.equals ("org.compiere.apps.form.VInvoiceGen"))
			controller = new WInvoiceGen();

		else if (formName.equals ("org.compiere.apps.form.VInOutGen"))
			controller = new WInOutGen();

		else if (formName.equals ("org.kenos.apps.form.VPayment"))
			controller = new WPayment();

		else if (formName.equals ("org.kenos.idempiere.lbr.base.form.POGManage"))
			controller = new WPOGManage();

		else if (formName.equals ("org.kenos.idempiere.lbr.base.form.POGInvoiceGen"))
			controller = new WPOGInvoiceGen();

		else if (formName.equals ("org.kenos.idempiere.lbr.base.form.POGDistribMaterial"))
			controller = new WPOGDistribMaterial();

		else if (formName.equals ("org.kenos.idempiere.lbr.base.form.POGManageMoveToProducer"))
			controller = new WPOGManageMoveToProducer();

		else if (formName.equals ("org.compiere.apps.form.VMatch"))
			controller = new WMatch();

		else if (formName.equals ("org.compiere.apps.form.VMerge"))
			controller = new WMerge();

		if (controller != null)
		{
			ADForm form = controller.getForm();
			form.setICustomForm(controller);
			return form;
		}
		
		return null;
	}
}	//	FormFactory
