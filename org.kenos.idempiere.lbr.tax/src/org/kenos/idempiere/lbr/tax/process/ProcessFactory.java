package org.kenos.idempiere.lbr.tax.process;

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
		if (org.compiere.process.CopyOrder.class.getName().equals (className))
			return new CopyOrder ();
		if (ReProcessOrder.class.getName().equals(className))
			return new ReProcessOrder ();
		if (org.compiere.process.CopyFromOrder.class.getName().equals(className))
			return new CopyFromOrder ();
		if (CreateFromCashPlanLine.class.getName().equals (className))
			return new CreateFromCashPlanLine ();
		if (CreateCounterDoc.class.getName().equals (className))
			return new CreateCounterDoc ();
		return null;
	}
}	//	CalloutFactory
