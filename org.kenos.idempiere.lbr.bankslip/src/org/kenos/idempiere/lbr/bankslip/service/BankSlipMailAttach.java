package org.kenos.idempiere.lbr.bankslip.service;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlip;
import org.kenos.idempiere.lbr.base.event.INFMailAttach;

public class BankSlipMailAttach implements INFMailAttach {

	int C_Invoice_ID = 0;
	int LBR_NotaFiscal_ID = 0;
	String trxName = null;
	Properties ctx = null;
	
	public BankSlipMailAttach (Properties ctx, int C_Invoice_ID, int LBR_NotaFiscal_ID, String trxName) {
		this.C_Invoice_ID 		= C_Invoice_ID;
		this.LBR_NotaFiscal_ID 	= LBR_NotaFiscal_ID;
		this.trxName			= trxName;
		this.ctx				= ctx;
	}
	
	@Override
	public List<File> getAttachment() {
		
		List<File> pdfs = new ArrayList<File>();
		List<MLBRBankSlip> bankSlips = null;
				
		if (C_Invoice_ID > 0) {
			bankSlips = MLBRBankSlip.getFromInvoice (ctx, C_Invoice_ID, trxName);
		}
		else if (LBR_NotaFiscal_ID > 0)  {
			bankSlips = MLBRBankSlip.getFromNF (ctx, LBR_NotaFiscal_ID, trxName);
		}
		
		//	Not found
		if (bankSlips == null || bankSlips.isEmpty())
			return pdfs;
		
		bankSlips.stream().filter(bs -> {
			return MLBRBankSlip.LBR_DISTRIBUTEDVIA_E_MailedWithFiscalDocumentXML.equals(bs.getLBR_DistributedVia());
		}).forEach(bs -> {
			pdfs.add(bs.createPDF ());
		});
		
		return pdfs;
	}	//	getAttachment

	@Override
	public String getMessage() {
		return null;
	}
}
