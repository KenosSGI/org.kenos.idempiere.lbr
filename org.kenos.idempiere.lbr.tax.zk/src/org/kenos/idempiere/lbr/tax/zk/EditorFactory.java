package org.kenos.idempiere.lbr.tax.zk;

import org.adempiere.webui.editor.WEditor;
import org.adempiere.webui.factory.IEditorFactory;
import org.adempierelbr.webui.editor.WTaxesEditor;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.kenos.idempiere.lbr.tax.DisplayTypeFactory;

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

		return null;
	}	//	getEditor
}	//	EditorFactory
