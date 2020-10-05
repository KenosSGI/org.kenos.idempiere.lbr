package org.kenos.apps.form;

import java.math.BigDecimal;
import java.util.Properties;
import java.util.Vector;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.webui.component.Button;
import org.adempiere.webui.component.ConfirmPanel;
import org.adempiere.webui.component.Label;
import org.adempiere.webui.component.ListModelTable;
import org.adempiere.webui.component.Listbox;
import org.adempiere.webui.component.ListboxFactory;
import org.adempiere.webui.component.Textbox;
import org.adempiere.webui.editor.WSearchEditor;
import org.adempiere.webui.event.ValueChangeEvent;
import org.adempiere.webui.event.ValueChangeListener;
import org.adempiere.webui.event.WTableModelEvent;
import org.adempiere.webui.event.WTableModelListener;
import org.adempiere.webui.factory.ButtonFactory;
import org.adempiere.webui.panel.ADForm;
import org.adempiere.webui.panel.IFormController;
import org.adempiere.webui.session.SessionManager;
import org.adempiere.webui.util.ZKUpdateUtil;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.compiere.model.MLookup;
import org.compiere.model.MLookupFactory;
import org.compiere.process.ProcessInfo;
import org.compiere.util.CLogger;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;
import org.kenos.idempiere.lbr.nfe.zk.form.NotaFiscalAdditional;
import org.zkoss.zk.ui.Component;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zk.ui.event.Events;
import org.zkoss.zul.Groupbox;
import org.zkoss.zul.Separator;
import org.zkoss.zul.Space;

