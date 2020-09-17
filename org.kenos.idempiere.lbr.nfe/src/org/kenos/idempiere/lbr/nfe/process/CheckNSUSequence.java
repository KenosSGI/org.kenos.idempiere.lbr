package org.kenos.idempiere.lbr.nfe.process;

import java.sql.Timestamp;
import java.util.List;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRPartnerDFe;
import org.adempierelbr.process.GetDFe;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.CLogger;
import org.kenos.idempiere.lbr.base.model.MLBRAMissingNSU;

import br.inf.portalfiscal.nfe.dfe.RetDistDFeIntDocument;
import br.inf.portalfiscal.nfe.dfe.RetDistDFeIntDocument.RetDistDFeInt;

/**
 * 		Check NSU Sequence
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 */
public class CheckNSUSequence extends SvrProcess
{
	/** Process ID 					*/
	public static final int AD_Process_ID = 1120251;
	
	/**	Organization				*/
	private int p_AD_Org_ID = -1;
	
	/** Dates						*/
	@SuppressWarnings("unused")
	private Timestamp p_DateFrom = null;
	@SuppressWarnings("unused")
	private Timestamp p_DateTo = null;
	
	/** Fix Missing NSU				*/
	private boolean p_FixMissingNSU = false;
	
	/** Log							*/
	private static CLogger log = CLogger.getCLogger (CheckNSUSequence.class);
	
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

			else if (MOrg.COLUMNNAME_AD_Org_ID.equals (name))
				p_AD_Org_ID = para[i].getParameterAsInt();
			
			else if (MLBRPartnerDFe.COLUMNNAME_DateDoc.equals(name))
			{
				p_DateFrom = para[i].getParameterAsTimestamp();
				p_DateTo = para[i].getParameter_ToAsTimestamp();
			}
			
			else if (MLBRAMissingNSU.COLUMNNAME_LBR_FixMissingNSU.equals(name))
				p_FixMissingNSU = "Y".equals(para[i].getParameter());
			
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message (variables are parsed)
	 *  @throws Exception if not successful e.g.
	 */
	protected String doIt () throws Exception
	{
		//	Organization
		if (p_AD_Org_ID <= 0)
			throw new AdempiereUserError ("@FillMandatory@  @AD_Org_ID@");
		
		if (p_FixMissingNSU)
		{
			MOrgInfo oi = MOrgInfo.get(getCtx(), p_AD_Org_ID, get_TrxName());
			List<MLBRAMissingNSU> missing = new Query (getCtx(), MLBRAMissingNSU.Table_Name, null, get_TrxName()).list();
			//
			for (MLBRAMissingNSU nsu : missing)
			{
				RetDistDFeIntDocument result = GetDFe.doIt (oi, nsu.getLBR_NSU(), true);
				if (result == null)
				{
					addLog("Sem dados -> [" + nsu.getLBR_NSU() + "] Resultado da Consulta Vazio");
					continue;
				}
				RetDistDFeInt retConsNFeDest = result.getRetDistDFeInt();
				String cStat = retConsNFeDest.getCStat();
				
				//	Consulta OK, porém sem novos documentos emitidos
				if (MLBRNotaFiscal.LBR_NFESTATUS_137_NenhumDocumentoLocalizadoParaODestinatário.equals(cStat))
					addLog("Sem dados -> [" + nsu.getLBR_NSU() + "] " + retConsNFeDest.getXMotivo());
				
				//	Consulta OK, documentos localizados
				else if (MLBRNotaFiscal.LBR_NFESTATUS_138_DocumentoLocalizadoParaODestinatário.equals(cStat))
				{
					//	Save results
					GetDFe.processResult (getCtx(), retConsNFeDest.getLoteDistDFeInt(), null, p_AD_Org_ID);
					
					addLog("OK -> [" + nsu.getLBR_NSU() + "]");
				}
			}
		}
		
		return "@Success@";
	}	//	doIt
}	//	CheckNSUSequence