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

package org.kenos.idempiere.lbr.nfe.zk.form;

import static org.compiere.model.SystemIDs.WINDOW_CUSTOMERRETURN;
import static org.compiere.model.SystemIDs.WINDOW_RETURNTOVENDOR;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.webui.apps.AEnv;
import org.adempiere.webui.apps.form.WCreateFromWindow;
import org.adempiere.webui.component.Checkbox;
import org.adempiere.webui.component.Grid;
import org.adempiere.webui.component.GridFactory;
import org.adempiere.webui.component.Label;
import org.adempiere.webui.component.ListModelTable;
import org.adempiere.webui.component.Listbox;
import org.adempiere.webui.component.ListboxFactory;
import org.adempiere.webui.component.Panel;
import org.adempiere.webui.component.Row;
import org.adempiere.webui.component.Rows;
import org.adempiere.webui.editor.WEditor;
import org.adempiere.webui.editor.WLocatorEditor;
import org.adempiere.webui.editor.WSearchEditor;
import org.adempiere.webui.editor.WStringEditor;
import org.adempiere.webui.event.ValueChangeEvent;
import org.adempiere.webui.event.ValueChangeListener;
import org.adempiere.webui.util.ZKUpdateUtil;
import org.compiere.model.GridTab;
import org.compiere.model.MLocatorLookup;
import org.compiere.model.MLookup;
import org.compiere.model.MLookupFactory;
import org.compiere.model.MProduct;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;
import org.zkoss.zk.ui.Component;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zk.ui.event.Events;
import org.zkoss.zul.Div;
import org.zkoss.zul.Vlayout;

public class WCreateFromShipmentUI extends CreateFromShipment implements EventListener<Event>, ValueChangeListener
{

	private WCreateFromWindow window;
	
	public WCreateFromShipmentUI(GridTab tab) 
	{
		super(tab);
		log.info(getGridTab().toString());
		
		window = new WCreateFromWindow(this, getGridTab().getWindowNo());
		
		p_WindowNo = getGridTab().getWindowNo();

		try
		{
			if (!dynInit())
				return;
			zkInit();
			setInitOK(true);
		}
		catch(Exception e)
		{
			log.log(Level.SEVERE, "", e);
			setInitOK(false);
			throw new AdempiereException(e.getMessage());
		}
		AEnv.showWindow(window);
	}
	
	/** Window No               */
	private int p_WindowNo;

	/**	Logger			*/
	private CLogger log = CLogger.getCLogger(getClass());
		
	protected Label bPartnerLabel = new Label();
	protected WEditor bPartnerField;
	
	protected Label orderLabel = new Label();
	protected Listbox orderField = ListboxFactory.newDropdownListbox();

    /** Label for the rma selection */
    protected Label rmaLabel = new Label();
    /** Combo box for selecting RMA document */
    protected Listbox rmaField = ListboxFactory.newDropdownListbox();
	
    protected Label invoiceLabel = new Label();
    protected Listbox invoiceField = ListboxFactory.newDropdownListbox();
	
    protected Label counterLabel = new Label();
    protected Listbox counterField = ListboxFactory.newDropdownListbox();
    
	protected Checkbox sameWarehouseCb = new Checkbox();
	protected Label locatorLabel = new Label();
	protected WLocatorEditor locatorField = new WLocatorEditor();
	protected Label upcLabel = new Label();
	protected WStringEditor upcField = new WStringEditor();
    
	/**
	 *  Dynamic Init
	 *  @throws Exception if Lookups cannot be initialized
	 *  @return true if initialized
	 */
	public boolean dynInit() throws Exception
	{
		log.config("");
		
		super.dynInit();
		
		window.setTitle(getTitle());

		sameWarehouseCb.setSelected(true);
		sameWarehouseCb.addActionListener(this);
		//  load Locator
		MLocatorLookup locator = new MLocatorLookup(Env.getCtx(), p_WindowNo);
		locatorField = new WLocatorEditor ("M_Locator_ID", true, false, true, locator, p_WindowNo);

		initBPartner(false);
		bPartnerField.addValueChangeListener(this);
		locatorLabel.setMandatory(true);

		upcField = new WStringEditor ("UPC", false, false, true, 10, 30, null, null);
		upcField.getComponent().addEventListener(Events.ON_CHANGE, this);

		return true;
	}   //  dynInit
	
