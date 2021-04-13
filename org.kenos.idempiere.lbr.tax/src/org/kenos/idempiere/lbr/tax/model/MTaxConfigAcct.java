package org.kenos.idempiere.lbr.tax.model;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;

import org.compiere.model.MBPartner;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MProduct;
import org.compiere.model.Query;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * 		Tax Configuration for Accounting Model
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MTaxConfigAcct.java, v1.0 2018/02/21 11:30:09 PM, ralexsander Exp $
 */
public class MTaxConfigAcct extends X_LBR_TaxConfigAcct
{
	/**
	 * 	Serial ID
	 */
	private static final long serialVersionUID = -1L;

	public MTaxConfigAcct (Properties ctx, int LBR_TaxConfigAcct_ID, String trxName)
	{
		super (ctx, LBR_TaxConfigAcct_ID, trxName);
	}	//	MTaxConfigAcct
	
	public MTaxConfigAcct (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MTaxConfigAcct
	
	/**
	 * 		Retorna o grupo mais relevante de impost0
	 */
	public static MTaxConfigAcct get (int C_InvoiceLine_ID)
	{
		if (C_InvoiceLine_ID <= 0)
			return null;
		
		MInvoiceLine il = new MInvoiceLine (Env.getCtx(), C_InvoiceLine_ID, null);
		MInvoice i = il.getParent();
		MBPartner bp = new MBPartner (Env.getCtx(), i.getC_BPartner_ID(), null);
		
		int AD_Org_ID		= i.getAD_Org_ID();
		int LBR_CFOP_ID		= il.get_ValueAsInt("LBR_CFOP_ID");
		int C_BPartner_ID	= i.getC_BPartner_ID();
		int C_DocType_ID	= i.getC_DocType_ID();
		int C_Region_ID 	= 0;
		int LBR_BPartnerCategory_ID		= (i.isSOTrx() ? bp.get_ValueAsInt("LBR_CustomerCategory_ID") : bp.get_ValueAsInt("LBR_VendorCategory_ID"));
		int LBR_FiscalGroup_BPartner_ID	= bp.get_ValueAsInt("LBR_FiscalGroup_BPartner_ID");
		int LBR_FiscalGroup_Product_ID  = 0;
		int LBR_NCM_ID 					= 0;
		int LBR_ProductCategory_ID 		= 0;
		String lbr_TransactionType		= i.get_ValueAsString("lbr_TransactionType");
		Timestamp validFrom				= i.getDateInvoiced();
		String lbr_TaxRegime 			= null;
		int M_Product_ID				= il.getM_Product_ID();
		//
		if (M_Product_ID > 0)
		{
			MProduct p = new MProduct (Env.getCtx(), M_Product_ID, null);
			LBR_FiscalGroup_Product_ID 	= p.get_ValueAsInt("LBR_FiscalGroup_Product_ID");
			LBR_ProductCategory_ID		= p.get_ValueAsInt("LBR_ProductCategory_ID");
			LBR_NCM_ID					= p.get_ValueAsInt("LBR_NCM_ID");
		}
		//
		return get (AD_Org_ID, LBR_CFOP_ID, C_BPartner_ID, C_DocType_ID, C_Region_ID, LBR_BPartnerCategory_ID, 
				LBR_FiscalGroup_BPartner_ID, LBR_FiscalGroup_Product_ID, LBR_NCM_ID, LBR_ProductCategory_ID, 
				lbr_TransactionType, validFrom, lbr_TaxRegime, M_Product_ID);
	}	//	get
	
	/**
	 * 		Retorna o grupo mais relevante de impost0
	 */
	public static MTaxConfigAcct get (int AD_Org_ID, int LBR_CFOP_ID, int C_BPartner_ID, int C_DocType_ID, 
			int C_Region_ID, int LBR_BPartnerCategory_ID, int LBR_FiscalGroup_BPartner_ID,
			int LBR_FiscalGroup_Product_ID, int LBR_NCM_ID, int LBR_ProductCategory_ID,
			String lbr_TransactionType, Timestamp validFrom, String lbr_TaxRegime, int M_Product_ID)
	{
		String where = "IsActive='Y' AND AD_Client_ID IN (0, ?) AND AD_Org_ID IN (0, ?) ";
		//
		where += "AND (LBR_CFOP_ID IS NULL OR LBR_CFOP_ID=?) ";
		where += "AND (C_BPartner_ID IS NULL OR C_BPartner_ID=?) ";
		where += "AND (C_DocType_ID IS NULL OR C_DocType_ID=?) ";
//		where += "AND (C_Region_ID IS NULL OR C_Region_ID=?) ";
		where += "AND (LBR_BPartnerCategory_ID IS NULL OR LBR_BPartnerCategory_ID=?) ";
		where += "AND (LBR_FiscalGroup_BPartner_ID IS NULL OR LBR_FiscalGroup_BPartner_ID=?) ";
		where += "AND (LBR_FiscalGroup_Product_ID IS NULL OR LBR_FiscalGroup_Product_ID=?) ";
		where += "AND (LBR_NCM_ID IS NULL OR LBR_NCM_ID=?) ";
		where += "AND (LBR_ProductCategory_ID IS NULL OR LBR_ProductCategory_ID=?) ";
		where += "AND (LBR_TransactionType IS NULL OR lbr_TransactionType=?) ";
		where += "AND (LBR_TaxRegime IS NULL OR LBR_TaxRegime=?) ";
		where += "AND (M_Product_ID IS NULL OR M_Product_ID=?) ";
		
		//
		if (validFrom != null)
			where += "AND ValidFrom <= " + DB.TO_DATE(validFrom) + " AND (ValidTo IS NULL OR ValidTo >= " + DB.TO_DATE(validFrom) + ") ";
		
//		where += regionFrom (C_Region_ID);
//		where += regionTo (To_Region_ID);
		
		//
		Properties ctx = Env.getCtx();
		MTaxConfigAcct result = new Query (ctx, MTaxConfigAcct.Table_Name, where, null)
			.setParameters(new Object[]{Env.getAD_Client_ID(ctx), AD_Org_ID, LBR_CFOP_ID, C_BPartner_ID, C_DocType_ID, 
					LBR_BPartnerCategory_ID, LBR_FiscalGroup_BPartner_ID, LBR_FiscalGroup_Product_ID, LBR_NCM_ID, 
					LBR_ProductCategory_ID, lbr_TransactionType, lbr_TaxRegime, M_Product_ID})
			.setOrderBy("AD_Org_ID DESC, LBR_CFOP_ID DESC, C_BPartner_ID DESC, C_DocType_ID DESC, LBR_NCM_ID DESC, M_Product_ID DESC, ValidFrom DESC")
			.first();
		
		return result;
	}	//	get
}	//	MTaxConfigAcct
