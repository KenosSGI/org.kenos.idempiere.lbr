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

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;

import org.compiere.model.Query;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.base.model.MLBRTaxHold;

/**
 *
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRNFLineTax.java, v1.0 2011/10/17 1:53:04 AM, ralexsander Exp $
 */
public class MLBRNFLineTax extends X_LBR_NFLineTax
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = -6683920438972507538L;
	
	/** Parent					*/
	private MLBRNotaFiscalLine			m_parent = null;
	
	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNFLineTax (Properties ctx, int ID, String trxName)
	{
		super(ctx, ID, trxName);
	}	//	MLBRNFLineTax

	/**
	 * 	Get Parent
	 *	@return parent
	 */
	public MLBRNotaFiscalLine getParent()
	{
		if (m_parent == null)
			m_parent = new MLBRNotaFiscalLine(getCtx(), getLBR_NotaFiscalLine_ID(), get_TrxName());
		return m_parent;
	}	//	getParent
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNFLineTax (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//	MLBRNFLineTax
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNFLineTax (MLBRNotaFiscalLine nfl)
	{
		super(nfl.getCtx(), 0, nfl.get_TrxName());
		//
		setLBR_NotaFiscalLine_ID(nfl.getLBR_NotaFiscalLine_ID());
	}	//	MLBRNFLineTax
	
	public String getTaxStatus (boolean isSOTrx)
	{
		if (getLBR_TaxStatus_ID() <= 0)
			return "";
		//
		if (!isSOTrx 
				&& getLBR_TaxStatus().getPO_Name() != null
				&& getLBR_TaxStatus().getPO_Name().length() > 0)
			return getLBR_TaxStatus().getPO_Name();
		//
		return getLBR_TaxStatus().getName();
	}	//	getTaxStatus
	
	public String getmodBC ()
	{
		if (getLBR_TaxBaseType_ID() <= 0)
			return "";
		//
		if (getLBR_TaxBaseType().getName() != null
				&& getLBR_TaxBaseType().getValue().length() > 0)
			return getLBR_TaxBaseType().getValue();
		//
		return getLBR_TaxBaseType().getValue();
	}	//	getTaxStatus
	
	/**
	 * 		Grava os impostos
	 * 	@param tl
	 */
	public void setTaxes (MLBRTaxLine tl)
	{
		if (tl == null)
			return;
		//
		setlbr_TaxAmt(tl.getlbr_TaxAmt());
		setlbr_TaxBase(tl.getlbr_TaxBase());
		setlbr_TaxBaseAmt(tl.getlbr_TaxBaseAmt());
		setlbr_TaxRate(tl.getlbr_TaxRate());
		//
		setLBR_TaxStatus_ID(tl.getLBR_TaxStatus_ID());
		setLBR_LegalMessage_ID(tl.getLBR_LegalMessage_ID());
		setLBR_TaxBaseType_ID(tl.getLBR_TaxBaseType_ID());
		setQty(tl.getQty());
		setLBR_TaxListAmt(tl.getLBR_TaxListAmt());
	}	//	setTaxes
	
	/**
	 * 	Valor dos impostos que serão destacados como desconto na NF
	 * 		Mecanismo criado para gerar NFs para Zona Franca
	 * 
	 * 	@param nota fiscal line
	 * 	@return discount amount
	 */
	public static BigDecimal getTaxesDiscount (MLBRNotaFiscalLine nfLine)
	{
		if (nfLine == null)
			return Env.ZERO;
		//
		BigDecimal taxesDiscount = Env.ZERO;
		//
		for (MLBRNFLineTax nfLineTax : nfLine.getTaxes())
		{
			if (nfLineTax.getlbr_TaxRate().compareTo(Env.ZERO) == -1)
				taxesDiscount = taxesDiscount.add (nfLineTax.getlbr_TaxAmt().abs());
		}
		//
		return taxesDiscount;
	}	//	getTaxesDiscount
	
	public static MLBRNFLineTax get (int LBR_NotaFiscalLine_ID, int LBR_TaxGroup_ID, String trxName)
	{
		return new Query (Env.getCtx(), Table_Name, COLUMNNAME_LBR_NotaFiscalLine_ID+"=? AND "+COLUMNNAME_LBR_TaxGroup_ID+"=?", trxName)
			.setParameters(LBR_NotaFiscalLine_ID, LBR_TaxGroup_ID)
			.first();
	}	//	get
	
	@Override
	protected boolean beforeSave(boolean newRecord)
	{
		if (newRecord)
		{
			if (Env.ZERO.compareTo(getlbr_TaxAmt()) == 0)
				setlbr_TaxBaseAmt(Env.ZERO);
			
			if (getLBR_TaxStatus_ID() < 1)
				return true;
			
			//	Tax hold, already paid
			int LBR_TaxName_ID = getLBR_TaxStatus().getLBR_TaxName_ID();
			
			if (getLBR_NotaFiscalLine().getLBR_NotaFiscal().isSOTrx() 
					&& getLBR_NotaFiscalLine().getM_Product_ID() > 0
					&& (LBR_TaxName_ID == MLBRTax.TAX_ICMS || LBR_TaxName_ID == MLBRTax.TAX_ICMSST || LBR_TaxName_ID == MLBRTax.TAX_FCP)
					&& getLBR_TaxStatus().getName().equals("60"))
			{
				int M_Product_ID = getLBR_NotaFiscalLine().getM_Product_ID();
				int AD_Org_ID = getLBR_NotaFiscalLine().getLBR_NotaFiscal().getAD_Org_ID();
				Timestamp dateDoc = getLBR_NotaFiscalLine().getLBR_NotaFiscal().getDateDoc();
				//
				MLBRTaxHold hold = MLBRTaxHold.getTaxHold (M_Product_ID, AD_Org_ID, dateDoc);
				if (hold != null)
				{
					BigDecimal taxBaseAmt 	= Env.ZERO;
					BigDecimal taxAmt 		= Env.ZERO;
					BigDecimal taxRate 		= Env.ZERO;
					//
					if (LBR_TaxName_ID == MLBRTax.TAX_ICMS)
					{
						taxBaseAmt 	= hold.getICMS_TaxBaseAmt();
						taxAmt 		= hold.getICMS_TaxAmt();
						taxRate 	= hold.getICMS_TaxRate();
					}
					else if (LBR_TaxName_ID == MLBRTax.TAX_ICMSST)
					{
						taxBaseAmt 	= hold.getICMSST_TaxBaseAmt();
						taxAmt 		= hold.getICMSST_TaxAmt();
						taxRate 	= hold.getICMSST_TaxRate();
					}
					else if (LBR_TaxName_ID == MLBRTax.TAX_FCP)
					{
						taxBaseAmt 	= hold.getFCP_TaxBaseAmt();
						taxAmt 		= hold.getFCP_TaxAmt();
						taxRate 	= hold.getFCP_TaxRate();
					}
					
					BigDecimal qty = getLBR_NotaFiscalLine().getQty();
					//
					setlbr_TaxAmt(taxAmt.multiply(qty).setScale(2, RoundingMode.HALF_UP));
					setlbr_TaxBaseAmt(taxBaseAmt.multiply(qty).setScale(2, RoundingMode.HALF_UP));
					setlbr_TaxRate(taxRate);
				}
			}
		}
		return true;
	}	//	beforeSave
}	//	MLBRNotaFiscal
