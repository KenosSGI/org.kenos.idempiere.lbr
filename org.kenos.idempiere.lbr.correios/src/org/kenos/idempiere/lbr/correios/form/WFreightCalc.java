package org.kenos.idempiere.lbr.correios.form;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.webui.component.Button;
import org.adempiere.webui.component.Checkbox;
import org.adempiere.webui.component.ConfirmPanel;
import org.adempiere.webui.component.Datebox;
import org.adempiere.webui.component.Grid;
import org.adempiere.webui.component.GridFactory;
import org.adempiere.webui.component.Label;
import org.adempiere.webui.component.ListCell;
import org.adempiere.webui.component.ListHead;
import org.adempiere.webui.component.ListHeader;
import org.adempiere.webui.component.ListItem;
import org.adempiere.webui.component.Listbox;
import org.adempiere.webui.component.Row;
import org.adempiere.webui.component.Rows;
import org.adempiere.webui.component.Textbox;
import org.adempiere.webui.panel.ADForm;
import org.adempiere.webui.panel.IFormController;
import org.adempiere.webui.session.SessionManager;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MFreightCategory;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MShipper;
import org.compiere.model.MSysConfig;
import org.compiere.model.Query;
import org.compiere.model.X_M_Freight;
import org.compiere.model.X_M_ShipperPackaging;
import org.compiere.process.ProcessInfo;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;
import org.compiere.util.ValueNamePair;
import org.kenos.idempiere.lbr.correios.api.CalcPrecoPrazoWSStub;
import org.tempuri.CResultado;
import org.tempuri.CServico;
import org.zkoss.zk.ui.Component;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zk.ui.event.Events;
import org.zkoss.zul.Caption;
import org.zkoss.zul.Decimalbox;
import org.zkoss.zul.Div;
import org.zkoss.zul.Groupbox;
import org.zkoss.zul.Messagebox;
import org.zkoss.zul.Separator;
import org.zkoss.zul.Space;

/**
 * 		Calculates Freight form Shipper
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: WFreightCalc.java, v1.0 2017/12/05 11:43:23 AM, ralexsander Exp $
 */
public class WFreightCalc extends ADForm implements IFormController, EventListener<Event>
{
	private static final BigDecimal LENGHT_DIAMETER_MIN = new BigDecimal (18);
	private static final BigDecimal LENGHT_MIN 		= new BigDecimal (16);
	private static final BigDecimal WIDTH_MIN 		= new BigDecimal (11);
	private static final BigDecimal HEIGTH_MIN 		= new BigDecimal (2);
	private static final BigDecimal WEIGHT_MIN 		= new BigDecimal (1);
	private static final BigDecimal AMOUNT_MIN 		= new BigDecimal (18);
	private static final BigDecimal DIAMETER_MIN 	= new BigDecimal (5);
	
	/**
	 *	Serial 
	 */
	private static final long serialVersionUID = 1181130841097559280L;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger (WFreightCalc.class);

	/**	Panels			*/
	private ConfirmPanel confirmPanel = new ConfirmPanel(true);
	private Grid selectionPanel = GridFactory.newGridLayout();
	private Groupbox grpSelectionPanel = new Groupbox();
	private Groupbox grpSelectProd = new Groupbox();
	
	/**	Fields, Buttons	*/
	private Decimalbox f_length = new Decimalbox();
	private Decimalbox f_height = new Decimalbox();
	private Decimalbox f_width = new Decimalbox();
	private Decimalbox f_diameter = new Decimalbox();
	private Decimalbox f_weight = new Decimalbox();
	private Decimalbox f_weightPackage = new Decimalbox();
	private Decimalbox f_weightTotal = new Decimalbox();
	private Decimalbox f_amount = new Decimalbox();
	private Textbox f_zipFrom = new Textbox();
	private Textbox f_zipTo = new Textbox();
	private Listbox f_format = new Listbox();
	private Checkbox cb_onHand = new Checkbox();
	private Checkbox cb_confirmReceipt = new Checkbox();
	private Datebox f_date = new Datebox();
	private Button b_query = new Button();
	private Label l_help = new Label (Msg.getMsg (Env.getCtx(), "LBR_FreightCalcHelp"));
	private Label l_warning = new Label ("");
	
