package org.kenos.idempiere.lbr.bankslip.server;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.Set;
import java.util.TreeSet;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.AdempiereProcessor;
import org.compiere.model.AdempiereProcessor2;
import org.compiere.model.AdempiereProcessorLog;
import org.compiere.model.MClient;
import org.compiere.model.MSchedule;
import org.compiere.model.Query;
import org.compiere.util.TimeUtil;

public class BankSlipProcessor implements AdempiereProcessor, AdempiereProcessor2 {

	private static final int LOG_SIZE = 100;

	public BankSlipProcessor(Properties ctx, int AD_Client_ID) {
		m_ctx = ctx;
		m_dateLastRun = new Timestamp (System.currentTimeMillis());
		m_dateNextRun = TimeUtil.addMinutess(m_dateLastRun, 1);
		m_AD_Client_ID = AD_Client_ID;
	}	//	BankSlipProcessor
	
	private Timestamp m_dateLastRun = null;
	private Timestamp m_dateNextRun = null;
	private Properties m_ctx = null;
	private int m_AD_Client_ID = 0;
	private Set<Integer> queue = new TreeSet<Integer> ();
	private List<AdempiereProcessorLog> logs = new ArrayList<AdempiereProcessorLog>();
	
	public void put (Integer C_Invoice_ID)
	{
		queue.add(C_Invoice_ID);
	}	//	put
	
	public Set<Integer> get () {
		return queue;
	}	//	get
	
	@Override
	public boolean isIgnoreProcessingTime() {
		return false;
	}

	@Override
	public int getAD_Schedule_ID() {
		return 0;
	}

	@Override
	public int getAD_Client_ID() {
		return m_AD_Client_ID;
	}

	@Override
	public String getName() {
		return MClient.get(m_ctx, m_AD_Client_ID).getName() + " - Processador de Boleto Bancário";
	}

	@Override
	public String getDescription() {
		return "BankSlip Processor - Processador de Boleto Bancário";
	}

	@Override
	public Properties getCtx() {
		return m_ctx;
	}

	@Override
	public String getFrequencyType() {
		return MSchedule.FREQUENCYTYPE_Minute;
	}

	@Override
	public String getScheduleType() {
		return MSchedule.SCHEDULETYPE_Frequency;
	}

	@Override
	public String getCronPattern() {
		return null;
	}

	@Override
	public int getFrequency() {
		return 1;
	}

	@Override
	public String getServerID() {
		return "BS[" + getAD_Client_ID() + "]";
	}

	@Override
	public Timestamp getDateNextRun(boolean requery) {
		return m_dateNextRun;
	}

	@Override
	public void setDateNextRun(Timestamp dateNextWork) {
		m_dateNextRun = dateNextWork;
	}

	@Override
	public Timestamp getDateLastRun() {
		return m_dateLastRun;
	}

	@Override
	public void setDateLastRun(Timestamp dateLastRun) {
		m_dateLastRun = dateLastRun;
	}

	@Override
	public boolean save() {
		return true;
	}

	@Override
	public void saveEx() throws AdempiereException {
		save();
	}

	@Override
	public AdempiereProcessorLog[] getLogs() {
		return logs.toArray(new AdempiereProcessorLog[logs.size()]); 
	}	//	getLogs
	
	public void addLog (AdempiereProcessorLog log) {
		if (logs.size() >= LOG_SIZE)
			logs.remove (0);
		logs.add(log);
	}
	
	public static List<BankSlipProcessor> get (Properties ctx)
	{
		String where = "EXISTS (SELECT 1 FROM LBR_BankSlipContract c WHERE c.AD_Client_ID=AD_Client.AD_Client_ID AND c.IsActive='Y')"; 
		int[] ids = new Query (ctx, MClient.Table_Name, where, null)
			.setOnlyActiveRecords(true)
			.getIDs();
		//
		List<BankSlipProcessor> processors = new ArrayList<BankSlipProcessor>();
		for (Integer AD_Client_ID : ids) {
			processors.add(new BankSlipProcessor(ctx, AD_Client_ID));
		}
		return processors;
	}	//	get
	
	@Override
	public String toString() {
		return "BankSlip Processor";
	}	//	toString
}	//	BankSlipProcessor
