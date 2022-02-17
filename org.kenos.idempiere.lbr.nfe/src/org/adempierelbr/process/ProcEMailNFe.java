package org.adempierelbr.process;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
import java.util.logging.Level;

import org.adempiere.base.Service;
import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRNFConfig;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.nfse.INFSe;
import org.adempierelbr.nfse.NFSeUtil;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.compiere.model.MAttachmentEntry;
import org.compiere.model.MBPartner;
import org.compiere.model.MChangeLog;
import org.compiere.model.MClient;
import org.compiere.model.MColumn;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MShipper;
import org.compiere.model.MSysConfig;
import org.compiere.model.MUser;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.EMail;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.kenos.idempiere.lbr.base.event.INFMailAttach;
import org.kenos.idempiere.lbr.base.event.INFMailAttachFactory;
import org.kenos.idempiere.lbr.base.model.SysConfig;

/**
 * 	Processo para enviar a NF-e para o e-mail do Cliente
 * 
 * @author Ricardo Santana (Kenos, www.kenos.com.br)
 * @version $Id: ProcEMailNFe.java, v1.0 2010/08/02 10:46:41 AM, ralexsander Exp $
 */
public class ProcEMailNFe extends SvrProcess 
{
	/** Nota Fiscal			*/
	private Integer p_LBR_NotaFiscal_ID = 0;
	
	/**	EMail				*/
	private String p_EMail = null;
	
