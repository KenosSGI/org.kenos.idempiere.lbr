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
package org.adempierelbr.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.util.Env;

/**
 * 
 * Grupo de Impostos
 * 
 * @author Rogério Alves Feitosa (Kenos, www.kenos.com.br)
 * @version $Id: MLBRTaxGroup.java, v1.0 2020/02/20 12:13:22, rfeitosa Exp $
 *
 */
public class MLBRTaxGroup extends X_LBR_TaxGroup
{

	/**
	 * Serial
	 */
	private static final long serialVersionUID = -6517627867259820593L;

	/**
	 * Default Constructor
	 * @param ctx
	 * @param LBR_TaxStatus_ID
	 * @param trxName
	 */
	public MLBRTaxGroup(Properties ctx, int LBR_TaxGroup_ID, String trxName)
	{
		super(ctx, LBR_TaxGroup_ID, trxName);
	}	//MLBRTaxGroup
	
	/**
	 * Load Constructor
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLBRTaxGroup(Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//MLBRTaxGroup
	
	/**
	 * Get Tax Group
	 * @param LBR_TaxGroup_ID
	 * @return
	 */
	public static MLBRTaxGroup getTaxGroup(String taxname)
	{
		String where =  "UPPER(name) like UPPER(?) AND IsActive = 'Y'";
		
		MTable table = MTable.get (Env.getCtx(), MLBRTaxGroup.Table_Name);
		Query query =  new Query(Env.getCtx(), table, where,null);
	 		  query.setParameters(new Object[]{taxname});
	 	//
	 	return query.first();		
	}
	
	/**
	 * Get Tax Group ID
	 * @param taxname
	 * @return
	 */
	public static int getLBR_TaxGroup_ID(String taxname)
	{
		MLBRTaxGroup taxGroup = getTaxGroup(taxname);
		
		if (taxGroup != null && taxGroup.getLBR_TaxGroup_ID() > 0)
			return taxGroup.getLBR_TaxGroup_ID();
		return -1;
	}

}	//	MLBRTaxStatus