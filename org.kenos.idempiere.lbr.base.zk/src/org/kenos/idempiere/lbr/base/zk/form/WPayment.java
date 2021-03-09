/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2006 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 * Contributors:                                                              *
 * Colin Rooney (croo) Patch 1605368 Fixed Payment Terms & Only due           *
 *****************************************************************************/
package org.kenos.idempiere.lbr.base.zk.form;

import java.io.File;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.TimeZone;
import java.util.logging.Level;

import org.adempiere.util.Callback;
import org.adempiere.util.IProcessUI;
import org.adempiere.webui.ClientInfo;
import org.adempiere.webui.LayoutUtils;
import org.adempiere.webui.component.Button;
import org.adempiere.webui.component.Checkbox;
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
import org.adempiere.webui.editor.WDateEditor;
import org.adempiere.webui.editor.WSearchEditor;
import org.adempiere.webui.event.DialogEvents;
import org.adempiere.webui.event.ValueChangeEvent;
import org.adempiere.webui.event.ValueChangeListener;
import org.adempiere.webui.event.WTableModelEvent;
import org.adempiere.webui.event.WTableModelListener;
import org.adempiere.webui.panel.ADForm;
import org.adempiere.webui.panel.CustomForm;
import org.adempiere.webui.panel.IFormController;
import org.adempiere.webui.session.SessionManager;
import org.adempiere.webui.util.ZKUpdateUtil;
import org.adempiere.webui.window.FDialog;
import org.compiere.model.MDocType;
import org.compiere.model.MLookup;
import org.compiere.model.MLookupFactory;
import org.compiere.process.ProcessInfo;
import org.compiere.util.DB;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;
import org.compiere.util.ValueNamePair;
import org.kenos.idempiere.lbr.base.form.Payment;
import org.zkoss.zk.ui.Component;
import org.zkoss.zk.ui.Executions;
import org.zkoss.zk.ui.WrongValueException;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zk.ui.util.Clients;
import org.zkoss.zul.Borderlayout;
import org.zkoss.zul.Cell;
import org.zkoss.zul.Center;
import org.zkoss.zul.North;
import org.zkoss.zul.Separator;
import org.zkoss.zul.South;

/**
 *  Create Manual Payments From (AP) Invoices or (AR) Credit Memos.
 *  Allows user to select Invoices for payment.
 *  When Processed, PaySelection is created
 *  and optionally posted/generated and printed
 *
 *  @author Jorg Janke
 *  @version $Id: VPaySelect.java,v 1.3 2006/07/30 00:51:28 jjanke Exp $
 */
