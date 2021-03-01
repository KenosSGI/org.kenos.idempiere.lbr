package org.kenos.idempiere.lbr.base.model;

import java.sql.ResultSet;

import org.adempiere.base.IModelFactory;
import org.compiere.model.PO;
import org.compiere.util.Env;

/**
 * 		Model Factory
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ModelFactory.java, v1.0 2017/09/04 22:53:49 PM, ralexsander Exp $
 */
public class ModelFactory implements IModelFactory
{
	@Override
	public Class<?> getClass(String tableName)
	{
		if (MRequisition.Table_Name.equals(tableName))
			return MRequisition.class;
		else if (MRMA.Table_Name.equals(tableName))
			return MRMA.class;
		else if (MRMALine.Table_Name.equals(tableName))
			return MRMALine.class;
		else if (MTimeExpense.Table_Name.equals(tableName))
			return MTimeExpense.class;
		else if (MLBRProductionGroup.Table_Name.equals(tableName))
			return MLBRProductionGroup.class;
		else if (MLBRAverageCost.Table_Name.equals(tableName))
			return MLBRAverageCost.class;
		else if (MLBRAverageCostLine.Table_Name.equals(tableName))
			return MLBRAverageCostLine.class;
		else if (MLBRProductTaxControl.Table_Name.equals(tableName))
			return MLBRProductTaxControl.class;
		else if (MLBRAMissingNSU.Table_Name.equals(tableName))
			return MLBRAMissingNSU.class;
		else if (MLBRProductConfig.Table_Name.equals(tableName))
			return MLBRProductConfig.class;
		else if (MCity.Table_Name.equals(tableName))
			return MCity.class;
		else if (MRegion.Table_Name.equals(tableName))
			return MRegion.class;
		return null;
	}	//	getClass

	@Override
	public PO getPO(String tableName, int Record_ID, String trxName)
	{
		if (MRequisition.Table_Name.equals(tableName))
			return new MRequisition (Env.getCtx(), Record_ID, trxName);
		else if (MRMA.Table_Name.equals(tableName))
			return new MRMA (Env.getCtx(), Record_ID, trxName);
		else if (MRMALine.Table_Name.equals(tableName))
			return new MRMALine (Env.getCtx(), Record_ID, trxName);
		else if (MTimeExpense.Table_Name.equals(tableName))
			return new MTimeExpense (Env.getCtx(), Record_ID, trxName);
		else if (MLBRProductionGroup.Table_Name.equals(tableName))
			return new MLBRProductionGroup (Env.getCtx(), Record_ID, trxName);
		else if (MLBRAverageCost.Table_Name.equals(tableName))
			return new MLBRAverageCost (Env.getCtx(), Record_ID, trxName);
		else if (MLBRAverageCostLine.Table_Name.equals(tableName))
			return new MLBRAverageCostLine (Env.getCtx(), Record_ID, trxName);
		else if (MLBRProductTaxControl.Table_Name.equals(tableName))
			return new MLBRProductTaxControl (Env.getCtx(), Record_ID, trxName);
		else if (MLBRAMissingNSU.Table_Name.equals(tableName))
			return new MLBRAMissingNSU (Env.getCtx(), Record_ID, trxName);
		else if (MLBRProductConfig.Table_Name.equals(tableName))
			return new MLBRProductConfig (Env.getCtx(), Record_ID, trxName);
		else if (MCity.Table_Name.equals(tableName))
			return new MCity (Env.getCtx(), Record_ID, trxName);
		else if (MRegion.Table_Name.equals(tableName))
			return new MRegion (Env.getCtx(), Record_ID, trxName);
		return null;
	}	//	getPO

	@Override
	public PO getPO(String tableName, ResultSet rs, String trxName)
	{
		if (MRequisition.Table_Name.equals(tableName))
			return new MRequisition (Env.getCtx(), rs, trxName);
		else if (MRMA.Table_Name.equals(tableName))
			return new MRMA (Env.getCtx(), rs, trxName);
		else if (MRMALine.Table_Name.equals(tableName))
			return new MRMALine (Env.getCtx(), rs, trxName);
		else if (MTimeExpense.Table_Name.equals(tableName))
			return new MTimeExpense (Env.getCtx(), rs, trxName);
		else if (MLBRProductionGroup.Table_Name.equals(tableName))
			return new MLBRProductionGroup (Env.getCtx(), rs, trxName);
		else if (MLBRAverageCost.Table_Name.equals(tableName))
			return new MLBRAverageCost (Env.getCtx(), rs, trxName);
		else if (MLBRAverageCostLine.Table_Name.equals(tableName))
			return new MLBRAverageCostLine (Env.getCtx(), rs, trxName);
		else if (MLBRProductTaxControl.Table_Name.equals(tableName))
			return new MLBRProductTaxControl (Env.getCtx(), rs, trxName);
		else if (MLBRAMissingNSU.Table_Name.equals(tableName))
			return new MLBRAMissingNSU (Env.getCtx(), rs, trxName);
		else if (MLBRProductConfig.Table_Name.equals(tableName))
			return new MLBRProductConfig (Env.getCtx(), rs, trxName);
		else if (MCity.Table_Name.equals(tableName))
			return new MCity (Env.getCtx(), rs, trxName);
		else if (MRegion.Table_Name.equals(tableName))
			return new MRegion (Env.getCtx(), rs, trxName);
		return null;
	}	//	getPO
}	//	ModelFactory
