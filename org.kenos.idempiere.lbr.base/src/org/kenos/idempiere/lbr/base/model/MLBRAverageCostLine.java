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

import org.adempierelbr.model.X_LBR_AverageCostLine;
import org.compiere.model.MAcctSchema;
import org.compiere.model.MClient;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * 	Model para Custo Médio BR - Linha
 * 
 * @author Ricardo Santana (Kenos, www.kenos.com.br)
 * @version $Id: MLBRAverageCostLine.java, v1.0 2018/04/05 18:03:39 PM, ralexsander Exp $
 */
public class MLBRAverageCostLine extends X_LBR_AverageCostLine
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = 2999619739257074599L;

	/**
	 * Default Constructor
	 * @param ctx
	 * @param LBR_AverageCost_ID
	 * @param trxName
	 */
	public MLBRAverageCostLine (Properties ctx, int LBR_AverageCostLine_ID, String trxName)
	{
		super (ctx, LBR_AverageCostLine_ID, trxName);
	}	//	MLBRAverageCostLine
	
	/**
	 * Load Constructor
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLBRAverageCostLine (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRAverageCostLine
	
	/**
	 * 	Before save validations
	 */
	@Override
	protected boolean beforeSave(boolean newRecord)
	{
		String costingLevel = MClient.get(Env.getCtx()).getAcctSchema().getCostingLevel();

		//	Organization level, do not allow *
		if (MAcctSchema.COSTINGLEVEL_Organization.equals(costingLevel)
				&& getAD_Org_ID() == 0)
		{
			log.saveError ("FillMandatory", Msg.getElement(getCtx(), "AD_Org_ID"));
			return false;
		}
		return true;
	}	//	beforeSave
}	//	MLBRAverageCostLine
