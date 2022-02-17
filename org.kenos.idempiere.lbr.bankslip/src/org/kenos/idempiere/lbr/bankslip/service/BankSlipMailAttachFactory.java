package org.kenos.idempiere.lbr.bankslip.service;

import java.util.Properties;

import org.kenos.idempiere.lbr.base.event.INFMailAttach;
import org.kenos.idempiere.lbr.base.event.INFMailAttachFactory;

public class BankSlipMailAttachFactory implements INFMailAttachFactory {
	@Override
	public INFMailAttach get (Properties ctx, int C_Invoice_ID, int LBR_NotaFiscal_ID, String trxName) { 		
		return new BankSlipMailAttach (ctx, C_Invoice_ID, LBR_NotaFiscal_ID, trxName);
	}	//	get
}	//	NFAttachFactory
