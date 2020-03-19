package org.kenos.idempiere.lbr.bankslip.process;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;

import org.adempiere.base.Service;
import org.adempiere.report.jasper.JRViewerProvider;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.jrimum.bopepo.Boleto;
import org.jrimum.bopepo.view.JasperViewer;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlip;

import net.sf.jasperreports.engine.JasperPrint;

/**
 * 	Impressão de Boletos via Jasper
 * 	@author Ricardo Santana <rsantana@kenos.com.br>
 */
public class Print extends SvrProcess
{
	/**	Only open bank slip **/
	private boolean p_OnlyOpen = false;
	
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
			else if (name.equals("TO_DO"))
				p_OnlyOpen = para.getParameterAsBoolean();
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
		if (getRecord_ID() < 1)
			return "@Error@ Document not Found";
		
		List<Boleto> bopepos = new ArrayList<Boleto>();
		
		//	Find candidates to be printed
		String where = (MLBRBankSlip.Table_ID == getTable_ID() ? MLBRBankSlip.COLUMNNAME_LBR_BankSlip_ID : MLBRBankSlip.COLUMNNAME_C_Invoice_ID) + "=? ";
		if (p_OnlyOpen)
			where += MLBRBankSlip.COLUMNNAME_IsPaid + "='N' AND " + MLBRBankSlip.COLUMNNAME_LBR_IsWrittenOff + "='N' AND " + MLBRBankSlip.COLUMNNAME_LBR_IsHalted + "='N'";
		
		//	Generate bopepos to be printed
		List<MLBRBankSlip> bss = new Query (getCtx(), MLBRBankSlip.Table_Name, where, get_TrxName()).setParameters(getRecord_ID()).list();
		bss.stream().map(MLBRBankSlip::getBankSlip).forEach(bopepos::add);
		
		//	Create a viewer
		JasperViewer jasperViewer = new JasperViewer();
		JasperPrint jasperPrint = jasperViewer.getJasperPrint(bopepos);
		
		//	Print in iDempiere JR Viewer Provider
		JRViewerProvider viewerLauncher = Service.locator().locate(JRViewerProvider.class).getService();
		viewerLauncher.openViewer (jasperPrint, "Impress\u00E3o de Boletos");
		
		return "@Success@";
	}	//	doIt
}	//	Print
