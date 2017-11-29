/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2006 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.kenos.idempiere.lbr.tax.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Properties;

import org.adempiere.exceptions.ProductNotOnPriceListException;
import org.compiere.model.MAttributeSet;
import org.compiere.model.MOrder;
import org.compiere.model.MProduct;
import org.compiere.model.MRole;
import org.compiere.model.MStorageOnHand;
import org.compiere.model.MUOM;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 *  Order Line Model.
 * 	<code>
 * 			MOrderLine ol = new MOrderLine(m_order);
			ol.setM_Product_ID(wbl.getM_Product_ID());
			ol.setQtyOrdered(wbl.getQuantity());
			ol.setPrice();
			ol.setPriceActual(wbl.getPrice());
			ol.setTax();
			ol.saveEx();

 *	</code>
 *  @author Jorg Janke
 *  @version $Id: MOrderLine.java,v 1.6 2006/10/02 05:18:39 jjanke Exp $
 * 
 * @author Teo Sarca, SC ARHIPAC SERVICE SRL
 *			<li>BF [ 2588043 ] Insufficient message ProductNotOnPriceList
 * @author Michael Judd, www.akunagroup.com
 * 			<li>BF [ 1733602 ] Price List including Tax Error - when a user changes the orderline or
 * 				invoice line for a product on a price list that includes tax, the net amount is
 * 				incorrectly calculated.
 */
