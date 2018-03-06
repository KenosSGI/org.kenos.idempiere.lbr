package org.kenos.idempiere.lbr.base.callout;

import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MBPartner;
import org.compiere.model.MInvoice;
import org.compiere.model.MOrder;

/**
 * 		Credit Check
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: CreditCheck.java, v1.0 2018/03/06 4:58:38 PM, ralexsander Exp $
 */
public class CreditCheck implements IColumnCallout 
{
	/**
	 * 	Check the Business Partner credit condition
	 */
	@Override
	public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
	{
		if (mTab.getValueAsBoolean(MOrder.COLUMNNAME_IsSOTrx))
		{
			//	Order uses Bill Partner, Invoice uses regular BPartner field
			String columnName = MOrder.Table_Name.equals(mTab.getTableName()) ? 
						MOrder.COLUMNNAME_Bill_BPartner_ID : MInvoice.COLUMNNAME_C_BPartner_ID;
			
			//	Check if theres a problem finding the Business Partner
			MBPartner bp = new MBPartner (ctx, (Integer) mTab.getValue(columnName), null);
			if (bp != null)
			{
				if (MBPartner.SOCREDITSTATUS_CreditStop.equals(bp.getSOCreditStatus()))
					return "ATENÇÃO! O crédito para este cliente está temporariamente interrompido pelo financeiro";
				
				if (MBPartner.SOCREDITSTATUS_CreditHold.equals(bp.getSOCreditStatus()))
					return "ATENÇÃO! O crédito para este cliente está temporariamente retido pelo sistema";
				
				if (MBPartner.SOCREDITSTATUS_CreditWatch.equals(bp.getSOCreditStatus()))
					return "O crédito para este cliente está próximo ao limite estabelecido.";
			}
		}
		return "";
	}	//	start
}	//	Order