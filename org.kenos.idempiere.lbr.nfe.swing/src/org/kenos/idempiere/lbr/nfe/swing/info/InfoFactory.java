package org.kenos.idempiere.lbr.nfe.swing.info;

import java.awt.Frame;

import org.adempiere.ui.swing.factory.IInfoFactory;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.compiere.apps.search.Info;
import org.compiere.model.GridField;
import org.compiere.model.Lookup;

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
		if (MLBRNotaFiscal.Table_Name.equals(tableName))
			return new InfoNotaFiscal (frame, modal, 0, value, multiSelection, whereClause);
		return null;
	}	//	create

	@Override
	public Info create (Frame frame, boolean modal, int WindowNo, String tableName,
			String keyColumn, String value, boolean multiSelection,
			String whereClause, boolean lookup)
	{
		if (MLBRNotaFiscal.Table_Name.equals(tableName))
			return new InfoNotaFiscal (frame, modal, WindowNo, value, multiSelection, whereClause);
		return null;
	}	//	create
}	//	InfoFactory
