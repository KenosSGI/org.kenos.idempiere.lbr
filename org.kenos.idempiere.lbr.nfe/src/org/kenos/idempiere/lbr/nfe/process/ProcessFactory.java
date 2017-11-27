package org.kenos.idempiere.lbr.nfe.process;

import org.adempiere.base.IProcessFactory;
import org.adempierelbr.process.PrintFromXML;
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
		if (PrintFromXML.class.getName().equals (className))
			return new PrintFromXML ();
		return null;
	}	//	newProcessInstance
}	//	CalloutFactory
