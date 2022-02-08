package org.kenos.idempiere.lbr.base.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.adempiere.model.POWrapper;
import org.adempierelbr.wrapper.I_W_C_City;
import org.compiere.model.Query;
import org.compiere.util.Util;

/**
 * 		MCity
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MCity.java, v1.0 2021/02/19 10:25:35 AM, ralexsander Exp $
 */
public class MCity extends org.compiere.model.MCity
{
	/**
	 * 	Serial ID
	 */
	private static final long serialVersionUID = 2312021924951710950L;
	private I_W_C_City wrapper = null;

	public MCity (Properties ctx, int C_City_ID, String trxName)
	{
		super(ctx, C_City_ID, trxName);
		wrapper = POWrapper.create(this, I_W_C_City.class);
	}	//	MCity
	
	public MCity (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
		wrapper = POWrapper.create(this, I_W_C_City.class);
	}	//	MCity
	
	public I_W_C_City getWrapper ()
	{
		return wrapper;
	}	//	getWrapper
	
	public static MCity getCity (Properties ctx, int C_Region_ID, String cityName)
	{
		if (cityName == null)
			return null;
		MCity city = null;
		//
		try
		{
			city = new Query (ctx, Table_Name, COLUMNNAME_C_Region_ID+"=? AND UNACCENT_UPPER("+MCity.COLUMNNAME_Name+")=?", null)
				.setParameters(C_Region_ID, Util.deleteAccents(cityName.trim().toUpperCase().replaceAll("\\s+", " ")))
				.setOnlyActiveRecords(true)
				.firstOnly();
		} 
		catch (Exception e) {}
		return city;
	}	//	getCity

	public int getlbr_CityCode() {
		Object cityCode = get_Value(I_W_C_City.COLUMNNAME_lbr_CityCode);
		//
		if (cityCode != null) {
			try {
				return Integer.parseInt (cityCode.toString());
			} catch (Exception e) {}
		}
		return -1;
	}	//	getlbr_CityCode

	public int getlbr_CityCode2() {
		Object cityCode2 = get_Value(I_W_C_City.COLUMNNAME_lbr_CityCode + "2");
		//
		if (cityCode2 != null) {
			try {
				return Integer.parseInt (cityCode2.toString());
			} catch (Exception e) {}
		}
		return -1;
	}	//	getlbr_CityCode2
}	//	MCity
