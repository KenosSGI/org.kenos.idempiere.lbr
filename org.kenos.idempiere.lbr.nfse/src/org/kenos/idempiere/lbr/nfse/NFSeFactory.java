package org.kenos.idempiere.lbr.nfse;

import org.adempierelbr.nfse.NFSeAbrasfImpl;
import org.adempierelbr.nfse.NFSeImpl;
import org.adempierelbr.nfse.NFSeMogiImpl;
import org.adempierelbr.nfse.NFSePalhocaImpl;
import org.adempierelbr.nfse.NFSeTubaraoImpl;
import org.compiere.util.CLogger;
import org.kenos.idempiere.lbr.base.nfse.INFSeFactory;

/**
 * 
 * Interface NFS-e Factory
 * @author Rogério Feitosa (Kenos, www.kenos.com.br)
 * @version $Id: NFSeFactory.java, v1.0 2017/10/05 17:27:42, rfeitosa Exp $
 *
 */
public class NFSeFactory implements INFSeFactory
{
	CLogger log = CLogger.getCLogger (NFSeFactory.class);
	
	/**
	 * 	Get class for City
	 */
	@Override
	public Class<?> getClass (int p_C_City_ID)
	{
		log.fine ("Trying to find class for [C_City_ID=" + p_C_City_ID + "]");
		
		//	São Paulo/SP
		if (NFSeImpl.C_City_ID == p_C_City_ID)
			return NFSeImpl.class;
		
		//	Mogi das Cruzes/SP
		else if (NFSeMogiImpl.C_City_ID == p_C_City_ID)
			return NFSeMogiImpl.class;
		
		//	Palhoça/SC
		else if (NFSePalhocaImpl.C_City_ID == p_C_City_ID)
			return NFSePalhocaImpl.class;
		
		//	Tubarão/SC
		else if (NFSeTubaraoImpl.C_City_ID == p_C_City_ID)
			return NFSeTubaraoImpl.class;
		
		//	Indaiatuba/SP
		else if (NFSeAbrasfImpl.INDAIATUBA_ID == p_C_City_ID)
			return NFSeAbrasfImpl.class;
		
		//	São Caetano do Sul/SP
		else if (NFSeAbrasfImpl.SAOCAETANODOSUL_ID == p_C_City_ID)
			return NFSeAbrasfImpl.class;
		
		//	Not Found
		return null;
	}	//	getClass
}	//	NFSeFactory
