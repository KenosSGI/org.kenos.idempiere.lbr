package org.adempierelbr.webui.editor;

import org.adempiere.util.Callback;
import org.adempiere.webui.editor.WEditor;
import org.adempiere.webui.editor.WEditorPopupMenu;
import org.adempiere.webui.event.ContextMenuEvent;
import org.adempiere.webui.event.ContextMenuListener;
import org.adempiere.webui.event.ValueChangeEvent;
import org.adempiere.webui.theme.ThemeManager;
import org.adempiere.webui.window.WFieldRecordInfo;
import org.adempierelbr.model.MLBRTax;
import org.adempierelbr.model.MLBRTaxesLookup;
import org.adempierelbr.model.X_LBR_Tax;
import org.adempierelbr.webui.component.Taxesbox;
import org.adempierelbr.webui.window.WTaxesDialog;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.Util;
import org.zkoss.zk.au.out.AuScript;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.Events;
import org.zkoss.zk.ui.util.Clients;
import org.zkoss.zul.Menuitem;

public class WTaxesEditor extends WEditor implements ContextMenuListener
{
	private Object m_value;
	private MLBRTaxesLookup m_Taxes;
	private Menuitem prefItem;
	/**
     * 
     * @param gridField
     */
    public WTaxesEditor(GridTab gridTab, GridField gridField) {
		super(new Taxesbox(), gridField);
		m_Taxes = (MLBRTaxesLookup)gridField.getLookup();
		init();
	}
    
    private void init()
    {
    	getComponent().setButtonImage(ThemeManager.getThemeResource("images/Editor16.png"));   
    	getComponent().getTextbox().setReadonly(true);
		getComponent().addEventListener(Events.ON_CLICK, this);
    	
    	popupMenu = new WEditorPopupMenu(false, false, false);
    	popupMenu.addMenuListener(this);
    	addChangeLogMenu(popupMenu);
    	
    	prefItem = new Menuitem();
        prefItem.setAttribute(WEditorPopupMenu.EVENT_ATTRIBUTE, WEditorPopupMenu.PREFERENCE_EVENT);
        prefItem.setLabel(Util.cleanAmp(Msg.getMsg(Env.getCtx(), "Delete")).intern());
        if (ThemeManager.isUseFontIconForImage())
        	prefItem.setIconSclass("z-icon-Delete");
        else
        	prefItem.setImage(ThemeManager.getThemeResource("images/Delete16.png"));
        prefItem.addEventListener(Events.ON_CLICK, this);
        popupMenu.appendChild(prefItem);
    }
	
	@Override
	public void onEvent(Event event) throws Exception {
		if (Events.ON_CHANGE.equals(event.getName()) || Events.ON_OK.equals(event.getName()))
		{
			String newText = getComponent().getText();
			String oldText = null;
			if (m_value != null)
			{
				oldText = m_Taxes.getDisplay(m_value);
			}
			if (oldText != null && newText != null && oldText.equals(newText))
			{
	    	    return;
	    	}
	        if (oldText == null && newText == null)
	        {
	        	return;
	        }
			ValueChangeEvent changeEvent = new ValueChangeEvent(this, this.getColumnName(), oldText, newText);
			fireValueChange(changeEvent);
		}
		else if (Events.ON_CLICK.equals(event.getName()))
		{
			if (event.getTarget() == prefItem)
			{
				if (m_value != null)
				{
					MLBRTax tax = (MLBRTax) m_value;
					tax.deleteLines();
					tax.setDescription();
					tax.save();
					
					Integer LBR_Tax_ID = tax.getLBR_Tax_ID();

					// set & redisplay
					setValue(null);
					
					//	we need always fire an event, to UI be updated
					ValueChangeEvent changeEvent = new ValueChangeEvent(WTaxesEditor.this, getColumnName(), LBR_Tax_ID, null);
					fireValueChange(changeEvent);
					
					//	Mandatory can't be null
					if (isMandatory())
					{
						changeEvent = new ValueChangeEvent(WTaxesEditor.this, getColumnName(), LBR_Tax_ID, LBR_Tax_ID);
						fireValueChange(changeEvent);
					}
				}
			}
			else
				cmd_dialog();
		}
	}
	
	/**
	 *  Start dialog
	 */
	private void cmd_dialog()
	{
		new WTaxesDialog (gridField.getHeader(), (MLBRTax)m_value, new Callback<Integer>() {
			
			@Override
			public void onCallback(Integer result) {
				Integer newValue = result;
				
				boolean changed = true;
				if (newValue == null) 
				{
					if (m_value == null) 
						changed = false;
				}

				if (changed)
				{
					final Object oldValue = m_value;
	
					// set & redisplay
					setValue(newValue);
					ValueChangeEvent changeEvent = new ValueChangeEvent(WTaxesEditor.this, getColumnName(), oldValue, newValue);
					fireValueChange(changeEvent);
				}
				
				// safety check: if focus is going no where, focus back to self
				String uid = getComponent().getTextbox().getUuid();
				String script = "setTimeout(function(){try{var e = zk.Widget.$('#" + uid +
						"').$n(); if (jq(':focus').size() == 0) e.focus();} catch(error){}}, 100);";
				Clients.response(new AuScript(script));
			}
		});
	}

	@Override
	public void onMenu(ContextMenuEvent evt) {
		if (WEditorPopupMenu.CHANGE_LOG_EVENT.equals(evt.getContextEvent()))
		{
			WFieldRecordInfo.start(gridField);
		}
	}
	
	@Override
	public void setReadWrite(boolean readWrite) {
		getComponent().setEnabled(readWrite);
	}
	
	@Override
	public Taxesbox getComponent()
	{
		return (Taxesbox) component;
	}

	@Override
	public boolean isReadWrite() {
		return false;
	}

	@Override
	public void setValue(Object value) {
		if (value == null)
		{
			m_value = null;
			getComponent().setText(null);
		}
		else
		{
			m_value = m_Taxes.getTax(value, null);
			if (m_value == null)
				getComponent().setText("<" + value + ">");
			else
				getComponent().setText(((MLBRTax) m_value).getDescription());
		}		
	}

	@Override
	public Object getValue() {
		if (m_value == null)
            return null;
		
		return ((MLBRTax) m_value).getLBR_Tax_ID();
	}

	@Override
	public String getDisplay() {
		return getComponent().getText();
	}
	
	@Override
	public boolean isSearchable() {
		return false;
	}

}
