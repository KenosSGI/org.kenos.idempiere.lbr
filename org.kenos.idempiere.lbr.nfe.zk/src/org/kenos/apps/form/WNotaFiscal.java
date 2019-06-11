/******************************************************************************
 * Copyright (C) 2009 Low Heng Sin                                            *
 * Copyright (C) 2009 Idalica Corporation                                     *
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
package org.kenos.apps.form;

import java.util.ArrayList;
import java.util.logging.Level;

import org.adempiere.webui.ClientInfo;
import org.adempiere.webui.LayoutUtils;
import org.adempiere.webui.component.Column;
import org.adempiere.webui.component.Columns;
import org.zkoss.zk.ui.Component;
import org.zkoss.zul.North;
import org.adempiere.webui.component.Label;
import org.adempiere.webui.component.Listbox;
import org.adempiere.webui.component.ListboxFactory;
import org.adempiere.webui.component.Row;
import org.adempiere.webui.editor.WDateEditor;
import org.adempiere.webui.editor.WSearchEditor;
import org.adempiere.webui.editor.WTableDirEditor;
import org.adempiere.webui.event.ValueChangeEvent;
import org.adempiere.webui.event.ValueChangeListener;
import org.adempiere.webui.panel.ADForm;
import org.adempiere.webui.panel.IFormController;
import org.adempiere.webui.util.ZKUpdateUtil;
import org.compiere.model.MLookup;
import org.compiere.model.MLookupFactory;
import org.compiere.process.DocAction;
import org.compiere.util.CLogger;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.Language;
import org.compiere.util.Msg;
import org.zkoss.zk.ui.WrongValueException;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zul.Space;

/**
 * Generate Invoice (manual) view class
 * @author Rogério Feitosa (Kenos, www.kenos.com.br)
 * 			<li>Alteração Ação Padrão do Documento no Processo Gerar Remessa (Manual) / Fatura (Manual)
 * 			<li>https://adempiere.atlassian.net/browse/LBR-14
 */
public class WNotaFiscal extends NotaFiscal implements IFormController, EventListener<Event>, ValueChangeListener
{
	private WNotaFiscalForm form;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(WNotaFiscal.class);
	//
	private Label lOrg = new Label();
	private WTableDirEditor fOrg;
	private Label lOrgRec = new Label();
	private WTableDirEditor fOrgRec;
	private Label lManifest = new Label();
	private WTableDirEditor fManifest;
	private Label lBPartner = new Label();
	private WSearchEditor fBPartner;
	private Label   lDocAction = new Label();
	private WTableDirEditor docAction;
	private Label lDateDoc = new Label();
	private WDateEditor fDateDoc = new WDateEditor();
	private Label lIsPrinted = new Label();
	private Listbox fIsPrinted = new Listbox();
	private int noOfColumn;
	
	private final String IsPrinted_OPTION_YES = Msg.translate(Env.getCtx(), "Yes");
	private final String IsPrinted_OPTION_NO = Msg.translate(Env.getCtx(), "No");
	
	public WNotaFiscal()
	{
		log.info("");
		
		form = new WNotaFiscalForm(this);
		Env.setContext(Env.getCtx(), form.getWindowNo(), "IsSOTrx", "Y");
		
		try
		{
			super.dynInit();
			dynInit();
			zkInit();
			
			form.postQueryEvent();
		}
		catch(Exception ex)
		{
			log.log(Level.SEVERE, "init", ex);
		}
		
		ClientInfo.onClientInfo(form, this::onClientInfo);
	}	//	init
	