public class MOrderLine extends org.compiere.model.MOrderLine
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 *  Parent Constructor.
	 		ol.setM_Product_ID(wbl.getM_Product_ID());
			ol.setQtyOrdered(wbl.getQuantity());
			ol.setPrice();
			ol.setPriceActual(wbl.getPrice());
			ol.setTax();
			ol.saveEx();
	 *  @param  order parent order
	 */
	public MOrderLine(MOrder order)
	{
		super(order);
	}
	
	/**************************************************************************
	 *  Default Constructor
	 *  @param ctx context
	 *  @param  C_OrderLine_ID  order line to load
	 *  @param trxName trx name
	 */
	public MOrderLine (Properties ctx, int C_OrderLine_ID, String trxName)
	{
		super (ctx, C_OrderLine_ID, trxName);
	}
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MOrderLine (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//	MOrderLine
	
	/**************************************************************************
	 * 	Before Save
	 *	@param newRecord
	 *	@return true if it can be saved
	 */
	protected boolean beforeSave (boolean newRecord)
	{
		if (newRecord && getParent().isComplete()) {
			log.saveError("ParentComplete", Msg.translate(getCtx(), "C_OrderLine"));
			return false;
		}
		//	Get Defaults from Parent
		if (getC_BPartner_ID() == 0 || getC_BPartner_Location_ID() == 0
			|| getM_Warehouse_ID() == 0 
			|| getC_Currency_ID() == 0)
			setOrder (getParent());
		if (m_M_PriceList_ID == 0)
			setHeaderInfo(getParent());

		
		//	R/O Check - Product/Warehouse Change
		if (!newRecord 
			&& (is_ValueChanged("M_Product_ID") || is_ValueChanged("M_Warehouse_ID"))) 
		{
			if (!canChangeWarehouse())
				return false;
		}	//	Product Changed
		
		//	Charge
		if (getC_Charge_ID() != 0 && getM_Product_ID() != 0)
				setM_Product_ID(0);
		//	No Product
		if (getM_Product_ID() == 0)
			setM_AttributeSetInstance_ID(0);
		//	Product
		else	//	Set/check Product Price
		{
			//	Set Price if Actual = 0
			if (m_productPrice == null 
				&&  Env.ZERO.compareTo(getPriceActual()) == 0
				&&  Env.ZERO.compareTo(getPriceList()) == 0)
				setPrice();
			//	Check if on Price list
			if (m_productPrice == null)
				getProductPricing(m_M_PriceList_ID);
			// IDEMPIERE-1574 Sales Order Line lets Price under the Price Limit when updating
			//	Check PriceLimit
			boolean enforce = m_IsSOTrx && getParent().getM_PriceList().isEnforcePriceLimit();
			if (enforce && MRole.getDefault().isOverwritePriceLimit())
				enforce = false;
			//	Check Price Limit?
			if (enforce && getPriceLimit() != Env.ZERO
			  && getPriceActual().compareTo(getPriceLimit()) < 0)
			{
				log.saveError("UnderLimitPrice", "PriceEntered=" + getPriceEntered() + ", PriceLimit=" + getPriceLimit()); 
				return false;
			}
			//
			if (!m_productPrice.isCalculated())
			{
				throw new ProductNotOnPriceListException(m_productPrice, getLine());
			}
		}

		//	UOM
		if (getC_UOM_ID() == 0 
			&& (getM_Product_ID() != 0 
				|| getPriceEntered().compareTo(Env.ZERO) != 0
				|| getC_Charge_ID() != 0))
		{
			int C_UOM_ID = MUOM.getDefault_UOM_ID(getCtx());
			if (C_UOM_ID > 0)
				setC_UOM_ID (C_UOM_ID);
		}
		//	Qty Precision
		if (newRecord || is_ValueChanged("QtyEntered"))
			setQtyEntered(getQtyEntered());
		if (newRecord || is_ValueChanged("QtyOrdered"))
			setQtyOrdered(getQtyOrdered());
		
		//	Qty on instance ASI for SO
		if (m_IsSOTrx 
			&& getM_AttributeSetInstance_ID() != 0
			&& (newRecord || is_ValueChanged("M_Product_ID")
				|| is_ValueChanged("M_AttributeSetInstance_ID")
				|| is_ValueChanged("M_Warehouse_ID")))
		{
			MProduct product = getProduct();
			if (product.isStocked())
			{
				int M_AttributeSet_ID = product.getM_AttributeSet_ID();
				boolean isInstance = M_AttributeSet_ID != 0;
				if (isInstance)
				{
					MAttributeSet mas = MAttributeSet.get(getCtx(), M_AttributeSet_ID);
					isInstance = mas.isInstanceAttribute();
				}
				//	Max
				if (isInstance)
				{
					MStorageOnHand[] storages = MStorageOnHand.getWarehouse(getCtx(), 
						getM_Warehouse_ID(), getM_Product_ID(), getM_AttributeSetInstance_ID(), 
						null, true, false, 0, get_TrxName());
					BigDecimal qty = Env.ZERO;
					for (int i = 0; i < storages.length; i++)
					{
						if (storages[i].getM_AttributeSetInstance_ID() == getM_AttributeSetInstance_ID())
							qty = qty.add(storages[i].getQtyOnHand());
					}
					
					if (getQtyOrdered().compareTo(qty) > 0)
					{
						log.warning("Qty - Stock=" + qty + ", Ordered=" + getQtyOrdered());
						log.saveError("QtyInsufficient", "=" + qty); 
						return false;
					}
				}
			}	//	stocked
		}	//	SO instance
		
		//	FreightAmt Not used
		//if (Env.ZERO.compareTo(getFreightAmt()) != 0)
			//setFreightAmt(Env.ZERO);

		//	Set Tax
		if (getC_Tax_ID() == 0)
			setTax();

		//	Get Line No
		if (getLine() == 0)
		{
			String sql = "SELECT COALESCE(MAX(Line),0)+10 FROM C_OrderLine WHERE C_Order_ID=?";
			int ii = DB.getSQLValue (get_TrxName(), sql, getC_Order_ID());
			setLine (ii);
		}
		
		//	Calculations & Rounding
		setLineNetAmt();	//	extended Amount with or without tax
		setDiscount();

		/* Carlos Ruiz - globalqss
		 * IDEMPIERE-178 Orders and Invoices must disallow amount lines without product/charge
		 */
		if (getParent().getC_DocTypeTarget().isChargeOrProductMandatory()) {
			if (getC_Charge_ID() == 0 && getM_Product_ID() == 0 && (getPriceEntered().signum() != 0 || getQtyEntered().signum() != 0)) {
				log.saveError("FillMandatory", Msg.translate(getCtx(), "ChargeOrProductMandatory"));
				return false;
			}
		}
		
		return true;
	}	//	beforeSave

}	//	MOrderLine
