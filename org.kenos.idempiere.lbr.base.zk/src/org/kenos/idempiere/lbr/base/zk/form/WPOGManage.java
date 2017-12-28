package org.kenos.idempiere.lbr.base.zk.form;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Vector;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.webui.component.ConfirmPanel;
import org.adempiere.webui.component.Label;
import org.adempiere.webui.component.ListModelTable;
import org.adempiere.webui.component.Listbox;
import org.adempiere.webui.component.WListbox;
import org.adempiere.webui.event.WTableModelEvent;
import org.adempiere.webui.event.WTableModelListener;
import org.adempiere.webui.panel.ADForm;
import org.adempiere.webui.panel.IFormController;
import org.adempiere.webui.session.SessionManager;
import org.compiere.model.MProduction;
import org.compiere.model.MProductionLine;
import org.compiere.model.MRole;
import org.compiere.process.ProcessInfo;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;
import org.kenos.idempiere.lbr.base.model.MLBRProductionGroup;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zk.ui.event.Events;
import org.zkoss.zul.Groupbox;
import org.zkoss.zul.Separator;

/**
 * 		Manage Production Order
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: WPOGManage.java, v1.0 2017/12/26 18:09:16 PM, ralexsander Exp $
 */
public class WPOGManage extends ADForm implements IFormController, WTableModelListener, EventListener<Event>
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = 1L;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger (WPOGManage.class);
	
	/** Production Group	*/
	private int m_LBR_ProductionGroup_ID = -1;

	/**	Panels			*/
	private ConfirmPanel confirmPanel = new ConfirmPanel(true);
	private Groupbox grpSelectionProd = new Groupbox();
	private Groupbox grpSelectionComp = new Groupbox();
	private Label l_help = new Label (Msg.getMsg (Env.getCtx(), "LBR_POGManageHelp"));
	
	/**	Result Table	*/
	private WListbox miniTableProd = new WListbox();
	private WListbox miniTableComp = new WListbox();
	
	/**	Modes			*/
	private Listbox m_mode = new Listbox();
	private static final int MODE_SPLIT			= 1;
	private static final int MODE_SPLIT_COMP	= 2;
	private static final int MODE_DIST			= 3;
	private static final int MODE_DIST_COMP		= 4;
	
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
			
			//	Mode
			m_mode.setMold("select");
			m_mode.addItem(new KeyNamePair (1, "Dividir"));
//			m_mode.addItem(new KeyNamePair (2, "Dividir e Completar"));
			m_mode.addItem(new KeyNamePair (3, "Distribuir"));
//			m_mode.addItem(new KeyNamePair (4, "Distribuir e Completar"));
			m_mode.addEventListener(Events.ON_SELECT, this);
			
			//	Top Selection Panel
			grpSelectionProd.appendChild(l_help);
			grpSelectionProd.appendChild(new Separator());
			grpSelectionProd.appendChild(m_mode);
			grpSelectionProd.appendChild(new Separator());
			grpSelectionProd.appendChild(miniTableProd);
			grpSelectionComp.appendChild(miniTableComp);
			grpSelectionComp.setVisible(false);
			
			//	Center
			createMainPanel ();
