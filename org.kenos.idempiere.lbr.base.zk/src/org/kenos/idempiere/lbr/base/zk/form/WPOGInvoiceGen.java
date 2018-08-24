package org.kenos.idempiere.lbr.base.zk.form;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Vector;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempiere.webui.component.Button;
import org.adempiere.webui.component.ConfirmPanel;
import org.adempiere.webui.component.Datebox;
import org.adempiere.webui.component.Label;
import org.adempiere.webui.component.ListModelTable;
import org.adempiere.webui.component.Textbox;
import org.adempiere.webui.component.WListbox;
import org.adempiere.webui.event.WTableModelEvent;
import org.adempiere.webui.event.WTableModelListener;
import org.adempiere.webui.factory.ButtonFactory;
import org.adempiere.webui.panel.ADForm;
import org.adempiere.webui.panel.IFormController;
import org.adempiere.webui.session.SessionManager;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.model.MLBRTax;
import org.adempierelbr.wrapper.I_W_C_Invoice;
import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MPriceList;
import org.compiere.model.MProduct;
import org.compiere.model.MProduction;
import org.compiere.model.MProductionLine;
import org.compiere.model.MRefList;
import org.compiere.model.MRole;
import org.compiere.model.MSysConfig;
import org.compiere.process.ProcessInfo;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.kenos.idempiere.lbr.base.model.MLBRProductionGroup;
import org.zkoss.zk.ui.Component;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zk.ui.event.Events;
import org.zkoss.zul.Groupbox;
import org.zkoss.zul.Separator;
import org.zkoss.zul.Space;

/**
 * 		Invoice Production Order
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: WPOGInvoiceGen.java, v1.0 2018/04/20 10:00:00 PM, rfeitosa Exp $
 */
