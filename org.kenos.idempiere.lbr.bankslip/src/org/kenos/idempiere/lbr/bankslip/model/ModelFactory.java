package org.kenos.idempiere.lbr.bankslip.model;

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
		if (MLBRBank.Table_Name.equals(tableName))
			return MLBRBank.class;
		else if (MLBRBankSlip.Table_Name.equals(tableName))
			return MLBRBankSlip.class;
		else if (MLBRBankSlipConfig.Table_Name.equals(tableName))
			return MLBRBankSlipConfig.class;
		else if (MLBRBankSlipContract.Table_Name.equals(tableName))
			return MLBRBankSlipContract.class;
		else if (MLBRBankSlipMov.Table_Name.equals(tableName))
			return MLBRBankSlipMov.class;
		else if (MLBRBankSlipOccur.Table_Name.equals(tableName))
			return MLBRBankSlipOccur.class;
		else if (MLBRBankSlipFold.Table_Name.equals(tableName))
			return MLBRBankSlipFold.class;
		else if (MLBRCNABFile.Table_Name.equals(tableName))
			return MLBRCNABFile.class;
		else if (MLBRCNABFileLine.Table_Name.equals(tableName))
			return MLBRCNABFileLine.class;

		else if (MLBRBankSlipInfo.Table_Name.equals(tableName))
			return MLBRBankSlipInfo.class;
		return null;
	}	//	getClass

	@Override
	public PO getPO (String tableName, int Record_ID, String trxName)
	{
		if (MLBRBank.Table_Name.equals(tableName))
			return new MLBRBank (Env.getCtx(), Record_ID, trxName);
		else if (MLBRBankSlip.Table_Name.equals(tableName))
			return new MLBRBankSlip (Env.getCtx(), Record_ID, trxName);
		else if (MLBRBankSlipConfig.Table_Name.equals(tableName))
			return new MLBRBankSlipConfig (Env.getCtx(), Record_ID, trxName);
		else if (MLBRBankSlipContract.Table_Name.equals(tableName))
			return new MLBRBankSlipContract (Env.getCtx(), Record_ID, trxName);
		else if (MLBRBankSlipMov.Table_Name.equals(tableName))
			return new MLBRBankSlipMov (Env.getCtx(), Record_ID, trxName);
		else if (MLBRBankSlipOccur.Table_Name.equals(tableName))
			return new MLBRBankSlipOccur (Env.getCtx(), Record_ID, trxName);
		else if (MLBRBankSlipFold.Table_Name.equals(tableName))
			return new MLBRBankSlipFold (Env.getCtx(), Record_ID, trxName);
		else if (MLBRCNABFile.Table_Name.equals(tableName))
			return new MLBRCNABFile (Env.getCtx(), Record_ID, trxName);
		else if (MLBRCNABFileLine.Table_Name.equals(tableName))
			return new MLBRCNABFileLine (Env.getCtx(), Record_ID, trxName);
		
		else if (MLBRBankSlipInfo.Table_Name.equals(tableName))
			return MLBRBankSlipInfo.get (Env.getCtx(), Record_ID, trxName);
		return null;
	}	//	getPO

	@Override
	public PO getPO(String tableName, ResultSet rs, String trxName)
	{
		if (MLBRBank.Table_Name.equals(tableName))
			return new MLBRBank (Env.getCtx(), rs, trxName);
		else if (MLBRBankSlip.Table_Name.equals(tableName))
			return new MLBRBankSlip (Env.getCtx(), rs, trxName);
		else if (MLBRBankSlipConfig.Table_Name.equals(tableName))
			return new MLBRBankSlipConfig (Env.getCtx(), rs, trxName);
		else if (MLBRBankSlipContract.Table_Name.equals(tableName))
			return new MLBRBankSlipContract (Env.getCtx(), rs, trxName);
		else if (MLBRBankSlipMov.Table_Name.equals(tableName))
			return new MLBRBankSlipMov (Env.getCtx(), rs, trxName);
		else if (MLBRBankSlipOccur.Table_Name.equals(tableName))
			return new MLBRBankSlipOccur (Env.getCtx(), rs, trxName);
		else if (MLBRBankSlipFold.Table_Name.equals(tableName))
			return new MLBRBankSlipFold (Env.getCtx(), rs, trxName);
		else if (MLBRCNABFile.Table_Name.equals(tableName))
			return new MLBRCNABFile (Env.getCtx(), rs, trxName);
		else if (MLBRCNABFileLine.Table_Name.equals(tableName))
			return new MLBRCNABFileLine (Env.getCtx(), rs, trxName);
		
		else if (MLBRBankSlipInfo.Table_Name.equals(tableName))
			return new MLBRBankSlipInfo (Env.getCtx(), rs, trxName);
		return null;
	}	//	getPO
}	//	ModelFactory
