package org.kenos.idempiere.lbr.nfe.process;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_C_DocType;
import org.compiere.model.MAttributeSet;
import org.compiere.model.MClient;
import org.compiere.model.MDocType;
import org.compiere.model.MInOut;
import org.compiere.model.MInOutLine;
import org.compiere.model.MInvoice;
import org.compiere.model.MLocator;
import org.compiere.model.MLocatorType;
import org.compiere.model.MMovement;
import org.compiere.model.MMovementLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MProduct;
import org.compiere.model.MStorageOnHand;
import org.compiere.model.MSysConfig;
import org.compiere.model.MWarehouse;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.base.model.SysConfig;

/**
 * 		Generate NF
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: GenerateNF.java, v1.0 2017/12/18 9:50:56 AM, ralexsander Exp $
 */
public class GenerateNF extends SvrProcess
{
	/**	Mandatory	*/
	private int p_AD_Org_ID 		= 0;
	private int p_C_DocType_ID 		= 0;

	/**	Documents	*/
	private int p_C_Order_ID 		= 0;
	private int p_C_Invoice_ID 		= 0;
	private int p_M_InOut_ID 		= 0;
	private int p_M_Movement_ID 	= 0;
	private int p_OtherInOut_ID		= 0;
	private boolean p_Force			= false;
	private boolean p_IsOwnDocument = true;
	private String p_lbr_NFEntrada	= "";
	
