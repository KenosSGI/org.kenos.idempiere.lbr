package org.kenos.idempiere.lbr.nfe.importvalidator;

import java.util.Properties;

import org.adempiere.model.ImportValidator;
import org.adempiere.model.POWrapper;
import org.adempiere.process.ImportProcess;
import org.adempierelbr.model.MLBRCEST;
import org.adempierelbr.model.MLBRNCM;
import org.adempierelbr.model.X_LBR_NCM_CEST;
import org.adempierelbr.wrapper.I_W_I_Product;
import org.adempierelbr.wrapper.I_W_M_Product;
import org.compiere.model.MProduct;
import org.compiere.model.X_I_Product;

/**
 * 	Import Validator Business Partner
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 */
public class ImportValidatorProduct implements ImportValidator
{
	public static final String ImportTableName = X_I_Product.Table_Name;

	public void validate (ImportProcess process, Object importModel, Object targetModel, int timing)
	{
		if (importModel == null)
			return;
		
		X_I_Product impBP = (X_I_Product) importModel;
		I_W_I_Product impBPw = POWrapper.create(impBP, I_W_I_Product.class);

		// Import LBR fields after main import is done
		if (targetModel instanceof MProduct && TIMING_AFTER_IMPORT == timing)
 		{
 			MProduct prod = (MProduct)targetModel; 			
 			//
 			Properties ctx = prod.getCtx();
			String trxName = prod.get_TrxName();
			
 			I_W_M_Product prodw = POWrapper.create(prod, I_W_M_Product.class);

 			if (impBPw.getlbr_NCMName() != null && !impBPw.getlbr_NCMName().isBlank()) {
				MLBRNCM ncm = MLBRNCM.get(ctx, impBPw.getlbr_NCMName(), trxName);
	 			if (ncm == null) {
	 				ncm = new MLBRNCM (ctx, 0, trxName);
	 				ncm.setAD_Org_ID(0);
	 				ncm.setValue(impBPw.getlbr_NCMName());
	 				ncm.setDescription(impBPw.getlbr_NCMName());
	 				ncm.saveEx();
	 			}
	 				
	 			prodw.setLBR_NCM_ID(ncm.getLBR_NCM_ID());
 			}
 			
 			//	CEST needs NCM to work
 			if (prodw.getLBR_NCM_ID() > 0 
 					&& impBPw.getLBR_CESTName() != null && !impBPw.getLBR_CESTName().isBlank()) {
 				MLBRCEST cest = MLBRCEST.get(ctx, impBPw.getLBR_CESTName(), trxName);
	 			if (cest == null) {
	 				cest = new MLBRCEST (ctx, 0, trxName);
	 				cest.setAD_Org_ID(0);
	 				cest.setValue(impBPw.getLBR_CESTName());
	 				cest.setDescription(impBPw.getLBR_CESTName());
	 				cest.saveEx();
	 				
	 				//	Link between NCM <-> CEST
	 				X_LBR_NCM_CEST link = new X_LBR_NCM_CEST (ctx, 0, trxName);
	 				link.setLBR_NCM_ID(prodw.getLBR_NCM_ID());
	 				link.setLBR_CEST_ID(cest.getLBR_CEST_ID());
	 				link.setAD_Org_ID(0);
	 				link.saveEx();
	 			}
	 				
	 			prodw.setLBR_CEST_ID(cest.getLBR_CEST_ID());
 			}
 			
 			if (impBPw.getIsBOM() != null)
 				prod.setIsBOM(impBPw.getIsBOM().equals(I_W_I_Product.ISBOM_Yes));
 			if (impBPw.getIsPurchased() != null)
 				prod.setIsPurchased(impBPw.getIsPurchased().equals(I_W_I_Product.ISPURCHASED_Yes));
 			if (impBPw.getIsSold() != null)
 				prod.setIsSold(impBPw.getIsSold().equals(I_W_I_Product.ISSOLD_Yes));
 			if (impBPw.getlbr_IsManufactured() != null)
 				prod.setIsManufactured(impBPw.getlbr_IsManufactured().equals(I_W_I_Product.LBR_ISMANUFACTURED_Yes));
 			if (impBPw.getIsPurchased() != null)
 				prod.setIsPurchased(impBPw.getIsPurchased().equals(I_W_I_Product.ISPURCHASED_Yes));
 			
 			prod.setShelfDepth(impBPw.getShelfLifeDays());
 			
 			
 			if (prod.is_Changed())
 				prod.saveEx();
 		}
	}
}
