package org.kenos.idempiere.lbr.base.process;

import org.adempiere.base.IProcessFactory;
import org.compiere.process.ProcessCall;

/**
 * 		Callout Factory
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ProcessFactory.java, v1.0 2017/09/04 5:06:32 PM, ralexsander Exp $
 */
public class ProcessFactory implements IProcessFactory
{
	@Override
	public ProcessCall newProcessInstance (String className)
	{
		if (InvoiceGenerate.PROCESS_NAME.equals (className))
			return new InvoiceGenerate ();
		if (InvoiceGenerateRMA.PROCESS_NAME.equals (className))
			return new InvoiceGenerateRMA ();
		if (InOutGenerate.PROCESS_NAME.equals (className))
			return new InOutGenerate ();
		if (ImportInventory.PROCESS_NAME.equals (className))
			return new ImportInventory ();
		return null;
	}	//	newProcessInstance
}	//	CalloutFactory
