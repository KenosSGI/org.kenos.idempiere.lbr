package org.kenos.idempiere.lbr.base.process;

import org.compiere.model.MProduction;
import org.kenos.idempiere.lbr.base.model.MLBRProductionGroup;

public interface IPOGBOMDrop
{
	
	public String dropBOM (MProduction p_production, MLBRProductionGroup pg);

}
