package org.kenos.idempiere.lbr.bankslip.process;

import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.logging.Level;

import org.compiere.model.MInvoice;
import org.compiere.model.MMailText;
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
public class ReminderEmail extends SvrProcess
{
	/** Mail Text			**/
	private int p_R_MailText_ID = -1;
	/** Organization		**/
	private int p_AD_Org_ID = -1;
	/** Days Due			**/
	private int p_DaysBefore = 0;
	
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
			else if (name.equals(MInvoice.COLUMNNAME_AD_Org_ID))
				p_AD_Org_ID = para.getParameterAsInt();
			else if (name.equals(MMailText.COLUMNNAME_R_MailText_ID))
				p_R_MailText_ID = para.getParameterAsInt();
			else if (name.equals("DaysDue"))
				p_DaysBefore = para.getParameterAsInt();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 * 	Send bank slip reminder
	 * 
	 *	@return info
	 *	@throws Exception
	 */
	protected String doIt () throws Exception
	{
		//	Check mail model
		if (p_R_MailText_ID < 1)
			return "Modelo de e-mail não encontrado";
		
		if (p_DaysBefore < 0)
			return "Dias do Vencimento inválido";
			
		//	Find candidates to be printed
		StringBuilder where = new StringBuilder(MLBRBankSlip.COLUMNNAME_DocStatus + "=? AND ");
		
		//	Only open
		where.append(MLBRBankSlip.COLUMNNAME_IsPaid + "='N' AND " + MLBRBankSlip.COLUMNNAME_LBR_IsWrittenOff + "='N' AND " + MLBRBankSlip.COLUMNNAME_LBR_IsHalted + "='N'");
		
		//	Date restriction
		where.append(" AND DATE_PART ('DAY',   AGE (DueDate, TRUNC (NOW ()))) = ?") ;
		where.append(" AND DATE_PART ('MONTH', AGE (DueDate, TRUNC (NOW ()))) = 0");
		where.append(" AND DATE_PART ('YEAR',  AGE (DueDate, TRUNC (NOW ()))) = 0");
		
		//	Org restriction
		if (p_AD_Org_ID > 0)
			where.append(" AND AD_Org_ID=").append(p_AD_Org_ID);
			
		AtomicInteger countSuccess = new AtomicInteger ();
		AtomicInteger countError = new AtomicInteger ();
		
		//	Generate bopepos to be printed
		List<MLBRBankSlip> bss = new Query (getCtx(), MLBRBankSlip.Table_Name, where.toString(), get_TrxName())
				.setClient_ID()
				.setParameters(MLBRBankSlip.DOCSTATUS_Completed, p_DaysBefore).list();
		bss.stream().forEach(bs -> {
			try {
				//	Success
				if (BankSlipEMailUtil.sendMail(bs, bs.getEmail(true), p_R_MailText_ID))
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
}	//	ReminderEmail
