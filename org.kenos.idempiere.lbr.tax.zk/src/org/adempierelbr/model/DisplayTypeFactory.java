package org.adempierelbr.model;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;

import org.adempiere.base.IDisplayTypeFactory;
import org.compiere.util.Language;

public class DisplayTypeFactory implements IDisplayTypeFactory {
	/** Display Type 1000006	Brazilian Taxes	*/
	public static final int BRAZILIAN_TAXES     = 1000006;
	/** Tax Transaction Window 1120131			*/
	public static final int WINDOW_TAX_TRX     	= 1120131;
	
	@Override
	public boolean isID(int displayType) {
		if (displayType == BRAZILIAN_TAXES)
			return true;
		
		return false;
	}

	@Override
	public boolean isNumeric(int displayType) {
		return false;
	}

	@Override
	public Integer getDefaultPrecision(int displayType) {
		return null;
	}

	@Override
	public boolean isText(int displayType) {
		return false;
	}

	@Override
	public boolean isDate(int displayType) {
		return false;
	}

	@Override
	public boolean isLookup(int displayType) {
		return false;
	}

	@Override
	public boolean isLOB(int displayType) {
		return false;
	}

	@Override
	public DecimalFormat getNumberFormat(int displayType, Language language,
			String pattern) {
		return null;
	}

	@Override
	public SimpleDateFormat getDateFormat(int displayType, Language language,
			String pattern) {
		return null;
	}

	@Override
	public Class<?> getClass(int displayType, boolean yesNoAsBoolean) {
		if (displayType == BRAZILIAN_TAXES)
			return MLBRTax.class;
		
		return null;
	}

	@Override
	public String getSQLDataType(int displayType, String columnName,
			int fieldLength) {
		return null;
	}

	@Override
	public String getDescription(int displayType) {
		return null;
	}

}
