package org.kenos.idempiere.lbr.nfe.callout;

import java.util.Arrays;
import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRCFOP;
import org.adempierelbr.model.MLBRCFOPLine;
import org.adempierelbr.wrapper.I_W_C_DocType;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MCost;
import org.compiere.model.MLocator;
import org.compiere.model.MMovementLine;
import org.compiere.model.MWarehouse;
import org.compiere.model.Query;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.base.model.MMovement;

/**
 * 		Callout for Production
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: Movement.java, v1.0 2021/04/01 10:50:00 PM, ralexsander Exp $
 */
public class Movement implements IColumnCallout 
{
	/**
	 * 	Fill Price and Taxes
	 */
	@Override
	public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
	{
		if (value == null)
			return "";
		//
		MMovement move = new MMovement (ctx, (Integer) mTab.getValue(MMovement.COLUMNNAME_M_Movement_ID), null);
		MLBRCFOPLine cfop = MLBRCFOP.chooseCFOP (move.getAD_Org_ID(), move.getC_DocType_ID(), 0, 0, null, 
				move.getDestionationType(), false, false, null, null);
		if (cfop != null)
			mTab.setValue(MLBRCFOPLine.COLUMNNAME_LBR_CFOP_ID, cfop.getLBR_CFOP_ID());
		
		Integer AD_Org_ID = (Integer) mTab.getValue(MMovementLine.COLUMNNAME_AD_Org_ID);
		Integer M_Product_ID = (Integer) mTab.getValue(MMovementLine.COLUMNNAME_M_Product_ID);
		Integer M_AttributeSetInstance_ID = (Integer) mTab.getValue(MMovementLine.COLUMNNAME_M_AttributeSetInstance_ID);
		if (M_AttributeSetInstance_ID == null)
			M_AttributeSetInstance_ID = 0;
		
		String whereClause = "M_Cost.AD_Org_ID IN (0,?)"
				+ " AND M_Cost.M_Product_ID=?"
				+ " AND M_Cost.M_AttributeSetInstance_ID=?"
				+ " AND M_Cost.C_AcctSchema_ID=s.C_AcctSchema_ID"
				+ " AND M_Cost.M_CostElement_ID IN (SELECT ce.M_CostElement_ID FROM M_CostElement ce WHERE ce.AD_Client_ID=c.AD_Client_ID AND ce.CostingMethod=s.CostingMethod)"
				+ " AND M_Cost.CurrentCostPrice>0";
		MCost cost = new Query(ctx, MCost.Table_Name, whereClause, null)
				.setParameters(AD_Org_ID, AD_Org_ID, M_Product_ID, M_AttributeSetInstance_ID)
				.addJoinClause("INNER JOIN AD_Org o ON (?=o.AD_Org_ID)")
				.addJoinClause("INNER JOIN AD_ClientInfo c ON (c.AD_Client_ID=o.AD_Client_ID)")
				.addJoinClause("INNER JOIN C_AcctSchema s ON (c.C_AcctSchema1_ID=s.C_AcctSchema_ID)")
				.first();
			
		if (cost != null)
			mTab.setValue (MCost.COLUMNNAME_CurrentCostPrice, cost.getCurrentCostPrice());
		//
		I_W_C_DocType dt = POWrapper.create (move.getC_DocType(), I_W_C_DocType.class);
		if (dt != null 
				&& dt.getlbr_DocBaseType() != null 
				&& dt.getlbr_DocBaseType().equals("MMSA-") 
				&& move.getC_BPartner_ID() > 0)
		{
			MWarehouse warehouse = Arrays.asList(MWarehouse.getForOrg (move.getCtx(), move.getAD_Org_ID()))
				.stream().filter(w -> w.isActive() && "3WN".equals(w.get_Value("lbr_WarehouseType")))
				.findFirst().orElse(null);
			if (warehouse != null)
			{
				String sql = MLocator.COLUMNNAME_M_Warehouse_ID+"=? AND " + MMovement.COLUMNNAME_C_BPartner_ID + "=?";
				int M_Locator_ID = new Query (Env.getCtx(), MLocator.Table_Name, sql, null)
						.setParameters(warehouse.getM_Warehouse_ID(), move.getC_BPartner_ID())
						.firstId();
				if (M_Locator_ID > 0)
					mTab.setValue (MMovementLine.COLUMNNAME_M_LocatorTo_ID, M_Locator_ID);
			}
		}
		//
		return "";
	}	//	start
}	//	Production