	/**	Logger				*/
	private static CLogger log = CLogger.getCLogger(ProcEMailNFe.class);

	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals(MUser.COLUMNNAME_EMail))
				p_EMail = (String) para[i].getParameter();
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
		//
		p_LBR_NotaFiscal_ID = getRecord_ID();
	}	//	prepare
	
	/**
	 * 	DoIt
	 */
	protected String doIt() throws Exception 
	{
		if (p_LBR_NotaFiscal_ID <= 0)
			return "NF-e não encontrada.";
		//
		MLBRNotaFiscal nf = new MLBRNotaFiscal (Env.getCtx(), p_LBR_NotaFiscal_ID, get_TrxName());
		//
		return sendEmailNFe (nf, p_EMail, false, true);
	}	//	doIt
	
	/**
	 * 		Método para enviar e-mail da NF-e numa nova thread
	 * 
	 * @param nf
	 * @param force
	 * @return
	 */
	public static void sendEmailNFeThread (final MLBRNotaFiscal nf, final boolean force)
	{
		Thread thread = new Thread ("Timeout") 
		{
			public void run ()
			{
				try
				{
					int counterLimit = 0;
					Thread.sleep (10*1000);	//	10 secs waiting time
					
					//	Wait until the transaction is closed by other processes
					//	max of 60 interactions, resulting in a 10 minutes total
					while (counterLimit < 60)
					{
						Trx trx = Trx.get (nf.get_TrxName(), false);
						
						//	Transaction closed or inactive, abort
						if (trx == null || !trx.isActive())
							counterLimit = 999;
						
						else
						{
							if (counterLimit == 0)
								log.warning("Aguardando a liberação da NF para envio de e-mail, tentando novamente a cada 10 segs num limite de 10 min");
							//
							counterLimit++;
							Thread.sleep (10*1000);	//	10 secs waiting time
						}
					} 
					
					//	Log that waiting time is reached
					if (counterLimit == 60)
						log.warning("Tempo limite atingido. Tentando forçar o envio de e-mail mesmo sem a liberação da transação da NF");
				}
				catch (InterruptedException e)
				{
					e.printStackTrace();
				}
				
				//	Make sure the transaction is new
				String result = ProcEMailNFe.sendEmailNFe (new MLBRNotaFiscal (nf.getCtx(), nf.getLBR_NotaFiscal_ID(), null), force);
				
				if (result.indexOf ("@Success@") == -1)
					log.fine ("Erro ao enviar e-mail da NF #" + nf.getlbr_NFeID() + ", Resultado: " + result);
			}
		};
		
		//	Timeout check
		thread.start();
	}	//	sendEmailNFeThread
	
	/**
	 * 	Método para enviar e-mail da NF-e
	 * 
	 * @param nf
	 * @param force
	 * @return
	 */
	public static String sendEmailNFe (MLBRNotaFiscal nf, boolean force)
	{
		return sendEmailNFe (nf, null, true, force);
	}	//	sendEmailNFe
	
	/**
	 * 	Método para enviar e-mail da NF-e
	 * 
	 * @param nf
	 * @return
	 */
	public static String sendEmailNFe (MLBRNotaFiscal nf, String toEMails, boolean sendToShipper, boolean force)
	{
		if (nf == null)
		{
			log.severe("NF-e não encontrada");
			return "NF-e não encontrada";
		}
		
		if (nf.getC_BPartner_ID() <= 0)
		{
			log.severe("NF-e sem parceiro de Negócios");
			return "NF-e sem parceiro de Negócios";
		}
		
		MLBRNFConfig nfConfig = MLBRNFConfig.get (nf.getAD_Org_ID(), nf.getlbr_NFModel());
		
		boolean isProductNFe = TextUtil.match(nf.getlbr_NFModel(), 
				MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalEletrônica,
				MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalDeConsumidorEletrônica);
		
		if (isProductNFe && (nf.getlbr_NFeProt() == null || nf.getlbr_NFeProt().length() <= 1
				|| (isProductNFe && (!TextUtil.match (nf.getlbr_NFeStatus(), 
						MLBRNotaFiscal.LBR_NFESTATUS_100_AutorizadoOUsoDaNF_E,
						MLBRNotaFiscal.LBR_NFESTATUS_101_CancelamentoDeNF_EHomologado)))))
		{
			log.warning("NF-e não foi autorizada");
			return "NF-e não foi autorizada";
		}
		
		if (nf.isLBR_EMailSent() && !force)
		{
			log.warning("E-Mail já enviado");
			return "E-Mail já enviado";
		}
		
		//	Get e-mail from business partner
		if (toEMails == null || toEMails.trim().isEmpty() || toEMails.indexOf('@') == -1)
		{
			MBPartner bp = new MBPartner (Env.getCtx(), nf.getC_BPartner_ID(), nf.get_TrxName());
			
			if (MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalDeServiçosEletrônicaRPS.equals(nf.getlbr_NFModel())
					&& !bp.get_ValueAsString("LBR_EMailNFSe").isEmpty())
						toEMails = bp.get_ValueAsString("LBR_EMailNFSe");
			else
				toEMails = bp.get_ValueAsString("lbr_EMailNFe");
		}
		
		if (sendToShipper && isProductNFe && nf.getM_Shipper_ID() > 0)
		{
			MShipper shipper = new MShipper(nf.getCtx(), nf.getM_Shipper_ID(), null);
			//
			if (shipper.getC_BPartner_ID() > 0)
			{
				MBPartner shipperBP = new MBPartner (Env.getCtx(), shipper.getC_BPartner_ID(), nf.get_TrxName());
				String shipperEMail = shipperBP.get_ValueAsString("lbr_EMailNFe");
				//
				if (shipperEMail != null && shipperEMail.length() > 0)
					if (toEMails == null || toEMails.length() < 1)
						toEMails = shipperEMail;
					else
						toEMails += ";" + shipperEMail;
			}
		}
		
		// Definir Endereço de Email para receber todas as NFs Autorizadas no Adempiere
		String nfbyEmailto = null;
		
		if (nfConfig != null)
			nfbyEmailto = nfConfig.getEMail_To();
		else
			nfbyEmailto = MSysConfig.getValue(SysConfig.LBR_SEND_NF_BY_EMAIL_TO, "", Env.getAD_Client_ID(Env.getCtx()));
		
		if (!"".equals(nfbyEmailto))
		{
			toEMails += ";" + nfbyEmailto;
		}
		
		if (toEMails == null || toEMails.indexOf('@') == -1)
		{
			log.warning("E-mail para recepção de NF-e inválido");
			return "@Error@ E-mail para recepção de NF-e inválido";
		}
		else
			toEMails = toEMails.replace(",", ";");
		//
		String subject = null;
		String message = null;
		String emailMsgTag = null;

		if (nfConfig != null && nfConfig.getR_MailText_ID() > 0)
			message =  nfConfig.getR_MailText().getMailText();
		else if (isProductNFe)
			emailMsgTag = MSysConfig.getValue (SysConfig.LBR_CUSTOM_NFE_EMAIL_MESSAGE, "LBR_EMailNFe", nf.getAD_Client_ID());
		else
			emailMsgTag = MSysConfig.getValue (SysConfig.LBR_CUSTOM_NFSE_EMAIL_MESSAGE, "LBR_EMailNFSe", nf.getAD_Client_ID());
		
		if (emailMsgTag != null)
			message = Msg.getMsg(Env.getCtx(), emailMsgTag);
		
		//	Parse variables
		message = Env.parseVariable (message, nf, nf.get_TrxName(), false);
		
		if (nfConfig != null && nfConfig.getR_MailText_ID() > 0)
			subject = nfConfig.getR_MailText().getMailHeader();
		else if (isProductNFe)
			subject = "Nota Fiscal Eletr\u00F4nica - Chave " + nf.getlbr_NFeID();
		else
			subject = "Nota Fiscal de Servi\u00E7os Eletr\u00F4nica - " + nf.getlbr_NFENo();
		
		if (message == null || message.length() == 0)
		{
			log.severe("Mensagem do corpo do e-mail não encontrada");
			return "Mensagem do corpo do e-mail não encontrada";
		}
		
		//	Empresa
		MClient client = MClient.get (nf.getCtx());

		//	Organização
		I_W_AD_OrgInfo oi = POWrapper.create (MOrgInfo.get (nf.getCtx(), nf.getAD_Org_ID(), null), I_W_AD_OrgInfo.class);
		
		//	E-mail
		//	Caso o contato não esteja configurado na Organização
		//		o XML é enviado pelo e-mail da empresa
		MUser from = null;
		String replyTo = null;
		if (oi.getLBR_ContatoNFe_ID() > 0)
		{
			MUser user = new MUser (nf.getCtx(), oi.getLBR_ContatoNFe_ID(), null);
			
			//	O e-mail configurado na organização deve conter os dados de usuário/senha
			if (user.isCanSendEMail())
				from = user;
			
			//	Caso não esteja configurado, o envio é feito pelo cadastro da empresa, 
			//		com o Reply-To para o endereço configurado
			else if (user.getEMail() != null)
				replyTo = user.getEMail(); 
		}
		
		if (nfConfig != null && nfConfig.getEMail_From() != null)
			replyTo = nfConfig.getEMail_From();

		EMail mail = client.createEMail (from, client.getRequestEMail(), subject,  message, true);

		if (mail == null)
		{
			log.severe("E-mail para envio da NF-e não está configurado corretamenete, verifique usuário/senha no contato do envio");
			return "E-mail para envio da NF-e não está configurado corretamenete, verifique usuário/senha no contato do envio";
		}
		
		//	Ask for Delivery Notification
//		if (nfConfig != null && nfConfig.isDeliveryConfirmation())
//			mail.setDeliveryNotification(true);
		
		//	Responder para
		if (replyTo != null)
			mail.setReplyTo(replyTo);
		
		if (isProductNFe)
		{
			MAttachmentEntry entryXML = null;
			for (MAttachmentEntry entry : nf.getAttachment(true).getEntries())
			{
				if (entry.getName().endsWith ("dst.xml"))
					entryXML = entry;
			}
			
			mail.addAttachment (NFeUtil.getAttachmentEntryFile (entryXML));
			
			//	DANFE
			File danfe = nf.createPDF();
			if (danfe != null && danfe.length() > 0)
				mail.addAttachment(danfe);
		}
		else
		{
			INFSe iNFSe = NFSeUtil.get (nf);
			mail.addAttachment (iNFSe.getPDF (nf));
		}
		
		//	Additional attachments
		INFMailAttach printDocument = null;
	    List<INFMailAttachFactory> factoryList = Service.locator().list(INFMailAttachFactory.class).getServices();
		List<File> attachements = new ArrayList<File>();
		
		for (INFMailAttachFactory factory : factoryList)
		{
			printDocument = factory.get (Env.getCtx(), 0, nf.getLBR_NotaFiscal_ID(), nf.get_TrxName());
			if (printDocument == null)
				continue;
			
			List<File> additionalAttch = printDocument.getAttachment();
			if (additionalAttch == null || additionalAttch.isEmpty())
				continue;
			
			attachements.addAll(additionalAttch);
		}
		
		//	Include additional attachments
		attachements.stream().forEach(f -> { 
			mail.addAttachment(f);
		});
		
		//
		StringTokenizer st = new StringTokenizer(toEMails, ";");
		while (st.hasMoreTokens())
		{
			String toEMail = st.nextToken();
			if (toEMail == null)
				continue;
			//
			toEMail = toEMail.trim();
			if (toEMail.length() == 0 || toEMail.indexOf("@") == -1)
				continue;
			//
			mail.addCc(toEMail);
		}
		//
		if (mail.send().equals(EMail.SENT_OK))
			updateNFASync (nf.getLBR_NotaFiscal_ID());

		else
			return "@Error@ " + mail.getSentMsg();
		//
		return "@Success@";
	}	//	sendEmailNFe
	
	/**
	 * 	Update NF email sent flag. This should be async process because it can hang on a loop otherwise. 
	 * 	@param LBR_NotaFiscal_ID
	 */
	private final static void updateNFASync (int LBR_NotaFiscal_ID)
	{
		new Thread ("Timeout") 
		{
			public void run ()
			{
				try
				{
					Thread.sleep (10*1000);	//	10 secs waiting time
					
					//	Mark as e-mail sent
					int count = DB.executeUpdate ("UPDATE LBR_NotaFiscal SET LBR_EMailSent='Y' WHERE LBR_NotaFiscal_ID=?", LBR_NotaFiscal_ID, null);
					
					//	Force save the log
					if (count == 1)
					{
						MLBRNotaFiscal nf = new MLBRNotaFiscal (Env.getCtx(), LBR_NotaFiscal_ID, null);
						//
						int AD_Session_ID = Env.getContextAsInt(nf.getCtx(), "#AD_Session_ID");
						MChangeLog c = new MChangeLog (nf.getCtx(), 0, null, AD_Session_ID, MLBRNotaFiscal.Table_ID, 
								MColumn.getColumn_ID(MLBRNotaFiscal.Table_Name, MLBRNotaFiscal.COLUMNNAME_LBR_EMailSent), 
								nf.getLBR_NotaFiscal_ID(), nf.getAD_Client_ID(), nf.getAD_Org_ID(), nf.isLBR_EMailSent(), true, MChangeLog.EVENTCHANGELOG_Update);
						c.save();
					}
				}
				catch (Exception e)
				{
					e.printStackTrace();
				}
			}
		}.start();
	}
}	//	ProcEMailNFe
