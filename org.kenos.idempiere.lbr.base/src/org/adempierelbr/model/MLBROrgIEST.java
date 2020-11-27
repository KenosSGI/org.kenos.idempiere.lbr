package org.adempierelbr.model;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.List;
import java.util.Properties;

import org.compiere.model.Query;
import org.compiere.util.Env;

/**
 * Controlar as Inscrições Estaduais Substitutas da Organização por Estado
 * @author rfeitosa
 *
 */
public class MLBROrgIEST extends X_LBR_OrgIEST
{
	 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/** Standard Constructor */
    public MLBROrgIEST (Properties ctx, int LBR_OrgIEST_ID, String trxName)
    {
      super (ctx, LBR_OrgIEST_ID, trxName);
      /** if (LBR_OrgIEST_ID == 0)
        {
			setC_Region_ID (0);
			setLBR_IEST (null);
			setLBR_OrgIEST_ID (0);
        } */
    }

    /** Load Constructor */
    public MLBROrgIEST (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }
    
    /**
     * Get All IE Substitute
     * @param AD_Org_ID
     * @return
     */
    public static List<MLBROrgIEST> getAllIEST(int AD_Org_ID)
	{
		return getAllIEST (AD_Org_ID, 0);
	}	//	getAllIEST
    
    /**
     * 
     * @param AD_Org_ID
     * @param C_Region_ID
     * @return
     */
    public static List<MLBROrgIEST> getAllIEST (int AD_Org_ID, int C_Region_ID)
	{
		//	where
		String where = COLUMNNAME_AD_Org_ID + "=?";
		
		if (C_Region_ID > 0)
			where = where + " AND " + COLUMNNAME_C_Region_ID + "=" + C_Region_ID;

		//	List
		List<MLBROrgIEST> list = new Query (Env.getCtx(), MLBROrgIEST.Table_Name, where, null)
			.setParameters(AD_Org_ID)
			.list();
		
		return list;
	}	//	getIEST
    
    /**
     * 
     * @param date
     * @return
     */
    public boolean isValidFromTo(Timestamp date)
	{
		Timestamp validFrom = getValidFrom();
		Timestamp validTo = getValidTo();
		
		if (validFrom != null && date.before(validFrom))
			return false;
		if (validTo != null && date.after(validTo))
			return false;
		return true;
	}

}
