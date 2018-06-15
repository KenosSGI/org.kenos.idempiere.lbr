package org.adempierelbr.model;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import org.compiere.model.MAccount;
import org.compiere.model.MAcctSchema;
import org.compiere.model.Query;
import org.compiere.util.DB;

public class MLBRDocTypeAcct extends X_LBR_DocTypeAcct
{
	/**
	 *	Serial Version
	 */
	private static final long serialVersionUID = 1L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRDocTypeAcct (Properties ctx, int ID, String trx)
	{
		super (ctx, ID, trx);
	}	//	MLBRDocTypeAcct

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRDocTypeAcct (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//	MLBRDocTypeAcct

	/**
	 *	Get Account
	 *  @return Account
	 */
	public static MAccount getAccount (Properties ctx, int pC_DocType_ID, String acctName, String taxIndicator, Timestamp dateAcct, MAcctSchema as)
	{
		String sql = COLUMNNAME_C_DocType_ID+"=? AND "+COLUMNNAME_Name+"=? AND ("+DB.TO_DATE(dateAcct)+" BETWEEN ValidFrom AND ValidTo "
				+ "OR "+DB.TO_DATE(dateAcct)+">=ValidFrom AND ValidTo IS NULL) ";
		//
		List<Object> params = new ArrayList<Object>();
		params.add(pC_DocType_ID);
		params.add(acctName);
		//
		if (taxIndicator != null && !taxIndicator.isEmpty())
		{
			sql += "AND "+COLUMNNAME_TaxIndicator+"=?";
			params.add(taxIndicator);
		}
		else
			sql += "AND "+COLUMNNAME_TaxIndicator+" IS NULL";
		//
		MLBRDocTypeAcct dtAcct = new Query (ctx, Table_Name, sql, null)
			.setParameters(params)
			.setOrderBy(COLUMNNAME_ValidFrom+" DESC")
			.first();
		//
		if (dtAcct == null)
			return null;
		return MAccount.get(as.getCtx(), dtAcct.getC_ValidCombination_ID());
	}	//	getAccount
}	//	MLBRDocTypeAcct
