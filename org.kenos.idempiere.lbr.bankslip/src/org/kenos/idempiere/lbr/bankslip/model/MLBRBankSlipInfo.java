package org.kenos.idempiere.lbr.bankslip.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.adempiere.model.POWrapper;
import org.adempierelbr.model.X_LBR_BankSlipInfo;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.compiere.model.I_C_Location;
import org.compiere.model.MOrgInfo;
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
		//
		init();
	}	//	MLBRBankSlipInfo
	
	/**
	 * 	Initialize with organization data
	 */
	private void init()
	{
		I_W_AD_OrgInfo org = POWrapper.create(MOrgInfo.get(getCtx(), getAD_Org_ID(), null), I_W_AD_OrgInfo.class);
		I_C_Location location = org.getC_Location();
		//
		setlbr_OrgName(org.getlbr_LegalEntity());
		setLBR_OrgBPType(LBR_ORGBPTYPE_PJ_LegalEntity);
		setlbr_CNPJ(org.getlbr_CNPJ());
		setlbr_OrgAddress1(location.getAddress1());
		setlbr_OrgAddress2(location.getAddress2());
		setlbr_OrgAddress3(location.getAddress3());
		setlbr_OrgAddress4(location.getAddress4());
		setlbr_OrgCity(location.getCity());
		setlbr_OrgRegion(location.getRegionName());
		setlbr_OrgPostal(location.getPostal());		
	}	//	init

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
}	//	MLBRBankSlipInfo
