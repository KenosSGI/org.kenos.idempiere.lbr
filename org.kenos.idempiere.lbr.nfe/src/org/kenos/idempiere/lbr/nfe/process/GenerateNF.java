package org.kenos.idempiere.lbr.nfe.process;

import java.util.logging.Level;

import org.adempierelbr.model.MLBRNotaFiscal;
import org.compiere.model.MDocType;
import org.compiere.model.MInOut;
import org.compiere.model.MInvoice;
import org.compiere.model.MMovement;
import org.compiere.model.MMovementLine;
import org.compiere.model.MOrder;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;

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
		if (p_AD_Org_ID < 1 || p_C_DocType_ID < 1)
			return "@Error@ Tipo de Documento é obrigatório";
		
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
			MMovement move = new MMovement(getCtx(), p_M_Movement_ID, get_TrxName());
			if (!MMovement.DOCSTATUS_Completed.equals(move.getDocStatus()))
				return "@Error@ movimentação não completada, impossível gerar a Nota Fiscal";
			//
			//	Pensar se esta validação é necessária
//			if (move.get_ValueAsInt(MLBRProductionGroup.COLUMNNAME_LBR_ProductionGroup_ID) < 1)
//				return "@Error@ a movimentação deve estar atrelada a um Pedido de Industrialização";
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
			nf.save();
		}
		
		//	At least one document is mandatory
		else
			return "@Error@ pelo menos um documento é necessário para a geração da NF";

		return "@Success@";
	}	//	doIt
}	//	GenerateNF
