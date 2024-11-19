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
package org.kenos.idempiere.lbr.nfe.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.adempierelbr.model.X_LBR_ExportDetail;
import org.adempierelbr.util.TextUtil;
import org.compiere.util.CLogger;
import org.compiere.util.Msg;

/**
 * 		Model for Export Detail
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 */
public class MLBRExportDetail extends X_LBR_ExportDetail
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MLBRExportDetail.class);
	
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = -6167414804184405217L;
	
	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRExportDetail (Properties ctx, int LBR_ExportDetail_ID, String trx)
	{
		super (ctx, LBR_ExportDetail_ID, trx);
	}	//	MLBRExportDetail
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRExportDetail (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRExportDetail
	
	/**
	 * 	Called before Save for Pre-Save Operation
	 * 	@param newRecord new record
	 *	@return true if record can be saved
	 */
	@Override
	protected boolean beforeSave (boolean newRecord) {
		String drawback = getlbr_Drawback();
		String validation = "";

		if (drawback != null 
				&& TextUtil.toNumeric(drawback).length() != 9
				&& TextUtil.toNumeric(drawback).length() != 11)
			validation += "@LBR_DrawbackNo@ ";

		if (isLBR_IsIndirectExport()) {
			if (getlbr_NFeID() == null || TextUtil.toNumeric(getlbr_NFeID()).length() != 44)
				validation += "@lbr_NFeID@ ";
			if (getQty() == null || getQty().signum() != 1)
				validation += "@Qty@ ";
			if (getLBR_ExportRegNo() == null || getLBR_ExportRegNo().isBlank())
				validation += "@LBR_ExportRegNo@ ";
		}
		else {
			setlbr_NFeID(null);
			setQty(null);
			setLBR_ExportRegNo(null);
		}
		
		if (!validation.isBlank()) {
			log.saveError("Error", Msg.parseTranslation(getCtx(), "@Invalid@ " + validation));
			return false;
		}
		
		return true;
	}	//	beforeSave
}	//	MLBRExportDetail
