package org.kenos.idempiere.lbr.base.swing.editor;

import java.awt.event.ActionEvent;
import java.beans.PropertyVetoException;
import java.util.logging.Level;

import org.compiere.apps.AEnv;
import org.compiere.apps.FieldRecordInfo;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MLocation;
import org.compiere.model.MLocationLookup;
import org.compiere.swing.CMenuItem;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Msg;

public class VLocation extends org.compiere.grid.ed.VLocation
{
	/**
	 * 	Serial ID
	 */
	private static final long serialVersionUID = 5428849884757643687L;

	private MLocationLookup		m_mLocation;
	private MLocation			m_value;
	private CMenuItem 			mDelete;
	private String				m_columnName;
	
	/** The Grid Field * */
	private GridField m_GridField; // added for processCallout
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(VLocation.class);
	
	public VLocation (GridTab gridTab, String columnName, boolean mandatory,
			boolean isReadOnly, boolean isUpdateable, MLocationLookup mLocation)
	{
		super (gridTab, columnName, mandatory, isReadOnly, isUpdateable, mLocation);
		//
		m_columnName = columnName;
		//
		m_mLocation = mLocation;
		mDelete = new CMenuItem(Msg.getMsg(Env.getCtx(), "Delete"), Env.getImageIcon ("Delete16.gif"));
	}	//	VLocation
	
	public VLocation (String columnName, boolean mandatory, boolean isReadOnly,
			boolean isUpdateable, MLocationLookup mLocation)
	{
		this (null, columnName, mandatory, isReadOnly, isUpdateable, mLocation);
	}	//	VLocation
	
	/**
	 *	Set Editor to value
	 *  @param value value
	 */
	public void setValue(Object value)
	{
		if (value == null)
		{
			m_value = null;
		}
		else
		{
			m_value = m_mLocation.getLocation(value, null);
		}
		super.setValue(value);
	}	//	setValue
	
	/**
	 *  Set Field/WindowNo for ValuePreference (NOP)
	 *  @param mField Model Field
	 */
	@Override
	public void setField (org.compiere.model.GridField mField)
	{
		m_GridField = mField;
		super.setField(mField);
	}   //  setField

	/**
	 *	ActionListener - Button - Start Dialog
	 *  @param e ActionEvent
	 */
	public void actionPerformed(ActionEvent e)
	{
		if (e.getActionCommand().equals(FieldRecordInfo.CHANGE_LOG_COMMAND))
		{
			FieldRecordInfo.start(m_GridField);
			return;
		}
		
		if (e.getSource() == mDelete)
			m_value = null;        //  create new
		//
		if (log.isLoggable(Level.CONFIG)) log.config( "actionPerformed - " + m_value);
		VLocationDialog ld = new VLocationDialog(AEnv.getFrame(this),
			Msg.getMsg(Env.getCtx(), "Location"), m_value, m_GridField);
		ld.setVisible(true);
		Object oldValue = getValue();
		m_value = ld.getValue();
		//
		if (e.getSource() == mDelete)
			;
		else if (!ld.isChanged())
			return;

		//	Data Binding
		try
		{
			int C_Location_ID = 0;
			if (m_value != null)
				C_Location_ID = m_value.getC_Location_ID();
			Integer ii = new Integer(C_Location_ID);
			
			if (C_Location_ID != 0)
				fireVetoableChange(m_columnName, oldValue, ii);
			setValue(ii);
		}
		catch (PropertyVetoException pve)
		{
			log.log(Level.SEVERE, "VLocation.actionPerformed", pve);
		}
	}	//	actionPerformed

	/**
	 *  Dispose
	 */
	@Override
	public void dispose()
	{
		m_GridField = null;
		super.dispose();
	}   //  dispose
}	//	VLocation
