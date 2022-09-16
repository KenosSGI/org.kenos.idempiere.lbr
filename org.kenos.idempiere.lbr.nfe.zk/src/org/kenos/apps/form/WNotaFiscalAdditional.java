package org.kenos.apps.form;

import java.math.BigDecimal;
import java.util.Properties;
import java.util.Vector;
import java.util.logging.Level;

import org.adempiere.webui.apps.AEnv;
import org.adempiere.webui.component.Button;
import org.adempiere.webui.component.ConfirmPanel;
import org.adempiere.webui.component.Label;
import org.adempiere.webui.component.ListModelTable;
import org.adempiere.webui.component.Listbox;
import org.adempiere.webui.component.ListboxFactory;
import org.adempiere.webui.editor.WEditor;
import org.adempiere.webui.editor.WSearchEditor;
import org.adempiere.webui.editor.WebEditorFactory;
import org.adempiere.webui.event.ValueChangeEvent;
import org.adempiere.webui.event.ValueChangeListener;
import org.adempiere.webui.event.WTableModelEvent;
import org.adempiere.webui.event.WTableModelListener;
import org.adempiere.webui.factory.ButtonFactory;
import org.adempiere.webui.panel.ADForm;
import org.adempiere.webui.panel.IFormController;
import org.adempiere.webui.session.SessionManager;
import org.adempiere.webui.util.ZKUpdateUtil;
import org.adempiere.webui.window.FDialog;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.GridWindow;
import org.compiere.model.GridWindowVO;
import org.compiere.model.MLookup;
import org.compiere.model.MLookupFactory;
import org.compiere.process.ProcessInfo;
import org.compiere.util.CLogger;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.kenos.idempiere.lbr.nfe.zk.form.NotaFiscalAdditional;
import org.zkoss.zk.ui.Component;
import org.zkoss.zk.ui.HtmlBasedComponent;
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
	private WSearchEditor fCFOP;
	private Label lBP = new Label();
	private WEditor fBP;
	private Label lBPLocation = new Label();
	private WEditor fBPLocation;
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
			// Model
			int AD_Window_ID = 1000015;
			GridWindowVO wVO = AEnv.getMWindowVO (m_WindowNo, AD_Window_ID, 0);
			
			if (wVO == null)
				return;
			
			// Force window/tab to be read-only
			wVO.WindowType = GridWindowVO.WINDOWTYPE_QUERY;
			wVO.Tabs.get(1).IsReadOnly = true;
			GridWindow m_mWindow = new GridWindow (wVO);
			GridTab m_mTab = m_mWindow.getTab(0);
			
			// Make sure is the tab is loaded - teo_sarca [ 1659124 ]
			if (!m_mTab.isLoadComplete())
				m_mWindow.initTab(0);
			
			// Grid restrictions
			m_mTab.getField("AD_Client_ID").setDisplayed(false);
			
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
			
			lCFOP.setText(Msg.translate(Env.getCtx(), "LBR_CFOP_ID"));
			MLookup cfopL = MLookupFactory.get (Env.getCtx(), this.getWindowNo(), 0, 1000561, DisplayType.Search);
			fCFOP = new WSearchEditor ("LBR_CFOP_ID", false, false, true, cfopL);
			fCFOP.setVisible(false);
			fCFOP.setVisible(false);
			
			lBP.setText(Msg.translate(Env.getCtx(), "C_BPartner_ID"));
			GridField field = m_mTab.getField("C_BPartner_ID");
			fBP = WebEditorFactory.getEditor(field, false);
			fBP.setVisible(false);
			fBP.setVisible(false);
			
			lBPLocation.setText(Msg.translate(Env.getCtx(), "C_BPartner_Location_ID"));
			field = m_mTab.getField("C_BPartner_Location_ID");
			fBPLocation = WebEditorFactory.getEditor(field, false);
			fBPLocation.setVisible(false);
			fBPLocation.setVisible(false);
			
			
			// MField => VEditor
			field.addPropertyChangeListener(fBPLocation);
			
			
			fNotaFiscal.addValueChangeListener(this);
			fOrder.addValueChangeListener(this);
			fInOut.addValueChangeListener(this);
			fCFOP.addValueChangeListener(this);
			fBP.addValueChangeListener(this);
			fBPLocation.addValueChangeListener(this);
			
			lType.setText(Msg.translate(Env.getCtx(), "LBR_AdditionalNFeType"));
			
			type.appendItem("NF-e Complementar", TYPE_NOTAFISCAL_ADDITIONAL_COMPLEMENTAR);
			type.appendItem("NF-e para Entregas Futuras", TYPE_NOTAFISCAL_ADDITIONAL_ENTREGAFUTURA);
			type.appendItem("NF-e Triangular", TYPE_NOTAFISCAL_ADDITIONAL_TRIANGULAR);
			type.appendItem("NF-e Anulação de Valores", TYPE_NOTAFISCAL_ADDITIONAL_ANULACAOVALORES);
			type.appendItem("NF-e Adicional", TYPE_NOTAFISCAL_ADDITIONAL);
			type.addEventListener(Events.ON_SELECT, this);
			
			bCleanAll.addEventListener(Events.ON_CLICK, this);
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

			// CFOP
			grpSelectionProd.appendChild(new Separator());
			grpSelectionProd.appendChild(lCFOP);
			grpSelectionProd.appendChild(new Space());
			ZKUpdateUtil.setHflex(fCFOP.getComponent(), "min");
			fOrder.getComponent().setWidth("10px");
			grpSelectionProd.appendChild(fCFOP.getComponent());
			grpSelectionProd.appendChild(new Space());

			// BP
			grpSelectionProd.appendChild(lBP);
			grpSelectionProd.appendChild(new Space());
			grpSelectionProd.appendChild(fBP.getComponent());
			if (fBP.getComponent() instanceof HtmlBasedComponent)
				ZKUpdateUtil.setHflex((HtmlBasedComponent) fBP.getComponent(), "min");
			grpSelectionProd.appendChild(new Space());

			// Location
			grpSelectionProd.appendChild(lBPLocation);
			grpSelectionProd.appendChild(new Space());
			grpSelectionProd.appendChild(fBPLocation.getComponent());
			if (fBP.getComponent() instanceof HtmlBasedComponent)
				ZKUpdateUtil.setHflex((HtmlBasedComponent) fBPLocation.getComponent(), "min");
			grpSelectionProd.appendChild(new Space());
			
			//
			grpSelectionProd.appendChild(new Separator());
			grpSelectionProd.appendChild(miniTableNF);
			
			//	Center
			createMainPanel ();

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
		columnNames.add (" ");
		columnNames.add ("Linha");
		columnNames.add (Msg.translate(ctx, "ProductName"));
		columnNames.add ("CFOP_");
		columnNames.add (Msg.translate(ctx, "Qty"));
		columnNames.add (Msg.translate(ctx, "PriceActual"));
		columnNames.add (Msg.translate(ctx, "LineTotalAmt"));
		columnNames.add (Msg.translate(ctx, "lbr_TaxBaseAmt") + " - ICMS");
		columnNames.add (Msg.translate(ctx, "lbr_TaxRate") + " - ICMS");
		columnNames.add (Msg.translate(ctx, "lbr_TaxAmt") + " - ICMS");

		//	Clear
		miniTableNF.clear();
		
		//  Remove previous listeners
		miniTableNF.getModel().removeTableModelListener(this);
		
		//  Set Model
		ListModelTable modelI;
		
		if (typeSelected == null || 
				TextUtil.match(typeSelected, TYPE_NOTAFISCAL_ADDITIONAL_COMPLEMENTAR, 
						TYPE_NOTAFISCAL_ADDITIONAL_ANULACAOVALORES, 
						TYPE_NOTAFISCAL_ADDITIONAL))
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
		miniTableNF.setColumnClass (index++, String.class, true);		//  3-CFOP
		miniTableNF.setColumnClass (index++, BigDecimal.class, true);	//  4-Qty
		miniTableNF.setColumnClass (index++, BigDecimal.class, true);	//  5-Price
		miniTableNF.setColumnClass (index++, BigDecimal.class, true);	//  6-GrandTotal
		miniTableNF.setColumnClass (index++, BigDecimal.class, false);	//  7-Tax Base Amt
		miniTableNF.setColumnClass (index++, BigDecimal.class, false);	//  8-Tax Rate Amt
		miniTableNF.setColumnClass (index++, BigDecimal.class, false);	//  9-Tax Amt
		
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
		bCleanAll.setVisible(false);		
		m_LBR_NotaFiscal_ID = -1;
		m_C_Order_ID = -1;
		m_M_InOut_ID = -1;
		//
		setParamsVisible(false);
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
				String trxName = Trx.createTrxName();
				Trx trx = Trx.get (trxName, false);
				
				try
				{
					if (TextUtil.match(typenf, TYPE_NOTAFISCAL_ADDITIONAL_COMPLEMENTAR, 
							TYPE_NOTAFISCAL_ADDITIONAL_ANULACAOVALORES, 
							TYPE_NOTAFISCAL_ADDITIONAL) && NotaFiscal_ID > 0)
					{
						Integer cfop = (Integer) fCFOP.getValue();
						Integer bp = (Integer) fBP.getValue();
						Integer bpl = (Integer) fBPLocation.getValue();

						if (cfop == null)
							cfop = -1;
						if (bp == null)
							bp = -1;
						if (bpl == null)
							bpl = -1;
						
						NotaFiscal_ID = generateNFComplementar(trxName, typenf, cfop, bp, bpl, -1);
					}
					else if (TYPE_NOTAFISCAL_ADDITIONAL_ENTREGAFUTURA.equals(typenf))
						NotaFiscal_ID = generateNFEntregaFutura(trxName);
					else if (TYPE_NOTAFISCAL_ADDITIONAL_TRIANGULAR.equals(typenf))
						NotaFiscal_ID = generateNFTrinagular(trxName);
					else
					{
						FDialog.error(m_WindowNo, this, "Erro", "Parâmetros inválidos, confira os dados digitados e tente novamente");
						return;
					}
					//
					trx.commit();
				}
				catch (Exception ex)
				{
					ex.printStackTrace();
					trx.rollback();
				}
				
				if (NotaFiscal_ID > 0)
					openNFAdditional(NotaFiscal_ID);
				
				clear();
				NotaFiscal_ID = 0;
				
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
//			else if (bCFOP.equals(source))
//			{
//				//	Validar CFOP no formato 5.555
//				if (!fCFOP.getText().isEmpty() && tCFOP.getText().matches("^[0-9]{1}.[0-9]{3}"))
//				{	
//					for (int i = 0; i < miniTableNF.getItemCount(); i++)
//	    			{
//						miniTableNF.setValueAt(tCFOP.getText(), i, 3);
//	    			}
//				}
//				else
//					throw new AdempiereException("CFOP Inválido");
//			}
			else if (bCleanAll.equals(source))
			{
				for (int i = 0; i < miniTableNF.getItemCount(); i++)
    			{
					miniTableNF.setValueAt(Env.ZERO, i, 5);
					miniTableNF.setValueAt(Env.ZERO, i, 6);
					miniTableNF.setValueAt(Env.ZERO, i, 7);
					miniTableNF.setValueAt(Env.ZERO, i, 8);
					miniTableNF.setValueAt(Env.ZERO, i, 9);
    			}
			}
			else  if(eventName.equals(Events.ON_CLICK))
	        {
	    		if (comp == bSelectAllProd)
	    		{
	    			selectAllProd = (selectAllProd ? false : true);
	    			for (int i = 0; i < miniTableNF.getItemCount(); i++)
	    			{
	    				miniTableNF.setValueAt(Boolean.valueOf(selectAllProd), i, 0);
	    			}
	    		}   		
	        }
		}
		else if (eventName.equals(Events.ON_SELECT))
		{
			if (TextUtil.match(typenf, TYPE_NOTAFISCAL_ADDITIONAL_COMPLEMENTAR, 
					TYPE_NOTAFISCAL_ADDITIONAL_ANULACAOVALORES, 
					TYPE_NOTAFISCAL_ADDITIONAL))
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
				setParamsVisible(false);
				bCleanAll.setVisible(false);
				return;
			}	
			
			setParamsVisible(true);
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
				setParamsVisible(false);
				bCleanAll.setVisible(false);
				return;
			}	
			
			setParamsVisible(true);
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
				setParamsVisible(false);
				bCleanAll.setVisible(false);
				return;
			}	
			
			setParamsVisible(true);
			bCleanAll.setVisible(true);
			
			//
			createLinesGrid (typenf);
		}
		
		Object newValue = e.getNewValue();
		
		if (newValue instanceof Integer)
		{
			Env.setContext(Env.getCtx(), m_WindowNo, e.getPropertyName(), ((Integer)newValue).intValue());
			Env.setContext(Env.getCtx(), m_WindowNo, 0, e.getPropertyName(), ((Integer)newValue).intValue());
		}
	}	//	vetoableChange

	private void setParamsVisible(boolean visible) {
		lCFOP.setVisible(visible);
		fCFOP.setVisible(visible);
		
		lBP.setVisible(visible);
		fBP.setVisible(visible);
		
		lBPLocation.setVisible(visible);
		fBPLocation.setVisible(visible);
	}

	/**
	 * 
	 */
	public void tableChanged (WTableModelEvent event) {}	
}	//	WNotaFiscalAdditional