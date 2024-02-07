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
 * 	Info Factory
 * @author Ricardo Santana
 */
public class InfoFactory implements IInfoFactory {

	@Override
	public InfoPanel create (int WindowNo, String tableName, String keyColumn, String value, boolean multiSelection,
			String whereClause, int AD_InfoWindow_ID, boolean lookup) {
		return null;
	}	//	create

	@Override
	public InfoPanel create (Lookup lookup, GridField field, String tableName, String keyColumn, String queryValue,
			boolean multiSelection, String whereClause, int AD_InfoWindow_ID) {
		return null;
	}	//	create

	public final String INFO_WINDOW_DFE_UUID = "0c6daf8c-688c-4afa-b6c9-beb02f1ed006";
	
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