public class WPOGInvoiceGen extends ADForm implements IFormController, WTableModelListener, EventListener<Event>
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = 1L;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger (WPOGInvoiceGen.class);
	
	/** Production Group	*/
	private int m_LBR_ProductionGroup_ID = -1;

	/**	Panels			*/
	private ConfirmPanel confirmPanel = new ConfirmPanel(true);
	private Groupbox grpSelectionProd = new Groupbox();
	private Groupbox grpSelectionComp = new Groupbox();
	private Label l_help = new Label (Msg.getMsg (Env.getCtx(), "LBR_POGInvoiceHelp"));
	private Label nfLabel = new Label(Msg.translate (Env.getCtx(), "lbr_NFEntrada"));
	private Textbox nfNumber = new Textbox();
	private Label nfDate = new Label(Msg.translate (Env.getCtx(), "MovementDate"));
	private Datebox movDate = new Datebox();
	private Button bSelectAllProd = ButtonFactory.createNamedButton("SelectAll", false, true);  
	private Button bSelectAllComp = ButtonFactory.createNamedButton("SelectAll", false, true); 
	private Boolean selectAllProd = false;
	private Boolean selectAllComp = false;
	private Label grandTotalProd = new Label("Total Geral: 0");
	
	/**	Result Table	*/
	private WListbox miniTableProd = new WListbox();
	private WListbox miniTableComp = new WListbox();
	
	@Override
	public ADForm getForm()
	{
		return this;
	}	//	getForm

	@Override
	protected void initForm()
	{
		log.info("");
		
		try
		{
			confirmPanel = new ConfirmPanel (true, true, false, false, false, false);
			
			movDate.setValue(new Date(System.currentTimeMillis()));
			
			//	Top Selection Panel
			grpSelectionProd.appendChild(l_help);
			grpSelectionProd.appendChild(new Separator());
			grpSelectionProd.appendChild(nfLabel);
			grpSelectionProd.appendChild(new Space());
			grpSelectionProd.appendChild(nfNumber);
			grpSelectionProd.appendChild(new Space());
			grpSelectionProd.appendChild(nfDate);
			grpSelectionProd.appendChild(new Space());
			grpSelectionProd.appendChild(movDate);
			grpSelectionProd.appendChild(new Separator());
			grpSelectionProd.appendChild(miniTableProd);
			grpSelectionComp.appendChild(miniTableComp);
			grpSelectionComp.setVisible(false);
			
			//	Center
			createMainPanel ();
//			updatePackageWeight ();

			confirmPanel.addActionListener(Events.ON_CLICK, this);
			bSelectAllProd.addEventListener(Events.ON_CLICK, this);
			bSelectAllComp.addEventListener(Events.ON_CLICK, this);
		}
		catch(Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
	}	//	initForm

	/**
	 * 	Create the main panel and result grid
	 */
	private void createMainPanel ()
	{
		this.appendChild(new Separator());
		this.appendChild(grpSelectionProd);
		grpSelectionProd.appendChild(bSelectAllProd);
		grpSelectionProd.appendChild(new Space());
		grpSelectionProd.appendChild(grandTotalProd.rightAlign());
		this.appendChild(new Separator());
		this.appendChild(grpSelectionComp);
		grpSelectionComp.appendChild(bSelectAllComp);
		this.appendChild(new Separator());
		this.appendChild(confirmPanel);
		this.appendChild(new Separator());
		this.setBorder("normal");
		this.setContentStyle("overflow: auto");
		//		
		l_help.setMultiline(true);
	}	//	createMainPanel
	
	/**
	 * 	Create the Production Grid
	 */
	private void createProductionGrid ()
	{
		Properties ctx = Env.getCtx ();
		//
		Vector<String> columnNames = new Vector<String>();
		columnNames.add (Msg.translate(ctx, "Select"));
		columnNames.add (Msg.translate(ctx, "DocumentNo"));
		columnNames.add (Msg.translate(ctx, "MovementDate"));
		columnNames.add (Msg.translate(ctx, "M_Product_ID"));
		columnNames.add (Msg.translate(ctx, "ProductionQty"));
		columnNames.add (Msg.translate(ctx, "MovementQty"));
		columnNames.add (Msg.translate(ctx, "PriceEntered"));
		columnNames.add (Msg.translate(ctx, "GrandTotal"));
		columnNames.add (Msg.translate(ctx, "IsInvoiced"));
		columnNames.add (Msg.translate(ctx, "DocStatus"));

		//	Clear
		miniTableProd.clear();
		
		//  Remove previous listeners
		miniTableProd.getModel().removeTableModelListener(this);
		
		//  Set Model
		ListModelTable modelI = new ListModelTable(getProductionData());
		modelI.addTableModelListener(this);
		miniTableProd.setData(modelI, columnNames);
		//
		int index=0;
		miniTableProd.setColumnClass (index++, Boolean.class, false);		//  0-Selection
		miniTableProd.setColumnClass (index++, KeyNamePair.class, true); 	//  1-DocumentNo
		miniTableProd.setColumnClass (index++, Timestamp.class, true);		//  2-MovementDate
		miniTableProd.setColumnClass (index++, String.class, true);			//  3-Product
		miniTableProd.setColumnClass (index++, BigDecimal.class, true);		//  4-Production Qty
		miniTableProd.setColumnClass (index++, BigDecimal.class, true);		//  5-Movement Qty
		miniTableProd.setColumnClass (index++, BigDecimal.class, true);		//  6-Price Entered
		miniTableProd.setColumnClass (index++, BigDecimal.class, true);		//  7-GrandTotal
		miniTableProd.setColumnClass (index++, Boolean.class, true);		//  8-Is Invoiced
		
		selectAllProd = false;
	}	//	createProductionGrid
	
	/**
	 * 	Create the Production Grid
	 * @throws Exception 
	 */
	private void createComponentGrid () throws Exception
	{
		Properties ctx = Env.getCtx ();
		//
		Vector<String> columnNames = new Vector<String>();
		columnNames.add (Msg.translate(ctx, "Select"));
		columnNames.add (Msg.translate(ctx, "Description"));
		columnNames.add (Msg.translate(ctx, "M_Product_ID"));
		columnNames.add (Msg.translate(ctx, "PlannedQty"));
		columnNames.add (Msg.translate(ctx, "QtyUsed"));
		columnNames.add (Msg.translate(ctx, "MovementQty"));

		//	Clear
		miniTableComp.clear();
		
		//  Remove previous listeners
		miniTableComp.getModel().removeTableModelListener(this);
		
		//  Set Model
		ListModelTable modelI = new ListModelTable(getComponentData());
		miniTableComp.setData(modelI, columnNames);
		//
		int index=0;
		miniTableComp.setColumnClass (index++, Boolean.class, false);		//  0-Selection
		miniTableComp.setColumnClass (index++, String.class, true); 		//  1-Description
		miniTableComp.setColumnClass (index++, KeyNamePair.class, true);	//  2-Product
		miniTableComp.setColumnClass (index++, BigDecimal.class, true);		//  3-Production Qty
		miniTableComp.setColumnClass (index++, BigDecimal.class, true);		//  4-Qty Used
		miniTableComp.setColumnClass (index++, BigDecimal.class, true);		//  5-Qty Movement
		
		selectAllComp = false;
	}	//	createComponentGrid

	@Override
	public void tableChanged(WTableModelEvent event)
	{
		try
		{
			BigDecimal grandTotal = BigDecimal.ZERO;
			
			for (int i = 0; i < miniTableProd.getItemCount(); i++)
			{	
				if (((Boolean)miniTableProd.getValueAt(i, 0)).booleanValue())
					grandTotal = grandTotal.add((BigDecimal)miniTableProd.getValueAt(i, 7));
			}
			
			grandTotalProd.setValue("Total Geral: " + grandTotal);
				
			createComponentGrid ();
			grpSelectionComp.setVisible(true);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}	//	tableChanged
	
	/**
	 * 	Process Events
	 * 
	 * @param event
	 * @throws Exception
	 */
	@Override
	public void onEvent(Event e) throws Exception
	{
		Component comp = e.getTarget();
		String eventName = e.getName();
		if (log.isLoggable(Level.CONFIG)) log.config(eventName);
		
		//	Event source
		Object source = e.getTarget();
		
		//	All clicks events
		if (Events.ON_CLICK.equals(eventName))
		{
			if (confirmPanel.getButton(ConfirmPanel.A_OK).equals(source))
			{
				if (nfNumber.getText().isEmpty())
					throw new AdempiereException ("Preencher " + Msg.translate (Env.getCtx(), "lbr_NFEntrada"));
				
				List<MProduction> productions = new ArrayList<MProduction>();
				List<MProductionLine> lines = new ArrayList<MProductionLine>();
				Map<Integer, Vector<Object>> products = new HashMap<Integer, Vector<Object>>();
				
				//  Process Lines, store all selected productions
				int rows = miniTableProd.getRowCount();
				for (int i = 0; i < rows; i++)
				{
					if (((Boolean)miniTableProd.getValueAt(i, 0)).booleanValue())
					{
						KeyNamePair knp = (KeyNamePair) miniTableProd.getValueAt(i, 1);
						//
						productions.add (new MProduction (Env.getCtx(), knp.getKey(), null));
					}
				}
				
				//	Process components, store all selected components that has qty changed
				rows = miniTableComp.getRowCount();
				for (int i = 0; i < rows; i++)
				{
					if (((Boolean)miniTableComp.getValueAt(i, 0)).booleanValue())
					{
						KeyNamePair knp = (KeyNamePair) miniTableComp.getValueAt(i, 2);
						//
						Vector<Object> vec = new Vector<Object>();
						vec.add((BigDecimal) miniTableComp.getValueAt(i, 4));	//	0-New Quantity to distribute
						vec.add((BigDecimal) miniTableComp.getValueAt(i, 3));	//	1-Qty planned of BOM
						vec.add(new Integer (0));								//	2-Number of Production Lines for this product
						//
						products.put (knp.getKey(), vec);
					}
				}
				
				//	Store all Production Lines that has selected products
				for (MProduction production : productions)
					for (MProductionLine pl : production.getLines())
					{
						if (!pl.isEndProduct() && products.containsKey (pl.getM_Product_ID()))
						{
							lines.add (pl);
							//
							Vector<Object> vec = products.get(pl.getM_Product_ID());
							Integer count = (Integer) vec.remove(2);
							
							//	Increase the Production Line count
							vec.add (new Integer (count.intValue()+1));
						}
					}
				
				//	Generate Invoice and Nota Fiscal
				processGenerate(productions, lines, nfNumber.getText());				
				
				//	Refresh
				createProductionGrid ();
				miniTableComp.clear();
				grpSelectionComp.setVisible(false);
				nfNumber.setValue("");
			}
			else if (confirmPanel.getButton(ConfirmPanel.A_CANCEL).equals(source))
			{
				SessionManager.getAppDesktop().closeActiveWindow();
			}
			else if (confirmPanel.getButton(ConfirmPanel.A_REFRESH).equals(source))
			{
				//	Refresh
				createProductionGrid ();
				miniTableComp.clear();
				grpSelectionComp.setVisible(false);
			}
			else  if(eventName.equals(Events.ON_CLICK))
	        {
	    		if (comp == bSelectAllProd)
	    		{
	    			selectAllProd = (selectAllProd ? false : true);
	    			for (int i = 0; i < miniTableProd.getItemCount(); i++)
	    			{
	    				miniTableProd.setValueAt(new Boolean (selectAllProd), i, 0);
	    			}
	    		}
	    		else if (comp == bSelectAllComp)
	    		{
	    			selectAllComp = (selectAllComp ? false : true);
	    			for (int i = 0; i < miniTableComp.getItemCount(); i++)
	    			{
	    				miniTableComp.setValueAt(new Boolean (selectAllComp), i, 0);
	    			}
	    		}
	        }
		}
	}	//	onEvent
	
	/**
	 * Process Generate to Create Invoice and / or Nota Fiscal
	 * @param productions
	 * @param materials
	 * @param lbr_NFEntrada
	 * @return
	 * @throws Exception
	 */
	private String processGenerate(List<MProduction> productions, List<MProductionLine> materials, String lbr_NFEntrada) throws Exception
	{
		//	Create Trasaction to controll the process. If there is an error, it's necessary to force a Rollback. It will avoid problem on Storage
		String trxName = Trx.createTrxName();
		
		//	Movement Date
		Timestamp movementeDate = new Timestamp(movDate.getValue().getTime());
		
		//	Should Create Invoice
		Boolean createInvoice = false;
		
		//	If Empty
		if (productions.isEmpty())
			return null;
		
		//	Production Group
		MLBRProductionGroup pg = new MLBRProductionGroup (Env.getCtx(), productions.get(0).get_ValueAsInt("LBR_ProductionGroup_ID"), trxName);
		
		//	Production Line
		List<MProductionLine> lines = new ArrayList<MProductionLine>();
		
		//	Add End Product to the List
		for (MProduction production : productions)
		{
			if (MProduction.DOCSTATUS_Drafted.equals(production.getDocStatus()))
			{				
				try
				{
					production.set_TrxName(trxName);
					production.setMovementDate(movementeDate);				
					production.setDocStatus(production.completeIt());
					production.save();
				}
				catch (Exception e)
				{
					Trx.get (trxName, false).rollback ();
					throw new AdempiereException(e.getMessage());
				}
					
			}
			
			if (MProduction.DOCSTATUS_Completed.equals(production.getDocStatus()))
			{
				for (MProductionLine linesEndProduct : production.getLines())
				{
					if (linesEndProduct.get_ValueAsInt("LBR_NotaFiscalLine_ID") == 0 && linesEndProduct.isEndProduct())
						lines.add(linesEndProduct);
				}
			}
		}
		
		// Check if Thera are End Products available to create Invoice
		if (!lines.isEmpty())
			createInvoice = true;
		
		//	Add Material
		for (MProductionLine linesMaterial : materials)
		{
			//	Material Line must be in the same Trx
			linesMaterial.set_TrxName(trxName);
			
			if (linesMaterial.get_ValueAsInt("LBR_NotaFiscalLine_ID") == 0 && !linesMaterial.isEndProduct()
					&& MProduction.DOCSTATUS_Completed.equals(linesMaterial.getM_Production().getDocStatus()))
				lines.add(linesMaterial);
		}
		
		// Verify if exists production waiting to Generate Return's Nota Fiscal
		if (lines.isEmpty())
			return "Sem linhas para lançar";
		
		//	Create Nota Fiscal
		MLBRNotaFiscal nf = new MLBRNotaFiscal (Env.getCtx(), 0, pg.get_TrxName());
		//	Gerar Nota Fiscal a Partir das Produções Completadas
		nf.generateNF(pg, lines, false, lbr_NFEntrada);
		
		nf.saveEx();
		
		//	Create Invoice
		if (createInvoice)
			InvoiceGenerate(pg, lines, lbr_NFEntrada);
		
		try
		{
			Trx.get (trxName, false).commit();
		}
		catch (Exception e) {
			throw new AdempiereException(e.getMessage());
		}		
		
		return null;
		
	}	//	processGenerate
	
	/**
	 * Invoice Generate from Production Line
	 * @param pg
	 * @param lines
	 * @param lbr_NFEntrada
	 */
	private void InvoiceGenerate(MLBRProductionGroup pg, List<MProductionLine> lines, String lbr_NFEntrada)
	{		
		BigDecimal totalItem = Env.ZERO;
		//
		Boolean isSOTrx = false;
		int lineNo = 1;
		
		//	Documents
		int p_LBR_Tax_ID 		= pg.getLBR_Tax_ID();
		
		//	Invoice
		MInvoice invoice = new MInvoice (Env.getCtx(), 0 , pg.get_TrxName());
		
		I_W_C_Invoice wInvoice = POWrapper.create(invoice, I_W_C_Invoice.class);
		
		// Invoice Doc Type
		MDocType doctype = new MDocType (Env.getCtx(), pg.getC_DocTypeTarget_ID(), invoice.get_TrxName());
		
		wInvoice.setAD_Org_ID(pg.getAD_Org_ID());
		wInvoice.setIsSOTrx(isSOTrx);
		wInvoice.setC_BPartner_ID(pg.getC_BPartner_ID());
		
		//	Date Invoice is Movement Date from Production
		wInvoice.setDateInvoiced (lines.get(0).getM_Production().getMovementDate());
		wInvoice.setM_PriceList_ID(MPriceList.getDefault(Env.getCtx(), isSOTrx).getM_PriceList_ID());
		wInvoice.setIsSOTrx(isSOTrx);
		wInvoice.setlbr_NFEntrada(lbr_NFEntrada);
		
		// Document Type doens't crate Nota Fiscal
		wInvoice.setC_DocTypeTarget_ID(doctype.getC_DocTypeInvoice_ID());

		//	Transaction Type
		wInvoice.setlbr_TransactionType (MLBRNotaFiscal.LBR_TRANSACTIONTYPE_Manufacturing);
			
		//	Business Partner Informations
		wInvoice.setC_BPartner_Location_ID(pg.getC_BPartner_Location_ID());			
		
		//
		invoice.save();
		
		//	Production Line
		for (MProductionLine line : lines)
		{
			//	Invoice only End Product
			if (!line.isEndProduct())
				continue;
			
			// Add Product
			MProduct p = new MProduct (Env.getCtx(), line.getM_Product_ID(), invoice.get_TrxName());
			
			MInvoiceLine iLine = new MInvoiceLine (invoice);
			iLine.setProduct(p);
			iLine.setC_UOM_ID (p.getC_UOM_ID());
			
			int p_LBR_CFOP_ID = line.get_ValueAsInt("LBR_CFOP_ID");
			
			iLine.set_ValueOfColumn("LBR_CFOP_ID", p_LBR_CFOP_ID);
			
			iLine.setLine(lineNo++);			
			
			//	Tax
			if (p_LBR_Tax_ID > 0)
			{
				MLBRTax tax = new MLBRTax (Env.getCtx(), p_LBR_Tax_ID, invoice.get_TrxName());
				MLBRTax newTax = tax.copyTo();
				//
				iLine.set_ValueOfColumn("LBR_Tax_ID", newTax.getLBR_Tax_ID());
			}
			
			//	Qty can not be negative
			iLine.setQty ((line.getMovementQty().signum() > 0 ? line.getMovementQty() : line.getMovementQty().negate()));
			
			if (!iLine.save())
				throw new IllegalStateException("Could not create Invoice Line (o)");
			if (log.isLoggable(Level.FINE)) log.fine(line.toString());
		
			//	Production
			MProduction production = (MProduction) line.getM_Production();
			
			//	Cost Price
			iLine.setPrice((BigDecimal)production.get_Value("PriceEntered"));				
			
			iLine.saveEx();
			//
			totalItem = totalItem.add(iLine.getLineTotalAmt());
			
			MProductionLine pLine = new MProductionLine (Env.getCtx(), line.getM_ProductionLine_ID(), iLine.get_TrxName());

			//	Add Invoice Line on Nota Fiscal Line
			if (pLine.get_ValueAsInt("LBR_NotaFiscalLine_ID") > 0)
			{
				MLBRNotaFiscalLine nfl = new MLBRNotaFiscalLine (Env.getCtx(), pLine.get_ValueAsInt("LBR_NotaFiscalLine_ID"), pLine.get_TrxName());
				nfl.setC_InvoiceLine_ID(iLine.getC_InvoiceLine_ID());
				nfl.save();
			}
			
		}
		
		//
		invoice.setTotalLines(totalItem);
		invoice.setGrandTotal(totalItem);
		
		//
		invoice.save();
		
		//	Complete Invoice
		if (MSysConfig.getBooleanValue("LBR_POG_INVOICE_COMPLETE", false, invoice.getAD_Client_ID()))
		{
			invoice.setDocStatus(invoice.completeIt());		
			invoice.save();
		}
	}	//	InvoiceGenerate
	
	
	/**
	 * 	Retrieve the data of components
	 * 	@return
	 * @throws Exception 
	 */
	private Vector<Vector<Object>> getComponentData () throws Exception
	{
		Vector<Integer> selected = new Vector<Integer>();
		int rows = miniTableProd.getRowCount();
		for (int i = 0; i < rows; i++)
		{
			if (((Boolean)miniTableProd.getValueAt(i, 0)).booleanValue())
			{
				KeyNamePair knp = (KeyNamePair) miniTableProd.getValueAt(i, 1);
				selected.add(knp.getKey());
			}
		}
		
		if (selected.size() < 1)
		{
			grpSelectionComp.setVisible(false);
			throw new Exception ("Sem produtos selecionados");
		}			
		
		Vector<Vector<Object>> data = new Vector<Vector<Object>>();
		StringBuilder sql = new StringBuilder("SELECT pl.Description, ");
		sql.append("pr.Value || ' - ' || pr.Name AS ProductName, pl.M_Product_ID, ");
		sql.append("SUM (pl.QtyUsed) AS QtyUsed, SUM (pl.PlannedQty) AS PlannedQty, ");
		sql.append("ROUND((COALESCE(mov.MovementQty, 0) / (SELECT sum (PlannedQty) FROM M_ProductionLine plz WHERE EXISTS ");
		sql.append("(SELECT 1 FROM M_Production WHERE M_Production_ID = plz.M_Production_ID AND LBR_ProductionGroup_ID = ?) ");
		sql.append("AND plz.M_Product_ID = pl.M_Product_ID) * SUM(pl.PlannedQty)),2) as MovementQty ");
		sql.append("FROM M_ProductionLine pl ");
		sql.append("INNER JOIN M_Product pr ON (pr.M_Product_ID=pl.M_Product_ID) ");
		sql.append("INNER JOIN M_Production p ON (p.M_Production_ID = pl.M_Production_ID) ");
		sql.append("LEFT JOIN (SELECT sum (MovementQty) AS MovementQty, M_Product_ID, LBR_ProductionGroup_ID, DocStatus, M_LocatorTo_ID FROM M_MovementLine ml ");
		sql.append("INNER JOIN M_Movement m ON m.M_Movement_ID = ml.M_Movement_ID GROUP BY M_Product_ID, LBR_ProductionGroup_ID, DocStatus, M_LocatorTo_ID) mov ");
		sql.append("ON mov.M_Product_ID = pr.M_Product_ID AND mov.LBR_ProductionGroup_ID = ? AND mov.DocStatus IN ('CO', 'CL') ");
		sql.append("AND (SELECT Value FROM M_Locator WHERE M_Locator_ID = mov.M_LocatorTo_ID) LIKE 'PRD%' ");
		sql.append("WHERE pl.LBR_NotaFiscalLine_ID IS NULL AND pl.IsEndProduct='N' AND pr.ProductType='I' AND pl.M_Production_ID IN (");//.append(" AND LBR_Ref_Production_ID IS NULL ");
		sql.append(String.join (",", Collections.nCopies (selected.size(), "?")));
		sql.append(") AND pl.IsActive='Y' ");
		
		if (log.isLoggable(Level.FINE)) log.fine("InvSQL=" + sql.toString());
		
		// role security
		sql = new StringBuilder( MRole.getDefault(Env.getCtx(), false).addAccessSQL(sql.toString(), "pl", MRole.SQL_FULLYQUALIFIED, MRole.SQL_RO ));
		sql.append(" GROUP BY pl.Description, pl.M_Product_ID, pr.Value, pr.Name, mov.MovementQty");
		sql.append(" ORDER BY pr.Value ");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			int index = 1;
			pstmt = DB.prepareStatement(sql.toString(), null);
			
			pstmt.setInt(index++, m_LBR_ProductionGroup_ID);
			pstmt.setInt(index++, m_LBR_ProductionGroup_ID);
			for (Integer s : selected)
				pstmt.setInt(index++, s);
			//
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				Vector<Object> line = new Vector<Object>();
				line.add(new Boolean(false));					//  0-Selection
				line.add(rs.getString("Description"));			//  1-Description
				KeyNamePair knp = new KeyNamePair(rs.getInt("M_Product_ID"), rs.getString("ProductName"));
				//
				line.add(knp);									//  2-ProductName
				line.add(rs.getBigDecimal("PlannedQty"));		//  3-Production Qty
				line.add(rs.getBigDecimal("QtyUsed"));			//  4-QtyUsed
				line.add(rs.getBigDecimal("MovementQty"));		//	5-Movement Qty
				data.add(line);
			}
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally
		{
			DB.close(rs, pstmt);
		}
		
		return data;
	}	//	getProductionData
	
	/**
	 * 	Retrieve the data
	 * 	@return
	 */
	private Vector<Vector<Object>> getProductionData ()
	{
		Vector<Vector<Object>> data = new Vector<Vector<Object>>();
		StringBuilder sql = new StringBuilder("SELECT p.M_Production_ID, p.DocumentNo, p.Name, ");
		sql.append("p.MovementDate, pr.Value || ' - ' || pr.Name AS ProductName, ");
		sql.append("p.ProductionQty, p.ProductionQty AS MovementQty, p.DocStatus, p.PriceEntered, ");
		sql.append("(p.PriceEntered * p.ProductionQty) AS GrandTotal, ");
		sql.append("(SELECT CASE WHEN LBR_NotaFiscalLine_ID IS NULL THEN FALSE ELSE TRUE END FROM M_ProductionLine ");
		sql.append("WHERE M_Production_ID = p.M_Production_ID AND M_Product_ID = p.M_Product_ID) AS IsInvoiced ");
		sql.append("FROM M_Production p ");
		sql.append("INNER JOIN M_Product pr ON (pr.M_Product_ID=p.M_Product_ID) ");
		sql.append("WHERE p.LBR_ProductionGroup_ID=? AND p.DocStatus NOT IN ('VO', 'RE') ");
		sql.append("AND p.IsActive='Y' AND p.IsCreated='Y' ");
		sql.append("AND EXISTS (SELECT 1 FROM M_ProductionLine plz, M_Production pz, M_Product pdz WHERE plz.M_Production_ID = pz.M_Production_ID ");
		sql.append("AND plz.M_Production_ID = p.M_Production_ID AND pdz.M_Product_ID = plz.M_Product_ID ");
		sql.append("AND pdz.ProductType='I' AND plz.LBR_NotaFiscalLine_ID IS NULL)");
		
		if (log.isLoggable(Level.FINE)) log.fine("InvSQL=" + sql.toString());
		
		// role security
		sql = new StringBuilder( MRole.getDefault(Env.getCtx(), false).addAccessSQL(sql.toString(), "p", MRole.SQL_FULLYQUALIFIED, MRole.SQL_RO ));
		sql.append(" ORDER BY p.DocumentNo ");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setInt(1, m_LBR_ProductionGroup_ID);
			
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				Vector<Object> line = new Vector<Object>();
				line.add(new Boolean(false));					//  0-Selection
				KeyNamePair knp = new KeyNamePair(rs.getInt("M_Production_ID"), rs.getString("DocumentNo"));
				//
				line.add(knp);									//  1-DocumentNo
				line.add(rs.getTimestamp("MovementDate"));		//  2-MovementDate
				line.add(rs.getString("ProductName"));			//  3-Product
				line.add(rs.getBigDecimal("ProductionQty"));	//  4-Production Qty
				line.add(rs.getBigDecimal("MovementQty"));		//  5-Movement Qty
				line.add(rs.getBigDecimal("PriceEntered"));		//  6-Price Entered
				line.add(rs.getBigDecimal("GrandTotal"));		//  7-Grand Total
				line.add(rs.getBoolean("IsInvoiced"));			//  8-Is Invoiced
				String status = rs.getString("DocStatus");		//  9-Document Status
				line.add(MRefList.getListName(Env.getCtx(), MLBRProductionGroup.DOCSTATUS_AD_Reference_ID, status));
				data.add(line);
			}
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally
		{
			DB.close(rs, pstmt);
		}
		
		return data;
	}	//	getProductionData
	
	/**
	 * 	When setting process info
	 */
	@Override
	public void setProcessInfo (ProcessInfo pi)
	{
		super.setProcessInfo(pi);
		//
		if (pi != null && pi.getRecord_ID() > 0 
				&& pi.getTable_ID() == MLBRProductionGroup.Table_ID)
		{
			m_LBR_ProductionGroup_ID = pi.getRecord_ID();
			//
			createProductionGrid ();
		}
	}	//	setProcessInfo
}	//	WPOGInvoiceGen
