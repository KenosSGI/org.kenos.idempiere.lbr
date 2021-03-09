package org.adempierelbr.validator;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRTax;
import org.adempierelbr.model.MLBRTaxLine;
import org.adempierelbr.model.X_LBR_CFOPLine;
import org.adempierelbr.wrapper.I_W_AD_ClientInfo;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.adempierelbr.wrapper.I_W_C_Invoice;
import org.adempierelbr.wrapper.I_W_C_InvoiceLine;
import org.adempierelbr.wrapper.I_W_C_Order;
import org.adempierelbr.wrapper.I_W_C_OrderLine;
import org.adempierelbr.wrapper.I_W_M_Product;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MClient;
import org.compiere.model.MClientInfo;
import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MLocation;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.model.MSysConfig;
import org.compiere.model.MUOMConversion;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.PO;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.kenos.idempiere.lbr.base.model.SysConfig;

/**
 * 		Utilizado para efetuar os cálculos dos impostos brasileiros.
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: VLBROrder.java, v1.0 2011/05/13 11:37:23 AM, ralexsander Exp $
 */
public class VLBROrder implements ModelValidator
{
	/**
	 *	Constructor.
	 *	The class is instanciated when logging in and client is selected/known
	 */
	public VLBROrder ()
	{
		super ();
	}	//	VLBRTax
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(VLBROrder.class);
	/** Client			*/
	private int		m_AD_Client_ID = -1;
	/**	Charge Type		*/
	public final static int	SISCOMEX 	 = 0;
	public final static int	FREIGHT 	 = 1;
	public final static int	INSURANCE 	 = 2;
	public final static int	OTHERCHARGES = 3;
	public final static int	WITHHOLD 	 = 4;

	/**
	 *	Initialize Validation
	 *	@param engine validation engine
	 *	@param client client
	 */
	public void initialize (ModelValidationEngine engine, MClient client)
	{
		//	Global Validator
		if (client != null) 
		{
			m_AD_Client_ID = client.getAD_Client_ID();
			log.info(client.toString());
		}
		else 
			log.info("Initializing global validator: "+this.toString());

		engine.addDocValidate (MInvoice.Table_Name, this);
		engine.addDocValidate (MOrder.Table_Name, this);
		engine.addModelChange (MInvoiceLine.Table_Name, this);
		engine.addModelChange (MOrder.Table_Name, this);
		engine.addModelChange (MOrderLine.Table_Name, this);
	}	//	initialize

	/**
	 *	Get Client to be monitored
	 *	@return AD_Client_ID client
	 */
	public int getAD_Client_ID ()
	{
		return m_AD_Client_ID;
	}	//	getAD_Client_ID

	/**
	 *	User Login.
	 *	Called when preferences are set
	 *	@param AD_Org_ID org
	 *	@param AD_Role_ID role
	 *	@param AD_User_ID user
	 *	@return error message or null
	 */
	public String login (int AD_Org_ID, int AD_Role_ID, int AD_User_ID)
	{
		log.info ("AD_User_ID=" + AD_User_ID);
		return null;
	}	//	login

    /**
     *	Model Change of a monitored Table.
     *	Called after PO.beforeSave/PO.beforeDelete
     *	when you called addModelChange for the table
     *	@param po persistent object
     *	@param type TYPE_
     *	@return error message or null
     *	@exception Exception if the recipient wishes the change to be not accept.
     */
	public String modelChange (PO po, int type) throws Exception
	{
		/**
		 * 	Replica o valor do frete lançado no cabeçalho para uma linha
		 */
		if (po.get_TableName().equals(MOrder.Table_Name))
			return modelChange ((MOrder) po, type);
		
		/**
		 * 	Faz a pesquisa dos impostos padrão para novas linhas
		 */
		else if (po.get_TableName().equals(MOrderLine.Table_Name))
			return modelChange ((MOrderLine) po, type);
		
		/**
		 * 	Ajusta alguns campos ao gerar a fatura pelo pedido
		 */
		else if (po.get_TableName().equals(MInvoiceLine.Table_Name))
			return modelChange ((MInvoiceLine) po, type);
		
		return null;
	}	//	modelChange
	
	/**
	 *	Model Change of a monitored Table.
	 *	Called after PO.beforeSave/PO.beforeDelete
	 *	when you called addModelChange for the table
	 *	@param po persistent object
	 *	@param type TYPE_
	 *	@return error message or null
	 *	@exception Exception if the recipient wishes the change to be not accept.
	 */
	public String modelChange (MOrder order, int type) throws Exception
	{
		/**
		 * 	Faz as validações dos valores para evitar erros
		 */
		if (type == TYPE_BEFORE_NEW || type == TYPE_BEFORE_CHANGE)
		{
			//	Ratear Outras Despesas entre as Linhas do Pedido
			if (isChangeAffectOtherCharges (order))
					recalcuteOtherCharges (order);
			
			//	Ratear Seguro entre as Linhas do Pedido
			if (isChangeAffectInsurance (order))
				recalcuteInsurance (order);
			
			//	Não Continuar o Calculo de Frete se as Linhas do Pedido não Existirem
			if (order.getLines().length == 0)
				return null;
			
			//	O Valor do Frete não poder ser Menor ou Igual a 0
			if (MOrder.FREIGHTCOSTRULE_FixPrice.equals(order.getFreightCostRule())
					&& Env.ZERO.compareTo(order.getFreightAmt()) >= 0)
				return Msg.parseTranslation(Env.getCtx(), "@FillMandatory@ @FreightAmt@");
			
			//	Divide o valor do frete nas linhas
			else if (isChangeAffectFreight (order) 
					&& !MOrder.FREIGHTCOSTRULE_Line.equals(order.getFreightCostRule()))
				recalcuteFreight (order);
		}
		//
		return null;
	}	//	modelChange

