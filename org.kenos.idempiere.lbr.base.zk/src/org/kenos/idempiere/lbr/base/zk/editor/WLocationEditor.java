package org.kenos.idempiere.lbr.base.zk.editor;

import java.util.logging.Level;

import org.adempiere.webui.LayoutUtils;
import org.adempiere.webui.event.DialogEvents;
import org.adempiere.webui.event.ValueChangeEvent;
import org.compiere.model.GridField;
import org.compiere.model.MLocation;
import org.compiere.model.MLocationLookup;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.kenos.idempiere.lbr.base.zk.window.WLocationDialog;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zk.ui.event.Events;
import org.zkoss.zk.ui.event.OpenEvent;

/**
 * 		WLocationEditor
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: WLocationEditor.java, v1.0 2017/09/06 3:17:03 PM, ralexsander Exp $
 */
public class WLocationEditor extends org.adempiere.webui.editor.WLocationEditor
{
	public WLocationEditor (GridField gridField)
	{
		super (gridField);
		m_Location = (MLocationLookup)gridField.getLookup();
	}	//	WLocationEditor
	
	public WLocationEditor (String columnName, boolean mandatory, boolean isReadOnly,
			boolean isUpdateable, MLocationLookup mLocation)
	{
		super (columnName, mandatory, isReadOnly, isUpdateable, mLocation);
		m_Location = mLocation;
	}	//	WLocationEditor

    private static CLogger 		log = CLogger.getCLogger(WLocationEditor.class);
    private MLocationLookup     m_Location;
	private MLocation           m_value;
	
	@Override
    public void setValue(Object value)
    {
        if (value == null)
        {
            m_value = null;
            getComponent().setText(null);
        }
        else
        {
        	String trxName = null; // could be null if called from a form
        	if (this.gridField != null)
        		trxName = this.gridField.getGridTab().getTableModel().get_TrxName();

            m_value = m_Location.getLocation(value, trxName);
            if (m_value == null)
                getComponent().setText("<" + value + ">");
            else
                getComponent().setText(m_value.toString());
        }
    }
	
	@Override
	public void onEvent(Event event) throws Exception
	{
		if ("onClick".equals(event.getName()))
		{
			if (log.isLoggable(Level.CONFIG))	log.config("actionPerformed - " + m_value);
			final WLocationDialog ld = new WLocationDialog(Msg.getMsg(Env.getCtx(), "Location"), m_value, gridField);
			
			ld.addEventListener (DialogEvents.ON_WINDOW_CLOSE,
					new EventListener<Event>()
					{
						@Override
						public void onEvent(Event event) throws Exception
						{
							getComponent().getTextbox().focus();
							m_value = ld.getValue();
							//
							if (!ld.isChanged())
								return;

							// Data Binding
							int C_Location_ID = 0;
							if (m_value != null)
								C_Location_ID = m_value.getC_Location_ID();
							Integer ii = new Integer(C_Location_ID);
							
							// force Change - user does not realize that
							// embedded object is already saved.
							ValueChangeEvent valuechange = new ValueChangeEvent(WLocationEditor.this, getColumnName(), null, null);
							fireValueChange(valuechange); // resets m_mLocation
							if (C_Location_ID != 0)
							{
								ValueChangeEvent vc = new ValueChangeEvent(WLocationEditor.this, getColumnName(), null, ii);
								fireValueChange(vc);
							}
							setValue(ii);
						}
					});
			ld.addEventListener(Events.ON_OPEN, new EventListener<OpenEvent>()
			{
				@Override
				public void onEvent(OpenEvent event) throws Exception
				{
					if (!event.isOpen() && !ld.isOnSaveError())
					{
						ld.detach();
					}
				}
			});
			ld.setTitle(null);
			LayoutUtils.openPopupWindow(getComponent(), ld);
		}
	}
}	//	WLocationEditor
