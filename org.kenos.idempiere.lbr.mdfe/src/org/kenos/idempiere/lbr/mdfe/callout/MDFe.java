package org.kenos.idempiere.lbr.mdfe.callout;

import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MBPartner;
import org.compiere.model.MCity;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.mdfe.model.MLBRMDFe;

/**
 * 		Callout for MDF-e
 * 
 * 	@author Ricardo Santana
 */
public class MDFe
{
	public static class DriverName implements IColumnCallout 
	{
		/**
		 *  	Set Driver Name from BPartner
		 *
		 *  @param ctx      Context
		 *  @param WindowNo current Window No
		 *  @param mTab     Model Tab
		 *  @param mField   Model Field
		 *  @param value    The new value
		 *  @return Error message or ""
		 */
		@Override
		public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
		{
			Integer C_BPartner_ID = (Integer) mTab.getValue("C_BPartner_ID");
			
			if (C_BPartner_ID != null && C_BPartner_ID > 0)
			{
				I_W_C_BPartner bp = POWrapper.create(new MBPartner (Env.getCtx(), C_BPartner_ID, null), I_W_C_BPartner.class);
				//
				if (MLBRNotaFiscal.LBR_BPTYPEBR_PF_Individual.equals(bp.getlbr_BPTypeBR()))
				{
					String name = mTab.get_ValueAsString("Name");
					String cpf = mTab.get_ValueAsString("lbr_CPF");
					
					if (name == null || name.isEmpty())
						mTab.setValue("Name", bp.getName());
					
					if (cpf == null || cpf.isEmpty())
						mTab.setValue("lbr_CPF", bp.getlbr_CPF());
				}
			}
			//
			return "";
		}	//	start
	}	//	DriverName
	
	public static class ClearCity implements IColumnCallout 
	{
		/**
		 * 	Limpa os valores do campo Cidade, ao alterar o campo Estado
		 * 
		 * @param ctx
		 * @param WindowNo
		 * @param mTab
		 * @param mField
		 * @param value
		 * @return
		 */
		public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
		{
			mTab.setValue (MCity.COLUMNNAME_C_City_ID, null);
			//
			return "";
		}	//	start
	}	//	ClearCity
	
	public static class Void implements IColumnCallout 
	{
		/**
		 * 	Ajusta o campo de Ação do Documento para Anular
		 * 
		 * @param ctx
		 * @param WindowNo
		 * @param mTab
		 * @param mField
		 * @param value
		 * @return
		 */
		public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
		{
			if (value == null || value.toString().isEmpty())
				mTab.setValue (MLBRMDFe.COLUMNNAME_DocAction, MLBRMDFe.DOCACTION_Close);
			else
				mTab.setValue (MLBRMDFe.COLUMNNAME_DocAction, MLBRMDFe.DOCACTION_Void);
			//
			return "";
		}	//	start
	}	//	Void
}	//	MDFe
