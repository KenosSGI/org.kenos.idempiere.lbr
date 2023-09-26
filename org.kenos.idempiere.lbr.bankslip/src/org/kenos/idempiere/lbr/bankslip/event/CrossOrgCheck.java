package org.kenos.idempiere.lbr.bankslip.event;

import java.util.Arrays;

import org.adempiere.base.event.AbstractEventHandler;
import org.adempiere.base.event.IEventTopics;
import org.compiere.model.MInOut;
import org.compiere.model.MInvoice;
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
		if (topic.startsWith (IEventTopics.DOC_EVENT_PREFIX))
		{
			PO po = getPO (event);
	
			//	Do nothing
			if (po == null)
				return;
			
			boolean allowCrossOrg = MSysConfig.getBooleanValue (SysConfig.ALLOW_CROSS_ORG, false, po.getAD_Client_ID());
			
			//	Allow cross organization, do not proceed with validation
			if (allowCrossOrg)
				return;
			
			//	Handle Invoice Events
			if (MInvoice.Table_Name.equals(po.get_TableName()))
				doHandleEvent ((MInvoice) po, event, topic);
			
			//	Handle In/Out Events
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
		if (i.isReversal() || i.getC_Order_ID() < 1)
			return;
		
		//	Check Organization
		checkOrg (i.getAD_Org_ID(), i.getC_Order().getAD_Org_ID(), event);
		//
		Arrays.asList(i.getLines()).stream()
			.filter(l -> l.getC_OrderLine_ID() > 0)
			.forEach(l -> {
				checkOrg(l.getAD_Org_ID(), l.getC_OrderLine().getAD_Org_ID(), event);
		});
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
		if (i.isReversal() || i.getC_Order_ID() < 1)
			return;
		
		//	Check Organization
		checkOrg (i.getAD_Org_ID(), i.getC_Order().getAD_Org_ID(), event);
		//
		Arrays.asList(i.getLines()).stream()
			.filter(l -> l.getC_OrderLine_ID() > 0)
			.forEach(l -> {
				checkOrg(l.getAD_Org_ID(), l.getC_OrderLine().getAD_Org_ID(), event);
		});
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
		registerTableEvent (IEventTopics.DOC_BEFORE_PREPARE, 	MInvoice.Table_Name);
		registerTableEvent (IEventTopics.DOC_BEFORE_PREPARE, 	MInOut.Table_Name);
	}	//	initialize
}	//	LocatorCheck
