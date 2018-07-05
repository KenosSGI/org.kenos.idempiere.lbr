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
		else if (formName.equals ("org.kenos.apps.form.VPayment"))
		{
			WPayment payment = new WPayment();
			IFormController controller = (IFormController) payment;
			ADForm form = controller.getForm();
			form.setICustomForm(controller);
			return form;
		}
		else if (formName.equals ("org.kenos.idempiere.lbr.base.form.POGManage"))
		{
			WPOGManage manage = new WPOGManage();
			IFormController controller = (IFormController) manage;
			ADForm form = controller.getForm();
			form.setICustomForm(controller);
			return form;
		}
		else if (formName.equals ("org.kenos.idempiere.lbr.base.form.POGInvoiceGen"))
		{
			WPOGInvoiceGen pogInvoiceGen = new WPOGInvoiceGen();
			IFormController controller = (IFormController) pogInvoiceGen;
			ADForm form = controller.getForm();
			form.setICustomForm(controller);
			return form;
		}
		else if (formName.equals ("org.kenos.idempiere.lbr.base.form.POGDistribMaterial"))
		{
			WPOGDistribMaterial pogDistribMaterial = new WPOGDistribMaterial();
			IFormController controller = (IFormController) pogDistribMaterial;
			ADForm form = controller.getForm();
			form.setICustomForm(controller);
			return form;
		}
		else if (formName.equals ("org.kenos.idempiere.lbr.base.form.POGManageMoveToProducer"))
		{
			WPOGManageMoveToProducer pogManageMoveToProducer = new WPOGManageMoveToProducer();
			IFormController controller = (IFormController) pogManageMoveToProducer;
			ADForm form = controller.getForm();
			form.setICustomForm(controller);
			return form;
		}
		return null;
	}
}	//	FormFactory
