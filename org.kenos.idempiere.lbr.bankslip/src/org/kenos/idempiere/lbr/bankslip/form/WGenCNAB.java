/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2011 Ricardo Santana                                         *
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
package org.kenos.idempiere.lbr.bankslip.form;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.Random;
import java.util.logging.Level;

import org.adempiere.pipo2.Zipper;
import org.adempiere.webui.ClientInfo;
import org.adempiere.webui.LayoutUtils;
import org.adempiere.webui.component.Button;
import org.adempiere.webui.component.Column;
import org.adempiere.webui.component.Columns;
import org.adempiere.webui.component.ConfirmPanel;
import org.adempiere.webui.component.Grid;
import org.adempiere.webui.component.GridFactory;
import org.adempiere.webui.component.Label;
import org.adempiere.webui.component.ListItem;
import org.adempiere.webui.component.Listbox;
import org.adempiere.webui.component.ListboxFactory;
import org.adempiere.webui.component.Panel;
import org.adempiere.webui.component.Row;
import org.adempiere.webui.component.Rows;
import org.adempiere.webui.component.WListbox;
import org.adempiere.webui.event.WTableModelEvent;
import org.adempiere.webui.event.WTableModelListener;
import org.adempiere.webui.panel.ADForm;
import org.adempiere.webui.panel.CustomForm;
import org.adempiere.webui.panel.IFormController;
import org.adempiere.webui.session.SessionManager;
import org.adempiere.webui.window.FDialog;
import org.adempierelbr.util.TextUtil;
import org.compiere.process.ProcessInfo;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;
import org.zkoss.zk.ui.Component;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zk.ui.util.Clients;
import org.zkoss.zul.Borderlayout;
import org.zkoss.zul.Center;
import org.zkoss.zul.North;
import org.zkoss.zul.Separator;
import org.zkoss.zul.South;

/**
 *  	Generate Bills for ZK interface
 *			
 *  @author Ricardo Santana (Kenos, www.kenos.com.br)
 *  @version $Id: WGenBilling.java, v1.0 2012/03/27 6:13:04 PM, ralexsander Exp $
 */

