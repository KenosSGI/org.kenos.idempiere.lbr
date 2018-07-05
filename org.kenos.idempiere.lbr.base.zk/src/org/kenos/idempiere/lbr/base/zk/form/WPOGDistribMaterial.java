package org.kenos.idempiere.lbr.base.zk.form;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Properties;
import java.util.Vector;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.webui.component.ConfirmPanel;
import org.adempiere.webui.component.Label;
import org.adempiere.webui.component.ListModelTable;
import org.adempiere.webui.component.WListbox;
import org.adempiere.webui.event.WTableModelEvent;
import org.adempiere.webui.event.WTableModelListener;
import org.adempiere.webui.panel.ADForm;
import org.adempiere.webui.panel.IFormController;
import org.adempiere.webui.session.SessionManager;
import org.compiere.model.MDocType;
import org.compiere.model.MLocator;
import org.compiere.model.MMovement;
import org.compiere.model.MMovementLine;
import org.compiere.model.MRole;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfo;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.kenos.idempiere.lbr.base.model.MLBRProductionGroup;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zk.ui.event.Events;
import org.zkoss.zul.Groupbox;
import org.zkoss.zul.Separator;

/**
 * 		Distribute the Remaining Material sent to Industrialization
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: WPOGDistribMaterial.java, v1.0 2018/06/28 10:00:00 PM, rfeitosa Exp $
 */
