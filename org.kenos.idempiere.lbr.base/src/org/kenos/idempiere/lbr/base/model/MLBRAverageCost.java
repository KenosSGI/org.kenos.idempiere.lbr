/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2011 Ricardo Santana                                         *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.kenos.idempiere.lbr.base.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.adempierelbr.model.X_LBR_AverageCost;
import org.compiere.model.MAcctSchema;
import org.compiere.model.MClient;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * 	Model para Custo Médio BR
 * 
 * @author Ricardo Santana (Kenos, www.kenos.com.br)
 * @version $Id: MLBRAverageCost.java, v1.0 2018/04/05 18:03:39 PM, ralexsander Exp $
 */
public class MLBRAverageCost extends X_LBR_AverageCost
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = -4108895506438004098L;

	/**
	 * Default Constructor
	 * @param ctx
	 * @param LBR_AverageCost_ID
	 * @param trxName
	 */
	public MLBRAverageCost (Properties ctx, int LBR_AverageCost_ID, String trxName)
	{
		super (ctx, LBR_AverageCost_ID, trxName);
	}	//	MLBRAverageCost
	
	/**
	 * Load Constructor
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLBRAverageCost (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRAverageCost
	
	/**
	 * 	Before save validations
	 */
	@Override
	protected boolean beforeSave (boolean newRecord)
	{
		String costingLevel = MClient.get(Env.getCtx()).getAcctSchema().getCostingLevel();
		
		//	Client level, force org *
		if (MAcctSchema.COSTINGLEVEL_Client.equals(costingLevel))
			setAD_Org_ID (0);
		//
		return true;
	}	//	beforeSave
	
	@Override
	protected boolean afterSave(boolean newRecord, boolean success)
	{
		if (success)
		{
			//	Just processed
			if (is_ValueChanged(COLUMNNAME_Processed) && isProcessed())
			{
				//	Save a historic price
				String sql = "INSERT INTO LBR_AverageCostLine (LBR_AverageCostLine_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, \n" + 
						"    Updated, UpdatedBy, LBR_AverageCost_ID, M_product_ID, LBR_AvgCostType, Description, CumulatedAmt, CumulatedQty, \n" + 
						"    CurrentCostPrice, FutureCostPrice, LBR_AvgCostZoom, CurrentQty, LBR_AverageCostLine_UU, LBR_LandedCostAmt, LBR_LandedCostQty) \n" + 
						"SELECT \n" + 
						"    NextID (1120032, 'N'), a.AD_Client_ID, a.AD_Org_ID, 'Y', SYSDATE, a.UpdatedBy, SYSDATE, a.UpdatedBy, a.LBR_AverageCost_ID, \n" + 
						"    p.M_Product_ID, 'H', NULL, 0, 0, c.CurrentCostPrice, c.CurrentCostPrice, 'N', QtyOnDate (p.M_Product_ID, " + DB.TO_DATE(getC_Period().getStartDate()) + "), \n" + 
						"    UUID_Generate_V4(), 0, 0 \n" + 
						"FROM \n" + 
						"    M_Product p, M_Cost c, LBR_AverageCost a \n" + 
						"WHERE \n" + 
						"    p.M_Product_ID=c.M_Product_ID \n" + 
						"AND c.M_CostElement_ID=a.M_CostElement_ID \n" + 
						"AND c.CurrentCostPrice>0 \n" + 
						"AND a.LBR_AverageCost_ID=? \n" + 
						"AND NOT EXISTS (SELECT '1' FROM LBR_AverageCostLine cl WHERE cl.M_Product_ID=p.M_Product_ID AND cl.LBR_AverageCost_ID=a.LBR_AverageCost_ID)";
				//
				DB.executeUpdate(sql, getLBR_AverageCost_ID(), get_TrxName());
			}
		}
		return true;
	}
	
	/**
	 * 	Delete
	 */
	@Override
	protected boolean afterDelete(boolean success)
	{
		if (success)
		{
			String sql = "DELETE FROM LBR_AverageCostLine " +
					     "WHERE LBR_AverageCost_ID=?";
			//
			DB.executeUpdate (sql, new Object[]{getLBR_AverageCost_ID()}, false, get_TrxName());
		}
		return true;
	}	//	afterDelete
}	//	MLBRAverageCost
