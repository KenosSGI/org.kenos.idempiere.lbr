package org.adempierelbr.sped.efd.process;

import org.adempiere.base.IProcessFactory;
import org.adempierelbr.process.ProcTaxAssessment;
import org.compiere.process.ProcessCall;

/**
 * 		Process Factory
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: ProcessFactory.java, v1.0 2019/01/21 18:21:12, kenos_rfeitosa Exp $
 */
public class ProcessFactory implements IProcessFactory
{
	@Override
	public ProcessCall newProcessInstance (String className)
	{
		if (ProcTaxAssessment.class.getName().equals (className))
			return new ProcTaxAssessment();
		return null;
	}	//	newProcessInstance
}	//	CalloutFactory
