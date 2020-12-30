package org.kenos.idempiere.lbr.nfe.importvalidator;

import org.adempiere.model.ImportValidator;
import org.adempiere.model.POWrapper;
import org.adempiere.process.ImportProcess;
import org.adempierelbr.validator.ValidatorBPartner;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.adempierelbr.wrapper.I_W_I_BPartner;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MLocation;
import org.compiere.model.X_I_BPartner;
import org.compiere.util.DB;

/**
 * 	Import Validator Business Partner
 * 	
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: ImportValidatorBPartner.java, v1.0 2017/MM/DD 17:51:50, rfeitosa Exp $
 */
public class ImportValidatorBPartner implements ImportValidator
{
	public static final String ImportTableName = X_I_BPartner.Table_Name;


	/**
	 * Validar e Importar campos do Parceiro de Negócio
	 */
	public void validate(ImportProcess process, Object importModel, Object targetModel, int timing)
	{
		if (importModel == null)
			return;
		
		//	Instancia Importação de Parceiro de Negócio
		X_I_BPartner impBP = (X_I_BPartner) importModel;
		I_W_I_BPartner impBPw = POWrapper.create(impBP, I_W_I_BPartner.class);

		//	Após o Parceiro de Negócio ser importado, Adicionar campos do IDempiereLBR
		if (targetModel instanceof MBPartner && TIMING_AFTER_IMPORT == timing)
 		{
			StringBuffer sql = null;
			
			//	Parceiro de Negócio criado
 			MBPartner bp = (MBPartner)targetModel; 			
 			I_W_C_BPartner bpw = POWrapper.create(bp, I_W_C_BPartner.class);
 			
 			//	Adicionar Campos referente ao IDempiereLBR
 			bpw.setAD_Language(impBPw.getAD_Language());
 			bpw.setlbr_BPTypeBR(impBPw.getlbr_BPTypeBR());
 			
 			//	Se o Campo CNPJ estiver Preenchido
 			if (impBPw.getlbr_CNPJ() != null && !"".equals(impBPw.getlbr_CNPJ()))
			{
 				//	Validar CNPJ
				Boolean ok = ValidatorBPartner.validaCNPJ(impBPw.getlbr_CNPJ());
				
				//	Se CNPJ Valido
				if(ok)
					bpw.setlbr_CNPJ(impBPw.getlbr_CNPJ());
				else
				{
					//	Indicar Erro ao Validar CNPJ
					sql = new StringBuffer ("UPDATE I_BPartner i "
							+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||")
							.append("'Invalid CNPJ, ' ")
							.append("WHERE I_BPartner_ID=").append(impBP.getI_BPartner_ID());
						DB.executeUpdate(sql.toString(), impBP.get_TrxName());
				}
			}
 			//	Se o Campo CPF estiver Preenchido
 			else if (impBPw.getlbr_CPF()!= null && !"".equals(impBPw.getlbr_CPF()))
			{
 				//	Validar CPF 				
				Boolean ok = ValidatorBPartner.validaCPF(impBPw.getlbr_CPF());
				
				//	Se CPF Valido
				if(ok)
					bpw.setlbr_CPF(impBPw.getlbr_CPF());
				else
				{
					//	Indicar Erro ao Validar CPF
					sql = new StringBuffer ("UPDATE I_BPartner i "
							+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||")
							.append("'Invalid CPF, ' ")
							.append("WHERE I_BPartner_ID=").append(impBP.getI_BPartner_ID());
						DB.executeUpdate(sql.toString(), impBP.get_TrxName());
				}
			}
 			
 			//	Se o Campo IE estiver Preenchido 
 			if (impBPw.getlbr_IE() != null && !"".equals(impBPw.getlbr_IE()))
 				bpw.setlbr_IE(impBPw.getlbr_IE());
 			
 			//	Se o Campo CCM estiver Preenchido 
 			if (impBPw.getlbr_CCM() != null && !"".equals(impBPw.getlbr_CCM()))
 				bpw.setlbr_CCM(impBPw.getlbr_CCM());
 			
 			//	Se o Campo RG estiver Preenchido 
			if (impBPw.getlbr_RG() != null && !"".equals(impBPw.getlbr_RG()))
				bpw.setlbr_RG(impBPw.getlbr_RG());
			
			//	Se o Campo Representante de Venda estiver Preenchido 
			if (!impBPw.isSalesRep())
				bpw.setIsSalesRep(impBPw.isSalesRep());
 		}
		
		//	Location
		else if (targetModel instanceof MBPartnerLocation && TIMING_AFTER_IMPORT == timing)
 		{
			MBPartnerLocation bpl = (MBPartnerLocation) targetModel;
			MLocation l = (MLocation) bpl.getC_Location();
			//
			if (impBPw.getAddress3() != null)
				l.setAddress3(impBPw.getAddress3());
			if (impBPw.getAddress4() != null)
				l.setAddress4(impBPw.getAddress4());
			if (l.is_Changed())
				l.save();
 		}
	}
}
