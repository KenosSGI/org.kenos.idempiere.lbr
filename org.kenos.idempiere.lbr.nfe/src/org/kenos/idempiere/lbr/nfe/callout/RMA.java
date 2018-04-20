package org.kenos.idempiere.lbr.nfe.callout;

import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.wrapper.I_W_M_RMA;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MRMA;
import org.compiere.util.Env;

/**
 * 		Callout for RMA
 * 	@author Ricardo Santana
 *	@version $Id: RMA.java, v1.0 2017/MM/DD 5:10:03 PM, ralexsander Exp $
 */
public class RMA implements IColumnCallout 
{
	@Override
	public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
	{
		if (I_W_M_RMA.COLUMNNAME_LBR_NotaFiscal_ID.equals(mField.getColumnName()))
			return getInOutNF(ctx, WindowNo, mTab, mField, value, oldValue);
		return "";
	}	//	start
	
	/**
	 * 		Preenche os dados do RMA com base na NF
	 * 
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @param oldValue
	 * @return "" or error
	 */
	private String getInOutNF (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
	{
		//	Do not proceed when null
		if (value == null)
			return "";
		
		// 	ID NF-e
		int LBR_NotaFiscal_ID = (Integer) value;

		// 	Check for a valid NF ID
		if (LBR_NotaFiscal_ID <= 0)
		   return "";

		// 	Nota Fiscal
		MLBRNotaFiscal nf = new MLBRNotaFiscal (Env.getCtx(), LBR_NotaFiscal_ID, null);

		// 	Add Shipment / Receive get from NF-e.
		if (nf.getM_InOut_ID() > 0)
		   mTab.setValue(MRMA.COLUMNNAME_InOut_ID, nf.getM_InOut_ID());

		// 	Add Business Partner get from NF-e.
		mTab.setValue(MRMA.COLUMNNAME_C_BPartner_ID, nf.getC_BPartner_ID());	   

		// 	Add Sales Rep get From Order
		if (nf.getC_Order() != null)
		   mTab.setValue(MRMA.COLUMNNAME_SalesRep_ID, nf.getC_Order().getSalesRep_ID());

		// 	Fill Name with a Default Value
		if ("".equals(mTab.get_ValueAsString(MRMA.COLUMNNAME_Name)))
		   mTab.setValue(MRMA.COLUMNNAME_Name, "Devolução da NF " + nf.getDocumentNo());

		// 	Fill Description with a Default Value
		if ("".equals(mTab.get_ValueAsString(MRMA.COLUMNNAME_Description)))
		   mTab.setValue(MRMA.COLUMNNAME_Description, "Autorização de Retorno de Material referente a NF " + nf.getDocumentNo());

		return "";
	}	//	getInOutNF
}	//	RMA