	/**
	 *	Model Change of a monitored Table.
	 *	Called after PO.beforeSave/PO.beforeDelete
	 *	when you called addModelChange for the table
	 *	@param po persistent object
	 *	@param type TYPE_
	 *	@return error message or null
	 *	@exception Exception if the recipient wishes the change to be not accept.
	 */
	@SuppressWarnings("unchecked")
	public String modelChange (MOrderLine orderLine, int type) throws Exception
	{
		if (type == TYPE_BEFORE_NEW)
		{
			I_W_C_OrderLine olW = POWrapper.create(orderLine, I_W_C_OrderLine.class);

			//	Faz a pesquisa dos impostos padrão
			if (orderLine.get_ValueAsBoolean(I_W_C_OrderLine.COLUMNNAME_lbr_RecalculateTax) 
					&& (olW.getLBR_Tax_ID() == 0 || olW.getLBR_CFOP_ID() == 0)
					&& orderLine.getM_Product_ID() > 0)
			{
				Object[] taxation = MLBRTax.getTaxes (olW, orderLine.get_TrxName());
				//
				if (taxation != null)
				{
					Map<Integer, MLBRTaxLine> taxes = (Map<Integer, MLBRTaxLine>) taxation[0];
					
					//	Ajusta os Impostos
					if (olW.getLBR_Tax_ID() == 0 && taxes != null && taxes.size() > 0)
					{
						MLBRTax tax = new MLBRTax (Env.getCtx(), 0, null);
						tax.save();
						//
						for (Integer key : taxes.keySet())
						{
							MLBRTaxLine tl = taxes.get(key);
							tl.setLBR_Tax_ID(tax.getLBR_Tax_ID());
							tl.save();
						}
						//
						tax.setDescription();
						tax.save();
						//
						olW.setLBR_Tax_ID(tax.getLBR_Tax_ID());
					}
					
					//	Ajusta o CFOP
					if (olW.getLBR_CFOP_ID() == 0 && ((Integer) taxation[2]) > 0)
						olW.setLBR_CFOP_ID((Integer) taxation[2]);
				}
			}
			
			//	**************************
			
			//	If new record, force ERP to assign next line when the document already has lines created
			int lines = DB.getSQLValue (orderLine.get_TrxName(), "SELECT COUNT('1') FROM C_OrderLine WHERE C_Order_ID=?", orderLine.getC_Order_ID());
			if (lines > 0 && olW.getLine() == 10)
			{
				String sql = "SELECT COALESCE(MAX(Line),0)+10 FROM C_OrderLine WHERE C_Order_ID=?";
				int ii = DB.getSQLValue (orderLine.get_TrxName(), sql, orderLine.getC_Order_ID());
				olW.setLine (ii);
			}
			
			//	Quantidade do Pedido zerado nos casos de copiar de um pedido fechado
			if (orderLine.getQtyEntered().signum() != 0 && orderLine.getQtyOrdered().signum() == 0)
			{
				//	Usar processo somente nos casos onde as linhas estão sendo copiadas via processo
				int count = DB.getSQLValue (orderLine.get_TrxName(), "SELECT COUNT(*) FROM AD_PInstance WHERE AD_Process_ID=211 AND Record_ID=? AND IsProcessing='Y'", orderLine.getC_Order_ID());
				if (count == 1)
				{
					BigDecimal QtyOrdered = MUOMConversion.convertProductFrom (orderLine.getCtx(), orderLine.getM_Product_ID(), orderLine.getC_UOM_ID(), orderLine.getQtyEntered());
					if (QtyOrdered == null)
						orderLine.setQtyOrdered(orderLine.getQtyEntered());
					else
						orderLine.setQtyOrdered(QtyOrdered);
					orderLine.setLineNetAmt();
				}
			}
		}
		return null;
	}	//	modelChange

	/**
     *	Model Change of a monitored Table.
     *	Called after PO.beforeSave/PO.beforeDelete
     *	when you called addModelChange for the table
     *	@param po persistent object
     *	@param type TYPE_
     *	@return error message or null
     *	@exception Exception if the recipient wishes the change to be not accept.
     */
	public String modelChange (MInvoiceLine iLine, int type) throws Exception
	{
		if (type == TYPE_BEFORE_NEW && iLine.getC_OrderLine_ID() > 0)
		{
			I_W_C_InvoiceLine iLineW = POWrapper.create(iLine, I_W_C_InvoiceLine.class);
			I_W_C_OrderLine oLineW = POWrapper.create(new MOrderLine(Env.getCtx(), iLine.getC_OrderLine_ID(), iLine.get_TrxName()), I_W_C_OrderLine.class);
			//
			if (oLineW.getQtyOrdered().signum() != 0)
			{
				iLineW.setFreightAmt(iLineW.getQtyInvoiced().multiply(oLineW.getFreightAmt()).divide(oLineW.getQtyOrdered(), 2, RoundingMode.HALF_UP));
				iLineW.setlbr_SISCOMEXAmt(iLineW.getQtyInvoiced().multiply(oLineW.getlbr_SISCOMEXAmt()).divide(oLineW.getQtyOrdered(), 2, RoundingMode.HALF_UP));
				iLineW.setlbr_InsuranceAmt(iLineW.getQtyInvoiced().multiply(oLineW.getlbr_InsuranceAmt()).divide(oLineW.getQtyOrdered(), 2, RoundingMode.HALF_UP));
				iLineW.setLBR_OtherChargesAmt(iLineW.getQtyInvoiced().multiply(oLineW.getLBR_OtherChargesAmt()).divide(oLineW.getQtyOrdered(), 2, RoundingMode.HALF_UP));
			}
		}
		return null;
	}	//	modelChange
	
