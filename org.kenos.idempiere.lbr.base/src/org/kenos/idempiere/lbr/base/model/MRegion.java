package org.kenos.idempiere.lbr.base.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.adempiere.model.POWrapper;
import org.adempierelbr.wrapper.I_W_C_City;
import org.compiere.model.Query;

/**
 * 		MRegion
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MRegion.java, v1.0 2021/02/19 10:25:35 AM, ralexsander Exp $
 */
public class MRegion extends org.compiere.model.MRegion
{
	/**
	 * 	Serial ID
	 */
	private static final long serialVersionUID = 2312021924951710950L;
	private I_W_C_City wrapper = null;

	public MRegion (Properties ctx, int C_City_ID, String trxName)
	{
		super(ctx, C_City_ID, trxName);
		wrapper = POWrapper.create(this, I_W_C_City.class);
	}	//	MCity
	
	public MRegion (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
		wrapper = POWrapper.create(this, I_W_C_City.class);
	}	//	MCity
	
	public I_W_C_City getWrapper ()
	{
		return wrapper;
	}	//	getWrapper
	

	public static MRegion getBrazilRegion (Properties ctx, String regionName)
	{
		return getRegion(ctx, 139, regionName);
	}	//	getBrazilRegion
	
	public static MRegion getRegion (Properties ctx, int C_Country_ID, String regionName)
	{
		if (regionName == null)
			return null;
		MRegion region = null;
		//
		try
		{
			region = new Query (ctx, Table_Name, COLUMNNAME_C_Country_ID+"=? AND "+MRegion.COLUMNNAME_Name+"=?", null)
				.setParameters(C_Country_ID, regionName)
				.setOnlyActiveRecords(true)
				.firstOnly();
		} 
		catch (Exception e) {}
		return region;
	}	//	getRegion
}	//	MRegion
