package org.kenos.idempiere.lbr.bankslip.event;

import org.adempiere.base.event.AbstractEventHandler;
import org.adempiere.base.event.IEventTopics;
import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.wrapper.I_W_C_Invoice;
import org.compiere.model.MInvoice;
import org.compiere.model.MSysConfig;
import org.compiere.model.PO;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipContract;
import org.kenos.idempiere.lbr.bankslip.server.BankSlipProcessor;
import org.kenos.idempiere.lbr.bankslip.server.BankSlipProcessorFactory;
import org.kenos.idempiere.lbr.base.model.SysConfig;
import org.osgi.service.event.Event;

/**
 * 		OSGi Events Handler
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: EventHandler.java, v1.0 2017/09/06 10:56:57 AM, ralexsander Exp $
 */
public class EventHandler extends AbstractEventHandler
{
	@Override
	protected void doHandleEvent(Event event)
	{
		//	Event Topic
		String topic = event.getTopic();
		
		//	Model Events
		if (topic.startsWith (IEventTopics.MODEL_EVENT_PREFIX))
		{
			PO po = getPO (event);
	
			//	Do nothing
			if (po == null)
				;
			
			//	Handle InOutLine Events
			else if (MInvoice.Table_Name.equals(po.get_TableName()))
				doHandleEvent ((MInvoice) po, topic);
			
			//	Handle InOutLine Events
			else if (MLBRNotaFiscal.Table_Name.equals(po.get_TableName()))
				doHandleEvent ((MLBRNotaFiscal) po, topic);
		}
		
	}	//	doHandleEvent
	
	/**
	 * 	Handle Invoice Events
	 * 	@param event
	 */
	private void doHandleEvent (MInvoice invoice, String topic)
	{
		I_W_C_Invoice iW = POWrapper.create(invoice, I_W_C_Invoice.class);
		//
		if (iW.getLBR_BankSlipContract_ID() < 1)
			return;

		//	Check bank account organization
		MLBRBankSlipContract contract = new MLBRBankSlipContract (invoice.getCtx(), iW.getLBR_BankSlipContract_ID(), null);
		if (contract.getC_BankAccount().getAD_Org_ID() == invoice.getAD_Org_ID())
			return;	//	Same org, OK
		
		//	Bank Slip contract should be from the same organization
		invoice.set_ValueOfColumn(I_W_C_Invoice.COLUMNNAME_LBR_BankSlipContract_ID, null);
	}	//	doHandleTableEvent
	
	/**
	 * 	Handle NF Events
	 * 	@param event
	 */
	private void doHandleEvent (MLBRNotaFiscal nf, String topic)
	{
		if (!nf.is_ValueChanged(MLBRNotaFiscal.COLUMNNAME_DocStatus))
			return;

		//	Directly generation from generate invoice window
		boolean directlyGen = MSysConfig.getBooleanValue(SysConfig.LBR_DIRECTLY_GENBILLING, false, nf.getAD_Client_ID());
		if (directlyGen)
			return;
		
		//	Generate Bank Slip
		if (MLBRNotaFiscal.DOCSTATUS_Completed.equals(nf.getDocStatus()))
		{
			//	Not issued by us, or not linked to an invoice
			if (!MLBRNotaFiscal.LBR_ISOWNDOCUMENT_IssuedByUsOwnDocument.equals(nf.getlbr_IsOwnDocument()) 
					|| nf.getC_Invoice_ID() < 0)
				return;	//	No Ivnoice
			
			BankSlipProcessor processor = BankSlipProcessorFactory.getProcessor(nf.getAD_Client_ID());
			if (processor == null)
				return;

			processor.put(nf.getC_Invoice_ID());
		}
	}	//	doHandleTableEvent

	/**
	 * 	Register to receive OSGi Events
	 */
	@Override
	protected void initialize()
	{
		registerTableEvent (IEventTopics.PO_BEFORE_NEW, MInvoice.Table_Name);
		registerTableEvent (IEventTopics.PO_BEFORE_CHANGE, MInvoice.Table_Name);
		registerTableEvent (IEventTopics.PO_AFTER_CHANGE, MLBRNotaFiscal.Table_Name);
	}	//	initialize
}	//	EventHandler
