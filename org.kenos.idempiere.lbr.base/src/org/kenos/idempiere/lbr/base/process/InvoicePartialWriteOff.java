/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution					   *
 * Copyright (C) 1999-2006 ComPiere, Inc. All Rights Reserved.				*
 * This program is free software; you can redistribute it and/or modify it	*
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.		   *
 * See the GNU General Public License for more details.					   *
 * You should have received a copy of the GNU General Public License along	*
 * with this program; if not, write to the Free Software Foundation, Inc.,	*
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.					 *
 * For the text or an alternative of this public license, you may reach us	*
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA		*
 * or via info@compiere.org or http://www.compiere.org/license.html		   *
 *****************************************************************************/
package org.kenos.idempiere.lbr.base.process;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.logging.Level;

import org.compiere.model.MAllocationHdr;
import org.compiere.model.MAllocationLine;
import org.compiere.model.MInvoice;
import org.compiere.process.DocAction;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.Env;

/**
 *	Write-off Open Invoices with partial amount
 *	
 *  @author Ricardo Santana <rsantana@kenos.com.br>
 */
public class InvoicePartialWriteOff extends SvrProcess
{
	/** Invoice */
	private int p_C_Invoice_ID = 0;
	/** Invoice Pay Schedule*/
	private int p_C_InvoicePaySchedule_ID = 0;
	/** Charge */
	private int p_C_Charge_ID = 0;
	/** Discount Amount */
	private BigDecimal p_DiscountAmt = Env.ZERO;
	/** Description */
	private String p_Description = null;
	/** Accounting Date */
	private Timestamp p_DateAcct = null;

	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null && para[i].getParameter_To() == null)
				;
			else if (name.equals("C_Invoice_ID"))
				p_C_Invoice_ID = para[i].getParameterAsInt();
			else if (name.equals("C_InvoicePaySchedule_ID"))
				p_C_InvoicePaySchedule_ID = para[i].getParameterAsInt();
			else if (name.equals("C_Charge_ID"))
				p_C_Charge_ID = para[i].getParameterAsInt();
			else if (name.equals("DiscountAmt"))
				p_DiscountAmt = (BigDecimal) para[i].getParameter();
			else if (name.equals("Description"))
				p_Description = (String) para[i].getParameter();
			else if (name.equals("DateAcct"))
				p_DateAcct = (Timestamp) para[i].getParameter();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 *  Execute
	 *  @return message
	 *  @throws Exception
	 */
	protected String doIt() throws Exception
	{
		if (log.isLoggable(Level.INFO))
			log.info("C_Invoice_ID=" + p_C_Invoice_ID + ", DiscountAmt=" + p_DiscountAmt + ", Description=" + p_Description);

		if (p_C_Invoice_ID == 0)
			throw new AdempiereUserError("@FillMandatory@ @C_Invoice_ID@");

		if (p_DiscountAmt.compareTo(Env.ZERO) <= 0)
			throw new AdempiereUserError("@FillMandatory@ @DiscountAmt@");

		// Load invoice
		MInvoice invoice = new MInvoice(getCtx(), p_C_Invoice_ID, get_TrxName());
		if (invoice.getOpenAmt().signum() == 0)
			throw new AdempiereUserError("@InvoiceClosed@");
		
		//	Make sure to have a pay schedule in case invoice has parcels
		if (invoice.isPayScheduleValid() && p_C_InvoicePaySchedule_ID < 1)
			throw new AdempiereUserError("@FillMandatory@ @C_InvoicePaySchedule_ID@");

		BigDecimal openAmt = invoice.getOpenAmt();
		if (p_DiscountAmt.signum() == -1 || p_DiscountAmt.compareTo(openAmt.abs()) > 0)
			throw new AdempiereUserError("@InvalidDiscountAmt@");

		// Create allocation header if not exists
		MAllocationHdr m_alloc = new MAllocationHdr(getCtx(), true, p_DateAcct, invoice.getC_Currency_ID(), p_Description, get_TrxName());
		m_alloc.setAD_Org_ID(invoice.getAD_Org_ID());
		if (!m_alloc.save())
			throw new IllegalStateException("Cannot create allocation header");

		if (invoice.isSOTrx() == invoice.isCreditMemo())
			p_DiscountAmt = p_DiscountAmt.negate();
		
		// Create allocation line for discount
		MAllocationLine aLine = new MAllocationLine(m_alloc, Env.ZERO, Env.ZERO, p_DiscountAmt, Env.ZERO);
		aLine.setC_Invoice_ID(p_C_Invoice_ID);
		if (p_C_InvoicePaySchedule_ID > 0)
			aLine.set_ValueOfColumn("C_InvoicePaySchedule_ID", p_C_InvoicePaySchedule_ID);
		if (p_C_Charge_ID > 0)
			aLine.setC_Charge_ID(p_C_Charge_ID);
		if (!aLine.save())
			throw new IllegalStateException("Cannot create allocation line");

		// Process allocation
		if (!m_alloc.processIt(DocAction.ACTION_Complete)) {
			log.warning("Allocation Process Failed: " + m_alloc + " - " + m_alloc.getProcessMsg());
			throw new IllegalStateException("Allocation Process Failed: " + m_alloc + " - " + m_alloc.getProcessMsg());
		}

		addLog(invoice.getC_Invoice_ID(), invoice.getDateInvoiced(), p_DiscountAmt, invoice.getDocumentNo() + " - Discount Applied");
		return "@Success@ Discount of " + p_DiscountAmt + " applied to Invoice " + invoice.getDocumentNo();
	}	//	doIt
}	//	InvoicePartialWriteOff
