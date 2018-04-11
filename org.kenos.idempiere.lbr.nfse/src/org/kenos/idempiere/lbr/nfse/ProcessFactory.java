package org.kenos.idempiere.lbr.nfse;

import org.adempiere.base.IProcessFactory;
import org.adempierelbr.process.ProcGenerateRPS;
import org.compiere.process.ProcessCall;

/**
 * 		Process Factory
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ProcessFactory.java, v1.0 2017/09/04 5:06:32 PM, ralexsander Exp $
 */
public class ProcessFactory implements IProcessFactory
{
	@Override
	public ProcessCall newProcessInstance (String className)
	{
		if (ProcGenerateRPS.class.getName ().equals (className))
			return new ProcGenerateRPS ();
		return null;
	}	//	newProcessInstance
}	//	ProcessFactory