	/**
	 *	Validate Document.
	 *	Called as first step of DocAction.prepareIt
     *	when you called addDocValidate for the table.
     *	Note that totals, etc. may not be correct.
	 *	@param po persistent object
	 *	@param timing see TIMING_ constants
     *	@return error message or null
	 */
	public String docValidate (PO po, int timing)
	{
		if (po.get_TableName().equals(MInvoice.Table_Name) 
				&& timing == TIMING_BEFORE_PREPARE)
		{			
			String result = null;
			//
			MInvoice invoice = (MInvoice) po;
			I_W_C_Invoice wInvoice = POWrapper.create(invoice, I_W_C_Invoice.class);
			//
			result = addCharge (invoice, SISCOMEX);
			if (result != null)
				return result;
			
			result = addCharge (invoice, FREIGHT);
			if (result != null)
				return result;
			
			result = addCharge (invoice, INSURANCE);
			if (result != null)
				return result;
			
			result = addCharge (invoice, OTHERCHARGES);
			if (result != null)
				return result;
			
			//	Calcula a retenção dos impostos de serviço
			if (wInvoice.isLBR_HasWithhold())
				result = addCharge (invoice, WITHHOLD);
			//
			return result;
		}
		else if (po.get_TableName().equals(MOrder.Table_Name) 
				&& timing == TIMING_BEFORE_PREPARE)
		{
			MOrder order = (MOrder) po;
			
			/****************************************
			 * 	Validação do Parceiro de Negócios
			 **/

			//	Não validar Propostas e Cotações
			if (!MDocType.DOCSUBTYPESO_Proposal.equals(order.getC_DocTypeTarget().getDocSubTypeSO())
					&& !MDocType.DOCSUBTYPESO_Quotation.equals(order.getC_DocTypeTarget().getDocSubTypeSO()))
			{
				//	Valida Cadastro do PN
				if (MSysConfig.getBooleanValue(SysConfig.LBR_VALIDATE_BP_ON_SO, false, po.getAD_Client_ID()))
				{
					String result = validateBPartner (order.getCtx(), order.getC_BPartner_ID(), order.getC_BPartner_Location_ID());
					//
					if (result != null && !result.isEmpty())
						return "Cadastro de Parceiro de Negócios Inválido, verifique: " + result;	
					
					if (MOrder.DELIVERYVIARULE_Shipper.equals(order.getDeliveryViaRule())
							&& order.getM_Shipper_ID() > 0)
					{
						if (order.getM_Shipper().getC_BPartner_ID() == 0)
							return "Transportadora sem Parceiro de Negócios vinculado";
							
						MBPartner bpShipper = new MBPartner (order.getCtx(), order.getM_Shipper().getC_BPartner_ID(), null);
						MBPartnerLocation[] locations = bpShipper.getLocations(false);
						
						if (locations == null || locations.length == 0)
							return "Transportadora sem endereço cadastrado";
						
						result = validateBPartner (order.getCtx(), bpShipper.getC_BPartner_ID(), locations[0].getC_BPartner_Location_ID());
						//
						if (result != null && !result.isEmpty())
							return "Cadastro da Transportadora Inválido, verifique: " + result;
					}
				}
				
				/****************************************
				 * 	Validação dos Impostos do Pedido
				 **/

				//	Valida os Impostos
				if (MSysConfig.getBooleanValue(SysConfig.LBR_VALIDATE_TAXES_ON_SO, false, po.getAD_Client_ID()))
				{
					String result = validateTaxes (order);
					//
					if (result != null && !result.isEmpty())
						return "Pedido Inválido, verifique: \n" + result;
				}
			}
			
			/****************************************
			 * 	Rateio de Frete
			 **/
			
			//	O Valor do Frete não poder ser Menor ou Igual a 0
			if (MOrder.FREIGHTCOSTRULE_FixPrice.equals(order.getFreightCostRule())
					&& Env.ZERO.compareTo(order.getFreightAmt()) >= 0)
				return Msg.parseTranslation(Env.getCtx(), "@FillMandatory@ @FreightAmt@");
			
			//	Divide o valor do frete nas linhas
			else if (!MOrder.FREIGHTCOSTRULE_Line.equals(order.getFreightCostRule()))
				recalcuteFreight (order);
		}
		//
		return null;
	}	//	docValidate
	
