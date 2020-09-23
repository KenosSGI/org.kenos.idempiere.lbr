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

import java.util.List;
import java.util.UUID;
import java.util.logging.Level;

import org.adempiere.util.Callback;
import org.adempiere.webui.LayoutUtils;
import org.adempiere.webui.apps.AEnv;
import org.adempiere.webui.apps.BusyDialog;
import org.adempiere.webui.apps.ProcessParameterPanel;
import org.adempiere.webui.apps.WProcessCtl;
import org.adempiere.webui.component.Button;
import org.adempiere.webui.component.ConfirmPanel;
import org.adempiere.webui.component.DesktopTabpanel;
import org.adempiere.webui.component.Grid;
import org.adempiere.webui.component.GridFactory;
import org.adempiere.webui.component.ListboxFactory;
import org.adempiere.webui.component.Tab;
import org.adempiere.webui.component.Tabbox;
import org.adempiere.webui.component.Tabpanels;
import org.adempiere.webui.component.Tabs;
import org.adempiere.webui.component.WListbox;
import org.adempiere.webui.event.WTableModelEvent;
import org.adempiere.webui.event.WTableModelListener;
import org.adempiere.webui.panel.ADForm;
import org.adempiere.webui.panel.StatusBarPanel;
import org.adempiere.webui.session.SessionManager;
import org.adempiere.webui.util.ZKUpdateUtil;
import org.adempiere.webui.window.FDialog;
import org.adempierelbr.model.MLBRNFeEvent;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRPartnerDFe;
import org.adempierelbr.process.DownloadDFeXML;
import org.adempierelbr.process.GetDFe;
import org.adempierelbr.process.PrintFromXML;
import org.compiere.apps.IProcessParameter;
import org.compiere.model.MOrg;
import org.compiere.model.MQuery;
import org.compiere.model.MTable;
import org.compiere.model.X_T_Report;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.kenos.idempiere.lbr.nfe.process.CheckNSUSequence;
import org.zkoss.zk.au.out.AuEcho;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zk.ui.event.Events;
import org.zkoss.zk.ui.util.Clients;
import org.zkoss.zul.Borderlayout;
import org.zkoss.zul.Center;
import org.zkoss.zul.Div;
import org.zkoss.zul.Html;
import org.zkoss.zul.North;
import org.zkoss.zul.South;

/**
 * 		Nota Fiscal Panel
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 * 	@version $Id: WNotaFiscalForm.java, v1.0 2017/09/02 8:35:32 PM, ralexsander Exp $
 */