	/**	Result Table	*/
	private Listbox miniTable = new Listbox();
	
	/**	Documents		*/
	private MShipper m_shipper = null;
	List<ValueNamePair> m_freights = new ArrayList<ValueNamePair>();
	List<KeyNamePair> m_formats = new ArrayList<KeyNamePair>();
	
	/**	Cached Packaging Types	*/
	private List<X_M_ShipperPackaging> listPack = null;

	/**
	 * 	Process Events
	 */
	@Override
	public void onEvent (Event e) throws Exception
	{
		String eventName = e.getName();
		if (log.isLoggable(Level.CONFIG)) log.config(eventName);
		
		//	Event source
		Object source = e.getTarget();
		
		//	Process changes
		if (eventName.equals (Events.ON_CHANGE))
		{
			//	Validate the length
			if (f_length.equals(source))
			{
				if (LENGHT_MIN.compareTo(f_length.getValue()) == 1)
				{
					Messagebox.show("Valor não permitido. Comprimento mínimo é: " + LENGHT_MIN.stripTrailingZeros().toPlainString());
					f_length.setValue(LENGHT_MIN);
				}
			}
			
			//	Validate the Height
			else if (f_height.equals(source))
			{
				if (HEIGTH_MIN.compareTo(f_height.getValue()) == 1)
				{
					Messagebox.show("Valor não permitido. Altura mínima é: " + HEIGTH_MIN.stripTrailingZeros().toPlainString());
					f_height.setValue(HEIGTH_MIN);
				}
			}
			
			//	Validate the Width
			else if (f_width.equals(source))
			{
				if (WIDTH_MIN.compareTo(f_width.getValue()) == 1)
				{
					Messagebox.show("Valor não permitido. Largura mínima é: " + WIDTH_MIN.stripTrailingZeros().toPlainString());
					f_width.setValue(WIDTH_MIN);
				}
			}
			
			//	Validate the Weight
			else if (f_weight.equals(source))
			{
				if ("1".equals(f_format.getSelectedItem().toString()) && WEIGHT_MIN.compareTo(f_weight.getValue().add(f_weightPackage.getValue())) == 1)
				{
					Messagebox.show("Valor não permitido. Peso mínimo é: " + WEIGHT_MIN.stripTrailingZeros().toPlainString());
					f_weight.setValue(WEIGHT_MIN.subtract(f_weightPackage.getValue()));
				}
				else if (Env.ZERO.compareTo(f_weight.getValue()) == 1)
				{
					Messagebox.show("Valor não permitido. Peso mínimo é: " + Env.ZERO.stripTrailingZeros().toPlainString());
					f_weight.setValue(Env.ZERO);
				}
				
				updateGrossWeight();
			}
			
			//	Validate the Package Weight
			else if (f_weightPackage.equals(source))
			{
				if (Env.ZERO.compareTo(f_weightPackage.getValue()) == 1)
				{
					Messagebox.show("Valor não permitido. Peso mínimo é: " + Env.ZERO.stripTrailingZeros().toPlainString());
					f_weightPackage.setValue(Env.ZERO);
				}
				
				updateGrossWeight();
			}
			
			//	Validate the Amount
			else if (f_amount.equals(source))
			{
				if (f_amount.getValue().signum() != 0 
						&& AMOUNT_MIN.compareTo(f_amount.getValue()) == 1)
				{
					Messagebox.show("Valor não permitido. Caso não tenha 'Valor Declarado', preencha com zero.");
					f_amount.setValue(Env.ZERO);
				}
			}
			
			//	Validate the Diameter
			else if (f_diameter.equals(source))
			{
				if (DIAMETER_MIN.compareTo(f_diameter.getValue()) == 1)
				{
					Messagebox.show("Valor não permitido. Coloque um valor positivo.");
					f_diameter.setValue(DIAMETER_MIN.subtract(f_weightPackage.getValue()));
				}
			}
			
			//	Validate the ZIP codes
			else if (f_zipFrom.equals(source) || f_zipTo.equals(source))
			{
				Textbox box = (Textbox) source;
				String zip = box.getText();
				//
				if (TextUtil.toNumeric(zip).length() != 8)
					Messagebox.show("CEP Inválido, confira o CEP digitado");
			}
		}
		else if (eventName.equals (Events.ON_CLICK) || eventName.equals (Events.ON_DOUBLE_CLICK) || eventName.equals(Events.ON_OK))
		{
			//	Cancel button
			if (confirmPanel.getButton("Cancel").equals(source))
				SessionManager.getAppDesktop().closeActiveWindow();
			
			//	Query Button
			else if (b_query.equals(source) || eventName.equals(Events.ON_OK))
			{
				if (TextUtil.toNumeric(f_zipFrom.getText()).length() != 8 || TextUtil.toNumeric(f_zipTo.getText()).length() != 8)
					Messagebox.show("CEP Inválido, confira o CEP digitado");
				else
					getFreight ();
			}
	
			//	OK button
			else if (confirmPanel.getButton("Ok").equals(source) || eventName.equals(Events.ON_DOUBLE_CLICK))
			{
				if (getGridTab() != null)
				{
					//	Single result
					if (miniTable.getItemCount() == 1)
						miniTable.setSelectedIndex(0);
					
					ListItem category = miniTable.getSelectedItem();
					if (category != null)
					{
						List<Component> children = category.getChildren();
						
						ListCell codeCell = (ListCell) children.get(0);
						ListCell priceCell = (ListCell) children.get(1);
						System.out.println(""+codeCell.getTooltip());
						BigDecimal price = new BigDecimal (String.valueOf (priceCell.getLabel()).replace(".", "").replace(",", "."));
						
						if (price.signum() == 1)
						{
							MFreightCategory fc = MFreightCategory.getByValue(Env.getCtx(), TextUtil.lPad (codeCell.getTooltip(), 5), null);
							if (fc == null)
							{
								Messagebox.show("Não foi possível atualizar o pedido, categoria de frete não encontrada");
								return;
							}
							//
							getGridTab().setValue(MOrder.COLUMNNAME_DeliveryViaRule, MOrder.DELIVERYVIARULE_Shipper);
							getGridTab().setValue(MOrder.COLUMNNAME_M_Shipper_ID, m_shipper.getM_Shipper_ID());
							getGridTab().setValue(MOrder.COLUMNNAME_M_FreightCategory_ID, fc.getM_FreightCategory_ID());
							getGridTab().setValue(MOrder.COLUMNNAME_FreightCostRule, MOrder.FREIGHTCOSTRULE_FixPrice);
							getGridTab().setValue(MOrder.COLUMNNAME_FreightAmt, price);
							SessionManager.getAppDesktop().closeActiveWindow();
						}
						else
							Messagebox.show("Não foi possível atualizar o pedido, preço de frete inválido ou não selecionado");
					}
					else
						Messagebox.show("Selecione o tipo de frete desejado");
				}
			}
		}
		else if (eventName.equals(Events.ON_SELECT))
		{
			//	Format
			if (f_format.equals(source))
			{
				updatePackageWeight ();
				
				//	Caixa
				if ("1".equals (f_format.getSelectedItem().toString()))
				{
					f_diameter.setReadonly(true);
					f_length.setReadonly(false);
					f_width.setReadonly(false);
					f_height.setReadonly(false);
				}
				
				//	Rolo
				else if ("2".equals (f_format.getSelectedItem().toString()))
				{
					f_diameter.setReadonly(false);
					f_length.setReadonly(false);
					f_width.setReadonly(true);
					f_height.setReadonly(true);
					//
					if (f_length.getValue().compareTo(LENGHT_DIAMETER_MIN) == -1)
						f_length.setValue(LENGHT_DIAMETER_MIN);
				}
				
				//	Envelope
				else if ("3".equals (f_format.getSelectedItem().toString()))
				{
					f_diameter.setReadonly(true);
					f_length.setReadonly(true);
					f_width.setReadonly(true);
					f_height.setReadonly(true);
					//
					if (f_weight.getValue().compareTo(Env.ONE) >= 0)
					{
						f_weight.setValue (Env.ONE.subtract (f_weightPackage.getValue()));
						updatePackageWeight ();
					}
				}
			}
		}
	}	//	onEvent

