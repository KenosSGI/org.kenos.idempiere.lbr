package org.kenos.idempiere.lbr.bankslip.editor;

import org.adempiere.webui.editor.WEditor;
import org.adempiere.webui.factory.IEditorFactory;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.util.DisplayType;

/**
 * 		Payment Dialog
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 * 	@version $Id: EditorFactory.java, v1.0 2020/07/28 3:41:54 PM, ralexsander Exp $
 */
public class EditorFactory implements IEditorFactory
{
	@Override
	public WEditor getEditor (GridTab gridTab, GridField gridField, boolean tableEditor)
	{
		if (gridField == null)
            return null;
		if (gridField.getDisplayType() == DisplayType.Payment)
			return new WPaymentEditor(gridField);
		//
		return null;
	}	//	getEditor
}	//	EditorFactory
