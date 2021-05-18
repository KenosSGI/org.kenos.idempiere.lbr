/******************************************************************************
 * Copyright (C) 2009 Low Heng Sin                                            *
 * Copyright (C) 2009 Idalica Corporation                                     *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.kenos.idempiere.lbr.base.form;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.model.POWrapper;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.compiere.minigrid.ColumnInfo;
import org.compiere.minigrid.IDColumn;
import org.compiere.minigrid.IMiniTable;
import org.compiere.model.MAllocationHdr;
import org.compiere.model.MBankAccount;
import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.compiere.model.MOrder;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MPayment;
import org.compiere.model.MRefList;
import org.compiere.model.MRole;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.compiere.util.ValueNamePair;

/**	
 * 		Payment
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: Payment.java, v1.0 2016/04/07 15:18:24 PM, ralexsander Exp $
 */
public class Payment
{
	/**	Window No			*/
	public int         		m_WindowNo = 0;

	/** Format                  */
	public DecimalFormat   	m_format = DisplayType.getNumberFormat(DisplayType.Amount);
	/** SQL for Query           */
	private String          m_sql;
	private String          m_sql_order;
	/** Number of selected rows */
	public int             	m_noSelected = 0;
	/** Client ID               */
	protected int          	m_AD_Client_ID = 0;
	/**/
	public boolean         	m_isLocked = false;
	
	public boolean		 	m_IsSOTrx = false;
	
	private final int		PAYAMT_COL = 10;

	/**	Logger			*/
	public static CLogger log = CLogger.getCLogger(Payment.class);

	public ArrayList<BankInfo> getBankAccountData()
	{
		return getBankAccountData (-1);
	}	//	getBankAccountData

