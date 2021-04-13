package org.kenos.idempiere.lbr.nfe.callout;

import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.adempierelbr.wrapper.I_W_C_Invoice;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MBPartner;
import org.kenos.idempiere.lbr.tax.model.MInvoice;

/**
 * 	Callout for Production
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ProductionGroup.java, v1.0 2017/12/14 10:50:00 PM, ralexsander Exp $
 */
public class Invoice implements IColumnCallout 
{
	/**
	 * 	Fill Price and Taxes
	 */
	@Override
	public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
	{
		if (value == null)
			return "";
		//
		Integer C_BPartner_ID = (Integer) mTab.getValue(MInvoice.COLUMNNAME_C_BPartner_ID);
		String reference = (String) mTab.getValue(I_W_C_Invoice.COLUMNNAME_lbr_NFEntrada);
		
		//	Reference NF is null/blank, do not validate
		if (reference == null || reference.isBlank())
			return "";
		
		//	Check if it's correct format
		if (!reference.trim().matches("^\\d{1,9}-\\d{1,3}$"))
			return "Número da NF inválido, deve seguir o formato Número-Série (123456789-123), ex: 1010-9 indica NF 1010 da série 9. Caso a NF não possua série, preencher com 0";
		
		//	Is BPartner and NF number filled correctly?
		if (C_BPartner_ID == null || C_BPartner_ID <1)
			return "";
		
		//	Check BPartner CNPJ
		I_W_C_BPartner bp = POWrapper.create(new MBPartner (ctx, C_BPartner_ID, null), I_W_C_BPartner.class);
		if (bp.getlbr_CNPJ() == null)
			return "";
		
		//	Split NF and Series number
		String[] nf_ser = reference.split("-");
		
		//	Check for valid documents
		String documentNo = nf_ser[0].trim();
		String serNo = nf_ser[1].trim();

		int count = MLBRNotaFiscal.getCount (ctx, documentNo, serNo, bp.getlbr_CNPJ(), -1, true, null);
		if (count > 0)
			return "Esta numeração de NF já foi escriturada anteriormente";

		//	Check for drafted documents
		count = MLBRNotaFiscal.getCount (ctx, documentNo, serNo, bp.getlbr_CNPJ(), -1, false, null);
		if (count > 0)
			return "Esta numeração de NF já está sendo escriturada em outro documento (ainda não completado)";
		
		return "";
	}	//	start
}	//	Production
