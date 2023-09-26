package org.kenos.idempiere.lbr.bankslip.cnab400.bean.formatter;

import org.adempierelbr.util.TextUtil;

import com.ancientprogramming.fixedformat4j.format.AbstractFixedFormatter;
import com.ancientprogramming.fixedformat4j.format.FormatInstructions;

/**
 * Formatter for Numeric String
 *
 * @author Ricardo Santana
 */
public class NumericStringFormatter extends AbstractFixedFormatter<String>
{
	public String asObject(String string, FormatInstructions instructions) 
	{
		return TextUtil.toNumeric (string);
	}
	public String asString(String string, FormatInstructions instructions)
	{
		String result = null;
		if (string != null) {
			result = TextUtil.toNumeric (string);
		}
		return result;
	}
}	//	NumericStringFormatter