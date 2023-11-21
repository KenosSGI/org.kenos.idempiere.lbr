package org.kenos.idempiere.lbr.bankslip.process;

import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.logging.Level;

import org.compiere.model.MUser;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.kenos.idempiere.lbr.bankslip.exception.BankSlipEMailException;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlip;
import org.kenos.idempiere.lbr.bankslip.util.BankSlipEMailUtil;

/**
 * 	Envio de Boletos por Email
 * 	@author Ricardo Santana <rsantana@kenos.com.br>
 */
public class EmailBankSlip extends SvrProcess
{
	/**	Only open bank slip **/
	private boolean p_OnlyOpen = false;
	/** Record ID			**/
	private int p_Record_ID = -1;
	/** E-Mail				**/
	private String p_EMail = null;
	
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		for (ProcessInfoParameter para : getParameter())
		{
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if (name.equals("TO_DO"))
				p_OnlyOpen = para.getParameterAsBoolean();
			else if (name.equals(MUser.COLUMNNAME_EMail))
				p_EMail = para.getParameterAsString();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		
		p_Record_ID = getRecord_ID();
	}	//	prepare

	/**
	 * 	Cleanup Attribute Set Instance
	 * 
	 *	@return info
	 *	@throws Exception
	 */
	protected String doIt () throws Exception
	{
		//	No document
		if (p_Record_ID < 1) {
			return "@Error@ Document not Found";
		}
		if (p_EMail == null)
			return "@Error@ E-mail para envio do Boleto não encontrado";
		
		//	Find candidates to be printed
		String where = MLBRBankSlip.COLUMNNAME_DocStatus + "=? AND " + (MLBRBankSlip.Table_ID == getTable_ID() ? MLBRBankSlip.COLUMNNAME_LBR_BankSlip_ID : MLBRBankSlip.COLUMNNAME_C_Invoice_ID) + "=? ";
		if (p_OnlyOpen)
			where += MLBRBankSlip.COLUMNNAME_IsPaid + "='N' AND " + MLBRBankSlip.COLUMNNAME_LBR_IsWrittenOff + "='N' AND " + MLBRBankSlip.COLUMNNAME_LBR_IsHalted + "='N'";
		
		AtomicInteger countSuccess = new AtomicInteger ();
		AtomicInteger countError = new AtomicInteger ();
		
		//	Generate bopepos to be printed
		List<MLBRBankSlip> bss = new Query (getCtx(), MLBRBankSlip.Table_Name, where, get_TrxName()).setParameters(MLBRBankSlip.DOCSTATUS_Completed, p_Record_ID).list();
		bss.stream().forEach(bs -> {
			try {
				//	Success
				if (BankSlipEMailUtil.sendMail(bs, p_EMail))
					countSuccess.incrementAndGet();
				else {
					//	Error, show error for first 10
					if (countError.incrementAndGet() < 10)
						addLog("Falha no envio de e-mail");
				}
			} catch (BankSlipEMailException e) {
				//	Error before sending, show error for first 10
				if (countError.incrementAndGet() < 10)
					addLog(e.getMessage());
			}
		});
		
		return "@Success@ \n" + countSuccess.get() + " enviado(s) com sucesso / " + countError.get() + " não enviado(s).";
	}	//	doIt
}	//	EmailBankSlip
