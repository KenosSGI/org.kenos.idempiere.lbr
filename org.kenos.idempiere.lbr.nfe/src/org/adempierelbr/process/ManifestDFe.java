package org.adempierelbr.process;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRNFeEvent;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRPartnerDFe;
import org.compiere.model.MSysConfig;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.TimeUtil;
import org.kenos.idempiere.lbr.base.model.SysConfig;

/**
 * 		Processo para manifestar a NF emitida para a sua Organização
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ManifestDFe.java, v1.0 2013/11/09 16:08:49 PM, ralexsander Exp $
 */
public class ManifestDFe extends SvrProcess
{
	/**	Record ID				*/
	protected int p_Record_ID = -1;
	
	/**	CPF							*/
	protected String p_EventType = null;
	
	/**	CNPJ						*/
	protected String p_XJust = null;
	
	/**	Environment					*/
	protected String p_LBR_NFeEnv = null;
	
	/**	Organization				*/
	protected int p_AD_Org_ID = -1;
	
	/** Log							*/
	private static CLogger log = CLogger.getCLogger (ManifestDFe.class);
	
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare ()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;

			else if ("Description".equals (name))
				p_XJust = (String) para[i].getParameter();
			
			else if ("LBR_EventType".equals (name))
				p_EventType = (String) para[i].getParameter();
			
			else if (MLBRNotaFiscal.COLUMNNAME_lbr_NFeEnv.equals (name))
				p_LBR_NFeEnv = (String) para[i].getParameter();
			
			else if (MLBRNFeEvent.COLUMNNAME_AD_Org_ID.equals (name))
				p_AD_Org_ID = para[i].getParameterAsInt();
			
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		
		p_Record_ID = getRecord_ID();
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message (variables are parsed)
	 *  @throws Exception if not successful e.g.
	 *  throw new AdempiereUserError ("@FillMandatory@  @C_BankAccount_ID@");
	 */
	protected String doIt () throws Exception
	{
		//	Organization
		if (p_Record_ID < 1 && p_AD_Org_ID < 1)
			throw new AdempiereUserError ("@FillMandatory@  @Record_ID@ / @AD_Org_ID@");
		
		//	Unified Business Partner
		if (p_EventType == null || p_EventType.isEmpty())
			throw new AdempiereUserError ("@FillMandatory@  @LBR_EventType@");
				
		List<MLBRPartnerDFe> dfes = new ArrayList<MLBRPartnerDFe>();
		
		//	Single DF-e
		if (p_Record_ID > 0)
			dfes.add(new MLBRPartnerDFe (Env.getCtx(), p_Record_ID, get_TrxName()));
		
		//	All available, only to manifest Ciência da Operação
		else if (MLBRPartnerDFe.LBR_EVENTTYPE_CienciaDaOperacao.equals(p_EventType))
		{
			Timestamp today = new Timestamp (System.currentTimeMillis());
			//
			String whereClause =  "AD_Org_ID=? "	//	Same Org
					+ " AND LBR_IsXMLValid='N' "	//	Not Downloaded Yet
					+ " AND DocumentType='0' "		//	Only NF-e (Exclude Events)
					+ " AND IsCancelled='N' "		//	Not Cancelled
					+ " AND LBR_IsManifested='N' "	//	Only Manifested DF-e
					+ " AND LBR_ManifestTries IS NULL OR LBR_ManifestTries<" + MSysConfig.getIntValue(SysConfig.LBR_MANIFEST_TRIES, 5)
					+ " AND DateDoc >= " + DB.TO_DATE (TimeUtil.addDays (today, -180));	//	180 days is the limit to manifest a document
			// 
			dfes = new Query(Env.getCtx(), MLBRPartnerDFe.Table_Name, whereClause, get_TrxName())
									.setParameters(p_AD_Org_ID)
									.list();
		}
		
		//	Manifest all DF-es
		dfes.stream().forEach(this::manifest);
		
		return "@Success@";
	}	//	doIt

	/**
	 * 	Manifest Doc Fiscal
	 * 	@param dfe
	 */
	protected void manifest (MLBRPartnerDFe dfe) 
	{		
		//	Event
		MLBRNFeEvent event = new MLBRNFeEvent (getCtx(), 0, get_TrxName());
		event.setAD_Org_ID(dfe.getAD_Org_ID());
		event.setLBR_PartnerDFe_ID(dfe.getLBR_PartnerDFe_ID());
		event.setlbr_NFeID(dfe.getlbr_NFeID());
		event.setLBR_EventType(p_EventType);
		event.setlbr_NFModel(MLBRNFeEvent.LBR_NFMODEL_NotaFiscalEletrônica);
		event.setProtocol(dfe.getlbr_NFeProt());
		if (p_LBR_NFeEnv != null)
			event.setlbr_NFeEnv(p_LBR_NFeEnv);
		
		//	Only for 210240
		if (MLBRNFeEvent.LBR_EVENTTYPE_OperacaoNaoRealizada.equals(p_EventType))
			event.setDescription(p_XJust);
		event.setDateDoc(new Timestamp (System.currentTimeMillis()));
		event.setSeqNo(0);	//	Automatic
		event.saveEx();
		//
		if (event.processIt(MLBRNFeEvent.DOCACTION_Complete))
		{
			event.setDocStatus(MLBRNFeEvent.DOCSTATUS_Completed);
			event.setDocAction(MLBRNFeEvent.DOCACTION_None);
			event.save();
			
			// 	Update DF-e
			if (MLBRNFeEvent.LBR_EVENTTYPE_OperacaoNaoRealizada.equals(p_EventType)
					|| MLBRNFeEvent.LBR_EVENTTYPE_ConfirmacaoDaOperacao.equals(p_EventType)
					|| MLBRNFeEvent.LBR_EVENTTYPE_DesconhecimentoDaOperacao.equals(p_EventType))
			{
				dfe.setLBR_IsManifested(true);
				dfe.save();
			}
		}
		else
		{
			dfe.increaseTries();
			dfe.save();
			
			addLog ("Falha ao completar o registro do evento. " + event.getProcessMsg());
		}
	}	//	manifest
}	//	ManifestDFe