	/**
	 *	Static Init.
	 *  <pre>
	 *  selPanel (tabbed)
	 *      fOrg, fBPartner
	 *      scrollPane & miniTable
	 *  genPanel
	 *      info
	 *  </pre>
	 *  @throws Exception
	 */
	void zkInit() throws Exception
	{
		setupColumns();
		//
		lOrg.setText(Msg.translate(Env.getCtx(), "AD_Org_ID"));
		lOrgRec.setText(Msg.translate(Env.getCtx(), "AD_Org_ID"));
		lBPartner.setText(Msg.translate(Env.getCtx(), "C_BPartner_ID"));
		lManifest.setText(Msg.translate(Env.getCtx(), "LBR_EventType"));
		lDateDoc.setText(Msg.translate(Env.getCtx(), "Date"));
		lIsPrinted.setText(Msg.translate(Env.getCtx(), "IsPrinted"));		
		
		Row row = form.getEmitParameterPanel().newRows().newRow();
		row.appendCellChild(lOrg.rightAlign());
		ZKUpdateUtil.setHflex(fOrg.getComponent(), "true");
		row.appendCellChild(fOrg.getComponent());
		row.appendCellChild(lBPartner.rightAlign());
		ZKUpdateUtil.setHflex(fBPartner.getComponent(), "true");
		row.appendCellChild(fBPartner.getComponent());
		row.appendCellChild(lDateDoc.rightAlign());
		ZKUpdateUtil.setHflex(fDateDoc.getComponent(), "true");
		row.appendCellChild(fDateDoc.getComponent());		
		row.appendCellChild(lIsPrinted.rightAlign());
		row.appendCellChild(fIsPrinted);
		row.appendCellChild(lDocAction.rightAlign());
		ZKUpdateUtil.setHflex(docAction.getComponent(), "true");
		row.appendCellChild(docAction.getComponent());

		
		row = form.getRecParameterPanel().newRows().newRow();
		row.appendCellChild(lOrgRec.rightAlign());
		ZKUpdateUtil.setHflex(fOrgRec.getComponent(), "true");
		row.appendCellChild(fOrgRec.getComponent());
		row.appendCellChild(lManifest.rightAlign());
		ZKUpdateUtil.setHflex(fManifest.getComponent(), "true");
		row.appendCellChild(fManifest.getComponent());
		row.appendCellChild(new Space());
		
		if (noOfColumn < 6)
		{
			LayoutUtils.compactTo(form.getEmitParameterPanel(), noOfColumn);
			LayoutUtils.compactTo(form.getInutParameterPanel(), noOfColumn);
			LayoutUtils.compactTo(form.getRecParameterPanel(), noOfColumn);
		}
		else
		{
			LayoutUtils.expandTo(form.getEmitParameterPanel(), noOfColumn, true);
			LayoutUtils.expandTo(form.getInutParameterPanel(), noOfColumn, true);
			LayoutUtils.expandTo(form.getRecParameterPanel(), noOfColumn, true);
		}
	}	//	jbInit

	protected void setupColumns() {
		noOfColumn = 6;
		if (ClientInfo.maxWidth(ClientInfo.MEDIUM_WIDTH-1))
		{
			if (ClientInfo.maxWidth(ClientInfo.SMALL_WIDTH-1))
				noOfColumn = 2;
			else
				noOfColumn = 4;
		}
		if (noOfColumn == 2)
		{
			Columns columns = new Columns();
			Column column = new Column();
			column.setWidth("35%");
			columns.appendChild(column);
			column = new Column();
			column.setWidth("65%");
			columns.appendChild(column);
			form.getEmitParameterPanel().appendChild(columns);
			form.getInutParameterPanel().appendChild(columns);
			form.getRecParameterPanel().appendChild(columns);
		}
	}

	/**
	 *	Fill Picks.
	 *		Column_ID from C_Order
	 *  @throws Exception if Lookups cannot be initialized
	 */
	public void dynInit() throws Exception
	{
		MLookup orgL = MLookupFactory.get (Env.getCtx(), form.getWindowNo(), 0, 2163, DisplayType.TableDir);
		fOrg = new WTableDirEditor ("AD_Org_ID", false, false, true, orgL);
		fOrg.addValueChangeListener(this);
		fOrgRec = new WTableDirEditor ("AD_Org_ID", true, false, true, orgL);
		fOrgRec.addValueChangeListener(this);
		
		//	Default Organization
		int AD_Org_ID = Env.getAD_Org_ID(Env.getCtx());
		if (AD_Org_ID > 0)
		{
			m_AD_Org_ID = AD_Org_ID;
			fOrg.setValue(AD_Org_ID);
			fOrgRec.setValue(AD_Org_ID);
		}
		
		//
		fDateDoc.addValueChangeListener(this);
		
		MLookup manifestL = MLookupFactory.get (Env.getCtx(), form.getWindowNo(), 0, DisplayType.List, Language.getBaseLanguage(), "LBR_EventType", 1120226, false, null);
		fManifest = new WTableDirEditor ("LBR_EventType", true, false, true, manifestL);
		fManifest.addValueChangeListener(this);
		fManifest.setValue("210210");
		m_LBR_EventType = "210210";
		//
		MLookup bpL = MLookupFactory.get (Env.getCtx(), form.getWindowNo(), 0, 2762, DisplayType.Search);
		fBPartner = new WSearchEditor ("C_BPartner_ID", false, false, true, bpL);
		fBPartner.addValueChangeListener(this);
		//      Document Action Prepared/ Completed
		lDocAction.setText(Msg.translate(Env.getCtx(), "Action"));
		MLookup docActionL = MLookupFactory.get(Env.getCtx(), form.getWindowNo(), 3495 /* C_Invoice.DocAction */,
				DisplayType.List, Env.getLanguage(Env.getCtx()), "DocAction", 135 /* _Document Action */,
				false, "AD_Ref_List.Value IN ('CO','PR')");
		docAction = new WTableDirEditor("DocAction", true, false, true,docActionL);
		docAction.setValue(DocAction.ACTION_Complete);
		
		String[] list = {"", IsPrinted_OPTION_YES, IsPrinted_OPTION_NO};
		
		fIsPrinted = ListboxFactory.newDropdownListbox (list);
		fIsPrinted.addActionListener(this);
	}	//	fillPicks
    
