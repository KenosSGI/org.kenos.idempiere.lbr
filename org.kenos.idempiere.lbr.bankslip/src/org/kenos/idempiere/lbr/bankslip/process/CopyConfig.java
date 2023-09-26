package org.kenos.idempiere.lbr.bankslip.process;

import java.util.logging.Level;

import org.compiere.model.PO;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipFold;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipLayout;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipOccur;

/**
 * 	Copy Bank Slip configuration
 * 	@author Ricardo Santana <rsantana@kenos.com.br>
 */
public class CopyConfig extends SvrProcess
{
	/**	Delete old Imported				*/
	private boolean			m_deleteOld = false;
	/**	Copy From						*/
	private int				m_LBR_BankSlipLayout_ID;
	
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		for (ProcessInfoParameter para : getParameter())
		{
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if (name.equals("DeleteOld"))
				m_deleteOld = "Y".equals(para.getParameter());
			else if (MLBRBankSlipLayout.COLUMNNAME_LBR_BankSlipLayout_ID.equals(name))
				m_LBR_BankSlipLayout_ID = para.getParameterAsInt();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 * 	Cleanup Attribute Set Instance
	 * 
	 *	@return info
	 *	@throws Exception
	 */
	protected String doIt () throws Exception
	{
		if (getRecord_ID() < 1 || getTable_ID() != MLBRBankSlipLayout.Table_ID || m_LBR_BankSlipLayout_ID < 1)
			return "@Error@ Invalid document";
		
		//	Layout To
		int To_BankSlipLayout_ID = getRecord_ID();
		MLBRBankSlipLayout to = new MLBRBankSlipLayout (Env.getCtx(), To_BankSlipLayout_ID, get_TrxName());
		
		//	Delete actual
		if (m_deleteOld)
		{
			to.getOccurrences().stream().forEach(l -> l.delete(true));
			to.getFolds().stream().forEach(l -> l.delete(true));
		}
		
		MLBRBankSlipLayout from = new MLBRBankSlipLayout (Env.getCtx(), m_LBR_BankSlipLayout_ID, get_TrxName());
		
		//	Copy Occurrences
		for (MLBRBankSlipOccur occ : from.getOccurrences())
		{
			MLBRBankSlipOccur toOccur = new MLBRBankSlipOccur (Env.getCtx(), 0, get_TrxName());
			PO.copyValues(occ, toOccur);
			toOccur.setLBR_BankSlipLayout_ID(To_BankSlipLayout_ID);
			toOccur.saveEx();
		}
		
		//	Copy Folds
		for (MLBRBankSlipFold fold : from.getFolds())
		{
			MLBRBankSlipFold toFold = new MLBRBankSlipFold (Env.getCtx(), 0, get_TrxName());
			PO.copyValues(fold, toFold);
			toFold.setLBR_BankSlipLayout_ID(To_BankSlipLayout_ID);
			toFold.saveEx();
		}
		
		return "@Success@";
	}	//	doIt
}	//	CopyConfig
