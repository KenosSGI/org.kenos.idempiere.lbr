package org.kenos.idempiere.lbr.bankslip.process;

import java.io.File;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.stream.Collectors;

import org.adempierelbr.validator.ValidatorBPartner;
import org.compiere.model.I_R_MailText;
import org.compiere.model.MClient;
import org.compiere.model.MUser;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.EMail;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlip;

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
		if (p_Record_ID < 1)
			return "@Error@ Document not Found";
		if (p_EMail == null)
			return "@Error@ E-mail para envio do Boleto não encontrado";
		
		//	Find candidates to be printed
		String where = MLBRBankSlip.COLUMNNAME_DocStatus + "=? AND " + (MLBRBankSlip.Table_ID == getTable_ID() ? MLBRBankSlip.COLUMNNAME_LBR_BankSlip_ID : MLBRBankSlip.COLUMNNAME_C_Invoice_ID) + "=? ";
		if (p_OnlyOpen)
			where += MLBRBankSlip.COLUMNNAME_IsPaid + "='N' AND " + MLBRBankSlip.COLUMNNAME_LBR_IsWrittenOff + "='N' AND " + MLBRBankSlip.COLUMNNAME_LBR_IsHalted + "='N'";
		
		//	Generate bopepos to be printed
		List<MLBRBankSlip> bss = new Query (getCtx(), MLBRBankSlip.Table_Name, where, get_TrxName()).setParameters(MLBRBankSlip.DOCSTATUS_Completed, p_Record_ID).list();
		bss.stream().forEach(this::sendMail);
		
		return "@Success@";
	}	//	doIt
	
	protected void sendMail (MLBRBankSlip bs)
	{
		if (bs.getLBR_BankSlipContract().getLBR_BankSlipConfig_ID() < 1
				|| bs.getLBR_BankSlipContract().getLBR_BankSlipConfig().getR_MailText_ID() < 1) {
			addLog("Sem modelo de e-mail para o boleto: " + bs.getDocumentNo());
			return;
		}
			
		I_R_MailText mailText = bs.getLBR_BankSlipContract().getLBR_BankSlipConfig().getR_MailText();

		String subject = mailText.getMailHeader();
		String message = mailText.getMailText();
		
		//	Parse variables
		message = Env.parseVariable (message, bs, bs.get_TrxName(), false);
		subject = Env.parseVariable (subject, bs, bs.get_TrxName(), false);
		
		//	Empresa
		MClient client = MClient.get (bs.getCtx());
		String toEMails = p_EMail.replace(",", ";");
	
		//	Check if e-mail is valid, then remove duplicates
		Iterator<String> st = Arrays.asList(toEMails.split(";")).stream()
			.filter(e -> e.trim().matches(ValidatorBPartner.REGEX_EMAIL))
			.collect(Collectors.toSet()).iterator();
		
		if (!st.hasNext()) {
			addLog ("Email para envio de boleto não encontrado");
			return;
		}
		
		EMail mail = client.createEMail (null, st.next(), subject, message, true);
		while (st.hasNext()) {
			mail.addCc(st.next());
		}
		
		File pdf = bs.createPDF();
		if (pdf == null) {
			addLog ("Erro ao gerar o PDF do boleto: " + bs.getDocumentNo());
			return;
		}
	
		//	Include mail PDF
		mail.addAttachment(pdf);
		if (mail.send().equals(EMail.SENT_OK))
			addLog ("Envio OK: " + bs.getDocumentNo());
	}	//	sendMail
}	//	EmailBankSlip
