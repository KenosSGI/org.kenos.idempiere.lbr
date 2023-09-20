package org.kenos.idempiere.lbr.nfe.process;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.process.GetDFe;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
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
	
	/** NSU							*/
	private String p_LBR_NSU = null;
	
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

			else if (MLBRAMissingNSU.COLUMNNAME_LBR_NSU.equals (name))
				p_LBR_NSU = para[i].getParameterAsString();
			
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
			
		String trxName = get_TrxName();
		
		//	Check selected only
		String sql = "SELECT DISTINCT Value_String "
				+ "FROM T_Selection_InfoWindow "
				+ "WHERE ColumnName IN ('LBR_NSU') "
				+ "AND AD_PInstance_ID=? "
				+ "ORDER BY Value_String";
		
		//	Single NSU consult
		List<List<Object>> nsus = null;
		if (p_LBR_NSU !=null && !p_LBR_NSU.isBlank()) {
			List<Object> nsu = new ArrayList<Object>();
			nsu.add(p_LBR_NSU);
			
			nsus = new ArrayList<List<Object>>();
			nsus.add(nsu);
		}
			
		//	Selection
		else
			nsus = DB.getSQLArrayObjectsEx(trxName, sql, getAD_PInstance_ID());
				
		//	Organization
		if (nsus == null || nsus.size() < 1)
			return "@Error@ não foi selecionado nenhum NSU para pesquisa";
		//
		AtomicInteger counter = new AtomicInteger();
		MOrgInfo oi = MOrgInfo.get(getCtx(), p_AD_Org_ID, get_TrxName());
		
		for (List<Object> current : nsus)
		{
			//	Current NSU number
			String nsu = (String) current.get(0);
			
			if (counter.getAndIncrement() == 20)
				return "@Success@ Máximo de 20 consultas atingido, aguarde 1h e tente novamente";
			//
			RetDistDFeIntDocument result = GetDFe.doIt (oi, nsu, true);
			if (result == null)
			{
				addLog("Sem dados -> [" + nsu + "] Resultado da Consulta Vazio");
				continue;
			}
			RetDistDFeInt retConsNFeDest = result.getRetDistDFeInt();
			String cStat = retConsNFeDest.getCStat();
			
			//	Consulta OK, porém sem novos documentos emitidos
			if (MLBRNotaFiscal.LBR_NFESTATUS_137_NenhumDocumentoLocalizadoParaODestinatário.equals(cStat))
				addLog("Sem dados -> [" + nsu + "] " + retConsNFeDest.getXMotivo());
			
			//	Consulta OK, documentos localizados
			else if (MLBRNotaFiscal.LBR_NFESTATUS_138_DocumentoLocalizadoParaODestinatário.equals(cStat))
			{
				//	Save results
				GetDFe.processResult (getCtx(), retConsNFeDest.getLoteDistDFeInt(), null, p_AD_Org_ID);
				
				addLog("OK -> [" + nsu + "]");
			}
			
			else if (MLBRNotaFiscal.LBR_NFESTATUS_656_RejeiçãoConsumoIndevido.equals(cStat))
				return "@Success@ Consumo indevido, aguarde 1h e tente novamente";
		}
		
		return "@Success@";
	}	//	doIt
}	//	CheckNSUSequence