	protected void zkInit() throws Exception
	{
    	boolean isRMAWindow = ((getGridTab().getAD_Window_ID() == WINDOW_RETURNTOVENDOR) || (getGridTab().getAD_Window_ID() == WINDOW_CUSTOMERRETURN)); 

    	bPartnerLabel.setText(Msg.getElement(Env.getCtx(), "C_BPartner_ID"));
		orderLabel.setText(Msg.getElement(Env.getCtx(), "C_Order_ID", false));
		invoiceLabel.setText(Msg.getElement(Env.getCtx(), "C_Invoice_ID", false));
		counterLabel.setText(Msg.getElement(Env.getCtx(), "LBR_NotaFiscal_ID", false));
        rmaLabel.setText(Msg.translate(Env.getCtx(), "M_RMA_ID"));
		locatorLabel.setText(Msg.translate(Env.getCtx(), "M_Locator_ID"));
        sameWarehouseCb.setText(Msg.getMsg(Env.getCtx(), "FromSameWarehouseOnly", true));
        sameWarehouseCb.setTooltiptext(Msg.getMsg(Env.getCtx(), "FromSameWarehouseOnly", false));
        upcLabel.setText(Msg.getElement(Env.getCtx(), "UPC", false));

		Vlayout vlayout = new Vlayout();
		ZKUpdateUtil.setVflex(vlayout, "1");
		ZKUpdateUtil.setWidth(vlayout, "100%");
    	Panel parameterPanel = window.getParameterPanel();
		parameterPanel.appendChild(vlayout);
		
		Grid parameterStdLayout = GridFactory.newGridLayout();
    	vlayout.appendChild(parameterStdLayout);
		
		Rows rows = (Rows) parameterStdLayout.newRows();
		Row row = rows.newRow();
		row.appendChild(bPartnerLabel.rightAlign());
		if (bPartnerField != null) {
			row.appendChild(bPartnerField.getComponent());
			bPartnerField.fillHorizontal();
		}
    	if (! isRMAWindow) {
    		row.appendChild(orderLabel.rightAlign());
    		row.appendChild(orderField);
    		ZKUpdateUtil.setHflex(orderField, "1");
    	}
		
		row = rows.newRow();
		row.appendChild(locatorLabel.rightAlign());
		row.appendChild(locatorField.getComponent());
    	if (!isRMAWindow)
    	{
    		row.appendChild(invoiceLabel.rightAlign());
    		row.appendChild(invoiceField);
    		ZKUpdateUtil.setHflex(invoiceField, "1");
    	}
        
		row = rows.newRow();
//		row.appendChild(new Space());
		row.appendCellChild(makeRightAlign(sameWarehouseCb), 2);
		
		if (!isRMAWindow)
		{
    		row.appendChild(counterLabel.rightAlign());
    		row.appendChild(counterField);
    		ZKUpdateUtil.setHflex(counterField, "1");
		}
		
		row = rows.newRow();
		row.appendChild(upcLabel.rightAlign());
		row.appendChild(upcField.getComponent());
    	if (isRMAWindow) {
            // Add RMA document selection to panel
            row.appendChild(rmaLabel.rightAlign());
            row.appendChild(rmaField);
            ZKUpdateUtil.setHflex(rmaField, "1");
    	}
	}

	private boolean 	m_actionActive = false;
	
