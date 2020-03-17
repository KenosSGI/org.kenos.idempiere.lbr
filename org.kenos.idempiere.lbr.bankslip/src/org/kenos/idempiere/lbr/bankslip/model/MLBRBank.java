package org.kenos.idempiere.lbr.bankslip.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.adempierelbr.model.X_LBR_Bank;

/**
 * 	Brazilian Bank model
 * 	@author Ricardo Santana
 */
public class MLBRBank extends X_LBR_Bank
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
	public MLBRBank (Properties ctx, int LBR_Bank_ID, String trx)
	{
		super (ctx, LBR_Bank_ID, trx);
	}	//	MLBRBank

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRBank (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRBank
}	//	MLBRBank
