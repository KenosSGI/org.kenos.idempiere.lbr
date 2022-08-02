package org.adempierelbr.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.adempierelbr.util.TextUtil;
import org.compiere.model.Query;
import org.compiere.util.Env;
import org.compiere.util.Msg;


public class MLBRNFConfig extends X_LBR_NFConfig
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = 4939937317639019135L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNFConfig (Properties ctx, int LBR_NFConfig_ID, String trx)
	{
		super (ctx, LBR_NFConfig_ID, trx);
	}	//	MLBRNFConfig

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNFConfig (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRNFConfig
	
	/**
	 * 	Before Save
	 */
	@Override
	protected boolean beforeSave (boolean newRecord)
	{
		//	Modo de Contingência ATIVADO
		if (!LBR_TPEMIS_EmissãoNormal.equals (getLBR_TPEmis()))
		{
			if (getlbr_DateScan() == null)
			{
				log.saveError("FillMandatory", Msg.getElement(getCtx(), "lbr_DateScan"));
				return false;
			}
			
			if (getlbr_MotivoScan() == null)
			{
				log.saveError("FillMandatory", Msg.getElement(getCtx(), "lbr_MotivoScan"));
				return false;
			}
			
			int length = getlbr_MotivoScan().length();
			if (length < 15 || length > 255)
			{
				log.saveError("FillMandatory", "Tamanho do motivo não permitido (mínimo 15 - máximo 255)");
				return false;
			}
		}
		
		else
		{
			setlbr_DateScan(null);
			setlbr_MotivoScan(null);
		}

		if (LBR_NFMODEL_NotaFiscalDeConsumidorEletrônica.equals(getlbr_NFModel()))
		{
			if (!TextUtil.match(getlbr_DANFEFormat(), LBR_DANFEFORMAT_3_SimpleDANFE, 
														LBR_DANFEFORMAT_4_DANFENFC_E, 
														LBR_DANFEFORMAT_5_DANFENFC_EInEletronicMessage))
			{
				log.saveError("FillMandatory", "Formato da DANFE não compatível com NFC-e");
				return false;
			}
		}
		
		return true;
	}	//	beforeSave
	
	/**
	 * 	Get Configuration for this Organization,
	 * 	default model 55
	 * @param AD_Org_ID
	 * @return
	 */
	public static MLBRNFConfig get (int AD_Org_ID)
	{
		return get (AD_Org_ID, LBR_NFMODEL_NotaFiscalEletrônica);
	}	//	get
	
	/**
	 * 	Get Configuration for this Organization
	 * @param AD_Org_ID
	 * @param modelNF Model of NF (Usually 55 or 65)
	 * @return
	 */
	public static MLBRNFConfig get (int AD_Org_ID, String modelNF)
	{
		return new Query (Env.getCtx(), Table_Name, "AD_Org_ID=? AND LBR_NFModel=?", null).setParameters(AD_Org_ID, modelNF).first();
	}	//	get
}	//	MLBRNFConfig