	/**
	 *  Action Listener
	 *  @param e event
	 * @throws Exception 
	 */
	public void onEvent(Event e) throws Exception
	{
		if (m_actionActive)
			return;
		m_actionActive = true;
		/*
		//  Order
		if (e.getTarget().equals(orderField))
		{
			ListItem li = orderField.getSelectedItem();
			int C_Order_ID = 0;
			if (li != null && li.getValue() != null)
				C_Order_ID = ((Integer) li.getValue()).intValue();
			//  set Invoice, RMA and Shipment to Null
			rmaField.setSelectedIndex(-1);
			//shipmentField.setSelectedIndex(-1);
			loadOrder(C_Order_ID, true);
		}
		//  Shipment
		else if (e.getTarget().equals(invoiceField))
		{
			ListItem li = shipmentField.getSelectedItem();
			int M_InOut_ID = 0;
			if (li != null && li.getValue() != null)
				M_InOut_ID = ((Integer) li.getValue()).intValue();
			//  set Order, RMA and Invoice to Null
			orderField.setSelectedIndex(-1);
			rmaField.setSelectedIndex(-1);
			loadShipment(M_InOut_ID);
		}
		//  RMA
		else if (e.getTarget().equals(rmaField))
		{
			ListItem li = rmaField.getSelectedItem();
		    int M_RMA_ID = 0;
		    if (li != null && li.getValue() != null)
		        M_RMA_ID = ((Integer) li.getValue()).intValue();
		    //  set Order and Invoice to Null
		    orderField.setSelectedIndex(-1);
		    //shipmentField.setSelectedIndex(-1);
		    loadRMA(M_RMA_ID);
		}
		m_actionActive = false;
		*/
		
		//  Order
		if (e.getTarget().equals(orderField))
		{
			KeyNamePair pp = orderField.getSelectedItem().toKeyNamePair();
			if (pp == null || pp.getKey() == 0)
				;
			else
			{
				int C_Order_ID = pp.getKey();
				//  set Invoice and Shipment to Null
				invoiceField.setSelectedIndex(-1);
				counterField.setSelectedIndex(-1);
                rmaField.setSelectedIndex(-1);
				loadOrder(C_Order_ID, false, locatorField.getValue()!=null?((Integer)locatorField.getValue()).intValue():0);
			}
		}
		//  Invoice
		else if (e.getTarget().equals(invoiceField))
		{
			KeyNamePair pp = invoiceField.getSelectedItem().toKeyNamePair();
			if (pp == null || pp.getKey() == 0)
				;
			else
			{
				int C_Invoice_ID = pp.getKey();
				//  set Order and Shipment to Null
				orderField.setSelectedIndex(-1);
				counterField.setSelectedIndex(-1);
				rmaField.setSelectedIndex(-1);
				loadInvoice(C_Invoice_ID, locatorField.getValue()!=null?((Integer)locatorField.getValue()).intValue():0);
			}
		}
		//  Counter
		else if (e.getTarget().equals(counterField))
		{
			KeyNamePair pp = counterField.getSelectedItem().toKeyNamePair();
			if (pp == null || pp.getKey() == 0)
				;
			else
			{
				int LBR_NotaFiscal_ID = pp.getKey();
				//  set Order and Shipment to Null
				orderField.setSelectedIndex(-1);
				invoiceField.setSelectedIndex(-1);
				rmaField.setSelectedIndex(-1);
				loadCounter(LBR_NotaFiscal_ID, locatorField.getValue()!=null?((Integer)locatorField.getValue()).intValue():0);
			}
		}
		// RMA
        else if (e.getTarget().equals(rmaField))
        {
            KeyNamePair pp = rmaField.getSelectedItem().toKeyNamePair();
            if (pp == null || pp.getKey() == 0)
                ;
            else
            {
                int M_RMA_ID = pp.getKey();
                //  set Order and Shipment to Null
                orderField.setSelectedIndex(-1);
                invoiceField.setSelectedIndex(-1);
				counterField.setSelectedIndex(-1);
				loadRMA(M_RMA_ID, locatorField.getValue()!=null?((Integer)locatorField.getValue()).intValue():0);
            }
        }
		//sameWarehouseCb
        else if (e.getTarget().equals(sameWarehouseCb))
        {
        	int bpId = bPartnerField.getValue() == null?0:((Integer)bPartnerField.getValue()).intValue();
        	initBPOrderDetails(bpId, false);
        }	
		else if (e.getTarget().equals(upcField.getComponent()))
		{
			checkProductUsingUPC();
		}
		
		m_actionActive = false;
	}
	