public class WPOGDistribMaterial extends ADForm implements IFormController, WTableModelListener, EventListener<Event>
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = 1L;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger (WPOGDistribMaterial.class);
	
	/** Production Group	*/
	private int m_LBR_ProductionGroup_ID = -1;

	/**	Panels			*/
	private ConfirmPanel confirmPanel = new ConfirmPanel(true);
	private Groupbox grpSelectionIndLocator = new Groupbox();
	private Groupbox grpSelectionComp = new Groupbox();
	private Label l_help = new Label (Msg.getMsg (Env.getCtx(), "LBR_POGDistribMaterialHelp"));
	
	/**	Result Table	*/
	private WListbox miniTableIndLocator = new WListbox();
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
			
			//	Top Selection Panel
			grpSelectionComp.appendChild(l_help);
			grpSelectionComp.appendChild(new Separator());
			grpSelectionComp.appendChild(miniTableComp);
			grpSelectionIndLocator.appendChild(miniTableIndLocator);

			grpSelectionIndLocator.setVisible(false);
			
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
		this.appendChild(grpSelectionComp);
		this.appendChild(new Separator());
		this.appendChild(grpSelectionIndLocator);
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
	 * @throws Exception 
	 */
	private void createComponentGrid ()
	{
		Properties ctx = Env.getCtx ();
		//
		Vector<String> columnNames = new Vector<String>();
		columnNames.add (Msg.translate(ctx, "Select"));
		columnNames.add (Msg.translate(ctx, "Description"));
		columnNames.add (Msg.translate(ctx, "M_Product_ID"));
		columnNames.add (Msg.translate(ctx, "PlannedQty"));
		columnNames.add (Msg.translate(ctx, "QtyUsed"));
		columnNames.add (Msg.translate(ctx, "M_Locator_ID"));
		columnNames.add (Msg.translate(ctx, "QtyOnHand"));

		//	Clear
		miniTableIndLocator.clear();
		
		//  Remove previous listeners
		miniTableComp.getModel().removeTableModelListener(this);
		
		//	Not Allow Multi Selection
		miniTableComp.setMultiSelection(false);
		
		//  Set Model
		ListModelTable modelI = new ListModelTable(getComponentData());
		modelI.addTableModelListener(this);
		miniTableComp.setData(modelI, columnNames);
		//
		int index=0;
		miniTableComp.setColumnClass (index++, Boolean.class, false);		//  0-Selection
		miniTableComp.setColumnClass (index++, String.class, true); 		//  1-Description
		miniTableComp.setColumnClass (index++, KeyNamePair.class, true);	//  2-Product
		miniTableComp.setColumnClass (index++, BigDecimal.class, true);		//  3-Production Qty
		miniTableComp.setColumnClass (index++, BigDecimal.class, true);		//  4-Movement Qty
		miniTableComp.setColumnClass (index++, String.class, true);			//  5-Locator
		miniTableComp.setColumnClass (index++, BigDecimal.class, true);		//  6-Qty On Hand		
	}	//	createComponentGrid
	
	/**
	 * 	Create the Industrialization's Locator Grid
	 */
	private void createIndLocatorGrid () throws Exception
	{
		Properties ctx = Env.getCtx ();
		//
		Vector<String> columnNames = new Vector<String>();
		columnNames.add (Msg.translate(ctx, "Select"));
		columnNames.add (Msg.translate(ctx, "M_Locator_ID"));
		columnNames.add (Msg.translate(ctx, "Created"));
		columnNames.add (Msg.translate(ctx, "M_Product_ID"));
		columnNames.add (Msg.translate(ctx, "QtyOnHand"));
		columnNames.add (Msg.translate(ctx, "M_AttributeSetInstance_ID"));
		
		//  Remove previous listeners
		miniTableIndLocator.getModel().removeTableModelListener(this);
		
		//  Set Model
		ListModelTable modelI = new ListModelTable(getIndLocatorData());
		miniTableIndLocator.setData(modelI, columnNames);
		//
		int index=0;
		miniTableIndLocator.setColumnClass (index++, Boolean.class, false);			//  0-Selection
		miniTableIndLocator.setColumnClass (index++, KeyNamePair.class, true); 		//  1-Locator
		miniTableIndLocator.setColumnClass (index++, Timestamp.class, true); 		//  2-Created
		miniTableIndLocator.setColumnClass (index++, KeyNamePair.class, true);		//  3-Product
		miniTableIndLocator.setColumnClass (index++, String.class, true);			//  4-QtyOnHand
		miniTableIndLocator.setColumnClass (index++, Integer.class, true);			//  5-Attribute Set Instance
	}	//	createIndLocatorGrid

	@Override
	public void tableChanged(WTableModelEvent event)
	{
		try
		{
			createIndLocatorGrid ();
			grpSelectionIndLocator.setVisible(true);
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
				//  Process Lines, store all selected productions
				int rows = miniTableIndLocator.getRowCount();
				
				//	Process components, store all selected components that has qty changed
				rows = miniTableIndLocator.getRowCount();
				
				if (rows > 0)
				{
					//	Create Trasaction to controll the process. If there is an error, it's necessary to force a Rollback. It will avoid problem on Storage
					String trxName = Trx.createTrxName();
					try
					{
						//	Production Group
						MLBRProductionGroup pg = new MLBRProductionGroup (Env.getCtx(), m_LBR_ProductionGroup_ID, trxName);
						
						//	Locator Destiny
						MLocator locDest = new Query (Env.getCtx(), MLocator.Table_Name, "Value = ? AND AD_Client_ID = ?", pg.get_TrxName())
											.setParameters("PRD-" + pg.getDocumentNo(),pg.getAD_Client_ID())
											.first();
						
						//	If not null
						if (locDest == null)
							throw new Exception ("Localizador de Destino não encontrado");
						
						//	Create Movement
						MMovement movement = new MMovement (pg.getCtx(), 0, pg.get_TrxName());
						movement.setAD_Org_ID(pg.getAD_Org_ID());
						movement.setC_DocType_ID (MDocType.getDocType(MDocType.DOCBASETYPE_MaterialMovement));
						movement.setC_BPartner_ID(pg.getC_BPartner_ID());
						movement.setC_BPartner_Location_ID(pg.getC_BPartner_Location_ID());
						movement.setDescription ("Documento de Distribuição de Insumo Remanescente para a OP: " + pg.get_ValueAsString ("DocumentNo"));
						movement.saveEx();
						
						//	Add Lines
						for (int i = 0; i < rows; i++)
						{
							if (((Boolean)miniTableIndLocator.getValueAt(i, 0)).booleanValue())
							{
								KeyNamePair knpProd = (KeyNamePair) miniTableIndLocator.getValueAt(i, 3);
								KeyNamePair knpLoc = (KeyNamePair) miniTableIndLocator.getValueAt(i, 1);
								BigDecimal qtyOnHand = (BigDecimal) miniTableIndLocator.getValueAt(i, 4);
								int attributeSetInstance_ID = (Integer) miniTableIndLocator.getValueAt(i, 5);
								
								MMovementLine ml = new MMovementLine (movement);
								
								//	Movement details
								ml.setM_Product_ID(knpProd.getKey());
								ml.setM_Locator_ID(knpLoc.getKey());
								ml.setM_LocatorTo_ID(locDest.getM_Locator_ID());
								ml.setMovementQty(qtyOnHand);
								ml.setM_AttributeSetInstanceTo_ID(attributeSetInstance_ID);
								//
								ml.saveEx();
			
							}
						}
						
						//	Complete Movement
						if (MMovement.DOCSTATUS_Completed.equals(movement.completeIt()))
						{	
							movement.setDocStatus(MMovement.DOCSTATUS_Completed);
							movement.saveEx();
						}
						else
							throw new AdempiereException("Movimentação não Completada");
					
						Trx.get (trxName, false).commit();
					}
					catch (Exception erro)
					{
						Trx.get (trxName, false).rollback();
						throw new AdempiereException(erro.getMessage());
					}
				}
				
				
				//	Refresh
				createComponentGrid();
				miniTableIndLocator.clear();
				grpSelectionIndLocator.setVisible(false);
			}
			else if (confirmPanel.getButton(ConfirmPanel.A_CANCEL).equals(source))
			{
				SessionManager.getAppDesktop().closeActiveWindow();
			}
			else if (confirmPanel.getButton(ConfirmPanel.A_REFRESH).equals(source))
			{
				//	Refresh
				createComponentGrid();
				miniTableIndLocator.clear();
				grpSelectionIndLocator.setVisible(false);
			}
		}
	}	//	onEvent
		
	/**
	 * 	Retrieve the data of components
	 * 	@return
	 */
	private Vector<Vector<Object>> getComponentData ()
	{
		Vector<Vector<Object>> data = new Vector<Vector<Object>>();
		StringBuilder sql = new StringBuilder("SELECT pl.Description, ");
		sql.append("pr.Value || ' - ' || pr.Name AS ProductName, pl.M_Product_ID, ");
		sql.append("SUM (pl.QtyUsed) AS QtyUsed, SUM (pl.PlannedQty) AS PlannedQty, l.Value As LocatorValue, bomqtyonhandbylocator(pl.M_Product_ID, NULL, pl.M_Locator_ID) AS QtyOnHand FROM ");
		sql.append("M_ProductionLine pl ");
		sql.append("INNER JOIN M_Product pr ON (pr.M_Product_ID=pl.M_Product_ID) ");
		sql.append("INNER JOIN M_Production p ON (p.M_Production_ID=pl.M_Production_ID) ");
		sql.append("INNER JOIN M_Locator l ON (pl.M_Locator_ID=l.M_Locator_ID) ");
		sql.append("WHERE pl.IsEndProduct='N' AND pr.ProductType='I' AND p.LBR_ProductionGroup_ID = ? ");//.append(" AND LBR_Ref_Production_ID IS NULL ");
		sql.append("AND pl.IsActive='Y'");
		
		if (log.isLoggable(Level.FINE)) log.fine("InvSQL=" + sql.toString());
		
		// role security
		sql = new StringBuilder( MRole.getDefault(Env.getCtx(), false).addAccessSQL(sql.toString(), "pl", MRole.SQL_FULLYQUALIFIED, MRole.SQL_RO ));
		sql.append(" GROUP BY pl.Description, pl.M_Product_ID, pr.Value, pr.Name, l.Value, bomqtyonhandbylocator(pl.M_Product_ID, NULL, pl.M_Locator_ID)");
		sql.append(" ORDER BY pr.Value ");
		
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
				line.add(rs.getString("Description"));			//  1-Description
				KeyNamePair knp = new KeyNamePair(rs.getInt("M_Product_ID"), rs.getString("ProductName"));
				//
				line.add(knp);									//  2-ProductName
				line.add(rs.getBigDecimal("PlannedQty"));		//  3-Production Qty
				line.add(rs.getBigDecimal("QtyUsed"));			//  4-Movement Qty
				line.add(rs.getString("LocatorValue"));			//  5-Locator created for this Production Group
				line.add(rs.getBigDecimal("QtyOnHand"));		//  6-Qty On Hand
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
	}	//	getComponentData
	
	/**
	 * 	Locator that has obsolete material sent to Industrialization
	 * 	@return
	 * @throws Exception 
	 */
	private Vector<Vector<Object>> getIndLocatorData () throws Exception
	{
		Vector<Integer> selected = new Vector<Integer>();
		int rows = miniTableComp.getRowCount();
		for (int i = 0; i < rows; i++)
		{
			if (((Boolean)miniTableComp.getValueAt(i, 0)).booleanValue())
			{
				KeyNamePair knp = (KeyNamePair) miniTableComp.getValueAt(i, 2);
				selected.add(knp.getKey());
			}
		}
		
		if (selected.size() < 1)
		{
			grpSelectionIndLocator.setVisible(false);
			throw new Exception ("Sem produtos selecionados");
		}
		
		if (selected.size() > 1)
		{
			grpSelectionIndLocator.setVisible(false);
			throw new Exception ("Selecione apenas 1 Insumo");
		}
		
		MLBRProductionGroup pg = new MLBRProductionGroup (Env.getCtx(), m_LBR_ProductionGroup_ID, null);
		
		Vector<Vector<Object>> data = new Vector<Vector<Object>>();
		StringBuilder sql = new StringBuilder("SELECT l.M_Locator_ID, ");
		sql.append("l.Value AS LocatorName, l.created, prod.value || '-' || prod.name AS ProductName, bomqtyonhandbylocator(str.M_Product_ID, NULL, l.M_Locator_ID) AS QtyOnHand, str.M_Product_ID, str.M_AttributeSetInstance_ID ");
		sql.append("FROM M_Locator l ");
		sql.append("LEFT JOIN M_Warehouse w ON w.M_Warehouse_ID = l.M_Warehouse_ID ");
		sql.append("LEFT JOIN M_StorageOnHand str ON str.M_Locator_ID = l.M_Locator_ID ");
		sql.append("LEFT JOIN M_Product prod ON prod.M_Product_ID = str.M_Product_ID ");
		sql.append("LEFT JOIN LBR_ProductionGroup pg ON 'PRD-'||pg.DocumentNo = l.Value ");
		sql.append("LEFT JOIN M_Production p ON p.LBR_ProductionGroup_ID = pg.LBR_ProductionGroup_ID ");
		sql.append("WHERE w.lbr_WarehouseType='3WN' AND str.M_Product_ID = ? AND pg.C_BPartner_ID = ? ");
		sql.append("AND pg.DocStatus IN ('CO', 'CL') AND p.DocStatus IN ('CO', 'CL') ");
		sql.append("AND l.IsActive='Y' ");
		
		if (log.isLoggable(Level.FINE)) log.fine("InvSQL=" + sql.toString());
		sql.append(" GROUP BY l.M_Locator_ID, l.Value, l.created, prod.value || '-' || prod.name, str.QtyOnHand, str.M_Product_ID, str.M_AttributeSetInstance_ID "); 
		sql.append(" HAVING bomqtyonhandbylocator(str.M_Product_ID, NULL, l.M_Locator_ID) > 0 ");
		sql.append(" ORDER BY l.created ");

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), null);

			pstmt.setInt(1, selected.get(0));			
			pstmt.setInt(2, pg.getC_BPartner_ID());
			//
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				Vector<Object> line = new Vector<Object>();
				line.add(new Boolean(false));																	//  0-Selection
				KeyNamePair knpLoc = new KeyNamePair(rs.getInt("M_Locator_ID"), rs.getString("LocatorName"));
				//
				line.add(knpLoc);																				//  1-Locator
				line.add(rs.getString("Created"));																//  2-Created
				KeyNamePair knpProd = new KeyNamePair(rs.getInt("M_Product_ID"), rs.getString("ProductName"));
				//
				line.add(knpProd);																				//  3-ProductName
				line.add(rs.getBigDecimal("QtyOnHand"));														//  4-Qty on Hand
				line.add(rs.getInt("M_AttributeSetInstance_ID"));												//  5-M_AttributeSetInstance_ID
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
	}	//	getIndLocatorData
	
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
			createComponentGrid();
		}
	}	//	setProcessInfo
}	//	WPOGInvoiceGen