	/**
	 *  Query Info
	 */
	public void executeQuery()
	{
		executeQueryEmit (form.getMiniTableEmit());
		executeQueryRec (form.getMiniTableRec());
		executeQueryInut (form.getMiniTableInut());

		if (ClientInfo.maxHeight(ClientInfo.SMALL_HEIGHT-1))
		{
			Component comp = form.getEmitParameterPanel().getParent();
			if (comp instanceof North)
				((North)comp).setOpen(false);
			
			comp = form.getInutParameterPanel().getParent();
			if (comp instanceof North)
				((North)comp).setOpen(false);
			
			comp = form.getRecParameterPanel().getParent();
			if (comp instanceof North)
				((North)comp).setOpen(false);
		}
		
		form.getMiniTableEmit().repaint();
		form.getMiniTableRec().repaint();
		form.getMiniTableInut().repaint();
		form.invalidate();
	}   //  executeQuery

	protected void onClientInfo()
	{
		if (ClientInfo.isMobile() && form.getPage() != null) 
		{
			if (noOfColumn > 0 && form.getEmitParameterPanel().getRows() != null)
			{
				int t = 6;
				if (ClientInfo.maxWidth(ClientInfo.MEDIUM_WIDTH-1))
				{
					if (ClientInfo.maxWidth(ClientInfo.SMALL_WIDTH-1))
						t = 2;
					else
						t = 4;
				}
				if (t != noOfColumn)
				{
					form.getEmitParameterPanel().getRows().detach();
					if (form.getEmitParameterPanel().getColumns() != null)
						form.getEmitParameterPanel().getColumns().detach();
					try {
						zkInit();
						form.invalidate();
					} catch (Exception e1) {}
				}
			}
		}
	}

	/**
	 *	Action Listener
	 *  @param e event
	 */
	public void onEvent(Event e)
	{
		if(fIsPrinted.equals(e.getTarget()))
		{
			String Printed = (String) fIsPrinted.getSelectedItem().getValue();
			
			if (IsPrinted_OPTION_YES.equals(Printed))
				m_IsPrinted = true;
			else if (IsPrinted_OPTION_NO.equals(Printed))
				m_IsPrinted = false;
			else
				m_IsPrinted = null;
			
			form.postQueryEvent();
		}
		else
			validate();
	}	//	actionPerformed
	
	public void validate()
	{
		String docActionSelected = (String)docAction.getValue();
		if ( docActionSelected==null || docActionSelected.isEmpty() )
			throw new WrongValueException(docAction.getComponent(), Msg.translate(Env.getCtx(), "FillMandatory"));

		form.saveSelection();

		ArrayList<Integer> selection = getSelection();
		if (selection != null && selection.size() > 0 && isSelectionActive())
			form.generate();
		else
			form.dispose();
	}

	/**
	 *	Value Change Listener - requery
	 *  @param e event
	 */
	public void valueChange(ValueChangeEvent e)
	{
		if (log.isLoggable(Level.INFO)) log.info(e.getPropertyName() + "=" + e.getNewValue());
		if (e.getPropertyName().equals("AD_Org_ID"))
			m_AD_Org_ID = e.getNewValue();
		if (e.getPropertyName().equals("LBR_EventType"))
		{
			m_LBR_EventType = e.getNewValue();
			return;
		}
		if (e.getPropertyName().equals("C_BPartner_ID"))
		{
			m_C_BPartner_ID = e.getNewValue();
			fBPartner.setValue(m_C_BPartner_ID);	//	display value
		}
		
		if (e.getPropertyName().equals("Date"))
		{
			m_DateDoc = e.getNewValue();
			fDateDoc.setValue(m_DateDoc);
		}	
		
		form.postQueryEvent();
	}	//	vetoableChange
	
	/**************************************************************************
	 *	Generate Shipments
	 */
	public String generate()
	{
		return null;
	}	//	generateShipments
	
	public ADForm getForm()
	{
		return form;
	}
}