//			updatePackageWeight ();

			confirmPanel.addActionListener(Events.ON_CLICK, this);
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
		this.appendChild(new Separator());
		this.appendChild(grpSelectionComp);
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
		miniTableProd.setColumnClass (index++, KeyNamePair.class, true); 		//  1-DocumentNo
		miniTableProd.setColumnClass (index++, Timestamp.class, true);		//  2-MovementDate
		miniTableProd.setColumnClass (index++, String.class, true);			//  3-Product
		miniTableProd.setColumnClass (index++, BigDecimal.class, true);		//  4-Production Qty
		miniTableProd.setColumnClass (index++, BigDecimal.class, false);	//  5-Movement Qty
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
		miniTableComp.setColumnClass (index++, BigDecimal.class, false);	//  4-Movement Qty
	}	//	createComponentGrid

	@Override
	public void tableChanged(WTableModelEvent event)
	{
		//	Clear
		int mode = m_mode.getSelectedItem().toKeyNamePair().getKey();
		if (mode == MODE_DIST || mode == MODE_DIST)
			try
			{
				createComponentGrid ();
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
		String eventName = e.getName();
		if (log.isLoggable(Level.CONFIG)) log.config(eventName);
		
		//	Event source
		Object source = e.getTarget();
		
		//	All clicks events
		if (Events.ON_CLICK.equals(eventName))
		{
			if (confirmPanel.getButton(ConfirmPanel.A_OK).equals(source))
			{
				int mode = m_mode.getSelectedItem().toKeyNamePair().getKey();
				
				//	Split production order
				if (mode == MODE_SPLIT || mode == MODE_SPLIT_COMP)
				{
					List<ProductionSplitter> ps = new ArrayList<ProductionSplitter>();
					
					//  Process Lines
					int rows = miniTableProd.getRowCount();
					for (int i = 0; i < rows; i++)
					{
						if (((Boolean)miniTableProd.getValueAt(i, 0)).booleanValue())
						{
							KeyNamePair knp = (KeyNamePair) miniTableProd.getValueAt(i, 1);
							//
							int M_Production_ID = knp.getKey();
							//
							MProduction pplan_orig = new MProduction (Env.getCtx(), M_Production_ID, null);
							//
							BigDecimal oldQty = (BigDecimal) miniTableProd.getValueAt(i, 4);
							BigDecimal newQty = (BigDecimal) miniTableProd.getValueAt(i, 5);
							//
							if (oldQty == null || newQty == null
									|| oldQty.compareTo(Env.ZERO) <= 0
									|| newQty.compareTo(Env.ZERO) <= 0)
								continue;
							//
							BigDecimal remainQty = oldQty.subtract(newQty);
							//
							if (remainQty.compareTo(Env.ZERO) <= 0)
								throw new AdempiereException ("A quantidade movimentada deve ser menor que a quantidade de produção");
							
							ps.add(new ProductionSplitter(pplan_orig, oldQty, newQty, remainQty));
						}
					}
					
					if (ps.size() == 0)
						throw new AdempiereException ("Nenhum item selecionado");
					
					split (ps);
				}
				
				//	Distribute components to multiple production orders
				else if (mode == MODE_DIST || mode == MODE_DIST_COMP)
				{
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
					
					//	Start Distribution
					for (Integer M_Product_ID : products.keySet())
					{
						//	Count the current line
						int count = 1;
						
						//	Total number of lines
						int size = ((Integer) products.get (M_Product_ID).get (2)).intValue();
						
						//	Remaining quantity to be distributed
						BigDecimal planned = (BigDecimal) products.get (M_Product_ID).get (1);
						BigDecimal total = (BigDecimal) products.get (M_Product_ID).get (0);
						BigDecimal remaining = total;
						
						//	Distribute the qty
						for (MProductionLine pl : lines)
						{
							//	Not same product
							if (pl.getM_Product_ID() != M_Product_ID.intValue())
								continue;
							
							//	Qty
							BigDecimal qty = null;
							
							//	Last line, do not distribute, use all the remaining qty
							if (count == size)
								qty = remaining;
							
							//	Make the distribution
							else
							{
								qty = total.multiply (pl.getPlannedQty ()).divide (planned, pl.getM_Product().getC_UOM().getStdPrecision(), BigDecimal.ROUND_HALF_UP);
								remaining = remaining.subtract (qty);
								
								//	Increase the counter
								count++;
							}
							
							//	Save changes
							pl.setQtyUsed(qty);
							pl.save();
						}
					}
				}
				
				//	Refresh
				createProductionGrid ();
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
			}	
		}
		else if (Events.ON_SELECT.equals(eventName))
		{
			createProductionGrid ();
			//
			int mode = m_mode.getSelectedItem().toKeyNamePair().getKey();
			if (mode == MODE_SPLIT || mode == MODE_SPLIT_COMP)
				grpSelectionComp.setVisible(false);
			else
				grpSelectionComp.setVisible(true);
		}
	}	//	onEvent
	
	/**
	 * 	Split Production
	 * 
	 * @param M_Production_ID
	 * @param productions
	 * @return New ProductionID
	 */
	private int split (List<ProductionSplitter> productions)
	{
		if (productions == null || productions.size() == 0)
			return 0;
		
		for (ProductionSplitter psplit : productions)
		{
			MProduction prod_orig = psplit.prod;
			MProduction prod_new = new MProduction (Env.getCtx(), 0, null);
			MProduction.copyValues (prod_orig, prod_new);
			
			//		Verifica outras ordens parciais para preencher o sufixo
			int next = DB.getSQLValue(null, "SELECT COALESCE(COUNT(*),0)+1 FROM M_Production WHERE LBR_Ref_Production_ID=?", prod_orig.getM_Production_ID());
			prod_new.set_CustomColumn("DocumentNo", (String) prod_orig.get_Value("DocumentNo") + "-" + next);
			prod_new.set_CustomColumn("LBR_Ref_Production_ID", prod_orig.getM_Production_ID());
			prod_new.setAD_Org_ID(prod_orig.getAD_Org_ID());
			prod_new.setProductionQty(psplit.newQty);
			prod_new.setIsCreated(MProduction.ISCREATED_Yes);
			prod_new.save();
			//
			MProductionLine[] lines = prod_orig.getLines ();
			prod_orig.setProductionQty(psplit.remainQty);
			prod_orig.save();
			//
			for (MProductionLine line : lines)
			{
				BigDecimal unitQty = line.getPlannedQty().divide(psplit.oldQty, 16, BigDecimal.ROUND_HALF_UP);
				MProductionLine line_new = new MProductionLine (prod_new);
				//	***	Nova Linha
				line_new.setM_Locator_ID(line.getM_Locator_ID());
				line_new.setDescription(line.getDescription());
				line_new.setM_AttributeSetInstance_ID(line.getM_AttributeSetInstance_ID());
				line_new.setM_Product_ID(line.getM_Product_ID());
				line_new.setPlannedQty(unitQty.multiply(psplit.newQty));
				line_new.setQtyUsed(line_new.getPlannedQty());
				line_new.setLine(line_new.getLine());
				if (line.isEndProduct())
				{
					line_new.setIsEndProduct(true);
					line_new.setMovementQty(line_new.getPlannedQty());
				}
				line_new.save();
				//	***	Linha Antiga
				line.setPlannedQty(unitQty.multiply(psplit.remainQty));
				line.setQtyUsed(line.getPlannedQty());
				if (line.isEndProduct())
					line.setMovementQty(line.getPlannedQty());
				line.save();
			}
		}
		//
		return 0;
	}	//	split
	
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
			throw new Exception ("Sem produtos selecionados");
		
		Vector<Vector<Object>> data = new Vector<Vector<Object>>();
		StringBuilder sql = new StringBuilder("SELECT pl.Description, ");
		sql.append("pr.Value || ' - ' || pr.Name AS ProductName, pl.M_Product_ID, ");
		sql.append("SUM (pl.QtyUsed) AS QtyUsed, SUM (pl.PlannedQty) AS PlannedQty FROM ");
		sql.append("M_ProductionLine pl ");
		sql.append("INNER JOIN M_Product pr ON (pr.M_Product_ID=pl.M_Product_ID) ");
		sql.append("WHERE pl.IsEndProduct='N' AND pl.M_Production_ID IN (");//.append(" AND LBR_Ref_Production_ID IS NULL ");
		sql.append(String.join (",", Collections.nCopies (selected.size(), "?")));
		sql.append(") AND pl.IsActive='Y' ");
		
		if (log.isLoggable(Level.FINE)) log.fine("InvSQL=" + sql.toString());
		
		// role security
		sql = new StringBuilder( MRole.getDefault(Env.getCtx(), false).addAccessSQL(sql.toString(), "pl", MRole.SQL_FULLYQUALIFIED, MRole.SQL_RO ));
		sql.append(" GROUP BY pl.Description, pl.M_Product_ID, pr.Value, pr.Name");
		sql.append(" ORDER BY pr.Value ");

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			int index = 1;
			pstmt = DB.prepareStatement(sql.toString(), null);
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
				line.add(rs.getBigDecimal("QtyUsed"));			//  4-Movement Qty
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
		sql.append("p.ProductionQty, p.ProductionQty AS MovementQty FROM ");
		sql.append("M_Production p ");
		sql.append("INNER JOIN M_Product pr ON (pr.M_Product_ID=p.M_Product_ID) ");
		sql.append("WHERE p.LBR_ProductionGroup_ID=? ");
		sql.append("AND p.Processed='N' AND p.IsActive='Y' AND p.IsCreated='Y' ");
		
		//	Do not allow double splitting
		int mode = m_mode.getSelectedItem().toKeyNamePair().getKey();
		if (mode == MODE_SPLIT || mode == MODE_SPLIT_COMP)
			sql.append("AND LBR_Ref_Production_ID IS NULL ");
		
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
}	//	WPOGManage

class ProductionSplitter
{
	public MProduction prod;
	public BigDecimal oldQty;
	public BigDecimal newQty;
	public BigDecimal remainQty;
	
	public ProductionSplitter(MProduction prod, BigDecimal oldQty,
			BigDecimal newQty, BigDecimal remainQty)
	{
		this.prod = prod;
		this.oldQty = oldQty;
		this.newQty = newQty;
		this.remainQty = remainQty;
	}	//	ProductionSplitter
}	//	ProductionSplitter
