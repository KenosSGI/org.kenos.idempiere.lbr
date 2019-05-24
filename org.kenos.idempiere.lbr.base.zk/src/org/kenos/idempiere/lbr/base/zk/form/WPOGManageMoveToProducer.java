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

import org.adempiere.webui.component.ConfirmPanel;
import org.adempiere.webui.component.Datebox;
import org.adempiere.webui.component.Label;
import org.adempiere.webui.component.ListModelTable;
import org.adempiere.webui.component.WListbox;
import org.adempiere.webui.editor.WSearchEditor;
import org.adempiere.webui.event.ValueChangeEvent;
import org.adempiere.webui.event.ValueChangeListener;
import org.adempiere.webui.event.WTableModelEvent;
import org.adempiere.webui.event.WTableModelListener;
import org.adempiere.webui.panel.ADForm;
import org.adempiere.webui.panel.IFormController;
import org.adempiere.webui.session.SessionManager;
import org.adempiere.webui.util.ZKUpdateUtil;
import org.compiere.model.MLookup;
import org.compiere.model.MLookupFactory;
import org.compiere.model.MMovement;
import org.compiere.model.MMovementLine;
import org.compiere.model.MOrder;
import org.compiere.model.MRole;
import org.compiere.process.ProcessInfo;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zk.ui.event.Events;
import org.zkoss.zul.Groupbox;
import org.zkoss.zul.Separator;
import org.zkoss.zul.Space;

/**
 * 		Manage Material before Sent to Producer
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: WPOGManageMoveToProducer.java, v1.0 2018/06/28 10:00:00 PM, rfeitosa Exp $
 */
