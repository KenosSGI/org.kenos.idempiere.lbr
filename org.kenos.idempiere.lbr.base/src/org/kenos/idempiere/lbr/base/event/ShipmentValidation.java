package org.kenos.idempiere.lbr.base.event;

import org.adempiere.base.event.AbstractEventHandler;
import org.adempiere.base.event.IEventTopics;
import org.compiere.model.MInOut;
import org.compiere.model.MInOutLine;
import org.compiere.model.PO;
import org.compiere.util.Env;
import org.osgi.service.event.Event;

/**
 * 		Shipment Validation
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: LocatorCheck.java, v1.0 2018/11/19 16:18:00 AM, ralexsander Exp $
 */
public class ShipmentValidation extends AbstractEventHandler
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
		if (topic.startsWith (IEventTopics.DOC_BEFORE_COMPLETE))
		{
			PO po = getPO (event);
	
			//	Do nothing
			if (po == null || !MInOut.Table_Name.equals(po.get_TableName()))
				return;
			
			MInOut io = (MInOut) po;
			for (MInOutLine iol : io.getLines())
			{
				//	Ignore description
				if (iol.isDescription())
					continue;
				
				if (iol.getMovementQty().compareTo(Env.ZERO) == 0)
				{
					addErrorMessage (event, "O documento possuí linhas zeradas");
					break;
				}
			}
		}
	}	//	doHandleEvent

	/**
	 * 	Register to receive OSGi Events
	 */
	@Override
	protected void initialize()
	{
		registerTableEvent (IEventTopics.DOC_BEFORE_COMPLETE, MInOut.Table_Name);
	}	//	initialize
}	//	LocatorCheck
