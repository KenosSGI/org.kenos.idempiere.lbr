package org.kenos.idempiere.lbr.bankslip;

import java.sql.Timestamp;

import org.adempierelbr.util.TextUtil;
import org.kenos.idempiere.lbr.bankslip.model.MLBRCNABFile;

public interface ICNABGenerator
{
	public static final String CNAB_REG_TYPE_HEADER = "0";
	public static final String CNAB_REG_TYPE_DETAIL = "1";
	public static final String CNAB_REG_TYPE_FOOTER = "9";
	
    /**
     * A String for linefeed LF ("\n").
     *
     * @see <a href="http://docs.oracle.com/javase/specs/jls/se7/html/jls-3.html#jls-3.10.6">JLF: Escape Sequences
     *      for Character and String Literals</a>
     * @see https://github.com/apache/commons-lang/blob/master/src/main/java/org/apache/commons/lang3/StringUtils.java
     * @since 3.2
     */
    public static final String LF = "\n";

    /**
     * A String for carriage return CR ("\r").
     *
     * @see <a href="http://docs.oracle.com/javase/specs/jls/se7/html/jls-3.html#jls-3.10.6">JLF: Escape Sequences
     *      for Character and String Literals</a>
     * @see https://github.com/apache/commons-lang/blob/master/src/main/java/org/apache/commons/lang3/StringUtils.java
     * @since 3.2
     */
    public static final String CR = "\r";
    
    /**
     * 	Date Format
     */
	public static final String DATE_FORMAT = "ddMMyy";
	
	public StringBuilder generateCNABFile (MLBRCNABFile cnabFile);
	
	/**
	 * 	Default method to convert dates to CNAB formatted standard
	 * 	@param ts Timestamp with the date
	 * 	@return string representation of date in format ddMMyy
	 */
	public default String timeToString (Timestamp ts)
	{
		return TextUtil.timeToString (ts, DATE_FORMAT);
	}	//	timeToString
}	//	ICNAB
