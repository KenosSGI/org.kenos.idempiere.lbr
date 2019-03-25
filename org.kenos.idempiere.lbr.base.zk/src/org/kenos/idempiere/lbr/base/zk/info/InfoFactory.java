package org.kenos.idempiere.lbr.base.zk.info;

import org.adempiere.webui.factory.IInfoFactory;
import org.adempiere.webui.info.InfoWindow;
import org.adempiere.webui.panel.InfoPanel;
import org.adempiere.webui.panel.InfoProductPanel;
import org.compiere.model.GridField;
import org.compiere.model.Lookup;
import org.compiere.model.MDocType;
import org.compiere.model.MInfoWindow;
import org.compiere.util.Env;

/**
 * 		Info Factory for Localization Brazil
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: InfoFactory.java, v1.0 2018/05/19 9:51:36 AM, ralexsander Exp $
 */
@SuppressWarnings("deprecation")
public class InfoFactory implements IInfoFactory
{

	@Override
	public InfoPanel create(int WindowNo, String tableName, String keyColumn,
			String value, boolean multiSelection, String whereClause,
			int AD_InfoWindow_ID, boolean lookup)
	{
		InfoPanel info = null;
		//
		if (tableName.equals("M_Product"))
		{
			info = new InfoProductWindow(WindowNo, tableName, keyColumn, value, multiSelection, whereClause, AD_InfoWindow_ID, lookup);
			if (!info.loadedOK()) 
    			{
	            info = new InfoProductPanel ( WindowNo,
	            		Env.getContextAsInt(Env.getCtx(), WindowNo, "M_Warehouse_ID"),
	    				Env.getContextAsInt(Env.getCtx(), WindowNo, "M_PriceList_ID"),
	                    multiSelection, value,whereClause, lookup);
    			}
    		}
    	}
		else
		{
			info = new InfoWindow(WindowNo, tableName, keyColumn, value, multiSelection, whereClause, AD_InfoWindow_ID, lookup);
        	if (!info.loadedOK()) {
	            info = new InfoGeneralPanel (value, WindowNo,
	                tableName, keyColumn,
	                multiSelection, whereClause, lookup);
	        	if (!info.loadedOK()) {
	        		info.dispose(false);
	        		info = null;
	        	}
        	}
		}
    		return info;
	}	//	create

	@Override
	public InfoPanel create(Lookup lookup, GridField field, String tableName,
			String keyColumn, String queryValue, boolean multiSelection,
			String whereClause, int AD_InfoWindow_ID)
	{
		InfoPanel info = null;
		setSOTrxBasedOnDocType(lookup.getWindowNo());

		String col = lookup.getColumnName();		//	fully qualified name

		if (col.indexOf('.') != -1)
			col = col.substring(col.indexOf('.')+1);
						
		if (col.equals("M_Product_ID"))
		{
			InfoWindow infoWindow = new InfoProductWindow(lookup.getWindowNo(), tableName, keyColumn, queryValue, true, whereClause, AD_InfoWindow_ID);
			if (infoWindow.loadedOK())
				return infoWindow;
			
			//	Reset
			Env.setContext(Env.getCtx(), lookup.getWindowNo(), Env.TAB_INFO, "M_Product_ID", "0");
			Env.setContext(Env.getCtx(), lookup.getWindowNo(), Env.TAB_INFO, "M_AttributeSetInstance_ID", "0");
			Env.setContext(Env.getCtx(), lookup.getWindowNo(), Env.TAB_INFO, "M_Lookup_ID", "0");

			int M_Warehouse_ID = Env.getContextAsInt(Env.getCtx(), lookup.getWindowNo(), "M_Warehouse_ID");
			int M_PriceList_ID = Env.getContextAsInt(Env.getCtx(), lookup.getWindowNo(), "M_PriceList_ID");

			//	Show Info
			info = new InfoProductPanel (lookup.getWindowNo(),
					M_Warehouse_ID, M_PriceList_ID, true, queryValue, whereClause);

			info.setTitle("Product Info");
		}
		else
			info = create(lookup.getWindowNo(), tableName, keyColumn, queryValue, false, whereClause, AD_InfoWindow_ID, true);
		
		return info;
	}	//	create

	@Override
	public InfoWindow create(int AD_InfoWindow_ID)
	{
		MInfoWindow infoWindow = new MInfoWindow(Env.getCtx(), AD_InfoWindow_ID, (String)null);
		String tableName = infoWindow.getAD_Table().getTableName();
		String keyColumn = tableName + "_ID";
		InfoPanel info = create(-1, tableName, keyColumn, null, false, null, AD_InfoWindow_ID, false);
		if (info instanceof InfoWindow)
			return (InfoWindow) info;
		else
			return null;
	}	//	create
	
	private void setSOTrxBasedOnDocType (int WindowNo) 
	{
		int C_DocType_ID = Env.getContextAsInt(Env.getCtx(), WindowNo, "C_DocType_ID");
		if (C_DocType_ID != 0) 
		{
			MDocType dt = MDocType.get (Env.getCtx(), C_DocType_ID);
			Env.setContext(Env.getCtx(), WindowNo, "IsSOTrx", dt.isSOTrx () ? "Y": "N");
		}
	}	//	setSOTrxBasedOnDocType
}	//	InfoFactory
