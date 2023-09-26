package org.kenos.idempiere.lbr.bankslip.acct;

import java.sql.ResultSet;

import org.adempiere.base.IDocFactory;
import org.compiere.acct.Doc;
import org.compiere.model.MAcctSchema;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlip;

/**
 * 	@author Ricardo Santana <rsantana@kenos.com.br>
 */
public class DocAcctFactory implements IDocFactory
{
	@Override
	public Doc getDocument(MAcctSchema as, int AD_Table_ID, int Record_ID, String trxName)
	{
		if (MLBRBankSlip.Table_ID == AD_Table_ID)
			return Doc_BankSlip.get (as, AD_Table_ID, Record_ID, trxName);
		return null;
	}	//	getDocument

	@Override
	public Doc getDocument(MAcctSchema as, int AD_Table_ID, ResultSet rs, String trxName)
	{
		if (MLBRBankSlip.Table_ID == AD_Table_ID)
			return new Doc_BankSlip (as, MLBRBankSlip.class, rs, null, trxName);
		return null;
	}	//	getDocument
}	//	DocAcctFactory
