package org.kenos.idempiere.lbr.base.model;

import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.adempierelbr.model.X_LBR_Product_Tax_Control;
import org.compiere.model.Query;
import org.compiere.util.Env;

public class MLBRProductTaxControl extends X_LBR_Product_Tax_Control
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Default Constructor
	 * @param ctx
	 * @param LBR_Product_Tax_Control_ID
	 * @param trxName
	 */
	public MLBRProductTaxControl (Properties ctx, int LBR_Product_Tax_Control_ID, String trxName)
	{
		super (ctx, LBR_Product_Tax_Control_ID, trxName);
	}	//	MLBRProductTaxControl
	
	/**
	 * Load Constructor
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLBRProductTaxControl (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRProductTaxControl
	
	/**
	 * 
	 * @param M_Product_ID
	 * @return
	 */
	public static List<MLBRProductTaxControl> getProductTaxControl (int M_Product_ID)
	{
		//	where
		String where = COLUMNNAME_M_Product_ID + "=?";
		
		//	List
		List<MLBRProductTaxControl> list = new Query (Env.getCtx(), MLBRProductTaxControl.Table_Name, where, null)
			.setParameters(M_Product_ID)
			.list();
		
		return list;
	}	//	getProductTaxControl
	
	/**
	 * 
	 * @param M_Product_ID
	 * @param AD_Org_ID
	 * @return
	 */
	public static MLBRProductTaxControl getProductTaxControl (int M_Product_ID, int AD_Org_ID)
	{
		//	where
		String where = COLUMNNAME_M_Product_ID + "=? AND " + COLUMNNAME_AD_Org_ID + "=?";
		
		//	List
		MLBRProductTaxControl tc = new Query (Env.getCtx(), MLBRProductTaxControl.Table_Name, where, null)
			.setParameters(M_Product_ID, AD_Org_ID)
			.first();
		
		return tc;
	}	//	getProductTaxControl	

}