	/**
	 * 		Verifica se o pedido está com os impostos corretos
	 * 
	 * 	@param order
	 * 	@return	true or false
	 */
	private String validateTaxes (MOrder order)
	{
		String result = "";
		
		I_W_C_Order orderW = POWrapper.create (order, I_W_C_Order.class);

		if (orderW.getlbr_TransactionType() == null)
			result += "Tipo de Transação, ";
		
		//	Identificar Transação para Mesmo Estado, Estado Diferente ou Estrangeiro
		String lbr_DestionationType = getDestinationType(order);
		
		for (MOrderLine ol : order.getLines())
		{
			I_W_C_OrderLine olW = POWrapper.create (ol, I_W_C_OrderLine.class);
			//
			String resultLine = "Linha " + olW.getLine() + " [";
			boolean isProduct = ol.getM_Product_ID() > 0 && MProduct.PRODUCTTYPE_Item.equals(ol.getProduct().getProductType());
			String productsource = ol.getM_Product_ID() > 0 ? 
						ol.getProduct().get_ValueAsString(I_W_M_Product.COLUMNNAME_lbr_ProductSource)
						: I_W_M_Product.LBR_PRODUCTSOURCE_0_Domestic;
			
			if (olW.getC_Charge_ID() == 0 && olW.getM_Product_ID() == 0)
				resultLine +=  "Sem produto/despesa, ";
			
			if (olW.getLBR_CFOP_ID() == 0)
				resultLine += "Sem CFOP, ";
			
			if (olW.getLBR_Tax_ID() == 0)
				resultLine += "Sem nenhum imposto, ";
			else if (ol.getM_Product_ID() > 0)
				resultLine += new MLBRTax (ol.getCtx(), olW.getLBR_Tax_ID(), ol.get_TrxName()).getValidation(isProduct, productsource, lbr_DestionationType);
			
			if ((olW.getLineNetAmt() == null || olW.getLineNetAmt().compareTo(Env.ZERO) == 0) 
					&& olW.getQtyEntered().compareTo((BigDecimal.ZERO)) != 0)
				resultLine += "Sem preço, ";
			
			if (olW.getM_Product_ID() > 0 
					&& MProduct.PRODUCTTYPE_Item.equals(olW.getM_Product().getProductType()))
			{
				I_W_M_Product product = POWrapper.create(ol.getProduct(), I_W_M_Product.class);
				//
				if (product.getLBR_NCM_ID() == 0)
				{
					resultLine += "Produto sem NCM, ";
				}
				
				String uomSymbol = product.getC_UOM().getUOMSymbol();
				if (uomSymbol == null || uomSymbol.trim().isEmpty())
				{
					resultLine += "Unidade de Medido inválida (sem símbolo), ";
				}
			}
			
			if (resultLine.endsWith(", "))
				result += resultLine + "] \n";
		}
		
		if (result.length() > 0)
			result = result.replace (", ]", "]");
		
		return result;
	}	//	validateTaxes
	
	/**
	 * 		Verifica se o parceiro de negócios 
	 * 		está com o cadastro válido
	 * 
	 * 	@param order
	 * 	@return	true or false
	 */
	private String validateBPartner (Properties ctx, int C_BPartner_ID, int C_BPartner_Location_ID)
	{
		String result = "";
		//
		I_W_C_BPartner bp = POWrapper.create(new MBPartner (ctx, C_BPartner_ID, null), I_W_C_BPartner.class);
		MBPartnerLocation bpL = new MBPartnerLocation (ctx, C_BPartner_Location_ID, null);
		MLocation loc = bpL.getLocation (true);
		//
		if (!bp.islbr_BPTypeBRIsValid())
			result += "CNPJ/CPF ou ID do Estrangeiro, ";
		if (loc == null)
			result += "Cadastro do Endereço, ";
		if (loc.getAddress1() == null || loc.getAddress1().isEmpty())
			result += "Logradouro do Endereço, ";
		if (loc.getAddress2() == null || loc.getAddress2().isEmpty())
			result += "Número do Endereço, ";
		if (loc.getAddress3() == null || loc.getAddress3().isEmpty())
			result += "Bairro, ";
		if (loc.getPostal() == null || loc.getPostal().isEmpty())
			result += "CEP/ZIP, ";
		//
		return result;
	}	//	validateBPartner
	
	/**
	 * Get Destination Type to Validate Order Tax
	 * @param order
	 * @return
	 */
	private String getDestinationType (MOrder order)
	{
		I_W_C_BPartner bp = POWrapper.create (order.getC_BPartner(), I_W_C_BPartner.class);
		MBPartnerLocation bpLoc = (MBPartnerLocation) order.getC_BPartner_Location();
		int bp_C_Region_ID 			= bpLoc != null ? bpLoc.getC_Location().getC_Region_ID() : -1;
		MOrgInfo oi = MOrgInfo.get(Env.getCtx(), order.getAD_Org_ID(), order.get_TrxName());	
		
		/**
		 * 	No caso de SUFRAMA, definir como Zona Franca - FIXME
		 */
		if (bp.getlbr_Suframa() != null && bp.getlbr_Suframa().length() > 0)
			return X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_ZonaFranca;
		
		/**
		 * 	Importação ou Exportação
		 */
		else if (bpLoc != null && (oi.getC_Location_ID() < 1 || bpLoc.getC_Location().getC_Country_ID() != oi.getC_Location().getC_Country_ID()))
			return X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_Estrangeiro;
		
		/**
		 * 	Dentro do Estado
		 */
		else if (bpLoc != null && bp_C_Region_ID == oi.getC_Location().getC_Region_ID())
			 return X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_EstadosIdenticos;
		
		/**
		 * 	Fora do Estado
		 */
		else 
			return X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_EstadosDiferentes;
	}
	
