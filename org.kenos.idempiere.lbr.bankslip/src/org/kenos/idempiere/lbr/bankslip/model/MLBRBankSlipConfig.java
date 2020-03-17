package org.kenos.idempiere.lbr.bankslip.model;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Properties;

import org.adempierelbr.model.X_LBR_BankSlipConfig;
import org.adempierelbr.util.TextUtil;

/**
 * 	Bank Slip Config (Boleto) model
 * 	@author Ricardo Santana
 */
public class MLBRBankSlipConfig extends X_LBR_BankSlipConfig
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = -2504280473369009963L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRBankSlipConfig (Properties ctx, int LBR_BankSlipConfig_ID, String trx)
	{
		super (ctx, LBR_BankSlipConfig_ID, trx);
	}	//	MLBRBankSlipConfig

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRBankSlipConfig (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRBankSlipConfig

	/**
	 * 		Calculated Interest Date
	 * 	@param dueDate
	 * 	@return calculate date to charge interest
	 */
	public Timestamp getLBR_InterestDate(Timestamp dueDate)
	{
		if (getLBR_InterestType() == null)
			return null;
		return addDays (dueDate, getLBR_InterestDays());
	}	//	getLBR_InterestDate

	/**
	 * 		Calculated penalty date
	 * 	@param dueDate
	 * 	@return calculated date to apply penalties
	 */
	public Timestamp getLBR_PenaltyDate(Timestamp dueDate)
	{
		if (getLBR_PenaltyType() == null)
			return null;
		return addDays (dueDate, getLBR_PenaltyDays());
	}	//	getLBR_PenaltyDate

	/**
	 * 		Calculated date to protest the business partner
	 * 	@param dueDate
	 * 	@return calculated date based on protest type and due date
	 */
	public Timestamp getLBR_ProtestDate(Timestamp dueDate)
	{
		if (TextUtil.match(getLBR_ProtestType(), LBR_PROTESTTYPE_ProtestCalendarDays, LBR_PROTESTTYPE_ProtestForBankruptcyCalendarDays))
			return addDays (dueDate, getLBR_ProtestDays());
		if (TextUtil.match(getLBR_ProtestType(), LBR_PROTESTTYPE_ProtestBusinessDays, LBR_PROTESTTYPE_ProtestForBankruptcyWorkingDays))
			return addDays (dueDate, true, getLBR_ProtestDays());
		return null;
	}	//	getLBR_ProtestDate

	/**
	 * 		Add calendar days to a given date
	 * 
	 * 	@param dueDate
	 * 	@param days
	 * 	@return
	 */
	public static Timestamp addDays (Timestamp dueDate, int days)
	{
		return addDays(dueDate, false, days);
	}	//	addDays

	/**
	 * 		Add business/calendar days to a given date
	 * 
	 * 	@param dueDate
	 * 	@param days
	 * 	@return
	 */
	public static Timestamp addDays (Timestamp dueDate, boolean businessDay, int days)
	{
		if (dueDate == null)
			return null;
		
		//	Check Days
		if (days < 0)
			days = 0;

		//	Increase due date
		Calendar cal = Calendar.getInstance();
		cal.setTime(dueDate);
		while (days-- > 0)
		{
			//	Increase one day
			cal.add (Calendar.DATE, 1);

			//	Check Day of Week
			int dow = cal.get (Calendar.DAY_OF_WEEK);
			
			if (!businessDay)
				continue;
			
			//	If it's Sunday, then change to Monday
			if (dow == Calendar.SUNDAY)
				cal.add (Calendar.DATE, 1);
			
			//	If it's Saturday, then change to Monday
			else if (dow == Calendar.SATURDAY)
				cal.add (Calendar.DATE, 2);
		}
		//
		return new Timestamp(cal.getTime().getTime());
	}	//	addDays
}	//	MLBRBankSlipConfig
