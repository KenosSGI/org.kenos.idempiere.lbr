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
		return null;
	}	//	getClass

	@Override
	public PO getPO(String tableName, int Record_ID, String trxName)
	{
		if (MRequisition.Table_Name.equals(tableName))
			return new MRequisition (Env.getCtx(), Record_ID, trxName);
		else if (MRMA.Table_Name.equals(tableName))
			return new MRMA (Env.getCtx(), Record_ID, trxName);
		return null;
	}	//	getPO

	@Override
	public PO getPO(String tableName, ResultSet rs, String trxName)
	{
		if (MRequisition.Table_Name.equals(tableName))
			return new MRequisition (Env.getCtx(), rs, trxName);
		else if (MRMA.Table_Name.equals(tableName))
			return new MRMA (Env.getCtx(), rs, trxName);
		return null;
	}	//	getPO
}	//	ModelFactory
