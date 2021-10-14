package org.kenos.idempiere.lbr.nfe.acct;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.compiere.acct.Doc;
import org.compiere.acct.Fact;
import org.compiere.model.MAcctSchema;
import org.compiere.util.Env;

/**
 * 	Default, to be implemented
 * 
 * 	@author Ricardo Santana <rsantana@kenos.com.br>
 */
public class Doc_NotaFiscal extends Doc
{
	public Doc_NotaFiscal(MAcctSchema as, Class<?> clazz, ResultSet rs, String defaultDocumentType, String trxName)
	{
		super (as, clazz, rs, defaultDocumentType, trxName);
	}	//	Doc_NotaFiscal

	@Override
	protected String loadDocumentDetails()
	{
		return null;
	}	//	String

	@Override
	public BigDecimal getBalance()
	{
		return Env.ZERO;
	}	//	getBalance

	@Override
	public ArrayList<Fact> createFacts(MAcctSchema as)
	{
		return new ArrayList<Fact>();
	}	//	createFacts
}	//	Doc_NotaFiscal
