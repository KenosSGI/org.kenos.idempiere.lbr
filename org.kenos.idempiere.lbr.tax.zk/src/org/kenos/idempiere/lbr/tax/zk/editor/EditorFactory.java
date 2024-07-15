package org.kenos.idempiere.lbr.tax.zk.editor;

import org.adempiere.webui.editor.WEditor;
import org.adempiere.webui.factory.IEditorFactory;
import org.adempierelbr.webui.editor.WTaxesEditor;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.kenos.idempiere.lbr.tax.lookup.DisplayTypeFactory;

/**
 * EditorFactory for creating specific LBR (Local Brazilian) editors.
 * This factory determines which editor to use based on the grid field's display type
 * and other characteristics.
 */
public class EditorFactory implements IEditorFactory
{
	/**
     * Retrieves the appropriate editor for the given grid field.
     * This method checks the field's display type and other properties to determine
     * the correct editor to return.
     *
     * @param gridTab The grid tab containing the field.
     * @param gridField The grid field for which the editor is needed.
     * @param tableEditor Flag indicating whether the editor is for a table.
     * @return The appropriate editor for the field, or null if no suitable editor is found.
     */
	@Override
	public WEditor getEditor (GridTab gridTab, GridField gridField, boolean tableEditor)
	{
		if (gridField == null || gridField.isHeading())
			return null;

		int displayType = gridField.getDisplayType();

		//	Brazilian Taxes
		if (displayType == DisplayTypeFactory.BRAZILIAN_TAXES){
			return new WTaxesEditor(gridTab, gridField);
		}
				
		//	CNPJ mask
		if (gridField.getColumnName().equals(I_W_C_BPartner.COLUMNNAME_lbr_CNPJ)) {
			gridField.setVFormat("00.000.000/0000-00");
			return new WCNPJFEditor(gridField);
		}
		
		//	CPF mask
		if (gridField.getColumnName().equals(I_W_C_BPartner.COLUMNNAME_lbr_CPF)) {
			gridField.setVFormat("000.000.000-00");
			return new WCNPJFEditor(gridField);
		}
		return null;
	}	//	getEditor
}	//	EditorFactory
