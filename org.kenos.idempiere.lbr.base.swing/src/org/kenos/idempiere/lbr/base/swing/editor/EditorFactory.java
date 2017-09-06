package org.kenos.idempiere.lbr.base.swing.editor;

import org.adempiere.ui.swing.factory.IEditorFactory;
import org.compiere.grid.ed.VEditor;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MLocationLookup;
import org.compiere.util.DisplayType;

/**
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: EditorFactory.java, v1.0 2017/08/28 16:59:36 PM, ralexsander Exp $
 */
public class EditorFactory implements IEditorFactory
{
	@Override
	public VEditor getEditor(GridTab mTab, GridField mField, boolean tableEditor)
	{
		if (mField == null || mField.isHeading())
			return null;
		if (DisplayType.Location == mField.getDisplayType())
			return new VLocation (mTab, mField.getColumnName(), mField.isMandatory(false), mField.isReadOnly(), mField.isUpdateable(), (MLocationLookup)mField.getLookup());
		return null;
	}	//	getEditor
}	//	EditorFactory
