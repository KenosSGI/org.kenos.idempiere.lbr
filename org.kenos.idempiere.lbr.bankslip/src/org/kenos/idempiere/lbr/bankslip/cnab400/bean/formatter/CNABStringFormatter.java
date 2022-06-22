package org.kenos.idempiere.lbr.bankslip.cnab400.bean.formatter;

import org.adempierelbr.util.TextUtil;
import org.compiere.util.Util;

import com.ancientprogramming.fixedformat4j.format.AbstractFixedFormatter;
import com.ancientprogramming.fixedformat4j.format.FormatInstructions;

/**
 * Formatter for Numeric String
 *
 * @author Ricardo Santana
 */
public class CNABStringFormatter extends AbstractFixedFormatter<String>
{
	public String asObject(String string, FormatInstructions instructions) 
	{
		return asObject (string, instructions);
	}
	public String asString(String string, FormatInstructions instructions)
	{
		String result = null;
		if (string != null) {
			result = TextUtil.retiraEspecial(Util.deleteAccents(string)).toUpperCase();
		}
		return result;
	}
}	//	NumericStringFormatter