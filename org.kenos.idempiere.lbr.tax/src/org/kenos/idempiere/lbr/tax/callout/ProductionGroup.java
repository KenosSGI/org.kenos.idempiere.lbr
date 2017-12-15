package org.kenos.idempiere.lbr.tax.callout;

import java.sql.Timestamp;
import java.util.Map;
import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRTax;
import org.adempierelbr.model.MLBRTaxFormula;
import org.adempierelbr.model.MLBRTaxLine;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.adempierelbr.wrapper.I_W_M_Product;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.base.model.MLBRProductionGroup;

/**
 * 	Callout for Production Group
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ProductionGroup.java, v1.0 2017/12/14 10:50:00 PM, ralexsander Exp $
 */
public class ProductionGroup implements IColumnCallout 
{
	/**
	 * 	Fill Price and Taxes
	 */
	@Override
	public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
	{
		Integer LBR_CFOP_ID = (Integer) mTab.getValue(MLBRProductionGroup.COLUMNNAME_LBR_CFOP_ID);
		Integer LBR_Tax_ID = (Integer) mTab.getValue (MLBRProductionGroup.COLUMNNAME_LBR_Tax_ID);
		
		//	Already Filled, do not change
		if (LBR_Tax_ID != null && LBR_Tax_ID.intValue() > 0 && LBR_CFOP_ID != null && LBR_CFOP_ID.intValue() > 0)
			return "";
		
		Integer C_DocType_ID = (Integer) mTab.getValue(MLBRProductionGroup.COLUMNNAME_C_DocTypeTarget_ID);
		Integer C_BPartner_ID = (Integer) mTab.getValue (MLBRProductionGroup.COLUMNNAME_C_BPartner_ID);
		Integer C_BPartner_Location_ID = (Integer) mTab.getValue (MLBRProductionGroup.COLUMNNAME_C_BPartner_Location_ID);
		Integer AD_Org_ID = (Integer) mTab.getValue(MLBRProductionGroup.COLUMNNAME_AD_Org_ID);
		Timestamp date = (Timestamp) mTab.getValue(MLBRProductionGroup.COLUMNNAME_DateOrdered);
		
		//	Check mandatory fields before proceed
		if (C_DocType_ID == null || C_BPartner_ID == null 
				|| C_BPartner_Location_ID == null || AD_Org_ID == null || date == null)
			return "";
		
		I_W_AD_OrgInfo oi = POWrapper.create (MOrgInfo.get (ctx, AD_Org_ID, null), I_W_AD_OrgInfo.class);
		I_W_C_BPartner bp = POWrapper.create (new MBPartner (ctx, C_BPartner_ID, null), I_W_C_BPartner.class);
		I_W_M_Product p  = POWrapper.create (new MProduct (ctx, 0, null), I_W_M_Product.class);
		MBPartnerLocation bpLoc = new MBPartnerLocation (ctx, C_BPartner_Location_ID, null);
		//
		Object[] taxation = MLBRTax.getTaxes (C_DocType_ID, false, MLBRTaxFormula.LBR_TRANSACTIONTYPE_Manufacturing, p, oi, bp, bpLoc, date);
		
		if (taxation == null)
			return "";

		@SuppressWarnings("unchecked")
		Map<Integer, MLBRTaxLine> taxes = (Map<Integer, MLBRTaxLine>) taxation[0];
		
		//	Fill CFOP information
		if ((LBR_CFOP_ID == null || LBR_CFOP_ID.intValue() <= 0) 	//	Blank CFOP
				&& ((Integer) taxation[2]) > 0)						//	CFOP found in configuration
			mTab.setValue(MLBRProductionGroup.COLUMNNAME_LBR_CFOP_ID, ((Integer) taxation[2]));
		
		//	Fill tax info
		if ((LBR_Tax_ID == null || LBR_Tax_ID.intValue() <= 0)		//	Blank Tax
				&& taxes != null && taxes.size() > 0)				//	Tax configuration found
		{
			MLBRTax tax = new MLBRTax (Env.getCtx(), 0, null);
			tax.save();
			//
			for (Integer key : taxes.keySet())
			{
				MLBRTaxLine tl = taxes.get(key);
				tl.setLBR_Tax_ID(tax.getLBR_Tax_ID());
				tl.save();
			}
			//
			tax.setDescription();
			tax.save();
			//
			mTab.setValue(MLBRProductionGroup.COLUMNNAME_LBR_Tax_ID, tax.getLBR_Tax_ID());
		}
		return "";
	}	//	start
}	//	ProductionGroup
