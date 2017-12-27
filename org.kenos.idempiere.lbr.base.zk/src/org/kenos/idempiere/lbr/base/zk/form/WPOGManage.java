package org.kenos.idempiere.lbr.base.zk.form;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Properties;
import java.util.Vector;
import java.util.logging.Level;

import org.adempiere.webui.component.ConfirmPanel;
import org.adempiere.webui.component.Grid;
import org.adempiere.webui.component.GridFactory;
import org.adempiere.webui.component.Label;
import org.adempiere.webui.component.ListModelTable;
import org.adempiere.webui.component.WListbox;
import org.adempiere.webui.event.WTableModelEvent;
import org.adempiere.webui.event.WTableModelListener;
import org.adempiere.webui.panel.ADForm;
import org.adempiere.webui.panel.IFormController;
import org.compiere.model.MRole;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
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
	private int m_LBR_ProductionGroup_ID = 0;

	/**	Panels			*/
	private ConfirmPanel confirmPanel = new ConfirmPanel(true);
	private Grid selectionPanel = GridFactory.newGridLayout();
	private Groupbox grpSelectionPanel = new Groupbox();
	private Groupbox grpSelectProd = new Groupbox();
	private Label l_help = new Label (Msg.getMsg (Env.getCtx(), "LBR_POGManageHelp"));
	
	/**	Result Table	*/
	private WListbox miniTable = new WListbox();
	
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
			confirmPanel = new ConfirmPanel (true);
			
			//	Top Selection Panel
			createSelectionPanel ();

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
	 * 	Create the selection panel
	 */
	private void createSelectionPanel()
	{
		grpSelectProd.appendChild(miniTable);
	}	//	createSelectionPanel

	/**
	 * 	Create the main panel and result grid
	 */
	private void createMainPanel ()
	{
		this.appendChild(new Separator());
		this.appendChild(grpSelectionPanel);
		this.appendChild(new Separator());
		this.appendChild(grpSelectProd);
		this.appendChild(new Separator());
		this.appendChild(confirmPanel);
		this.appendChild(new Separator());
		this.setBorder("normal");
		this.setContentStyle("overflow: auto");
		//		
		l_help.setMultiline(true);
		//
		createProductionGrid ();
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
		columnNames.add (Msg.translate(ctx, "Name"));
		columnNames.add (Msg.translate(ctx, "MovementDate"));
		columnNames.add (Msg.translate(ctx, "M_Product_ID"));
		columnNames.add (Msg.translate(ctx, "ProductionQty"));
		columnNames.add (Msg.translate(ctx, "MovementQty"));

		//	Clear
		miniTable.clear();
		
		//  Remove previous listeners
		miniTable.getModel().removeTableModelListener(this);
		
		//  Set Model
		ListModelTable modelI = new ListModelTable(getProductionData());
		modelI.addTableModelListener(this);
		miniTable.setData(modelI, columnNames);
		//
		int index=0;
		miniTable.setColumnClass (index++, Boolean.class, false);		//  0-Selection
		miniTable.setColumnClass (index++, String.class, true); 		//  1-DocumentNo
		miniTable.setColumnClass (index++, String.class, true);			//  2-Name
		miniTable.setColumnClass (index++, Timestamp.class, true);		//  3-MovementDate
		miniTable.setColumnClass (index++, String.class, true);			//  4-Product
		miniTable.setColumnClass (index++, BigDecimal.class, false);	//  5-Production Qty
		miniTable.setColumnClass (index++, BigDecimal.class, false);	//  6-Movement Qty
	}	//	createProductionGrid

	@Override
	public void tableChanged(WTableModelEvent event)
	{
		// TODO Auto-generated method stub
	}	//	tableChanged
	
	/**
	 * 	Retrieve the data
	 * 	@return
	 */
	private Vector<Vector<Object>> getProductionData ()
	{
		Vector<Vector<Object>> data = new Vector<Vector<Object>>();
		StringBuilder sql = new StringBuilder("SELECT p.M_Production_ID, p.DocumentNo, p.Name, ");
		sql.append("p.MovementDate, pr.Value || ' - ' || pr.Name AS ProductName, ");
		sql.append("p.ProductionQty, p.ProductionQty AS MovementQty FROM");
		sql.append("M_Production p ");
		sql.append("INNER JOIN M_Product pr ON (pr.M_Product_ID=p.M_Product_ID) ");
		sql.append("WHERE p.LBR_ProductionGroup_ID=? AND LBR_Ref_Production_ID IS NULL ");
		sql.append("AND p.Processed='N' AND p.IsActive='Y' AND pp.IsActive='Y' AND p.IsCreated='Y' ");
		
		if (log.isLoggable(Level.FINE)) log.fine("InvSQL=" + sql.toString());
		
		// role security
		sql = new StringBuilder( MRole.getDefault(Env.getCtx(), false).addAccessSQL(sql.toString(), "i", MRole.SQL_FULLYQUALIFIED, MRole.SQL_RO ));
		
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
				line.add(rs.getString("DocumentNo"));			//  1-DocumentNo
				line.add(rs.getString("Name"));					//  2-Name
				line.add(rs.getTimestamp("MovementDate"));		//  3-MovementDate
				line.add(rs.getString("ProductName"));			//  4-Product
				line.add(rs.getBigDecimal("ProductionQty"));	//  5-Production Qty
				line.add(rs.getBigDecimal("MovementQty"));		//  6-Movement Qty
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
}	//	WPOGManage
