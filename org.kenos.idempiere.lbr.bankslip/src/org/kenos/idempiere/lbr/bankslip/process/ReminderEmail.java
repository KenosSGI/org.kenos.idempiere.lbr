package org.kenos.idempiere.lbr.bankslip.process;

import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.logging.Level;

import org.compiere.model.MInvoice;
import org.compiere.model.MMailText;
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
public class ReminderEmail extends SvrProcess
{
	/** Mail Text			**/
	private int p_R_MailText_ID = -1;
	/** Organization		**/
	private int p_AD_Org_ID = -1;
	/** Record ID			**/
	private int p_LBR_BankSlip_ID = -1;
	/** Days Due			**/
	private int p_DaysDue = 0;
	/**	EMail				**/
	private String p_EMail = null;
	/**	Include Attachment	**/
	private boolean p_IncludeAttachment = true;
	
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
				p_DaysDue = para.getParameterAsInt();
			else if (name.equals(MUser.COLUMNNAME_EMail))
				p_EMail = (String) para.getParameter();
			else if (name.equals("LBR_IncludeAttachment"))
				p_IncludeAttachment = para.getParameterAsBoolean();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		//	Single record
		p_LBR_BankSlip_ID = getRecord_ID();
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
		
		if (p_DaysDue > 30 || p_DaysDue < -30)
			return "Dias do Vencimento inválido, intervalo máximo de 30 dias";
			
		//	Find candidates to be printed
		StringBuilder where = new StringBuilder(MLBRBankSlip.COLUMNNAME_DocStatus + "=? AND ");
		
		if (p_LBR_BankSlip_ID > 0) {
			where.append(MLBRBankSlip.COLUMNNAME_LBR_BankSlip_ID).append("=").append(p_LBR_BankSlip_ID) ;
		}
		else {
			//	Only open
			where.append(MLBRBankSlip.COLUMNNAME_IsPaid + "='N' AND " + MLBRBankSlip.COLUMNNAME_LBR_IsWrittenOff + "='N' AND " + MLBRBankSlip.COLUMNNAME_LBR_IsHalted + "='N'");
			
			//	Date restriction
			where.append(" AND DATE_PART ('DAY',   AGE (DueDate, TRUNC (NOW ()))) = ").append(p_DaysDue);
			where.append(" AND DATE_PART ('MONTH', AGE (DueDate, TRUNC (NOW ()))) = 0");
			where.append(" AND DATE_PART ('YEAR',  AGE (DueDate, TRUNC (NOW ()))) = 0");
			
			//	Org restriction
			if (p_AD_Org_ID > 0)
				where.append(" AND AD_Org_ID=").append(p_AD_Org_ID);
		}
			
		AtomicInteger countSuccess = new AtomicInteger ();
		AtomicInteger countError = new AtomicInteger ();
		
		//	Generate bopepos to be printed
		List<MLBRBankSlip> bss = new Query (getCtx(), MLBRBankSlip.Table_Name, where.toString(), get_TrxName())
				.setClient_ID()
				.setParameters(MLBRBankSlip.DOCSTATUS_Completed).list();
		bss.stream().forEach(bs -> {
			try {
				//	Email To
				String emailTo = (p_EMail != null && !p_EMail.isBlank()) ? p_EMail : bs.getEmail(true);
				
				//	Success
				if (BankSlipEMailUtil.sendMail(bs, emailTo, p_R_MailText_ID, p_IncludeAttachment))
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
