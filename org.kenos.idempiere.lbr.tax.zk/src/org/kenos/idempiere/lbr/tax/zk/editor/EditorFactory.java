package org.kenos.idempiere.lbr.tax.zk.editor;

import org.adempiere.webui.editor.WEditor;
import org.adempiere.webui.factory.IEditorFactory;
import org.adempierelbr.webui.editor.WTaxesEditor;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.kenos.idempiere.lbr.tax.lookup.DisplayTypeFactory;

/**
 * 	Editor Factory for LBR editors
 *
 */
public class EditorFactory implements IEditorFactory
{
	/**
	 * 	Get editor
	 */
	@Override
	public WEditor getEditor (GridTab gridTab, GridField gridField, boolean tableEditor)
	{
		if (gridField == null || gridField.isHeading())
			return null;

		int displayType = gridField.getDisplayType();

		if (displayType == DisplayTypeFactory.BRAZILIAN_TAXES)
		{
			return new WTaxesEditor(gridTab, gridField);
		}
		else if (gridTab == null && !tableEditor)
		{
			if (gridField.getColumnName().equals(I_W_C_BPartner.COLUMNNAME_lbr_CNPJ))
				gridField.setVFormat("00.000.000/0000-00");
			else if (gridField.getColumnName().equals(I_W_C_BPartner.COLUMNNAME_lbr_CPF))
				gridField.setVFormat("000.000.000-00");
			else
				return null;
			
			return new WCNPJFEditor(gridField);
		}

		return null;
	}	//	getEditor
}	//	EditorFactory
