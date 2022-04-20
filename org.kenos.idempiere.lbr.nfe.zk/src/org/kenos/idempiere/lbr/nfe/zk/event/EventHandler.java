package org.kenos.idempiere.lbr.nfe.zk.event;

import java.util.List;
import java.util.Properties;
import java.util.stream.Collectors;

import org.adempiere.base.event.AbstractEventHandler;
import org.adempiere.base.event.IEventTopics;
import org.adempiere.webui.window.FDialog;
import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.Query;
import org.compiere.util.Env;
import org.osgi.service.event.Event;

/**
 * 		OSGi Events Handler
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: EventHandler.java, v1.0 2021/07/24 14:56:57 AM, ralexsander Exp $
 */
public class EventHandler extends AbstractEventHandler
{
	/**
	 * 	Register to receive OSGi Events
	 */
	@Override
	protected void initialize()
	{
		registerEvent (IEventTopics.AFTER_LOGIN);
	}	//	initialize
	
	/**
	 * 	Handle all events
	 * 	@param event
	 */
	@Override
	protected void doHandleEvent (Event event)
	{
		//	Event Topic
		String topic = event.getTopic();
		
		//	Just Login
		if (IEventTopics.AFTER_LOGIN.equals(topic))
		{
			doHandleLoginEvent (event);
			return;
		}
	}	//	doHandleEvent
	
	/**
	 *	Check certification validation
	 */
	private void doHandleLoginEvent (Event event)
	{
		Properties ctx = Env.getCtx();
		int AD_User_ID = Env.getAD_User_ID(ctx);
		
		String sql = MLBRDigitalCertificate.COLUMNNAME_lbr_CertType + "!=? AND " 
				+  MLBRDigitalCertificate.COLUMNNAME_ValidTo + "< SYSDATE+30 AND " 
				+  MLBRDigitalCertificate.COLUMNNAME_ValidTo + "> SYSDATE-365 AND (" 
				+ MLBRDigitalCertificate.COLUMNNAME_AD_User_ID + "=? OR EXISTS (SELECT 1 FROM AD_User_Roles ur "
				+ "WHERE ur.IsActive='Y' AND ur.AD_User_ID=? AND ur.AD_Role_ID=LBR_DigitalCertificate.AD_Role_ID))";
		
		List<MLBRDigitalCertificate> list = new Query (ctx, MLBRDigitalCertificate.Table_Name, sql, null)
			.setParameters(MLBRDigitalCertificate.LBR_CERTTYPE_ICPTrustStoreJKS, AD_User_ID, AD_User_ID)
			.setClient_ID().setOnlyActiveRecords(true)
			.setOrderBy(MLBRDigitalCertificate.COLUMNNAME_ValidTo + " DESC")
			.list();	
		
		//	nothing to show
		if (list.size() < 1)
			return;
		
		String result = list.stream().limit(5)
			.map(c -> c.getName() + " [ " + TextUtil.timeToString(c.getValidTo(), "dd/MM/yyyy") + " ]")
			.collect(Collectors.joining("\n"));
		if (list.size() > 5)
			result += ", e mais " + (list.size() - 5) + ".";
		
		FDialog.warn (0, null, "", "Os certificados abaixo estão vencidos ou irão vencer nos próximos 30 dias:\n\n" + result);
	}	//	doHandleLoginEvent
}	//	EventHandler
