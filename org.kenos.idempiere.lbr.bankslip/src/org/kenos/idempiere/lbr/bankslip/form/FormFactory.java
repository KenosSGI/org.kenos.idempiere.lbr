package org.kenos.idempiere.lbr.bankslip.form;

import org.adempiere.webui.factory.IFormFactory;
import org.adempiere.webui.panel.ADForm;
import org.adempiere.webui.panel.IFormController;

/**
 * 		Bank Slip form factory
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: FormFactory.java, v1.0 2020/03/27 13:06:59 PM, ralexsander Exp $
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
		if (GenCNAB.GEN_CNAB_SWING.equals(formName) || GenCNAB.GEN_CNAB_ZK.equals(formName))
			controller = new WGenCNAB();
		else if (GenBankSlip.GEN_BANKSLIP_SWING.equals(formName) || GenBankSlip.GEN_BANKSLIP_ZK.equals(formName))
			controller = new WGenBankSlip();
		
		if (controller != null)
		{
			ADForm form = controller.getForm();
			form.setICustomForm(controller);
			return form;
		}
		
		return null;
	}	//	newFormInstance
}	//	FormFactory