	/**
	 * Checks the UPC value and checks if the UPC matches any of the products in the
	 * list.
	 */
	private void checkProductUsingUPC()
	{
		String upc = upcField.getDisplay();
		//DefaultTableModel model = (DefaultTableModel) dialog.getMiniTable().getModel();
		ListModelTable model = (ListModelTable) window.getWListbox().getModel();
		
		// Lookup UPC
		List<MProduct> products = MProduct.getByUPC(Env.getCtx(), upc, null);
		for (MProduct product : products)
		{
			int row = findProductRow(product.get_ID());
			if (row >= 0)
			{
				BigDecimal qty = (BigDecimal)model.getValueAt(row, 1);
				model.setValueAt(qty, row, 1);
				model.setValueAt(Boolean.TRUE, row, 0);
				model.updateComponent(row, row);
			}
		}
		upcField.setValue("");
	}

	/**
	 * Finds the row where a given product is. If the product is not found
	 * in the table -1 is returned.
	 * @param M_Product_ID
	 * @return  Row of the product or -1 if non existing.
	 * 
	 */
	private int findProductRow(int M_Product_ID)
	{
		//DefaultTableModel model = (DefaultTableModel)dialog.getMiniTable().getModel();
		ListModelTable model = (ListModelTable) window.getWListbox().getModel();
		KeyNamePair kp;
		for (int i=0; i<model.getRowCount(); i++) {
			kp = (KeyNamePair)model.getValueAt(i, 4);
			if (kp.getKey()==M_Product_ID) {
				return(i);
			}
		}
		return(-1);
	}
		
	/**
	 *  Change Listener
	 *  @param e event
	 */
	public void valueChange (ValueChangeEvent e)
	{
		if (log.isLoggable(Level.CONFIG)) log.config(e.getPropertyName() + "=" + e.getNewValue());

		//  BPartner - load Order/Invoice/Shipment
		if (e.getPropertyName().equals("C_BPartner_ID"))
		{
			int C_BPartner_ID = 0; 
			if (e.getNewValue() != null){
				C_BPartner_ID = ((Integer)e.getNewValue()).intValue();
			}
			
			initBPOrderDetails (C_BPartner_ID, true);
		}
		window.tableChanged(null);
	}   //  vetoableChange
	
	/**************************************************************************
	 *  Load BPartner Field
	 *  @param forInvoice true if Invoices are to be created, false receipts
	 *  @throws Exception if Lookups cannot be initialized
	 */
	protected void initBPartner (boolean forInvoice) throws Exception
	{
		//  load BPartner
		int AD_Column_ID = 3499;        //  C_Invoice.C_BPartner_ID
		MLookup lookup = MLookupFactory.get (Env.getCtx(), p_WindowNo, 0, AD_Column_ID, DisplayType.Search);
		bPartnerField = new WSearchEditor ("C_BPartner_ID", true, false, true, lookup);
		//
		int C_BPartner_ID = Env.getContextAsInt(Env.getCtx(), p_WindowNo, "C_BPartner_ID");
		bPartnerField.setValue(new Integer(C_BPartner_ID));

		//  initial loading
		initBPOrderDetails(C_BPartner_ID, forInvoice);
	}   //  initBPartner

