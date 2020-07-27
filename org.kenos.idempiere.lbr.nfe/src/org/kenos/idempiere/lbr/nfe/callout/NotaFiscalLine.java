package org.kenos.idempiere.lbr.nfe.callout;

import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRNFLineMA;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.util.LBRUtils;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_M_Product;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MProduct;
import org.compiere.model.MRegion;

/**
 * 		Callout for Nota Fiscal Line
 * 	@author Ricardo Santana
 *	@version $Id: NotaFiscalLine.java, v1.0 2018/09/26 5:10:03 PM, ralexsander Exp $
 */
public class NotaFiscalLine implements IColumnCallout 
{
	@Override
	public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
	{
		String columnName = mField.getColumnName();
		//
		if (MLBRNotaFiscalLine.COLUMNNAME_M_Product_ID.equals(columnName))
			return product (ctx, WindowNo, mTab, mField, value, oldValue);
		else if (MLBRNFLineMA.COLUMNNAME_C_Region_ID.equals(columnName))
			return region (ctx, WindowNo, mTab, mField, value, oldValue);
		return "";
	}	//	start
	
	/**
	 * 		Preenche os dados do Produto na linha da NF
	 * 
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @param oldValue
	 * @return "" or error
	 */
	private String product (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
	{
		//	Do not proceed when null
		if (value == null)
			return "";
		
		// 	Product ID
		Integer M_Product_ID = (Integer) mTab.getValue(MLBRNotaFiscalLine.COLUMNNAME_M_Product_ID);

		// 	Check for a valid Product ID
		if (M_Product_ID == null || M_Product_ID <= 0)
		   return "";

		// 	Product
		I_W_M_Product product = POWrapper.create (new MProduct (ctx, M_Product_ID, null), I_W_M_Product.class);

		String upc = TextUtil.toNumeric (product.getUPC ());
		if (upc == null || upc.isEmpty ())
			upc = "SEM GTIN";
		
		mTab.setValue (MLBRNotaFiscalLine.COLUMNNAME_ProductValue, product.getValue());
		mTab.setValue (MLBRNotaFiscalLine.COLUMNNAME_ProductName, product.getName());
		mTab.setValue (MLBRNotaFiscalLine.COLUMNNAME_LBR_AttributeType, product.getLBR_AttributeType());
		mTab.setValue (MLBRNotaFiscalLine.COLUMNNAME_UPC, upc);
		mTab.setValue (MLBRNotaFiscalLine.COLUMNNAME_C_UOM_ID, product.getC_UOM_ID());
		mTab.setValue (MLBRNotaFiscalLine.COLUMNNAME_lbr_ProductSource, product.getlbr_ProductSource());
		
		//	Check if NCM is Valid
		if (product.getLBR_NCM_ID() > 0)
			mTab.setValue (MLBRNotaFiscalLine.COLUMNNAME_LBR_NCM_ID, product.getLBR_NCM_ID());
		else
			mTab.setValue (MLBRNotaFiscalLine.COLUMNNAME_LBR_NCM_ID, null);
		
		//	Check if CEST is Valid
		if (product.getLBR_CEST_ID() > 0)
			mTab.setValue (MLBRNotaFiscalLine.COLUMNNAME_LBR_CEST_ID, product.getLBR_CEST_ID());
		else
			mTab.setValue (MLBRNotaFiscalLine.COLUMNNAME_LBR_CEST_ID, null);
		
		Integer LBR_NotaFiscal_ID = (Integer) mTab.getValue(MLBRNotaFiscalLine.COLUMNNAME_LBR_NotaFiscal_ID);
		
		//	 Check for a valid NF ID
		if (LBR_NotaFiscal_ID == null || LBR_NotaFiscal_ID <= 0)
		   return "";
		
		MLBRNotaFiscal nf = new MLBRNotaFiscal (ctx, LBR_NotaFiscal_ID, null);
		
		//	Vendor Product
		if (nf.getC_BPartner_ID() > 0)
		{
			String vendorProductNo = LBRUtils.getVendorProductNo (POWrapper.getPO (product), nf.getC_BPartner_ID());
			mTab.setValue (MLBRNotaFiscalLine.COLUMNNAME_VendorProductNo, vendorProductNo);
		}
		
		//	NF Type
		if (MProduct.PRODUCTTYPE_Service.equals(product.getProductType())
				|| MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalDeServiçosEletrônicaRPS.equals(nf.getlbr_NFModel()))
			mTab.setValue (MLBRNotaFiscalLine.COLUMNNAME_lbr_IsService, true);
		else
			mTab.setValue (MLBRNotaFiscalLine.COLUMNNAME_lbr_IsService, false);
		
		return "";
	}	//	product
	
	/**
	 * 		Preenche a UF
	 * 
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @param oldValue
	 * @return "" or error
	 */
	private String region (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
	{
		//	Do not proceed when null
		if (value == null)
		{
			mTab.setValue(MLBRNFLineMA.COLUMNNAME_LBR_UFCons, "");
			return "";
		}
		
		MRegion region = new MRegion (ctx, (Integer) value, null);
		
		//	Set Region Name
		mTab.setValue(MLBRNFLineMA.COLUMNNAME_LBR_UFCons, region.getName());
		
		return "";
	}	//	region
}	//	NotaFiscalLine