public class WPOGManageMoveToProducer extends ADForm implements IFormController, WTableModelListener, EventListener<Event>, ValueChangeListener
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = 1L;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger (WPOGManageMoveToProducer.class);
	
	/**	Panels			*/
	private ConfirmPanel confirmPanel = new ConfirmPanel(true);
	private Groupbox grpSelectionMov = new Groupbox();
	private Groupbox grpSelectionComp = new Groupbox();
	private Label l_help = new Label (Msg.getMsg (Env.getCtx(), "LBR_POGManageMoveToProducerHelp"));
	private Label lBPartner = new Label();
	private WSearchEditor fBPartner;
	private Label lDateMovement = new Label();
	private Datebox fDateMovement = new Datebox();
	
	private Object m_C_BPartner_ID = null;
	public Timestamp		m_DateMovement 		= null;

	/**	Result Table	*/
	private WListbox miniTableMov = new WListbox();
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
		
			lBPartner.setText(Msg.translate(Env.getCtx(), "C_BPartner_ID"));
			MLookup bpartnerL = MLookupFactory.get (Env.getCtx(), this.getWindowNo(), 0, 2893, DisplayType.Search);
			fBPartner = new WSearchEditor ("C_BPartner_ID", false, false, true, bpartnerL);
			fBPartner.addValueChangeListener(this);
			
			fDateMovement.setName(MOrder.COLUMNNAME_DatePromised);
			fDateMovement.addEventListener(Events.ON_CHANGE, this);
			
			//	Top Selection Panel
			grpSelectionMov.appendChild(l_help);
			grpSelectionMov.appendChild(new Separator());
			grpSelectionMov.appendChild(lBPartner);
			grpSelectionMov.appendChild(new Space());
			ZKUpdateUtil.setHflex(fBPartner.getComponent(), "min");
			fBPartner.getComponent().setWidth("10px");
			grpSelectionMov.appendChild(fBPartner.getComponent());
			grpSelectionMov.appendChild(new Space());
			grpSelectionMov.appendChild(lDateMovement);
			grpSelectionMov.appendChild(new Space());
			grpSelectionMov.appendChild(fDateMovement);
			grpSelectionMov.appendChild(new Space());
			grpSelectionMov.appendChild(new Separator());
			grpSelectionMov.appendChild(miniTableMov);
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
		this.appendChild(grpSelectionMov);
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
	private void createMovementGrid ()
	{
		Properties ctx = Env.getCtx ();
		//
		Vector<String> columnNames = new Vector<String>();
		columnNames.add (Msg.translate(ctx, "Select"));
		columnNames.add (Msg.translate(ctx, "M_Movement_ID"));
		columnNames.add (Msg.translate(ctx, "MovementData"));
		columnNames.add (Msg.translate(ctx, "C_BPartner_ID"));
		columnNames.add (Msg.translate(ctx, "LBR_ProductionGroup_ID"));

		//	Clear
		miniTableMov.clear();
		
		//  Remove previous listeners
		miniTableMov.getModel().removeTableModelListener(this);
		
		//  Set Model
		ListModelTable modelI = new ListModelTable(getMovementData());
		modelI.addTableModelListener(this);
		miniTableMov.setData(modelI, columnNames);
		//
		int index=0;
		miniTableMov.setColumnClass (index++, Boolean.class, false);			//  0-Selection
		miniTableMov.setColumnClass (index++, KeyNamePair.class, true); 	//  1-DocumentNo
		miniTableMov.setColumnClass (index++, Timestamp.class, true);		//  2-Movement Date
		miniTableMov.setColumnClass (index++, String.class, true);				//	3-Business Partner
		miniTableMov.setColumnClass (index++, KeyNamePair.class, true);	//  4-Production Group
		
	}	//	createProductionGrid
	
	/**
	 * 	Create the Component Grid
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
		columnNames.add (Msg.translate(ctx, "Qty"));
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
		miniTableComp.setColumnClass (index++, BigDecimal.class, true);		//  3-Movement Qty
		miniTableComp.setColumnClass (index++, BigDecimal.class, false);	//  4-Movement Qty
	}	//	createComponentGrid

	@Override
	public void tableChanged(WTableModelEvent event)
	{
		try
		{
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
		String eventName = e.getName();
		if (log.isLoggable(Level.CONFIG)) log.config(eventName);
		
		//	Event source
		Object source = e.getTarget();
		
		//	All clicks events
		if (Events.ON_CLICK.equals(eventName))
		{
			if (confirmPanel.getButton(ConfirmPanel.A_OK).equals(source))
			{
				List<MMovement> movements = new ArrayList<MMovement>();
				List<MMovementLine> lines = new ArrayList<MMovementLine>();
				Map<Integer, Vector<Object>> products = new HashMap<Integer, Vector<Object>>();
				
				//  Process Lines, store all selected productions
				int rows = miniTableMov.getRowCount();
				for (int i = 0; i < rows; i++)
				{
					if (((Boolean)miniTableMov.getValueAt(i, 0)).booleanValue())
					{
						KeyNamePair knp = (KeyNamePair) miniTableMov.getValueAt(i, 1);
						//
						movements.add (new MMovement (Env.getCtx(), knp.getKey(), null));
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
						vec.add((BigDecimal) miniTableComp.getValueAt(i, 3));	//	1-Qty Movement
						vec.add(new Integer (0));								//	2-Number of Movement Lines for this product
						//
						products.put (knp.getKey(), vec);
					}
				}
				
				//	Store all Movement Lines that has selected products
				for (MMovement movement : movements)
				{	
					if (MMovement.DOCSTATUS_Completed.equals(movement.getDocStatus())
							|| MMovement.DOCSTATUS_Closed.equals(movement.getDocStatus()))
									continue;
					for (MMovementLine ml : movement.getLines(false))
					{
						if (products.containsKey (ml.getM_Product_ID()))
						{
							lines.add (ml);
							//
							Vector<Object> vec = products.get(ml.getM_Product_ID());
							Integer count = (Integer) vec.remove(2);
							
							//	Increase the Movement Line count
							vec.add (new Integer (count.intValue()+1));
						}
					}
				}	
				
				//	Start Distribution
				for (Integer M_Product_ID : products.keySet())
				{
					//	Count the current line
					int count = 0;
					
					//	Total number of lines
					int size = ((Integer) products.get (M_Product_ID).get (2)).intValue();
					
					//	Remaining quantity to be distributed
					BigDecimal planned = (BigDecimal) products.get (M_Product_ID).get (1);
					BigDecimal total = (BigDecimal) products.get (M_Product_ID).get (0);
					BigDecimal remaining = total.subtract(planned);
					
					//	Put the Remaining Qty on the Last Line of those Line with the same product
					for (MMovementLine ml : lines)
					{
						//	Not same product
						if (ml.getM_Product_ID() != M_Product_ID.intValue())
							continue;
				
						count++;
						
						//	Last line, do not distribute, use all the remaining qty
						if (count != size)
							continue;
											
						//	Save changes
						ml.setMovementQty(ml.getMovementQty().add(remaining));
						ml.save();
					}
				}
				createComponentGrid ();
				grpSelectionComp.setVisible(true);
			}
			else if (confirmPanel.getButton(ConfirmPanel.A_CANCEL).equals(source))
				SessionManager.getAppDesktop().closeActiveWindow();

			else if (confirmPanel.getButton(ConfirmPanel.A_REFRESH).equals(source))
			{
				//	Refresh
				createMovementGrid ();
				createComponentGrid ();
				grpSelectionComp.setVisible(true);
			}	
		}
		else if (fDateMovement.equals(e.getTarget()))
		{
			Date date = fDateMovement.getValue();
			if (date != null && date.getTime() > 0)
				m_DateMovement = new Timestamp (date.getTime());
			else
				m_DateMovement = null;
			
			if (fBPartner.getValue() != null && m_DateMovement != null)
			{	
				createMovementGrid ();	
				createComponentGrid ();
				grpSelectionComp.setVisible(true);
			}	
			else
			{
				createMovementGrid ();	
				grpSelectionComp.setVisible(false);
			}	
		}
	}	//	onEvent
		
	/**
	 * 	Retrieve the data of components
	 * 	@return
	 * @throws Exception 
	 */
	private Vector<Vector<Object>> getComponentData () throws Exception
	{
		Vector<Integer> selected = new Vector<Integer>();
		int rows = miniTableMov.getRowCount();
		for (int i = 0; i < rows; i++)
		{
			if (((Boolean)miniTableMov.getValueAt(i, 0)).booleanValue())
			{
				KeyNamePair knp = (KeyNamePair) miniTableMov.getValueAt(i, 1);
				selected.add(knp.getKey());
			}
		}
		
		if (miniTableMov.getRowCount() <= 0)
			throw new Exception ("Nenhum Envio ao Produtor Encontrado");
		
		if (selected.size() < 1 )
			throw new Exception ("Sem produtos selecionados");
		
		Vector<Vector<Object>> data = new Vector<Vector<Object>>();
		StringBuilder sql = new StringBuilder("SELECT ml.Description, ");
		sql.append("pr.Value || ' - ' || pr.Name AS ProductName, ml.M_Product_ID, ");
		sql.append("SUM (ml.MovementQty) AS MovementQty FROM ");
		sql.append("M_MovementLine ml ");
		sql.append("INNER JOIN M_Product pr ON (pr.M_Product_ID=ml.M_Product_ID) ");
		sql.append("WHERE pr.ProductType='I' AND ml.M_Movement_ID IN (");//.append(" AND LBR_Ref_Production_ID IS NULL ");
		sql.append(String.join (",", Collections.nCopies (selected.size(), "?")));
		sql.append(") AND ml.IsActive='Y' ");
		
		if (log.isLoggable(Level.FINE)) log.fine("InvSQL=" + sql.toString());
		
		// role security
		sql = new StringBuilder( MRole.getDefault(Env.getCtx(), false).addAccessSQL(sql.toString(), "ml", MRole.SQL_FULLYQUALIFIED, MRole.SQL_RO ));
		sql.append(" GROUP BY ml.Description, ml.M_Product_ID, pr.Value, pr.Name");
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
				line.add(Boolean.TRUE);					//  0-Selection
				line.add(rs.getString("Description"));			//  1-Description
				KeyNamePair knp = new KeyNamePair(rs.getInt("M_Product_ID"), rs.getString("ProductName"));
				//
				line.add(knp);												//  2-ProductName
				line.add(rs.getBigDecimal("MovementQty"));		//  3-Production Qty
				line.add(rs.getBigDecimal("MovementQty"));			//  4-Movement Qty
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
	private Vector<Vector<Object>> getMovementData ()
	{
		int bpartner_id = 0;
		
		if (m_C_BPartner_ID != null)
			bpartner_id =(Integer) m_C_BPartner_ID;			
		
		Vector<Vector<Object>> data = new Vector<Vector<Object>>();
		StringBuilder sql = new StringBuilder("SELECT m.M_Movement_ID, m.DocumentNo AS Mov_DocumentNo, ");
		sql.append("bp.Value || ' - ' || bp.Name AS Name, m.MovementDate, m.C_BPartner_ID,  p.LBR_ProductionGroup_ID, p.DocumentNo FROM ");
		sql.append("LBR_ProductionGroup p ");
		sql.append("INNER JOIN M_Movement m ON m.LBR_ProductionGroup_ID = p.LBR_ProductionGroup_ID ");
		sql.append("INNER JOIN C_BPartner bp ON bp.C_BPartner_ID = m.C_BPartner_ID ");
		sql.append("WHERE m.MovementDate = ? AND m.C_BPartner_ID = ? ");
		sql.append("AND m.DocStatus NOT IN ('CO','CL','RE','VO') AND m.IsActive='Y' AND m.processed = 'N' ");
		
		if (log.isLoggable(Level.FINE)) log.fine("InvSQL=" + sql.toString());
		
		// role security
		sql = new StringBuilder( MRole.getDefault(Env.getCtx(), false).addAccessSQL(sql.toString(), "p", MRole.SQL_FULLYQUALIFIED, MRole.SQL_RO ));
		sql.append(" GROUP BY p.LBR_ProductionGroup_ID, p.DocumentNo, bp.Value, bp.Name, m.MovementDate, m.C_BPartner_ID, m.M_Movement_ID");
		sql.append(" ORDER BY p.DocumentNo ");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setTimestamp (1,  m_DateMovement);
			pstmt.setInt (2,  bpartner_id);
			
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				Vector<Object> line = new Vector<Object>();
				line.add(Boolean.TRUE);					//  0-Selection
				KeyNamePair knp = new KeyNamePair(rs.getInt("M_Movement_ID"), rs.getString("Mov_DocumentNo"));		
				
				KeyNamePair knpPg = new KeyNamePair(rs.getInt("LBR_ProductionGroup_ID"), rs.getString("DocumentNo"));
				
				//
				line.add(knp);												//  1-DocumentNo
				line.add(rs.getTimestamp("MovementDate"));	//  2-MovementDate
				line.add(rs.getString("Name"));						//  3-Business Partner
				line.add(knpPg);											//  4-ProductionGroup
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
		if (pi != null)
		{
			try
			{
				//
				createMovementGrid ();
				createComponentGrid ();
				grpSelectionComp.setVisible(true);
			}
			catch (Exception error)
			{
				log.severe(error.getMessage());
			}
		}
	}	//	setProcessInfo
	
	/**
	 *	Value Change Listener - requery
	 *  @param e event
	 */
	public void valueChange(ValueChangeEvent e) 
	{
		if (log.isLoggable(Level.INFO)) log.info(e.getPropertyName() + "=" + e.getNewValue());
		
		if (e.getPropertyName().equals("C_BPartner_ID"))
		{
			m_C_BPartner_ID = e.getNewValue();
			fBPartner.setValue(m_C_BPartner_ID);	//	display value
			
			if (fBPartner.getValue() != null && m_DateMovement != null)
			{
				try
				{
					createMovementGrid ();	
					createComponentGrid ();
					grpSelectionComp.setVisible(true);
				}
				catch (Exception error)
				{
					log.severe(error.getMessage());
				}
			}
			else
			{
				createMovementGrid ();	
				grpSelectionComp.setVisible(false);
			}	
		}

	}	//	vetoableChange
	
}	//	WPOGManageMoveToProducer