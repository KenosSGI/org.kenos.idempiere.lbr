package org.kenos.idempiere.lbr.base.model;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import org.adempierelbr.model.X_LBR_ProductionGroup;
import org.compiere.model.MProduction;
import org.compiere.model.Query;
import org.compiere.model.X_M_Production;

/**
 * 		Model for Production Group
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRProductionGroup.java, v1.0 2017/12/14 10:47:53 PM, ralexsander Exp $
 */
public class MLBRProductionGroup extends X_LBR_ProductionGroup
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = 6636733186814393504L;

	public MLBRProductionGroup (Properties ctx, int LBR_ProductionGroup_ID, String trxName)
	{
		super (ctx, LBR_ProductionGroup_ID, trxName);
	}	//	MLBRProductionGroup

	public MLBRProductionGroup (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRProductionGroup
	
	public List<MProduction> getProduction ()
	{
		List<MProduction> productions = new ArrayList<MProduction>();
		
		List<X_M_Production> list = new Query (getCtx(), MProduction.Table_Name, COLUMNNAME_LBR_ProductionGroup_ID + "=?", get_TrxName())
			.setParameters(getLBR_ProductionGroup_ID())
			.list();
		
		for (X_M_Production p : list)
		{
			productions.add(new MProduction(p.getCtx(), p.getM_Production_ID(), p.get_TrxName()));
		}
		return productions;
	}	//	getProduction
}	//	MLBRProductionGroup
