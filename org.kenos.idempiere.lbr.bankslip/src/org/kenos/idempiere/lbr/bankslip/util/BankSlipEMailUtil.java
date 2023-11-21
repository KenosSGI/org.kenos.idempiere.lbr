package org.kenos.idempiere.lbr.bankslip.util;

import java.io.File;
import java.util.Arrays;
import java.util.Iterator;
import java.util.stream.Collectors;

import org.adempierelbr.validator.ValidatorBPartner;
import org.compiere.model.MClient;
import org.compiere.model.MMailText;
import org.compiere.util.EMail;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.bankslip.exception.BankSlipEMailException;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlip;

/**
 * 	Envio de Boletos por Email
 * 	@author Ricardo Santana <rsantana@kenos.com.br>
 */
public class BankSlipEMailUtil
{
	public static boolean sendMail (MLBRBankSlip bs, String p_EMail) throws BankSlipEMailException
	{
		return sendMail (bs, p_EMail, bs.getR_MailText_ID());
	}
	
	public static boolean sendMail (MLBRBankSlip bs, String p_EMail, int p_R_MailText_ID) throws BankSlipEMailException
	{
		if (p_R_MailText_ID < 1) {
			throw new BankSlipEMailException ("Sem modelo de e-mail para o boleto: " + bs.getDocumentNo());
		}
			
		MMailText mailText = new MMailText (bs.getCtx(), p_R_MailText_ID, null);

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
			throw new BankSlipEMailException ("Email para envio de boleto não encontrado");
		}
		
		EMail mail = client.createEMail (null, st.next(), subject, message, true);
		while (st.hasNext()) {
			mail.addCc(st.next());
		}
		
		File pdf = bs.createPDF();
		if (pdf == null) {
			throw new BankSlipEMailException ("Erro ao gerar o PDF do boleto: " + bs.getDocumentNo());
		}
	
		//	Include mail PDF
		mail.addAttachment(pdf);
		if (mail.send().equals(EMail.SENT_OK))
			return true;
		return false;
	}	//	sendMail
}	//	BankSlipEMailUtil