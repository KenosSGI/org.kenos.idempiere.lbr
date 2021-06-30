package org.kenos.idempiere.lbr.nfe.callout;

import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;

/**
 * 	Callout for Order
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: XPed.java, v1.0 2017/12/14 10:50:00 PM, ralexsander Exp $
 */
public class XPed implements IColumnCallout 
{
	/**
	 * 	Validate xPed and nItemPed
	 */
	@Override
	public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
	{
		if (value == null)
			return "";
		
		String text = (String) value;
		
		if (text.isBlank())
			return "";
		//
		String columnName = mField.getColumnName();
		if (MLBRNotaFiscalLine.COLUMNNAME_POReference.equals(columnName))
		{
			if (!text.trim().equals(text))
				mTab.setValue (MLBRNotaFiscalLine.COLUMNNAME_POReference, text.trim());
			if (!text.trim().matches("^.{1,15}$"))
				return "Conteúdo inválido, a Referência (xPed) precisa ter de 1 à 15 caracteres.";
		}
		else if (MLBRNotaFiscalLine.COLUMNNAME_LBR_PORef_Item.equals(columnName))
		{
			if (!text.trim().equals(text))
				mTab.setValue (MLBRNotaFiscalLine.COLUMNNAME_LBR_PORef_Item, text.trim());
			if (!text.trim().matches("^\\d{1,6}$"))
				return "Conteúdo inválido, a Referência do Item (nItemPed) precisa ter de 1 à 6 números.";
		}
		
		return "";
	}	//	start
}	//	Production
