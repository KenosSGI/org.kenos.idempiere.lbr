package org.kenos.idempiere.lbr.base.process;

import org.adempiere.base.IProcessFactory;
import org.adempiere.report.jasper.ReportStarter;
import org.compiere.process.ProcessCall;

/**
 * 		Callout Factory
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ProcessFactory.java, v1.0 2017/09/04 5:06:32 PM, ralexsander Exp $
 */
public class ProcessFactory implements IProcessFactory
{
	/**	Report starter of this plugin	*/
	private static final String REPORT_STARTER = ProcessFactory.class.getPackage().getName() + ".ReportStarter";
	
	@Override
	public ProcessCall newProcessInstance (String className)
	{
		if (InvoiceGenerate.PROCESS_NAME.equals (className))
			return new InvoiceGenerate ();
		if (InvoiceGenerateRMA.PROCESS_NAME.equals (className))
			return new InvoiceGenerateRMA ();
		if (InOutGenerate.PROCESS_NAME.equals (className))
			return new InOutGenerate ();
		if (StorageCleanup.PROCESS_NAME.equals (className))
			return new StorageCleanup ();
		if (ASICleanup.class.getName().equals (className))
			return new ASICleanup ();
		if (OrderLineCreateProduction.class.getName().equals (className))
			return new OrderLineCreateProduction ();
		if (REPORT_STARTER.equals (className))
			return new ReportStarter () {};
		if (CreditCheck.class.getName().equals (className))
			return new CreditCheck ();
		if (ReplaceSalesRep.class.getName().equals (className))
			return new ReplaceSalesRep ();
		return null;
	}	//	newProcessInstance
}	//	ProcessFactory
