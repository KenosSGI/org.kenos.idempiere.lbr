package org.kenos.idempiere.lbr.bankslip.server;

import java.util.Iterator;
import java.util.Properties;
import java.util.Set;

import org.compiere.model.AdempiereProcessor;
import org.compiere.model.MClient;
import org.compiere.model.MInvoice;
import org.compiere.server.AdempiereServer;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlip;

/**
 *		BankSlip Generator
 */
public class BankSlipServer extends AdempiereServer
{
	/**
	 * 	Alert Processor
	 *	@param model model
	 */
	public BankSlipServer (Properties ctx, AdempiereProcessor model)
	{
		super (model, 60);	//	60 seconds delay 
		m_ctx = ctx;
		m_processor = (BankSlipProcessor) model;
		m_client = MClient.get (ctx, model.getAD_Client_ID());
	}	//	AlertProcessor

	/**	The Concrete Model			*/
	protected Properties		m_ctx = null;
	/** Client info					*/
	protected MClient 			m_client = null;
	/** The Processor				*/
	protected BankSlipProcessor m_processor = null;

	/**
	 * 	Work
	 */
	protected void doWork ()
	{
		Set<Integer> batch = m_processor.get();
		if (batch == null || batch.size() == 0)
			return;
		
		for (Iterator<Integer> it = batch.iterator(); it.hasNext(); /***/ ) {
			Integer C_Invoice_ID = it.next();
			it.remove();	//	Remove from list

			MInvoice invoice = new MInvoice (m_ctx, C_Invoice_ID, null);
			int count = MLBRBankSlip.getFromInvoice (m_ctx, C_Invoice_ID, null).size();
			if (count == 0)
				try {
					m_processor.addLog(new BankSlipProcessorLog ("BankSlip for MInvoice[" + C_Invoice_ID + "]", false));
					MLBRBankSlip.generateFromInvoice (m_ctx, invoice, null);
				} catch (Exception e) {
					m_processor.addLog(new BankSlipProcessorLog (e.getMessage(), true));
					e.printStackTrace();
				}
		}
	}	//	doWork

	/**
	 * 	Get Server Info
	 *	@return info
	 */
	public String getServerInfo()
	{
		return "#" + p_runCount + " - Last=" + m_processor.toString();
	}	//	getServerInfo
	
	/**
	 * 	Get Client ID
	 * 	@return ID
	 */
	public int getAD_Client_ID ()
	{
		return m_client.getAD_Client_ID();
	}	//	getAD_Client_ID
}	//	BankSlipServer
