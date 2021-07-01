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
package org.kenos.idempiere.lbr.tax.process;

import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.stream.Collectors;

import org.compiere.model.MOrg;
import org.compiere.model.MPriceListVersion;
import org.compiere.model.MProductPO;
import org.compiere.model.MProductPrice;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.tax.model.MOrder;

/**
 *		Create Counter-Document
 *
 *	Today is my 37th birthday, in probably a month I'll 
 *		 get the corona virus vaccine.
 *	
 *  @author Ricado Santana
 *  @version $Id: CreateCounterDoc.java,v 1.2 2021/07/01 15:09:01 ralexsander Exp $
 */
public class CreateCounterDoc extends SvrProcess
{
	/**	Order		*/
	private int p_C_Order_ID = 0;
	private boolean p_Force = false;
	private boolean p_SameProduct = false;
	
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
			else if ("LBR_ForceExec".equals(name))
				p_Force = para[i].getParameterAsBoolean();
			else if ("IsSameProduct".equals(name))
				p_SameProduct = para[i].getParameterAsBoolean();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		p_C_Order_ID = getRecord_ID();
	}	//	prepare

	/**
	 * 	Create the counter-document
	 * 
	 *	@return info
	 *	@throws Exception
	 */
	protected String doIt () throws Exception
	{
		if (p_C_Order_ID < 0)
			return "@Error@ @FillMandatory@ @C_Order_ID@";
		
		PO doc = new Query (getCtx(), MOrder.Table_Name, MOrder.COLUMNNAME_Ref_Order_ID+"=?", null)
			.setParameters(p_C_Order_ID)
			.first();
		if (doc != null && !p_Force)
			return "@Error@ Documento já lançado: " + doc.get_Value(MOrder.COLUMNNAME_DocumentNo);
		
		MOrder order = new MOrder (getCtx(), p_C_Order_ID, get_TrxName());
		MOrg org = MOrg.get(getCtx(), order.getAD_Org_ID());
		int counterC_BPartner_ID = org.getLinkedC_BPartner_ID(get_TrxName()); 
		if (counterC_BPartner_ID == 0)
			return "@Error@ Organização não vinculada a um Parceiro";
		
		//	Check product
		if (!p_SameProduct)
		{
			int M_PriceList_Version_ID = new Query(Env.getCtx(), MPriceListVersion.Table_Name, "M_PriceList_ID=? AND ValidFrom<=" + DB.TO_DATE(order.getDateOrdered()), null)
				.setParameters(order.getM_PriceList_ID())
				.setOrderBy("ValidFrom DESC")
				.setOnlyActiveRecords(true)
				.firstId();
			
			boolean[] isError = { false };
			//
			Arrays.asList(order.getLines()).stream()
				.filter(l -> l.getM_Product_ID() > 0)
				.map(p -> p.getProduct())
				.collect(Collectors.toSet())
				.forEach(p -> {
					List<MProductPO> pos = new Query(Env.getCtx(), MProductPO.Table_Name, "C_BPartner_ID=? AND VendorProductNo=?", null)
						.setParameters(new Object[]{counterC_BPartner_ID, p.getValue()})
						.setOnlyActiveRecords(true)
						.list();
					if (pos.size() < 1)
					{
						addLog("Produto não configurado: " + p.getValue());
						isError[0] = true;
					}
					else if (pos.size() > 1)
					{
						addLog("Código configurado para mais de um produto: " + p.getValue());
						isError[0] = true;
					}
					else
					{
						MProductPrice pricing = MProductPrice.get (getCtx(), M_PriceList_Version_ID, pos.get(0).getM_Product_ID(), get_TrxName());
						if (pricing == null)
						{
							MProductPrice pp = new MProductPrice (getCtx(), M_PriceList_Version_ID, pos.get(0).getM_Product_ID(), Env.ZERO, Env.ZERO, Env.ZERO, get_TrxName());
							pp.saveEx();
						}
					}
				});
			//
			if (isError[0])
				return "@Error@ Verifique o vínculo dos produtos abaixo:";
		}
		
		MOrder counterDoc = order.createCounterDoc (counterC_BPartner_ID, true, p_SameProduct);
		
		if (counterDoc == null)
			return "@Error@ Verifique se o Parceiro está vinculado a uma empresa do grupo e se há contra-documento configurado";
		
		//	Show link
		addLog (0, null, null, counterDoc.getDocumentNo(), MOrder.Table_ID, counterDoc.get_ID());
		
		return "@Success@";
	}	//	doIt	
}	//	CreateCounterDoc
