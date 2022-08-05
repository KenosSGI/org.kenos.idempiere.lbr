package org.kenos.idempiere.lbr.base.callout;

import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.adempierelbr.wrapper.I_W_C_DocType;
import org.adempierelbr.wrapper.I_W_C_Order;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MDocType;

/**
 * 	Callout Order to validate the CPF / CNPJ
 * 	@author Ricardo Santana <rsantana@kenos.com.br>
 */
public class DocType implements IColumnCallout
{
	@Override
	public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
	{
		if (value == null)
			return null;
		
		Integer C_DocTypeTarget_ID = (Integer) value;
		if (C_DocTypeTarget_ID < 1)
			return null;
		
		MDocType dt = new MDocType (ctx, C_DocTypeTarget_ID, null);
		String nfDescription = dt.get_ValueAsString(I_W_C_DocType.COLUMNNAME_lbr_NFDescription);
		
		if (nfDescription != null)
			mTab.setValue (I_W_C_Order.COLUMNNAME_lbr_NFDescription, nfDescription);
		
		return null;
	}	//	start
}	//	OrderLineProduct