	/**
	 * 	Prepare parameters
	 */
	@Override
	protected void prepare ()
	{
		for (ProcessInfoParameter para : getParameter())
		{
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if (name.equals(MOrder.COLUMNNAME_AD_Org_ID))
				p_AD_Org_ID = para.getParameterAsInt();
			else if (name.equals(MOrder.COLUMNNAME_C_DocType_ID))
				p_C_DocType_ID = para.getParameterAsInt();
			else if (name.equals(MOrder.COLUMNNAME_C_Order_ID))
				p_C_Order_ID = para.getParameterAsInt();
			else if (name.equals(MInvoice.COLUMNNAME_C_Invoice_ID))
				p_C_Invoice_ID = para.getParameterAsInt();
			else if (name.equals(MInOut.COLUMNNAME_M_InOut_ID))
				p_M_InOut_ID = para.getParameterAsInt();
			else if (name.equals(MMovement.COLUMNNAME_M_Movement_ID))
				p_M_Movement_ID = para.getParameterAsInt();
			else if (name.equals("LBR_OtherInOut_ID"))
				p_OtherInOut_ID = para.getParameterAsInt();
			else if (name.equals("lbr_NFEntrada"))
				p_lbr_NFEntrada = para.getParameterAsString();
			else if (name.equals(MLBRNotaFiscal.COLUMNNAME_lbr_IsOwnDocument))
				p_IsOwnDocument = para.getParameterAsBoolean();
			else if ("LBR_ForceExec".equals(name))
				p_Force = para.getParameterAsBoolean();
			else
				log.log (Level.SEVERE, "Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 * 	Do It
	 */
	@Override
	protected String doIt() throws Exception
	{
		//	Msg de Retorno
		String success = "";
		try
		{
			//	Organization
			if (p_AD_Org_ID < 1)
				return "@Error@ Organização é obrigatório";		
			
			//	Create from Order
			if (p_C_Order_ID > 0)
			{
				
			}
			
			//	Create from Invoice
			else if (p_C_Invoice_ID > 0)
			{
				
			}
			
			//	Create from Shipment/Receipt
			else if (p_M_InOut_ID > 0)
			{
				
			}
			
			//	Create from Inventory Movement
			else if (p_M_Movement_ID > 0)
			{
				if (p_C_DocType_ID < 1)
					return "@Error@ Tipo de Documento é obrigatório";
				
				String whereClause = MLBRNotaFiscal.COLUMNNAME_M_Movement_ID + "=? AND " + MLBRNotaFiscal.COLUMNNAME_IsCancelled + "='N'";
				int count = new Query (getCtx(), MLBRNotaFiscal.Table_Name, whereClause, get_TrxName()).setParameters(p_M_Movement_ID).count();
				if (count > 0 && !p_Force)
					return "@Error@ Já existe uma NF vinculada a esta movimentação de estoque";
				
				MMovement move = new MMovement(getCtx(), p_M_Movement_ID, get_TrxName());
				if (!MMovement.DOCSTATUS_Completed.equals(move.getDocStatus()))
					return "@Error@ movimentação não completada, impossível gerar a Nota Fiscal";
				//
				int M_Warehouse_ID = 0;
				MMovementLine[] lines = move.getLines(true);
				for (MMovementLine line : lines)
				{
					//	Store the Warehouse for the first line
					if (M_Warehouse_ID == 0)
					{
						M_Warehouse_ID = line.getM_LocatorTo().getM_Warehouse_ID();
						continue;
					}
					
					//	Check if all lines has the same Warehouse
					if (M_Warehouse_ID != line.getM_LocatorTo().getM_Warehouse_ID())
					{
						return "@Error@ armazém de destino deve ser o mesmo para todas as linhas";
					}
				}
				
				MDocType docType = MDocType.get(getCtx(), p_C_DocType_ID);
				MDocType docTypeMM = MDocType.get(getCtx(), move.getC_DocType_ID());

				boolean issuedByUs = docType.get_ValueAsBoolean("lbr_IsOwnDocument");
				boolean isSOTrx = docType.isSOTrx();
				if (!issuedByUs)
				{
					if (p_lbr_NFEntrada.trim().isEmpty())
						return "@Error@ Obrigatório preencher o Número da NF para este tipo de entrada -> " + docType.getName();

					if (!p_lbr_NFEntrada.trim().matches("^\\d{1,9}-\\d{1,3}$"))
						return "@Error@ @FillMandatory@ @lbr_NFEntrada@. Deve seguir o formato Número-Série (123456789-123), ex: 1010-9 indica NF 1010 da série 9. Caso a NF não possua série, preencher com 0";
				}
				
				String docBaseTypeMM = (String) docTypeMM.get_Value(I_W_C_DocType.COLUMNNAME_lbr_DocBaseType);
				if (TextUtil.match (docBaseTypeMM, "MMST-") && (!issuedByUs || !isSOTrx))
					return "@Error@ Tipo de Documento para NF inválido, selecionar um Tipo de Documento de saída com emissão própria";
				if (TextUtil.match (docBaseTypeMM, "MMET+") && (issuedByUs || isSOTrx))
					return "@Error@ Tipo de Documento para NF inválido, selecionar um Tipo de Documento de entrada com emissão pelo fornecedor";
				
				MLBRNotaFiscal nf = new MLBRNotaFiscal (getCtx(), 0, get_TrxName());
				if (!issuedByUs)
					nf.setDocumentNo(p_lbr_NFEntrada);
				nf.generateNF(move, docType.get_ValueAsBoolean("lbr_IsOwnDocument"), p_C_DocType_ID);
				nf.m_justCreated = true;
				nf.save();
				
				addBufferLog(nf.getLBR_NotaFiscal_ID(), null, null, "Nota Fiscal: " + nf.getDocumentNo(), MLBRNotaFiscal.Table_ID, nf.getLBR_NotaFiscal_ID());
			}
			//	Create from Other In/Out
			else if (p_OtherInOut_ID > 0)
			{
				// Other In/Out
				MOrder otherInOut = new MOrder(Env.getCtx(), p_OtherInOut_ID, get_TrxName());
				if (otherInOut.getC_DocType().getC_DocTypeShipment_ID() < 1)
					return "@Error@ Tipo de documento para a Expedição/Recebimento não configurado";

				if (!otherInOut.isSOTrx() && !p_IsOwnDocument)
				{
					if (p_lbr_NFEntrada.trim().isBlank())
						return "@Error@ Obrigatório preencher o Número da NF para este tipo de entrada";

					if (!p_lbr_NFEntrada.trim().matches("^\\d{1,9}-\\d{1,3}$"))
						return "@Error@ @FillMandatory@ @lbr_NFEntrada@. Deve seguir o formato Número-Série (123456789-123), ex: 1010-9 indica NF 1010 da série 9. Caso a NF não possua série, preencher com 0";
				}
				
				// Shipment/Receipt
				MInOut io = null;
				
				//	Verify if there is ship/receipt
				MInOut[] shipments = otherInOut.getShipments();			
				for (int i = 0; i < shipments.length; i++)
				{
					MInOut ship = shipments[i];				
					if (MInOut.ACTION_Complete.equals(ship.getDocStatus())
							|| MInOut.DOCSTATUS_Closed.equals(ship.getDocStatus()) )
					{
						io = ship;
						break;
					}
				}
								
				// If it is other in, force because the material is being receipt
				if (io == null && !otherInOut.isSOTrx())
					io = generateInOut(otherInOut);
				
				// If is not receipt then force if Delivery Rule is force
				else if (io == null && otherInOut.isSOTrx())
				{
					//	If not, create ship/receipt
					if (io == null)
						io = generateInOut(otherInOut);
				}
								
				// Ship/Receipt without lines
				if (io.getLines().length <= 0)
					return "@Error@ Erro ao Gerar Linhas Remessa/Recebimento. Confira Quantide dos Produtos em Estoque";
				
				// Completeit
				if (io != null && !MInOut.DOCSTATUS_Completed.equals(io.getDocStatus()))
				{
					if (MInOut.DOCSTATUS_Completed.equals(io.completeIt()))
					{
						io.setDocStatus(MInOut.DOCSTATUS_Completed);
						io.saveEx();
					}
					else
						return "@Error@ Erro ao Completar Remessa/Recebimento";
				}
				
				//	NF related to Ship/Receipt
				MLBRNotaFiscal[] nfs = MLBRNotaFiscal.get(getCtx(), 0, io.getM_InOut_ID(), get_TrxName());
				
				// NF
				MLBRNotaFiscal nf = null;
				
				//	List NFs
				if (nfs.length > 0 )
				{
					//	Verify if there is NF Valid
					for (int i = 0; i < nfs.length; i++)
					{
						MLBRNotaFiscal validNf = nfs[i];			
						if (!MLBRNotaFiscal.STATUS_Voided.equals(validNf.getDocStatus()))
						{
							nf = validNf;
							success = " - NF já existente.";
							addBufferLog(nf.getLBR_NotaFiscal_ID(), null, null, "NF: " + nf.getDocumentNo(), MLBRNotaFiscal.Table_ID, nf.getLBR_NotaFiscal_ID());
							break;
						}
					}
				}
				
				//	Valid NF was not found
				if (nf == null)
				{
					// NF Created
					nf = new MLBRNotaFiscal (getCtx(), 0, get_TrxName());
					
					if (!p_IsOwnDocument)
						nf.setDocumentNo(p_lbr_NFEntrada);
					
					nf.generateNF(io, p_IsOwnDocument);
					nf.m_justCreated = true;
					nf.save();
					
					nf.setDocStatus(nf.prepareIt());
					nf.save();
					
					addBufferLog(nf.getLBR_NotaFiscal_ID(), null, null, "NF: " + nf.getDocumentNo(), MLBRNotaFiscal.Table_ID, nf.getLBR_NotaFiscal_ID());
				}
			}
			
			//	At least one document is mandatory
			else
				return "@Error@ pelo menos um documento é necessário para a geração da NF";
			
		}
		catch(Exception e)
		{
			return "@Error@ " + e.getMessage();
		}

		return "@Success@" + success;
	}	//	doIt
	
	/**
	 * Generate Recept From Order
	 * @param order
	 * @return
	 * @throws AdempiereException
	 */
	public static MInOut generateInOut (MOrder order) throws AdempiereException
	{
		if (order.getC_DocTypeTarget().getC_DocTypeShipment_ID() < 1)
			throw new AdempiereException ("Tipo de documento para Recebimento/Expedição não configurado.");
		//
		MInOut io = new MInOut(order, order.getC_DocTypeTarget().getC_DocTypeShipment_ID(), null);
		
		//	Shipment / Recept
		io.setAD_Org_ID(order.getAD_Org_ID());
		io.setC_Order_ID(order.getC_Order_ID());
		io.setC_BPartner_ID(order.getC_BPartner_ID());
		io.setC_BPartner_Location_ID(order.getC_BPartner_Location_ID());
		io.setM_Warehouse_ID(order.getM_Warehouse_ID());
		io.setDeliveryViaRule(order.getDeliveryViaRule());
		io.setM_Shipper_ID(order.getM_Shipper_ID());
		io.saveEx();
		
		//	Lines
		for (MOrderLine oLine : order.getLines())
		{
			//	Stored Product
			MProduct p = (MProduct) oLine.getM_Product();
			String MMPolicy = p.getMMPolicy();
			BigDecimal onHand = BigDecimal.ZERO;
			BigDecimal toDeliver = oLine.getQtyOrdered()
					.subtract(oLine.getQtyDelivered());

			MStorageOnHand[] storages = getStorages(oLine.getM_Warehouse_ID(),
					oLine.getM_Product_ID(), oLine.getM_AttributeSetInstance_ID(),
					order.getDateOrdered(), MClient.MMPOLICY_FiFo.equals(MMPolicy), oLine.get_TrxName());
			
			for (int j = 0; j < storages.length; j++)
			{
				MStorageOnHand storage = storages[j];
				onHand = onHand.add(storage.getQtyOnHand());
			}
			
			if (order.isSOTrx())
				createLine (order, oLine, toDeliver, storages, (MOrder.DELIVERYRULE_Force.equals(order.getDeliveryRule())), io);
			else
			{
				MInOutLine iLine = new MInOutLine(io);			
				iLine.setM_Product_ID(oLine.getM_Product_ID());
				iLine.setQty(toDeliver);
				iLine.setM_AttributeSetInstance_ID(oLine.getM_AttributeSetInstance_ID());
				iLine.setDescription(oLine.getDescription());
				iLine.setC_UOM_ID(oLine.getC_UOM_ID());
				
				if (storages.length > 0)
				{
					iLine.setM_Locator_ID(storages[0].getM_Locator_ID());
				}
				else
				{
					int m_locator_id = 0;
					
					//	Get Locator from Product
					MLocator locator = (MLocator) oLine.getM_Product().getM_Locator();
					
					//	Get locator From Product if Org is the same
					if (locator != null && locator.getM_Locator_ID() > 0 && locator.getAD_Org_ID() == order.getAD_Org_ID()
							&& locator.getM_Warehouse_ID() == order.getM_Warehouse_ID())
						m_locator_id = locator.getM_Locator_ID();
					else	// Get Default Locator for Organization
					{
						// Default Locator
						MLocator defaultLocator = MLocator.getDefault((MWarehouse)io.getM_Warehouse());
						
						if (defaultLocator == null)
							throw new IllegalArgumentException("Localizador Padrão do armazém " + order.getM_Warehouse().getName() + " não Identificado");
						
						m_locator_id = defaultLocator.getM_Locator_ID();
					}
					
					if (m_locator_id == 0)
						throw new IllegalArgumentException("Localizador não Identificado");
					
					iLine.setM_Locator_ID(m_locator_id);
				}
				
				iLine.setC_OrderLine_ID(oLine.getC_OrderLine_ID());
				iLine.saveEx();
			}
		}
		
		//	Complete it
		if (MInOut.DOCSTATUS_Completed.equals(io.completeIt()))
		{
			io.setDocStatus(MInOut.DOCSTATUS_Completed);
			io.saveEx();
		}
		
		return io;
	}
	
	/**************************************************************************
	 * 	Create Line
	 *	@param order order
	 *	@param orderLine line
	 *	@param qty qty
	 *	@param storages storage info
	 *	@param force force delivery
	 */
	private static void createLine (MOrder order, MOrderLine orderLine, BigDecimal qty, 
		MStorageOnHand[] storages, boolean force, MInOut m_shipment)
	{
		int	m_line = 10;
		
		//	Non Inventory Lines
		if (storages == null)
		{
			MInOutLine line = new MInOutLine (m_shipment);
			line.setOrderLine(orderLine, 0, Env.ZERO);
			line.setQty(qty);	//	Correct UOM
			if (orderLine.getQtyEntered().compareTo(orderLine.getQtyOrdered()) != 0)
				line.setQtyEntered(qty
					.multiply(orderLine.getQtyEntered())
					.divide(orderLine.getQtyOrdered(), 12, RoundingMode.HALF_UP));
			line.setLine(m_line + orderLine.getLine());
			if (!line.save())
				throw new IllegalStateException("Could not create Shipment Line");
			return;
		}
		
		//	Product
		MProduct product = orderLine.getProduct();
		boolean fillASI = false;
		if (product.getM_AttributeSet_ID() > 0)
		{
			MAttributeSet mas = MAttributeSet.get(Env.getCtx(), product.getM_AttributeSet_ID());
			//
			if (mas.isInstanceAttribute())
			{
				//	Fill attribute only when the qty on hand is the same as qty delivered (last part in storage)
				if (MSysConfig.getBooleanValue(SysConfig.LBR_FILL_ATTRIBUTE_INOUT_LAST_ITEM, false, m_shipment.getAD_Client_ID())
						&& MStorageOnHand.getQtyOnHand(orderLine.getM_Product_ID(), orderLine.getM_Warehouse_ID(), 0, m_shipment.get_TrxName()).compareTo(qty) == 0)
					fillASI = true;
				
				//	Fill attribute on inout line
				else if (MSysConfig.getBooleanValue(SysConfig.LBR_FILL_ATTRIBUTE_INOUT, false, m_shipment.getAD_Client_ID()))
					fillASI = true;
			}
		}
	
		//	Inventory Lines
		ArrayList<MInOutLine> list = new ArrayList<MInOutLine>();
		BigDecimal toDeliver = qty;
		for (int i = 0; i < storages.length; i++)
		{
			MStorageOnHand storage = storages[i];
			BigDecimal deliver = toDeliver;
			//skip negative storage record
			if (storage.getQtyOnHand().signum() < 0) 
				continue;
			
			//	Not enough On Hand
			if (deliver.compareTo(storage.getQtyOnHand()) > 0 
				&& storage.getQtyOnHand().signum() >= 0)		//	positive storage
			{
				if (!force	//	Adjust to OnHand Qty  
					|| (force && i+1 != storages.length))	//	if force not on last location
					deliver = storage.getQtyOnHand();
			}
			if (deliver.signum() == 0)	//	zero deliver
				continue;
			int M_Locator_ID = storage.getM_Locator_ID();
			//
			MInOutLine line = null;
			if (orderLine.getM_AttributeSetInstance_ID() == 0)      //      find line with Locator
			{
				for (int ll = 0; ll < list.size(); ll++)
				{
					MInOutLine test = (MInOutLine)list.get(ll);
					if (test.getM_Locator_ID() == M_Locator_ID && test.getM_AttributeSetInstance_ID() == 0)
					{
						line = test;
						break;
					}
				}
			}
			if (line == null)	//	new line
			{
				line = new MInOutLine (m_shipment);
				line.setOrderLine(orderLine, M_Locator_ID, order.isSOTrx() ? deliver : Env.ZERO);
				line.setQty(deliver);
				list.add(line);
			}
			else				//	existing line
				line.setQty(line.getMovementQty().add(deliver));
			if (orderLine.getQtyEntered().compareTo(orderLine.getQtyOrdered()) != 0)
				line.setQtyEntered(line.getMovementQty().multiply(orderLine.getQtyEntered())
					.divide(orderLine.getQtyOrdered(), 12, RoundingMode.HALF_UP));
			line.setLine(m_line + orderLine.getLine());
			if (fillASI)
				line.setM_AttributeSetInstance_ID(storage.getM_AttributeSetInstance_ID());
			if (!line.save())
				throw new IllegalStateException("Could not create Shipment Line");
			toDeliver = toDeliver.subtract(deliver);
			//      Temp adjustment, actual update happen in MInOut.completeIt - just in memory - not saved
			storage.setQtyOnHand(storage.getQtyOnHand().subtract(deliver));
			//
			if (toDeliver.signum() == 0)
				break;
		}		
		if (toDeliver.signum() != 0)
		{	 
			if (!force)
			{
				throw new IllegalStateException("Not All Delivered - Remainder=" + toDeliver);
			}
			else 
			{
				
				 MInOutLine line = new MInOutLine (m_shipment);
				 line.setOrderLine(orderLine, 0, order.isSOTrx() ? toDeliver : Env.ZERO);
				 line.setQty(toDeliver);
				 if (orderLine.getQtyEntered().compareTo(orderLine.getQtyOrdered()) != 0)
					 line.setQtyEntered(line.getMovementQty().multiply(orderLine.getQtyEntered())
						 .divide(orderLine.getQtyOrdered(), 12, RoundingMode.HALF_UP));
				 line.setLine(m_line + orderLine.getLine());
			     if (!line.save())
					 throw new IllegalStateException("Could not create Shipment Line");
					 

			}
		}	
	}	//	createLine
	
	/**
	 * 	Get Storages
	 *	@param M_Warehouse_ID
	 *	@param M_Product_ID
	 *	@param M_AttributeSetInstance_ID
	 *	@param minGuaranteeDate
	 *	@param FiFo
	 *	@return storages
	 */
	private static MStorageOnHand[] getStorages(int M_Warehouse_ID, 
			 int M_Product_ID, int M_AttributeSetInstance_ID,
			  Timestamp minGuaranteeDate, boolean FiFo, String trxname)
	{
		MStorageOnHand[] m_lastStorages = null;
		
		MStorageOnHand[] tmpStorages = MStorageOnHand.getWarehouse(Env.getCtx(), 
				M_Warehouse_ID, M_Product_ID, M_AttributeSetInstance_ID,
				minGuaranteeDate, FiFo,false, 0, trxname);

		/* IDEMPIERE-2668 - filter just locators enabled for shipping */
		List<MStorageOnHand> m_storagesForShipping = new ArrayList<MStorageOnHand>();
		for (MStorageOnHand soh : tmpStorages) {
			MLocator loc = MLocator.get(Env.getCtx(), soh.getM_Locator_ID());
			MLocatorType lt = null;
			if (loc.getM_LocatorType_ID() > 0)
				lt = MLocatorType.get(Env.getCtx(), loc.getM_LocatorType_ID());
			if (lt == null || lt.isAvailableForShipping())
				m_storagesForShipping.add(soh);
		}
		
		m_lastStorages = new MStorageOnHand[m_storagesForShipping.size()];
		m_storagesForShipping.toArray(m_lastStorages);
			
		return m_lastStorages;
	}	//	getStorages
}	//	GenerateNF