	/**	
	 * 	Update Gross Weight
	 */
	private void updateGrossWeight ()
	{
		f_weightTotal.setValue(f_weight.getValue().add(f_weightPackage.getValue()));
	}	//	updateGrossWeight
	
	/**
	 * 	Update the package weight
	 */
	private void updatePackageWeight ()
	{
		for (X_M_ShipperPackaging p : listPack)
		{
			if (p.getM_ShipperPackagingCfg().getValue()
					.equals(f_format.getSelectedItem().toString()))
			{
				f_weightPackage.setValue(p.getWeight());
				break;
			}
		}
		
		updateGrossWeight();
	}	//	updatePackageWeight

	/**
	 * 	Get the Form
	 */
	@Override
	public ADForm getForm ()
	{
		return this;
	}	//	getForm

	/**
	 * 	Initialize form
	 */
	@Override
	protected void initForm ()
	{
		log.info("");

		//	Shipper config
		String uu = MSysConfig.getValue ("LBR_CORREIOS_SHIPPER", Env.getAD_Client_ID(Env.getCtx()));
		if (uu == null || uu.isEmpty())
			throw new AdempiereException ("Não foi possível determinar a transportadora dos correios");
		
		//	Try to locate the shipper
		m_shipper = new Query(Env.getCtx(), MShipper.Table_Name, MShipper.COLUMNNAME_M_Shipper_UU + "=?", null)
			.setParameters(uu)
			.first();
		if (uu == null || uu.isEmpty())
			throw new AdempiereException ("Transportadora dos correios não encontrada [M_Shipper_UU=" + uu + "]");
		
		//	Check the available freight categories
		List<X_M_Freight> list = new Query(Env.getCtx(), X_M_Freight.Table_Name, X_M_Freight.COLUMNNAME_M_Shipper_ID + "=?", null)
			.setParameters(m_shipper.getM_Shipper_ID())
			.list();
		for (X_M_Freight freight : list)
			m_freights.add(new ValueNamePair(freight.getM_FreightCategory().getValue(), freight.getM_FreightCategory().getName()));
		if (m_freights.size() <= 0)
			throw new AdempiereException ("Transportadora dos correios sem configuração de fretes disponíveis");
		
		listPack = new Query(Env.getCtx(), X_M_ShipperPackaging.Table_Name, X_M_ShipperPackaging.COLUMNNAME_M_Shipper_ID + "=?", null)
			.setParameters(m_shipper.getM_Shipper_ID())
			.list();
		for (X_M_ShipperPackaging pack : listPack)
			m_formats.add(new KeyNamePair(Integer.parseInt (pack.getM_ShipperPackagingCfg().getValue()), pack.getM_ShipperPackagingCfg().getName()));
		if (m_formats.size() <= 0)
			throw new AdempiereException ("Transportadora dos correios sem configuração de pacotes");
		
		try
		{
			confirmPanel = new ConfirmPanel (true);
			
			//	Top Selection Panel
			createSelectionPanel ();

			//	Center
			createMainPanel ();
			updatePackageWeight ();

			confirmPanel.addActionListener(Events.ON_CLICK, this);
		}
		catch(Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
	}	//	initForm
	
	/**
	 * 	Creates the selection panel
	 */
	private void createSelectionPanel ()
	{
		Grid grid = new Grid ();
		Rows rows = grid.newRows();
		
		//	Minimum 16
		f_length.setValue(LENGHT_MIN);
		f_length.addEventListener(Events.ON_CHANGE, this);
		
		//	Minimum 11
		f_width.setValue(WIDTH_MIN);
		f_width.addEventListener(Events.ON_CHANGE, this);

		//	Minimum 2
		f_height.setValue(HEIGTH_MIN);
		f_height.addEventListener(Events.ON_CHANGE, this);

		//	Formats
		f_format.setMold("select");
		for (KeyNamePair vp : m_formats)
			f_format.addItem(vp);
		f_format.addEventListener(Events.ON_SELECT, this);

		//	Minimum 0
		f_weight.setValue(Env.ZERO);
		f_weightPackage.setValue(Env.ZERO);
		f_weightPackage.addEventListener(Events.ON_CHANGE, this);
		f_weightPackage.addEventListener(Events.ON_OK, this);

		//	Package Weight
		updatePackageWeight ();

		//	Minimum 1
		f_weight.setValue(WEIGHT_MIN.subtract(f_weightPackage.getValue()));
		f_weight.addEventListener(Events.ON_CHANGE, this);
		f_weight.addEventListener(Events.ON_OK, this);

		//	Minimum 0 or > 18
		f_amount.setValue(Env.ZERO.stripTrailingZeros());
		f_amount.addEventListener(Events.ON_CHANGE, this);

		//	Minimum 0
		f_diameter.setValue(DIAMETER_MIN);
		f_diameter.addEventListener(Events.ON_CHANGE, this);

		//	Listen changes to validate ZIP code
		f_zipFrom.addEventListener(Events.ON_CHANGE, this);
		f_zipFrom.addEventListener(Events.ON_OK, this);
		f_zipTo.addEventListener(Events.ON_CHANGE, this);
		f_zipTo.addEventListener(Events.ON_OK, this);
		
		//	Automatically fill the ZIP code from Organization
		int org_ID = Env.getAD_Org_ID (Env.getCtx());
		if (org_ID > 0)
			fillZIPFrom (org_ID);

		cb_onHand.setLabel("Entregar em mãos");
		
		//	Adjust field size
		f_zipFrom.setCols(11);
		f_zipTo.setCols(11);
		
		f_diameter.setReadonly(true);
		f_weightTotal.setValue(Env.ZERO);
		f_weightTotal.setReadonly(true);
		
		//	Query button
		b_query.setLabel(Msg.translate (Env.getCtx(), "QueryExecute"));
		b_query.addEventListener(Events.ON_CLICK, this);

		//	Today
		f_date.setValue(new Timestamp(System.currentTimeMillis()));
		cb_confirmReceipt.setLabel(Msg.getElement (Env.getCtx(), "DeliveryConfirmation"));
		
		Row row = rows.newRow();
		Component rightAlign = new Label(Msg.getElement (Env.getCtx(), "Length")).rightAlign();
		row.appendCellChild(rightAlign);
		row.appendCellChild(f_length);
		row.appendCellChild(new Label(Msg.getElement (Env.getCtx(), "Width")).rightAlign());
		row.appendCellChild(f_width);
		row.appendCellChild(new Label(Msg.getElement (Env.getCtx(), "Height")).rightAlign());
		row.appendCellChild(f_height, 1);
		
		row = rows.newRow();
		row.appendCellChild(new Label(Msg.getElement (Env.getCtx(), "Weight")).rightAlign());
		row.appendCellChild(f_weight);
		row.appendCellChild(new Label("Peso Embalagem").rightAlign());
		row.appendCellChild(f_weightPackage);
		row.appendCellChild(new Label(Msg.getElement (Env.getCtx(), "ArcDiameter")).rightAlign());
		row.appendCellChild(f_diameter, 1);
		
		row = rows.newRow();
		row.appendCellChild(new Label(Msg.getElement (Env.getCtx(), "Postal")).rightAlign());
		row.appendCellChild(f_zipFrom);
		row.appendCellChild(new Label(Msg.getElement (Env.getCtx(), "Postal_To")).rightAlign());
		row.appendCellChild(f_zipTo);
		row.appendCellChild(new Label(Msg.getElement (Env.getCtx(), "Amount")).rightAlign());
		row.appendCellChild(f_amount);
		
		row = rows.newRow();
		row.appendCellChild(new Space());
		row.appendCellChild(cb_onHand);
		row.appendCellChild(new Label(Msg.getElement (Env.getCtx(), "FormatType")).rightAlign());
		row.appendCellChild(f_format, 1);
		row.appendCellChild(new Label(Msg.getElement (Env.getCtx(), "PickDate")).rightAlign());
		row.appendCellChild(f_date, 1);
		
		row = rows.newRow();
		row.appendCellChild(new Space());
		row.appendCellChild(cb_confirmReceipt);
		row.appendCellChild(new Label(Msg.getElement (Env.getCtx(), "lbr_GrossWeight")).rightAlign());
		row.appendCellChild(f_weightTotal);
		row.appendCellChild(makeCenterAlign (b_query), 2);
		
		//	Selection Panel
		grpSelectionPanel.appendChild(new Caption(Msg.translate(Env.getCtx(), "M_FreightCategory_ID")));
		grpSelectionPanel.appendChild(l_help);
		grpSelectionPanel.appendChild(selectionPanel);
		grpSelectionPanel.appendChild(grid);
		
		//	Freight Costs
		grpSelectProd.appendChild(new Caption(Msg.getElement (Env.getCtx(), "FreightAmt")));
		grpSelectProd.appendChild(miniTable);
		grpSelectProd.appendChild(l_warning);		
	}	//	createSelectionPanel
	
	/**
	 * 	Create the main panel and result grid
	 */
	private void createMainPanel ()
	{
		this.appendChild(new Separator());
		this.appendChild(grpSelectionPanel);
		this.appendChild(new Separator());
		this.appendChild(grpSelectProd);
		this.appendChild(new Separator());
		this.appendChild(confirmPanel);
		this.appendChild(new Separator());
		this.setBorder("normal");
		this.setContentStyle("overflow: auto");
		//
		ListHead head = new ListHead();
		head.appendChild(new ListHeader("Serviço"));
		head.appendChild(new ListHeader("Valor Total"));
		head.appendChild(new ListHeader("Mão Própria"));
		head.appendChild(new ListHeader("Aviso Recebimento"));
		head.appendChild(new ListHeader("Seguro"));
		head.appendChild(new ListHeader("Valor do Frete"));
		head.appendChild(new ListHeader("Prazo"));
		head.appendChild(new ListHeader("Observação"));
		miniTable.appendChild(head);
		//		
		l_help.setMultiline(true);
		l_warning.setMultiline(true);
	}	//	createMainPanel
	
	/**
	 * 	Align elements on center
	 * @param comp
	 * @return
	 */
	public static Component makeCenterAlign (Component comp)
	{
		Div div = new Div();
		div.setStyle("text-align: center");
		div.appendChild(comp);
		return div;
	}	//	makeCenterAlign
	
	/**
	 * 	Connect to Correios and retrieve the freight prices
	 * 	@throws Exception when connection fails
	 */
	private void getFreight () throws Exception
	{
		CalcPrecoPrazoWSStub stub = new CalcPrecoPrazoWSStub();
		
		/** 
		 * Seu código administrativo junto à ECT. O código está
		 *  disponível no corpo do contrato firmado com os Correios.
		 * 
		 * Obrigatório para clientes com contrato.
		 * Para clientes sem contrato informar o parâmetro vazio.
		 */
		String nCdEmpresa72 = "";
		if (m_shipper.getM_ShippingProcessor_ID() > 0)
			nCdEmpresa72 = m_shipper.getM_ShippingProcessor().getUserID();
		
		/**
		 * Senha para acesso ao serviço, associada ao seu código administrativo. 
		 * A senha inicial corresponde aos 8 primeiros dígitos do CNPJ informado no contrato. 
		 * A qualquer momento, é possível alterar a senha no 
		 *  endereço http://www.corporativo.correios.com.br/encomendas/servicosonline/recuperaSenha. 
		 * 
		 * Obrigatório para clientes com contrato.
		 * Para clientes sem contrato informar o parâmetro vazio.
		 */
		String sDsSenha73 = "";
		if (m_shipper.getM_ShippingProcessor_ID() > 0)
			sDsSenha73 = m_shipper.getM_ShippingProcessor().getConnectionPassword();
		
		/**
		 * 04014 - SEDEX à vista
		 * 04065 - SEDEX à vista pagamento na entrega
		 * 04510 - PAC à vista
		 * 04707 - PAC à vista pagamento na entrega
		 * 40169 - SEDEX 12 ( à vista e a faturar)*
		 * 40215 - SEDEX 10 (à vista e a faturar)*
		 * 40290 - SEDEX Hoje Varejo*
		 * 
		 * Os códigos não foram alterados
		 * 
		 * Para clientes com contrato:
		 * Consultar os códigos no seu contrato.
		 * 
		 * Obrigatório. Pode ser mais de um numa consulta separados por vírgula
		 */
		String nCdServico74 = "";
		for (ValueNamePair vp : m_freights)
		{
			if (!nCdServico74.isEmpty())
				nCdServico74 += ",";
			nCdServico74 += vp.getValue();
		}
		
		/**
		 * CEP de Origem sem hífen.Exemplo: 05311900
		 * Obrigatório		 */
		String sCepOrigem75 = TextUtil.toNumeric (f_zipFrom.getText());
		
		/**
		 * CEP de Destino sem hífen 
		 * Obrigatório
		 */
		String sCepDestino76 = TextUtil.toNumeric (f_zipTo.getText());
		
		/**
		 * Peso da encomenda, incluindo sua embalagem. O peso deve ser informado em quilogramas. 
		 *  Se o formato for Envelope, o valor máximo permitido será 1kg.
		 *  Obrigatório
		 */
		String nVlPeso77 = TextUtil.toNumeric (f_weightTotal.getValue(), 2).replace(".", ",");
		
		/**
		 * Formato da encomenda (incluindo embalagem). 
		 * 	Valores possíveis: 1, 2 ou 3
		 *  
		 * 1 – Formato caixa/pacote
		 * 2 – Formato rolo/prisma
		 * 3 - Envelope
		 * Obrigatório
		 */
		int nCdFormato78 = f_format.getSelectedItem().toKeyNamePair().getKey();
		
		/**
		 * Comprimento da encomenda (incluindo embalagem), em centímetros.
		 * Obrigatório
		 */
		BigDecimal nVlComprimento79 = f_length.getValue();
		
		/**
		 * Altura da encomenda (incluindo embalagem), em centímetros. Se o formato for envelope, informar zero (0).
		 * Obrigatório
		 */
		BigDecimal nVlAltura80 = f_height.getValue();
		
		/**
		 * Largura da encomenda (incluindo embalagem), em centímetros.
		 * Obrigatório
		 */
		BigDecimal nVlLargura81 = f_width.getValue();
		
		/**
		 * Diâmetro da encomenda (incluindo embalagem), em centímetros.
		 * Obrigatório
		 */
		BigDecimal nVlDiametro82 = f_diameter.getValue();
		
		/**
		 * Indica se a encomenda será entregue com o serviço adicional mão própria. Valores possíveis: S ou N
		 *  
		 * S – Sim
		 * N – Não
		 * Obrigatório
		 */
		String sCdMaoPropria83 = cb_onHand.isSelected() ? "S" : "N";
		
		/**
		 * Indica se a encomenda será entregue com o serviço adicional valor declarado. Neste campo deve ser 
		 * 	apresentado o valor declarado desejado, em Reais.
		 * Obrigatório. Se não optar pelo serviço informar zero.
		 */
		BigDecimal nVlValorDeclarado84 = f_amount.getValue();
		
		/**
		 * Indica se a encomenda será entregue com o serviço adicional aviso de recebimento. Valores possíveis: S ou N
		 *  
		 * S – Sim
		 * N – Não
		 * Obrigatório. Se não optar pelo serviço informar ‘N’.
		 */
		String sCdAvisoRecebimento85 = cb_confirmReceipt.isSelected() ? "S" : "N";
		
		/**
		 * Data do cálculo
		 * Obrigatório
		 */
		String sDtCalculo86 = TextUtil.timeToString (f_date.getValue(), "dd/MM/yyyy");

		/**
		 * 	Cálculo do Frete
		 */
		CResultado result = stub.calcPrecoPrazoData (nCdEmpresa72, sDsSenha73, nCdServico74, sCepOrigem75, sCepDestino76, nVlPeso77, nCdFormato78, nVlComprimento79, nVlAltura80, nVlLargura81, nVlDiametro82, sCdMaoPropria83, nVlValorDeclarado84, sCdAvisoRecebimento85, sDtCalculo86);
		
		miniTable.removeAllItems();
		l_warning.setText("");
		List<String> obs = new ArrayList<String>();
		List<String> errors = new ArrayList<String>();
		
		for (CServico serv : result.getServicos().getCServico())
		{
			ListItem item = new ListItem();
			miniTable.appendChild(item);
			
			if ("0".equals(serv.getValor()))
			{
				errors.add(parseCode (serv.getCodigo()) + " - " + serv.getMsgErro());
				continue;
			}
			
			//	Put the code on tooltip
			ListCell cell = new ListCell(parseCode (serv.getCodigo()));
			cell.setTooltip(String.valueOf(serv.getCodigo()));
			//
			item.appendChild(cell);
			item.appendChild(new ListCell(String.valueOf(serv.getValor())));
			item.appendChild(new ListCell(String.valueOf(serv.getValorMaoPropria())));
			item.appendChild(new ListCell(String.valueOf(serv.getValorAvisoRecebimento())));
			item.appendChild(new ListCell(String.valueOf(serv.getValorValorDeclarado())));
			item.appendChild(new ListCell(String.valueOf(serv.getValorSemAdicionais())));
			item.appendChild(new ListCell(String.valueOf(serv.getPrazoEntrega() + " dias")));
			item.addEventListener(Events.ON_DOUBLE_CLICK, this);

			//	Concatenate Error and Warning
			String obsFim = serv.getObsFim();
			String err = serv.getMsgErro();
			
			if (err != null && !err.equals(obsFim))
				if (obsFim.isEmpty())
					obsFim = err;
				else
					obsFim += " " + err;
			
			//	Only put in index if its not empty
			if (obsFim != null && !obsFim.isEmpty())
			{
				int index = obs.indexOf (obsFim);
				if (index == -1)
				{
					obs.add(obsFim);
					index = obs.size();
				}
				else
					index = index + 1;
				
				cell = new ListCell("Obs. " + index);
				item.appendChild(cell);
			}
			else
				item.appendChild(new ListCell(""));
		}
		
		//	Display warning messages
		String warningMsg = "";
		int counter = 1;
		for (String msg : obs)
		{
			if (!warningMsg.isEmpty())
				warningMsg += "\n";
			warningMsg += "Obs. " + counter++ + " - " + msg;
		}
		
		//	Spacing messages
		if (!warningMsg.isEmpty())
			warningMsg += "\n";
		
		//	Display errors
		Collections.sort (errors);
		for (String msg : errors)
		{
			if (!warningMsg.isEmpty())
				warningMsg += "\n";
			warningMsg += msg;
		}
		
		l_warning.setText(warningMsg);
	}

	/**
	 * 	Parse the result code to human readable service name
	 * 	@param service code
	 * 	@return service name
	 */
	private String parseCode (int code)
	{
		for (ValueNamePair vp : m_freights)
		{
			if (vp.getValue().equals (TextUtil.lPad (code, 5)))
				return vp.getName();
		}
		return null;
	}	//	parseCode
	
	/**
	 * 	When setting process info, it's possible the fill 
	 * 		some data automatically, like ZIP codes and weight
	 */
	@Override
	public void setProcessInfo(ProcessInfo pi)
	{
		super.setProcessInfo(pi);
		//
		if (pi != null && pi.getRecord_ID() > 0 && pi.getTable_ID() == MOrder.Table_ID)
		{
			MOrder order = new MOrder (Env.getCtx(), pi.getRecord_ID(), null);
			
			//	Calculate the Weight
			BigDecimal weight = Env.ZERO;
			for (MOrderLine ol : order.getLines())
			{
				if (ol.getM_Product_ID() > 0)
					weight.add(ol.getQtyOrdered().subtract(ol.getQtyDelivered()).multiply(ol.getProduct().getWeight()));
			}
			
			//	Date Promissed
			if (order.getDatePromised().after (f_date.getValue()))
				f_date.setValue(order.getDatePromised());
			
			//	Weight
			if (weight.compareTo(WEIGHT_MIN) == 1)
				f_weight.setValue(weight);
			
			//	ZIP from Organization
			fillZIPFrom (order.getAD_Org_ID());
			
			//	Destination ZIP
			if (order.getC_BPartner_Location_ID() > 0 && order.getC_BPartner_Location().getC_Location().getPostal() != null)
				f_zipTo.setValue (order.getC_BPartner_Location().getC_Location().getPostal ());
			
			updateGrossWeight ();
			
			if (TextUtil.toNumeric(f_zipFrom.getText()).length() == 8 && TextUtil.toNumeric(f_zipTo.getText()).length() == 8)
				try
				{
					getFreight ();
				}
				catch (Exception e) {}
		}
	}	//	setProcessInfo

	/**
	 * 	Fill the ZIP code (from) based on Organization
	 * 	@param p_AD_Org_ID
	 */
	private void fillZIPFrom (int p_AD_Org_ID)
	{
		MOrgInfo oi = MOrgInfo.get (Env.getCtx(), p_AD_Org_ID, null);
		if (oi.getC_Location_ID() > 0 && oi.getC_Location().getPostal() != null)
			f_zipFrom.setValue(oi.getC_Location().getPostal());
	}	//	fillZIPFrom
}	//	WFreightCalc
