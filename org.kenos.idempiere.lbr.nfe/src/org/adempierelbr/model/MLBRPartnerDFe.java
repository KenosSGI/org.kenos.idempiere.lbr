package org.adempierelbr.model;

import java.sql.ResultSet;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.stream.Stream;

import javax.swing.text.MaskFormatter;

import org.adempierelbr.util.TextUtil;
import org.compiere.model.Query;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * 		NF destinadas
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 * 	@version $Id: MLBRPartnerDFe.java, v1.0 2015/10/20 10:39:50 AM, ralexsander Exp $
 */
public class MLBRPartnerDFe extends X_LBR_PartnerDFe
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1283855496782699789L;

	/**
	 * 	Constructor
	 * 
	 * @param ctx
	 * @param LBR_NFDest_ID
	 * @param trxName
	 */
	public MLBRPartnerDFe (Properties ctx, int LBR_PartnerDFe_ID, String trxName)
	{
		super (ctx, LBR_PartnerDFe_ID, trxName);
	}	//	MLBRNFDest
	
	/**
	 * 	Constructor
	 * 
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLBRPartnerDFe (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRNFDest
	
	/**
	 * 	Apply mask to CNPJ
	 */
	@Override
	public void setlbr_CNPJ (String lbr_CNPJ)
	{
		try
		{
			if (lbr_CNPJ != null && TextUtil.isNumber(lbr_CNPJ))
			{
				MaskFormatter mf = new MaskFormatter ("##.###.###/####-##");
				mf.setValueContainsLiteralCharacters(false);
				lbr_CNPJ = mf.valueToString (lbr_CNPJ);
			}
		}
		catch (ParseException e) {}
		super.setlbr_CNPJ (lbr_CNPJ);
	}	//	setlbr_CNPJ
	
	/**
	 * 	Apply mask to CPF
	 */
	@Override
	public void setlbr_CPF (String lbr_CPF)
	{
		try
		{
			if (lbr_CPF != null && TextUtil.isNumber(lbr_CPF))
			{
				MaskFormatter mf = new MaskFormatter("###.###.###-##");
				mf.setValueContainsLiteralCharacters(false);
				lbr_CPF = mf.valueToString (lbr_CPF);
			}
		}
		catch (ParseException e) {}
		super.setlbr_CPF (lbr_CPF);
	}	//	setlbr_CPF
	
	/**
	 * 	Retrieve DF-e using LBR_NFe_ID
	 * 	@param ctx
	 * 	@param nfeID
	 * 	@return
	 */
	public static MLBRPartnerDFe get (Properties ctx, String nfeID)
	{
		String whereClause = "AD_Client_ID=? AND LBR_NFeID=? AND DocumentType=?";
		return new Query (ctx, Table_Name, whereClause, null)
					.setParameters (Env.getAD_Client_ID (ctx), nfeID, DOCUMENTTYPE_NF_E)
					.setOrderBy (COLUMNNAME_DateTrx + " DESC")
					.first ();
	}	//	get

	/**
	 * 	Get last Manifested Status
	 * 	@return last status
	 */
	public String getLastManifest ()
	{
		StringBuilder sql = new StringBuilder ();
		sql.append("SELECT MAX (a.LBR_EventType) FROM (SELECT ROW_NUMBER () OVER (ORDER BY e.DateTrx DESC) AS Row_Number, ");
		sql.append("e.LBR_EventType FROM LBR_NFeEvent e, LBR_PartnerDFe dfe WHERE e.AD_Org_ID=dfe.AD_Org_ID AND dfe.LBR_PartnerDFe_ID=? "); 
		sql.append("AND e.LBR_NFeID=dfe.LBR_NFeID) a WHERE a.Row_Number=1");
		//
		return DB.getSQLValueString(get_TrxName(), sql.toString(), getLBR_PartnerDFe_ID());
	}	//	getLastManifest
	
	/**
	 * 	Check if this DF-e is cancelled
	 * 	@return
	 */
	public boolean isCancelled ()
	{
		String sql = "SELECT COUNT(*) FROM " + Table_Name + 
				" WHERE " + COLUMNNAME_DocumentType 	+ "=?" +
				  " AND " + COLUMNNAME_lbr_NFeID 		+ "=?" +
				  " AND " + COLUMNNAME_LBR_EventType 	+ "=?";
		int count = DB.getSQLValue (null, sql, DOCUMENTTYPE_Evento, getlbr_NFeID(), LBR_EVENTTYPE_Cancelamento);
		
		//	Document has a cancel event
		if (count > 0)
			return true;
		
		//	Document is not cancelled
		return false;
	}	//	isCancelled
	
	/**
	 * 	Before Save
	 * 		<li>Prevent from duplicate records
	 */
	@Override
	protected boolean beforeSave (boolean newRecord)
	{
		if (newRecord)
		{
			Object[] params;
			String sql = "SELECT COUNT(*) FROM " + Table_Name + 
					" WHERE " + COLUMNNAME_DocumentType 	+ "=?" +
					  " AND " + COLUMNNAME_lbr_NFeID 		+ "=?" +
					  " AND " + COLUMNNAME_lbr_NFeProt 		+ "=?";
			
			//	NF-e
			if (DOCUMENTTYPE_NF_E.equals(getDocumentType()))
			{
				sql += " AND " + COLUMNNAME_lbr_DigestValue + "=?";
				params = new Object[]{getDocumentType(), getlbr_NFeID(), getlbr_NFeProt(), getlbr_DigestValue()};
			}
			
			//	Event
			else if (DOCUMENTTYPE_Evento.equals(getDocumentType()))
			{
				sql += " AND " + COLUMNNAME_SeqNo + "=?";
				params = new Object[]{getDocumentType(), getlbr_NFeID(), getlbr_NFeProt(), getSeqNo()};
			}
			
			//	Invalid document type
			else
			{
				log.saveError("Error", Msg.parseTranslation(getCtx(), "@Invalid@ = @DocumentType@"));
				return false;
			}
			
			int count = DB.getSQLValue (null, sql, params);
			
			//	Already imported
			if (count > 0)
			{
				log.saveError("Error", Msg.parseTranslation(getCtx(), "@Invalid@ = @Duplicated@") + " - " + toString());
				return false;
			}
		}
		
		if (LBR_SITNF_3_Cancelled.equals(getLBR_SitNF()))
			setIsCancelled(true);
		
		return true;
	}	//	beforeSave
	
	/**
	 * 	Update cancelled NFs
	 */
	@Override
	protected boolean afterSave (boolean newRecord, boolean success)
	{
		if (TextUtil.match(getLBR_EventType(), LBR_EVENTTYPE_Cancelamento))
		{
			DB.executeUpdate("UPDATE " + Table_Name + 
					" SET " + COLUMNNAME_IsCancelled + "='Y', " + 
					COLUMNNAME_lbr_NFeStatus + "=? WHERE " + 
					COLUMNNAME_IsCancelled + "='N' AND " + 
					COLUMNNAME_lbr_NFeID + "=? AND " +
					COLUMNNAME_DocumentType + "=?", new Object[] {getlbr_NFeStatus(), getlbr_NFeID(), DOCUMENTTYPE_NF_E}, false, get_TrxName());
		}

		//	Include NSU in Control List
		if (newRecord || is_ValueChanged(COLUMNNAME_LBR_NSU))
			DB.executeUpdate("INSERT INTO LBR_NSUControl (LBR_PartnerDFe_ID, LBR_NSU) VALUES (?, ?)", 
					new Object[] {getLBR_PartnerDFe_ID(), getLBR_NSU()}, false, get_TrxName());
		
		return true;
	}	//	afterSave
	
	/**
	 * 	Procura um DF-e para a NF
	 * 	@param nf
	 * 	@return
	 */
	public static MLBRPartnerDFe get (MLBRNotaFiscal nf)
	{
		String where = "AD_Org_ID=? "
				+ "AND LBR_CNPJ=? "
				+ "AND SUBSTRING (LBR_NFeID, 26, 9)=? ";
		//
		String no = TextUtil.lPad (nf.getDocumentNo (), 9);
		String ser = nf.getlbr_NFSerie();
		List<Object> params = new ArrayList<Object>();
		params.add(nf.getAD_Org_ID());
		params.add(nf.getlbr_BPCNPJ());
		params.add(no);
		
		if (ser != null)
		{
			ser = TextUtil.lPad (ser, 3);
			where += "AND SUBSTRING (LBR_NFeID, 23, 3)=? ";
			//
			params.add(ser);
		}
		
		MLBRPartnerDFe dfe = new Query (nf.getCtx(), MLBRPartnerDFe.Table_Name, where, nf.get_TrxName())
						.setParameters(params)
						.first();
		return dfe;
	}	//	get
	
	/**
	 * 	Procura um DF-e por Tipo de Documento NF-e ou Evento
	 * 	@param nf
	 * 	@return
	 */
	public static MLBRPartnerDFe get (String key, String documentType)
	{
		return get (key, documentType, null, 0);
	}	//	get
	
	/**
	 * 	Procura um DF-e por Tipo de Documento NF-e ou Evento
	 * 	@param nf
	 * 	@return
	 */
	public static MLBRPartnerDFe get (String key, String documentType, String protocol, int seqNo)
	{
		List<Object> params = new ArrayList<Object>();
		params.add(Env.getAD_Client_ID(Env.getCtx()));
		params.add(key);
		//
		String where = "AD_Client_ID=? AND LBR_NFeID=?";
		
		if (documentType != null && !documentType.isEmpty())
		{
			where += " AND DocumentType = '" + documentType + "'";
			//
			if (MLBRPartnerDFe.DOCUMENTTYPE_Evento.equals(documentType))
			{
				where += " AND " + MLBRPartnerDFe.COLUMNNAME_lbr_NFeProt + "=?";
				where += " AND " + MLBRPartnerDFe.COLUMNNAME_SeqNo + "=?";
				//
				params.add(protocol);
				params.add(seqNo);
			}
		}
		else
			where += " AND DocumentType='" + MLBRPartnerDFe.DOCUMENTTYPE_NF_E + "'";
		//
		MLBRPartnerDFe dfe = new Query (Env.getCtx(), MLBRPartnerDFe.Table_Name, where, null)
						.setParameters(params)
						.setOrderBy(COLUMNNAME_LBR_IsManifested + " DESC, " + COLUMNNAME_LBR_IsXMLValid + " DESC, " + COLUMNNAME_IsCancelled + " DESC")
						.first();
		return dfe;
	}	//	get
	
	/**
	 * 	Procura um DF-e para a NF
	 * 	@param nf
	 * 	@return
	 */
	public static MLBRPartnerDFe get (String key)
	{		
		return get(key, null);
	}	//	get
	
	@Override
	public String toString()
	{
		StringBuffer sb = new StringBuffer ("MLBRPartnerDFe[").append(get_ID());
		
		Stream.of (COLUMNNAME_DocumentType, COLUMNNAME_lbr_NFeID, 
				COLUMNNAME_lbr_NFeProt, COLUMNNAME_lbr_DigestValue, COLUMNNAME_SeqNo)
		
		.forEach(column -> {
			sb.append(", ").append(column).append("='").append(get_DisplayValue(column, true)).append("'");
		});
		
		sb.append("]");
		
		return sb.toString();
	}	//	toString

	/**
	 * 	Failed Count
	 */
	public void increaseTries ()
	{
		int tries = getLBR_ManifestTries();
		//
		setLBR_ManifestTries(tries+1);
	}	//	increaseTries
}	//	MLBRNFDest