public class WNotaFiscalAdditional extends NotaFiscalAdditional implements IFormController, EventListener<Event>, ValueChangeListener, WTableModelListener 
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = 1L;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger (WNotaFiscalAdditional.class);
	
	/**	Panels			*/
	private ConfirmPanel confirmPanel = new ConfirmPanel(true);
	private Groupbox grpSelectionProd = new Groupbox();
	private Groupbox grpSelectionComp = new Groupbox();
	private Label l_help = new Label (Msg.getMsg (Env.getCtx(), "LBR_POGInvoiceHelp"));
	private Label lNotaFiscal = new Label();
	private WSearchEditor fNotaFiscal;
	private Label lOrder = new Label();
	private WSearchEditor fOrder;
	private Label lInOut = new Label();
	private WSearchEditor fInOut;
	private Label lType = new Label();
	private Listbox type = ListboxFactory.newDropdownListbox();
	private Button bSelectAllProd = ButtonFactory.createNamedButton("SelectAll", false, true);  
	private Boolean selectAllProd = false;
	private Label lCFOP = new Label();
	private Textbox tCFOP = new Textbox();
	private Button bCFOP = ButtonFactory.createNamedButton("Alterar CFOP", true, false);
	private Button bCleanAll = ButtonFactory.createNamedButton("Zerar Valores", true, false);
		
	@Override
	public ADForm getForm()
	{
		return this;
	}	//	getForm

	@Override
	protected void initForm()
	{
		log.info("");
		Env.setContext(Env.getCtx(), getWindowNo(), "IsSOTrx", "Y");
		
		try
		{
			lNotaFiscal.setText(Msg.translate(Env.getCtx(), "LBR_NotaFiscal_ID"));
			MLookup nfL = MLookupFactory.get (Env.getCtx(), this.getWindowNo(), 0, 1000557, DisplayType.Search);
			fNotaFiscal = new WSearchEditor ("LBR_NotaFiscal_ID", false, false, true, nfL);
			
			lOrder.setText(Msg.translate(Env.getCtx(), "C_Order_ID"));
			MLookup orderL = MLookupFactory.get (Env.getCtx(), this.getWindowNo(), 0, 2161, DisplayType.Search);
			fOrder = new WSearchEditor ("C_Order_ID", false, false, true, orderL);
			lOrder.setVisible(false);
			fOrder.setVisible(false);
			
			lInOut.setText(Msg.translate(Env.getCtx(), "M_InOut_ID"));
			MLookup inOutL = MLookupFactory.get (Env.getCtx(), this.getWindowNo(), 0, 3521, DisplayType.Search);
			fInOut = new WSearchEditor ("M_InOut_ID", false, false, true, inOutL);
			lInOut.setVisible(false);
			fInOut.setVisible(false);
			
			fNotaFiscal.addValueChangeListener(this);
			fOrder.addValueChangeListener(this);
			fInOut.addValueChangeListener(this);
			
			lType.setText(Msg.translate(Env.getCtx(), "LBR_AdditionalNFeType"));
			
			type.appendItem("NF-e Complementar", TYPE_NOTAFISCAL_ADDITIONAL_COMPLEMENTAR);
			type.appendItem("NF-e para Entregas Futuras", TYPE_NOTAFISCAL_ADDITIONAL_ENTREGAFUTURA);
			type.appendItem("NF-e Triangular", TYPE_NOTAFISCAL_ADDITIONAL_TRIANGULAR);
			type.appendItem("NF-e Anulação de Valores", TYPE_NOTAFISCAL_ADDITIONAL_ANULACAOVALORES);
			type.addEventListener(Events.ON_SELECT, this);
			
			lCFOP.setText(Msg.translate(Env.getCtx(), "LBR_CFOP_ID"));
			bCFOP.addEventListener(Events.ON_CLICK, this);
			bCleanAll.addEventListener(Events.ON_CLICK, this);
			lCFOP.setVisible(false);
			bCFOP.setVisible(false);
			tCFOP.setVisible(false);
			bCleanAll.setVisible(false);
			
			confirmPanel = new ConfirmPanel (true, true, false, false, false, false);
			
			//	Top Selection Panel
			grpSelectionProd.appendChild(l_help);
			grpSelectionProd.appendChild(new Separator());
			grpSelectionProd.appendChild(lType);
			grpSelectionProd.appendChild(new Space());
			grpSelectionProd.appendChild(type);
			grpSelectionProd.appendChild(new Space());
			// NF
			grpSelectionProd.appendChild(lNotaFiscal);
			grpSelectionProd.appendChild(new Space());
			ZKUpdateUtil.setHflex(fNotaFiscal.getComponent(), "min");
			fNotaFiscal.getComponent().setWidth("10px");
			grpSelectionProd.appendChild(fNotaFiscal.getComponent());
			grpSelectionProd.appendChild(new Space());
			// Order
			grpSelectionProd.appendChild(lOrder);
			grpSelectionProd.appendChild(new Space());
			ZKUpdateUtil.setHflex(fOrder.getComponent(), "min");
			fOrder.getComponent().setWidth("10px");
			grpSelectionProd.appendChild(fOrder.getComponent());
			grpSelectionProd.appendChild(new Space());
			// InOut
			grpSelectionProd.appendChild(lInOut);
			grpSelectionProd.appendChild(new Space());
			ZKUpdateUtil.setHflex(fInOut.getComponent(), "min");
			fInOut.getComponent().setWidth("10px");
			grpSelectionProd.appendChild(fInOut.getComponent());
			grpSelectionProd.appendChild(new Space());
			
			grpSelectionProd.appendChild(lCFOP);
			grpSelectionProd.appendChild(new Space());
			grpSelectionProd.appendChild(tCFOP);
			grpSelectionProd.appendChild(new Space());
			grpSelectionProd.appendChild(bCFOP);
			//
			grpSelectionProd.appendChild(new Separator());
			grpSelectionProd.appendChild(miniTableNF);
			
			//	Center
			createMainPanel ();
//			updatePackageWeight ();

			confirmPanel.addActionListener(Events.ON_CLICK, this);
			bSelectAllProd.addEventListener(Events.ON_CLICK, this);
		}
		catch(Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
	}	//	initForm

	/**
	 * 	Create the main panel and result grid
	 */
	private void createMainPanel ()
	{
		this.appendChild(new Separator());
		this.appendChild(grpSelectionProd);
		grpSelectionProd.appendChild(bSelectAllProd);
		grpSelectionProd.appendChild(new Space());
		bCleanAll.setSclass("confirm-panel-right");
		grpSelectionProd.appendChild(bCleanAll);
		this.appendChild(new Separator());		
		this.appendChild(confirmPanel);
		this.appendChild(new Separator());
		this.setBorder("normal");
		this.setContentStyle("overflow: auto");
		//		
		l_help.setMultiline(true);
	}	//	createMainPanel
	
	private void createLinesGrid ()
	{
		createLinesGrid (TYPE_NOTAFISCAL_ADDITIONAL_COMPLEMENTAR);
	}
	
	/**
	 * 	Create the Production Grid
	 */
	private void createLinesGrid (String typeSelected)
	{
		Properties ctx = Env.getCtx ();
		//
		Vector<String> columnNames = new Vector<String>();
		columnNames.add (Msg.translate(ctx, "Select"));
		columnNames.add (Msg.translate(ctx, "Line"));
		columnNames.add (Msg.translate(ctx, "ProductName"));
		columnNames.add (Msg.translate(ctx, "CFOP Linha"));
		columnNames.add (Msg.translate(ctx, "Qty"));
		columnNames.add (Msg.translate(ctx, "Price"));
		columnNames.add (Msg.translate(ctx, "GrandTotal"));
		columnNames.add (Msg.translate(ctx, "lbr_TaxBaseAmt") + " - ICMS");
		columnNames.add (Msg.translate(ctx, "lbr_TaxRate") + " - ICMS");
		columnNames.add (Msg.translate(ctx, "lbr_TaxAmt") + " - ICMS");
		columnNames.add (Msg.translate(ctx, "DocStatus"));

		//	Clear
		miniTableNF.clear();
		
		//  Remove previous listeners
		miniTableNF.getModel().removeTableModelListener(this);
		
		//  Set Model
		ListModelTable modelI;
		
		if (typeSelected == null ||
				TYPE_NOTAFISCAL_ADDITIONAL_COMPLEMENTAR.equals(typeSelected) ||
					TYPE_NOTAFISCAL_ADDITIONAL_ANULACAOVALORES.equals(typeSelected))
		{	
			modelI = new ListModelTable(getNFLineData());
			modelI.addTableModelListener(this);
			miniTableNF.setData(modelI, columnNames);
		}
		else if (TYPE_NOTAFISCAL_ADDITIONAL_TRIANGULAR.equals(typeSelected))
		{	
			modelI = new ListModelTable(getOrderLineData());
			modelI.addTableModelListener(this);
			miniTableNF.setData(modelI, columnNames);
		}
		else if (TYPE_NOTAFISCAL_ADDITIONAL_ENTREGAFUTURA.equals(typeSelected))
		{	
			modelI = new ListModelTable(getInOutLineData());
			modelI.addTableModelListener(this);
			miniTableNF.setData(modelI, columnNames);
		}
		//
		int index=0;
		miniTableNF.setColumnClass (index++, Boolean.class, false);		//  0-Selection
		miniTableNF.setColumnClass (index++, KeyNamePair.class, true); 	//  1-Line
		miniTableNF.setColumnClass (index++, String.class, true);		//  2-Product
		miniTableNF.setColumnClass (index++, String.class, false);		//  3-CFOP
		miniTableNF.setColumnClass (index++, BigDecimal.class, true);	//  4-Qty
		miniTableNF.setColumnClass (index++, BigDecimal.class, true);	//  5-Price
		miniTableNF.setColumnClass (index++, BigDecimal.class, true);	//  6-GrandTotal
		miniTableNF.setColumnClass (index++, BigDecimal.class, false);	//  7-Tax Base Amt
		miniTableNF.setColumnClass (index++, BigDecimal.class, false);	//  8-Tax Rate Amt
		miniTableNF.setColumnClass (index++, BigDecimal.class, false);	//  9-Tax Amt
		miniTableNF.setColumnClass (index++, String.class, true);		//  10-DocStatus
		
		selectAllProd = false;
	}	//	createProductionGrid
	
	/**
	 * 
	 */
	public void clear()
	{
		fNotaFiscal.setValue("");
		fOrder.setValue("");
		fInOut.setValue("");
		miniTableNF.clear();
		grpSelectionComp.setVisible(false);
		lCFOP.setVisible(false);
		bCFOP.setVisible(false);
		tCFOP.setVisible(false);
		bCleanAll.setVisible(false);		
		m_LBR_NotaFiscal_ID = -1;
		m_C_Order_ID = -1;
		m_M_InOut_ID = -1;
	}

	/**
	 * 	Process Events
	 * 
	 * @param event
	 * @throws Exception
	 */
	@Override
	public void onEvent(Event e) throws Exception
	{
		Component comp = e.getTarget();
		String eventName = e.getName();
		if (log.isLoggable(Level.CONFIG)) log.config(eventName);
		
		//	Event source
		Object source = e.getTarget();
		
		String typenf = String.valueOf(type.getSelectedItem());
		
		int NotaFiscal_ID = (m_LBR_NotaFiscal_ID != null && (Integer)m_LBR_NotaFiscal_ID > 0 ? (Integer)m_LBR_NotaFiscal_ID: 0);
		
		//	All clicks events
		if (Events.ON_CLICK.equals(eventName))
		{
			if (confirmPanel.getButton(ConfirmPanel.A_OK).equals(source))
			{
				if (NotaFiscal_ID > 0)
				{
					if (TYPE_NOTAFISCAL_ADDITIONAL_COMPLEMENTAR.equals(typenf))
						NotaFiscal_ID = generateNFComplementar();
					else if (TYPE_NOTAFISCAL_ADDITIONAL_ENTREGAFUTURA.equals(typenf))
						NotaFiscal_ID = generateNFEntregaFutura();
					else if (TYPE_NOTAFISCAL_ADDITIONAL_TRIANGULAR.equals(typenf))
						NotaFiscal_ID = generateNFTrinagular();
					else if (TYPE_NOTAFISCAL_ADDITIONAL_ANULACAOVALORES.equals(typenf))
						NotaFiscal_ID = generateNFComplementar();				
					
					openNFAdditional(NotaFiscal_ID);
					
					clear();
					NotaFiscal_ID = 0;

				}
				else
				{	
					clear();
					return;
				}	
				
			}
			else if (confirmPanel.getButton(ConfirmPanel.A_CANCEL).equals(source))
			{
				SessionManager.getAppDesktop().closeActiveWindow();
			}
			else if (confirmPanel.getButton(ConfirmPanel.A_REFRESH).equals(source))
			{
				//	Refresh
				createLinesGrid (typenf);
			}
			else if (bCFOP.equals(source))
			{
				//	Validar CFOP no formato 5.555
				if (!tCFOP.getText().isEmpty() && tCFOP.getText().matches("^[0-9]{1}.[0-9]{3}"))
				{	
					for (int i = 0; i < miniTableNF.getItemCount(); i++)
	    			{
						miniTableNF.setValueAt(tCFOP.getText(), i, 3);
	    			}
				}
				else
					throw new AdempiereException("CFOP Inválido");
			}			
			else if (bCleanAll.equals(source))
			{
				for (int i = 0; i < miniTableNF.getItemCount(); i++)
    			{
					miniTableNF.setValueAt("0", i, 5);
					miniTableNF.setValueAt("0", i, 6);
					miniTableNF.setValueAt("0", i, 7);
					miniTableNF.setValueAt("0", i, 8);
					miniTableNF.setValueAt("0", i, 9);
    			}
			}
			else  if(eventName.equals(Events.ON_CLICK))
	        {
	    		if (comp == bSelectAllProd)
	    		{
	    			selectAllProd = (selectAllProd ? false : true);
	    			for (int i = 0; i < miniTableNF.getItemCount(); i++)
	    			{
	    				miniTableNF.setValueAt(new Boolean (selectAllProd), i, 0);
	    			}
	    		}   		
	        }
		}
		else if (eventName.equals(Events.ON_SELECT))
		{
			if (TYPE_NOTAFISCAL_ADDITIONAL_COMPLEMENTAR.equals(typenf)
					|| TYPE_NOTAFISCAL_ADDITIONAL_ANULACAOVALORES.equals(typenf))
			{	
				lNotaFiscal.setVisible(true);
				fNotaFiscal.setVisible(true);
				lOrder.setVisible(false);
				fOrder.setVisible(false);
				lInOut.setVisible(false);
				fInOut.setVisible(false);
				clear();
				
			}
			else if (TYPE_NOTAFISCAL_ADDITIONAL_ENTREGAFUTURA.equals(typenf))
			{	
				lNotaFiscal.setVisible(false);
				fNotaFiscal.setVisible(false);
				lOrder.setVisible(false);
				fOrder.setVisible(false);
				lInOut.setVisible(true);
				fInOut.setVisible(true);
				clear();
			}
			else if (TYPE_NOTAFISCAL_ADDITIONAL_TRIANGULAR.equals(typenf))
			{	
				lNotaFiscal.setVisible(false);
				fNotaFiscal.setVisible(false);
				lOrder.setVisible(true);
				fOrder.setVisible(true);
				lInOut.setVisible(false);
				fInOut.setVisible(false);
				clear();
			}
			else
			{
				lNotaFiscal.setVisible(false);
				fNotaFiscal.setVisible(false);
				lOrder.setVisible(false);
				fOrder.setVisible(false);
				lInOut.setVisible(false);
				fInOut.setVisible(false);
				clear();
			}
			
			clear();
		}
	}	//	onEvent	
		
	/**
	 * 	When setting process info
	 */
	@Override
	public void setProcessInfo (ProcessInfo pi)
	{
		super.setProcessInfo(pi);
		//
		if (pi != null && pi.getRecord_ID() > 0 
				&& pi.getTable_ID() == MLBRNotaFiscal.Table_ID)
		{
			m_LBR_NotaFiscal_ID = pi.getRecord_ID();
			//
			createLinesGrid ();
		}
	}	//	setProcessInfo

	
	 /**	Value Change Listener - requery
	 *  @param e event
	 */
	public void valueChange(ValueChangeEvent e)
	{
		if (log.isLoggable(Level.INFO)) log.info(e.getPropertyName() + "=" + e.getNewValue());
		
		String typenf = String.valueOf(type.getSelectedItem());
		
		if (e.getPropertyName().equals("LBR_NotaFiscal_ID"))
		{
			m_LBR_NotaFiscal_ID = e.getNewValue();
			fNotaFiscal.setValue(m_LBR_NotaFiscal_ID);	//	display value
			
			if (m_LBR_NotaFiscal_ID == null)
			{
				grpSelectionComp.setVisible(false);
				lCFOP.setVisible(false);
				bCFOP.setVisible(false);
				tCFOP.setVisible(false);
				bCleanAll.setVisible(false);
				return;
			}	
			
			lCFOP.setVisible(true);
			bCFOP.setVisible(true);
			tCFOP.setVisible(true);
			bCleanAll.setVisible(true);
			
			//
			createLinesGrid (typenf);
		}
		else if (e.getPropertyName().equals("C_Order_ID"))
		{
			m_C_Order_ID = e.getNewValue();
			fOrder.setValue(m_C_Order_ID);	//	display value
			
			if (m_C_Order_ID == null)
			{	
				grpSelectionComp.setVisible(false);
				lCFOP.setVisible(false);
				bCFOP.setVisible(false);
				tCFOP.setVisible(false);
				bCleanAll.setVisible(false);
				return;
			}	
			
			lCFOP.setVisible(true);
			bCFOP.setVisible(true);
			tCFOP.setVisible(true);
			bCleanAll.setVisible(true);
			
			//
			createLinesGrid (typenf);
		}
		else if (e.getPropertyName().equals("M_InOut_ID"))
		{
			m_M_InOut_ID = e.getNewValue();
			fInOut.setValue(m_M_InOut_ID);	//	display value
			
			if (m_M_InOut_ID == null)
			{	
				grpSelectionComp.setVisible(false);
				lCFOP.setVisible(false);
				bCFOP.setVisible(false);
				tCFOP.setVisible(false);
				bCleanAll.setVisible(false);
				return;
			}	
			
			lCFOP.setVisible(true);
			bCFOP.setVisible(true);
			tCFOP.setVisible(true);
			bCleanAll.setVisible(true);
			
			//
			createLinesGrid (typenf);
		}
	}	//	vetoableChange

	/**
	 * 
	 */
	public void tableChanged(WTableModelEvent event)
	{
		
			
	}	
}
