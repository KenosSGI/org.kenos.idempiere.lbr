package org.kenos.idempiere.lbr.base.callout;

import org.adempiere.base.ICalloutFactory;
import org.compiere.model.Callout;
import org.compiere.model.CalloutOrder;

/**
 * 		Callout Factory
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: CalloutFactory.java, v1.0 2020/06/19 5:06:32 PM, ralexsander Exp $
 */
public class CalloutFactory implements ICalloutFactory
{
	@Override
	public Callout getCallout (String className, String methodName)
	{
		if (CalloutOrder.class.getName().equals(className) && 
				("product".equals(methodName) || "qty".equals(methodName)))
			return new OrderLineProduct();
		return null;
	}	//	getCallout
}	//	CalloutFactory
