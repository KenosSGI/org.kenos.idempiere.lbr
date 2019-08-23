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
package org.kenos.idempiere.lbr.base.process;

import java.util.logging.Level;
import java.util.stream.Stream;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;

/**
 *		Delete unused ASI
 *	
 *  @author Ricado Santana
 *  @version $Id: ASICleanup.java,v 1.2 2019/08/23 15:09:01 ralexsander Exp $
 */
public class ASICleanup extends SvrProcess
{
	/**	Serial Number		*/
	private String p_SerNo = null;
	
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
			else if (name.equals("SerNo"))
				p_SerNo = para[i].getParameterAsString();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 * 	Cleanup Attribute Set Instance
	 * 
	 *	@return info
	 *	@throws Exception
	 */
	protected String doIt () throws Exception
	{
		StringBuilder sql = new StringBuilder("DELETE FROM M_AttributeSetInstance asi")
			.append(" WHERE NOT EXISTS (SELECT 1 FROM M_MovementLine t WHERE t.M_AttributeSetInstanceTo_ID=asi.M_AttributeSetInstance_ID) ");
		
		//	Tables with M_AttributeSetInstance_ID
		Stream.of ("M_Storage","M_InOutLine","M_ProductionLine","M_InventoryLine",
					"M_MovementLine","M_Product","M_Transaction","C_OrderLine","PP_Product_BOM","A_Asset")
		
		//	Create SQL WHERE
		.forEach (tableName -> 
		{
			sql.append ("AND NOT EXISTS (SELECT 1 FROM ").append (tableName)
				.append (" t WHERE t.M_AttributeSetInstance_ID=asi.M_AttributeSetInstance_ID) ");
		});
		
		//	Check if Serial Number was provided
		if (p_SerNo != null && !p_SerNo.isEmpty())
			sql.append("AND SerNo=").append(DB.TO_STRING (p_SerNo));
		
		int count = DB.executeUpdate (sql.toString(), get_TrxName());
		
		return "@Success@ Foram removidos " + count + " instância de conjunto de atributos";
	}	//	doIt	
}	//	ASICleanup
