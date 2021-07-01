package org.kenos.idempiere.lbr.tax.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Arrays;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRTax;
import org.adempierelbr.wrapper.I_W_C_OrderLine;
import org.compiere.model.MBPartner;
import org.compiere.model.MDocType;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrg;
import org.compiere.model.MProduct;
import org.compiere.model.MProductPO;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.tax.process.ReProcessOrder;

/**
 * 		MRMA
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MOrder.java, v1.0 2017/09/05 1:53:09 PM, ralexsander Exp $
 */
public class MOrder extends org.compiere.model.MOrder
{
	/**
	 * 	Serial ID
	 */
	private static final long serialVersionUID = 8052957837388478900L;

	public MOrder (Properties ctx, int M_Order_ID, String trxName)
	{
		super (ctx, M_Order_ID, trxName);
	}	//	MOrder
	
	public MOrder (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MOrder

	/**
	 * 	Copy Lines From other Order
	 *	@param otherOrder order
	 *	@param counter set counter info
	 *	@param copyASI copy line attributes Attribute Set Instance, Resaouce Assignment
	 *	@return number of lines copied
	 */
	public int copyLinesFrom (MOrder otherOrder, boolean counter, boolean copyASI)
	{
		if (isProcessed() || isPosted() || otherOrder == null)
			return 0;
		MOrderLine[] fromLines = otherOrder.getLines(false, null);
		int count = 0;
		for (int i = 0; i < fromLines.length; i++)
		{
			MOrderLine line = new MOrderLine (this);
			PO.copyValues(fromLines[i], line, getAD_Client_ID(), getAD_Org_ID());
			line.setC_Order_ID(getC_Order_ID());
			//
			if (line.getQtyLostSales().signum() != 0) {
				line.setQtyOrdered(line.getQtyLostSales().add(line.getQtyDelivered()));
				line.setQtyLostSales(Env.ZERO);
			}
			
			line.setQtyDelivered(Env.ZERO);
			line.setQtyInvoiced(Env.ZERO);
			line.setQtyReserved(Env.ZERO);
			line.setDateDelivered(null);
			line.setDateInvoiced(null);
			//
			line.setOrder(this);
			line.set_ValueNoCheck ("C_OrderLine_ID", I_ZERO);	//	new

			//	Begin Kenos - BF [#2445887]
			//	Usar os valores da invoice original
			line.set_ValueOfColumn(I_W_C_OrderLine.COLUMNNAME_LBR_CFOP_ID, fromLines[i].get_Value(I_W_C_OrderLine.COLUMNNAME_LBR_CFOP_ID));
			Integer LBR_Tax_ID = (Integer) fromLines[i].get_Value(I_W_C_OrderLine.COLUMNNAME_LBR_Tax_ID);
			//
			if (LBR_Tax_ID != null && LBR_Tax_ID.intValue() > 0)
			{
				MLBRTax fromTax = new MLBRTax(Env.getCtx(), LBR_Tax_ID, get_TrxName());
				line.set_ValueOfColumn(I_W_C_OrderLine.COLUMNNAME_LBR_Tax_ID, fromTax.copyTo().getLBR_Tax_ID());
			}
			//	End - Kenos
			
			//	References
			if (!copyASI)
			{
				line.setM_AttributeSetInstance_ID(0);
				line.setS_ResourceAssignment_ID(0);
			}
			if (counter)
				line.setRef_OrderLine_ID(fromLines[i].getC_OrderLine_ID());
			else
				line.setRef_OrderLine_ID(0);

			// don't copy linked lines
			line.setLink_OrderLine_ID(0);
			//	Tax
			if (getC_BPartner_ID() != otherOrder.getC_BPartner_ID())
				line.setTax();		//	recalculate
			//
			line.setProcessed(false);
			if (line.save(get_TrxName()))
				count++;
			
			//	Save again to fire the change event
			line.set_ValueOfColumn(I_W_C_OrderLine.COLUMNNAME_lbr_RecalculateTax, true);
			line.save(get_TrxName());
			
			//	Cross Link
			if (counter)
			{
				fromLines[i].setRef_OrderLine_ID(line.getC_OrderLine_ID());
				fromLines[i].saveEx(get_TrxName());
			}
		}
		if (fromLines.length != count)
			log.log(Level.SEVERE, "Line difference - From=" + fromLines.length + " <> Saved=" + count);
		return count;
	}	//	copyLinesFrom

	/**
	 * 	Create new Order by copying
	 * 	@param from order
	 * 	@param dateDoc date of the document date
	 * 	@param C_DocTypeTarget_ID target document type
	 * 	@param isSOTrx sales order 
	 * 	@param counter create counter links
	 *	@param copyASI copy line attributes Attribute Set Instance, Resaouce Assignment
	 * 	@param trxName trx
	 *	@return Order
	 */
	public static MOrder copyFrom (MOrder from, Timestamp dateDoc, 
		int C_DocTypeTarget_ID, boolean isSOTrx, boolean counter, boolean copyASI, 
		String trxName)
	{
		MOrder to = new MOrder (from.getCtx(), 0, trxName);
		to.set_TrxName(trxName);
		PO.copyValues(from, to, from.getAD_Client_ID(), from.getAD_Org_ID());
		to.set_ValueNoCheck ("C_Order_ID", I_ZERO);
		to.set_ValueNoCheck ("DocumentNo", null);
		//
		to.setDocStatus (DOCSTATUS_Drafted);		//	Draft
		to.setDocAction(DOCACTION_Complete);
		//
		to.setC_DocType_ID(0);
		to.setC_DocTypeTarget_ID (C_DocTypeTarget_ID);
		to.setIsSOTrx(isSOTrx);
		//
		to.setIsSelected (false);
		to.setDateOrdered (dateDoc);
		to.setDateAcct (dateDoc);
		to.setDatePromised (dateDoc);	//	assumption
		to.setDatePrinted(null);
		to.setIsPrinted (false);
		//
		to.setIsApproved (false);
		to.setIsCreditApproved(false);
		to.setC_Payment_ID(0);
		to.setC_CashLine_ID(0);
		//	Amounts are updated  when adding lines
		to.setGrandTotal(Env.ZERO);
		to.setTotalLines(Env.ZERO);
		//
		to.setIsDelivered(false);
		to.setIsInvoiced(false);
		to.setIsSelfService(false);
		to.setIsTransferred (false);
		to.setPosted (false);
		to.setProcessed (false);
		if (counter) {
			to.setRef_Order_ID(from.getC_Order_ID());
			MOrg org = MOrg.get(from.getCtx(), from.getAD_Org_ID());
			int counterC_BPartner_ID = org.getLinkedC_BPartner_ID(trxName);
			if (counterC_BPartner_ID == 0)
				return null;
			to.setBPartner(MBPartner.get(from.getCtx(), counterC_BPartner_ID));
		} else
			to.setRef_Order_ID(0);
		//
		if (!to.save(trxName))
			throw new IllegalStateException("Could not create Order");
		if (counter)
			from.setRef_Order_ID(to.getC_Order_ID());

		if (to.copyLinesFrom(from, counter, copyASI) == 0)
			throw new IllegalStateException("Could not create Order Lines");
		
		// don't copy linked PO/SO
		to.setLink_Order_ID(0);
		
		return to;
	}	//	copyFrom
	
	/**
	 * 	Un-Reserve Stock
	 * 
	 * 	@param dt Document Type
	 * 	@param lines Lines
	 * 	@return
	 */
	public boolean unReserveStock(MDocType dt, MOrderLine[] lines)
	{
		String docAction = getDocAction();
		
		//	Temporary change doc status to remove reserve
		setDocAction(DOCACTION_Void);
		
		//	Remove reserves if any
		boolean reserveStock = super.reserveStock(dt, lines);
		
		//	Revert doc action
		setDocAction(docAction);
		
		return reserveStock;
	}	//	unReserveStock
	
	public MOrder createCounterDoc (int C_BPartner_ID, boolean samePrice, boolean sameProduct)
	{
		org.compiere.model.MOrder tmp = super.createCounterDoc();
		if (tmp != null)
		{
			MOrder counter = new MOrder (tmp.getCtx(), tmp.getC_Order_ID(), get_TrxName());
			//
			Arrays.asList(counter.getLines()).stream()
				.filter(l -> samePrice || !sameProduct)
				.forEach(l -> {
					if (samePrice)
					{
						l.setPriceActual(l.getRef_OrderLine().getPriceActual());
						l.setPriceEntered(l.getRef_OrderLine().getPriceEntered());
					}
					if (!sameProduct)
					{
						MProductPO po = new Query(Env.getCtx(), MProductPO.Table_Name, "C_BPartner_ID=? AND VendorProductNo=?", null)
							.setParameters(new Object[]{C_BPartner_ID, l.getProduct().getValue()})
							.setOnlyActiveRecords(true).first();
						if (po != null)
							l.setM_Product_ID(po.getM_Product_ID());
					}
					l.saveEx();
				});
			
			//	Re-Calculate CFOP
			ReProcessOrder.processOrder (this, null, false, false, true, false, false, false, -1, false);
			
			return counter;
		}	//	createCounterDoc
		
		return null;
	}	//	createCounterDoc
	
	/**
	 * 	Close Document.
	 * 	Cancel not delivered Quantities
	 * 	@return true if success 
	 */
	public boolean closeIt()
	{
		if (log.isLoggable(Level.INFO)) log.info(toString());
		// Before Close
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_CLOSE);
		if (m_processMsg != null)
			return false;
		
		//	Close Not delivered Qty - SO/PO
		MOrderLine[] lines = getLines(true, MOrderLine.COLUMNNAME_M_Product_ID);
		for (int i = 0; i < lines.length; i++)
		{
			MOrderLine line = lines[i];
			BigDecimal old = line.getQtyOrdered();
			if (old.compareTo(line.getQtyDelivered()) != 0 
					&& !MProduct.PRODUCTTYPE_Service.equals(line.getM_Product().getProductType()))
			{
				line.setQtyLostSales(line.getQtyOrdered().subtract(line.getQtyDelivered()));
				line.setQtyOrdered(line.getQtyDelivered());
				//	QtyEntered unchanged
				line.addDescription("Close (" + old + ")");
				line.saveEx(get_TrxName());
			}
		}
		//	Clear Reservations
		if (!reserveStock(null, lines))
		{
			m_processMsg = "Cannot unreserve Stock (close)";
			return false;
		}
		
		setProcessed(true);
		setDocAction(DOCACTION_None);
		// After Close
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_CLOSE);
		if (m_processMsg != null)
			return false;
		return true;
	}	//	closeIt
	
	@Override
	public boolean rejectIt()
	{
		//	Re-Activate
		if (!isActive())
			setIsActive(true);
		//
		return super.rejectIt();
	}	//	rejectIt
	
	@Override
	public String completeIt()
	{
		//	Re-Activate
		if (!isActive())
			setIsActive(true);
		//
		return super.completeIt();
	}	//	completeIt
	
	@Override
	public String prepareIt()
	{
		//	Re-Activate
		if (!isActive())
			setIsActive(true);
		//
		return super.prepareIt();
	}	//	prepareIt
	
	@Override
	public boolean reActivateIt()
	{
		//	Re-Activate
		if (!isActive())
			setIsActive(true);
		//
		return super.reActivateIt();
	}	//	reActivateIt
}	//	MOrder
