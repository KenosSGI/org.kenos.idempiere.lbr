package org.kenos.idempiere.lbr.nfe.callout;

import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.adempierelbr.model.MLBRCFOP;
import org.adempierelbr.model.MLBRCFOPLine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
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
		//
		return "";
	}	//	start
}	//	Production
