package org.kenos.idempiere.lbr.nfe.model;

import java.sql.ResultSet;

import org.adempiere.base.IModelFactory;
import org.compiere.model.PO;
import org.compiere.util.Env;

/**
 * 		Model Factory
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 */
public class ModelFactory implements IModelFactory
{
	@Override
	public Class<?> getClass(String tableName)
	{
		if (MLBRProofOfDelivery.Table_Name.equals(tableName))
			return MLBRProofOfDelivery.class;
		else if (MLBRExportDetail.Table_Name.equals(tableName))
			return MLBRExportDetail.class;
		return null;
	}	//	getClass

	@Override
	public PO getPO(String tableName, int Record_ID, String trxName)
	{
		if (MLBRProofOfDelivery.Table_Name.equals(tableName))
			return new MLBRProofOfDelivery (Env.getCtx(), Record_ID, trxName);
		else if (MLBRExportDetail.Table_Name.equals(tableName))
			return new MLBRExportDetail (Env.getCtx(), Record_ID, trxName);
		return null;
	}	//	getPO

	@Override
	public PO getPO(String tableName, ResultSet rs, String trxName)
	{
		if (MLBRProofOfDelivery.Table_Name.equals(tableName))
			return new MLBRProofOfDelivery (Env.getCtx(), rs, trxName);
		else if (MLBRExportDetail.Table_Name.equals(tableName))
			return new MLBRExportDetail (Env.getCtx(), rs, trxName);
		return null;
	}	//	getPO
}	//	ModelFactory
