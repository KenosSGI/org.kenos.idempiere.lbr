package org.kenos.idempiere.lbr.base.model;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.List;
import java.util.Properties;

import org.adempierelbr.model.X_LBR_TaxHold;
import org.compiere.model.Query;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * 	Tax Hold
 * 	@author Ricardo Santana <rsantana@kenos.com.br>
 */
public class MLBRTaxHold extends X_LBR_TaxHold
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = 377166230150973111L;

	/**
	 * Default Constructor
	 * @param ctx
	 * @param LBR_TaxHold_ID
	 * @param trxName
	 */
	public MLBRTaxHold (Properties ctx, int LBR_TaxHold_ID, String trxName)
	{
		super (ctx, LBR_TaxHold_ID, trxName);
	}	//	MLBRTaxHold
	
	/**
	 * Load Constructor
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLBRTaxHold (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRTaxHold
	
	/**
	 * 
	 * @param M_Product_ID
	 * @return
	 */
	public static List<MLBRTaxHold> getTaxHold (int M_Product_ID, Timestamp docDate)
	{
		String where = COLUMNNAME_M_Product_ID + "=? "
				+ "AND TRUNC(" + COLUMNNAME_ValidFrom + ") <= " + DB.TO_DATE(docDate);
		
		//	List
		List<MLBRTaxHold> list = new Query (Env.getCtx(), MLBRTaxHold.Table_Name, where, null)
			.setParameters(M_Product_ID)
			.list();
		
		return list;
	}	//	getTaxHold
	
	/**
	 * 
	 * @param M_Product_ID
	 * @param AD_Org_ID
	 * @return
	 */
	public static MLBRTaxHold getTaxHold (int M_Product_ID, int AD_Org_ID, Timestamp docDate)
	{
		String where = COLUMNNAME_M_Product_ID + "=? "
				+ "AND " + COLUMNNAME_AD_Org_ID + " IN (0, ?) "
				+ "AND TRUNC(" + COLUMNNAME_ValidFrom + ") <= " + DB.TO_DATE(docDate);
		
		//	List
		MLBRTaxHold tc = new Query (Env.getCtx(), MLBRTaxHold.Table_Name, where, null)
			.setParameters(M_Product_ID, AD_Org_ID)
			.setOrderBy(COLUMNNAME_AD_Org_ID + " DESC ," + COLUMNNAME_ValidFrom + " DESC")
			.first();
		
		return tc;
	}	//	getTaxHold
}	//	MLBRTaxHold
