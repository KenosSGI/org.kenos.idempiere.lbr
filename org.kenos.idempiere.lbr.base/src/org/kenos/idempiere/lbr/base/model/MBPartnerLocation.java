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
package org.kenos.idempiere.lbr.base.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.adempierelbr.wrapper.I_W_C_BPartner_Location;
import org.compiere.model.MBPartner;
import org.compiere.model.Query;

/**
 * Partner Location Model
 * 
 * @author Ricardo Santana <rsantana@kenos.com.br>
 */
public class MBPartnerLocation extends org.compiere.model.MBPartnerLocation
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = -7861131249517505388L;


	/**************************************************************************
	 * Default Constructor
	 * 
	 * @param ctx context
	 * @param C_BPartner_Location_ID id
	 * @param trxName transaction
	 */
	public MBPartnerLocation (Properties ctx, int C_BPartner_Location_ID, String trxName)
	{
		super (ctx, C_BPartner_Location_ID, trxName);
	} 	// 	MBPartnerLocation

	/**
	 * Constructor from ResultSet row
	 * 
	 * @param ctx context
	 * @param rs current row of result set to be loaded
	 * @param trxName transaction
	 */
	public MBPartnerLocation(Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	} 	// 	MBPartnerLocation

	@Override
	protected boolean beforeSave(boolean newRecord) 
	{
		if (newRecord)
		{
			int count = new Query (getCtx(), Table_Name, COLUMNNAME_C_BPartner_ID + "=?", get_TrxName())
				.setParameters(getC_BPartner_ID()).count();
			if (count == 0)
			{
				MBPartner partner = (MBPartner) getC_BPartner();
				set_ValueOfColumn(I_W_C_BPartner_Location.COLUMNNAME_lbr_CNPJ, partner.get_Value(I_W_C_BPartner.COLUMNNAME_lbr_CNPJ));
			}
		}
		return super.beforeSave(newRecord);
	}	//	beforeSave
} 	// 	MBPartnerLocation
