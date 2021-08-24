/******************************************************************************
 * Copyright (C) 2009 Low Heng Sin                                            *
 * Copyright (C) 2009 Idalica Corporation                                     *
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
package org.kenos.idempiere.lbr.nfe.apps.form;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;

import org.compiere.model.GridTab;
import org.compiere.model.MSysConfig;
import org.compiere.util.DB;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.kenos.idempiere.lbr.base.model.SysConfig;

public abstract class CreateFrom extends org.compiere.grid.CreateFrom
{
	public CreateFrom(GridTab gridTab) {
		super(gridTab);
	}

	/**
	 *  Load PBartner dependent Order/Invoice/Shipment Field.
	 *  @param C_BPartner_ID BPartner
	 *  @param forInvoice for invoice
	 */
	protected ArrayList<KeyNamePair> loadOrderData (int C_BPartner_ID, boolean forInvoice, boolean sameWarehouseOnly)
	{
		return loadOrderData(C_BPartner_ID, forInvoice, sameWarehouseOnly, false);
	}
	
	protected ArrayList<KeyNamePair> loadOrderData (int C_BPartner_ID, boolean forInvoice, boolean sameWarehouseOnly, boolean forCreditMemo)
	{
		boolean allowCrossOrg = MSysConfig.getBooleanValue (SysConfig.ALLOW_CROSS_ORG, false, Env.getAD_Client_ID(Env.getCtx()));
		ArrayList<KeyNamePair> list = new ArrayList<KeyNamePair>();

		String isSOTrxParam = isSOTrx ? "Y":"N";
		//	Display
		StringBuffer display = new StringBuffer("o.DocumentNo||' - ' ||")
			.append(DB.TO_CHAR("o.DateOrdered", DisplayType.Date, Env.getAD_Language(Env.getCtx())))
			.append("||' - '||")
			.append(DB.TO_CHAR("o.GrandTotal", DisplayType.Amount, Env.getAD_Language(Env.getCtx())));
		//
		String column = "ol.QtyDelivered";
		String colBP = "o.C_BPartner_ID";
		if (forInvoice)
		{
			column = "ol.QtyInvoiced";
			colBP = "o.Bill_BPartner_ID";
		}
		StringBuffer sql = new StringBuffer("SELECT o.C_Order_ID,")
			.append(display)
			.append(" FROM C_Order o WHERE ")
			.append(colBP)
			.append("=? AND o.IsSOTrx=? AND o.DocStatus IN ('CL','CO') AND o.C_Order_ID IN (SELECT ol.C_Order_ID FROM C_OrderLine ol WHERE ");
		if (forCreditMemo)
			sql.append(column).append(">0 AND (CASE WHEN ol.QtyDelivered>=ol.QtyOrdered THEN ol.QtyDelivered-ol.QtyInvoiced!=0 ELSE 1=1 END)) ");
		else
			sql.append("ol.QtyOrdered-").append(column).append("!=0) ");
					
		if(sameWarehouseOnly)
		{
			sql.append(" AND o.M_Warehouse_ID=? ");
		}

		//	Same Org
		if (!allowCrossOrg)
			sql.append(" AND o.AD_Org_ID=? ");

		if (forCreditMemo)
			sql.append("ORDER BY o.DateOrdered DESC,o.DocumentNo DESC");
		else
			sql.append("ORDER BY o.DateOrdered,o.DocumentNo");
		//
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			int index = 1;
			pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setInt(index++, C_BPartner_ID);
			pstmt.setString(index++, isSOTrxParam);
			if (!allowCrossOrg)
				pstmt.setInt(index++, getAD_Org_ID());
			if(sameWarehouseOnly)
			{
				//only active for material receipts
				pstmt.setInt(index++, getM_Warehouse_ID());
			}
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				list.add(new KeyNamePair(rs.getInt(1), rs.getString(2)));
			}
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally
		{
			DB.close(rs, pstmt);
			rs = null; pstmt = null;
		}

		return list;
	}   //  initBPartnerOIS

	/**
	 * Get Warehouse from window's context
	 * @return warehouse id
	 */
	public int getAD_Org_ID()
	{
		return Env.getContextAsInt(Env.getCtx(), getGridTab().getWindowNo(), "AD_Org_ID");
	}
}	//	CreateFrom
