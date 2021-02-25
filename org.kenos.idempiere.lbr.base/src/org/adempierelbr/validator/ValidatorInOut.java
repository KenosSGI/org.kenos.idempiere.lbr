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
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.adempierelbr.wrapper.I_W_C_DocType;
import org.adempierelbr.wrapper.I_W_M_Warehouse;
import org.compiere.model.MClient;
import org.compiere.model.MDocType;
import org.compiere.model.MInOut;
import org.compiere.model.MInOutLine;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MMovement;
import org.compiere.model.MMovementLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.model.MRMA;
import org.compiere.model.MSysConfig;
import org.compiere.model.MWarehouse;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.PO;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.kenos.idempiere.lbr.base.model.SysConfig;

/**
 *	ValidatorInOut, inclui as validações de outras tabelas que
 *	manipulam materiais, como Movimentações, Inventário e Entrada/Saída.
 *
 *	@author Ricardo Santana (ralexsander)
 *	@version $Id: ValidatorInOut.java, 04/01/2008 15:56:00 ralexsander
 */
public class ValidatorInOut implements ModelValidator
{
	/**
	 *	Constructor.
	 *	The class is instanciated when logging in and client is selected/known
	 */
	public ValidatorInOut ()
	{
		super ();
	}	//ValidatorInOut

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ValidatorInOut.class);
	/** Client			*/
	private int		m_AD_Client_ID = -1;

	/**
	 *	Initialize Validation
	 *	@param engine validation engine
	 *	@param client client
	 */
	public void initialize (ModelValidationEngine engine, MClient client)
	{
		//client = null for global validator
		if (client != null) {
			m_AD_Client_ID = client.getAD_Client_ID();
			log.info(client.toString());
		}
		else  {
			log.info("Initializing global validator: "+this.toString());
		}

		engine.addDocValidate(MInOut.Table_Name, this);
		engine.addDocValidate(MMovement.Table_Name, this);
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
		if (po instanceof MInOut){
			return docValidate((MInOut)po,timing);
		}

		else if (po instanceof MMovement){
			return docValidate((MMovement)po,timing);
		}

		return null;
	}	//	docValidate

	/**
	 *	Quantity On Hand.
	 *
	 *	@param M_Product_ID
	 *	@param M_Locator_ID
     *	@return BigDecimal quantity of product
	 */
	private BigDecimal getQtyOnHand(int M_Product_ID, int M_Locator_ID, int M_AttributeSetInstance_ID)
	{
		BigDecimal QtyOnHand = Env.ZERO;
		String sql = "SELECT SUM(QtyOnHand) FROM M_Storage "
			+ "WHERE M_Product_ID=?";	//	1
		if(M_Locator_ID > 0)
			sql = sql + " AND M_Locator_ID=?";	//	2
		if(M_AttributeSetInstance_ID >0)
			sql = sql + " AND M_AttributeSetInstance_ID=?";	//	3

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, M_Product_ID);
			if (M_Locator_ID > 0)
				pstmt.setInt(2, M_Locator_ID);
			if(M_AttributeSetInstance_ID > 0)
				pstmt.setInt(3, M_AttributeSetInstance_ID);

			rs = pstmt.executeQuery();
			if (rs.next())
			{
				QtyOnHand = rs.getBigDecimal(1);
			}
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
			return Env.ZERO;
		}
		finally{
		       DB.close(rs, pstmt);
		}

		if(QtyOnHand != null)
			return QtyOnHand;

		return Env.ZERO;
	}	//	QtyOnHand

	/**
	 *	Validate Movement.
	 *
	 *	@param MMovement movement
	 *	@param timing see TIMING_ constants
     *	@return error message or null
	 */
	private String docValidate(MMovement mov, int timing)
	{
		Properties ctx = mov.getCtx();
		String     msg = null;

		if (timing != TIMING_BEFORE_COMPLETE)
			return null;

		MMovementLine[] lines = mov.getLines(true);
		ArrayList<String> prod = new ArrayList<String>();

		if(lines == null || lines.length <= 0)
			return Msg.getMsg(ctx, "NoLines");
		
		for(MMovementLine line : lines) {
			if(line.getM_Product_ID() <=0 || line.getM_Locator_ID() <=0){
				msg = "Produto ou Localizador inválido";
				break;
			}

			if(line.getMovementQty().equals(Env.ZERO)){
				msg = "Itens com quantidade zero na linha #" + line.getLine();
				break;
			}

			if(!MSysConfig.getBooleanValue(SysConfig.LBR_ALLOW_DUPLICATED_MOVEMENTLINE_ON_MOVEMENT, true, mov.getAD_Client_ID()))
			{
				if(prod.contains("" + line.getM_Product_ID() + "|" + line.getM_Locator_ID())){
					msg = "Duas linhas usando o mesmo produto na mesma posição, produto=" + line.getProduct().getValue() + ", localizador=" + line.getM_Locator().getValue();
					break;
				}
				else{
					prod.add("" + line.getM_Product_ID() + "|" + line.getM_Locator_ID());
				}
			}

			BigDecimal qtdOnHand = getQtyOnHand(line.getM_Product_ID(), line.getM_Locator_ID(), line.getM_AttributeSetInstance_ID());

			if(qtdOnHand.compareTo(line.getMovementQty()) == -1){
				msg = "Sem saldo na linha #" + line.getLine() + ", produto=" + line.getProduct().getValue();
				break;
			}
			
			//	CNPJ of locator from and locator to should be the same
			if (!MSysConfig.getBooleanValue (SysConfig.LBR_ALLOW_CROSS_ORG_MOVEMENT, false) 
					&& line.getM_Locator().getM_Warehouse_ID() != line.getM_LocatorTo().getM_Warehouse_ID())
			{
				I_W_M_Warehouse wFrom = POWrapper.create (MWarehouse.get(mov.getCtx(), line.getM_Locator().getM_Warehouse_ID(), null), I_W_M_Warehouse.class);
				I_W_M_Warehouse wTo = POWrapper.create (MWarehouse.get(mov.getCtx(), line.getM_LocatorTo().getM_Warehouse_ID(), null), I_W_M_Warehouse.class);

				//	Allow cross-org when the warehouse is third-party
				if (TextUtil.match (wFrom.getlbr_WarehouseType(), I_W_M_Warehouse.LBR_WAREHOUSETYPE_NossoEmPoderDeTerceiros, I_W_M_Warehouse.LBR_WAREHOUSETYPE_TerceirosEmNossoPoder)
						|| TextUtil.match (wTo.getlbr_WarehouseType(), I_W_M_Warehouse.LBR_WAREHOUSETYPE_NossoEmPoderDeTerceiros, I_W_M_Warehouse.LBR_WAREHOUSETYPE_TerceirosEmNossoPoder))
					continue;
					
				I_W_AD_OrgInfo oiFrom = POWrapper.create (MOrgInfo.get(mov.getCtx(), line.getM_Locator().getAD_Org_ID(), null), I_W_AD_OrgInfo.class);
				I_W_AD_OrgInfo oiTo = POWrapper.create (MOrgInfo.get(mov.getCtx(), line.getM_LocatorTo().getAD_Org_ID(), null), I_W_AD_OrgInfo.class);
				
				String cnpjFrom = TextUtil.toNumeric(oiFrom.getlbr_CNPJ());
				String cnpjTo = TextUtil.toNumeric(oiTo.getlbr_CNPJ());
				
				if (!cnpjFrom.equals(cnpjTo))
				{
					msg = "Não é possível efetuar a movimentação entre armazéns com CNPJs diferentes. Linha #" + line.getLine();
					break;
				}
			}
		}

		return msg;
	}	//	docValidate

	/**
	 *	Validate Shipment/Receipt.
	 *
	 *	@param MInOut inventory
	 *	@param timing see TIMING_ constants
     *	@return error message or null
	 */
	private String docValidate(MInOut inOut, int timing)
	{
		Properties ctx = inOut.getCtx();
		String     trx = inOut.get_TrxName();

		boolean beforeComplete = (timing == TIMING_BEFORE_COMPLETE || timing == TIMING_BEFORE_REVERSECORRECT);

		if (beforeComplete)
		{
			MInOutLine[] lines = inOut.getLines();
			ArrayList<String> olines = new ArrayList<String>();

			if (lines.length == 0)
				return "Documento sem linhas";

			for (int i = 0; i < lines.length; i++)
			{
				MInOutLine line = lines[i];
				int M_Product_ID = line.getM_Product_ID();
				int C_Charge_ID  = line.getC_Charge_ID();
				if (M_Product_ID == 0 && C_Charge_ID == 0)
					return "Linha #" + line.getLine() + " inválida, verifique o produto/despesa.";

				if (C_Charge_ID > 0)
					continue;

				int M_Locator_ID = line.getM_Locator_ID();
				MProduct produto = MProduct.get(ctx, M_Product_ID);

				if (!produto.isStocked())
					continue;

				if (M_Locator_ID == 0)
					return "Localizador do estoque não definida na linha: #" + line.getLine() + ".";

				if (line.getQtyEntered() == Env.ZERO)
					return "Item com quantidade ZERO na linha: #" + line.getLine() + ".";

				if (!MSysConfig.getBooleanValue(SysConfig.LBR_ALLOW_MM_SHIP_RECEIPT_WITHOUT_ORDER, true, inOut.getAD_Client_ID())
						&& line.getC_OrderLine_ID() == 0 && line.getM_RMALine_ID() == 0)
					return "Ordem de Compra não disponível.";

				MOrderLine oline = new MOrderLine(ctx, line.getC_OrderLine_ID(), trx);

				//BF 3037141 - Pablo Boff Pigozzo
				if ((timing == TIMING_BEFORE_REVERSECORRECT || timing == TIMING_BEFORE_REVERSEACCRUAL)
						&& !MSysConfig.getBooleanValue(SysConfig.LBR_ALLOW_REVERSE_SHIP_RECEIT_WITH_OPEN_INVOICE, true, inOut.getAD_Client_ID())
						&& DB.getSQLValue(trx, "SELECT COUNT(*) FROM C_InvoiceLine il, C_Invoice i WHERE i.C_Invoice_ID=il.C_Invoice_ID AND i.DocStatus NOT IN ('VO','RE') AND il.M_InOutLine_ID=?", line.getM_InOutLine_ID()) > 0)
					return "Fatura(s) em aberto. Impossível continuar com o estorno.";
			
				//	Validate Ship on RMA
				if ((timing == TIMING_BEFORE_REVERSECORRECT || timing == TIMING_BEFORE_REVERSEACCRUAL)
						&& !MSysConfig.getBooleanValue(SysConfig.LBR_ALLOW_REVERSE_SHIP_RECEIT_WITH_OPEN_RMA, true, inOut.getAD_Client_ID())
						&& DB.getSQLValue(trx, "SELECT COUNT(*) FROM M_RMALine rl, M_RMA r WHERE r.M_RMA_ID=rl.M_RMA_ID AND r.DocStatus NOT IN ('VO','RE') AND rl.M_InOutLine_ID=?", line.getM_InOutLine_ID()) > 0)
					return "ARM(s) em aberto. Impossível continuar com o estorno.";

				int C_OrderLine_ID = line.getC_OrderLine_ID();
				if (C_OrderLine_ID != 0)
				{
					if(!MSysConfig.getBooleanValue(SysConfig.LBR_ALLOW_DUPLICATED_ORDERLINE_ON_SHIP_RECEIPT, true, inOut.getAD_Client_ID())
							&& olines.contains("" + line.getC_OrderLine_ID()))
						return "Linha #" + line.getLine() + " duplicada.";
					else
						olines.add("" + line.getC_OrderLine_ID());
				}

				/**
				 *  Comparar QtyEntered / QtyOrdered do Pedido com a Remessa antes do Recebimento / Estorno
				 *  
				 *  Se gerado a partir de uma RMA, não é necessário validar a quantidade
				 *
				 */
				log.info("Delivered: " + oline.getQtyDelivered() + " Entered: " + oline.getQtyEntered() + " Trying: " + line.getQtyEntered());
				if (timing == TIMING_BEFORE_COMPLETE && line.getM_RMALine_ID() == 0 && oline.getC_Order_ID() > 0)
				{
					//	Se Unidade de Medida do Pedido for Diferente da Unidade de Medida padrão do Produto
					if (oline.getM_Product().getC_UOM_ID() == oline.getC_UOM_ID())
					{
						if (MSysConfig.getBooleanValue(SysConfig.LBR_MATCH_SHIPMENT_RECEIPT_AND_ORDER_QTY, false, inOut.getAD_Client_ID())
								&& oline.getQtyDelivered().add(line.getQtyEntered()).doubleValue() > oline.getQtyEntered().doubleValue())
							return "Nao e possivel fazer recebimento/expedição maior que o pedido. Linha do pedido #" + line.getLine();
					}
					else
					{
						if (MSysConfig.getBooleanValue(SysConfig.LBR_MATCH_SHIPMENT_RECEIPT_AND_ORDER_QTY, false, inOut.getAD_Client_ID())
								&& oline.getQtyDelivered().add(line.getMovementQty()).doubleValue() > oline.getQtyOrdered().doubleValue())
							return "Nao e possivel fazer recebimento/expedição maior que o pedido. Linha do pedido #" + line.getLine();
					}
					
					
				}
			} // for;
		}
		else if (timing == TIMING_AFTER_COMPLETE && inOut.getReversal_ID() == 0)
		{
			//InOut Document Type
			MDocType dt = MDocType.get (ctx, inOut.getC_DocType_ID());
			I_W_C_DocType dtW = POWrapper.create(dt, I_W_C_DocType.class); 
			
			if (dtW.islbr_IsAutomaticInvoice())
			{			
				// Base Type from InOut Document Type
				String DocBaseType = dt.getDocBaseType();
				
				//	Order
				MOrder order = null;
				
				// RMA
				MRMA rma = null;
				
				// Document Type from Order or RMA
				MDocType dtOrderRma = null;
				I_W_C_DocType dtOrderRmaW = null;
				
				// If order
				if ( inOut.getC_Order_ID() > 0)
				{
					order   = (MOrder) inOut.getC_Order();
					dtOrderRma = MDocType.get (ctx, order.getC_DocTypeTarget_ID());
					dtOrderRmaW = POWrapper.create(dtOrderRma, I_W_C_DocType.class);
				} // Else RMA
				else if (inOut.getM_RMA_ID() > 0)
				{
					rma = (MRMA) inOut.getM_RMA();
					dtOrderRma = MDocType.get (ctx, rma.getC_DocType_ID());
					dtOrderRmaW = POWrapper.create(dtOrderRma, I_W_C_DocType.class);
				}
				
				//	O Tipo de Documento do Pedido ou ARM relacionado a Tipo de Documento do Recebimento ou Expedição não deve estar marcado para gerar fatura automática
				//	Utilizado no Recebimento de Material, Expedição ou Devoluções
				if (dtOrderRma != null && !dtOrderRmaW.islbr_IsAutomaticInvoice() && DocBaseType != null && (DocBaseType.equals(MDocType.DOCBASETYPE_MaterialReceipt) || DocBaseType.equals(MDocType.DOCBASETYPE_MaterialDelivery)))
				{
					MInvoice invoice = null;
	
					//	Invoice
					if (dtW.islbr_IsAutomaticInvoice() && (order != null || inOut != null))
						invoice = createInvoice(order, dt, inOut, inOut.getMovementDate());
	
					//	Complete
					if (invoice != null)
					{
						String status = invoice.completeIt();
						invoice.setDocStatus(status);
						invoice.save(trx);
						if (!MOrder.DOCSTATUS_Completed.equals(status))
							return invoice.getProcessMsg();
					}
				}
			}
		}	//	After Complete

		return null;
	}
	
	/**
	 * 	Create Invoice
	 *	@param dt order document type
	 *	@param shipment optional shipment
	 *	@param invoiceDate invoice date
	 *	@return invoice or null
	 */
	private MInvoice createInvoice (MOrder order, MDocType dt, MInOut shipment, Timestamp invoiceDate)
	{
		String     trx;
		
		//
		if (order != null)
			trx = order.get_TrxName();
		else if (shipment != null)
			trx = shipment.get_TrxName();
		else
			return null;

		//
		MInvoice invoice = null;
		
		try
		{
			MDocType docInvoice = null;
			I_W_C_DocType docInvoiceW = null;
			
			//
			if (order != null)
			{
				docInvoice = (MDocType) order.getC_DocTypeTarget().getC_DocTypeInvoice();
				docInvoiceW = POWrapper.create(docInvoice, I_W_C_DocType.class);
				invoice = new MInvoice (order, docInvoice.getC_DocType_ID(), invoiceDate);
			}
			else if (shipment != null)
			{
				invoice = new MInvoice (shipment, invoiceDate);
				docInvoice = (MDocType)invoice.getC_DocTypeTarget();
				docInvoiceW = POWrapper.create(docInvoice, I_W_C_DocType.class);
			}
			
			//	Validation
			if (docInvoiceW.islbr_IsAutomaticInvoice())
				throw new AdempiereException("Conflito com Tipo de Documento de Fatura que gera Recebimento/Remessa Automática");
			
			//	Save
			if (!invoice.save(trx))
			{
				log.log(Level.SEVERE, "Could not create Invoice");
				return null;
			}
	
			//	If we have a Shipment - use that as a base
			if (shipment != null)
			{
				invoice.set_ValueNoCheck("lbr_NFEntrada", shipment.get_ValueAsString("lbr_NFEntrada"));
				invoice.save();
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
					if (!iLine.save(trx))
					{
						log.log(Level.SEVERE, "Could not create Invoice Line from Shipment Line");
						return null;
					}
					//
					sLine.setIsInvoiced(true);
					if (!sLine.save(trx))
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
					if (!iLine.save(trx))
					{
						log.log(Level.SEVERE, "Could not create Invoice Line from Order Line");
						return null;
					}
				}
			}
			
			if (invoice.getLines().length == 0)
			{
				invoice.delete(true);
				return null;
			}
		}
		catch (Exception e)
		{
			throw new AdempiereException(e.getMessage());
		}

		return invoice;
	}	//	createInvoice
} 	//	ValidatorInOut
