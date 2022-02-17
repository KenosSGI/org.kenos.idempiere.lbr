package org.kenos.idempiere.lbr.base.event;

import java.util.Properties;

/**
 * 		NF Attachmento mail Factory
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: INFAttachMailFactory.java, v1.0 2017/09/20 18:50:53 PM, ralexsander Exp $
 */
public interface INFMailAttachFactory
{
	public INFMailAttach get (Properties ctx, int C_Invoice_ID, int LBR_NotaFiscal_ID, String trxName);
}	//	INFAttachMailFactory
