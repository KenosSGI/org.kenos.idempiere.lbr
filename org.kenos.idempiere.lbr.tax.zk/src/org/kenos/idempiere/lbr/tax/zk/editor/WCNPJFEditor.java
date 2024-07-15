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
			String numericCNPJF = TextUtil.toNumeric(cnpjf);
			
			if (numericCNPJF.isEmpty())
				return null;
			else if (numericCNPJF.length() == 14 && numericCNPJF.endsWith("000000"))
			{
                // Extract the root CNPJ (first 8 digits)
                String rootCNPJ = numericCNPJF.substring(0, 8);
                // Format the root CNPJ with mask
                String formattedRootCNPJ = rootCNPJ.replaceFirst("(\\d{2})(\\d{3})(\\d{3})", "$1.$2.$3");
                return formattedRootCNPJ + "%";
            }
		}
		return value;
	}	//	getValue
}	//	WCNPJFEditor