public class WPayment extends Payment
	implements IFormController, EventListener<Event>, WTableModelListener, IProcessUI, ValueChangeListener
{	
	private CustomForm form = new CustomForm();

	//
	private Panel mainPanel = new Panel();
	private Borderlayout mainLayout = new Borderlayout();
	private Panel parameterPanel = new Panel();
	private Label labelOrg = new Label();
	private Listbox fieldOrg = ListboxFactory.newDropdownListbox();
	private Label labelBankAccount = new Label();
	private Listbox fieldBankAccount = ListboxFactory.newDropdownListbox();
	private Grid parameterLayout = GridFactory.newGridLayout();
	private Label labelBankBalance = new Label();
	private Label labelCurrency = new Label();
	private Label labelBalance = new Label();
	private Checkbox onlyDue = new Checkbox();
	private Label labelBPartner = new Label();
	private WSearchEditor fieldBPartner = null;
	private Label dataStatus = new Label();
	private WListbox miniTable = ListboxFactory.newDataTable();
	private ConfirmPanel commandPanel = new ConfirmPanel(true, false, false, false, false, false, false);
	private Button bCancel = commandPanel.getButton(ConfirmPanel.A_CANCEL);
	private Button bGenerate = commandPanel.createButton(ConfirmPanel.A_PROCESS);
	private Button bRefresh = commandPanel.createButton(ConfirmPanel.A_REFRESH);
	private Label labelDueDate1 = new Label();
	private Label labelDueDate2 = new Label();
	private Label labelPayDate = new Label();
	private WDateEditor fieldDueDate1 = new WDateEditor();
	private WDateEditor fieldDueDate2 = new WDateEditor();
	private WDateEditor fieldPayDate = new WDateEditor();
	private Label labelPaymentRule = new Label();
	private Listbox fieldPaymentRule = ListboxFactory.newDropdownListbox();
	private Label labelDtype = new Label();
	private Listbox fieldDtype = ListboxFactory.newDropdownListbox();
	private Panel southPanel;
	@SuppressWarnings("unused")
	private ProcessInfo m_pi;
	private boolean m_isLock;
	private int noOfColumn;

	private static final String HISTORY_LABEL= "History";
	private Listbox historyCombo = ListboxFactory.newDropdownListbox();
	
	// values and label for history combo
	private static final String HISTORY_DAY_ALL = "All";
	private static final String HISTORY_DAY_YEAR = "Year";
	private static final String HISTORY_DAY_MONTH = "Month";
	private static final String HISTORY_DAY_WEEK = "Week";
	private static final String HISTORY_DAY_DAY = "Day";
	ValueNamePair[] historyItems = new ValueNamePair[] {
			new ValueNamePair("",                " "),
			new ValueNamePair(HISTORY_DAY_ALL,   Msg.getMsg(Env.getCtx(), HISTORY_DAY_ALL)),
			new ValueNamePair(HISTORY_DAY_YEAR,  Msg.getMsg(Env.getCtx(), HISTORY_DAY_YEAR)),
			new ValueNamePair(HISTORY_DAY_MONTH, Msg.getMsg(Env.getCtx(), HISTORY_DAY_MONTH)),
			new ValueNamePair(HISTORY_DAY_WEEK,  Msg.getMsg(Env.getCtx(), HISTORY_DAY_WEEK)),
			new ValueNamePair(HISTORY_DAY_DAY,   Msg.getMsg(Env.getCtx(), HISTORY_DAY_DAY))
	};
	
	private Listbox typeCombo = ListboxFactory.newDropdownListbox();

	/**
	 *	Initialize Panel
	 */
	public WPayment()
	{
		try
		{
			m_WindowNo = form.getWindowNo();
			m_AD_Client_ID = Env.getAD_Client_ID(Env.getCtx());
			
			dynInit();
			zkInit();
			
			loadBankInfo();
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
		ZKUpdateUtil.setHeight(mainLayout, "100%");
		ZKUpdateUtil.setWidth(mainLayout, "100%");
		parameterPanel.appendChild(parameterLayout);

        // adding history combo
        prepareHistoryCombo();
        Label labelHistory = new Label(Msg.getMsg(Env.getCtx(), HISTORY_LABEL));
        Label labelType = new Label(Msg.getMsg(Env.getCtx(), "Type"));
        if (ClientInfo.maxWidth(639))
        {
        	labelHistory.setStyle("vertical-align: middle; display: block;padding-left: 4px; padding-top: 4px;");
        	labelType.setStyle("vertical-align: middle; display: block;padding-left: 4px; padding-top: 4px;");
        }
        else
        {
        	labelHistory.setStyle("vertical-align: middle;");
        	labelType.setStyle("vertical-align: middle;");
        }
        
        //	Tipo de Documento
        typeCombo.setId("typeCombo");
        typeCombo.appendItem("Fatura", "I");
        typeCombo.appendItem("Pedido", "O");
        typeCombo.setSelectedIndex(0);
    	typeCombo.addActionListener(this);
    	
		//
		labelOrg.setText(Msg.translate(Env.getCtx(), "AD_Org_ID"));
		fieldOrg.addActionListener(this);
		labelBankAccount.setText(Msg.translate(Env.getCtx(), "C_BankAccount_ID"));
		fieldBankAccount.addActionListener(this);
		labelBPartner.setText(Msg.translate(Env.getCtx(), "C_BPartner_ID"));
		fieldBPartner.addValueChangeListener(this);
		bRefresh.addActionListener(this);
		labelDueDate1.setText(Msg.translate(Env.getCtx(), "DueDate"));
		labelDueDate2.setText(Msg.translate(Env.getCtx(), "To"));
		labelPayDate.setText(Msg.translate(Env.getCtx(), "PayDate"));
		labelPaymentRule.setText(Msg.translate(Env.getCtx(), "PaymentRule"));
		labelDtype.setText(Msg.translate(Env.getCtx(), "C_DocType_ID"));
		fieldDtype.addActionListener(this);
		//
		labelBankBalance.setText(Msg.translate(Env.getCtx(), "CurrentBalance"));
		labelBalance.setText("0");
		onlyDue.setText(Msg.getMsg(Env.getCtx(), "OnlyDue"));
		dataStatus.setText(" ");
		dataStatus.setPre(true);
		onlyDue.addActionListener(this);
		fieldPayDate.addValueChangeListener(this);
		
		TimeZone tz = TimeZone.getTimeZone("GMT-3:00");
		fieldPayDate.getComponent().setTimeZone(tz);
		fieldDueDate1.getComponent().setTimeZone(tz);
		fieldDueDate2.getComponent().setTimeZone(tz);
		
		//IDEMPIERE-2657, pritesh shah
		bGenerate.setEnabled(false);
		bGenerate.addActionListener(this);
		bCancel.addActionListener(this);
		//
		North north = new North();
		north.setBorder ("none");
		mainLayout.appendChild(north);
		north.appendChild(parameterPanel);
		north.setCollapsible(true);
		north.setSplittable(true);
		LayoutUtils.addSlideSclass(north);
		
		Rows rows = parameterLayout.newRows();
		Row row = rows.newRow();
		row.appendCellChild(labelHistory.rightAlign());
		row.appendCellChild(historyCombo);
		row.appendCellChild(labelType.rightAlign());
		row.appendCellChild(typeCombo);
		
		row = rows.newRow();
		row.appendCellChild(labelOrg.rightAlign());
		row.appendCellChild(fieldOrg);
		row.appendCellChild(labelBankAccount.rightAlign());
		row.appendCellChild(fieldBankAccount);
		
		row = rows.newRow();
		row.appendCellChild(labelBPartner.rightAlign());
		row.appendCellChild(fieldBPartner.getComponent(), 2);
		row.appendCellChild(onlyDue);
		
		row = rows.newRow();
		row.appendCellChild(labelDtype.rightAlign());
		row.appendCellChild(fieldDtype);
		
		row = rows.newRow();
		row.appendCellChild(labelDueDate1.rightAlign());
		row.appendCellChild(fieldDueDate1.getComponent());
//		row.appendCellChild(labelDueDate2.rightAlign());
		row.appendCellChild(fieldDueDate2.getComponent());
		
		row = rows.newRow();
		row.appendCellChild(labelPayDate.rightAlign());
		row.appendCellChild(fieldPayDate.getComponent());
		//row.appendCellChild(labelPaymentRule.rightAlign());
		row.appendCellChild(fieldPaymentRule);
		row.appendCellChild(bRefresh);

		South south = new South();
		south.setBorder ("none");
		mainLayout.appendChild(south);
		southPanel = new Panel();
		southPanel.appendChild(dataStatus);
		south.appendChild(southPanel);
		Center center = new Center();
		mainLayout.appendChild(center);
		center.appendChild(miniTable);
		//
		commandPanel.addButton(bGenerate);
		commandPanel.getButton(ConfirmPanel.A_OK).setVisible(false);
		
		if (noOfColumn < 6)
			LayoutUtils.compactTo(parameterLayout, noOfColumn);
		else
			LayoutUtils.expandTo(parameterLayout, noOfColumn, true);
	}   //  jbInit

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
		ArrayList<KeyNamePair> orgData = getOrgData();
		for(KeyNamePair np : orgData)
			fieldOrg.appendItem(np.toString(), np);
		if (fieldOrg.getItemCount() == 0)
			FDialog.error(m_WindowNo, form, "VPaySelectNoBank");
		else
			fieldOrg.setSelectedIndex(0);
		
		MLookup bpL = MLookupFactory.get (Env.getCtx(), form.getWindowNo(), 0, 2762, DisplayType.Search);
		fieldBPartner = new WSearchEditor ("C_BPartner_ID", false, false, true, bpL);

		ArrayList<KeyNamePair> docTypeData = getDocTypeData();
		for(KeyNamePair pp : docTypeData)
			fieldDtype.appendItem(pp.getName(), pp);
		
		prepareTable(miniTable);
		prepareTableOrder(miniTable);
		
		miniTable.getModel().addTableModelListener(this);
		//
		fieldPayDate.setMandatory(true);
		fieldPayDate.setValue(new Timestamp(System.currentTimeMillis()));
	}   //  dynInit

	/**
	 *  Load Bank Info - Load Info from Bank Account and valid Documents (PaymentRule)
	 */
	private void loadBankInfo()
	{		
		if (fieldBankAccount.getSelectedItem() == null)
			return;
		BankInfo bi = (BankInfo)fieldBankAccount.getSelectedItem().getValue();
		if (bi == null)
			return;
		labelCurrency.setText(bi.Currency);
		labelBalance.setText(m_format.format(bi.Balance));

		//  PaymentRule
		fieldPaymentRule.removeAllItems();
		
		ArrayList<ValueNamePair> paymentRuleData = getPaymentRuleData(bi);
		for(ValueNamePair vp : paymentRuleData)
			fieldPaymentRule.appendItem(vp.getName(), vp);
		fieldPaymentRule.setSelectedIndex(0);
	}   //  loadBankInfo

	/**
	 *  Query and create TableInfo
	 */
	private void loadTableInfo()
	{
		Timestamp payDate = (Timestamp)fieldPayDate.getValue();
		
		//IDEMPIERE-2657, pritesh shah
		if(payDate == null){
			throw new WrongValueException(fieldPayDate.getComponent(), Msg.getMsg(Env.getCtx(), "FillMandatory") + labelPayDate.getValue());
		}
		miniTable.setColorCompare(payDate);
		if (log.isLoggable(Level.CONFIG)) log.config("PayDate=" + payDate);
		
		if (fieldBankAccount.getSelectedItem() == null)
		{
			FDialog.error(m_WindowNo, form, "Sem conta bancária para a Organização");
			return;
		}
		
		BankInfo bi = (BankInfo)fieldBankAccount.getSelectedItem().getValue();
		
		if (fieldPaymentRule.getSelectedItem() == null)
		{
			FDialog.error(m_WindowNo, form, "Sem Regra de Pagamento");
			return;
		}
		
		ValueNamePair paymentRule = (ValueNamePair) fieldPaymentRule.getSelectedItem().getValue();
		Integer bpartner = (Integer) fieldBPartner.getValue();
		KeyNamePair docType = (KeyNamePair) fieldDtype.getSelectedItem().getValue();
		String historic = "";
		String type = typeCombo.getSelectedItem().getValue();
		
		if (fieldDueDate1.getValue() != null)
			historic = "TRUNC (i.DueDate) >= " + DB.TO_DATE ((Timestamp) fieldDueDate1.getValue());
		
		if (fieldDueDate2.getValue() != null)
		{
			if (!historic.isBlank())
				historic += " AND ";
			historic += "TRUNC (i.DueDate) <= " + DB.TO_DATE ((Timestamp) fieldDueDate2.getValue());
		}
		
		if (historic.isBlank() && historyCombo.getSelectedItem() != null)
			historic = addHistoryRestriction(historyCombo.getSelectedItem());
		
		loadTableInfo(bi, payDate, paymentRule, onlyDue.isSelected(), bpartner, docType, historic, type, miniTable);
		
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
		// If change DType, Reload Business Partner List
		if (e.getTarget() == fieldDtype)
		{	
			KeyNamePair docType = (KeyNamePair) fieldDtype.getSelectedItem().getValue();
			int C_DocType_ID = docType.getKey();
			
			MDocType dt = new MDocType (Env.getCtx(), C_DocType_ID, null);
			
			if (MDocType.DOCBASETYPE_APPayment.equals(dt.getDocBaseType()))
				m_IsSOTrx = false;
			else if (MDocType.DOCBASETYPE_ARReceipt.equals(dt.getDocBaseType()))
				m_IsSOTrx = true;
		}
		
		else if (e.getTarget() == fieldOrg)
		{
			KeyNamePair kn = (KeyNamePair) fieldOrg.getValue();
			ArrayList<BankInfo> bankAccountData = getBankAccountData(kn != null ? kn.getKey() : 0);
			fieldBankAccount.removeAllItems();
			//
			for(BankInfo bi : bankAccountData)
				fieldBankAccount.appendItem(bi.toString(), bi);

			if (fieldBankAccount.getItemCount() == 0)
				FDialog.error(m_WindowNo, form, "VPaySelectNoBank");
			else
				fieldBankAccount.setSelectedIndex(0);
			
			loadBankInfo();
		}
		
		//  Generate PaySelection
		if (e.getTarget() == bGenerate)
		{
			generatePaySelect();
			loadTableInfo();
		}

		else if (e.getTarget() == bCancel)
			dispose();

		//  Update Open Invoices
		else if (e.getTarget() == bRefresh || e.getTarget() == fieldDtype
				|| e.getTarget() == fieldPaymentRule || e.getTarget() == onlyDue || e.getTarget() == fieldBankAccount 
				|| e.getTarget() == historyCombo || e.getTarget() == typeCombo)
			loadTableInfo();

		else if (DialogEvents.ON_WINDOW_CLOSE.equals(e.getName())) {

			
		}
	}   //  actionPerformed

	@Override
	public void valueChange(ValueChangeEvent e) {
		if (e.getSource() == fieldBPartner || e.getSource() == fieldPayDate)
			loadTableInfo();
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
	 *  Generate PaySelection
	 */
	private void generatePaySelect()
	{
		if (miniTable.getRowCount() == 0)
			return;
		miniTable.setSelectedIndices(new int[]{0});
		calculateSelection();
		if (m_noSelected == 0)
			return;

		String msg = generatePayment (miniTable, (ValueNamePair) fieldPaymentRule.getSelectedItem().getValue(), 
				new Timestamp(fieldPayDate.getComponent().getValue().getTime()), typeCombo.getSelectedItem().getValue(), 
				(BankInfo)fieldBankAccount.getSelectedItem().getValue());
		
		if(msg != null && msg.length() > 0)		
		{
			FDialog.error(m_WindowNo, form, "SaveError", msg);
			return;
		}
	}   //  generatePaySelect
	
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
	}

	@Override
	public void statusUpdate(String message) {
	}

	@Override
	public void ask(final String message, final Callback<Boolean> callback) {
		Executions.schedule(form.getDesktop(), new EventListener<Event>() {
			@Override
			public void onEvent(Event event) throws Exception {
				FDialog.ask(m_WindowNo, null, message, callback);
			}
		}, new Event("onAsk"));		
	}

	@Override
	public void download(File file) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void askForInput(final String message, final Callback<String> callback) {
		Executions.schedule(form.getDesktop(), new EventListener<Event>() {
			@Override
			public void onEvent(Event event) throws Exception {
				FDialog.askForInput(m_WindowNo, null, message, callback);
			}
		}, new Event("onAskForInput"));
	}

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
    
    /**
     * preparing combo of history
     */
    private void prepareHistoryCombo()
    {
    	historyCombo.setId("historyCombo");
    	for (ValueNamePair vnp : historyItems) {
        	historyCombo.appendItem(vnp.getName(), vnp.getValue());
        	if (HISTORY_DAY_WEEK.equals(vnp.getValue()))
        		historyCombo.setSelectedIndex(historyCombo.getItemCount()-1);
    	}
    	historyCombo.addActionListener(this);
    }

    /**
     * Adding where clause from history data
     * @param listItem
     */
    private String addHistoryRestriction(ListItem listItem)
    {
    	String selectedHistoryValue = listItem.getValue();
    	log.fine("History combo selected value  =" +selectedHistoryValue);

    	if (null!=listItem && listItem.toString().length() > 0 && getHistoryDays(selectedHistoryValue) > 0)
    	{
    		StringBuilder where = new StringBuilder();
    		where.append("TRUNC (i.DueDate) >= ");
    		where.append("SysDate-").append(getHistoryDays(selectedHistoryValue));
    		return where.toString();
    	}
    	return null;
    }
    
    /**
     * Get days from selected values of history combo
     * @param selectedItem
     * @return
     */
    private int getHistoryDays(String selectedItem) 
	{
    	int retDays = 0;
		if (selectedItem.equals(HISTORY_DAY_DAY))
			retDays = 1;
		else if (selectedItem.equals(HISTORY_DAY_WEEK))
			retDays = 7;
		else if (selectedItem.equals(HISTORY_DAY_MONTH))
			retDays = 31;
		else if (selectedItem.equals(HISTORY_DAY_YEAR))
			retDays = 365;
		return retDays;
		
	}
}   //  VPaySelect
