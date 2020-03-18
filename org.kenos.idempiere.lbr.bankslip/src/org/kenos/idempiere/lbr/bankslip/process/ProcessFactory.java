package org.kenos.idempiere.lbr.bankslip.process;

import org.adempiere.base.IProcessFactory;
import org.compiere.process.ProcessCall;

/**
 * 		Process Factory
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ProcessFactory.java, v1.0 2020/03/16 19:10:32 PM, ralexsander Exp $
 */
public class ProcessFactory implements IProcessFactory
{
	@Override
	public ProcessCall newProcessInstance (String className)
	{
		if (Print.class.getName().equals (className))
			return new Print ();
		return null;
	}	//	newProcessInstance
}	//	ProcessFactory
