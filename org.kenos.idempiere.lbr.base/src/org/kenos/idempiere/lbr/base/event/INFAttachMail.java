package org.kenos.idempiere.lbr.base.event;

import java.io.File;
import java.util.List;

/**
 * 		NF Mail Attachment
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: INFAttachMail.java, v1.0 2022/02/17 11:39:53 PM, ralexsander Exp $
 */
public interface INFAttachMail
{	
	public List<File> getAttachment();
	public String getMessage();
}	//	INFAttachMail
