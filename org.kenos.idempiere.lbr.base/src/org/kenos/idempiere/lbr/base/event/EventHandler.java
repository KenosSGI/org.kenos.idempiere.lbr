package org.kenos.idempiere.lbr.base.event;

import java.util.Properties;

import org.adempiere.base.event.AbstractEventHandler;
import org.adempiere.base.event.IEventTopics;
import org.compiere.model.MAcctSchema;
import org.compiere.model.MClient;
import org.compiere.model.MClientInfo;
import org.compiere.model.MCost;
import org.compiere.model.MInOutLine;
import org.compiere.model.MOrderLine;
import org.compiere.model.MProduct;
import org.compiere.model.MSysConfig;
import org.compiere.model.PO;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.base.model.SysConfig;
import org.osgi.service.event.Event;

/**
 * 		OSGi Events Handler
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: EventHandler.java, v1.0 2017/09/06 10:56:57 AM, ralexsander Exp $
 */
public class EventHandler extends AbstractEventHandler
{
	/**	Logger	*/
	private static CLogger log = CLogger.getCLogger (EventHandler.class);
	
	@Override
	protected void doHandleEvent(Event event)
	{
		//	Event Topic
		String topic = event.getTopic();
		
		//	Just Login
		if (IEventTopics.AFTER_LOGIN.equals(topic))
		{
			doHandleLoginEvent (event);
			return;
		}
		
		//	Model Events
		if (topic.startsWith (IEventTopics.MODEL_EVENT_PREFIX))
		{
			PO po = getPO (event);
	
			//	Do nothing
			if (po == null)
				;
			
			//	Handle InOutLine Events
			else if (MInOutLine.Table_Name.equals(po.get_TableName()))
				doHandleEvent ((MInOutLine) po, topic);
			
			//	Handle InOutLine Events
			else if (MOrderLine.Table_Name.equals(po.get_TableName()))
				doHandleEvent ((MOrderLine) po, topic);
		}
		
	}	//	doHandleEvent
	
	/**
	 * 	Handle Shipment/Receipt Line Events
	 * 	@param event
	 */
	private void doHandleEvent (MInOutLine iol, String topic)
	{
		//	Fill the Attributes on counter documents
		if (MSysConfig.getBooleanValue (SysConfig.LBR_FILL_ATTRIBUTE_COUNTER_DOC, false)
				&& IEventTopics.PO_BEFORE_NEW.equals (topic))
		{
			if (iol.getM_AttributeSetInstance_ID() == 0
					&& iol.getC_OrderLine_ID() > 0
					&& iol.getC_OrderLine().getRef_OrderLine_ID() > 0
					&& iol.getC_OrderLine().getRef_OrderLine().getM_AttributeSetInstance_ID() > 0)
				iol.setM_AttributeSetInstance_ID(iol.getC_OrderLine().getRef_OrderLine().getM_AttributeSetInstance_ID());
		}
	}	//	doHandleTableEvent
	
	/**
	 * 	Handle Order Line Events
	 * 	@param event
	 */
	private void doHandleEvent (MOrderLine ol, String topic)
	{
		//	Already filled, do nothing
		if (ol.getPriceCost() != null && ol.getPriceCost().signum() != 0)
			return;
		
		//	No product, do nothing
		if (ol.getM_Product_ID() == 0)
			return;
		
		//	FIXME: Evaluate this solution, create a field in Organization if it proves good
		//	Invalid or not configured element cost
		int M_ElementCost_ID = MSysConfig.getIntValue("LBR_DEFAULT_ELEMENTCOST", ol.getAD_Client_ID(), ol.getAD_Org_ID());
		if (M_ElementCost_ID < 1)
			return;
		
		MClientInfo ci = MClientInfo.get(ol.getCtx());
		MAcctSchema as = new MAcctSchema (ol.getCtx(), ci.getC_AcctSchema1_ID(), ol.get_TrxName());
		
		MProduct p = new MProduct (ol.getCtx(), ol.getM_Product_ID(), ol.get_TrxName());
		MCost cost = null;
		
		//	Combinations of org and ASI
		Integer combinations[][] = { 
				 { ol.getM_AttributeSetInstance_ID(), ol.getAD_Org_ID() },	//	With ASI, With Org
				 { ol.getM_AttributeSetInstance_ID(), 0 },					//	With ASI, No *
				 { 0, ol.getAD_Org_ID() },									//	No ASI, With Org
				 { 0, 0 } };												//	No ASI, No Org
		
		for (Integer[] combination : combinations)
		{
			cost = MCost.get (p, combination[0], as, combination[1], M_ElementCost_ID, ol.get_TrxName());
			
			//	Current cost price found
			if (cost != null && cost.getCurrentCostPrice().signum() != 0)
			{
				ol.setPriceCost(cost.getCurrentCostPrice());
				return;
			}
		}
	}	//	doHandleTableEvent
	
	/**
	 *	Handle Login Events, enable LBR
	 */
	private void doHandleLoginEvent (Event event)
	{
		/************
		 * 	Habilita o LBR no contexto
		 **/
		boolean enabled = MSysConfig.getBooleanValue (SysConfig.LBR_ENABLED, false, MClient.get (Env.getCtx()).getAD_Client_ID());
		
		if (enabled)
			log.fine ("LBR is ENABLED.");
		else
			log.fine ("LBR is DISABLED.");

		//	Set Enviroment
		Env.setContext(Env.getCtx(), "#LBR_ENABLED", enabled);
		
		/************
		 * 	Grava no contexto a moeda padrão para PDV
		 **/
		//	Set BPartner Cash
		Env.setContext(Env.getCtx(), "#POS_BPartner_ID", MClientInfo.get(Env.getCtx()).getC_BPartnerCashTrx_ID());
		
		/************
		 * 	Grava no contexto o uso dos parceiros de negócios
		 **/
		Boolean isUseUnifiedBP = MSysConfig.getBooleanValue(SysConfig.LBR_USE_UNIFIED_BP, false);

		if(isUseUnifiedBP)
			log.fine ("LBR: Usando PN unificados.");
		else
			log.fine ("LBR: Usando um PN por Filial (Normal).");

		//	Load Enviroment
		Env.setContext(Env.getCtx(), "#LBR_USE_UNIFIED_BP", isUseUnifiedBP);
		
		/************
		 * 	Grava no contexto as permissões de visualização
		 * 		das janela de informação
		 **/
		boolean showEmployeeInfo = true;
		
		Properties ctx = Env.getCtx();

		if (!MSysConfig.getBooleanValue(SysConfig.LBR_SHOW_EMPLOYEE_BP_INFO + Env.getAD_Role_ID(ctx), true, Env.getAD_Client_ID(ctx)))
			showEmployeeInfo = false;
		
		Env.setContext(Env.getCtx(), "#LBR_SHOW_EMPLOYEE_BP_INFO", showEmployeeInfo);
	}	//	doHandleLoginEvent

	/**
	 * 	Register to receive OSGi Events
	 */
	@Override
	protected void initialize()
	{
		registerEvent (IEventTopics.AFTER_LOGIN);
		registerTableEvent (IEventTopics.PO_BEFORE_NEW, MInOutLine.Table_Name);
		registerTableEvent (IEventTopics.PO_BEFORE_NEW, MOrderLine.Table_Name);
		registerTableEvent (IEventTopics.PO_BEFORE_CHANGE, MOrderLine.Table_Name);
	}	//	initialize
}	//	EventHandler
