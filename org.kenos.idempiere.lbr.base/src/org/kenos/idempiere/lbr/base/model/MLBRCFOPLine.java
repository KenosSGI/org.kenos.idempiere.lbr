package org.kenos.idempiere.lbr.base.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.adempierelbr.model.X_LBR_CFOPLine;

/**
 * 		MLBRCFOPLine
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRCFOPLine.java, v1.0 2021/04/01 10:25:35 AM, ralexsander Exp $
 */
public class MLBRCFOPLine extends X_LBR_CFOPLine
{
	/**
	 * 	Serial ID
	 */
	private static final long serialVersionUID = 1752894261796998152L;

	public MLBRCFOPLine (Properties ctx, int LBR_CFOPLine_ID, String trxName)
	{
		super (ctx, LBR_CFOPLine_ID, trxName);
	}	//	MLBRCFOPLine
	
	public MLBRCFOPLine (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRCFOPLine
}	//	MLBRCFOPLine
