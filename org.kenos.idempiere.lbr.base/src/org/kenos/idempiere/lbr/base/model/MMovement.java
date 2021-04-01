package org.kenos.idempiere.lbr.base.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.compiere.model.MOrgInfo;

/**
 * 		MMovement
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MMovement.java, v1.0 2021/04/01 1:53:09 PM, ralexsander Exp $
 */
public class MMovement extends org.compiere.model.MMovement
{
	/**
	 * 	Serial ID
	 */
	private static final long serialVersionUID = 1L;

	public MMovement (Properties ctx, int M_Movement_ID, String trxName)
	{
		super (ctx, M_Movement_ID, trxName);
	}	//	MMovement
	
	public MMovement (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MMovement
	
	public String getDestionationType()
	{
		String result = "ZZZ";	//	Invalid state
		MOrgInfo oi = MOrgInfo.get(getCtx(), getAD_Org_ID(), null);
		//
		if (getC_BPartner_Location_ID() > 0 && oi.getC_Location_ID() > 0)
		{
			if (getC_BPartner_Location().getC_Location().getC_Country_ID() != 139)
				result = MLBRCFOPLine.LBR_DESTIONATIONTYPE_Estrangeiro;
			else if (getC_BPartner_Location().getC_Location().getC_Region_ID() == oi.getC_Location().getC_Region_ID())
				result = MLBRCFOPLine.LBR_DESTIONATIONTYPE_EstadosIdenticos;
			else
				result = MLBRCFOPLine.LBR_DESTIONATIONTYPE_EstadosDiferentes;
		}
		
		return result;
	}	//	getDestionationType
}	//	MMovement
