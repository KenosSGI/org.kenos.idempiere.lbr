package org.kenos.idempiere.lbr.nfe.model;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.ResultSet;
import java.util.Objects;
import java.util.Properties;

import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.model.X_LBR_NFLinePTaxCredit;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * 		NF Presumed Tax
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 */
public class MNFLinePTaxCredit extends X_LBR_NFLinePTaxCredit
{
	/**	Serial	*/
	private static final long serialVersionUID = 1967457258555795494L;
	
	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MNFLinePTaxCredit (Properties ctx, int LBR_NFLinePTaxCredit_ID, String trxName)
	{
		super (ctx, LBR_NFLinePTaxCredit_ID, trxName);
	}	//	MNFLinePTaxCredit
	
	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MNFLinePTaxCredit (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MNFLinePTaxCredit

	/**
	 * Constructs a new {@link MNFLinePTaxCredit} instance based on the provided {@link MLBRNotaFiscalLine} and
	 * {@link MPresumedTaxCredit} objects. This constructor initializes the object with the context and transaction
	 * name from the given {@link MLBRNotaFiscalLine}, sets the Nota Fiscal Line ID, and populates the tax benefit
	 * code and percentage from the {@link MPresumedTaxCredit} object.
	 *
	 * @param nfl           The {@link MLBRNotaFiscalLine} object representing the Nota Fiscal Line.
	 *                      This parameter provides the context, transaction name, and Nota Fiscal Line ID
	 *                      for the new instance.
	 * @param presumedTax   The {@link MPresumedTaxCredit} object containing the tax benefit code and percentage
	 *                      to be applied. This parameter is used to set the tax-related attributes of the new instance.
	 */
	public MNFLinePTaxCredit (MLBRNotaFiscalLine nfl, MPresumedTaxCredit presumedTax) {
		this (nfl.getCtx(), 0, nfl.get_TrxName());
		//
		setLBR_NotaFiscalLine_ID(nfl.getLBR_NotaFiscalLine_ID());
		setLBR_TaxBenefitCode(presumedTax.getLBR_TaxBenefitCode());
		setPercentage(presumedTax.getPercentage());
	}	//	MNFLinePTaxCredit

	/**
	 * <p>This method ensures that the tax benefit code and percentage fields 
	 * meet specific validation criteria before the record is saved.</p>
	 *
	 * @param newRecord {@code true} if this is a new record, {@code false} if it is an update.
	 * @return {@code true} if the record can be saved, {@code false} if there are validation errors.
	 */
	@Override
	protected boolean beforeSave (boolean newRecord) {
		String taxBenefitCode = Objects.requireNonNullElse (getLBR_TaxBenefitCode(), "").replaceAll("[^a-zA-Z0-9\\s]", "");
		BigDecimal percentage = Objects.requireNonNullElse (getPercentage(), Env.ZERO);
		//
		if (taxBenefitCode.length() != 8 && taxBenefitCode.length() != 10) {
			log.saveError("Error", Msg.parseTranslation(getCtx(), "@Invalid@ @LBR_TaxBenefitCode@"));
			return false;
		}
		
		if (percentage.signum() <=0 || percentage.compareTo(Env.ONE) >= 1) {
			log.saveError("Error", Msg.parseTranslation(getCtx(), "@Invalid@ @Percentage@"));
			return false;
		}
		
		//	This tax benefit presumed credit has a max of 4 records for each product
		if (newRecord) {
			int count = DB.getSQLValue(null, "SELECT COUNT(*) FROM " + Table_Name + 
					" WHERE " + COLUMNNAME_LBR_NotaFiscalLine_ID + "=? AND " + COLUMNNAME_IsActive + "='Y'");
			if (count >= 4) {
				log.saveError("Error", "Limite de 4 códigos por produto");
				return false;
			}
		}
		
		return super.beforeSave(newRecord);
	}	//	beforeSave
	
	/**
	 * Calculates and sets the tax amount based on the given tax base amount.
	 *
	 * <p>The amount is calculated by multiplying the tax base amount by the percentage 
	 * and rounding the result to two decimal places using {@link RoundingMode#HALF_UP}.</p>
	 *
	 * @param taxBaseAmt The base amount on which the tax is calculated. Must not be null.
	 */
	public void calculateAmount (BigDecimal taxBaseAmt) {
		setAmount(taxBaseAmt.multiply(getPercentage()).setScale(2, RoundingMode.HALF_UP));
	}	//	calculateAmount
}	//	MNFLinePTaxCredit
