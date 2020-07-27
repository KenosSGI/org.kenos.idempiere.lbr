package org.kenos.idempiere.lbr.nfe.callout;

import java.util.ArrayList;
import java.util.List;

import org.adempiere.base.IColumnCallout;
import org.adempiere.base.IColumnCalloutFactory;
import org.adempierelbr.model.MLBRNFLineMA;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.wrapper.I_W_M_RMA;
import org.compiere.model.MInOut;
import org.compiere.model.MRMA;

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
		if (MRMA.Table_Name.equals(tableName))
		{
			if (I_W_M_RMA.COLUMNNAME_LBR_NotaFiscal_ID.equals(columnName))
				callouts.add (new RMA ());
		}
		else if (MLBRNotaFiscalLine.Table_Name.equals(tableName))
		{
			if (MLBRNotaFiscalLine.COLUMNNAME_M_Product_ID.equals(columnName))
				callouts.add (new NotaFiscalLine ());
		}
		else if (MInOut.Table_Name.equals(tableName))
		{
			if ("LBR_MDFeVehicle_ID".equals(columnName))
				callouts.add (new Shipment ());
		}
		else if (MLBRNFLineMA.Table_Name.equals(tableName))
		{
			if (MLBRNFLineMA.COLUMNNAME_C_Region_ID.equals(columnName))
				callouts.add (new NotaFiscalLine ());
		}
		IColumnCallout[] result = new IColumnCallout[callouts.size()];
		return callouts.toArray (result);
	}	//	getColumnCallouts
}	//	CalloutFactory