	/**
	 * Init Details - load invoices not shipped
	 * @param C_BPartner_ID BPartner
	 */
	private void initBPInvoiceDetails(int C_BPartner_ID)
	{
		if (log.isLoggable(Level.CONFIG)) log.config("C_BPartner_ID" + C_BPartner_ID);

		//  load Shipments (Receipts) - Completed, Closed
		invoiceField.removeActionListener(this);
		invoiceField.removeAllItems();
		//	None
		KeyNamePair pp = new KeyNamePair(0,"");
		invoiceField.addItem(pp);
		
		ArrayList<KeyNamePair> list = loadInvoiceData(C_BPartner_ID);
		for(KeyNamePair knp : list)
			invoiceField.addItem(knp);
		
		invoiceField.setSelectedIndex(0);
		invoiceField.addActionListener(this);
		upcField.addValueChangeListener(this);
	}

	/**
	 * Init Details - load invoices not shipped
	 * @param C_BPartner_ID BPartner
	 */
	private void initBPCounterDetails(int C_BPartner_ID)
	{
		if (log.isLoggable(Level.CONFIG)) log.config("C_BPartner_ID" + C_BPartner_ID);

		//  load Shipments (Receipts) - Completed, Closed
		counterField.removeActionListener(this);
		counterField.removeAllItems();
		//	None
		KeyNamePair pp = new KeyNamePair(0,"");
		counterField.addItem(pp);
		
		ArrayList<KeyNamePair> list = loadCounterData(C_BPartner_ID);
		for(KeyNamePair knp : list)
			counterField.addItem(knp);
		
		counterField.setSelectedIndex(0);
		counterField.addActionListener(this);
		upcField.addValueChangeListener(this);
	}
	
	/**
	 *  Load PBartner dependent Order/Invoice/Shipment Field.
	 *  @param C_BPartner_ID BPartner
	 *  @param forInvoice for invoice
	 */
	protected void initBPOrderDetails (int C_BPartner_ID, boolean forInvoice)
	{
		if (log.isLoggable(Level.CONFIG)) log.config("C_BPartner_ID=" + C_BPartner_ID);
		KeyNamePair pp = new KeyNamePair(0,"");
		//  load PO Orders - Closed, Completed
		orderField.removeActionListener(this);
		orderField.removeAllItems();
		orderField.addItem(pp);
		
		ArrayList<KeyNamePair> list = loadOrderData(C_BPartner_ID, forInvoice, sameWarehouseCb.isSelected());
		for(KeyNamePair knp : list)
			orderField.addItem(knp);
		
		orderField.setSelectedIndex(0);
		orderField.addActionListener(this);

		initBPDetails(C_BPartner_ID);
	}   //  initBPartnerOIS
	
	public void initBPDetails(int C_BPartner_ID) 
	{
		initBPInvoiceDetails(C_BPartner_ID);
		initBPRMADetails(C_BPartner_ID);
		initBPCounterDetails(C_BPartner_ID);
	}

	
	/**
	 * Load RMA that are candidates for shipment
	 * @param C_BPartner_ID BPartner
	 */
	private void initBPRMADetails(int C_BPartner_ID)
	{
	    rmaField.removeActionListener(this);
	    rmaField.removeAllItems();
	    //  None
	    KeyNamePair pp = new KeyNamePair(0,"");
	    rmaField.addItem(pp);
	    
	    ArrayList<KeyNamePair> list = loadRMAData(C_BPartner_ID);
		for(KeyNamePair knp : list)
			rmaField.addItem(knp);
		
	    rmaField.setSelectedIndex(0);
	    rmaField.addActionListener(this);
	}

	/**
	 *  Load Data - Order
	 *  @param C_Order_ID Order
	 *  @param forInvoice true if for invoice vs. delivery qty
	 */
/*	protected void loadOrder (int C_Order_ID, boolean forInvoice)
	{
		loadTableOIS(getOrderData(C_Order_ID, forInvoice));
	}   //  LoadOrder
	
	protected void loadRMA (int M_RMA_ID)
	{
		loadTableOIS(getRMAData(M_RMA_ID));
	}
	
	protected void loadShipment (int M_InOut_ID)
	{
		loadTableOIS(getShipmentData(M_InOut_ID));
	}*/
	
