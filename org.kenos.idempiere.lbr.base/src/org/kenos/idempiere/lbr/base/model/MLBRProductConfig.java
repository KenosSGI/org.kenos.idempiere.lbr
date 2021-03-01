package org.kenos.idempiere.lbr.base.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.adempierelbr.model.X_LBR_ProductConfig;
import org.compiere.model.Query;

/**
 * 		MLBRProductConfig
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRProductConfig.java, v1.0 2021/02/27 22:25:35 AM, ralexsander Exp $
 */
public class MLBRProductConfig extends X_LBR_ProductConfig
{
	/**
	 * 	Serial ID
	 */
	private static final long serialVersionUID = -6656089308276334805L;

	public MLBRProductConfig (Properties ctx, int LBR_ProductConfig_ID, String trxName)
	{
		super(ctx, LBR_ProductConfig_ID, trxName);
	}	//	MLBRProductConfig
	
	public MLBRProductConfig (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//	MLBRProductConfig
	
	public static MLBRProductConfig getProductConfig (Properties ctx, int AD_Org_ID, int M_Product_ID)
	{
		MLBRProductConfig config = null;
		//
		try
		{
			config = new Query (ctx, Table_Name, COLUMNNAME_AD_Org_ID+"=? AND "+MLBRProductConfig.COLUMNNAME_M_Product_ID+"=?", null)
				.setParameters(AD_Org_ID, M_Product_ID)
				.setOnlyActiveRecords(true)
				.firstOnly();
		} 
		catch (Exception e) {}
		return config;
	}	//	getProductConfig
	
	@Override
	public String getIsManufactured() 
	{
		if (super.getIsManufactured() != null)
			return super.getIsManufactured();
		return getM_Product().isManufactured() ? "Y" : "N";
	}	//	getIsManufactured
}	//	MLBRProductConfig
