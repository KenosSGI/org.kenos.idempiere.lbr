package org.kenos.idempiere.lbr.bankslip.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.adempierelbr.model.X_LBR_CNABFileLine;
import org.compiere.util.DB;

/**
 * 	Brazilian Bank model
 * 	@author Ricardo Santana
 */
public class MLBRCNABFileLine extends X_LBR_CNABFileLine
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = -263371883991400518L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRCNABFileLine (Properties ctx, int LBR_CNABFileLine_ID, String trx)
	{
		super (ctx, LBR_CNABFileLine_ID, trx);
	}	//	MLBRCNABFileLine

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRCNABFileLine (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRCNABFileLine
	
	/**
	 * 	Create Constructor
	 * 	@param cnab
	 * 	@param mov
	 */
	public MLBRCNABFileLine(MLBRCNABFile cnab, MLBRBankSlipMov mov)
	{
		this (cnab.getCtx(), 0, cnab.get_TrxName());
		//
		setClientOrg(cnab);
		setLBR_CNABFile_ID(cnab.getLBR_CNABFile_ID());
		setLBR_BankSlipMov_ID(mov.getLBR_BankSlipMov_ID());
		setSeqNo(0);
	}	//	MLBRCNABFileLine

	/**
	 * 	Get Bank Slip Movement
	 * 	@return movement
	 */
	public MLBRBankSlipMov getMovement ()
	{
		return new MLBRBankSlipMov (getCtx(), getLBR_BankSlipMov_ID(), get_TrxName());
	}	//	getMovement
	
	/**
	 * 	Get Bank Slip
	 * 	@return bs
	 */
	public MLBRBankSlip getBankSlip ()
	{
		return new MLBRBankSlip (getCtx(), getLBR_BankSlipMov().getLBR_BankSlip_ID(), get_TrxName());
	}	//	getBankSlip
	
	/**
	 * 	Get Bank Slip Info
	 * 	@return bsi
	 */
	public MLBRBankSlipInfo getBankSlipInfo ()
	{
		return MLBRBankSlipInfo.get (getCtx(), getLBR_BankSlipMov().getLBR_BankSlip_ID(), get_TrxName());
	}	//	getBankSlipInfo
	
	/**
	 * 	Validate the sequence
	 */
	@Override
	protected boolean beforeSave (boolean newRecord)
	{
		//	Sequence
		if (newRecord && getSeqNo() == 0)
		{
			int nextSeq = DB.getSQLValue (get_TrxName(), "SELECT COALESCE (COUNT(0), 0)+1 FROM " + Table_Name + 
					" WHERE " + COLUMNNAME_LBR_CNABFile_ID + "=?", getLBR_CNABFile_ID());
			//
			setSeqNo(nextSeq);
		}
		//
		return true;
	}
}	//	MLBRCNABFileLine
