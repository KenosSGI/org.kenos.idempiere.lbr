package org.kenos.idempiere.lbr.bankslip.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.adempierelbr.model.X_LBR_BankSlipInfo;
import org.compiere.model.Query;

/**
 * 	Bank Slip (Boleto) model
 * 	@author Ricardo Santana
 */
public class MLBRBankSlipInfo extends X_LBR_BankSlipInfo
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = -975551832184870560L;

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRBankSlipInfo (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRBankSlipInfo

	/**
	 * 	Bank Slip Info constructor
	 *	@param MLBRBankSlip bs
	 */
	public MLBRBankSlipInfo (MLBRBankSlip bs)
	{
		super(bs.getCtx(), 0, bs.get_TrxName());
		setClientOrg(bs);
		setLBR_BankSlip_ID(bs.getLBR_BankSlip_ID());
	}	//	MLBRBankSlipInfo
	
	/**
	 * 	Load Constructor
	 *	@param ctx context
	 *	@param AD_Org_ID id
	 *  @param trxName
	 *	@return Org Info
	 */
	public static MLBRBankSlipInfo get (Properties ctx, int LBR_BankSlip_ID, String trxName)
	{
		MLBRBankSlipInfo retValue = new Query(ctx, Table_Name, COLUMNNAME_LBR_BankSlip_ID + "=?", trxName)
						.setParameters(LBR_BankSlip_ID)
						.firstOnly();
		return retValue;
	}	//	get
}	//	MLBRBankSlipInfo
