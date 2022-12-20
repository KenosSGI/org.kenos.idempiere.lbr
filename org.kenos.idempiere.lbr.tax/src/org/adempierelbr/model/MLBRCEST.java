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

import org.adempierelbr.util.TextUtil;
import org.compiere.model.Query;
import org.compiere.util.Env;

/**
 *		CEST Model
 *
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 */
public class MLBRCEST extends X_LBR_CEST
{
	/**
	 * 	Serial ID
	 */
	private static final long serialVersionUID = 6220848628067123077L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRCEST (Properties ctx, int LBR_CEST_ID, String trx)
	{
		super (ctx, LBR_CEST_ID, trx);
	}	//	MLBRCEST

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRCEST (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRCEST
	
	/**
	 * 		Get CEST
	 * @param ctx
	 * @param cestName
	 * @param trxName
	 * @return
	 */
	public static MLBRCEST get (Properties ctx, String cestName, String trxName)
	{
		String sql = "AD_Client_ID IN (0, ?) AND Value=? ";
		//
		return new Query (ctx, Table_Name, sql, trxName)
			.setParameters (new Object[]{Env.getAD_Client_ID(ctx), formatCEST (cestName)})
			.setOnlyActiveRecords(true)
			.setOrderBy ("ORDER BY AD_Client_ID DESC")
			.first();
	}	//	get
	
	/**
	 * 	Format the CEST code, e.g.:
	 * 
	 * 	888888 	->	88.888.88
	 * 	8888.88	->	88.888.88
	 * 
	 * @param cest
	 * @return	formatted CEST
	 */
	public static String formatCEST (String cest)
	{
		//	Get numeric only
		cest = TextUtil.toNumeric (cest);

		//	Format full-sized CEST
		if (cest.length() >= 7)
			return cest.replaceAll ("^([\\d]{2})([\\d]{3})([\\d]{2})", "$1.$2.$3");

		//	Otherwise return the numeric
		return cest;
	}	//	formatCEST
} 	//	MLBRCEST