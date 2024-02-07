/******************************************************************************
 * Copyright (C) 2024 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2024 Ricardo Santana                                         *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.kenos.idempiere.lbr.nfe.zk.info;

import org.adempiere.webui.factory.IInfoFactory;
import org.adempiere.webui.info.InfoWindow;
import org.adempiere.webui.panel.InfoPanel;
import org.compiere.model.GridField;
import org.compiere.model.Lookup;
import org.compiere.model.MInfoWindow;
import org.compiere.util.Env;

/**
 * Factory class for creating information windows in the iDempiere ERP system. 
 * This implementation includes a specific method for creating an info window for 
 * Documento Fiscal de Parceiro Eletrônico (DFe).
 * 
 * @author Ricardo Santana
 */
public class InfoFactory implements IInfoFactory {

	// UUID for the DFe info window. This unique identifier is used to instantiate 
    // the specific DFe info window among possibly many info windows.
    public final String INFO_WINDOW_DFE_UUID = "0c6daf8c-688c-4afa-b6c9-beb02f1ed006";

    /**
     * Creates an info panel based on various parameters. This method is part of the IInfoFactory interface.
     * Currently, this method returns null and can be implemented to return specific InfoPanel instances.
     * 
     * @param WindowNo        The window number.
     * @param tableName       Name of the database table.
     * @param keyColumn       Name of the key column.
     * @param value           Initial value for the query.
     * @param multiSelection  If true, allows multiple selections.
     * @param whereClause     Additional conditions for the query.
     * @param AD_InfoWindow_ID The InfoWindow ID from the application dictionary.
     * @param lookup          If true, creates a lookup info panel.
     * @return                An instance of InfoPanel (currently returns null).
     */
	@Override
	public InfoPanel create (int WindowNo, String tableName, String keyColumn, String value, boolean multiSelection,
			String whereClause, int AD_InfoWindow_ID, boolean lookup) {
		return null;
	}	//	create

	/**
     * Overloaded create method to support lookup based on a GridField. 
     * Currently, this method returns null and can be implemented to return specific InfoPanel instances.
     * 
     * @param lookup          The Lookup object.
     * @param field           The GridField object.
     * @param tableName       Name of the database table.
     * @param keyColumn       Name of the key column.
     * @param queryValue      Initial value for the query.
     * @param multiSelection  If true, allows multiple selections.
     * @param whereClause     Additional conditions for the query.
     * @param AD_InfoWindow_ID The InfoWindow ID from the application dictionary.
     * @return                An instance of InfoPanel (currently returns null).
     */
	@Override
	public InfoPanel create (Lookup lookup, GridField field, String tableName, String keyColumn, String queryValue,
			boolean multiSelection, String whereClause, int AD_InfoWindow_ID) {
		return null;
	}	//	create
	
	/**
     * Creates an InfoWindow instance for a given AD_InfoWindow_ID. If the ID matches the DFe info window's UUID,
     * a specialized DFe info window is instantiated.
     * 
     * @param AD_InfoWindow_ID The InfoWindow ID from the application dictionary to instantiate.
     * @return                 An InfoWindow instance, specifically InfoWindowDFe for DFe windows.
     */
	@Override
	public InfoWindow create (int AD_InfoWindow_ID) {
		MInfoWindow infoWindow = new MInfoWindow(Env.getCtx(), AD_InfoWindow_ID, (String) null);
		InfoWindow info = null;
		String tableName = infoWindow.getAD_Table().getTableName();
		String keyColumn = tableName + "_ID";
		//
		if (INFO_WINDOW_DFE_UUID.equals(infoWindow.getAD_InfoWindow_UU())) { 
			info = new InfoWindowDFe (-1, tableName, keyColumn, null, false, null, AD_InfoWindow_ID, false, null);
		}
		return info;
	}	//	create
}	//	InfoFactory
