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
package org.adempierelbr.validator;

import org.compiere.model.MClient;
import org.compiere.model.MProduction;
import org.compiere.model.MProductionLine;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.PO;
import org.compiere.util.CLogger;

/**
 * 		Processos auxiliares do Pedido de Industrialização e Produções Individuais
 * 
 * 	@author Rogério Feitosa <rfeitosa@kenos.com.br>
 *	@version $Id: VLBRProductionGroup.java, v1.0 2018/0/26 10:57:00 PM, rfeitosa Exp $
 */
public class VLBRProductionGroup implements ModelValidator
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(VLBRProductionGroup.class);
	/** Client			*/
	private int		m_AD_Client_ID = -1;

	/**
	 *	Initialize Validation
	 *	@param engine validation engine
	 *	@param client client
	 */
	public void initialize (ModelValidationEngine engine, MClient client)
	{
		//	Global Validator
		if (client != null) 
		{
			m_AD_Client_ID = client.getAD_Client_ID();
			log.info(client.toString());
		}
		else 
			log.info("Initializing global validator: "+this.toString());

		//	Document Validate
		engine.addDocValidate(MProduction.Table_Name, this);
	}	//	initialize

	/**
	 *	Get Client to be monitored
	 *	@return AD_Client_ID client
	 */
	public int getAD_Client_ID ()
	{
		return m_AD_Client_ID;
	}	//	getAD_Client_ID

	/**
	 *	User Login.
	 *	Called when preferences are set
	 *	@param AD_Org_ID org
	 *	@param AD_Role_ID role
	 *	@param AD_User_ID user
	 *	@return error message or null
	 */
	public String login (int AD_Org_ID, int AD_Role_ID, int AD_User_ID)
	{
		log.info ("AD_User_ID=" + AD_User_ID);
		
		/**
		 * Registra a classe de CreateFrom para o Lote da NFe para a versão SWING
		 * 		para a versão ZK veja @see org.adempiere.webui.session.WebUIServlet
		 * 
		 * FIXME: Criar a classe UI
		 */
//		if (Ini.isClient())
//			VCreateFromFactory.registerClass (MLBRNFeLot.Table_ID, VCreateFromNFeLotUI.class);
		
		return null;
	}	//	login

	/**
     *	Model Change of a monitored Table.
     *	Called after PO.beforeSave/PO.beforeDelete
     *	when you called addModelChange for the table
     *	@param po persistent object
     *	@param type TYPE_
     *	@return error message or null
     *	@exception Exception if the recipient wishes the change to be not accept.
     */
	public String modelChange (PO po, int type) throws Exception
	{
		return null;
	}	//	modelChange

	/**
	 *	Validate Document.
	 *	Called as first step of DocAction.prepareIt
     *	when you called addDocValidate for the table.
     *	Note that totals, etc. may not be correct.
	 *	@param po persistent object
	 *	@param timing see TIMING_ constants
     *	@return error message or null
	 */
	public String docValidate (PO po, int timing)
	{
		if (timing == TIMING_BEFORE_REVERSECORRECT
				|| timing == TIMING_BEFORE_REVERSEACCRUAL)
		{
			//	Production
			MProduction prod = (MProduction) po;
			
			for (MProductionLine line : prod.getLines())
			{
				//	Se a Produção estiver relacionada a uma Nota Fiscal, Não Estornar Produção
				if (line.get_ValueAsInt("LBR_NotaFiscalLine_ID") > 0)
					return "Impossível Estornar Produção relacionada a uma Nota Fiscal";
			}
		}
		return null;
	}	//	docValidate
}	//	VLBRCommons