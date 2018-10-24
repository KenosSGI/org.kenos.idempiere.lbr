package org.kenos.idempiere.lbr.base.event;

import org.adempiere.base.event.AbstractEventHandler;
import org.adempiere.base.event.IEventTopics;
import org.compiere.model.MInOutLine;
import org.compiere.model.MInventoryLine;
import org.compiere.model.MMovementLine;
import org.compiere.model.MProductionLine;
import org.compiere.model.MSysConfig;
import org.compiere.model.PO;
import org.osgi.service.event.Event;

/**
 * 		Check Locator consistency to avoid cross-organization
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: LocatorCheck.java, v1.0 2018/10/24 16:18:00 AM, ralexsander Exp $
 */
public class LocatorCheck extends AbstractEventHandler
{
	/**
	 * 	Handle generic events
	 */
	@Override
	protected void doHandleEvent(Event event)
	{
		//	Event Topic
		String topic = event.getTopic();
		
		//	Model Events
		if (topic.startsWith (IEventTopics.MODEL_EVENT_PREFIX))
		{
			PO po = getPO (event);
	
			//	Do nothing
			if (po == null)
				return;
			
			boolean allowCrossOrg 		= MSysConfig.getBooleanValue ("org.kenos.allowcrossorglocator", false, po.getAD_Client_ID());
			boolean allowCrossOrgMove 	= MSysConfig.getBooleanValue ("org.kenos.allowcrossorglocator.inventorymove", false, po.getAD_Client_ID());
			
			//	Allow cross organization, do not proceed with validation
			if (allowCrossOrg)
				return;
			
			//	Handle In/Out Line Events
			if (MInOutLine.Table_Name.equals(po.get_TableName()))
				doHandleEvent ((MInOutLine) po, event, topic);
			
			//	Handle Production Line Events
			else if (MProductionLine.Table_Name.equals(po.get_TableName()))
				doHandleEvent ((MProductionLine) po, event, topic);
			
			//	Handle Inventory Line Events
			else if (MInventoryLine.Table_Name.equals(po.get_TableName()))
				doHandleEvent ((MInventoryLine) po, event, topic);
			
			//	Handle Movement Line Events
			else if (!allowCrossOrgMove && MMovementLine.Table_Name.equals(po.get_TableName()))
				doHandleEvent ((MMovementLine) po, event, topic);
		}
	}	//	doHandleEvent
	
	/**
	 * 	Handle In/Out Line Events
	 * 	@param iol In/Out Line
	 * 	@param event Event
	 * 	@param topic Topic of Event
	 */
	private void doHandleEvent (MInOutLine iol, Event event, String topic)
	{
		//	Only validates if there is change on Locator		
		if (!iol.is_ValueChanged(MInOutLine.COLUMNNAME_M_Locator_ID))
			return;
		
		//	Check Organization
		checkOrg (iol.getAD_Org_ID(), iol.getM_Locator().getM_Warehouse().getAD_Org_ID(), event);
	}	//	doHandleTableEvent
	
	/**
	 * 	Handle Production Line Events
	 * 	@param pl Production Line
	 * 	@param event Event
	 * 	@param topic Topic of Event
	 */
	private void doHandleEvent (MProductionLine pl, Event event, String topic)
	{
		//	Only validates if there is change on Locator
		if (!pl.is_ValueChanged(MProductionLine.COLUMNNAME_M_Locator_ID))
			return;
		
		checkOrg (pl.getAD_Org_ID(), pl.getM_Locator().getM_Warehouse().getAD_Org_ID(), event);
	}	//	doHandleTableEvent
	
	/**
	 * 	Handle Inventory Line Events
	 * 	@param il Inventory Line
	 * 	@param event Event
	 * 	@param topic Topic of Event
	 */
	private void doHandleEvent (MInventoryLine il, Event event, String topic)
	{
		//	Only validates if there is change on Locator
		if (!il.is_ValueChanged(MInventoryLine.COLUMNNAME_M_Locator_ID))
			return;
		
		checkOrg (il.getAD_Org_ID(), il.getM_Locator().getM_Warehouse().getAD_Org_ID(), event);
	}	//	doHandleTableEvent
	
	/**
	 * 	Handle Movement Line Events
	 * 	@param ml Movement Line
	 * 	@param event Event
	 * 	@param topic Topic of Event
	 */
	private void doHandleEvent (MMovementLine ml, Event event, String topic)
	{
		//	Only validates if there is changes on Locators
		if (!ml.is_ValueChanged(MMovementLine.COLUMNNAME_M_Locator_ID)
				&& !ml.is_ValueChanged(MMovementLine.COLUMNNAME_M_LocatorTo_ID))
			return;
		
		checkOrg (ml.getAD_Org_ID(), ml.getM_Locator().getM_Warehouse().getAD_Org_ID(), event);
		checkOrg (ml.getAD_Org_ID(), ml.getM_LocatorTo().getM_Warehouse().getAD_Org_ID(), event);
	}	//	doHandleTableEvent
	
	/**
	 * 	Check if the Organization of Warehouse is the same as the Organization of Document
	 * 	@param Doc_Locator_ID Organization of the document
	 * 	@param Warehouse_Locator_ID Organization of the Warehouse
	 * 	@param event Event
	 */
	private void checkOrg (int Doc_Locator_ID, int Warehouse_Locator_ID, Event event)
	{
		if (Doc_Locator_ID != Warehouse_Locator_ID)
			addErrorMessage (event, "O Localizador selecionado pertence a uma Organização diferente da Organização do documento");
	}	//	checkOrg

	/**
	 * 	Register to receive OSGi Events
	 */
	@Override
	protected void initialize()
	{
		registerTableEvent (IEventTopics.PO_BEFORE_NEW, 	MInOutLine.Table_Name);
		registerTableEvent (IEventTopics.PO_BEFORE_CHANGE, 	MInOutLine.Table_Name);
		registerTableEvent (IEventTopics.PO_BEFORE_NEW, 	MProductionLine.Table_Name);
		registerTableEvent (IEventTopics.PO_BEFORE_CHANGE, 	MProductionLine.Table_Name);
		registerTableEvent (IEventTopics.PO_BEFORE_NEW, 	MInventoryLine.Table_Name);
		registerTableEvent (IEventTopics.PO_BEFORE_CHANGE, 	MInventoryLine.Table_Name);
		registerTableEvent (IEventTopics.PO_BEFORE_NEW, 	MMovementLine.Table_Name);
		registerTableEvent (IEventTopics.PO_BEFORE_CHANGE, 	MMovementLine.Table_Name);
	}	//	initialize
}	//	LocatorCheck
