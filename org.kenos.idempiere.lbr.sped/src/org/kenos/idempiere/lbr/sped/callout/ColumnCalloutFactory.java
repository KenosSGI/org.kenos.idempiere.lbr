package org.kenos.idempiere.lbr.sped.callout;

import java.util.ArrayList;
import java.util.List;

import org.adempiere.base.IColumnCallout;
import org.adempiere.base.IColumnCalloutFactory;
import org.adempierelbr.util.TextUtil;
import org.kenos.idempiere.lbr.sped.model.MLBREFDICMSIPI;

/**
 * 		Callout Factory
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ColumnCalloutFactory.java, v1.0 2017/01/04 5:06:32 PM, ralexsander Exp $
 */
public class ColumnCalloutFactory implements IColumnCalloutFactory
{
	/**
	 * 	Register LBR callouts for columns
	 */
	@Override
	public IColumnCallout[] getColumnCallouts (String tableName, String columnName)
	{
		List<IColumnCallout> callouts = new ArrayList<IColumnCallout>();
		if (MLBREFDICMSIPI.Table_Name.equals(tableName))
		{
			if (TextUtil.match (columnName, 
					MLBREFDICMSIPI.COLUMNNAME_C_Period_ID))
				callouts.add (new SPED ());
		}
		
		IColumnCallout[] result = new IColumnCallout[callouts.size()];
		return callouts.toArray (result);
	}	//	getColumnCallouts
}	//	ColumnCalloutFactory