	/**
	 * 	Verify if freight must be recalculated to all lines
	 * 	@param order
	 * 	@return true if must recalculate
	 */
	private boolean isChangeAffectFreight (PO po)
	{
		if (po instanceof MOrder || po instanceof MInvoice)
		{
			/**
			 * 	Campos comuns entre Pedido e Fatura
			 */
			if (po.is_ValueChanged(I_W_C_Order.COLUMNNAME_FreightAmt)
					|| po.is_ValueChanged(I_W_C_Order.COLUMNNAME_FreightCostRule))
				return true;
		}
		else if  (po instanceof MOrderLine || po instanceof MInvoiceLine)
		{
			/**
			 * 	Campos comuns nas Linhas do Pedido e Fatura
			 */
			if (po.is_ValueChanged (I_W_C_OrderLine.COLUMNNAME_LineNetAmt))
				return true;
		}
		//
		return false;
	}	//	isChangeAffectTaxes

	/**
	 * 	Refaz os cálculos de Frete por linha
	 * 
	 * 	@param order Pedido
	 */
	private void recalcuteFreight (MOrder order)
	{
		BigDecimal freightAmt = order.getFreightAmt();
		int M_ProductFreight_ID = MClientInfo.get(Env.getCtx()).getM_ProductFreight_ID();
		
		//	Total da NF sem considerar o valor do frete
		BigDecimal totalLines = Env.ZERO;
		int lineCount = 0;
		
		//	Compõe o TotalLines
		for (MOrderLine ol : order.getLines())
		{
			if (ol.getM_Product_ID() > 0 
					&& ol.getM_Product_ID() != M_ProductFreight_ID
					&& ol.getM_Product().getProductType().equals(MProduct.PRODUCTTYPE_Item))
			{
				totalLines = totalLines.add(ol.getLineNetAmt());
				lineCount++;
			}
		}
		
		//	Calcula o valor remanescente do frete, para evitar problema de arredondamento
		BigDecimal remaingFreightAmt = freightAmt;
		int currentLine = 0;
		
		//	Rateia o Frete
		for (MOrderLine ol : order.getLines())
		{
			//	Não ratear a linha do frete e para serviços
			if (ol.getM_Product_ID() == 0 
					|| ol.getM_Product_ID() == M_ProductFreight_ID
					|| !ol.getM_Product().getProductType().equals(MProduct.PRODUCTTYPE_Item)
					|| ol.getLineNetAmt().compareTo(Env.ZERO) == 0)
				continue;
			
			//	Faz o rateiro do valor do frete
			BigDecimal lineAmt 			= ol.getLineNetAmt();
			BigDecimal lineFreightAmt 	= lineAmt.multiply(freightAmt).divide(totalLines, 2, RoundingMode.HALF_UP);
			
			//	Verifica se a linha atual é a última linha,
			//		caso positivo, o valor residual é inserido nesta linha
			if (++currentLine == lineCount)
				lineFreightAmt = remaingFreightAmt;
			else
				remaingFreightAmt = remaingFreightAmt.subtract(lineFreightAmt);
			
			if (MOrder.FREIGHTCOSTRULE_FixPrice.equals(order.getFreightCostRule()))
				ol.setFreightAmt(lineFreightAmt);
			else if (MOrder.FREIGHTCOSTRULE_FreightIncluded.equals(order.getFreightCostRule()))
				ol.setFreightAmt(Env.ZERO);
			//
			ol.save();
		}
		
		/**
		 * 	Após calcular o frete, o valor é distribuido para as linhas
		 * 		e a regra de custo é modificada para LINHA, pois assim
		 * 		caso seja adicionado ou removido uma linha, é necessário
		 * 		redistribuir o frete.
		 */
		if (MOrder.FREIGHTCOSTRULE_FixPrice.equals(order.getFreightCostRule()))
			order.setFreightCostRule(MOrder.FREIGHTCOSTRULE_Line);
	}	//	recalcuteOrder
	
	/**
	 * 	Verify if other charges must be recalculated to all lines
	 * 	@param order
	 * 	@return true if must recalculate
	 */
	private boolean isChangeAffectOtherCharges (PO po)
	{
		if (po instanceof MOrder || po instanceof MInvoice)
		{
			/**
			 * 	Campos comuns entre Pedido e Fatura
			 */
			if (po.is_ValueChanged(I_W_C_Order.COLUMNNAME_LBR_OtherChargesAmt))
				return true;
		}
		else if  (po instanceof MOrderLine || po instanceof MInvoiceLine)
		{
			/**
			 * 	Campos comuns nas Linhas do Pedido e Fatura
			 */
			if (po.is_ValueChanged (I_W_C_OrderLine.COLUMNNAME_LineNetAmt))
				return true;
		}
		//
		return false;
	}	//	isChangeAffectOtherCharges
	
