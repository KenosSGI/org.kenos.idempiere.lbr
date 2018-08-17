package org.kenos.idempiere.lbr.tax.zk.editor;

import org.adempiere.webui.editor.WStringEditor;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.GridField;

/**
 * 		CNPJ and CPF Editor
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: WCNPJFEditor.java, v1.0 2018/08/17 18:37:06, ralexsander Exp $
 */
public class WCNPJFEditor extends WStringEditor
{
	public WCNPJFEditor (GridField gridField)
	{
    	super (gridField, false);
    }	//	WCNPJFEditor
	
	@Override
	public Object getValue()
	{
		Object value = super.getValue();
		if (value instanceof String)
		{
			String cnpjf = (String) value;
			if (TextUtil.toNumeric(cnpjf).isEmpty())
				return null;
		}
		return value;
	}	//	getValue
}	//	WCNPJFEditor