public class WGenCNAB extends GenCNAB
	implements IFormController, EventListener<Event>, WTableModelListener
{	
	private CustomForm form = new CustomForm();

	private Panel mainPanel = new Panel();
	private Borderlayout mainLayout = new Borderlayout();
	private Panel parameterPanel = new Panel();
	private Label labelOrg = new Label();
	private Listbox fieldOrg = ListboxFactory.newDropdownListbox();
	private Label labelBankAccount = new Label();
	private Listbox fieldBankAccount = ListboxFactory.newDropdownListbox();
	private Label labelBankContract = new Label();
	private Listbox fieldBankContract = ListboxFactory.newDropdownListbox();
	private Grid parameterLayout = GridFactory.newGridLayout();
	private Label dataStatus = new Label();
	private WListbox miniTable = ListboxFactory.newDataTable();
	private ConfirmPanel commandPanel = new ConfirmPanel(true, false, false, false, false, false, false);
	private Button bCancel = commandPanel.getButton(ConfirmPanel.A_CANCEL);
	private Button bGenerate = commandPanel.createButton(ConfirmPanel.A_EXPORT);
	private Button bRefresh = commandPanel.createButton(ConfirmPanel.A_REFRESH);
	private Panel southPanel;
	@SuppressWarnings("unused")
	private ProcessInfo m_pi;
	private boolean m_isLock;
	private int noOfColumn;
	
	/**
	 *	Initialize Panel
	 */
	public WGenCNAB()
	{
		try
		{
			zkInit();
			dynInit();
			loadTableInfo();
			southPanel.appendChild(new Separator());
			southPanel.appendChild(commandPanel);
		}
		catch(Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		
		ClientInfo.onClientInfo(form, this::onClientInfo);
	}	//	init

	/**
	 *  Static Init
	 *  @throws Exception
	 */
	private void zkInit() throws Exception
	{
		setupColumns();
		//
		form.appendChild(mainPanel);
		mainPanel.appendChild(mainLayout);
		mainPanel.setStyle("width: 100%; height: 100%; padding: 0; margin: 0");
		mainLayout.setHeight("100%");
		mainLayout.setWidth("99%");
		parameterPanel.appendChild(parameterLayout);
		//
		labelOrg.setText(Msg.translate(Env.getCtx(), "AD_Org_ID"));
		fieldOrg.addActionListener(this);
		labelBankAccount.setText(Msg.translate(Env.getCtx(), "C_BankAccount_ID"));
		fieldBankAccount.addActionListener(this);
		labelBankContract.setText(Msg.translate(Env.getCtx(), "LBR_BankSlipContract_ID"));
		fieldBankContract.addActionListener(this);
		bRefresh.addActionListener(this);
		dataStatus.setText(" ");
		dataStatus.setPre(true);
		//
		bGenerate.addActionListener(this);
		bCancel.addActionListener(this);
		//
		North north = new North();
		north.setStyle("border: none");
		mainLayout.appendChild(north);
		north.appendChild(parameterPanel);
		north.setCollapsible(true);
		north.setSplittable(true);
		LayoutUtils.addSlideSclass(north);
		
		Rows rows = parameterLayout.newRows();
		Row row = rows.newRow();
		row.appendChild(labelOrg.rightAlign());
		row.appendChild(fieldOrg);
		
		row = rows.newRow();
		row.appendChild(labelBankAccount.rightAlign());
		row.appendChild(fieldBankAccount);
		
		row = rows.newRow();
		row.appendChild(labelBankContract.rightAlign());
		row.appendChild(fieldBankContract);

		South south = new South();
		south.setStyle("border: none");
		mainLayout.appendChild(south);
		southPanel = new Panel();
		southPanel.appendChild(dataStatus);
		south.appendChild(southPanel);
		Center center = new Center();
		mainLayout.appendChild(center);
		center.appendChild(miniTable);
		//
		commandPanel.addButton(bRefresh);
		commandPanel.addButton(bGenerate);
		commandPanel.getButton(ConfirmPanel.A_OK).setVisible(false);
		
		if (noOfColumn < 6)
			LayoutUtils.compactTo(parameterLayout, noOfColumn);
		else
			LayoutUtils.expandTo(parameterLayout, noOfColumn, true);
	}   //  jbInit

	protected void setupColumns()
	{
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
			parameterLayout.appendChild(columns);
		}
	}

	/**
	 *  Dynamic Init.
	 *  - Load Bank Info
	 *  - Load BPartner
	 *  - Init Table
	 */
	private void dynInit()
	{
		//	Load Organizations
		ArrayList<KeyNamePair> orgs = getOrganization();
		for (KeyNamePair org : orgs)
			fieldOrg.appendItem(org.toString(), org);
		
		//	Check Selected Organization
		int AD_Org_ID = -1;
		if (fieldOrg.getSelectedItem() != null)
		{
			ListItem item = fieldOrg.getSelectedItem();
			KeyNamePair knp = item.getValue();
			AD_Org_ID = knp.getKey();
		}
		
		ArrayList<KeyNamePair> bankAccountData = getBankAccountData(AD_Org_ID);
		for (KeyNamePair bi : bankAccountData)
			fieldBankAccount.appendItem(bi.toString(), bi);
		
		//	Check Selected Organization
		int C_BankAccount_ID = -1;
		if (fieldBankAccount.getSelectedItem() != null)
		{
			ListItem item = fieldBankAccount.getSelectedItem();
			KeyNamePair knp = item.getValue();
			C_BankAccount_ID = knp.getKey();
		}
		
		ArrayList<KeyNamePair> bankContractData = getBankContractData(C_BankAccount_ID);
		for (KeyNamePair bc : bankContractData)
			fieldBankContract.appendItem(bc.toString(), bc);

		if (fieldBankAccount.getItemCount() == 0)
			FDialog.error(m_WindowNo, form, "VPaySelectNoBank");
		else
			fieldBankAccount.setSelectedIndex(0);
		
		prepareTable(miniTable);
		
		miniTable.getModel().addTableModelListener(this);
	}   //  dynInit

	/**
	 *  Query and create TableInfo
	 */
	private void loadTableInfo()
	{
		ListItem item = fieldBankContract.getSelectedItem();
		if (item == null)
			return;
		
		KeyNamePair bi = (KeyNamePair)item.getValue();
		
		loadTableInfo (bi.getKey(), miniTable);
		
		calculateSelection();
		
		if (ClientInfo.maxHeight(ClientInfo.SMALL_HEIGHT-1))
		{
			Component comp = parameterPanel.getParent();
			if (comp instanceof North)
				((North)comp).setOpen(false);
		}
	}   //  loadTableInfo

	/**
	 * 	Dispose
	 */
	public void dispose()
	{
		SessionManager.getAppDesktop().closeActiveWindow();
	}	//	dispose

	
	/**************************************************************************
	 *  ActionListener
	 *  @param e event
	 */
	public void onEvent (Event e)
	{
		//  Generate PaySelection
		if (e.getTarget() == bGenerate)
		{
			genCNAB ();
			loadTableInfo ();
		}

		else if (e.getTarget() == bCancel)
			dispose();

		else if (e.getTarget() == fieldOrg)
		{
			updateBankAccount();
			updateContract();
			loadTableInfo();
		}

		else if (e.getTarget() == fieldBankAccount)
		{
			updateContract();
			loadTableInfo();
		}
		
		//  Update Open Invoices
		else if (e.getTarget() == bRefresh || e.getTarget() == fieldBankContract)
			loadTableInfo();

	}   //  actionPerformed

	private void updateBankAccount() {
		KeyNamePair np = fieldOrg.getSelectedItem().getValue();
		fieldBankAccount.removeAllItems();
		//
		ArrayList<KeyNamePair> bankAccountData = getBankAccountData(np.getKey());
		for (KeyNamePair bi : bankAccountData)
			fieldBankAccount.appendItem(bi.toString(), bi);
	}

	private void updateContract() {
		KeyNamePair np = fieldBankAccount.getSelectedItem().getValue();
		fieldBankContract.removeAllItems();
		//
		ArrayList<KeyNamePair> bankContractData = getBankContractData(np.getKey());
		for (KeyNamePair bc : bankContractData)
			fieldBankContract.appendItem(bc.toString(), bc);
	}

	/**
	 *  Table Model Listener
	 *  @param e event
	 */
	public void tableChanged(WTableModelEvent e)
	{
		if (e.getColumn() == 0)
			calculateSelection();
	}   //  valueChanged

	/**
	 *  Calculate selected rows.
	 *  - add up selected rows
	 */
	public void calculateSelection()
	{
		dataStatus.setText(calculateSelection(miniTable));
		//
		bGenerate.setEnabled(m_noSelected != 0);
	}   //  calculateSelection
	
	/**
	 *  Print Billing
	 */
	private void genCNAB ()
	{
		if (miniTable.getRowCount() == 0)
			return;
		miniTable.setSelectedIndices(new int[]{0});
		calculateSelection();
		if (m_noSelected == 0)
			return;
		
		String filePath = System.getProperty("java.io.tmpdir") + File.separator + "CNAB_" + TextUtil.timeToString(new Date(), "yyyyMMdd") + "_" + new Random ().nextInt (99999999);
		File folder = new File (filePath);
		if (!folder.exists())
			folder.mkdirs();
		//
		deleteDir(folder);
		
		genCNAB (miniTable, (KeyNamePair) fieldBankAccount.getSelectedItem().getValue(), (KeyNamePair) fieldBankContract.getSelectedItem().getValue());
		
		File zipFile = new File(folder + ".zip");
		if (zipFile.exists())
			zipFile.delete();
		//
		Zipper.zipFolder (folder, zipFile, "**");
		
		try
		{
//			AMedia media = new AMedia(zipFile.getName(), null, null, FileUtils.readFileToByteArray(zipFile));
//			Filedownload.save(media);
		}
		catch (Exception e)
		{
			FDialog.error(m_WindowNo, form, "SaveError", "Erro ao exportar o arquivo");
		}
	}   //  exportBilling
	
	/**
	 *  Lock User Interface
	 *  Called from the Worker before processing
	 */
	public void lockUI (ProcessInfo pi)
	{
		if (m_isLock) return;
		m_isLock = true;
		Clients.showBusy(null);
	}   //  lockUI

	/**
	 *  Unlock User Interface.
	 *  Called from the Worker when processing is done
	 */
	public void unlockUI (ProcessInfo pi)
	{
		if (!m_isLock) return;
		m_isLock = false;
		m_pi = pi;
		Clients.clearBusy();	

		this.dispose();
	}	//	unlockUI

	/**
	 * 	Execute ASync
	 */
	public void executeASync (ProcessInfo pi) 
	{
	}	//	executeASync

	/**
	 * 	Check if User Interface is Unlocked
	 */
	public boolean isUILocked () 
	{
		return m_isLock;
	}	//	isUILocked

	/**
	 * 	Return AD Form for ZK
	 */
	public ADForm getForm () 
	{
		return form;
	}	//	getForm

	protected void onClientInfo()
	{
		if (ClientInfo.isMobile() && form.getPage() != null) 
		{
			if (noOfColumn > 0 && parameterLayout.getRows() != null)
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
					parameterLayout.getRows().detach();
					if (parameterLayout.getColumns() != null)
						parameterLayout.getColumns().detach();
					try
					{
						zkInit();
						form.invalidate();
					}
					catch (Exception e1) {}
				}
			}
		}
	}
}   //  WGenBilling
