package org.kenos.idempiere.lbr.tax.model;

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
		if (MCommissionAmt.Table_Name.equals(tableName))
			return MCommissionAmt.class;
		else if (MTaxConfigAcct.Table_Name.equals(tableName))
			return MTaxConfigAcct.class;
		else if (MOrder.Table_Name.equals(tableName))
			return MOrder.class;
		else if (MInvoice.Table_Name.equals(tableName))
			return MInvoice.class;
		return null;
	}	//	getClass

	@Override
	public PO getPO(String tableName, int Record_ID, String trxName)
	{
		if (MCommissionAmt.Table_Name.equals(tableName))
			return new MCommissionAmt (Env.getCtx(), Record_ID, trxName);
		else if (MTaxConfigAcct.Table_Name.equals(tableName))
			return new MTaxConfigAcct (Env.getCtx(), Record_ID, trxName);
		else if (MOrder.Table_Name.equals(tableName))
			return new MOrder (Env.getCtx(), Record_ID, trxName);
		else if (MInvoice.Table_Name.equals(tableName))
			return new MInvoice (Env.getCtx(), Record_ID, trxName);
		return null;
	}	//	getPO

	@Override
	public PO getPO(String tableName, ResultSet rs, String trxName)
	{
		if (MCommissionAmt.Table_Name.equals(tableName))
			return new MCommissionAmt (Env.getCtx(), rs, trxName);
		else if (MTaxConfigAcct.Table_Name.equals(tableName))
			return new MTaxConfigAcct (Env.getCtx(), rs, trxName);
		else if (MOrder.Table_Name.equals(tableName))
			return new MOrder (Env.getCtx(), rs, trxName);
		else if (MInvoice.Table_Name.equals(tableName))
			return new MInvoice (Env.getCtx(), rs, trxName);
		return null;
	}	//	getPO
}	//	ModelFactory
