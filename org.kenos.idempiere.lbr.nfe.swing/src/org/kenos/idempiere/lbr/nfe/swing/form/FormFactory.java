package org.kenos.idempiere.lbr.nfe.swing.form;

import org.adempiere.ui.swing.factory.IFormFactory;
import org.compiere.apps.form.FormPanel;
import org.kenos.apps.form.VNotaFiscal;

/**
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: NFeFromFactory.java, v1.0 2017/08/28 6:32:03 PM, ralexsander Exp $
 */
public class FormFactory implements IFormFactory
{
	@Override
	public FormPanel newFormInstance (String formName)
	{
		if (VNotaFiscal.class.getName().equals(formName))
			return new VNotaFiscal();
		return null;
	}	//	newFormInstance
}	//	NFeFromFactory
