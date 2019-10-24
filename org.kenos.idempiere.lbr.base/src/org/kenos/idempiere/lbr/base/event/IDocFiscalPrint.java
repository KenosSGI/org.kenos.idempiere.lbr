package org.kenos.idempiere.lbr.base.event;

import java.util.Map;

import org.compiere.model.MAttachment;

/**
 * 		Signature Factory
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: IDocFiscalPrint.java, v1.0 2019/10/18 16:09:53 PM, ralexsander Exp $
 */
public interface IDocFiscalPrint
{
//	public void initialize(Properties ctx, int recordID, String trxName);
	
	public String getExtension();
	public String getMessage();
	public String getReportName();
	public String getXMLFile();
	public String getDatePattern();
	public MAttachment getAttachment();
	public Map<String, Object>  getParameters();
	
	default public boolean isError()
	{
		return false;
	}
}	//	IDocFiscalPrint
