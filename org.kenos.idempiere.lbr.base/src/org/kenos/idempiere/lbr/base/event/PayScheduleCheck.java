package org.kenos.idempiere.lbr.base.event;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.GregorianCalendar;

import org.adempiere.base.event.AbstractEventHandler;
import org.adempiere.base.event.IEventTopics;
import org.adempierelbr.model.MPaymentTerm;
import org.compiere.model.I_C_NonBusinessDay;
import org.compiere.model.MCalendar;
import org.compiere.model.MInvoicePaySchedule;
import org.compiere.model.PO;
import org.compiere.util.DB;
import org.compiere.util.TimeUtil;
import org.osgi.service.event.Event;

/**
 * 		Check if payschedule is valid
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: PayScheduleCheck.java, v1.0 2022/03/25 10:39:00 AM, ralexsander Exp $
 */
public class PayScheduleCheck extends AbstractEventHandler
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
			
			//	Handle In/Out Line Events
			if (MInvoicePaySchedule.Table_Name.equals(po.get_TableName()))
				check ((MInvoicePaySchedule) po, event, topic);
		}
	}	//	doHandleEvent
	
	/**
	 * 	Handle IPS Events
	 * 	@param iol In/Out Line
	 * 	@param event Event
	 * 	@param topic Topic of Event
	 */
	private void check (MInvoicePaySchedule ips, Event event, String topic)
	{
		if (ips.getC_PaySchedule_ID() <= 0)
			return;
		
		MPaymentTerm paymentTerm = new MPaymentTerm(ips.getCtx(), ips.getC_PaySchedule().getC_PaymentTerm_ID(), null);
		if (paymentTerm.isDueFixed())
		{
			int monthOffset = paymentTerm.getFixMonthOffset();
			
			Calendar dueDate = GregorianCalendar.getInstance();
			dueDate.setTimeInMillis(ips.getC_Invoice().getDateInvoiced().getTime());
			
			if (dueDate.get(Calendar.DAY_OF_MONTH) > paymentTerm.getFixMonthCutoff())
				monthOffset++;
			
			dueDate.set(Calendar.DAY_OF_MONTH, paymentTerm.getFixMonthDay());
			dueDate.add(Calendar.MONTH, monthOffset);
			
			ips.setDueDate(new Timestamp (dueDate.getTimeInMillis()));
		}

		int C_Country_ID = ips.getC_Invoice().getC_BPartner_Location().getC_Location().getC_Country_ID();
		int AD_Org_ID = ips.getC_Invoice().getAD_Org_ID();
		int C_Calendar_ID = 0;
		
		MCalendar calendar = MCalendar.getDefault(ips.getCtx());
		if (calendar != null)
			C_Calendar_ID = calendar.getC_Calendar_ID();
		
		//	Set due date to next business day
		while (paymentTerm.isNextBusinessDay() 
				&& !isBusinessDay(ips.getDueDate(), AD_Org_ID, C_Country_ID, C_Calendar_ID))
			ips.setDueDate(TimeUtil.getNextDay(ips.getDueDate()));
	}	//	check
	
	/**
	 * 	Check if a day is a business day
	 * 	@param day
	 * 	@param C_Country_ID
	 * 	@return true if business day
	 */
	private boolean isBusinessDay (Timestamp day, int AD_Org_ID, int C_Country_ID, int C_Calendar_ID)
	{
		Calendar cal = GregorianCalendar.getInstance();
		cal.setTimeInMillis(day.getTime());
		int dow = cal.get(Calendar.DAY_OF_WEEK);
		//
		if (dow == Calendar.SUNDAY || dow == Calendar.SATURDAY)
			return false;
		
		String sql = "SELECT COUNT(*) FROM " + I_C_NonBusinessDay.Table_Name + 
				" WHERE " + I_C_NonBusinessDay.COLUMNNAME_IsActive + "='Y'" +
				" AND " + I_C_NonBusinessDay.COLUMNNAME_Date1 + "=" + DB.TO_DATE(day) +
				" AND " + I_C_NonBusinessDay.COLUMNNAME_AD_Org_ID + " IN (0, ?)" +
				" AND COALESCE(" + I_C_NonBusinessDay.COLUMNNAME_C_Country_ID + ",0) IN (0,?)" +
				" AND " + I_C_NonBusinessDay.COLUMNNAME_C_Calendar_ID + "=?";
		int holiday = DB.getSQLValue (null, sql, AD_Org_ID, C_Country_ID, C_Calendar_ID);
		
		//	Non-business day
		if (holiday > 0)
			return false;
		
		return true;
	}	//	isBusinessDay

	/**
	 * 	Register to receive OSGi Events
	 */
	@Override
	protected void initialize()
	{
		registerTableEvent (IEventTopics.PO_BEFORE_NEW, MInvoicePaySchedule.Table_Name);
	}	//	initialize
}	//	PayScheduleCheck
