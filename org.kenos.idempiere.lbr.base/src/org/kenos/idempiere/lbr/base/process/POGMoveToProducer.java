package org.kenos.idempiere.lbr.base.process;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MDocType;
import org.compiere.model.MMovement;
import org.compiere.model.MMovementLine;
import org.compiere.model.MProduct;
import org.compiere.model.MProduction;
import org.compiere.model.MProductionLine;
import org.compiere.model.MStorageOnHand;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.base.model.MLBRProductionGroup;

public class POGMoveToProducer extends SvrProcess
{
	private int p_LBR_ProductionGroup_ID;
	
	@Override
	protected void prepare()
	{
		p_LBR_ProductionGroup_ID = getRecord_ID();
	}	//	prepare

	@Override
	protected String doIt() throws Exception
	{
		Map<String, PLines> map = new HashMap<String, PLines>();
		//
		MLBRProductionGroup pg = new MLBRProductionGroup (getCtx(), p_LBR_ProductionGroup_ID, null);
		
		//	Movement
		MMovement movement = new MMovement (pg.getCtx(), 0, pg.get_TrxName());
		movement.setAD_Org_ID(pg.getAD_Org_ID());
		movement.setC_DocType_ID (MDocType.getDocType(MDocType.DOCBASETYPE_MaterialMovement));
		movement.setC_BPartner_ID(pg.getC_BPartner_ID());
		movement.setC_BPartner_Location_ID(pg.getC_BPartner_Location_ID());
		movement.set_ValueOfColumn(MLBRProductionGroup.COLUMNNAME_LBR_ProductionGroup_ID, pg.getLBR_ProductionGroup_ID());
		movement.setDescription ("Documento de Movimentação para a OP: " + pg.get_ValueAsString ("DocumentNo"));
		movement.saveEx();
		
		for (MProduction p : pg.getProduction())
		{
			for (MProductionLine pl : p.getLines())
			{
				//	Do nothing, continue
				if (pl.getMovementQty().negate().signum() <= 0										//	Negative
						|| pl.getM_Product().getM_Locator_ID() == pl.getM_Locator_ID()				//	Same locator
						|| !pl.getM_Product().isStocked()											//	Not stocked
						|| !MProduct.PRODUCTTYPE_Item.equals (pl.getM_Product().getProductType()))	//	Not physical
					continue;
				
				//	Get Locator
				int M_Locator_ID = MStorageOnHand.getM_Locator_ID (p.getM_Locator().getM_Warehouse_ID(),
						pl.getM_Product_ID(), pl.getM_AttributeSetInstance_ID(),
						pl.getPlannedQty(), get_TrxName());
				
				if (M_Locator_ID <= 0)
					M_Locator_ID = pl.getM_Product().getM_Locator_ID();
				else if (M_Locator_ID <= 0)
					M_Locator_ID = p.getM_Locator_ID();
				
				//	Same locator
				if (M_Locator_ID == pl.getM_Locator_ID())
					continue;
				
				PLines line = new PLines ();
				line.setM_Product_ID(pl.getM_Product_ID());
				line.setM_Locator_ID(M_Locator_ID);
				line.setM_LocatorTo_ID(pl.getM_Locator_ID());
				
				if (map.containsKey(line.toString()))
					line = map.get(line.toString());
				
				line.setQty(line.getQty().add(pl.getMovementQty().negate()));
				map.put(line.toString(), line);
			}
		}
		
		for (String key : map.keySet())
		{
			MMovementLine ml = new MMovementLine (movement);
			PLines lines = map.get(key);
			
			//	Movement details
			ml.setM_Product_ID(lines.getM_Product_ID());
			ml.setM_Locator_ID(lines.getM_Locator_ID());
			ml.setM_LocatorTo_ID(lines.getM_LocatorTo_ID());
			ml.setMovementQty(lines.getQty());
			ml.setM_AttributeSetInstanceTo_ID(lines.getM_AttributeSetInstance_ID());
			//
			ml.saveEx();
		}
		
		//	Check if there is lines, if not throw error
		if (movement.getLines(false).length == 0)
		{
			movement.delete(true);
			throw new AdempiereException ("@Error@ não há linhas para movimentar");
		}
		
		return "@Success@";
	}	//	doIt
	
	class PLines
	{
		int M_Product_ID = 0;
		int M_Locator_ID = 0;
		int M_LocatorTo_ID = 0;
		int M_AttributeSetInstance_ID = 0;
		BigDecimal qty = Env.ZERO;
		public BigDecimal getQty()
		{
			return qty;
		}
		public void setQty(BigDecimal qty)
		{
			this.qty = qty;
		}
		public int getM_Product_ID()
		{
			return M_Product_ID;
		}
		public void setM_Product_ID(int m_Product_ID)
		{
			M_Product_ID = m_Product_ID;
		}
		public int getM_Locator_ID()
		{
			return M_Locator_ID;
		}
		public void setM_Locator_ID(int m_Locator_ID)
		{
			M_Locator_ID = m_Locator_ID;
		}
		public int getM_LocatorTo_ID()
		{
			return M_LocatorTo_ID;
		}
		public void setM_LocatorTo_ID(int m_LocatorTo_ID)
		{
			M_LocatorTo_ID = m_LocatorTo_ID;
		}
		public int getM_AttributeSetInstance_ID()
		{
			return M_AttributeSetInstance_ID;
		}
		public void setM_AttributeSetInstance_ID(int m_AttributeSetInstance_ID)
		{
			M_AttributeSetInstance_ID = m_AttributeSetInstance_ID;
		}
		@Override
		public String toString()
		{
			return M_Product_ID + "|" + M_AttributeSetInstance_ID + "|" + M_Locator_ID + "|" + M_LocatorTo_ID;
		}
	}
}	//	POGBOMDrop