	/**
	 *  Load Data - Order
	 *  @param C_Order_ID Order
	 *  @param forInvoice true if for invoice vs. delivery qty
	 *  @param M_Locator_ID
	 */
	protected void loadOrder (int C_Order_ID, boolean forInvoice, int M_Locator_ID)
	{
		loadTableOIS(getOrderData(C_Order_ID, forInvoice, M_Locator_ID));
	}   //  LoadOrder
	
	/**
	 *  Load Data - RMA
	 *  @param M_RMA_ID RMA
	 *  @param M_Locator_ID
	 */
	protected void loadRMA (int M_RMA_ID, int M_Locator_ID)
	{
		loadTableOIS(getRMAData(M_RMA_ID, M_Locator_ID));
	}
		
	/**
	 *  Load Data - Invoice
	 *  @param C_Invoice_ID Invoice
	 *  @param M_Locator_ID
	 */
	protected void loadInvoice (int C_Invoice_ID, int M_Locator_ID)
	{
		loadTableOIS(getInvoiceData(C_Invoice_ID, M_Locator_ID));
	}
	
	/**
	 *  Load Data - Invoice
	 *  @param C_Invoice_ID Invoice
	 *  @param M_Locator_ID
	 */
	protected void loadCounter (int LBR_NotaFiscal_ID, int M_Locator_ID)
	{
		loadTableOIS(getCounterData(LBR_NotaFiscal_ID, M_Locator_ID));
	}
		
	/**
	 *  Load Order/Invoice/Shipment data into Table
	 *  @param data data
	 */
	protected void loadTableOIS (Vector<?> data)
	{
		window.getWListbox().clear();
		
		//  Remove previous listeners
		window.getWListbox().getModel().removeTableModelListener(window);
		//  Set Model
		ListModelTable model = new ListModelTable(data);
		model.addTableModelListener(window);
		window.getWListbox().setData(model, getOISColumnNames());
		//
		
		configureMiniTable(window.getWListbox());
	}   //  loadOrder
	
	public void showWindow()
	{
		window.setVisible(true);
	}
	
	public void closeWindow()
	{
		window.dispose();
	}

	@Override
	public Object getWindow() {
		return window;
	}

