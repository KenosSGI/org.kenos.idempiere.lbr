package org.kenos.idempiere.lbr.bankslip.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.adempierelbr.model.X_LBR_BankSlipInfo;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.Query;

/**
 * 	Bank Slip (Boleto) model
 * 	@author Ricardo Santana
 */
public class MLBRBankSlipInfo extends X_LBR_BankSlipInfo
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = -975551832184870560L;

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRBankSlipInfo (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRBankSlipInfo

	/**
	 * 	Bank Slip Info constructor
	 *	@param MLBRBankSlip bs
	 */
	public MLBRBankSlipInfo (MLBRBankSlip bs)
	{
		super(bs.getCtx(), 0, bs.get_TrxName());
		setClientOrg(bs);
		setLBR_BankSlip_ID(bs.getLBR_BankSlip_ID());
	}	//	MLBRBankSlipInfo

	/**
	 * 	Load Constructor
	 *	@param ctx context
	 *	@param AD_Org_ID id
	 *  @param trxName
	 *	@return Org Info
	 */
	public static MLBRBankSlipInfo get (Properties ctx, int LBR_BankSlip_ID, String trxName)
	{
		MLBRBankSlipInfo retValue = new Query(ctx, Table_Name, COLUMNNAME_LBR_BankSlip_ID + "=?", trxName)
						.setParameters(LBR_BankSlip_ID)
						.firstOnly();
		return retValue;
	}	//	get
	
	/**
	 * 	Get valid address (Street name and Street number)
	 * 	@return address
	 */
	public String getAddress (boolean includeCompl)
	{
		StringBuilder address = new StringBuilder();
		//
		if (getlbr_BPAddress1() != null)
			address.append(getlbr_BPAddress1()).append(", ");
		if (getlbr_BPAddress2() != null)
			address.append(getlbr_BPAddress2());
		if (includeCompl && getlbr_BPAddress4() != null)
		{
			if (!address.toString().isEmpty() && !address.toString().endsWith(", "))
				address.append(" - ");
			address.append(getlbr_BPAddress4());
		}
		//	Remove trailing
		if (address.toString().endsWith(", "))
			return TextUtil.retiraEspecial (address.substring (0, address.length()-2).trim().toUpperCase());
		
		//	Remove special chars
		return TextUtil.retiraEspecial (address.toString().trim().toUpperCase());
	}	//	getAddress
}	//	MLBRBankSlipInfo
