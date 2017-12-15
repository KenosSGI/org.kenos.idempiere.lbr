package org.kenos.idempiere.lbr.base.process;

import org.compiere.model.MBPartner;
import org.compiere.model.MLocator;
import org.compiere.model.MProduction;
import org.compiere.model.MProductionLine;
import org.compiere.process.SvrProcess;
import org.kenos.idempiere.lbr.base.model.MLBRProductionGroup;

public class POGBOMDrop extends SvrProcess
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
		MLBRProductionGroup pg = new MLBRProductionGroup (getCtx(), p_LBR_ProductionGroup_ID, null);
		String xyz = String.valueOf (pg.getLBR_ProductionGroup_ID ());
		MLocator locator = MLocator.get (pg.getCtx(), pg.getM_Warehouse_ID(), "PRD-" + pg.getDocumentNo(), xyz, xyz, xyz);
		locator.set_ValueOfColumn(MBPartner.COLUMNNAME_C_BPartner_ID, pg.getC_BPartner_ID());
		locator.save();
		
		for (MProduction p : pg.getProduction())
		{
			//	Delete before continue
			for (MProductionLine pl : p.getLines())
				pl.delete(true);
			
			if (!p.getM_Product().isBOM())
				return "@Error@ Produto [" + p.getM_Product().getValue() + "] não possuí Lista de Materiais";
			p.createLines (false);
			
			//	Update locator
			if (pg.getM_Warehouse_ID() <= 0)
				continue;
			
			for (MProductionLine pl : p.getLines())
			{
				if (!pl.isEndProduct())
				{
					pl.setM_Locator_ID(locator.getM_Locator_ID());
					pl.save();
				}
			}
		}
		return "@Success@";
	}	//	doIt
}	//	POGBOMDrop
