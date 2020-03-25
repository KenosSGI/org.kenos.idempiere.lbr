package org.kenos.idempiere.lbr.bankslip.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.adempierelbr.model.X_LBR_CNABFileLine;

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
}	//	MLBRCNABFileLine
