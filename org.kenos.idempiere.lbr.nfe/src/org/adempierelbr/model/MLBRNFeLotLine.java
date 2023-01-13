/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil					  *
 * This program is free software; you can redistribute it and/or modify it	*
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.		   *
 * See the GNU General Public License for more details.					   *
 * You should have received a copy of the GNU General Public License along	*
 * with this program; if not, write to the Free Software Foundation, Inc.,	*
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.					 *
 *****************************************************************************/
package org.adempierelbr.model;

import java.sql.ResultSet;
import java.util.Properties;

/**
 *	Model for LBR_NFeLotLine
 *
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 */
public class MLBRNFeLotLine extends X_LBR_NFeLotLine
{
	/**
	 * Serial ID
	 */
	private static final long serialVersionUID = -7445601802466820538L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNFeLotLine (Properties ctx, int ID, String trxName)
	{
		super(ctx, ID, trxName);
	}	//	MLBRNFeLotLine

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNFeLotLine (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//	MLBRNFeLotLine
	
	public MLBRNotaFiscal getNotaFiscal()
	{
		return (MLBRNotaFiscal) super.getLBR_NotaFiscal();
	}	//	getNotaFiscal
	
	@Override
	protected boolean beforeSave(boolean newRecord) {
		if (!getLBR_NFeLot().getlbr_NFeEnv().equals(getLBR_NotaFiscal().getlbr_NFeEnv())) {
			log.saveError("Error", "Ambiente do Lote não corresponde ao ambiente da NF");
			return false;
		}
		
		return true;
	}	//	beforeSave
}	//	MLBRNFeLotLine
