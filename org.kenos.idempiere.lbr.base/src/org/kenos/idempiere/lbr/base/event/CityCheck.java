package org.kenos.idempiere.lbr.base.event;

import org.adempiere.base.event.AbstractEventHandler;
import org.adempiere.base.event.IEventTopics;
import org.compiere.model.MLocation;
import org.compiere.model.PO;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.base.model.MCity;
import org.osgi.service.event.Event;

/**
 * 		Check Locator consistency to avoid cross-organization
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: CityCheck.java, v1.0 2021/02/19 16:18:00 AM, ralexsander Exp $
 */
public class CityCheck extends AbstractEventHandler
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
			if (MLocation.Table_Name.equals(po.get_TableName()))
				doHandleEvent ((MLocation) po, event, topic);
		}
	}	//	doHandleEvent
	
	/**
	 * 	Handle In/Out Line Events
	 * 	@param iol In/Out Line
	 * 	@param event Event
	 * 	@param topic Topic of Event
	 */
	private void doHandleEvent (MLocation loc, Event event, String topic)
	{
		if (loc.getC_Country_ID() == 139 //	BRAZIL
				&& (IEventTopics.PO_BEFORE_NEW.equals(topic) || loc.is_ValueChanged(MLocation.COLUMNNAME_City)))
		{
			MCity city = MCity.getCity (Env.getCtx(), loc.getC_Region_ID(), loc.getCity());
			if (city == null)
				return;
			//
			if (loc.getC_City_ID() < 1)
				loc.setC_City_ID(city.getC_City_ID());
			loc.setCity(city.getName());
		}
	}	//	doHandleTableEvent

	/**
	 * 	Register to receive OSGi Events
	 */
	@Override
	protected void initialize()
	{
		registerTableEvent (IEventTopics.PO_BEFORE_NEW, 	MLocation.Table_Name);
		registerTableEvent (IEventTopics.PO_BEFORE_CHANGE, 	MLocation.Table_Name);
	}	//	initialize
}	//	CityCheck
