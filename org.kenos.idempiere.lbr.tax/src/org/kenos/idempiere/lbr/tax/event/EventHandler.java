package org.kenos.idempiere.lbr.tax.event;

import org.adempiere.base.event.AbstractEventHandler;
import org.adempiere.base.event.IEventTopics;
import org.adempiere.model.POWrapper;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.compiere.model.MBPartner;
import org.compiere.model.MUser;
import org.compiere.model.PO;
import org.osgi.service.event.Event;

/**
 * 		OSGi Events Handler
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: EventHandler.java, v1.0 2018/08/03 17:56:57 AM, ralexsander Exp $
 */
public class EventHandler extends AbstractEventHandler
{
	/**
	 * 	Register to receive OSGi Events
	 */
	@Override
	protected void initialize()
	{
		registerTableEvent (IEventTopics.PO_AFTER_NEW, MBPartner.Table_Name);
		registerTableEvent (IEventTopics.PO_BEFORE_CHANGE, MBPartner.Table_Name);
	}	//	initialize
	
	/**
	 * 	Handle all events
	 * 	@param event
	 */
	@Override
	protected void doHandleEvent (Event event)
	{
		PO po = getPO (event);
		String topic = event.getTopic();
		//
		if (MBPartner.Table_Name.equals (po.get_TableName ()))
			doHandleEvent ((MBPartner) po, topic);
	}	//	doHandleEvent
	
	/**
	 * 	Handle BPartner events
	 * 	@param bp
	 * 	@param topic
	 */
	private void doHandleEvent (MBPartner bp, String topic)
	{
		I_W_C_BPartner bpW = POWrapper.create (bp, I_W_C_BPartner.class);
		
		//	Do nothing if it's not PF
		if (!I_W_C_BPartner.LBR_BPTYPEBR_PF_Individual.equals (bpW.getlbr_BPTypeBR ()))
			return;
		
		//	Load contacts
		MUser[] contacts = bp.getContacts (false);
		
		//	None found		
		if (contacts.length == 0)
		{
			MUser user = new MUser (bp);
			//
			if (bpW.getLBR_EMailNFe() != null && !bpW.getLBR_EMailNFe().isEmpty())
				user.setEMail(bpW.getLBR_EMailNFe());
			user.save();
			
			//	Record just created, return
			return;
		}
		
		//	Change does not affect user
		if (!bp.is_ValueChanged(MBPartner.COLUMNNAME_Name)
				&& !bp.is_ValueChanged(I_W_C_BPartner.COLUMNNAME_LBR_EMailNFe))
			return;
		
		//	Only 1 contact, should be the same as BP
		if (contacts.length == 1)
		{
			MUser user = contacts[0];
			//
			user.setName(bp.getName());
			user.setEMail(bpW.getLBR_EMailNFe());
			user.save();
		}
	}	//	doHandleEvent
}	//	EventHandler
