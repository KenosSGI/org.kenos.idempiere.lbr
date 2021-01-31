package org.kenos.idempiere.lbr.sped.callout;

import java.util.Calendar;
import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MPeriod;
import org.compiere.model.Query;
import org.compiere.util.DB;
import org.compiere.util.TimeUtil;
import org.kenos.idempiere.lbr.sped.model.MLBREFDICMSIPI;

public class SPED implements IColumnCallout 
{
	/**
	 * 	Fill SPED with last month's values
	 */
	@Override
	public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
	{
		if (value == null)
			return "";
		
		MPeriod actual = new MPeriod(ctx, (Integer) value, null);
		
		//	Default value to include block H in february
		Calendar cal = Calendar.getInstance();
		cal.setTimeInMillis(actual.getStartDate().getTime());
		if (cal.get(Calendar.MONTH) == Calendar.FEBRUARY)
			mTab.setValue(MLBREFDICMSIPI.COLUMNNAME_LBR_IncludeH, true);
		
		MPeriod previous = new Query (ctx, MPeriod.Table_Name, MPeriod.COLUMNNAME_StartDate + "=" + DB.TO_DATE(TimeUtil.addMonths(actual.getStartDate(), -1)), null)
			.setClient_ID()
			.first();
		//
		if (previous == null)
			return "";
		//
		MLBREFDICMSIPI reference = new Query (ctx, MLBREFDICMSIPI.Table_Name, "DocStatus NOT IN ('CL', 'CO') AND AD_Org_ID=? AND C_Period_ID=?", null)
			.setParameters(mTab.getValue(MLBREFDICMSIPI.COLUMNNAME_AD_Org_ID), previous.getC_Period_ID())
			.first();
		//
		if (reference == null)
			return "";
		
		//	Found last month's reference
		mTab.setValue(MLBREFDICMSIPI.COLUMNNAME_LBR_IncludeE, reference.isLBR_IncludeE());
		mTab.setValue(MLBREFDICMSIPI.COLUMNNAME_LBR_IncludeK, reference.isLBR_IncludeK());
		//
		setValueIfNull(mTab, MLBREFDICMSIPI.COLUMNNAME_IsFixedAsset, reference.isFixedAsset());
		setValueIfNull(mTab, MLBREFDICMSIPI.COLUMNNAME_LBR_BP_Accountant_ID, reference.getLBR_BP_Accountant_ID());
		setValueIfNull(mTab, MLBREFDICMSIPI.COLUMNNAME_LBR_COD_VER, reference.getLBR_COD_VER());
		setValueIfNull(mTab, MLBREFDICMSIPI.COLUMNNAME_lbr_IndAtividade, reference.getlbr_IndAtividade());
		setValueIfNull(mTab, MLBREFDICMSIPI.COLUMNNAME_LBR_IndPerfil, reference.getLBR_IndPerfil());

		return "";
	}	//	start
	
	protected String setValueIfNull (GridTab mTab, String columnName, Object value)
	{
		if (value == null || (value instanceof Integer && ((Integer) value).intValue() <= 0))
			return "";
		//
		if (mTab.getValue(columnName) == null)
			mTab.setValue(columnName, value);
		//
		return "";
	}	//	setValueIfNull
}	//	SPED
