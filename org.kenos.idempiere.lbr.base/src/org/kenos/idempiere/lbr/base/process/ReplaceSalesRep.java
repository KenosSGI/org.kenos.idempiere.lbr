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
package org.kenos.idempiere.lbr.base.process;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;

import org.compiere.model.MBPartner;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;

/**
 *	Replace Sales Rep
 *	
 *  @author Ricardo Santana <rsantana@kenos.com.br>
 */
public class ReplaceSalesRep extends SvrProcess
{
	/** Sales Rep */
	private int p_SalesRep_ID 		= 0;
	
	/** Sales Rep To */
	private int p_SalesRepTo_ID 	= 0;
	
	/** BPartner Group */
	private int p_BPGroup_ID 		= 0;
	
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals(MBPartner.COLUMNNAME_SalesRep_ID))
			{
				p_SalesRep_ID = para[i].getParameterAsInt();
				p_SalesRepTo_ID = para[i].getParameter_ToAsInt();
			}
			else if (name.equals(MBPartner.COLUMNNAME_C_BP_Group_ID))
				p_BPGroup_ID = para[i].getParameterAsInt();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 * 	Replace Sales Reps
	 *	@return info
	 *	@throws Exception
	 */
	protected String doIt () throws Exception
	{
		if (log.isLoggable(Level.INFO)) log.info("GraceDay=" + p_SalesRep_ID
				+ ", Cut_Date=" + p_SalesRepTo_ID + ", BPGroup_ID=" + p_BPGroup_ID);
		
		List<Object> params = new ArrayList<Object>();
		params.add(p_SalesRep_ID);
		
		String where = "SalesRep_ID=?";
		
		if (p_BPGroup_ID > 0)
		{
			where += "AND C_BP_Group_ID=?";
			params.add(p_BPGroup_ID);
		}
		
		int[] ids = new Query (getCtx(), MBPartner.Table_Name, where, get_TrxName())
				.setParameters(params)
				.setClient_ID()
				.getIDs();
		for (int id : ids)
		{
			MBPartner bp = new MBPartner (getCtx(), id, get_TrxName());
			bp.setSalesRep_ID(p_SalesRepTo_ID);
			bp.save();
		}

		return "@Success@\n" + ids.length + " parceiros foram atualizados.";
	}	//	doIt
}	//	ReplaceSalesRep
