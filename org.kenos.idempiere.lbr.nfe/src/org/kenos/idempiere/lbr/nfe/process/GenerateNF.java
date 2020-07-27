package org.kenos.idempiere.lbr.nfe.process;

import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.wrapper.I_W_C_DocType;
import org.compiere.model.MDocType;
import org.compiere.model.MInOut;
import org.compiere.model.MInOutLine;
import org.compiere.model.MInvoice;
import org.compiere.model.MLocator;
import org.compiere.model.MMovement;
import org.compiere.model.MMovementLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MWarehouse;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;
import org.compiere.util.Trx;

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
		String sucess = "";
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
				
				MMovement move = new MMovement(getCtx(), p_M_Movement_ID, get_TrxName());
				if (!MMovement.DOCSTATUS_Completed.equals(move.getDocStatus()))
					return "@Error@ movimentação não completada, impossível gerar a Nota Fiscal";
				//
				//	Pensar se esta validação é necessária
//				if (move.get_ValueAsInt(MLBRProductionGroup.COLUMNNAME_LBR_ProductionGroup_ID) < 1)
//					return "@Error@ a movimentação deve estar atrelada a um Pedido de Industrialização";
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
				
				MDocType doctype = MDocType.get(getCtx(), p_C_DocType_ID);
				
				if (!doctype.get_ValueAsBoolean("lbr_IsOwnDocument") &&
						p_lbr_NFEntrada.isEmpty())
					return "Obrigatório Preencher Número da NF para Tipo de Documento " + doctype.getName();
				
				MLBRNotaFiscal nf = new MLBRNotaFiscal (getCtx(), 0, get_TrxName());
				nf.setDocumentNo(p_lbr_NFEntrada);
				nf.generateNF(move, doctype.get_ValueAsBoolean("lbr_IsOwnDocument"), p_C_DocType_ID);
				nf.m_justCreated = true;
				nf.save();
			}
			//	Create from Other In/Out
			else if (p_OtherInOut_ID > 0)
			{
				// Other In/Out
				MOrder otherInOut = new MOrder(Env.getCtx(), p_OtherInOut_ID, get_TrxName());
				
				if (p_lbr_NFEntrada.isEmpty())
				{
					MDocType doc = (MDocType)otherInOut.getC_DocType();
					I_W_C_DocType docInvoice = POWrapper.create((MDocType)doc.getC_DocTypeInvoice(), I_W_C_DocType.class);
					
					// If not Own Document NF must be filled
					if (docInvoice != null && !docInvoice.islbr_IsOwnDocument())
						return "Obrigado Preencher o Número da NF";
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
					io = generateReceipt(otherInOut);
				
				// If is not receipt then force if Delivery Rule is force
				else if (io == null && otherInOut.isSOTrx())
				{
					// Not Force
					boolean force = false;					
					if (MOrder.DELIVERYRULE_Force.equals(otherInOut.getDeliveryRule()))
						force = true;
					
					//	If not, create ship/receipt
					if (io == null)
						io = MInOut.createFrom(otherInOut, Env.getContextAsDate(Env.getCtx(), "#DATE"), force, true, null, true, get_TrxName());
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
				
				//	If NF Number was filled, NF is not Own Document
				boolean IsOwnDocument = p_lbr_NFEntrada.isEmpty();
				
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
						if (!MInOut.ACTION_Void.equals(validNf.getDocStatus()))
						{
							nf = validNf;
							sucess = " - NF já existe. NF " + nf.getDocumentNo();
							break;
						}
					}
				}
				
				//	Valid NF was not found
				if (nf == null)
				{
					// NF Created
					nf = new MLBRNotaFiscal (getCtx(), 0, get_TrxName());
					
					if (!IsOwnDocument)
						nf.setDocumentNo(p_lbr_NFEntrada);
					
					nf.generateNF(io, IsOwnDocument);
					nf.m_justCreated = true;
					nf.save();
					
					nf.setDocStatus(nf.prepareIt());
					nf.save();
					
					sucess = " - NF " + nf.getDocumentNo() + " Criada";
				}
			}
			
			//	At least one document is mandatory
			else
				return "@Error@ pelo menos um documento é necessário para a geração da NF";
			
		}
		catch(Exception e)
		{
			// Error
			Trx.get(get_TrxName(), false).rollback();
			return e.getMessage();
		}

		return "@Success@" + sucess;
	}	//	doIt
	
	/**
	 * Generate Recept From Order
	 * @param order
	 * @return
	 * @throws AdempiereException
	 */
	public static MInOut generateReceipt (MOrder order) throws AdempiereException
	{
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
			MInOutLine iLine = new MInOutLine(io);
			
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
			
			iLine.setM_Product_ID(oLine.getM_Product_ID());
			iLine.setQty(oLine.getQtyOrdered().subtract(oLine.getQtyDelivered()));
			iLine.setM_AttributeSetInstance_ID(oLine.getM_AttributeSetInstance_ID());
			iLine.setDescription(oLine.getDescription());
			iLine.setC_UOM_ID(oLine.getC_UOM_ID());
			iLine.setM_Locator_ID(m_locator_id);
			iLine.setC_OrderLine_ID(oLine.getC_OrderLine_ID());
			iLine.saveEx();
		}
		
		//	Complete it
		if (MInOut.DOCSTATUS_Completed.equals(io.completeIt()))
		{
			io.setDocStatus(MInOut.DOCSTATUS_Completed);
			io.saveEx();
		}
		
		return io;
	}
}	//	GenerateNF
