package org.adempierelbr.nfse;

import java.util.List;
import java.util.logging.Level;

import org.adempiere.base.Service;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.compiere.model.MOrgInfo;
import org.compiere.util.CLogger;
import org.kenos.idempiere.lbr.base.nfse.INFSeFactory;

public class NFSeUtil
{
	/**	Static Logger	*/
	private static CLogger 	s_log = CLogger.getCLogger (NFSeUtil.class);

	/**
	 *  Factory - called from APanel
	 *  @param  mTab        Model Tab for the trx
	 *  @return JDialog
	 */
	public static INFSe get (MLBRNotaFiscal nf)
	{
		MOrgInfo oi = MOrgInfo.get (nf.getCtx(), nf.getAD_Org_ID(), nf.get_TrxName());
		int C_City_ID = oi.getC_Location().getC_City_ID();
		//
		return get (C_City_ID);
	}
	
	/**
	 *  Factory - called from APanel
	 *  @param  mTab        Model Tab for the trx
	 *  @return JDialog
	 */
	@SuppressWarnings("unchecked")
	public static INFSe get (int C_City_ID)
	{
		INFSe retValue = null;
		Class<? extends INFSe> cl = null;
		
		List<INFSeFactory> factoryList = Service.locator().list(INFSeFactory.class).getServices();
		
		for (INFSeFactory factory : factoryList)
		{
			cl = (Class<? extends INFSe>) factory.getClass(C_City_ID);
			
			if (cl != null)
				break;
		}
		
		if (cl != null)
		{
			try
			{
				java.lang.reflect.Constructor<? extends INFSe> ctor = cl.getConstructor ();
				retValue = ctor.newInstance ();
			}
			catch (Throwable e)
			{
				s_log.log (Level.SEVERE, e.getLocalizedMessage(), e);
				return null;
			}
		}
		if (retValue == null)
		{
			s_log.info("Unsupported C_City_ID=" + C_City_ID);
			return null;
		}
		return retValue;
	}   //  create
}	//	NFSeUtil