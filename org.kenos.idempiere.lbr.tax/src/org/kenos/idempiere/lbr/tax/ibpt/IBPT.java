package org.kenos.idempiere.lbr.tax.ibpt;

import java.lang.reflect.InvocationTargetException;

/**
 * 		IBPT Interface for API
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: IBPT.java, v1.0 2017/05/19 5:36:11 PM, ralexsander Exp $
 */
public interface IBPT
{
	public IBPTResponse getTaxForNCM (String cnpj, String ncm, String uf, String ex) throws Exception;
	public IBPTResponse getTaxForNBS (String cnpj, String nbs, String uf) throws Exception;

	/**
	 * 		Factory
	 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
	 *	@version $Id: SAT.java, v1.0 2016/08/08 2:11:01 PM, ralexsander Exp $
	 */
	public static final class Factory
	{
		/**
		 * 		Factory
		 * 	@return
		 * 	@throws InstantiationException
		 * 	@throws IllegalAccessException
		 * 	@throws ClassNotFoundException
		 * 	@throws SecurityException 
		 * 	@throws NoSuchMethodException 
		 * 	@throws InvocationTargetException 
		 * 	@throws IllegalArgumentException 
		 */
		public static IBPT newInstance (String key) throws ClassNotFoundException, Exception 
		{
			Class<?> clazz = Class.forName("org.kenos.idempiere.lbr.ibpt.IBPTImpl");
			return (IBPT) clazz.getDeclaredConstructor(String.class).newInstance(key);
		}	//	newInstance
    }	//	Factory
}