public class WNotaFiscalForm extends ADForm implements EventListener<Event>, WTableModelListener
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 4240430312911412710L;

	//	Form
	private NotaFiscal genForm;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(WNotaFiscalForm.class);
	
	//	Tabbed Panel
	private Tabbox tabbedPane = new Tabbox();
	
	//	North Panels
	private Grid selNorthPanelEmit = GridFactory.newGridLayout();
	private Grid selNorthPanelRec = GridFactory.newGridLayout();
	private Grid selNorthPanelInut = GridFactory.newGridLayout();
	
	//	Confirm Panels
	private ConfirmPanel confirmPanelEmit = new ConfirmPanel(true, true, false, false, false, true);
	private ConfirmPanel confirmPanelRec = new ConfirmPanel(true, true, false, false, false, true);
	private ConfirmPanel confirmPanelInut = new ConfirmPanel(true, true, false, false, false, false);

	//	Tables
	private WListbox miniTableEmit = ListboxFactory.newDataTable();
	private WListbox miniTableRec = ListboxFactory.newDataTable();
	private WListbox miniTableInut = ListboxFactory.newDataTable();
	
	//	Additional buttons
	private Button printEmitButton = new ConfirmPanel().createButton("Print");
	private Button printRecButton = new ConfirmPanel().createButton("Print");
	private Button downloadButton = new ConfirmPanel().createButton("MoveDown");
	private Button getDFeButton = new ConfirmPanel().createButton("Reset");
	private Button checkNSUButton = new ConfirmPanel().createButton("Report");

	//	Panels
	private Borderlayout nfeEmitPanel = new Borderlayout();
	private Borderlayout nfeRecPanel = new Borderlayout();
	private Borderlayout nfeInutPanel = new Borderlayout();
	private StatusBarPanel statusBar = new StatusBarPanel();
	private Html info = new Html();
	private BusyDialog progressWindow;
	private Div messageDiv;

	public WNotaFiscalForm(NotaFiscal genForm)
	{
		log.info("");
		this.genForm = genForm;
	}	//	WNotaFiscalForm
	
	@Override
	protected void initForm() 
	{
		try
		{
			zkInit();
			dynInit();
			Borderlayout contentPane = new Borderlayout();
			this.appendChild(contentPane);
			ZKUpdateUtil.setWidth(contentPane, "99%");
			ZKUpdateUtil.setHeight(contentPane, "100%");
			Center center = new Center();
			center.setStyle("border: none");
			contentPane.appendChild(center);
			center.appendChild(tabbedPane);
			ZKUpdateUtil.setVflex(tabbedPane, "1");
			ZKUpdateUtil.setHflex(tabbedPane, "1");
			South south = new South();
			south.setStyle("border: none");
			contentPane.appendChild(south);
			south.appendChild(statusBar);
			LayoutUtils.addSclass("status-border", statusBar);
			ZKUpdateUtil.setHeight(south, "22px");			
		}
		catch(Exception ex)
		{
			log.log(Level.SEVERE, "init", ex);
		}
	}	//	init
	
	/**
	 *	Static Init.
	 *  <pre>
	 *  nfeEmitPanel (tabbed)
	 *      fOrg, fBPartner
	 *      scrollPane & miniTableEmit
	 *  nfeRecPanel
	 *      info
	 *  </pre>
	 *  @throws Exception
	 */
	void zkInit() throws Exception
	{
		confirmPanelEmit.addComponentsLeft(printEmitButton);
		printEmitButton.addActionListener(this);
		//
		confirmPanelRec.addComponentsLeft(printRecButton);
		confirmPanelRec.addComponentsLeft(downloadButton);
		confirmPanelRec.addComponentsLeft(getDFeButton);
		confirmPanelRec.addComponentsLeft(checkNSUButton);
		printRecButton.addActionListener(this);
		getDFeButton.addActionListener(this);
		getDFeButton.setTooltiptext("Obter documentos fiscais na SeFaz");
		
		downloadButton.addActionListener(this);
		downloadButton.setTooltiptext("Download");
		//
		ZKUpdateUtil.setWidth(nfeEmitPanel, "100%");
		ZKUpdateUtil.setHeight(nfeEmitPanel, "100%");
		nfeEmitPanel.setStyle("border: none; position: relative");
		DesktopTabpanel tabpanel = new DesktopTabpanel();
		tabpanel.appendChild(nfeEmitPanel);
		Tabpanels tabPanels = new Tabpanels();
		tabPanels.appendChild(tabpanel);
		tabbedPane.appendChild(tabPanels);
		Tabs tabs = new Tabs();
		tabbedPane.appendChild(tabs);
		Tab tab = new Tab(Msg.getMsg(Env.getCtx(), "Notas Fiscais Emitidas"));
		tabs.appendChild(tab);
		
		North north = new North();
		nfeEmitPanel.appendChild(north);
		north.appendChild(selNorthPanelEmit);
		north.setCollapsible(true);
		north.setSplittable(true);
		LayoutUtils.addSlideSclass(north);
		
		South south = new South();
		nfeEmitPanel.appendChild(south);
		south.appendChild(confirmPanelEmit);
		
		Center center = new Center();
		nfeEmitPanel.appendChild(center);
		center.appendChild(miniTableEmit);
		ZKUpdateUtil.setVflex(miniTableEmit, "1");
		ZKUpdateUtil.setHflex(miniTableEmit, "1");
		confirmPanelEmit.addActionListener(this);
		//
		tabpanel = new DesktopTabpanel();
		tabPanels.appendChild(tabpanel);
		tabpanel.appendChild(nfeRecPanel);
		
		north = new North();
		nfeRecPanel.appendChild(north);
		north.appendChild(selNorthPanelRec);
		north.setCollapsible(true);
		north.setSplittable(true);
		LayoutUtils.addSlideSclass(north);
		
		tab = new Tab(Msg.getMsg(Env.getCtx(), "Notas Fiscais Recebidas"));
		tabs.appendChild(tab);
		ZKUpdateUtil.setWidth(nfeRecPanel, "100%");
		ZKUpdateUtil.setHeight(nfeRecPanel, "100%");
		nfeRecPanel.setStyle("border: none; position: relative");
		center = new Center();
		nfeRecPanel.appendChild(center);
		messageDiv = new Div();
		messageDiv.appendChild(info);
		center.appendChild(miniTableRec);
		south = new South();
		nfeRecPanel.appendChild(south);
		south.appendChild(confirmPanelRec);
		confirmPanelRec.addActionListener(this);	
		//
		tabpanel = new DesktopTabpanel();
		tabPanels.appendChild(tabpanel);
		tabpanel.appendChild(nfeInutPanel);
		
		north = new North();
		nfeInutPanel.appendChild(north);
		north.appendChild(selNorthPanelInut);
		north.setCollapsible(true);
		north.setSplittable(true);
		LayoutUtils.addSlideSclass(north);
		
		tab = new Tab(Msg.getMsg(Env.getCtx(), "Notas Fiscais Inutilizadas"));
		tabs.appendChild(tab);
		ZKUpdateUtil.setWidth(nfeInutPanel, "100%");
		ZKUpdateUtil.setHeight(nfeInutPanel, "100%");
		nfeInutPanel.setStyle("border: none; position: relative");
		center = new Center();
		nfeInutPanel.appendChild(center);
		messageDiv = new Div();
		messageDiv.appendChild(info);
		center.appendChild(miniTableInut);
		south = new South();
		nfeInutPanel.appendChild(south);
		south.appendChild(confirmPanelInut);
		confirmPanelInut.addActionListener(this);
	}	//	jbInit

	/**
	 *	Dynamic Init.
	 *	- Create GridController & Panel
	 *	- AD_Column_ID from C_Order
	 */
	public void dynInit()
	{
		genForm.configureMiniTable(miniTableEmit);
		miniTableEmit.getModel().addTableModelListener(this);
		
		genForm.configureMiniTableRec(miniTableRec);
		miniTableEmit.getModel().addTableModelListener(this);
		
		genForm.configureMiniTableInut(miniTableInut);
		miniTableEmit.getModel().addTableModelListener(this);
		
		//	Info
		statusBar.setStatusDB(" ");
		//	Tabbed Pane Listener
		tabbedPane.addEventListener(Events.ON_SELECT, this);
	}	//	dynInit

	public void postQueryEvent() 
    {
		Clients.showBusy(Msg.getMsg(Env.getCtx(), "Processing"));
    	Events.echoEvent("onExecuteQuery", this, null);
    }
    
    /**
     * Dont call this directly, use internally to handle execute query event 
     */
    public void onExecuteQuery()
    {
    	try
    	{
    		genForm.executeQuery();
    	}
    	finally
    	{
    		Clients.clearBusy();
    	}
    }
    
	/**
	 *	Action Listener
	 *  @param e event
	 */
	public void onEvent(Event e) throws Exception
	{
		log.info("Cmd=" + e.getTarget());
		//
		if (e.getTarget().getId().equals(ConfirmPanel.A_CANCEL))
		{
			dispose();
			return;
		}
		
		else if (e.getTarget() == confirmPanelEmit.getButton(ConfirmPanel.A_ZOOM))
		{
			try
			{
				List<Integer> selection = genForm.getSelectedKeys(miniTableEmit);
				if (selection == null || selection.size() == 0)
					return;
				
				//	Generate where
				String where = "LBR_NotaFiscal_ID IN (";
				for (Integer LBR_NotaFiscal_ID : selection)
				{
					where += LBR_NotaFiscal_ID + ", ";
				}
				where += "0)";
				
				int count = DB.getSQLValue(null, "SELECT COUNT('1') FROM LBR_NotaFiscal WHERE IsSOTrx='Y' AND " + where);
				
				//	Open NF Out
				if (count > 0)
				{
					//	Query
					MQuery query = new MQuery(MLBRNotaFiscal.Table_Name);
					query.addRestriction(where);
					
					AEnv.zoom (1000015, query);
				}
				
				count = DB.getSQLValue(null, "SELECT COUNT('1') FROM LBR_NotaFiscal WHERE IsSOTrx='N' AND " + where);
				
				//	Open NF In
				if (count > 0)
				{
					//	Query
					MQuery query = new MQuery(MLBRNotaFiscal.Table_Name);
					query.addRestriction(where);
					
					AEnv.zoom (1000019, query);
				}
			}
			catch (Exception ex)
			{
				FDialog.error(m_WindowNo, this, "Error", ex.getLocalizedMessage());
			}
		}
		
		else if (e.getTarget() == confirmPanelRec.getButton(ConfirmPanel.A_ZOOM))
		{
			try
			{				
				List<Integer> selection = genForm.getSelectedKeys(miniTableRec);
				if (selection == null || selection.size() == 0)
					return;
				
				//	Generate where
				String where = "LBR_PartnerDFe_ID IN (";
				for (Integer LBR_PartnerDFe_ID : selection)
				{
					where += LBR_PartnerDFe_ID + ", ";
				}
				where += "0)";
				
				//	Query
				MQuery query = new MQuery(MLBRPartnerDFe.Table_Name);
				query.addRestriction(where);
				
				AEnv.zoom(MTable.get(Env.getCtx(), MLBRPartnerDFe.Table_Name).getAD_Window_ID(), query);
			}
			catch (Exception ex)
			{
				FDialog.error(m_WindowNo, this, "Error", ex.getLocalizedMessage());
			}
		}
		
		else if (e.getTarget() == getDFeButton)
		{
			ProcessInfoParameter pip = new ProcessInfoParameter (MOrg.COLUMNNAME_AD_Org_ID, genForm.m_AD_Org_ID, null, null, null);
			//	Get DFe
			ProcessInfo pi = startProcess(GetDFe.AD_Process_ID, genForm.getTitle(), m_WindowNo, new ProcessInfoParameter[]{pip});
			statusBar.setStatusLine(pi.getSummary(), pi.isError());
			
			genForm.executeQuery();
		}
		
		else if (e.getTarget() == checkNSUButton)
		{
			//	OK to print
			FDialog.ask (getWindowNo(), this, "Tentar corrigir NSU faltantes?", new Callback<Boolean>() {
				
				@Override
				public void onCallback(Boolean result) 
				{
					//	Get DFe
					ProcessInfo pi = startProcess(CheckNSUSequence.AD_Process_ID, genForm.getTitle(), m_WindowNo, new ProcessInfoParameter[]{
							new ProcessInfoParameter (MOrg.COLUMNNAME_AD_Org_ID, genForm.m_AD_Org_ID, null, null, null),
							new ProcessInfoParameter ("LBR_FixMissingNSU", Boolean.TRUE.equals(result), null, null, null)
					});
					
					String title = "Checagem do NSU";
					String summary = pi.getSummary();
					
					//	Only show dialog when trying to fix NSU
					if (result)
					{
						if (pi.isError())
							FDialog.error(getWindowNo(), getStatusBar().getParent(), title, summary);
						else
							FDialog.info(getWindowNo(), getStatusBar().getParent(), title, summary);
					}
					//
					statusBar.setStatusLine(summary, pi.isError());
				}
			});
			
			genForm.executeQuery();
		}
		
		else if (e.getTarget() == confirmPanelRec.getButton(ConfirmPanel.A_REFRESH))
		{
			genForm.executeQuery();
		}
		
		else if (e.getTarget() == printEmitButton)
		{
			List<Integer> keys = genForm.getSelectedKeys(miniTableEmit);
			if (keys.size() == 1)
			{
				//	Print From XML
				ProcessInfo pi = startProcess(PrintFromXML.AD_Process_ID, genForm.getTitle(), m_WindowNo, MLBRNotaFiscal.Table_ID, keys.get(0), null);
				statusBar.setStatusLine(pi.getSummary(), pi.isError());
			}
			else if (keys.size() > 1)
			{
				String uuid = UUID.randomUUID().toString().substring(0, 30);
				
				//	Populate IDs
				for (Integer key : keys)
				{
					int updated = DB.executeUpdate ("UPDATE T_Selection SET ViewID=? WHERE AD_PInstance_ID=-1 AND T_Selection_ID=?", new Object[] {uuid, key}, true, null);
					if (updated <= 0)
						DB.executeUpdate ("INSERT INTO T_Selection VALUES (-1, ?, ?)", new Object[] {key, uuid}, true, null);
				}
				
				ProcessInfoParameter pip = new ProcessInfoParameter ("ViewID", uuid, null, null, null);
				ProcessInfo pi = startProcess(PrintFromXML.AD_Process_ID, genForm.getTitle(), m_WindowNo, X_T_Report.Table_ID, keys.get(0), new ProcessInfoParameter[] {pip});
				statusBar.setStatusLine(pi.getSummary(), pi.isError());
			}
			else
				return;
			
		}
		
		else if (e.getTarget() == printRecButton)
		{
			List<Integer> keys = genForm.getSelectedKeys(miniTableRec);
			if (keys.size() == 0)
				return;
			
			//	Print From XML
			ProcessInfo pi = startProcess(PrintFromXML.AD_Process_ID, genForm.getTitle(), m_WindowNo, MLBRPartnerDFe.Table_ID, keys.get(0), null);
			statusBar.setStatusLine(pi.getSummary(), pi.isError());
		}
		
		else if (e.getTarget() == downloadButton)
		{
			ProcessInfoParameter pip = new ProcessInfoParameter (MLBRPartnerDFe.COLUMNNAME_AD_Org_ID, genForm.m_AD_Org_ID, null, null, null);
			
			//	Download DF-e XML
			ProcessInfo pi = startProcess(DownloadDFeXML.AD_Process_ID, genForm.getTitle(), m_WindowNo, new ProcessInfoParameter[]{pip});
			statusBar.setStatusLine(pi.getSummary(), pi.isError());
			genForm.executeQuery();
		}
		
		else if (e.getTarget().getId().equals(ConfirmPanel.A_REFRESH))
		{
			genForm.executeQuery();
		}
		
		else if (e.getTarget() == confirmPanelEmit.getButton(ConfirmPanel.A_CUSTOMIZE))
		{
			genForm.selectAll(miniTableEmit);
		}
		
		else if (e.getTarget() == confirmPanelRec.getButton(ConfirmPanel.A_CUSTOMIZE))
		{
			genForm.selectAll(miniTableRec);
		}
		
		else if (e.getTarget() == confirmPanelRec.getOKButton())
		{
			if (MLBRNFeEvent.LBR_EVENTTYPE_OperacaoNaoRealizada.equals(genForm.m_LBR_EventType))
			{
				FDialog.warn(m_WindowNo, "LBR_ManifestOpNotCompleted");

				genForm.saveSelection(miniTableRec);
				List<Integer> selection = genForm.getSelection();
				if (selection == null || selection.size() == 0)
					return;
				
				//	Generate where
				String where = "LBR_PartnerDFe_ID IN (";
				for (Integer LBR_PartnerDFe_ID : selection)
				{
					where += LBR_PartnerDFe_ID + ", ";
				}
				where += "0)";
				
				//	Query
				MQuery query = new MQuery(MLBRPartnerDFe.Table_Name);
				query.addRestriction(where);
				
				AEnv.zoom(MTable.get(Env.getCtx(), MLBRPartnerDFe.Table_Name).getAD_Window_ID(), query);
				
				return;
			}
			
			try
			{
				genForm.saveSelection(miniTableRec);
				List<Integer> selection = genForm.getSelection();
				if (selection == null || selection.size() == 0)
					return;
				
				//	Generate where
				for (Integer LBR_PartnerDFe_ID : selection)
				{
					MLBRPartnerDFe dfe = new MLBRPartnerDFe (Env.getCtx(), LBR_PartnerDFe_ID, null);
					String lastManifest = dfe.getLastManifest();
					
					//	Já num estado de Manifestação Final, portanto ignorar
					if (dfe.isLBR_IsManifested()
							|| MLBRNFeEvent.LBR_EVENTTYPE_ConfirmacaoDaOperacao.equals(lastManifest) 
							|| MLBRNFeEvent.LBR_EVENTTYPE_OperacaoNaoRealizada.equals(lastManifest))
						continue;
					
					//	Estados imcompatíveis
					else if ((MLBRNFeEvent.LBR_EVENTTYPE_CienciaDaOperacao.equals(lastManifest) 
							&& MLBRNFeEvent.LBR_EVENTTYPE_DesconhecimentoDaOperacao.equals(genForm.m_LBR_EventType))
						|| (MLBRNFeEvent.LBR_EVENTTYPE_DesconhecimentoDaOperacao.equals(lastManifest) 
							&& MLBRNFeEvent.LBR_EVENTTYPE_CienciaDaOperacao.equals(genForm.m_LBR_EventType)))
						continue;
					
					ProcessInfoParameter pip = new ProcessInfoParameter (MLBRNFeEvent.COLUMNNAME_LBR_EventType, genForm.m_LBR_EventType, null, null, null); 
					//
					ProcessInfo pi = startProcess (1120161, genForm.getTitle(), m_WindowNo, MLBRPartnerDFe.Table_ID, LBR_PartnerDFe_ID, new ProcessInfoParameter[]{pip});
					statusBar.setStatusLine(pi.getSummary(), pi.isError());
				}
			}
			catch (Exception ex)
			{
				FDialog.error(m_WindowNo, this, "Error", ex.getLocalizedMessage());
			}
			
			genForm.executeQuery();
		}
	}	//	actionPerformed

	/**
	 *  Table Model Listener
	 *  @param e event
	 */
	public void tableChanged(WTableModelEvent e)
	{
	}   //  tableChanged

	/**
	 *	Save Selection & return selecion Query or ""
	 *  @return where clause like C_Order_ID IN (...)
	 */
	public void saveSelection()
	{
		genForm.saveSelection(miniTableEmit);
	}	//	saveSelection

	
	/**************************************************************************
	 *	Generate Shipments
	 */
	public void generate()
	{
		info.setContent(genForm.generate());		

		this.lockUI();
		Clients.response(new AuEcho(this, "runProcess", null));		
	}	//	generate

	/**************************************************************************
	 *  Lock User Interface.
	 *  Called from the Worker before processing
	 *  @param pi process info
	 */
	public void lockUI ()
	{
		progressWindow = new BusyDialog();
		progressWindow.setPage(this.getPage());
		progressWindow.doHighlighted();
	}   //  lockUI
	
	public void dispose()
	{
		SessionManager.getAppDesktop().closeActiveWindow();
	}
	
	public Grid getEmitParameterPanel()
	{
		return selNorthPanelEmit;
	}
	
	public Grid getRecParameterPanel()
	{
		return selNorthPanelRec;
	}
	
	public Grid getInutParameterPanel()
	{
		return selNorthPanelInut;
	}

	public WListbox getMiniTableEmit()
	{
		return miniTableEmit;
	}
	
	public WListbox getMiniTableRec()
	{
		return miniTableRec;
	}
	
	public WListbox getMiniTableInut()
	{
		return miniTableInut;
	}
	
	public StatusBarPanel getStatusBar()
	{
		return statusBar;
	}

	public ProcessInfo startProcess (int AD_Process_ID, String title, int windowNo, ProcessInfoParameter[] pips)
	{
		return startProcess(AD_Process_ID, title, windowNo, 0, 0, pips);
	}	//	startProcess
	
	public ProcessInfo startProcess (int AD_Process_ID, String title, int windowNo, int AD_Table_ID, int Record_ID, ProcessInfoParameter[] pips)
	{
		//  Prepare Process
		ProcessInfo pi = new ProcessInfo (title, AD_Process_ID, AD_Table_ID, Record_ID);
		pi.setAD_User_ID (Env.getAD_User_ID(Env.getCtx()));
		pi.setAD_Client_ID(Env.getAD_Client_ID(Env.getCtx()));
		
		ProcessParameterPanel pp = new ProcessParameterPanel(windowNo, pi);
		pi.setParameter(pips);
		
		//	Execute Process
		WProcessCtl.process (null, windowNo, (IProcessParameter) pp, pi, null);
		return pi;
	}	//	startProcess
}	//	WNotaFiscalForm
