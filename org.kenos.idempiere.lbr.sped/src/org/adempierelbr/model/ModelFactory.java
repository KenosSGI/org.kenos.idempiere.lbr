package org.adempierelbr.model;

import java.sql.ResultSet;

import org.adempiere.base.IModelFactory;
import org.compiere.model.PO;
import org.compiere.util.Env;

public class ModelFactory implements IModelFactory
{
	@Override
	public Class<?> getClass(String tableName)
	{
		if (MLBRFactFiscal.Table_Name.equals(tableName))
			return MLBRFactFiscal.class;		
		return null;
	}	//	getClass

	@Override
	public PO getPO(String tableName, int Record_ID, String trxName)
	{
		if (MLBRFactFiscal.Table_Name.equals(tableName))
			return new MLBRFactFiscal (Env.getCtx(), Record_ID, trxName);		
		return null;
	}	//	getPO

	@Override
	public PO getPO(String tableName, ResultSet rs, String trxName)
	{
		if (MLBRFactFiscal.Table_Name.equals(tableName))
			return new MLBRFactFiscal (Env.getCtx(), rs, trxName);
		
		return null;
	}	//	getPO

}
