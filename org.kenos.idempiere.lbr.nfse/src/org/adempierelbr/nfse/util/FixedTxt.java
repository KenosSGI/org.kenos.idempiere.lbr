package org.adempierelbr.nfse.util;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target (ElementType.FIELD)
@Retention (RetentionPolicy.RUNTIME)

public @interface FixedTxt
{	
	/**
	 * 	Size of fixed text
	 * 	@return
	 */
	int size () default 0;
	
	public static final int TYPE_TEXT 		= 0;
	public static final int TYPE_NUMERIC 	= 1;
	public static final int TYPE_AMOUNT2 	= 2;
	public static final int TYPE_AMOUNT4 	= 3;
	
	/**
	 * 	Types are Text, Numeric, Amount2 and Amount4
	 * 	@return
	 */
	int type () default 0;
	
	/**
	 * 	Optional description
	 * 	@return
	 */
	String description () default "";
}	//	FixedTxt
