package org.kenos.idempiere.lbr.callout;

import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;

/**
 * 		Callout for RMA
 * 	@author Ricardo Santana
 *	@version $Id: RMA.java, v1.0 2017/MM/DD 5:10:03 PM, ralexsander Exp $
 */
public class BPartner implements IColumnCallout 
{
	/**
	 * 	Fill RMA fields based on NF
	 */
	@Override
	public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
	{
		//	Reset the Valid flag when BP Type is changed
		mTab.setValue(I_W_C_BPartner.COLUMNNAME_lbr_BPTypeBRIsValid, false);
		
		//	Set the BP IE Dest
		String bpType = mTab.get_ValueAsString(I_W_C_BPartner.COLUMNNAME_lbr_BPTypeBR);
		if (bpType != null && !bpType.isEmpty())
		{
			//	Contribuinte de ICMS
			if (I_W_C_BPartner.LBR_BPTYPEBR_PJ_LegalEntity.equals(bpType))
				mTab.setValue(I_W_C_BPartner.COLUMNNAME_LBR_IndIEDest, I_W_C_BPartner.LBR_INDIEDEST_1_ContribuinteDeICMS);
			
			//	Não Contribuinte
			else if (TextUtil.match(bpType, I_W_C_BPartner.LBR_BPTYPEBR_PF_Individual, 
					I_W_C_BPartner.LBR_BPTYPEBR_PM_IndividualMinor, 
					I_W_C_BPartner.LBR_BPTYPEBR_XX_Foreigner))
				mTab.setValue(I_W_C_BPartner.COLUMNNAME_LBR_IndIEDest, I_W_C_BPartner.LBR_INDIEDEST_9_NãoContribuinteDeICMS);
		}
		return "";
	}	//	start
}	//	BPartner
