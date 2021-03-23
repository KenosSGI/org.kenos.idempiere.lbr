/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.adempierelbr.validator;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.Timestamp;
import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRTax;
import org.adempierelbr.model.X_LBR_DI;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.wrapper.I_W_C_DocType;
import org.adempierelbr.wrapper.I_W_C_Order;
import org.adempierelbr.wrapper.I_W_C_OrderLine;
import org.compiere.model.MAttributeSet;
import org.compiere.model.MClient;
import org.compiere.model.MCurrency;
import org.compiere.model.MDocType;
import org.compiere.model.MInOut;
import org.compiere.model.MInOutLine;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MInvoicePaySchedule;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrderPaySchedule;
import org.compiere.model.MProduct;
import org.compiere.model.MStorageOnHand;
import org.compiere.model.MSysConfig;
import org.compiere.model.MWarehouse;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.base.model.SysConfig;
import org.kenos.idempiere.lbr.nfe.importvalidator.ImportValidatorBPartner;
import org.kenos.idempiere.lbr.nfe.importvalidator.ImportValidatorOrder;

/**
 *	ValidatorOrder
 *
 *  Validate Order (Tax Calculation)
 *
 *  [ 1967069 ] LBR_Tax não é excluído quando excluí uma linha, mgrigioni
 *  [ 2200626 ] Lista de Preço Brasil, mgrigioni
 *
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@contributor Fernando Lucktemberg (Faire, www.faire.com.br)
 *	@contributor Ricardo Santana (Kenos, www.kenos.com.br)
 *		<li>	Compatibility to new Taxes System
 *	@version $Id: ValidatorOrder.java, v2.0 2007/12/21 1:25:14 AM, ralexsander Exp $
 */
