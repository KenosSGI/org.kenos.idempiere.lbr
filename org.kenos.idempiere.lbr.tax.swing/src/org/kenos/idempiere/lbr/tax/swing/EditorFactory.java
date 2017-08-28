package org.kenos.idempiere.lbr.tax.swing;

import org.adempiere.ui.swing.factory.IEditorFactory;
import org.adempierelbr.grid.ed.VTaxes;
import org.compiere.grid.ed.VEditor;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.kenos.idempiere.lbr.tax.DisplayTypeFactory;

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
		if (DisplayTypeFactory.BRAZILIAN_TAXES == mField.getDisplayType())
			return new VTaxes();
		return null;
	}	//	getEditor
}	//	EditorFactory
