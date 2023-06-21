package org.kenos.idempiere.lbr.base.event;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.stream.Collectors;

import org.adempiere.base.event.AbstractEventHandler;
import org.adempiere.base.event.IEventTopics;
import org.adempierelbr.model.MPaymentTerm;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.adempierelbr.wrapper.I_W_C_PaymentTerm;
import org.compiere.model.I_C_NonBusinessDay;
import org.compiere.model.MBPartner;
import org.compiere.model.MCalendar;
import org.compiere.model.MInvoicePaySchedule;
import org.compiere.model.MOrder;
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
	
			//	Do nothing
			if (po == null)
				return;
			//	Handle In/Out Line Events
			if (MInvoicePaySchedule.Table_Name.equals(po.get_TableName())) {
				MInvoicePaySchedule paySchedule = (MInvoicePaySchedule) po;
				//
				fillParcelNo (paySchedule, event, topic);
				checkFixedDayBP (paySchedule, event, topic);
				checkBusinessDay (paySchedule, event, topic);
			}
			else if (MBPartner.Table_Name.equals(po.get_TableName())) {
				MBPartner bp = (MBPartner) po;
				checkFixMonthDay (bp, event, topic);
			}
		}
		else if (topic.startsWith(IEventTopics.DOC_EVENT_PREFIX))
		{
			PO po = getPO (event);
	
			//	Do nothing
			if (po == null)
				;
			else if (MOrder.Table_Name.equals(po.get_TableName()))
				checkMinAmt ((MOrder) po, topic, event);
		}
	}	//	doHandleEvent
	
	/**
	 *  Check if FixDueDate in BPartner is filled correctly
	 * 	@param bp Business Partner
	 * 	@param event Event
	 * 	@param topic Topic of Event
	 */
	private void checkFixMonthDay (MBPartner bp, Event event, String topic)
	{
		//	Only proceed if Fix Month Day is changed
		if (!bp.is_ValueChanged(I_W_C_BPartner.COLUMNNAME_FixMonthDay))
			return;
		
		String fixDueDay = bp.get_ValueAsString(I_W_C_BPartner.COLUMNNAME_FixMonthDay);
		if (fixDueDay == null || fixDueDay.isBlank())
			return;	//	Nothing to do
		
		String days = Arrays.asList(fixDueDay.replace(",", ";").split(";")).stream()
			.map(TextUtil::toNumeric)
			.filter(d -> !d.isBlank())
			.map(Integer::parseInt)
			.filter(d -> d > 0 && d <= 31)
			.sorted()
			.distinct()
			.map(String::valueOf)
			.collect(Collectors.joining(";"));
		bp.set_ValueOfColumn(I_W_C_BPartner.COLUMNNAME_FixMonthDay, days);
	}	//	checkFixMonthDay
	
	/**
	 * 	Handle In/Out Line Events
	 * 	@param iol In/Out Line
	 * 	@param event Event
	 * 	@param topic Topic of Event
	 */
	private void checkFixedDayBP (MInvoicePaySchedule ips, Event event, String topic)
	{
		MBPartner bp = (MBPartner) ips.getC_Invoice().getC_BPartner();
		//
		String fixDueDay = bp.get_ValueAsString(I_W_C_BPartner.COLUMNNAME_FixMonthDay);
		if (fixDueDay == null || fixDueDay.isBlank())
			return;	//	Nothing to do
		
		List<String> validDays = Arrays.asList(fixDueDay.split(";"));
		
		//	Set due date to next fixed day
		while (!isValidFixedDay(ips.getDueDate(), validDays))
			ips.setDueDate(TimeUtil.getNextDay(ips.getDueDate()));
	}	//	checkFixedDayBP
	
	private boolean isValidFixedDay(Timestamp dueDate, List<String> validDays)
	{
		Calendar cal = GregorianCalendar.getInstance();
		cal.setTimeInMillis(dueDate.getTime());
		String dom = String.valueOf(cal.get(Calendar.DAY_OF_MONTH));
		if (validDays.contains(dom))
			return true;
		return false;
	}	//	isValidFixedDay

	/**
	 * 	Handle In/Out Line Events
	 * 	@param iol In/Out Line
	 * 	@param event Event
	 * 	@param topic Topic of Event
	 */
	private void fillParcelNo (MInvoicePaySchedule ips, Event event, String topic)
	{
		String sql = "SELECT COALESCE(MAX(LBR_PayScheduleNo),0)+1 FROM C_InvoicePaySchedule WHERE C_Invoice_ID=?";
		int ii = DB.getSQLValue (ips.get_TrxName(), sql, ips.getC_Invoice_ID());
		ips.set_ValueNoCheck ("LBR_PayScheduleNo", ii);
	}	//	fillParcelNo
	
	/**
	 * 	Handle IPS Events
	 * 	@param iol In/Out Line
	 * 	@param event Event
	 * 	@param topic Topic of Event
	 */
	private void checkBusinessDay (MInvoicePaySchedule ips, Event event, String topic)
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
	}	//	checkBusinessDay
	
	/**
	 * 	Handle Payment Events
	 * 	@param event
	 */
	private void checkMinAmt (MOrder o, String topic, Event event)
	{
		MPaymentTerm paymentTerm = new MPaymentTerm (o.getCtx(), o.getC_PaymentTerm_ID(), null);
		BigDecimal minAmt = (BigDecimal) paymentTerm.get_Value(I_W_C_PaymentTerm.COLUMNNAME_MinAmt);
		//
		if (minAmt != null && minAmt.compareTo(o.getGrandTotal()) == 1) {
			DecimalFormat df = (DecimalFormat) DecimalFormat.getInstance(new Locale("pt", "BR"));
			df.applyPattern("R$ #,###.00");
			//
			addErrorMessage(event, "Erro: O faturamento mínimo para esta condição de pagamento é de " + df.format(minAmt));
		}
	}	//	checkMinAmt
	
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
		registerTableEvent (IEventTopics.PO_BEFORE_CHANGE, MBPartner.Table_Name);
		//
		registerTableEvent (IEventTopics.DOC_BEFORE_PREPARE, MOrder.Table_Name);
	}	//	initialize
}	//	PayScheduleCheck
