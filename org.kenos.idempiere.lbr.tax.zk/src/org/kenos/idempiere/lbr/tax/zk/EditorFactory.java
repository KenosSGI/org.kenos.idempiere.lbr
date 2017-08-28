package org.kenos.idempiere.lbr.tax.zk;

import org.adempiere.webui.editor.WEditor;
import org.adempiere.webui.factory.IEditorFactory;
import org.adempierelbr.webui.editor.WTaxesEditor;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.kenos.idempiere.lbr.tax.DisplayTypeFactory;

public class EditorFactory implements IEditorFactory {

	@Override
	public WEditor getEditor(GridTab gridTab, GridField gridField,
			boolean tableEditor) {
		if (gridField == null) {
            return null;
        }

        WEditor editor = null;
        int displayType = gridField.getDisplayType();

        /** Not a Field */
        if (gridField.isHeading()) {
            return null;
        }
        
		if (displayType == DisplayTypeFactory.BRAZILIAN_TAXES) {
            editor = new WTaxesEditor(gridTab, gridField);
        }

        return editor;
	}

}
