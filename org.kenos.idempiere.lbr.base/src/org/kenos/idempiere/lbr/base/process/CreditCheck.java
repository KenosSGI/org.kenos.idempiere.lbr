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

import java.sql.Timestamp;
import java.util.logging.Level;

import org.adempierelbr.model.MPaymentTerm;
import org.compiere.model.MBPartner;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;

/**
 *	Check credit status
 *	
 *  @author Ricardo Santana <rsantana@kenos.com.br>
 */
public class CreditCheck extends SvrProcess
{
	/** Grace Days */
	private int p_GraceDays 		= 5;
	
	/** Unlock */
	private boolean p_Unlock 		= false;
	
	/** Cut-off date Days */
	private Timestamp p_CutOffDate 	= null;
	
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
			else if (name.equals(MPaymentTerm.COLUMNNAME_GraceDays))
				p_GraceDays = para[i].getParameterAsInt();
			else if (name.equals("Cut_Date"))
				p_CutOffDate = para[i].getParameterAsTimestamp();
			else if (name.equals("LBR_IsUnlockCredit"))
				p_Unlock = para[i].getParameterAsBoolean();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 * 	Generate Shipments
	 *	@return info
	 *	@throws Exception
	 */
	protected String doIt () throws Exception
	{
		if (log.isLoggable(Level.INFO)) log.info("GraceDay=" + p_GraceDays
			+ ", Cut_Date=" + p_CutOffDate);
		
		String where = "EXISTS (SELECT 1 FROM RV_OpenItem oi "
				+ "WHERE oi.C_BPartner_ID=C_BPartner.C_BPartner_ID "
				+ "AND oi.IsSOTrx='Y' "
				+ "AND oi.DueDate<TRUNC(SYSDATE - " + p_GraceDays + ") "
				+ "AND EXISTS (SELECT 1 FROM C_DocType dt "
				+ "WHERE dt.C_DocType_ID=oi.C_DocTypeTarget_ID AND dt.DocBaseType='ARI') ";
		
		if (p_CutOffDate != null)
			where += "AND oi.DateInvoiced>=" + DB.TO_DATE(p_CutOffDate);
		
		//	Close group
		where += ")";
		
		int[] ids = new Query (getCtx(), MBPartner.Table_Name, "SOCreditStatus!='S' AND " + where, get_TrxName()).setClient_ID().getIDs();
		for (int id : ids)
		{
			MBPartner bp = new MBPartner (getCtx(), id, get_TrxName());
			bp.setSOCreditStatus(MBPartner.SOCREDITSTATUS_CreditStop);
			bp.save();
		}

		//	Unlock BPs with stopped credit
		if (p_Unlock)
		{
			//	Credit OK		
			int[] idsUnlock = new Query (getCtx(), MBPartner.Table_Name, "SOCreditStatus='S' AND NOT " + where, get_TrxName()).setClient_ID().getIDs();
			for (int id : idsUnlock)
			{
				MBPartner bp = new MBPartner (getCtx(), id, get_TrxName());
				bp.setSOCreditStatus(MBPartner.SOCREDITSTATUS_CreditOK);
				bp.save();
			}

			return "@Success@\n" + ids.length + " parceiros tiveram o crédito cancelado. " + idsUnlock.length + " parceiros desbloqueados.";
		}

		return "@Success@\n" + ids.length + " parceiros tiveram o crédito cancelado.";
	}	//	doIt
}	//	CreditCheck
