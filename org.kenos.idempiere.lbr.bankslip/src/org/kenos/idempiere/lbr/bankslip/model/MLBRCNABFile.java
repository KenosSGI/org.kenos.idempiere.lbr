package org.kenos.idempiere.lbr.bankslip.model;

import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.adempierelbr.model.X_LBR_CNABFile;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MSequence;
import org.compiere.model.Query;
import org.compiere.util.DB;

/**
 * 	CNAB File
 * 	@author Ricardo Santana
 */
public class MLBRCNABFile extends X_LBR_CNABFile
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = 1826027754620508514L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRCNABFile (Properties ctx, int LBR_CNABFile_ID, String trx)
	{
		super (ctx, LBR_CNABFile_ID, trx);
	}	//	MLBRCNABFile

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRCNABFile (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRCNABFile

	/**
	 * 	Get Lines
	 *	@return Org Info
	 */
	public List<MLBRCNABFileLine> getLines ()
	{
		return new Query(p_ctx, MLBRCNABFileLine.Table_Name, MLBRCNABFileLine.COLUMNNAME_LBR_CNABFile_ID + "=?", get_TrxName())
				.setParameters(getLBR_CNABFile_ID())
				.firstOnly();
	}	//	getLines

	/**
	 * 
	 * @return	Legal Entity
	 */
	public String getlbr_LegalEntity()
	{
		MOrgInfo oi = MOrgInfo.get(p_ctx, getAD_Org_ID(), null);
		String legalEntity = oi.get_ValueAsString(I_W_AD_OrgInfo.COLUMNNAME_lbr_LegalEntity);
		return legalEntity != null ? legalEntity.toUpperCase().trim() : "";
	}	//	getlbr_LegalEntity
	
	@Override
	protected boolean beforeSave (boolean newRecord)
	{
		//	Sequence
		if (newRecord && getSeqNo() == 0)
		{
			String nextSeq = null;
			//
			int seqFile = getLBR_BankSlipContract().getLBR_CNABFileSeq_ID();
			if (seqFile > 0)
			{
				MSequence seq = new MSequence (getCtx(), seqFile, get_TrxName());
				
				// Numeric Prefix
				if (seq.getPrefix() != null && TextUtil.isNumber (seq.getPrefix())) 
					nextSeq += seq.getPrefix();
				
				//	Next Sequence
				nextSeq += seq.getNextID();
				
				//	Numeric Suffix
				if (seq.getSuffix() != null && TextUtil.isNumber (seq.getSuffix())) 
					nextSeq += seq.getSuffix();

				seq.save();
			}
			else
			{
				/**
				 * 	e.g. for the first file of 21-July-2017 the sequence will be:
				 * 
				 * 	17072101
				 */
				nextSeq = TextUtil.timeToString (getDateDoc(), "yyMMdd");
				nextSeq += TextUtil.lPad(DB.getSQLValueString (get_TrxName(), "SELECT COALESCE (COUNT(0), 0)+1 FROM " + Table_Name + 
						" WHERE " + COLUMNNAME_LBR_BankSlipContract_ID + "=? AND " + 
						COLUMNNAME_DateDoc + "=" + DB.TO_DATE(getDateDoc()), getLBR_BankSlipContract_ID()), 2);
			}
			//
			setSeqNo(Integer.valueOf (nextSeq));
		}
		return super.beforeSave(newRecord);
	}
}	//	MLBRCNABFile
