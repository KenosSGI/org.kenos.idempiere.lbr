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
 * Contributor(s): Armen Rizal (armen@goodwill.co.id) Bug Fix 1564496         *
 *****************************************************************************/
package org.kenos.idempiere.lbr.base.callout;

import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.adempiere.model.POWrapper;
import org.adempierelbr.wrapper.I_W_C_DocType;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MLocator;
import org.compiere.model.MMovement;
import org.compiere.model.MMovementLine;
import org.compiere.model.MWarehouse;
import org.compiere.util.Env;

/**
 * 
 * @author Rogério Feitosa (Kenos, www.kenos.com.br)
 * @version $Id: MovementLine.java, v1.0 2018/09/25 12:17:06, kenos_rfeitosa Exp $
 *
 */
public class MovementLine implements IColumnCallout 
{
	/**
	 * 
	 */
	public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
	{
		Integer M_Product_ID = (Integer)value;
		if (M_Product_ID == null || M_Product_ID.intValue() == 0)
			return "";

		//	Set Attribute
		if (Env.getContextAsInt(ctx, WindowNo, Env.TAB_INFO, "M_Product_ID") == M_Product_ID.intValue()
			&& Env.getContextAsInt(ctx, WindowNo, Env.TAB_INFO, "M_AttributeSetInstanceTo_ID") != 0)
			mTab.setValue("M_AttributeSetInstanceTo_ID", Env.getContextAsInt(ctx, WindowNo, Env.TAB_INFO, "M_AttributeSetInstanceTo_ID"));
		else
			mTab.setValue("M_AttributeSetInstanceTo_ID", null);
		 
		//	Set Locators
		Integer M_Movement_ID = (Integer) mTab.getValue(MMovementLine.COLUMNNAME_M_Movement_ID);
		MMovement move = new MMovement (ctx, M_Movement_ID, null);

		I_W_C_DocType dt = POWrapper.create(move.getC_DocType(), I_W_C_DocType.class);
		if ("MMST-".equals(dt.getlbr_DocBaseType()))	//	Transfer Out
		{
			MWarehouse[] from = MWarehouse.getForOrg(ctx, move.getAD_Org_ID());
			
			//	No Warehouse
			if (from == null || from.length < 1)
				return "";
			
			//	No Locator From
			MLocator fromLocator = from[0].getDefaultLocator();
			if (fromLocator == null)
				return "";
			
			MWarehouse[] to = MWarehouse.getInTransitForOrg(ctx, move.getAD_Org_ID());
			
			//	No Warehouse
			if (to == null || to.length < 1)
				return "";
			
			//	No Locator To
			MLocator toLocator = to[0].getDefaultLocator();
			if (toLocator == null)
				return "";

			//	Fill default locators
			mTab.setValue(MMovementLine.COLUMNNAME_M_Locator_ID, fromLocator.getM_Locator_ID());
			mTab.setValue(MMovementLine.COLUMNNAME_M_LocatorTo_ID, toLocator.getM_Locator_ID());
		}
		
		return "";
	}   //  product	
	
}	//	CalloutMove