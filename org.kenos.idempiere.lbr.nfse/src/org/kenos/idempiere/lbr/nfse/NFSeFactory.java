package org.kenos.idempiere.lbr.nfse;

import org.adempierelbr.nfse.NFSeImpl;
import org.adempierelbr.nfse.NFSeMogiImpl;
import org.adempierelbr.nfse.NFSePalhocaImpl;
import org.adempierelbr.nfse.NFSeTubaraoImpl;
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

	@Override
	public Class<?> getClass(int c_city_id)
	{
		if (NFSeImpl.C_City_ID.equals(c_city_id))
			return NFSeImpl.class;
		else if (NFSeMogiImpl.C_City_ID.equals(c_city_id))
			return NFSeMogiImpl.class;
		else if (NFSePalhocaImpl.C_City_ID.equals(c_city_id))
			return NFSePalhocaImpl.class;
		else if (NFSeTubaraoImpl.C_City_ID.equals(c_city_id))
			return NFSeTubaraoImpl.class;			
		
		return null;
	}

}