	/**
	 * 	Refaz os cálculos de Despesas Acessórias por linha
	 * 
	 * 	@param order Pedido
	 */
	private void recalcuteOtherCharges (MOrder order)
	{
		I_W_C_Order orderW = POWrapper.create(order, I_W_C_Order.class);
		I_W_AD_ClientInfo clientInfoW = POWrapper.create(MClientInfo.get(Env.getCtx()), I_W_AD_ClientInfo.class); 
		
		BigDecimal otherChargesAmt = orderW.getLBR_OtherChargesAmt();
		int M_ProductOtherCharges_ID = clientInfoW.getLBR_ProductOtherCharges_ID();
		
		//	Total da NF sem considerar o valor de Despesas Acessórias
		BigDecimal totalLines = Env.ZERO;
		int lineCount = 0;
		
		//	Compõe o TotalLines
		for (MOrderLine ol : order.getLines())
		{
			if (ol.getM_Product_ID() > 0 
					&& ol.getM_Product_ID() != M_ProductOtherCharges_ID
					&& ol.getM_Product().getProductType().equals(MProduct.PRODUCTTYPE_Item))
			{
				totalLines = totalLines.add(ol.getLineNetAmt());
				lineCount++;
			}
		}
		
		//	Calcula o valor remanescente do frete, para evitar problema de arredondamento
		BigDecimal remaingOtherChargesAmt = otherChargesAmt;
		int currentLine = 0;
		
		//	Rateia Despesas Acessórias
		for (MOrderLine ol : order.getLines())
		{
			I_W_C_OrderLine olW = POWrapper.create(ol, I_W_C_OrderLine.class);
			//	Não ratear a linha de Outras Despesas para serviços
			if (ol.getM_Product_ID() == 0 
					|| ol.getM_Product_ID() == M_ProductOtherCharges_ID
					|| !ol.getM_Product().getProductType().equals(MProduct.PRODUCTTYPE_Item)
					|| ol.getLineNetAmt().compareTo(Env.ZERO) == 0)
				continue;
			
			//	Faz o rateiro do Outras Despesas por Linha
			BigDecimal lineAmt 	     		= ol.getLineNetAmt();
			BigDecimal lineOtherChargesAmt 	= lineAmt.multiply(otherChargesAmt).divide(totalLines, 2, RoundingMode.HALF_UP);
			
			//	Verifica se a linha atual é a última linha,
			//		caso positivo, o valor residual é inserido nesta linha
			if (++currentLine == lineCount)
				lineOtherChargesAmt = remaingOtherChargesAmt;
			else
				remaingOtherChargesAmt = remaingOtherChargesAmt.subtract(lineOtherChargesAmt);
			
			olW.setLBR_OtherChargesAmt(lineOtherChargesAmt);
			//
			ol.save();
		}
	}	//	recalcuteOrder
	
	/**
	 * 	Verify if other charges must be recalculated to all lines
	 * 	@param order
	 * 	@return true if must recalculate
	 */
	private boolean isChangeAffectInsurance (PO po)
	{
		if (po instanceof MOrder || po instanceof MInvoice)
		{
			/**
			 * 	Campos comuns entre Pedido e Fatura
			 */
			if (po.is_ValueChanged(I_W_C_Order.COLUMNNAME_lbr_InsuranceAmt))
				return true;
		}
		else if  (po instanceof MOrderLine || po instanceof MInvoiceLine)
		{
			/**
			 * 	Campos comuns nas Linhas do Pedido e Fatura
			 */
			if (po.is_ValueChanged (I_W_C_OrderLine.COLUMNNAME_LineNetAmt))
				return true;
		}
		//
		return false;
	}	//	isChangeAffectInsurance
	
