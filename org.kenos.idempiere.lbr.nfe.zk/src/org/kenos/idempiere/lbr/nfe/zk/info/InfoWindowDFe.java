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

import org.adempiere.webui.apps.ProcessParameterPanel;
import org.adempiere.webui.apps.WProcessCtl;
import org.adempiere.webui.component.Button;
import org.adempiere.webui.theme.ThemeManager;
import org.adempierelbr.model.MLBRPartnerDFe;
import org.adempierelbr.process.PrintFromXML;
import org.compiere.apps.IProcessParameter;
import org.compiere.model.GridField;
import org.compiere.process.ProcessInfo;
import org.compiere.util.Env;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zk.ui.event.Events;

/**
 * @author Ricardo Santana
 */
public class InfoWindowDFe extends org.adempiere.webui.info.InfoWindow {
	
	/**	Serial ID	*/
	private static final long serialVersionUID = 885961074050823777L;

	/**
	 * @param WindowNo
	 * @param tableName
	 * @param keyColumn
	 * @param multipleSelection
	 * @param whereClause
	 */
	public InfoWindowDFe(int WindowNo, String tableName, String keyColumn, String queryValue, 
			boolean multipleSelection, String whereClause, int AD_InfoWindow_ID) {
		this(WindowNo, tableName, keyColumn, queryValue, multipleSelection, whereClause, AD_InfoWindow_ID, true);
	}

	/**
	 * @param WindowNo
	 * @param tableName
	 * @param keyColumn
	 * @param multipleSelection
	 * @param whereClause
	 * @param lookup
	 */
	public InfoWindowDFe(int WindowNo, String tableName, String keyColumn, String queryValue, 
			boolean multipleSelection, String whereClause, int AD_InfoWindow_ID, boolean lookup) {
		this(WindowNo, tableName, keyColumn, queryValue, multipleSelection, whereClause, AD_InfoWindow_ID, lookup, null);		
	}	//	InfoWindowDFe

	/**
	 * @param WindowNo
	 * @param tableName
	 * @param keyColumn
	 * @param multipleSelection
	 * @param whereClause
	 * @param lookup
	 * @param gridfield
	 */
	public InfoWindowDFe(int WindowNo, String tableName, String keyColumn, String queryValue, 
			boolean multipleSelection, String whereClause, int AD_InfoWindow_ID, boolean lookup, GridField field) {
		super(WindowNo, tableName, keyColumn, queryValue, multipleSelection, whereClause, AD_InfoWindow_ID, lookup, field);
		//
		if (WindowNo > 0)
			m_WindowNo = WindowNo;
	}	//	InfoWindowDFe

	/** Instance Button				*/
	protected Button	m_PrintButton;
	int m_WindowNo = 0;
	
	@Override
	protected void renderWindow() {
		super.renderWindow();
		// Product Attribute Instance
		m_PrintButton = confirmPanel.createButton("ExportCSV");
		confirmPanel.addComponentsLeft(m_PrintButton);
		m_PrintButton.setEnabled(false);
		m_PrintButton.addEventListener(Events.ON_CLICK, new EventListener<Event>() {
			@Override
			public void onEvent(Event event) throws Exception {
				

				//  Prepare Process
				ProcessInfo pi = new ProcessInfo ("", PrintFromXML.AD_Process_ID, MLBRPartnerDFe.Table_ID, contentPanel.getSelectedRowKey());
				pi.setAD_User_ID (Env.getAD_User_ID(Env.getCtx()));
				pi.setAD_Client_ID(Env.getAD_Client_ID(Env.getCtx()));
				ProcessParameterPanel pp = new ProcessParameterPanel(m_WindowNo, pi);
				
				//	Execute Process
				WProcessCtl.process (null, m_WindowNo, (IProcessParameter) pp, pi, null);
				statusBar.setStatusLine(pi.getSummary(), pi.isError());
			}
		});
		m_PrintButton.setVisible(true);
		m_PrintButton.setImage(ThemeManager.getThemeResource("images/Print16.png"));
	}	//	renderWindow

	@Override
	public void onQueryCallback(Event event) {
		super.onQueryCallback(event);
		enablePrintButton();
	}	//	onQueryCallback
	
	protected void enablePrintButton() {
		if (m_PrintButton == null) return;
		m_PrintButton.setEnabled(contentPanel.getRowCount() > 0);		
	}	//	enablePrintButton
}	//	InfoWindowDFe
