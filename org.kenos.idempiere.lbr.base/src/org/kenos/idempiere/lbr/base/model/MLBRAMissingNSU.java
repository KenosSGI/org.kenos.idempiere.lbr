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

import org.adempierelbr.model.X_LBR_MissingNSU;

/**
 * 		Model for the database view missing NSU
 * 
 * @author Ricardo Santana (Kenos, www.kenos.com.br)
 */
public class MLBRAMissingNSU extends X_LBR_MissingNSU
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
	public MLBRAMissingNSU (Properties ctx, int LBR_MissingNSU_ID, String trxName)
	{
		super (ctx, LBR_MissingNSU_ID, trxName);
	}	//	MLBRAMissingNSU
	
	/**
	 * Load Constructor
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLBRAMissingNSU (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRAMissingNSU
}	//	MLBRAMissingNSU
