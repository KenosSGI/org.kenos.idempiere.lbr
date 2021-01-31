package org.kenos.idempiere.lbr.sped.model;

import java.sql.ResultSet;

import org.adempiere.base.IModelFactory;
import org.adempierelbr.model.MLBRFactFiscal;
import org.compiere.model.PO;
import org.compiere.util.Env;

public class ModelFactory implements IModelFactory
{
	@Override
	public Class<?> getClass(String tableName)
	{
		if (MLBRFactFiscal.Table_Name.equals(tableName))
			return MLBRFactFiscal.class;
		else if (MLBREFDICMSIPI.Table_Name.equals(tableName))
			return MLBREFDICMSIPI.class;
		return null;
	}	//	getClass

	@Override
	public PO getPO(String tableName, int Record_ID, String trxName)
	{
		if (MLBRFactFiscal.Table_Name.equals(tableName))
			return new MLBRFactFiscal (Env.getCtx(), Record_ID, trxName);
		else if (MLBREFDICMSIPI.Table_Name.equals(tableName))
			return new MLBREFDICMSIPI (Env.getCtx(), Record_ID, trxName);
		return null;
	}	//	getPO

	@Override
	public PO getPO(String tableName, ResultSet rs, String trxName)
	{
		if (MLBRFactFiscal.Table_Name.equals(tableName))
			return new MLBRFactFiscal (Env.getCtx(), rs, trxName);
		else if (MLBREFDICMSIPI.Table_Name.equals(tableName))
			return new MLBREFDICMSIPI (Env.getCtx(), rs, trxName);
		return null;
	}	//	getPO
}	//	ModelFactory
