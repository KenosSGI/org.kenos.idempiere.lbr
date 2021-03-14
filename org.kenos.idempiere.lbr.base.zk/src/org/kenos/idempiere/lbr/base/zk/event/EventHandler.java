package org.kenos.idempiere.lbr.base.zk.event;

import java.util.TimeZone;

import org.adempiere.base.event.AbstractEventHandler;
import org.adempiere.base.event.IEventTopics;
import org.compiere.model.MClient;
import org.compiere.model.MSysConfig;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.base.model.SysConfig;
import org.osgi.service.event.Event;
import org.zkoss.zk.ui.Sessions;

/**
 * 		OSGi Events Handler
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: EventHandler.java, v1.0 2021/03/14 12:34:57 AM, ralexsander Exp $
 */
public class EventHandler extends AbstractEventHandler
{
	@Override
	protected void doHandleEvent(Event event)
	{
		//	Event Topic
		String topic = event.getTopic();
		
		//	Just Login
		if (IEventTopics.AFTER_LOGIN.equals(topic))
		{
			String timeZone = MSysConfig.getValue (SysConfig.LBR_DEFAULT_TIMEZONE, "GMT-3", MClient.get (Env.getCtx()).getAD_Client_ID());
			Sessions.getCurrent().setAttribute(org.zkoss.web.Attributes.PREFERRED_TIME_ZONE, TimeZone.getTimeZone(timeZone));
			return;
		}
	}	//	doHandleEvent
	/**
	 * 	Register to receive OSGi Events
	 */
	@Override
	protected void initialize()
	{
		registerEvent (IEventTopics.AFTER_LOGIN);
	}	//	initialize
}	//	EventHandler