	/**
	 * 	Refaz os cálculos de Seguro por linha
	 * 
	 * 	@param order Pedido
	 */
	private void recalcuteInsurance (MOrder order)
	{
		I_W_C_Order orderW = POWrapper.create(order, I_W_C_Order.class);
		I_W_AD_ClientInfo clientInfoW = POWrapper.create(MClientInfo.get(Env.getCtx()), I_W_AD_ClientInfo.class); 
		
		BigDecimal insuranceAmt = orderW.getlbr_InsuranceAmt();
		int M_ProductInsurance_ID = clientInfoW.getLBR_ProductInsurance_ID();
		
		//	Total da NF sem considerar o valor do seguro
		BigDecimal totalLines = Env.ZERO;
		int lineCount = 0;
		
		//	Compõe o TotalLines
		for (MOrderLine ol : order.getLines())
		{
			if (ol.getM_Product_ID() > 0 
					&& ol.getM_Product_ID() != M_ProductInsurance_ID
					&& ol.getM_Product().getProductType().equals(MProduct.PRODUCTTYPE_Item))
			{
				totalLines = totalLines.add(ol.getLineNetAmt());
				lineCount++;
			}
		}
		
		//	Calcula o valor remanescente do frete, para evitar problema de arredondamento
		BigDecimal remaingInsuranceAmt = insuranceAmt;
		int currentLine = 0;
		
		//	Rateia o Seguro
		for (MOrderLine ol : order.getLines())
		{
			I_W_C_OrderLine olW = POWrapper.create(ol, I_W_C_OrderLine.class);
			//	Não ratear a linha de Seguro para serviços
			if (ol.getM_Product_ID() == 0 
					|| ol.getM_Product_ID() == M_ProductInsurance_ID
					|| !ol.getM_Product().getProductType().equals(MProduct.PRODUCTTYPE_Item)
					|| ol.getLineNetAmt().compareTo(Env.ZERO) == 0)
				continue;
			
			//	Faz o rateiro do Seguro por Linha
			BigDecimal lineAmt 	     		= ol.getLineNetAmt();
			BigDecimal lineInsuranceAmt 	= lineAmt.multiply(insuranceAmt).divide(totalLines, 2, RoundingMode.HALF_UP);
			
			//	Verifica se a linha atual é a última linha,
			//		caso positivo, o valor residual é inserido nesta linha
			if (++currentLine == lineCount)
				lineInsuranceAmt = remaingInsuranceAmt;
			else
				remaingInsuranceAmt = remaingInsuranceAmt.subtract(lineInsuranceAmt);
			
			olW.setlbr_InsuranceAmt(lineInsuranceAmt);
			
			//
			ol.save();
		}
	}	//	recalcuteOrder
	
	
	/**
	 * 	Adiciona o valor do Seguro
	 * 	@param order
	 */
	private String addCharge (MInvoice invoice, int chargeType)
	{
		MClientInfo cInfo = MClientInfo.get (invoice.getCtx(), invoice.getAD_Client_ID());
		I_W_AD_ClientInfo cInfoW = POWrapper.create(cInfo, I_W_AD_ClientInfo.class);
		MInvoiceLine chgLine = null;
		
		//	Verifica se a despesa está cadastrada na empresa
		if ((cInfoW.getLBR_ProductSISCOMEX_ID() <= 0 			&& chargeType == SISCOMEX)
				|| (cInfoW.getM_ProductFreight_ID() <= 0 		&& chargeType == FREIGHT)
				|| (cInfoW.getLBR_ProductInsurance_ID() <= 0 	&& chargeType == INSURANCE)
				|| (cInfoW.getLBR_ProductOtherCharges_ID() <= 0 && chargeType == OTHERCHARGES)
				|| (cInfoW.getLBR_ProductWithhold_ID() <= 0 	&& chargeType == WITHHOLD))
			return null;
		
		int M_Product_ID = 0;
		
		BigDecimal amount = Env.ZERO;
		
		if (chargeType 		== SISCOMEX)
			M_Product_ID = cInfoW.getLBR_ProductSISCOMEX_ID();
		else if (chargeType == FREIGHT)
			M_Product_ID = cInfoW.getM_ProductFreight_ID();
		else if (chargeType == INSURANCE)
			M_Product_ID = cInfoW.getLBR_ProductInsurance_ID();
		else if (chargeType == OTHERCHARGES)
			M_Product_ID = cInfoW.getLBR_ProductOtherCharges_ID();
		else if (chargeType == WITHHOLD)
		{
			M_Product_ID = cInfoW.getLBR_ProductWithhold_ID();
			
			// Buscar o Valor de Renteção
			amount = withHoldAmount(invoice);
		}
		
		//	Charge Amount
		if (chargeType != WITHHOLD)
			amount = getChargeAmt (invoice, chargeType);

		if (amount == null 
				|| amount.compareTo(Env.ZERO) == 0)
			return null;
		
		for (MInvoiceLine ol : invoice.getLines())
		{
			if (ol.getM_Product_ID() == M_Product_ID)
			{
				chgLine = ol;
				break;
			}
		}
		
		if (chgLine == null)
		{
			chgLine = new MInvoiceLine(invoice);
			chgLine.setQty(Env.ONE);
			chgLine.setDescription("Inserido Automáticamente");
			chgLine.setM_Product_ID(M_Product_ID);

			//	Case Invoice is Reversal, should be negative
			if (invoice.isReversal())
				chgLine.setQty(Env.ONE.negate());
			else
				chgLine.setQty(Env.ONE);
		}		
		//
		chgLine.setPrice(amount);
		chgLine.setPriceList(amount);
		chgLine.save();
		//
		return null;
	}	//	addInsurance
	
	/**
	 * 		Retorna o Valor de Todas as Despesas
	 * 
	 * 	@param po	-	Documento
	 * 	@param chargeType 	-	Tipo de Valor
	 * 	@return	Valor
	 */
	public static BigDecimal getChargeAmt (PO po)
	{
		return 		  getChargeAmt (po, SISCOMEX)
				.add (getChargeAmt (po, FREIGHT))
				.add (getChargeAmt (po, INSURANCE))
				.add (getChargeAmt (po, OTHERCHARGES));
	}	//	getChargeAmt
	
