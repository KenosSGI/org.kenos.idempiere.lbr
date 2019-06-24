package org.kenos.idempiere.lbr.boleto.zk.form;

import org.adempiere.webui.factory.IFormFactory;
import org.adempiere.webui.panel.ADForm;
import org.adempiere.webui.panel.IFormController;
import org.adempierelbr.apps.form.GenBilling;
import org.adempierelbr.apps.form.GenCNAB;
import org.adempierelbr.apps.form.WGenBilling;
import org.adempierelbr.apps.form.WGenCNAB;

/**
 * 		Boleto form factory
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: BoletoFormFactory.java, v1.0 2017/08/28 13:06:59 PM, ralexsander Exp $
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
		if (GenBilling.GEN_BILLING_SWING.equals(formName) || GenBilling.GEN_BILLING_ZK.equals(formName))
			controller = new WGenBilling();
			
		else if (GenCNAB.GEN_CNAB_SWING.equals(formName) || GenCNAB.GEN_CNAB_ZK.equals(formName))
			controller = new WGenCNAB();

		if (controller != null)
		{
			ADForm form = controller.getForm();
			form.setICustomForm(controller);
			return form;
		}
		
		return null;
	}
}	//	FormFactory
