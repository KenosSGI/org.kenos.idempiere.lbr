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
import java.util.List;
import java.util.Properties;

import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.util.Env;

/**
 * 
 * Código da Situação Tributária
 * 
 * @author Rogério Alves Feitosa (Kenos, www.kenos.com.br)
 * @version $Id: MLBRTaxStatus.java, v1.0 2015/09/16 12:13:22, rfeitosa Exp $
 *
 */
public class MLBRTaxStatus extends X_LBR_TaxStatus
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
	public MLBRTaxStatus(Properties ctx, int LBR_TaxStatus_ID, String trxName)
	{
		super(ctx, LBR_TaxStatus_ID, trxName);
	}	//MLBRTaxStatus
	
	/**
	 * Load Constructor
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLBRTaxStatus(Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//MLBRTaxStatus
	
	/**
	 * Tax Status Name
	 * @param nfLineTax
	 * @param isSoTrx
	 * @return
	 */
	public String getTaxStatus (Boolean isSOTrx)
	{
		if (!isSOTrx && getPO_Name() != null)
			return getPO_Name();
		else
			return getName();
	}	//	getTaxStatusName
	
	/**
	 * Get Tax Status List
	 * @param LBR_TaxGroup_ID
	 * @return
	 */
	public static MLBRTaxStatus[] getTaxStatusList(int LBR_TaxGroup_ID)
	{
		String where =  "LBR_TaxStatus_ID IN (SELECT LBR_TaxStatus_ID FROM LBR_TaxStatus " + 
						"WHERE LBR_TaxName_ID IN (SELECT LBR_TaxName_ID FROM C_Tax WHERE  LBR_TaxGroup_ID = ?) AND IsActive = 'Y')";
		
		MTable table = MTable.get (Env.getCtx(), MLBRTaxStatus.Table_Name);
		Query query =  new Query(Env.getCtx(), table, where, null);
	 		  query.setParameters(new Object[]{LBR_TaxGroup_ID}).setOrderBy("name");
	 	//
	 	List<MLBRTaxStatus> list = query.list();
	 	return list.toArray(new MLBRTaxStatus[list.size()]);
	}
	
	/**
	 * Get Tax Status List
	 * @param LBR_TaxGroup_ID
	 * @return
	 */
	public static int getTaxStatus(int LBR_TaxGroup_ID, String taxStatus)
	{
		String where =  "LBR_TaxStatus_ID IN (SELECT LBR_TaxStatus_ID FROM LBR_TaxStatus " + 
						"WHERE LBR_TaxName_ID IN (SELECT LBR_TaxName_ID FROM C_Tax WHERE  LBR_TaxGroup_ID = ? AND Name = ?) AND IsActive = 'Y')";
		
		MTable table = MTable.get (Env.getCtx(), MLBRTaxStatus.Table_Name);
		Query query =  new Query(Env.getCtx(), table, where, null);
	 		  query.setParameters(new Object[]{LBR_TaxGroup_ID,taxStatus}).setOrderBy("name");
	 	//
	 	return query.firstId();
	}
	
	/**
	 * Get Tax Status List
	 * @param LBR_TaxGroup_ID
	 * @return
	 */
	public static int get (int LBR_TaxName_ID, String taxStatus)
	{
		String where =  COLUMNNAME_LBR_TaxName_ID + "=? AND " + COLUMNNAME_Name + "=? AND " + COLUMNNAME_AD_Client_ID + " IN (0,?)";
		
		MTable table = MTable.get (Env.getCtx(), MLBRTaxStatus.Table_Name);
		Query query =  new Query(Env.getCtx(), table, where, null);
	 		  query.setParameters(new Object[]{LBR_TaxName_ID,taxStatus,Env.getAD_Client_ID(Env.getCtx())})
	 		  .setOnlyActiveRecords(true)
	 		  .setOrderBy(COLUMNNAME_AD_Client_ID + " DESC");
	 	//
	 	return query.firstId();
	}	//	get

}	//	MLBRTaxStatus