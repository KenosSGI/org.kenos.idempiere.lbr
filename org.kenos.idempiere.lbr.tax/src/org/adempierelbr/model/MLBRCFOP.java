/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
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
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

import org.compiere.model.MLocation;
import org.compiere.model.Query;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	Model for CFOP Table
 *
 *	@author Mario Grigioni
 *	@contributor Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRCFOP.java, v2.0 2009/11/10 8:27:53 PM, mgrigioni Exp $
 */
public class MLBRCFOP extends X_LBR_CFOP
{
	/**
	 *	Serial Version
	 */
	private static final long serialVersionUID = 1L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRCFOP (Properties ctx, int ID, String trx)
	{
		super (ctx, ID, trx);
	}	//	MLBRCFOP

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRCFOP (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//	MLBRCFOP
	
	/**
	 * 		Retorno o Objeto do CFOP pelo Nome
	 * 
	 * 	@param ctx
	 * 	@param value
	 * 	@param trxName
	 * 	@return
	 */
	public static MLBRCFOP getCFOP (Properties ctx, String value, String trxName)
	{	
		String sql = "SELECT MAX(LBR_CFOP_ID) FROM LBR_CFOP " +
				     "WHERE value = ? AND AD_Client_ID = ?";
		
		int LBR_CFOP_ID = DB.getSQLValue (trxName, sql, new Object[]{value, Env.getAD_Client_ID(ctx)});
		if (LBR_CFOP_ID > 0)
			return new MLBRCFOP(ctx,LBR_CFOP_ID,trxName);
		//
		return null;
	}	//	getCFOP

	/**
	 * 		Verifica se o CFOP é válido para o Documento Escolhido
	 * 
	 * @param isSOTrx
	 * @param orgLocation
	 * @param bpLocation
	 * @param allowNull - if true, return valid when NULL
	 * @return boolean true (valid), false (invalid)
	 */
	public boolean validateCFOP (boolean isSOTrx, MLocation orgLocation, MLocation bpLocation, boolean allowNull)
	{
		boolean validated   = true;
		boolean sameRegion  = true;
		boolean sameCountry = true;

		if (getValue() == null || getValue().equals(""))
			return allowNull;


		if (orgLocation.getC_Country_ID() != bpLocation.getC_Country_ID()){
			sameRegion  = false;
			sameCountry = false;
		}
		else if (orgLocation.getC_Region_ID() != bpLocation.getC_Region_ID()){
			sameRegion  = false;
		}

		//VALIDACAO
		if (isSOTrx){
			if (!sameCountry && getValue().charAt(0) != '7') //Saída fora do Pais)
				return false;

			if (!sameRegion && sameCountry && getValue().charAt(0) != '6') //Saída fora Estado
				return false;

			if (sameRegion && sameCountry && getValue().charAt(0) != '5') //Saída mesmo Estado
				return false;
		}
		else{
			if (!sameCountry && getValue().charAt(0) != '3') //Entrada fora do Pais)
				return false;

			if (!sameRegion && sameCountry && getValue().charAt(0) != '2') //Entrada fora Estado
				return false;

			if (sameRegion && sameCountry && getValue().charAt(0) != '1') //Entrada mesmo Estado
				return false;
		}

		return validated;
	}	//	validateCFOP

	/**
	 * validateCFOP
	 * @param LBR_CFOP_ID
	 * @param isSOTrx
	 * @param orgLocation
	 * @param bpLocation
	 * @param allowNull - if true, return valid when NULL
	 * @return boolean true (valid), false (invalid)
	 */
	public static boolean validateCFOP (Integer LBR_CFOP_ID, boolean isSOTrx,
			                           MLocation orgLocation, MLocation bpLocation, boolean allowNull){

		boolean validated = true;

		if (LBR_CFOP_ID == null || LBR_CFOP_ID.intValue() <= 0)
			return allowNull;

		MLBRCFOP cfop = new MLBRCFOP(Env.getCtx(),LBR_CFOP_ID,null);

		validated = cfop.validateCFOP(isSOTrx, orgLocation, bpLocation, allowNull);

		return validated;
	}	//	validateCFOP
	
	/**
	 * 		Retorna qual é o CFOP
	 * 
	 * 	@param 	C_DocType_ID
	 * 	@param 	LBR_ProductCategory_ID
	 * 	@param 	LBR_BPartnerCategory_ID
	 * 	@param 	lbr_TransactionType
	 * 	@param 	lbr_DestionationType
	 * 	@param 	lbr_IsSubTributaria
	 * 	@param 	lbr_IsManufactured
	 *  @param	lbr_TaxRegime
	 * 	@return	MLBRCFOPLine
	 */
	public static MLBRCFOPLine chooseCFOP (int AD_Org_ID, int C_DocType_ID, int LBR_ProductCategory_ID, int LBR_BPartnerCategory_ID, 
			String lbr_TransactionType, String lbr_DestionationType, boolean lbr_IsSubTributaria, boolean lbr_IsManufactured, String lbr_TaxRegime,
			String trxName)
	{
		Map<String,Object> filterMap = new HashMap<String,Object> ();
		filterMap.put(MLBRCFOPLine.COLUMNNAME_AD_Org_ID, AD_Org_ID);
		filterMap.put(MLBRCFOPLine.COLUMNNAME_C_DocType_ID, C_DocType_ID);
		filterMap.put(MLBRCFOPLine.COLUMNNAME_LBR_ProductCategory_ID, LBR_ProductCategory_ID);
		filterMap.put(MLBRCFOPLine.COLUMNNAME_LBR_BPartnerCategory_ID, LBR_BPartnerCategory_ID);
		filterMap.put(MLBRCFOPLine.COLUMNNAME_lbr_TransactionType, lbr_TransactionType);
		filterMap.put(MLBRCFOPLine.COLUMNNAME_lbr_DestionationType, lbr_DestionationType);
		filterMap.put(MLBRCFOPLine.COLUMNNAME_lbr_IsSubTributaria, lbr_IsSubTributaria);
		filterMap.put(MLBRCFOPLine.COLUMNNAME_lbr_IsManufactured, lbr_IsManufactured);
		filterMap.put("LBR_TaxRegime", lbr_TaxRegime);
		//
		return chooseCFOP (filterMap, trxName);
	}	//	chooseCFOP
	
	/**
	 * 		Retorna qual é o CFOP
	 * 
	 * 	@param 	C_DocType_ID
	 * 	@param 	LBR_ProductCategory_ID
	 * 	@param 	LBR_BPartnerCategory_ID
	 * 	@param 	lbr_TransactionType
	 * 	@param 	lbr_DestionationType
	 * 	@param 	lbr_IsSubTributaria
	 * 	@param 	lbr_IsManufactured
	 *  @param	lbr_TaxRegime
	 * 	@return	MLBRCFOPLine
	 */
	public static MLBRCFOPLine chooseCFOP (final Map<String,Object> filterMap, String trxName)
	{
		StringBuilder where = new StringBuilder ("IsActive='Y' AND AD_Client_ID IN (0, ?) ");
		List<Object> params = new ArrayList<Object>();
		Set<String> selected = filterMap.keySet();
		
		//	Mandatory
		params.add(Env.getAD_Client_ID(Env.getCtx()));
		
		//	Specific filter
		if (filterMap.containsKey(COLUMNNAME_AD_Org_ID))
		{
			where.append ("AND AD_Org_ID IN (0, ?) ");
			params.add(filterMap.get(COLUMNNAME_AD_Org_ID));
		}
		
		//	Yes-No-Both filter
		Arrays.asList(new String[] 
			{
				MLBRCFOPLine.COLUMNNAME_lbr_IsSubTributaria,
				MLBRCFOPLine.COLUMNNAME_lbr_IsManufactured
			}).stream().forEach(colName -> 
			{
				where.append("AND (").append(colName).append("='B'");
				if (selected.contains(colName))
				{
					where.append("OR ").append(colName).append("=?");
					params.add(filterMap.get(colName));
				}
				where.append(") ");
			});
		
		//	Generic filter
		Arrays.asList(new String[] 
			{
				MLBRCFOPLine.COLUMNNAME_C_DocType_ID,
				MLBRCFOPLine.COLUMNNAME_LBR_BPartnerCategory_ID,
				MLBRCFOPLine.COLUMNNAME_lbr_DestionationType,
				MLBRCFOPLine.COLUMNNAME_LBR_IndIEDest,
				MLBRCFOPLine.COLUMNNAME_LBR_ProductCategory_ID,
				MLBRCFOPLine.COLUMNNAME_LBR_TaxRegime,
				MLBRCFOPLine.COLUMNNAME_lbr_TransactionType
			}).stream().forEach(colName -> 
			{
				where.append("AND (").append(colName).append(" IS NULL");
				Object param = filterMap.get(colName);
				if (selected.contains(colName) && param != null)
				{
					where.append(" OR ").append(colName).append("=?");
					params.add(filterMap.get(colName));
				}
				where.append(") ");
			});
		//
	 	List<MLBRCFOPLine> list = new Query(Env.getCtx(), MLBRCFOPLine.Table_Name, where.toString(), trxName)
	 		.setParameters(params)
	 		.list();
	 	//
	 	if (list != null && list.size() == 1)
	 		return list.get (0);
	 	//
	 	MLBRCFOPLine cfopLine = null;
	 	int maxPoints = 0;
	 	//
	 	for (MLBRCFOPLine cfopLineChooser : list)
	 	{
	 		int points = 10;
	 		//
	 		if (cfopLineChooser.getAD_Org_ID() > 0)
	 			points += 100;
	 		if (cfopLineChooser.getlbr_TransactionType() != null)
	 			points += 20;
			if (cfopLineChooser.getLBR_BPartnerCategory_ID() > 0)
				points += 10;
			if (cfopLineChooser.getLBR_ProductCategory_ID() > 0)
				points += 10;
			if (cfopLineChooser.get_Value("LBR_IndIEDest") != null)
				points += 40;
			//
			if (points > maxPoints)
			{
				maxPoints = points;
				cfopLine = cfopLineChooser;
			}
	 	}
	 	//
		return cfopLine;
	}	//	getCFOP
} 	//	MLBRCFOP