public class ValidatorOrder implements ModelValidator
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ValidatorOrder.class);
	/** Client			*/
	private int		m_AD_Client_ID = -1;

	/**
	 *	Initialize Validation
	 *	@param engine validation engine
	 *	@param client client
	 */
	public void initialize (ModelValidationEngine engine, MClient client)
	{
		// Register Import Validators
		engine.addImportValidate(ImportValidatorBPartner.ImportTableName, new ImportValidatorBPartner());		
		engine.addImportValidate(ImportValidatorOrder.ImportTableName, new ImportValidatorOrder());
				
		if (client != null) 
		{
			m_AD_Client_ID = client.getAD_Client_ID();
			log.info(client.toString());
		}
		else 
			log.info("Initializing global validator: " + toString());

		engine.addModelChange(MOrderLine.Table_Name, this);
		engine.addDocValidate(MOrder.Table_Name, this);
	}	//	initialize

	/**
	 *	Get Client to be monitored
	 *	@return AD_Client_ID client
	 */
	public int getAD_Client_ID()
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
		log.info("AD_User_ID=" + AD_User_ID);
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
		if (MOrderLine.Table_Name.equals(po.get_TableName()))
			return modelChange((MOrderLine) po, type);
		//
		return null;
	}	//	modelChange

	/**
     *	Model Change of a monitored Table.
     *	Called after PO.beforeSave/PO.beforeDelete
     *	when you called addModelChange for the table
     *	@param oLine order line
     *	@param type TYPE_
     *	@return error message or null
     *	@exception Exception if the recipient wishes the change to be not accept.
     */
	public String modelChange (MOrderLine oLine, int type) throws Exception
	{
		I_W_C_OrderLine oLineW = POWrapper.create(oLine, I_W_C_OrderLine.class);
		
		/**
		 * 	Faz o cálculo do imposto no nível do modelo, quando o pedido é criado
		 * 		sem usar o framework
		 */
		if (type == TYPE_BEFORE_NEW)
		{
			//	TODO
			
			//	Validar Conversão de Unidada de Medida na Linha do Pedido
			if (MSysConfig.getBooleanValue(SysConfig.LBR_VALIDATE_UOM_CONVERT_ON_ORDERLINE,false,oLine.getAD_Client_ID()) &&
					oLine.getProduct().getC_UOM_ID() != oLine.getC_UOM_ID() && 
					!oLine.getQtyEntered().multiply(oLine.getPriceEntered()).equals(oLine.getQtyOrdered().multiply(oLine.getPriceActual())))				
				return "Problema ao fazer a conversão de Unidade de Medida. Valor Calculado difere do Valor de Entrada";
		}

		/**
		 * 	Apaga o imposto quando a linha da OV é apagada
		 */
		else if (type == TYPE_BEFORE_DELETE)
		{
			MLBRTax tax = new MLBRTax (Env.getCtx(), oLineW.getLBR_Tax_ID(), oLine.get_TrxName());
			tax.delete (true, oLine.get_TrxName());
		}
		
		/**
		 * Comparar Quantidade do Pedido a Quantidade Entregue / Faturada antes da alteração
		 */
		else if (type == TYPE_BEFORE_CHANGE)
		{
			MDocType dt = (MDocType) oLine.getC_Order().getC_DocType();			
			Boolean salesPurchaseOp = dt.get_ValueAsBoolean("LBR_IsSalesPurchaseOperation");
			
			//	Se não for Operação de Compra e Venda, Quantidade Faturada acompanha a Quantidade Expedida/Recebida
			if (!salesPurchaseOp)
				oLine.setQtyInvoiced(oLine.getQtyDelivered());
				
			//	Não permitir Alteração na Quantidade do Pedido se a mesma for Menor que a 
			//	Quantidade já Entregue ou já Faturada
			if (oLine.is_ValueChanged(I_W_C_OrderLine.COLUMNNAME_QtyEntered) &&
					(oLine.getQtyDelivered().intValue() > 0 || oLine.getQtyInvoiced().intValue() > 0))
			{
				if (oLine.getQtyOrdered().compareTo(oLine.getQtyDelivered()) == -1 ||
						oLine.getQtyOrdered().compareTo(oLine.getQtyInvoiced()) == -1)
						return "Quantidade do Pedido não pode ser Menor que a Quantidade Já Entregue ou Fatura";
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
		if (MOrder.Table_Name.equals(po.get_TableName()))
		{
			MOrder order   = (MOrder) po;
			Properties ctx = order.getCtx();
			String     trx = order.get_TrxName();
			
			if (timing == TIMING_BEFORE_PREPARE)
			{
				//	Doc Type
				MDocType docType = (MDocType) order.getC_DocTypeTarget();
				
				//	If Proposal or Quotation don't need to set Shipper
				if (MOrder.DELIVERYVIARULE_Shipper.equals(order.getDeliveryViaRule()) && 
						order.getM_Shipper_ID() == 0 &&
							(MDocType.DOCSUBTYPESO_Proposal.equals(docType.getDocSubTypeSO()) ||
									MDocType.DOCSUBTYPESO_Quotation.equals(docType.getDocSubTypeSO())))
				{	
					order.setDeliveryViaRule(MOrder.DELIVERYVIARULE_Delivery);
					order.saveEx();
				}	
					
				
				if (!order.validatePaySchedule())
				{	
					MOrderPaySchedule[] schedule = MOrderPaySchedule.getOrderPaySchedule
					(order.getCtx(), order.getC_Order_ID(), 0, order.get_TrxName());
					
					for (MOrderPaySchedule s : schedule)
					{
						s.deleteEx(true);
					}
				}
			}			
			else if (timing == TIMING_BEFORE_COMPLETE)
			{
				I_W_C_Order orderW = POWrapper.create (order, I_W_C_Order.class);
				
				//	Pedido de Compra de Importação
				if(!order.isSOTrx() && 
						"IMP".equals(orderW.getlbr_TransactionType()))
				{
					//	Validação na Declaração de Importação
					for (X_LBR_DI dis : NFeUtil.getDIs (order))
					{
						if (dis.getlbr_CustomSite() == null)
							return "Preencha o Local do Desembaraço na DI: " + dis.getDocumentNo();
						
						if (dis.getC_Region_ID() == 0)
							return "Preencha a Região na DI: " + dis.getDocumentNo();
					}
				}
				
				if (order.isSOTrx())
				{
					//	Attribute Set Instance Always Mandatory Validation
					for (MOrderLine ol : order.getLines())
					{
						MProduct p = (MProduct) ol.getM_Product();
						
						if (p.getM_Product_ID() > 0 &&
								p.getM_AttributeSet_ID() > 0 &&
								MAttributeSet.MANDATORYTYPE_AlwaysMandatory.equals(p.getM_AttributeSet().getMandatoryType()) &&
								ol.getM_AttributeSetInstance_ID() == 0)
							return "Instância de Atributo obrigatório para o produto " + ol.getM_Product().getValue();
					}
				}
			}
			else if (timing == TIMING_AFTER_COMPLETE)
			{
				MDocType dt = MDocType.get (ctx, order.getC_DocTypeTarget_ID());
				I_W_C_DocType dtW = POWrapper.create(dt, I_W_C_DocType.class); 
				String DocSubTypeSO = dt.getDocSubTypeSO();

				//	Somente Venda Padrão
				if (DocSubTypeSO != null && !(DocSubTypeSO.equals(MDocType.DOCSUBTYPESO_WarehouseOrder) ||
					  DocSubTypeSO.equals(MDocType.DOCSUBTYPESO_POSOrder)))
				{
					MInOut shipment  = null;
					MInvoice invoice = null;

					//	Shipment
					if (dtW.islbr_IsAutomaticShipment())
					{
						// Apenas Regra de Entrega Pedido Completo ou Forçar podem gerar Expedição Automatica
						// Forçar Pedido Completo se a Regra for Invalida para Geração Automática
						if (!MOrder.DELIVERYRULE_CompleteOrder.equals(order.getDeliveryRule())
							&& !MOrder.DELIVERYRULE_Force.equals(order.getDeliveryRule()))
							order.setDeliveryRule(MOrder.DELIVERYRULE_CompleteOrder);
						
						shipment = createShipment(order, dt, order.getDateOrdered());
					}
					
					//	Complete
					if (shipment != null)
					{
						//	Manually Process Shipment
						String status = shipment.completeIt();
						shipment.setDocStatus(status);
						shipment.save(trx);
						if (!MOrder.DOCSTATUS_Completed.equals(status))
							return shipment.getProcessMsg();
					}

					//	Invoice
					if (dtW.islbr_IsAutomaticInvoice())
						invoice = createInvoice(order, dt, shipment, order.getDateOrdered());

					//	Complete
					if (invoice != null)
					{
						String status = invoice.completeIt();
						invoice.setDocStatus(status);
						invoice.save(trx);
						order.setC_CashLine_ID(invoice.getC_CashLine_ID());
						if (!MOrder.DOCSTATUS_Completed.equals(status))
							return invoice.getProcessMsg();
					}
				}
			}	//	After Complete
			
			else if (timing == TIMING_BEFORE_REACTIVATE)
			{
				MDocType dt = MDocType.get (ctx, order.getC_DocTypeTarget_ID());
				I_W_C_DocType dtW = POWrapper.create(dt, I_W_C_DocType.class); 
				String DocSubTypeSO = dt.getDocSubTypeSO();

				//	Somente Venda Padrão
				if (DocSubTypeSO != null && !(DocSubTypeSO.equals(MDocType.DOCSUBTYPESO_WarehouseOrder) ||
					  DocSubTypeSO.equals(MDocType.DOCSUBTYPESO_POSOrder)))
				{
					// Verify if exist a Valid Shipment
					Boolean validShipment = new Query(Env.getCtx(), MInOut.Table_Name, "C_Order_ID = ? AND DocStatus IN ('CO', 'CL')", null)
											.setParameters(order.getC_Order_ID())
											.count() > 0;
					
					// Verify if exist a Valid Invoice				
					Boolean validInvoice = new Query(Env.getCtx(), MInvoice.Table_Name, "C_Order_ID = ? AND DocStatus IN ('CO', 'CL')", null)
							.setParameters(order.getC_Order_ID())
							.count() > 0;
					
					//	Shipment / Invoice Generated Automaticly
					if ((dtW.islbr_IsAutomaticShipment() && validShipment) ||
							(dtW.islbr_IsAutomaticInvoice()	&& validInvoice))
							return "Impossível Reativar - Estorne Fatura e/ou Remessa Gerada Automáticamente";
				}		
			}
			
			/**
			 * Não Anular Pedido com Fatura ou Remessa Válida
			 */
			else if (timing == TIMING_BEFORE_VOID &&
					!MSysConfig.getBooleanValue(SysConfig.LBR_ALLOW_VOID_ORDER_WITH_INVOICE_SHIPMENT, false, order.getAD_Client_ID()))
			{
				// Verify if exist a Valid Shipment
				Boolean validShipment = new Query(Env.getCtx(), MInOut.Table_Name, "C_Order_ID = ? AND DocStatus IN ('CO', 'CL')", null)
										.setParameters(order.getC_Order_ID())
										.count() > 0;
				
				// Verify if exist a Valid Invoice				
				Boolean validInvoice = new Query(Env.getCtx(), MInvoice.Table_Name, "C_Order_ID = ? AND DocStatus IN ('CO', 'CL')", null)
						.setParameters(order.getC_Order_ID())
						.count() > 0;
						
				//	Shipment / Invoice Generated Automaticly
				if (validShipment || validInvoice)
						return "Impossível Anular se houver Fatura ou Remessa Válida";
			}
		}
		//
		return null;
	}	//	docValidate

	/**
	 * 	Create Shipment
	 *	@param dt order document type
	 *	@param movementDate optional movement date (default today)
	 *	@return shipment or null
	 */
	private MInOut createShipment (MOrder order, MDocType dt, Timestamp movementDate)
	{
		Properties ctx = order.getCtx();
		String     trx = order.get_TrxName();

		MInOut shipment = new MInOut (order, dt.getC_DocTypeShipment_ID(), movementDate);
	//	shipment.setDateAcct(getDateAcct());
		if (!shipment.save(trx))
		{
			log.log(Level.SEVERE, "Could not create Shipment");
			return null;
		}
		//
		MOrderLine[] oLines = order.getLines(true, null);
		for (int i = 0; i < oLines.length; i++)
		{
			MOrderLine oLine = oLines[i];
			//
			MInOutLine ioLine = new MInOutLine(shipment);
			//	Qty = Ordered - Delivered
			BigDecimal MovementQty = oLine.getQtyOrdered().subtract(oLine.getQtyDelivered());
			if (MovementQty.signum() == 0)
				continue;

			//	Location
			Integer M_Locator_ID = (Integer)oLine.get_Value("M_Locator_ID");
			if (M_Locator_ID == null || M_Locator_ID.intValue() == 0){
				M_Locator_ID = MStorageOnHand.getM_Locator_ID (oLine.getM_Warehouse_ID(),
					oLine.getM_Product_ID(), oLine.getM_AttributeSetInstance_ID(),
					MovementQty, trx);
			}
			if (M_Locator_ID == 0)		//	Get default Location
			{
				MWarehouse wh = MWarehouse.get(ctx, oLine.getM_Warehouse_ID());
				M_Locator_ID = wh.getDefaultLocator().getM_Locator_ID();
			}
			//
			ioLine.setOrderLine(oLine, M_Locator_ID, MovementQty);
			ioLine.setQty(MovementQty);
			if (oLine.getQtyEntered().compareTo(oLine.getQtyOrdered()) != 0)
				ioLine.setQtyEntered(MovementQty
					.multiply(oLine.getQtyEntered())
					.divide(oLine.getQtyOrdered(), 6, RoundingMode.HALF_UP));
			if (!ioLine.save(trx))
			{
				log.log(Level.SEVERE, "Could not create Shipment Line");
				return null;
			}
		}
		return shipment;
	}	//	createShipment

	/**
	 * 	Create Invoice
	 *	@param dt order document type
	 *	@param shipment optional shipment
	 *	@param invoiceDate invoice date
	 *	@return invoice or null
	 */
	private MInvoice createInvoice (MOrder order, MDocType dt, MInOut shipment, Timestamp invoiceDate)
	{
		String trxName = order.get_TrxName();
		Properties ctx = order.getCtx();
		//
		MInvoice invoice = new MInvoice (order, dt.getC_DocTypeInvoice_ID(), invoiceDate);
		if (!invoice.save(trxName))
		{
			log.log(Level.SEVERE, "Could not create Invoice");
			return null;
		}

		//	If we have a Shipment - use that as a base
		if (shipment != null)
		{
			//
			MInOutLine[] sLines = shipment.getLines(false);
			for (int i = 0; i < sLines.length; i++)
			{
				MInOutLine sLine = sLines[i];
				//
				MInvoiceLine iLine = new MInvoiceLine(invoice);
				iLine.setShipLine(sLine);
				//	Qty = Delivered
				iLine.setQtyEntered(sLine.getQtyEntered());
				iLine.setQtyInvoiced(sLine.getMovementQty());
				if (!iLine.save(trxName))
				{
					log.log(Level.SEVERE, "Could not create Invoice Line from Shipment Line");
					return null;
				}
				//
				sLine.setIsInvoiced(true);
				if (!sLine.save(trxName))
				{
					log.warning("Could not update Shipment line: " + sLine);
				}
			}
		}
		else	//	Create Invoice from Order
		{
			//
			MOrderLine[] oLines = order.getLines(true,null);
			for (int i = 0; i < oLines.length; i++)
			{
				MOrderLine oLine = oLines[i];
				//
				MInvoiceLine iLine = new MInvoiceLine(invoice);
				iLine.setOrderLine(oLine);
				//	Qty = Ordered - Invoiced
				iLine.setQtyInvoiced(oLine.getQtyOrdered().subtract(oLine.getQtyInvoiced()));
				if (oLine.getQtyOrdered().compareTo(oLine.getQtyEntered()) == 0)
					iLine.setQtyEntered(iLine.getQtyInvoiced());
				else
					iLine.setQtyEntered(iLine.getQtyInvoiced().multiply(oLine.getQtyEntered())
						.divide(oLine.getQtyOrdered(), 12, RoundingMode.HALF_UP));
				if (!iLine.save(trxName))
				{
					log.log(Level.SEVERE, "Could not create Invoice Line from Order Line");
					return null;
				}
			}
		}
		
		if (!MSysConfig.getBooleanValue(SysConfig.LBR_OVERWRITE_ORDER_PAY_SCHEDULE, true))
		{
			// copy payment schedule from order if invoice doesn't have a current payment schedule
			MOrderPaySchedule[] opss = MOrderPaySchedule.getOrderPaySchedule(ctx, order.getC_Order_ID(), 0, trxName);
			//MInvoicePaySchedule[] ipss = MInvoicePaySchedule.getInvoicePaySchedule(ctx, invoice.getC_Invoice_ID(), 0, trxName);
			//if (ipss.length == 0 && opss.length > 0) {
			if (opss.length > 0) {
				invoice.load(invoice.get_TrxName()); // refresh from DB

				MInvoicePaySchedule[] ipss = MInvoicePaySchedule.getInvoicePaySchedule(ctx, invoice.getC_Invoice_ID(), 0, trxName);
				for (MInvoicePaySchedule s : ipss)
					s.deleteEx(true);
			
				BigDecimal ogt = order.getGrandTotal();
				BigDecimal igt = invoice.getGrandTotal();
				BigDecimal percent = Env.ONE;
				if (ogt.compareTo(igt) != 0)
					percent = igt.divide(ogt, 10, RoundingMode.HALF_UP);
				MCurrency cur = MCurrency.get(order.getCtx(), order.getC_Currency_ID());
				int scale = cur.getStdPrecision();
			
				for (MOrderPaySchedule ops : opss) {
					MInvoicePaySchedule ips = new MInvoicePaySchedule(ctx, 0, trxName);
					PO.copyValues(ops, ips);
					if (percent != Env.ONE) {
						BigDecimal propDueAmt = ops.getDueAmt().multiply(percent);
						if (propDueAmt.scale() > scale)
							propDueAmt = propDueAmt.setScale(scale, RoundingMode.HALF_UP);
						ips.setDueAmt(propDueAmt);
					}
					ips.setC_Invoice_ID(invoice.getC_Invoice_ID());
					ips.setAD_Org_ID(ops.getAD_Org_ID());
					ips.setProcessing(ops.isProcessing());
					ips.setIsActive(ops.isActive());
					ips.saveEx();
				}
				invoice.validatePaySchedule();
				invoice.saveEx(trxName);
			}
		}

		return invoice;
	}	//	createInvoice
}	//	ValidatorOrder