	/**
	 * Load PBartner dependent Order/Invoice/Shipment Field.
	 * @param C_BPartner_ID
	 */
	protected ArrayList<KeyNamePair> loadCounterData (int C_BPartner_ID)
	{
		ArrayList<KeyNamePair> list = new ArrayList<KeyNamePair>();
		
		int AD_Org_ID = Env.getContextAsInt(Env.getCtx(), p_WindowNo, "AD_Org_ID");
		
		StringBuffer display = new StringBuffer("nf.DocumentNo||' - '||")
		.append(DB.TO_CHAR("DateDoc", DisplayType.Date, Env.getAD_Language(Env.getCtx())))
		.append("|| ' - ' ||")
		.append(DB.TO_CHAR("nf.GrandTotal", DisplayType.Amount, Env.getAD_Language(Env.getCtx())));
		//
		StringBuffer sql = new StringBuffer("SELECT DISTINCT nf.LBR_NotaFiscal_ID,").append(display)
		.append(" FROM LBR_NotaFiscal nf, LBR_NotaFiscalLine nfl,")
		.append(" C_InvoiceLine il, C_OrderLine ol, C_OrderLine rol, C_Order ro")
		.append(" WHERE EXISTS (SELECT '1' FROM C_BPartner bp WHERE bp.C_BPartner_ID=? AND bp.AD_OrgBP_ID=nf.AD_Org_ID)")
		.append(" AND EXISTS (SELECT '1' FROM C_BPartner bp WHERE bp.C_BPartner_ID=nf.C_BPartner_ID AND bp.AD_OrgBP_ID=?)")
		.append(" AND nf.LBR_NotaFiscal_ID=nfl.LBR_NotaFiscal_ID")
		.append(" AND il.C_InvoiceLine_ID=nfl.C_InvoiceLine_ID")
		.append(" AND il.C_OrderLine_ID=ol.C_OrderLine_ID")
		.append(" AND ol.Ref_OrderLine_ID=rol.C_OrderLine_ID")
		.append(" AND ro.C_Order_ID=rol.C_Order_ID")
		.append(" AND rol.QtyDelivered<rol.QtyOrdered")
		.append(" AND ro.DocStatus IN ('CL','CO')")
		.append(" ORDER BY nf.LBR_NotaFiscal_ID");

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setInt(1, C_BPartner_ID);
			pstmt.setInt(2, AD_Org_ID);
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				list.add(new KeyNamePair(rs.getInt(1), rs.getString(2)));
			}
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}finally
		{
			DB.close(rs, pstmt);
			rs = null;
			pstmt = null;
		}

		return list;
	}

	/**
	 * Load Invoice details
	 * @param C_Invoice_ID Invoice
	 */
	protected Vector<Vector<Object>> getCounterData(int LBR_NotaFiscal_ID, int M_Locator_ID)
	{
		//	Fill M_Locator_ID
		getOrderData (-1, false, M_Locator_ID);
		
		/**
		 *  Selected        - 0
		 *  Qty             - 1
		 *  C_UOM_ID        - 2
		 *  M_Locator_ID    - 3
		 *  M_Product_ID    - 4
		 *  VendorProductNo - 5
		 *  OrderLine       - 6
		 *  ShipmentLine    - 7
		 *  InvoiceLine     - 8
		 */
		if (log.isLoggable(Level.CONFIG)) log.config("LBR_NotaFiscal_ID=" + LBR_NotaFiscal_ID);

		Vector<Vector<Object>> data = new Vector<Vector<Object>>();
		StringBuilder sql = new StringBuilder("SELECT "
				+ "l.QtyOrdered-SUM(COALESCE(m.Qty,0))"
				// subtract drafted lines from this or other orders IDEMPIERE-2889
				+ "-COALESCE((SELECT SUM(MovementQty) FROM M_InOutLine iol JOIN M_InOut io ON iol.M_InOut_ID=io.M_InOut_ID WHERE l.C_OrderLine_ID=iol.C_OrderLine_ID AND io.Processed='N'),0),"	//	1
				+ "CASE WHEN l.QtyOrdered=0 THEN 0 ELSE l.QtyEntered/l.QtyOrdered END,"	//	2
				+ " l.C_UOM_ID,COALESCE(uom.UOMSymbol,uom.Name),"			//	3..4
				+ " p.M_Locator_ID, loc.Value, " // 5..6
				+ " COALESCE(l.M_Product_ID,0),COALESCE(p.Name,c.Name), " //	7..8
				+ " po.VendorProductNo, " // 9
				+ " l.C_OrderLine_ID,l.Line "	//	10..11
				+ "FROM C_OrderLine l"
				+ " LEFT OUTER JOIN M_Product_PO po ON (l.M_Product_ID = po.M_Product_ID AND l.C_BPartner_ID = po.C_BPartner_ID) "
				+ " LEFT OUTER JOIN M_MatchPO m ON (l.C_OrderLine_ID=m.C_OrderLine_ID AND ");
		sql.append("m.M_InOutLine_ID");
		sql.append(" IS NOT NULL)")
		.append(" LEFT OUTER JOIN M_Product p ON (l.M_Product_ID=p.M_Product_ID)"
				+ " LEFT OUTER JOIN M_Locator loc on (p.M_Locator_ID=loc.M_Locator_ID)"
				+ " LEFT OUTER JOIN C_Charge c ON (l.C_Charge_ID=c.C_Charge_ID)");
		if (Env.isBaseLanguage(Env.getCtx(), "C_UOM"))
			sql.append(" LEFT OUTER JOIN C_UOM uom ON (l.C_UOM_ID=uom.C_UOM_ID)");
		else
			sql.append(" LEFT OUTER JOIN C_UOM_Trl uom ON (l.C_UOM_ID=uom.C_UOM_ID AND uom.AD_Language='")
			.append(Env.getAD_Language(Env.getCtx())).append("')");
		//
		sql.append(" WHERE EXISTS (SELECT DISTINCT '1'");
		sql.append(" FROM LBR_NotaFiscal nf, LBR_NotaFiscalLine nfl, ");
		sql.append(" C_InvoiceLine il, C_OrderLine ol, C_OrderLine rol, C_Order ro");
		sql.append(" WHERE nf.LBR_NotaFiscal_ID=?");		//	#1
		sql.append(" AND rol.C_OrderLine_ID=l.C_OrderLine_ID");
		sql.append(" AND nf.LBR_NotaFiscal_ID=nfl.LBR_NotaFiscal_ID");
		sql.append(" AND il.C_InvoiceLine_ID=nfl.C_InvoiceLine_ID");
		sql.append(" AND il.C_OrderLine_ID=ol.C_OrderLine_ID");
		sql.append(" AND ol.Ref_OrderLine_ID=rol.C_OrderLine_ID");
		sql.append(" AND ro.C_Order_ID=rol.C_Order_ID");
		sql.append(" AND rol.QtyDelivered<rol.QtyOrdered");
		sql.append(" AND ro.DocStatus IN ('CL','CO')) "	
				+ "GROUP BY l.QtyOrdered,CASE WHEN l.QtyOrdered=0 THEN 0 ELSE l.QtyEntered/l.QtyOrdered END, "
				+ "l.C_UOM_ID,COALESCE(uom.UOMSymbol,uom.Name), p.M_Locator_ID, loc.Value, po.VendorProductNo, "
				+ "l.M_Product_ID,COALESCE(p.Name,c.Name), l.Line,l.C_OrderLine_ID "
				+ "HAVING l.QtyOrdered-SUM(COALESCE(m.Qty,0))-COALESCE((SELECT SUM(MovementQty) FROM M_InOutLine iol "
				+ "JOIN M_InOut io ON iol.M_InOut_ID=io.M_InOut_ID WHERE l.C_OrderLine_ID=iol.C_OrderLine_ID AND io.Processed='N'),0)>0 "
				+ "ORDER BY l.Line");
		//
		if (log.isLoggable(Level.FINER)) log.finer(sql.toString());
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setInt(1, LBR_NotaFiscal_ID);
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				Vector<Object> line = new Vector<Object>();
				line.add(new Boolean(false));           //  0-Selection
				BigDecimal qtyOrdered = rs.getBigDecimal(1);
				BigDecimal multiplier = rs.getBigDecimal(2);
				BigDecimal qtyEntered = qtyOrdered.multiply(multiplier);
				line.add(qtyEntered);  //  1-Qty
				KeyNamePair pp = new KeyNamePair(rs.getInt(3), rs.getString(4).trim());
				line.add(pp);                           //  2-UOM
				// Add locator
				line.add(getLocatorKeyNamePair(rs.getInt(5)));// 3-Locator
				// Add product
				pp = new KeyNamePair(rs.getInt(7), rs.getString(8));
				line.add(pp);                           //  4-Product
				line.add(rs.getString(9));				// 5-VendorProductNo
				pp = new KeyNamePair(rs.getInt(10), rs.getString(11));
				line.add(pp);                           //  6-OrderLine
				line.add(null);                         //  7-Ship
				line.add(null);                         //  8-Invoice
				data.add(line);
			}
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
			//throw new DBException(e, sql.toString());
		}
		finally
		{
			DB.close(rs, pstmt);
			rs = null; pstmt = null;
		}
		return data;
	}
	
	/**
	 * 
	 * @param label
	 * @return wrapped label
	 */
	public static Component makeRightAlign(Component comp) {
		Div div = new Div();
		div.setStyle("text-align: right");
		div.appendChild(comp);
		
		return div;
	}
}