	public ArrayList<BankInfo> getBankAccountData(int AD_Org_ID)
	{
		ArrayList<BankInfo> data = new ArrayList<BankInfo>();
		if (AD_Org_ID < 1)
			return data;		//	Empty dataset
		//
		//  Bank Account Info
		String sql = MRole.getDefault().addAccessSQL(
			"SELECT ba.C_BankAccount_ID,"                       //  1
			+ "b.Name || ' ' || ba.AccountNo || ' ' || (SELECT o.Name FROM AD_Org o WHERE o.AD_Org_ID=ba.AD_Org_ID) AS Name,"          //  2
			+ "ba.C_Currency_ID, c.ISO_Code,"                   //  3..4
			+ "ba.CurrentBalance "                              //  5
			+ "FROM C_Bank b, C_BankAccount ba, C_Currency c "
			+ "WHERE b.C_Bank_ID=ba.C_Bank_ID"
			+ " AND ba.C_Currency_ID=c.C_Currency_ID AND ba.IsActive='Y' "
			+ " AND ba.AD_Org_ID=" + AD_Org_ID
			+ " ORDER BY 2",
			"b", MRole.SQL_FULLYQUALIFIED, MRole.SQL_RW);
		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql, null);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				boolean transfers = false;
				BankInfo bi = new BankInfo (rs.getInt(1), rs.getInt(3),
					rs.getString(2), rs.getString(4),
					rs.getBigDecimal(5), transfers);
				data.add(bi);
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		
		return data;
	}
	
	public ArrayList<KeyNamePair> getOrgData()
	{
		ArrayList<KeyNamePair> data = new ArrayList<KeyNamePair>();
		String sql = null;
		/**Document type**/
		try
		{
			sql = MRole.getDefault().addAccessSQL(
				"SELECT o.AD_Org_ID, o.Name "
				+ "FROM AD_Org o "
				+ "ORDER BY 2", "o",
				MRole.SQL_FULLYQUALIFIED, MRole.SQL_RO);

			PreparedStatement pstmt = DB.prepareStatement(sql, null);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next())
			{
				KeyNamePair	o = new KeyNamePair(rs.getInt(1), rs.getString(2));
				data.add(o);
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		
		return data;
	}
	
	public ArrayList<KeyNamePair> getDocTypeData()
	{
		ArrayList<KeyNamePair> data = new ArrayList<KeyNamePair>();
		String sql = null;
		/**Document type**/
		try
		{
			sql = MRole.getDefault().addAccessSQL(
				"SELECT dt.C_DocType_ID, dt.Name "
				+ "FROM C_DocType dt WHERE dt.AD_Client_ID=? "
				+ "AND dt.DocBaseType IN ('APP','ARR') "
				+ "ORDER BY 2", "dt",
				MRole.SQL_FULLYQUALIFIED, MRole.SQL_RO);

			PreparedStatement pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, m_AD_Client_ID);		//	Client
			ResultSet rs = pstmt.executeQuery();

			while (rs.next())
			{
				KeyNamePair	dt = new KeyNamePair(rs.getInt(1), rs.getString(2));
				data.add(dt);
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		
		return data;
	}
	
	public void prepareTable(IMiniTable miniTable)
	{
		Properties ctx = Env.getCtx();

		m_sql = miniTable.prepareTable(new ColumnInfo[] {
			//  0..4
			new ColumnInfo(" ", "i.C_Invoice_ID", IDColumn.class, false, false, null),
			new ColumnInfo(Msg.translate(ctx, "AD_Org_ID"), "o.Name", KeyNamePair.class, true, false, "i.AD_Org_ID"),
			new ColumnInfo(Msg.translate(ctx, "DueDate"), "i.DueDate AS DateDue", Timestamp.class, true, true, null),
			new ColumnInfo(Msg.translate(ctx, "C_BPartner_ID"), "bp.Name", KeyNamePair.class, true, false, "i.C_BPartner_ID"),
			new ColumnInfo("CNPJ/CPF/ID", "COALESCE (bp.LBR_CNPJ, bp.LBR_CPF, bp.TaxID)", String.class),
			new ColumnInfo(Msg.translate(ctx, "DocumentNo"), "i.DocumentNo", String.class),
			new ColumnInfo(Msg.translate(ctx, "LBR_NotaFiscal_ID"), "(SELECT MAX(nf.DocumentNo) FROM LBR_NotaFiscal nf WHERE nf.C_Invoice_ID=i.C_Invoice_ID AND nf.DocStatus IN ('CL', 'CO')) AS LBR_NFeNo", String.class),
			new ColumnInfo(Msg.translate(ctx, "C_Currency_ID"), "c.ISO_Code", KeyNamePair.class, true, false, "i.C_Currency_ID"),
			// 5..9
			new ColumnInfo(Msg.translate(ctx, "GrandTotal"), "i.GrandTotal", BigDecimal.class),
//			new ColumnInfo(Msg.translate(ctx, "DiscountAmt"), "paymentTermDiscount(i.GrandTotal,i.C_Currency_ID,i.C_PaymentTerm_ID,i.DateInvoiced, ?)", BigDecimal.class),
//			//TODO Criar baixa, desconto, pg maior menor igual alocação
			new ColumnInfo(Msg.getMsg(ctx, "AmountDue"), "currencyConvert(invoiceOpen(i.C_Invoice_ID,i.C_InvoicePaySchedule_ID),i.C_Currency_ID, ?,?,i.C_ConversionType_ID, i.AD_Client_ID,i.AD_Org_ID)", BigDecimal.class),
			new ColumnInfo(Msg.getMsg(ctx, "AmountPay"), "currencyConvert(invoiceOpen(i.C_Invoice_ID,i.C_InvoicePaySchedule_ID),i.C_Currency_ID, ?,?,i.C_ConversionType_ID, i.AD_Client_ID,i.AD_Org_ID)", BigDecimal.class)
			},
			//	FROM
			"C_Invoice_v i"
			+ " INNER JOIN C_BPartner bp ON (i.C_BPartner_ID=bp.C_BPartner_ID)"
			+ " INNER JOIN C_Currency c ON (i.C_Currency_ID=c.C_Currency_ID)"
			+ " INNER JOIN C_PaymentTerm p ON (i.C_PaymentTerm_ID=p.C_PaymentTerm_ID)"
			+ " INNER JOIN AD_Org o ON (i.AD_Org_ID=o.AD_Org_ID)",
			//	WHERE
			"i.IsSOTrx=? AND IsPaid='N'"
			//	Different Payment Selection
			+ " AND NOT EXISTS (SELECT * FROM C_PaySelectionLine psl"
			+                 " INNER JOIN C_PaySelectionCheck psc ON (psl.C_PaySelectionCheck_ID=psc.C_PaySelectionCheck_ID)"
			+                 " LEFT OUTER JOIN C_Payment pmt ON (pmt.C_Payment_ID=psc.C_Payment_ID)"
			+                 " WHERE i.C_Invoice_ID=psl.C_Invoice_ID AND psl.IsActive='Y'"
			+				  " AND (pmt.DocStatus IS NULL OR pmt.DocStatus NOT IN ('VO','RE')) )"
			+ " AND i.DocStatus IN ('CO','CL')"
			+ " AND i.AD_Org_ID=? AND invoiceOpen(i.C_Invoice_ID,i.C_InvoicePaySchedule_ID) > 0",	//	additional where & order in loadTableInfo()
			true, "i");
	}   //  dynInit
	
	public void prepareTableOrder(IMiniTable miniTable)
	{
		Properties ctx = Env.getCtx();

		m_sql_order = miniTable.prepareTable(new ColumnInfo[] {
			//  0..4
			new ColumnInfo(" ", "i.C_Order_ID", IDColumn.class, false, false, null),
			new ColumnInfo(Msg.translate(ctx, "AD_Org_ID"), "o.Name", KeyNamePair.class, true, false, "i.AD_Org_ID"),
			new ColumnInfo(Msg.translate(ctx, "DueDate"), "i.DateOrdered AS DateOrdered", Timestamp.class, true, true, null),
			new ColumnInfo(Msg.translate(ctx, "C_BPartner_ID"), "bp.Name", KeyNamePair.class, true, false, "i.C_BPartner_ID"),
			new ColumnInfo("CNPJ/CPF/ID", "COALESCE (bp.LBR_CNPJ, bp.LBR_CPF, bp.TaxID)", String.class),
			new ColumnInfo(Msg.translate(ctx, "DocumentNo"), "i.DocumentNo", String.class),
			new ColumnInfo(Msg.translate(ctx, "LBR_NotaFiscal_ID"), "(SELECT MAX(nf.DocumentNo) FROM LBR_NotaFiscal nf WHERE nf.C_Order_ID=i.C_Order_ID AND nf.DocStatus IN ('CL', 'CO')) AS LBR_NFeNo", String.class),
			new ColumnInfo(Msg.translate(ctx, "C_Currency_ID"), "c.ISO_Code", KeyNamePair.class, true, false, "i.C_Currency_ID"),
			// 5..9
			new ColumnInfo(Msg.translate(ctx, "GrandTotal"), "i.GrandTotal", BigDecimal.class),
			new ColumnInfo(Msg.getMsg(ctx, "AmountDue"), "i.GrandTotal", BigDecimal.class),
			new ColumnInfo(Msg.getMsg(ctx, "AmountPay"), "i.GrandTotal", BigDecimal.class)
			},
			//	FROM
			"C_Order i"
			+ " INNER JOIN C_BPartner bp ON (i.C_BPartner_ID=bp.C_BPartner_ID)"
			+ " INNER JOIN C_Currency c ON (i.C_Currency_ID=c.C_Currency_ID)"
			+ " INNER JOIN C_PaymentTerm p ON (i.C_PaymentTerm_ID=p.C_PaymentTerm_ID)"
			+ " INNER JOIN AD_Org o ON (i.AD_Org_ID=o.AD_Org_ID)",
			//	WHERE
			"i.IsSOTrx=? "
			//	Different Payment Selection
			+ " AND NOT EXISTS (SELECT * FROM C_Payment p"
			+                 " WHERE i.C_Order_ID=p.C_Order_ID AND p.IsActive='Y'"
			+				  " AND (p.DocStatus IN ('CO','CL')) )"
			//	Pending
			+ " AND EXISTS (SELECT * FROM C_OrderLine ol"
			+                 " WHERE i.C_Order_ID=ol.C_Order_ID AND ol.QtyInvoiced<ol.QtyOrdered )"
			+ " AND i.DocStatus IN ('CO')"
			+ " AND i.AD_Org_ID=?",	//	additional where & order in loadTableInfo()
			true, "i");
	}   //  dynInit

	/**
	 *  Load Bank Info - Load Info from Bank Account and valid Documents (PaymentRule)
	 */
	public ArrayList<ValueNamePair> getPaymentRuleData(BankInfo bi)
	{
		ArrayList<ValueNamePair> data = new ArrayList<ValueNamePair>();
		data.add(new ValueNamePair("A", MRefList.getListName(Env.getCtx(), 214, "A")));
		data.add(new ValueNamePair("D", MRefList.getListName(Env.getCtx(), 214, "D")));
		data.add(new ValueNamePair("K", MRefList.getListName(Env.getCtx(), 214, "K")));
		data.add(new ValueNamePair("C", MRefList.getListName(Env.getCtx(), 214, "C")));
		data.add(new ValueNamePair("X", MRefList.getListName(Env.getCtx(), 214, "X")));
		return data;
	}	//	getPaymentRuleData

	/**
	 *  Query and create TableInfo
	 */
	public void loadTableInfo (BankInfo bi, Timestamp payDate, ValueNamePair paymentRule, boolean onlyDue, 
			Integer C_BPartner_ID, KeyNamePair docType, String restriction, String type, IMiniTable miniTable)
	{
		loadTableInfo (bi, payDate, paymentRule, onlyDue, false, C_BPartner_ID, docType, restriction, type, miniTable);
	}	//	loadTableInfo

	/**
	 *  Query and create TableInfo
	 */
	public void loadTableInfo (BankInfo bi, Timestamp payDate, ValueNamePair paymentRule, boolean onlyDue, boolean groupCia, 
			Integer C_BPartner_ID, KeyNamePair docType, String restriction, String type, IMiniTable miniTable)
	{
		log.config("");
		
		int AD_Org_ID = new MBankAccount (Env.getCtx(), bi.C_BankAccount_ID, null).getAD_Org_ID();
		I_W_AD_OrgInfo oi = POWrapper.create(MOrgInfo.get(Env.getCtx(), AD_Org_ID, null), I_W_AD_OrgInfo.class);
		
		String sql = m_sql;
		if (type.equals("O"))
		{
			sql = m_sql_order;
			onlyDue = false;
			if (restriction != null)
				restriction = restriction.replace("DueDate", "DateOrdered");
		}
		
		//  not yet initialized
		if (sql == null)
			return;
		
		//	show intra-company invoices
		String cnpj = oi.getlbr_CNPJ();
		if (groupCia && cnpj != null && cnpj.length() == 18)
		{
			sql = sql.replace("i.AD_Org_ID=?", "i.AD_Org_ID IN (SELECT oo.AD_Org_ID FROM AD_OrgInfo oo WHERE oo.LBR_CNPJ LIKE ?)"); 
		}
		else
			groupCia = false;
		
		//	Only due invoices
		if (onlyDue)
			sql += " AND i.DueDate <= ?";
		
		//	BPartner filter
		if (C_BPartner_ID != null && C_BPartner_ID != 0)
			sql += " AND i.C_BPartner_ID=?";

		//	Document Type
		int C_DocType_ID  = docType.getKey();
		if (C_DocType_ID  == 0)
			return;
		
		MDocType dt = new MDocType (Env.getCtx(), C_DocType_ID, null);
		
		if (MDocType.DOCBASETYPE_APPayment.equals(dt.getDocBaseType()))
			m_IsSOTrx = false;
		else if (MDocType.DOCBASETYPE_ARReceipt.equals(dt.getDocBaseType()))
			m_IsSOTrx = true;
		else
			return;
		
		if (restriction != null)
			sql += " AND " + restriction;
			
		sql += " ORDER BY 2,4,5";	//	2=Org Name, 4=DueDate, 5=Partner Name

		log.finest(sql + " - C_Currency_ID=" + bi.C_Currency_ID + ", C_BPartner_ID=" + C_BPartner_ID + ", C_doctype_id=" + C_DocType_ID  );
		//  Get Open Invoices
		try
		{
			int index = 1;
			PreparedStatement pstmt = DB.prepareStatement(sql, null);
			if (!type.equals("O"))
			{
				pstmt.setInt(index++, bi.C_Currency_ID);				//	DueAmt
				pstmt.setTimestamp(index++, payDate);					//	Payment Date
				pstmt.setInt(index++, bi.C_Currency_ID);				//	Currency
				pstmt.setTimestamp(index++, payDate);					//	Payment Date
			}
			pstmt.setString(index++, m_IsSOTrx ? "Y" : "N");			//	IsSOTrx
			if (!groupCia)
				pstmt.setInt(index++, AD_Org_ID);						//	Org
			else
				pstmt.setString(index++, cnpj.substring(0, 10) + "%");	//	CNPJ
			
			//	Only due
			if (onlyDue)
				pstmt.setTimestamp(index++, payDate);
			if (C_BPartner_ID != null && C_BPartner_ID != 0)
				pstmt.setInt(index++, C_BPartner_ID);
			//
			ResultSet rs = pstmt.executeQuery();
			miniTable.loadTable(rs);
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
	}   //  loadTableInfo

	/**
	 *  Calculate selected rows.
	 *  - add up selected rows
	 */
	public String calculateSelection(IMiniTable miniTable)
	{
		m_noSelected = 0;
		BigDecimal invoiceAmt = new BigDecimal(0.0);

		int rows = miniTable.getRowCount();
		for (int i = 0; i < rows; i++)
		{
			IDColumn id = (IDColumn)miniTable.getValueAt(i, 0);
			if (id.isSelected())
			{
				BigDecimal amt = (BigDecimal)miniTable.getValueAt(i, PAYAMT_COL);
				if (amt != null)
					invoiceAmt = invoiceAmt.add(amt);
				m_noSelected++;
			}
		}

		//  Information
		StringBuffer info = new StringBuffer();
		info.append(m_noSelected).append(" ").append(Msg.getMsg(Env.getCtx(), "Selected")).append("(s)").append(" - ");
		info.append(m_format.format(invoiceAmt));
		return info.toString();
	}   //  calculateSelection

	public Trx trx = null;
	
	/**
	 *  Generate PaySelection
	 */
	public String generatePayment (IMiniTable miniTable, ValueNamePair paymentRule, Timestamp payDate, String type, BankInfo bi)
	{
		log.info("init");
		StringBuilder result = new StringBuilder ();
		String trxName = null;
		trx = null;

		String PaymentRule = paymentRule.getValue();

		//  Create Lines
		int rows = miniTable.getRowCount();
		for (int i = 0; i < rows; i++)
		{
			IDColumn id = (IDColumn)miniTable.getValueAt(i, 0);
			if (id.isSelected())
			{
				MPayment p = new MPayment (Env.getCtx(), 0, trxName);
				int Doc_ID = id.getRecord_ID().intValue();
//				BigDecimal OpenAmt = (BigDecimal)miniTable.getValueAt(i, 6);
				BigDecimal PayAmt = (BigDecimal)miniTable.getValueAt(i, PAYAMT_COL);
				
				Boolean isSOTrx = null;
				int C_BPartner_ID = 0;
				String documentNo = null;
				int org_id = 0;
				
				//	Invoice Based document
				if (!type.equals("O"))
				{
					MInvoice invoice = new MInvoice (Env.getCtx(), Doc_ID, null);
					isSOTrx 		= invoice.isSOTrx();
					C_BPartner_ID 	= invoice.getC_BPartner_ID();
					documentNo 		= invoice.getDocumentNo();
					org_id			= invoice.getAD_Org_ID();
					
					//	Set Invoice
					p.setC_Invoice_ID(Doc_ID);
				}
				
				//	Order based document
				else
				{
					MOrder order = new MOrder (Env.getCtx(), Doc_ID, null);
					isSOTrx	 		= order.isSOTrx();
					C_BPartner_ID 	= order.getC_BPartner_ID();
					documentNo 		= order.getDocumentNo();
					org_id			= order.getAD_Org_ID();
					
					//	Set Order
					p.setC_Order_ID(Doc_ID);
				}
				
				p.setAD_Org_ID(org_id);
				p.setC_BPartner_ID(C_BPartner_ID);
				p.setTenderType(PaymentRule);
				p.setDateAcct(payDate);
				p.setDateTrx(payDate);
				p.setBankAccountDetails(bi.C_BankAccount_ID);
				p.setC_DocType_ID(isSOTrx);
				p.setC_Currency_ID(bi.C_Currency_ID);
				p.setPayAmt(PayAmt);
				p.saveEx();
				
				try
				{
					p.processIt(MPayment.ACTION_Complete);
					p.setDocStatus(MPayment.DOCSTATUS_Completed);
					p.saveEx();
				}
				catch (Exception e)
				{
					//	Delete Allocations
					Arrays.asList(MAllocationHdr.getOfPayment(Env.getCtx(), p.getC_Payment_ID(), trxName))
						.stream().forEach(pag -> pag.delete(true));
					
					//	Delete Payment
					p.delete(true);
					
					//	Inform user something went wrong
					result.append(Msg.translate(Env.getCtx(), "C_Invoice_ID") + " [" + documentNo + "/" + Doc_ID + "] : " + Msg.translate(Env.getCtx(), e.getMessage())).append("\n");
				}

				log.fine("C_Invoice_ID=" + Doc_ID + ", PayAmt=" + PayAmt);
			}
		}   //  for all rows in table
		
		if (result.length() > 1)
			return result.toString();
		return null;
	}   //  generatePaySelect

	/**************************************************************************
	 *  Bank Account Info
	 */
	public class BankInfo
	{
		/**
		 * 	BankInfo
		 *	@param newC_BankAccount_ID
		 *	@param newC_Currency_ID
		 *	@param newName
		 *	@param newCurrency
		 *	@param newBalance
		 *	@param newTransfers
		 */
		public BankInfo (int newC_BankAccount_ID, int newC_Currency_ID,
			String newName, String newCurrency, BigDecimal newBalance, boolean newTransfers)
		{
			C_BankAccount_ID = newC_BankAccount_ID;
			C_Currency_ID = newC_Currency_ID;
			Name = newName;
			Currency = newCurrency;
			Balance = newBalance;
		}
		int C_BankAccount_ID;
		int C_Currency_ID;
		String Name;
		public String Currency;
		public BigDecimal Balance;
		boolean Transfers;

		/**
		 * 	to String
		 *	@return info
		 */
		public String toString()
		{
			return Name;
		}
	}   //  BankInfo

}   //  VPaySelect
