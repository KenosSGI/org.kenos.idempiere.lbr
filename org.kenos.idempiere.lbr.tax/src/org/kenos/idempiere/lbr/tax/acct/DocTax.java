package org.kenos.idempiere.lbr.tax.acct;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;

import org.compiere.model.MAccount;
import org.compiere.model.MAcctSchema;
import org.compiere.util.CLogger;
import org.compiere.util.DB;

/**
 *  Document Tax Line
 *
 *  @author 	Jorg Janke
 *  @version 	$Id: DocTax.java,v 1.3 2006/07/30 00:53:33 jjanke Exp $
 */
public final class DocTax
{
	/**
	 *	Create Tax
	 *  @param C_Tax_ID tax
	 *  @param name name
	 *  @param rate rate
	 *  @param taxBaseAmt tax base amount
	 *  @param amount amount
	 * 	@param salesTax sales tax flag
	 */
	public DocTax (int C_Tax_ID, String name, BigDecimal rate, 
		BigDecimal taxBaseAmt, BigDecimal amount, boolean salesTax, boolean includedTax, boolean taxRecoverable)
	{
		m_C_Tax_ID = C_Tax_ID;
		m_name = name;
		m_rate = rate;
		m_taxBaseAmt =  taxBaseAmt;//IDEMPIERE-2160 Add by Hideaki Hagiwara
		m_amount = amount;
		m_includedTax = includedTax;
		m_salesTax = salesTax;
		m_taxRecoverable = taxRecoverable;
	}	//	DocTax

	/** Tax ID              */
	private int			m_C_Tax_ID = 0;
	/** Amount              */
	private BigDecimal 	m_amount = null;
	/** Tax Rate            */
	private BigDecimal 	m_rate = null;
	/** Name                */
	private String 		m_name = null;
	/** Base Tax Amt        */
	private BigDecimal  m_taxBaseAmt = null;
	/** Included Tax		*/
	private boolean		m_includedTax = true;
	/** Sales Tax			*/
	private boolean		m_salesTax = false;
	/** Recoverable Tax		*/
	private boolean		m_taxRecoverable = true;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(DocTax.class);
	

	/** Tax Due Acct        */
	public static final int    ACCTTYPE_TaxDue = 0;
	/** Tax Credit          */
	public static final int    ACCTTYPE_TaxCredit = 1;
	/** Tax Expense         */
	public static final int    ACCTTYPE_TaxExpense = 2;

	/**
	 *	Get Account
	 *  @param AcctType see ACCTTYPE_*
	 *  @param as account schema
	 *  @return Account
	 */
	public MAccount getAccount (int AcctType, MAcctSchema as)
	{
		if (AcctType < ACCTTYPE_TaxDue || AcctType > ACCTTYPE_TaxExpense)
			return null;
		//
		String sql = "SELECT T_Due_Acct, T_Credit_Acct, T_Expense_Acct "
				+ "FROM C_Tax_Acct WHERE C_Tax_ID=? AND C_AcctSchema_ID=?";
		int validCombination_ID = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, m_C_Tax_ID);
			pstmt.setInt(2, as.getC_AcctSchema_ID());
			rs = pstmt.executeQuery();
			if (rs.next())
				validCombination_ID = rs.getInt(AcctType+1);    //  1..3
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		finally {
			DB.close(rs, pstmt);
			rs = null; pstmt = null;
		}
		if (validCombination_ID == 0)
			return null;
		return MAccount.get(as.getCtx(), validCombination_ID);
	}   //  getAccount

	/**
	 *	Get Amount
	 *  @return gross amount
	 */
	public BigDecimal getAmount()
	{
		return m_amount;
	}

	/**
	 *  Get Base Amount
	 *  @return net amount
	 */
	public BigDecimal getTaxBaseAmt()
	{
		return m_taxBaseAmt;
	}

	/**
	 *	Get Rate
	 *  @return tax rate in percent
	 */
	public BigDecimal getRate()
	{
		return m_rate;
	}

	/**
	 *  Get Name of Tax
	 *  @return name
	 */
	public String getName()
	{
		return m_name;
	}

	/**
	 * 	Get C_Tax_ID
	 *	@return tax id
	 */
	public int getC_Tax_ID()
	{
		return m_C_Tax_ID;
	}	//	getC_Tax_ID
	/**
	 *  Get Description (Tax Name and Base Amount)
	 *  @return tax anme and base amount
	 */
	public String getDescription()
	{
		StringBuilder msgreturn = new StringBuilder().append(m_name).append(" ").append(m_taxBaseAmt.toString());
		return msgreturn.toString();
	}   //  getDescription
	
	/**
	 * 	Get AP Tax Type
	 *	@return AP tax type (Credit or Expense) 
	 */
	public int getAPTaxType()
	{
		if (isSalesTax())
			return ACCTTYPE_TaxExpense;
		return ACCTTYPE_TaxCredit;
	}	//	getAPTaxAcctType

	/**
	 * 	Is Sales Tax
	 *	@return sales tax
	 */
	public boolean isSalesTax()
	{
		return m_salesTax;
	}	//	isSalesTax

	/**
	 * 	Is Included Tax
	 *	@return included tax
	 */
	public boolean isIncludedTax()
	{
		return m_includedTax;
	}	//	isIncludedTax

	/**
	 * 	Is Recoverable Tax
	 *	@return recoverable tax
	 */
	public boolean isRecoverableTax()
	{
		return m_taxRecoverable;
	}	//	isRecoverableTax
	
	/**
	 *	Return String representation
	 *  @return tax anme and base amount
	 */
	public String toString()
	{
		StringBuilder sb = new StringBuilder("Tax=(");
		sb.append(m_name);
		sb.append(" Amt=").append(m_amount);
		sb.append(")");
		return sb.toString();
	}	//	toString

}	//	DocTax
