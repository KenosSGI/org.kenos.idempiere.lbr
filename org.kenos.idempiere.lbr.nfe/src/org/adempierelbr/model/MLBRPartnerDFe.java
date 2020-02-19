package org.adempierelbr.model;

import java.sql.ResultSet;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

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
					  " AND " + COLUMNNAME_lbr_NFeProt 		+ "=?" +
					  " AND " + COLUMNNAME_LBR_NSU 			+ "=?";
			
			//	NF-e
			if (DOCUMENTTYPE_NF_E.equals(getDocumentType()))
			{
				sql += " AND " + COLUMNNAME_lbr_DigestValue + "=?";
				params = new Object[]{getDocumentType(), getlbr_NFeID(), getlbr_NFeProt(), getLBR_NSU(), getlbr_DigestValue()};
			}
			
			//	Event
			else if (DOCUMENTTYPE_Evento.equals(getDocumentType()))
			{
				sql += " AND " + COLUMNNAME_SeqNo + "=?";
				params = new Object[]{getDocumentType(), getlbr_NFeID(), getlbr_NFeProt(), getLBR_NSU(), getSeqNo()};
			}
			
			//	Invalid docuemnttype
			else
			{
				log.saveError("Error", Msg.parseTranslation(getCtx(), "@Invalid@ = @DocumentType@"));
				return false;
			}
					  
			int count = DB.getSQLValue (null, sql, params);
			
			//	Already imported
			if (count > 0)
			{
				log.saveError("Error", Msg.parseTranslation(getCtx(), "@Invalid@ = @Duplicated@"));
				return false;
			}
		}
		
		/**
		 * 	As vezes a SeFaz manda NF duplicadas, com NSUs diferentes. Para estes casos
		 * 	este método irá replicar a manifestação em múltiplos registros.
		 */
		else if (isLBR_IsManifested() && is_ValueChanged(COLUMNNAME_LBR_IsManifested))
		{
			String sql = "UPDATE LBR_PartnerDFe dfe SET LBR_IsManifested='Y' WHERE dfe.LBR_IsManifested='N' AND dfe.lbr_NFeID=? AND dfe.DocumentType=? AND dfe.LBR_PartnerDFe_ID<>?";
			DB.executeUpdate (sql, new Object[] {getlbr_NFeID(), getDocumentType(), getLBR_PartnerDFe_ID()}, false, get_TrxName());
		}
		
		return true;
	}	//	beforeSave
	
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
	public static MLBRPartnerDFe get (String key, String DocumentType)
	{
		String where = "AD_Client_ID=? "
				+ "AND LBR_NFeID=? ";
		
		if (DocumentType != null && !DocumentType.isEmpty())
			where = where + "AND DocumentType = '" + DocumentType + "'";
		else
			where = where + "AND DocumentType='0'";
		//
		MLBRPartnerDFe dfe = new Query (Env.getCtx(), MLBRPartnerDFe.Table_Name, where, null)
						.setParameters(Env.getAD_Client_ID(Env.getCtx()), key)
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
}	//	MLBRNFDest
