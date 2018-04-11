package org.kenos.idempiere.lbr.base.swing.info;

import java.awt.Frame;

import org.adempiere.ui.swing.factory.IInfoFactory;
import org.compiere.apps.search.Info;
import org.compiere.model.GridField;
import org.compiere.model.Lookup;
import org.compiere.model.MBPartner;
import org.compiere.util.Env;

/**
 * 		Info Factory
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: InfoFactory.java, v1.0 2017/09/05 5:05:32 PM, ralexsander Exp $
 */
public class InfoFactory implements IInfoFactory
{
	@Override
	public Info create (Frame frame, boolean modal, Lookup lookup, GridField field,
			String tableName, String keyColumn, String value, boolean multiSelection,
			String whereClause)
	{
		if (MBPartner.Table_Name.equals(tableName))
			return new InfoBPartner(frame, modal, 0, value, Env.isSOTrx(Env.getCtx()), multiSelection, whereClause);
		return null;
	}	//	create

	@Override
	public Info create (Frame frame, boolean modal, int WindowNo, String tableName,
			String keyColumn, String value, boolean multiSelection,
			String whereClause, boolean lookup)
	{
		if (MBPartner.Table_Name.equals(tableName))
			return new InfoBPartner(frame, modal, WindowNo, value, Env.isSOTrx(Env.getCtx()), multiSelection, whereClause, lookup);
		return null;
	}	//	create
}	//	InfoFactory