	/**
	 * 		Retorna o Valor da Despesa especificada
	 * 
	 * 	@param po	-	Documento
	 * 	@param chargeType 	-	Tipo de Valor
	 * 	@return	Valor
	 */
	public static BigDecimal getChargeAmt (PO po, int chargeType)
	{
		//	Total da NF sem considerar o valor do seguro
		BigDecimal amount = Env.ZERO;
		
		//	Compõe o Total do Seguro para o Pedido
		if (MOrder.Table_Name.equals(po.get_TableName()))
			for (MOrderLine ol : ((MOrder) po).getLines())
			{
				I_W_C_OrderLine olW = POWrapper.create(ol, I_W_C_OrderLine.class);
				//
				if (ol.getM_Product_ID() > 0 
						&& ol.getM_Product().getProductType().equals(MProduct.PRODUCTTYPE_Item))
				{
					if (chargeType == SISCOMEX)
						amount = amount.add(olW.getlbr_SISCOMEXAmt());
					else if (chargeType == FREIGHT)
						amount = amount.add(olW.getFreightAmt());
					else if (chargeType == INSURANCE)
						amount = amount.add(olW.getlbr_InsuranceAmt());
					else if (chargeType == OTHERCHARGES)
						amount = amount.add(olW.getLBR_OtherChargesAmt());
				}
			}
		
		//	Compõe o Total do Seguro para a Fatura
		else if (MInvoice.Table_Name.equals(po.get_TableName()))
			for (MInvoiceLine il : ((MInvoice) po).getLines(true))
			{
				I_W_C_InvoiceLine olW = POWrapper.create(il, I_W_C_InvoiceLine.class);
				//
				if (il.getM_Product_ID() > 0 
						&& il.getM_Product().getProductType().equals(MProduct.PRODUCTTYPE_Item))
				{
					if (chargeType == SISCOMEX)
						amount = amount.add(olW.getlbr_SISCOMEXAmt());
					else if (chargeType == FREIGHT)
						amount = amount.add(olW.getFreightAmt());
					else if (chargeType == INSURANCE)
						amount = amount.add(olW.getlbr_InsuranceAmt());
					else if (chargeType == OTHERCHARGES)
						amount = amount.add(olW.getLBR_OtherChargesAmt());
				}
			}
		//	Compõe o Total do Seguro para o Pedido
		if (MOrderLine.Table_Name.equals(po.get_TableName()))
		{
			I_W_C_OrderLine olW = POWrapper.create(po, I_W_C_OrderLine.class);
			//
			if (olW.getM_Product_ID() > 0 
					&& olW.getM_Product().getProductType().equals(MProduct.PRODUCTTYPE_Item))
			{
				if (chargeType == SISCOMEX)
					amount = amount.add(olW.getlbr_SISCOMEXAmt());
				else if (chargeType == FREIGHT)
					amount = amount.add(olW.getFreightAmt());
				else if (chargeType == INSURANCE)
					amount = amount.add(olW.getlbr_InsuranceAmt());
				else if (chargeType == OTHERCHARGES)
					amount = amount.add(olW.getLBR_OtherChargesAmt());
			}
		}
		
		//	Compõe o Total do Seguro para a Fatura
		else if (MInvoiceLine.Table_Name.equals(po.get_TableName()))
		{
			I_W_C_InvoiceLine olW = POWrapper.create(po, I_W_C_InvoiceLine.class);
			//
			if (olW.getM_Product_ID() > 0 
					&& olW.getM_Product().getProductType().equals(MProduct.PRODUCTTYPE_Item))
			{
				if (chargeType == SISCOMEX)
					amount = amount.add(olW.getlbr_SISCOMEXAmt());
				else if (chargeType == FREIGHT)
					amount = amount.add(olW.getFreightAmt());
				else if (chargeType == INSURANCE)
					amount = amount.add(olW.getlbr_InsuranceAmt());
				else if (chargeType == OTHERCHARGES)
					amount = amount.add(olW.getLBR_OtherChargesAmt());
			}
		}
		//
		return amount;
	}	//	getInsuranceAmt
	
	/**
	 *	Valor de Retenção
	 */
	public BigDecimal withHoldAmount(MInvoice invoice)
	{
		BigDecimal amount = Env.ZERO;
		
		//		Withhold Amount
		String sql = "SELECT   " + 
					"        COALESCE (SUM (TaxAmt), 0) " + 
					"FROM " + 
					" " + 
					"   (SELECT  " + 
					"            tn.LBR_WithholdGroup,  " + 
					"            SUM (TaxAmt) AS TaxAmt,  " + 
					"            AVG (LBR_WithholdThreshold) AS LBR_WithholdThreshold " + 
					"    FROM  " + 
					"            C_InvoiceTax it, C_Tax t, LBR_TaxName tn " + 
					"    WHERE  " + 
					"            1=1 " + 
					"            AND it.C_Invoice_ID=?  " + 
					"            AND it.C_Tax_ID=t.C_Tax_ID  " + 
					"            AND t.LBR_TaxName_ID=tn.LBR_TaxName_ID " + 
					"            AND tn.LBR_WithholdType='T' " + 
					"			 AND tn.LBR_HasWithhold='Y' " + 
					"    GROUP BY  " + 
					"            tn.LBR_WithholdGroup) a " + 
					"WHERE " + 
					"        TaxAmt >= LBR_WithholdThreshold"; 
		
		amount = DB.getSQLValueBD (invoice.get_TrxName(), sql, invoice.getC_Invoice_ID()).negate();
				
		return amount;
	}	//	withHoldAmount
	
	/**
	 *	Identificar quais Impostos possuem retenção
	 */
	public static List<String> hasWithHold(MInvoice invoice)
	{		
		// Withhold Description
		String sql = "SELECT  LBR_WithholdGroup FROM " + 
					"   (SELECT  " + 
					"            tn.LBR_WithholdGroup,  " + 
					"            SUM (TaxAmt) AS TaxAmt,  " + 
					"            AVG (LBR_WithholdThreshold) AS LBR_WithholdThreshold " + 
					"    FROM  " + 
					"            C_InvoiceTax it, C_Tax t, LBR_TaxName tn " + 
					"    WHERE  " + 
					"            1=1 " + 
					"            AND it.C_Invoice_ID=?  " + 
					"            AND it.C_Tax_ID=t.C_Tax_ID  " + 
					"            AND t.LBR_TaxName_ID=tn.LBR_TaxName_ID " + 
					"            AND tn.LBR_WithholdType='T' " + 
					"			 AND tn.LBR_HasWithhold='Y' " + 
					"    GROUP BY  " + 
					"            tn.LBR_WithholdGroup) a " + 
					"WHERE " + 
					"        TaxAmt >= LBR_WithholdThreshold"; 
		
		try
		{
			
			// Resultado
			PreparedStatement pstmt = DB.prepareStatement(sql, invoice.get_TrxName());
			pstmt.setInt(1, invoice.getC_Invoice_ID());
			ResultSet rs = pstmt.executeQuery();		
		
			List<String> list = new ArrayList<String>();
			
			while (rs.next())
				list.add(rs.getString(1));
			
			// Devolver resultado
			if (list != null)
				return list;
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}		
		
		return null;
	}	//	hasWithHold
}	//	VLBROrder
