package org.kenos.idempiere.lbr.nfe.acct;

import java.sql.ResultSet;

import org.adempiere.base.IDocFactory;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.compiere.acct.Doc;
import org.compiere.model.MAcctSchema;

/**
 * 	@author Ricardo Santana <rsantana@kenos.com.br>
 */
public class DocAcctFactory implements IDocFactory
{
	@Override
	public Doc getDocument(MAcctSchema as, int AD_Table_ID, int Record_ID, String trxName)
	{
		if (MLBRNotaFiscal.Table_ID == AD_Table_ID)
			return Doc_NotaFiscal.get (as, AD_Table_ID, Record_ID, trxName);
		return null;
	}	//	getDocument

	@Override
	public Doc getDocument(MAcctSchema as, int AD_Table_ID, ResultSet rs, String trxName)
	{
		if (MLBRNotaFiscal.Table_ID == AD_Table_ID)
			return new Doc_NotaFiscal (as, MLBRNotaFiscal.class, rs, null, trxName);
		return null;
	}	//	getDocument
}	//	DocAcctFactory
