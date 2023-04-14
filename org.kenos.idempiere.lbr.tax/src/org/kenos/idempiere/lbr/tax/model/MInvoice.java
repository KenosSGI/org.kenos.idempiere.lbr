package org.kenos.idempiere.lbr.tax.model;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Arrays;
import java.util.List;
import java.util.Properties;

import org.adempierelbr.model.MPaymentTerm;
import org.compiere.model.MBPartner;
import org.compiere.model.MDocType;
import org.compiere.model.MOrder;
import org.compiere.model.MPriceList;
import org.compiere.model.MPriceListVersion;
import org.compiere.process.DocOptions;
import org.compiere.process.DocumentEngine;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * 		MInvoice
 * 
 * 	@author Rogério Feitosa
 *	@version $Id: MOrder.java, v1.0 2020/12/01 1:53:09 PM, rfeitosa Exp $
 */
public class MInvoice extends org.compiere.model.MInvoice implements DocOptions
{
	/**
	 * 	Serial ID
	 */
	private static final long serialVersionUID = 8052957837388478900L;
	private boolean recursiveCall;

	public MInvoice (Properties ctx, int M_Order_ID, String trxName)
	{
		super (ctx, M_Order_ID, trxName);
	}	//	MInvoice
	
	public MInvoice (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MInvoice
	
	public int customizeValidActions (String docStatus, Object processing,
			String orderType, String isSOTrx, int AD_Table_ID, String[] docAction,
			String[] options, int index)
	{
		List<String> list = Arrays.asList (options);
		
		//	Completed
		if (docStatus.equals (DocumentEngine.STATUS_Drafted) || 
				docStatus.equals (DocumentEngine.STATUS_InProgress))
		{
			if (!list.contains(DocumentEngine.ACTION_Void))
				options[index++] = DocumentEngine.ACTION_Void;
			if (!list.contains(DocumentEngine.ACTION_Prepare))
				options[index++] = DocumentEngine.ACTION_Prepare;
			if (!list.contains(DocumentEngine.STATUS_Completed))
				options[index++] = DocumentEngine.STATUS_Completed;
		}
		return index;
	}	//	customizeValidActions
	
	/**************************************************************************
	 * 	Before Save
	 *	@param newRecord new
	 *	@return true
	 */
	protected boolean beforeSave (boolean newRecord)
	{
		log.fine("");
		//	No Partner Info - set Template
		if (getC_BPartner_ID() == 0)
			setBPartner(MBPartner.getTemplate(getCtx(), getAD_Client_ID()));
		if (getC_BPartner_Location_ID() == 0)
			setBPartner(new MBPartner(getCtx(), getC_BPartner_ID(), null));

		//	Price List
		if (getM_PriceList_ID() == 0)
		{
			int ii = Env.getContextAsInt(getCtx(), "#M_PriceList_ID");
			if (ii != 0)
			{
				MPriceList pl = new MPriceList(getCtx(), ii, null);
				if (isSOTrx() == pl.isSOPriceList())
					setM_PriceList_ID(ii);
			}
			
			if (getM_PriceList_ID() == 0)
			{
				String sql = "SELECT M_PriceList_ID FROM M_PriceList WHERE AD_Client_ID=? AND IsSOPriceList=? AND IsActive='Y' ORDER BY IsDefault DESC";
				ii = DB.getSQLValue (null, sql, getAD_Client_ID(), isSOTrx());
				if (ii != 0)
					setM_PriceList_ID (ii);
			}
		}

		//	Currency
		if (getC_Currency_ID() == 0)
		{
			String sql = "SELECT C_Currency_ID FROM M_PriceList WHERE M_PriceList_ID=?";
			int ii = DB.getSQLValue (null, sql, getM_PriceList_ID());
			if (ii != 0)
				setC_Currency_ID (ii);
			else
				setC_Currency_ID(Env.getContextAsInt(getCtx(), "#C_Currency_ID"));
		}

		//	Sales Rep
		if (getSalesRep_ID() == 0)
		{
			int ii = Env.getContextAsInt(getCtx(), "#SalesRep_ID");
			if (ii != 0)
				setSalesRep_ID (ii);
		}

		//	Document Type
		if (getC_DocType_ID() == 0)
			setC_DocType_ID (0);	//	make sure it's set to 0
		if (getC_DocTypeTarget_ID() == 0)
			setC_DocTypeTarget_ID(isSOTrx() ? MDocType.DOCBASETYPE_ARInvoice : MDocType.DOCBASETYPE_APInvoice);

		//	Payment Term
		if (getC_PaymentTerm_ID() == 0)
		{
			int ii = Env.getContextAsInt(getCtx(), "#C_PaymentTerm_ID");
			if (ii != 0)
				setC_PaymentTerm_ID (ii);
			else
			{
				String sql = "SELECT C_PaymentTerm_ID FROM C_PaymentTerm WHERE AD_Client_ID=? AND IsDefault='Y' AND IsActive='Y'";
				ii = DB.getSQLValue(null, sql, getAD_Client_ID());
				if (ii != 0)
					setC_PaymentTerm_ID (ii);
			}
		}
		
		// assign cash plan line from order
		if (getC_Order_ID() > 0 && getC_CashPlanLine_ID() <= 0) {
			MOrder order = new MOrder(getCtx(), getC_Order_ID(), get_TrxName());
			if (order.getC_CashPlanLine_ID() > 0)
				setC_CashPlanLine_ID(order.getC_CashPlanLine_ID());
		}

		// IDEMPIERE-1597 Price List and Date must be not-updateable
		if (!newRecord && (is_ValueChanged(COLUMNNAME_M_PriceList_ID) || is_ValueChanged(COLUMNNAME_DateInvoiced))) {
			int cnt = DB.getSQLValueEx(get_TrxName(), "SELECT COUNT(*) FROM C_InvoiceLine WHERE C_Invoice_ID=? AND M_Product_ID>0", getC_Invoice_ID());
			if (cnt > 0) {
				if (is_ValueChanged(COLUMNNAME_M_PriceList_ID)) {
					log.saveError("Error", Msg.getMsg(getCtx(), "CannotChangePlIn"));
					return false;
				}
				if (is_ValueChanged(COLUMNNAME_DateInvoiced)) {
					MPriceList pList =  MPriceList.get(getCtx(), getM_PriceList_ID(), null);
					MPriceListVersion plOld = pList.getPriceListVersion((Timestamp)get_ValueOld(COLUMNNAME_DateInvoiced));
					MPriceListVersion plNew = pList.getPriceListVersion((Timestamp)get_Value(COLUMNNAME_DateInvoiced));
					if (plNew == null || !plNew.equals(plOld)) {
						log.saveError("Error", Msg.getMsg(getCtx(), "CannotChangeDateInvoiced"));
						return false;
					}
				}
			}
		}

		if (! recursiveCall && (!newRecord && is_ValueChanged(COLUMNNAME_C_PaymentTerm_ID))) {
			recursiveCall = true;
			try {
				MPaymentTerm pt = new MPaymentTerm (getCtx(), getC_PaymentTerm_ID(), get_TrxName());
				boolean valid = pt.apply(this);
				setIsPayScheduleValid(valid);
			} catch (Exception e) {
				throw e;
			} finally {
				recursiveCall = false;
			}
		}

		return true;
	}	//	beforeSave

}	//	MInvoice
