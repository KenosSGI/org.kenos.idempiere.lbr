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
package org.kenos.idempiere.lbr.tax.pricing;

import org.compiere.model.MSysConfig;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.base.model.SysConfig;

/**
 *  Product Price Calculations
 *
 *  @author Ricarod Santana
 *  @version $Id: MProductPricing.java,v 1.2 2021/08/03 00:51:02 jjanke Exp $
 */
public class MProductPricing extends org.compiere.model.MProductPricing
{
	/**
	 * New constructor to be used with the ProductPriceFactories
	 */
	public MProductPricing() {}
	
	@Override
	public boolean isCalculated() {
		if (MSysConfig.getBooleanValue(SysConfig.LBR_DISABLE_PRICE_LIST_CHECK, false, Env.getAD_Client_ID(Env.getCtx())))
			return true;
		return super.isCalculated();
	}	//	isCalculated
}	//	MProductPrice
