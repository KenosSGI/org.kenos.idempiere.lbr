package org.kenos.idempiere.lbr.tax.callout;

import java.util.ArrayList;
import java.util.List;

import org.adempiere.base.IColumnCallout;
import org.adempiere.base.IColumnCalloutFactory;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MProduction;
import org.kenos.idempiere.lbr.base.model.MLBRProductionGroup;

/**
 * 		Callout Factory
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: CalloutFactory.java, v1.0 2017/01/04 5:06:32 PM, ralexsander Exp $
 */
public class CalloutFactory implements IColumnCalloutFactory
{
	/**
	 * 	Register LBR callouts for columns
	 */
	@Override
	public IColumnCallout[] getColumnCallouts (String tableName, String columnName)
	{
		List<IColumnCallout> callouts = new ArrayList<IColumnCallout>();
		if (MLBRProductionGroup.Table_Name.equals(tableName))
		{
			if (TextUtil.match (columnName, MLBRProductionGroup.COLUMNNAME_AD_Org_ID, 
					MLBRProductionGroup.COLUMNNAME_C_BPartner_ID, 
					MLBRProductionGroup.COLUMNNAME_C_BPartner_Location_ID, 
					MLBRProductionGroup.COLUMNNAME_C_DocTypeTarget_ID, 
					MLBRProductionGroup.COLUMNNAME_DateOrdered))
				callouts.add (new ProductionGroup());
		}
		else if (MProduction.Table_Name.equals(tableName))
		{
			if (TextUtil.match (columnName, MProduction.COLUMNNAME_M_Product_ID))
				callouts.add (new Production());
		}
		
		IColumnCallout[] result = new IColumnCallout[callouts.size()];
		return callouts.toArray (result);
	}	//	getColumnCallouts
}	//	CalloutFactory
