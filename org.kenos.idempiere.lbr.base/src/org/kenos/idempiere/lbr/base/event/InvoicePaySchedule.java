package org.kenos.idempiere.lbr.base.event;

import org.adempiere.base.event.AbstractEventHandler;
import org.adempiere.base.event.IEventTopics;
import org.compiere.model.MInvoicePaySchedule;
import org.compiere.model.PO;
import org.compiere.util.DB;
import org.osgi.service.event.Event;

/**
 * 		Fill the parcel no
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: CityCheck.java, v1.0 2021/08/25 16:18:00 AM, ralexsander Exp $
 */
public class InvoicePaySchedule extends AbstractEventHandler
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
			
			//	Handle In/Out Line Events
			if (MInvoicePaySchedule.Table_Name.equals(po.get_TableName()))
				doHandleEvent ((MInvoicePaySchedule) po, event, topic);
		}
	}	//	doHandleEvent
	
	/**
	 * 	Handle In/Out Line Events
	 * 	@param iol In/Out Line
	 * 	@param event Event
	 * 	@param topic Topic of Event
	 */
	private void doHandleEvent (MInvoicePaySchedule ips, Event event, String topic)
	{
		String sql = "SELECT COALESCE(MAX(LBR_PayScheduleNo),0)+1 FROM C_InvoicePaySchedule WHERE C_Invoice_ID=?";
		int ii = DB.getSQLValue (ips.get_TrxName(), sql, ips.getC_Invoice_ID());
		ips.set_ValueNoCheck ("LBR_PayScheduleNo", ii);
	}	//	doHandleTableEvent

	/**
	 * 	Register to receive OSGi Events
	 */
	@Override
	protected void initialize()
	{
		registerTableEvent (IEventTopics.PO_BEFORE_NEW, 	MInvoicePaySchedule.Table_Name);
	}	//	initialize
}	//	InvoicePaySchedule
