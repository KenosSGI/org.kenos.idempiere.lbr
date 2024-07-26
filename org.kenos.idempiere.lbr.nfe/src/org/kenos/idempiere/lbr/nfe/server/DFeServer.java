package org.kenos.idempiere.lbr.nfe.server;

import java.util.Arrays;
import java.util.List;
import java.util.Properties;
import java.util.concurrent.atomic.AtomicBoolean;

import org.adempierelbr.model.MLBRNFConfig;
import org.adempierelbr.process.GetDFe;
import org.adempierelbr.process.ManifestDFe;
import org.compiere.model.AdempiereProcessor;
import org.compiere.model.MClient;
import org.compiere.model.MPInstance;
import org.compiere.model.MProcess;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ServerProcessCtl;
import org.compiere.server.AdempiereServer;
import org.compiere.util.Env;

/**
 *	DFe Server
 */
public class DFeServer extends AdempiereServer
{
	/**
	 * 	DFe Server
	 *	@param model model
	 */
	public DFeServer (Properties ctx, AdempiereProcessor model)
	{
		super (model, 60 * 60);	//	1 hour delay 
		m_ctx = ctx;
		m_processor = (DFeProcessor) model;
		m_client = MClient.get (ctx, model.getAD_Client_ID());
	}	//	DFeServer

	/**	The Concrete Model			*/
	protected Properties		m_ctx = null;
	/** Client info					*/
	protected MClient 			m_client = null;
	/** The Processor				*/
	protected DFeProcessor m_processor = null;

	/**
	 * 	Work
	 */
	protected void doWork ()
	{
		List<MLBRNFConfig> configs = new Query (Env.getCtx(), MLBRNFConfig.Table_Name, MLBRNFConfig.COLUMNNAME_LBR_DFeAutoRetrieve + "='Y' AND " + MLBRNFConfig.COLUMNNAME_AD_Client_ID + "=?", null)
			.setOnlyActiveRecords(true)
			.setParameters(m_processor.getAD_Client_ID())
			.list();
		
		//	Get documents
		configs.stream().forEach(config -> {
			Arrays.stream(new int[] { GetDFe.AD_Process_ID, ManifestDFe.AD_Process_ID }).forEach(processID -> {
				MProcess process = new MProcess(Env.getCtx(), processID, null);
				MPInstance pInstance = new MPInstance(process, 0);
				//
				AtomicBoolean skip = new AtomicBoolean(false);
				Arrays.asList(pInstance.getParameters()).stream().forEach(p -> {
					if (MLBRNFConfig.COLUMNNAME_AD_Org_ID.equals(p.getParameterName())) {
						p.setP_Number(config.getAD_Org_ID());
						p.setInfo("Org=" + config.getAD_Org_ID());
						p.save();
					}
					
					else if (MLBRNFConfig.COLUMNNAME_lbr_NFeEnv.equals(p.getParameterName())) {
						p.setP_String(config.getlbr_NFeEnv());
						p.setInfo("Environment=" + config.getlbr_NFeEnv());
						p.save();
					}
						
					else if (MLBRNFConfig.COLUMNNAME_LBR_EventType.equals(p.getParameterName())) {
						if (config.getLBR_EventType() == null) {
							skip.set(true);
							return;
						}
						//
						p.setP_String(config.getLBR_EventType());
						p.setInfo("EventType=" + config.getLBR_EventType());
						p.save();
					}
				});
				//	Skip, no Event Type
				if (skip.get())
					return;
				//
				ProcessInfo pi = new ProcessInfo (process.getName(), process.getAD_Process_ID(), 0, 0);
				pi.setAD_User_ID(0);
				pi.setAD_Client_ID(m_processor.getAD_Client_ID());
				pi.setAD_PInstance_ID(pInstance.getAD_PInstance_ID());
				pi.setAD_Process_UU(process.getAD_Process_UU());
				pi.setIsBatch(true);
				pi.setPrintPreview(false);
				pi.setTransactionName(null);
				//
				ServerProcessCtl.process(pi, null);
				//
				m_processor.addLog(new DFeProcessorLog(pi.getSummary(), pi.isError()));
				
			});
		});
		
		//	Manifest documents
		configs.stream().filter(c -> c.getLBR_EventType() != null).forEach(config -> {
			
		});
	}	//	doWork

	/**
	 * 	Get Server Info
	 *	@return info
	 */
	public String getServerInfo()
	{
		return "#" + p_runCount + " - Last=" + m_processor.toString();
	}	//	getServerInfo
	
	/**
	 * 	Get Client ID
	 * 	@return ID
	 */
	public int getAD_Client_ID ()
	{
		return m_client.getAD_Client_ID();
	}	//	getAD_Client_ID
}	//	BankSlipServer
