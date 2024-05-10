package org.kenos.idempiere.lbr.base.event;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Comparator;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.stream.Collectors;

import org.adempiere.base.event.AbstractEventHandler;
import org.adempiere.base.event.IEventTopics;
import org.adempierelbr.model.MPaymentTerm;
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
				
				MPaymentTerm paymentTerm = new MPaymentTerm(paySchedule.getCtx(), paySchedule.getC_PaySchedule().getC_PaymentTerm_ID(), null);
				if (I_W_C_PaymentTerm.LBR_PAYMENTDAYSTYPE_BusinessDays.equals(paymentTerm.get_Value(I_W_C_PaymentTerm.COLUMNNAME_LBR_PaymentDaysType))) {
					scheduleOnBusinessDays (paySchedule, event, topic);
				}
				else {
					checkFixedDueDate (paySchedule, event, topic);
					checkFixedDayBP (paySchedule, event, topic);
					checkBusinessDay (paySchedule, event, topic);
				}
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
		
		Comparator<String> customComparator = new Comparator<String>() {
			@Override
			public int compare(String o1, String o2) {
				boolean isNumeric1 = o1.matches("\\d+");
				boolean isNumeric2 = o2.matches("\\d+");

				if (isNumeric1 && isNumeric2) {
					return Integer.compare(Integer.parseInt(o1), Integer.parseInt(o2));
				} else if (isNumeric1) {
					return -1;
				} else if (isNumeric2) {
					return 1;
				} else {
					return o1.compareTo(o2);
				}
			}
		};

		String days = Arrays.asList(fixDueDay.replace(",", ";").split(";")).stream()
			.map(s -> s.trim().toLowerCase())
			.filter(d -> !d.isBlank())
			.filter(s -> s.matches("^(?:[1-9]|[12]\\d|3[01])$") || s.matches("[2-6]a"))
			.sorted(customComparator)
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

		List<String> validDays = Arrays.asList(fixDueDay.split(";")).stream()
				.filter(s -> s.matches("^(?:[1-9]|[12]\\d|3[01])$")).collect(Collectors.toList());
		List<String> validWeekDays = Arrays.asList(fixDueDay.split(";")).stream()
				.filter(s -> s.matches("[2-6]a")).collect(Collectors.toList());
		
		//	Set due date to next fixed day
		while (!isValidFixedDay(ips.getDueDate(), validDays))
			ips.setDueDate(TimeUtil.getNextDay(ips.getDueDate()));

		//	Set due date to next fixed week day
		while (!isValidFixedWeekDay(ips.getDueDate(), validWeekDays))
			ips.setDueDate(TimeUtil.getNextDay(ips.getDueDate()));
	}	//	checkFixedDayBP
	
	private boolean isValidFixedDay(Timestamp dueDate, List<String> validDays)
	{
		//	Not specified, ignore
		if (validDays.isEmpty())
			return true;
		//
		Calendar cal = GregorianCalendar.getInstance();
		cal.setTimeInMillis(dueDate.getTime());
		String dom = String.valueOf(cal.get(Calendar.DAY_OF_MONTH));
		if (validDays.contains(dom))
			return true;
		return false;
	}	//	isValidFixedDay

	/**
	 * 	The week days are stored with suffix "a"
	 * 	2a = Monday
	 * 	3a = Tuesday
	 * 	4a = Wednesday
	 * 	5a = Thursday
	 * 	6a = Friday
	 */
	private final String WEEK_DAY_MONDAY 	= Calendar.MONDAY 		+ "a";
	private final String WEEK_DAY_TUESDAY 	= Calendar.TUESDAY 		+ "a";
	private final String WEEK_DAY_WEDNESDAY = Calendar.WEDNESDAY 	+ "a";
	private final String WEEK_DAY_THURSDAY 	= Calendar.THURSDAY 	+ "a";
	private final String WEEK_DAY_FRIDAY 	= Calendar.FRIDAY 		+ "a";
	
	private boolean isValidFixedWeekDay(Timestamp dueDate, List<String> validDays)
	{
		//	Not specified, ignore
		if (validDays.isEmpty() || !containsAny (validDays, WEEK_DAY_MONDAY, WEEK_DAY_TUESDAY, WEEK_DAY_WEDNESDAY, WEEK_DAY_THURSDAY, WEEK_DAY_FRIDAY))
			return true;
		//
		Calendar cal = GregorianCalendar.getInstance();
		cal.setTimeInMillis(dueDate.getTime());
		int dow = cal.get(Calendar.DAY_OF_WEEK);
		if (validDays.contains(dow + "a"))
			return true;
		return false;
	}	//	isValidFixedWeekDay
	
	private static boolean containsAny(List<String> list, String... elements) {
		Set<String> elementsSet = Arrays.stream(elements).collect(Collectors.toSet());
		return list.stream().anyMatch(elementsSet::contains);
	}	// 	containsAny

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
	 * 	Schedules the parcel on business days
	 * 	@param iol In/Out Line
	 * 	@param event Event
	 * 	@param topic Topic of Event
	 */
	private void scheduleOnBusinessDays (MInvoicePaySchedule ips, Event event, String topic)
	{
		if (ips.getC_PaySchedule_ID() <= 0)
			return;

		int C_Country_ID = ips.getC_Invoice().getC_BPartner_Location().getC_Location().getC_Country_ID();
		int AD_Org_ID = ips.getC_Invoice().getAD_Org_ID();
		int C_Calendar_ID = 0;
		
		MCalendar calendar = MCalendar.getDefault(ips.getCtx());
		if (calendar != null)
			C_Calendar_ID = calendar.getC_Calendar_ID();
		
		//	Make sure the net days is at least zero
		int netDays = Math.max (ips.getC_PaySchedule().getNetDays(), 0);
		
		//	Set date invoiced
		ips.setDueDate(ips.getC_Invoice().getDateInvoiced());
		
		//	Move due to until netdays is zero
		while (!isBusinessDay(ips.getDueDate(), AD_Org_ID, C_Country_ID, C_Calendar_ID) || netDays-- > 0)
			ips.setDueDate(TimeUtil.getNextDay(ips.getDueDate()));
	}	//	scheduleOnBusinessDays
	
	/**
	 * 	Handle IPS Events
	 * 	@param iol In/Out Line
	 * 	@param event Event
	 * 	@param topic Topic of Event
	 */
	private void checkFixedDueDate (MInvoicePaySchedule ips, Event event, String topic)
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
	}	//	checkDueFixed
	
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
