package org.kenos.idempiere.lbr.nfe.zk.form;

import org.adempiere.webui.factory.IFormFactory;
import org.adempiere.webui.panel.ADForm;
import org.adempiere.webui.panel.IFormController;
import org.kenos.apps.form.WNotaFiscal;
import org.kenos.apps.form.WNotaFiscalAdditional;

/**
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: NFeFromFactory.java, v1.0 2017/08/28 6:32:03 PM, ralexsander Exp $
 */
public class FormFactory implements IFormFactory
{
	@Override
	public ADForm newFormInstance (String formName)
	{
		IFormController controller = null;
		
		if ("org.kenos.apps.form.VNotaFiscal".equals(formName) || "org.kenos.apps.form.WNotaFiscal".equals(formName))
			controller = new WNotaFiscal();
		
		else if ("org.kenos.apps.form.VNotaFiscalAdditional".equals(formName))
			controller = new WNotaFiscalAdditional();
		
		else if ("org.compiere.apps.form.VAllocation".equals(formName) || "org.adempiere.webui.apps.form.WAllocation".equals(formName))
			controller = new WAllocation();
			
		if (controller != null)
		{
			ADForm form = controller.getForm();
			form.setICustomForm(controller);
			return form;
		}
		
		return null;
	}	//	newFormInstance
}	//	FormFactory
