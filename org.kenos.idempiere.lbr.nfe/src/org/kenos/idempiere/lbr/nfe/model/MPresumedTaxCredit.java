package org.kenos.idempiere.lbr.nfe.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Properties;

import org.adempierelbr.model.X_LBR_PresumedTaxCredit;
import org.compiere.model.Query;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * 		Presumed Tax Credit configuration
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 */
public class MPresumedTaxCredit extends X_LBR_PresumedTaxCredit
{
	/**	Serial	*/
	private static final long serialVersionUID = -5852798631716215878L;

	public MPresumedTaxCredit (Properties ctx, int LBR_PresumedTaxCredit_ID, String trxName)
	{
		super (ctx, LBR_PresumedTaxCredit_ID, trxName);
	}	//	MPresumedTaxCredit
	
	public MPresumedTaxCredit (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MPresumedTaxCredit
	
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
		
		return super.beforeSave(newRecord);
	}	//	beforeSave
	
	/**
	 * Retrieves a list of {@link MPresumedTaxCredit} objects based on the provided NCM ID and Region ID.
	 * The number of records is limited to 4.
	 * 
	 * The method queries the database for records that match the given NCM ID and, optionally, the Region ID.
	 * If the Region ID is not specified (i.e., null), it will also consider records where the Region ID is null.
	 *
	 * @param LBR_NCM_ID    The NCM (Nomenclatura Comum do Mercosul) ID used to filter the records.
	 *                      This parameter is mandatory and must be a valid NCM ID.
	 * @param C_Region_ID   The Region ID used to filter the records. This parameter is optional.
	 *                      If provided, it will match records with the specified Region ID or where the Region ID is null.
	 *                      If not provided, it will only match records where the Region ID is null.
	 * @return A list of {@link MPresumedTaxCredit} objects that match the query criteria.
	 *         If no records are found, an empty list is returned.
	 */
	public static List<MPresumedTaxCredit> getPresumedTax (Properties ctx, int LBR_NCM_ID, int C_Region_ID) {
		//	NCM is mandatory
		if (LBR_NCM_ID < 0)
			return new ArrayList<MPresumedTaxCredit>();
		//
		String where = COLUMNNAME_LBR_NCM_ID + "=? AND (" + COLUMNNAME_C_Region_ID + " IS NULL OR " + COLUMNNAME_C_Region_ID + "=?)";
		List<MPresumedTaxCredit> presumedTax = new Query (ctx, Table_Name, where, null)
			.setParameters(LBR_NCM_ID, C_Region_ID)
			.setOrderBy(COLUMNNAME_C_Region_ID)
			.list();
		
		//	Max of 4 codes
		if (presumedTax.size() > 4)
			return presumedTax.subList(0, 4);
		return presumedTax;
	}	//	getPresumedTax
}	//	MPresumedTaxCredit
