package org.kenos.idempiere.lbr.base.event;

import org.adempiere.base.event.AbstractEventHandler;
import org.adempiere.base.event.IEventTopics;
import org.compiere.model.MInOut;
import org.compiere.model.MInOutLine;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MSysConfig;
import org.compiere.model.PO;
import org.kenos.idempiere.lbr.base.model.SysConfig;
import org.osgi.service.event.Event;

/**
 * 		Check org consistency to avoid cross-organization invoices
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: LocatorCheck.java, v1.0 2021/08/24 14:46:00 AM, ralexsander Exp $
 */
public class CrossOrgCheck extends AbstractEventHandler
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
			
			boolean allowCrossOrg = MSysConfig.getBooleanValue (SysConfig.ALLOW_CROSS_ORG, false, po.getAD_Client_ID());
			
			//	Allow cross organization, do not proceed with validation
			if (allowCrossOrg)
				return;
			
			//	Handle In/Out Line Events
			if (MInvoiceLine.Table_Name.equals(po.get_TableName()))
				doHandleEvent ((MInvoiceLine) po, event, topic);
			
			//	Handle In/Out Line Events
			else if (MInvoice.Table_Name.equals(po.get_TableName()))
				doHandleEvent ((MInvoice) po, event, topic);
			
			//	Handle In/Out Line Events
			else if (MInOutLine.Table_Name.equals(po.get_TableName()))
				doHandleEvent ((MInOutLine) po, event, topic);
			
			//	Handle In/Out Line Events
			else if (MInOut.Table_Name.equals(po.get_TableName()))
				doHandleEvent ((MInOut) po, event, topic);
		}
	}	//	doHandleEvent
	
	/**
	 * 	Handle In/Out Line Events
	 * 	@param iol In/Out Line
	 * 	@param event Event
	 * 	@param topic Topic of Event
	 */
	private void doHandleEvent (MInvoice i, Event event, String topic)
	{
		//	Only validates if there is change on Locator		
		if (!i.is_ValueChanged(MInvoice.COLUMNNAME_C_Order_ID) || i.getC_Order_ID() < 1)
			return;
		
		//	Check Organization
		checkOrg (i.getAD_Org_ID(), i.getC_Order().getAD_Org_ID(), event);
	}	//	doHandleTableEvent
	
	/**
	 * 	Handle In/Out Line Events
	 * 	@param iol In/Out Line
	 * 	@param event Event
	 * 	@param topic Topic of Event
	 */
	private void doHandleEvent (MInvoiceLine il, Event event, String topic)
	{
		//	Only validates if there is change on Locator		
		if (!il.is_ValueChanged(MInvoiceLine.COLUMNNAME_C_OrderLine_ID) || il.getC_OrderLine_ID() < 1)
			return;
		
		//	Check Organization
		checkOrg (il.getC_Invoice().getAD_Org_ID(), il.getC_OrderLine().getAD_Org_ID(), event);
	}	//	doHandleTableEvent
	
	/**
	 * 	Handle In/Out Line Events
	 * 	@param iol In/Out Line
	 * 	@param event Event
	 * 	@param topic Topic of Event
	 */
	private void doHandleEvent (MInOut i, Event event, String topic)
	{
		//	Only validates if there is change on Locator		
		if (!i.is_ValueChanged(MInOut.COLUMNNAME_C_Order_ID) || i.getC_Order_ID() < 1)
			return;
		
		//	Check Organization
		checkOrg (i.getAD_Org_ID(), i.getC_Order().getAD_Org_ID(), event);
	}	//	doHandleTableEvent
	
	/**
	 * 	Handle In/Out Line Events
	 * 	@param iol In/Out Line
	 * 	@param event Event
	 * 	@param topic Topic of Event
	 */
	private void doHandleEvent (MInOutLine iol, Event event, String topic)
	{
		//	Only validates if there is change on Locator		
		if (!iol.is_ValueChanged(MInOutLine.COLUMNNAME_C_OrderLine_ID) || iol.getC_OrderLine_ID() < 1)
			return;
		
		//	Check Organization
		checkOrg (iol.getM_InOut().getAD_Org_ID(), iol.getC_OrderLine().getAD_Org_ID(), event);
	}	//	doHandleTableEvent
	
	/**
	 * 	Check if the Organization of Warehouse is the same as the Organization of Document
	 * 	@param Org1_ID Organization of the document
	 * 	@param Org2_ID Organization of the Warehouse
	 * 	@param event Event
	 */
	private void checkOrg (int Org1_ID, int Org2_ID, Event event)
	{
		if (Org1_ID != Org2_ID)
			addErrorMessage (event, "A Organização do Documento não é compatível com a Organização do Pedido");
	}	//	checkOrg

	/**
	 * 	Register to receive OSGi Events
	 */
	@Override
	protected void initialize()
	{
		registerTableEvent (IEventTopics.PO_BEFORE_NEW, 	MInvoice.Table_Name);
		registerTableEvent (IEventTopics.PO_BEFORE_CHANGE, 	MInvoice.Table_Name);
		registerTableEvent (IEventTopics.PO_BEFORE_NEW, 	MInvoiceLine.Table_Name);
		registerTableEvent (IEventTopics.PO_BEFORE_CHANGE, 	MInvoiceLine.Table_Name);

		registerTableEvent (IEventTopics.PO_BEFORE_NEW, 	MInOut.Table_Name);
		registerTableEvent (IEventTopics.PO_BEFORE_CHANGE, 	MInOut.Table_Name);
		registerTableEvent (IEventTopics.PO_BEFORE_NEW, 	MInOutLine.Table_Name);
		registerTableEvent (IEventTopics.PO_BEFORE_CHANGE, 	MInOutLine.Table_Name);
	}	//	initialize
}	//	LocatorCheck
