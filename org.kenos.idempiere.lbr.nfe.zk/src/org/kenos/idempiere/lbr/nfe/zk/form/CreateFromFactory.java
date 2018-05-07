package org.kenos.idempiere.lbr.nfe.zk.form;

import org.adempierelbr.model.MLBRNFeLot;
import org.adempierelbr.webui.apps.form.WCreateFromNFeLotUI;
import org.compiere.grid.ICreateFrom;
import org.compiere.grid.ICreateFromFactory;
import org.compiere.model.GridTab;
import org.compiere.model.MInOut;
import org.compiere.model.MInvoice;

/**
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: CreateFromFactory.java, v1.0 2017/08/28 6:32:03 PM, ralexsander Exp $
 */
public class CreateFromFactory implements ICreateFromFactory
{
	@Override
	public ICreateFrom create(GridTab mTab)
	{
		int AD_Table_ID = mTab.getAD_Table_ID();
		if (MLBRNFeLot.Table_ID == AD_Table_ID)
			return new WCreateFromNFeLotUI(mTab);
		if (MInvoice.Table_ID == AD_Table_ID)
			return new WCreateFromInvoiceUI(mTab);
		if (MInOut.Table_ID == AD_Table_ID)
			return new WCreateFromShipmentUI(mTab);
		return null;
	}	//	create
}	//	CreateFromFactory
