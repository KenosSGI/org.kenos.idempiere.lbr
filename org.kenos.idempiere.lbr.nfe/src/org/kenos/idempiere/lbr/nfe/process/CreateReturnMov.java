package org.kenos.idempiere.lbr.nfe.process;

import java.math.BigDecimal;
import java.util.Arrays;
import java.util.logging.Level;

import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRCFOP;
import org.adempierelbr.model.MLBRCFOPLine;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_C_DocType;
import org.compiere.model.MBPartner;
import org.compiere.model.MLocator;
import org.compiere.model.MMovementLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrg;
import org.compiere.model.MSequence;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.base.model.MMovement;

/**
 * 		Generate NF
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: CreateReturnMov.java, v1.0 2021/08/04 9:50:56 AM, ralexsander Exp $
 */
public class CreateReturnMov extends SvrProcess
{
	/**	DocType	*/
	private int p_C_DocType_ID 		= 0;

	/**	Movement	*/
	private int p_M_Movement_ID 	= 0;

	/**	Locator	*/
	private int p_M_Locator_ID 	= 0;
	
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
			else if (name.equals(MOrder.COLUMNNAME_C_DocType_ID))
				p_C_DocType_ID = para.getParameterAsInt();
			else if (name.equals(MMovementLine.COLUMNNAME_M_Locator_ID))
				p_M_Locator_ID = para.getParameterAsInt();
			else
				log.log (Level.SEVERE, "Unknown Parameter: " + name);
		}
		//
		p_M_Movement_ID = getRecord_ID();
	}	//	prepare

	/**
	 * 	Do It
	 */
	@Override
	protected String doIt() throws Exception
	{
		if (p_M_Movement_ID < 0)
			return "@Error@ Movimentação de Material inválida";

		String trxName = get_TrxName();
		MMovement from = new MMovement (Env.getCtx(), p_M_Movement_ID, trxName);
		I_W_C_DocType dt = POWrapper.create(from.getC_DocType(), I_W_C_DocType.class);
		if (dt.getlbr_DocBaseType() == null || (!dt.getlbr_DocBaseType().equals("MMSA-") && !dt.getlbr_DocBaseType().equals("MMST-")))
			return "@Error@ Este processo deve ser usado a partir de uma Saída para Armazenagem/Transferência";
		
		MMovement to = from.copyTo();
		to.setC_DocType_ID(p_C_DocType_ID);
		to.setMovementDate(Env.getContextAsDate(to.getCtx(), "@#Date@"));
		to.setDocumentNo(MSequence.getDocumentNo(p_C_DocType_ID, trxName, false));
		to.setProcessed(false);
		to.setDocStatus(MMovement.DOCSTATUS_Drafted);
		
		if (p_M_Locator_ID > 0)
		{
			MLocator l = new MLocator (Env.getCtx(), p_M_Locator_ID, null);
			to.setAD_Org_ID(l.getAD_Org_ID());
			
			MOrg org = MOrg.get (getCtx(), from.getAD_Org_ID());
			int C_BPartner_ID = org.getLinkedC_BPartner_ID(null);
			if (C_BPartner_ID > 0)
			{
				MBPartner bp = new MBPartner (getCtx(), C_BPartner_ID, null);
				//
				to.setC_BPartner_ID(C_BPartner_ID);
				to.setC_BPartner_Location_ID(bp.getPrimaryC_BPartner_Location_ID());
			}
		}
		
		to.saveEx();
		int count[] = {0};
		
		Arrays.asList(from.getLines(true)).stream().forEach(fromLine -> {
			BigDecimal alreadyReturned = new Query (Env.getCtx(), MMovementLine.Table_Name, "LBR_Ref_MovementLine_ID=?", null)
				.setParameters(fromLine.getM_MovementLine_ID())
				.list().stream().map(MMovementLine.class::cast)
				.filter(rev -> TextUtil.match(rev.getM_Movement().getDocStatus(), MMovement.DOCSTATUS_Completed, MMovement.DOCSTATUS_Closed))
				.map(MMovementLine::getMovementQty)
				.reduce(BigDecimal.ZERO, BigDecimal::add);
			
			if (fromLine.getMovementQty().subtract(alreadyReturned).signum() == 1) {
				MMovementLine toLine = new MMovementLine (to);
				PO.copyValues(fromLine, toLine);
				toLine.setM_Movement_ID(to.getM_Movement_ID());
				toLine.setM_Locator_ID(fromLine.getM_LocatorTo_ID());
				toLine.setM_LocatorTo_ID(p_M_Locator_ID > 0 ? p_M_Locator_ID : fromLine.getM_Locator_ID());
				toLine.setMovementQty(fromLine.getMovementQty().subtract(alreadyReturned));
				toLine.set_ValueNoCheck("LBR_Ref_MovementLine_ID", fromLine.getM_MovementLine_ID());
				toLine.setProcessed(false);
				
				MLBRCFOPLine cfop = MLBRCFOP.chooseCFOP (to.getAD_Org_ID(), to.getC_DocType_ID(), 0, 0, null, 
						to.getDestionationType(), false, false, null, null);
				if (cfop != null)
					toLine.set_ValueNoCheck(MLBRCFOPLine.COLUMNNAME_LBR_CFOP_ID, cfop.getLBR_CFOP_ID());
				
				toLine.saveEx();
				count[0]++;
			}
		});
		
		//	No lines
		if (count[0] == 0)
		{
			to.delete(true);
			return "@Error@ todas as linhas já foram retornadas anteriormente";
		}
		addBufferLog(to.getM_Movement_ID(), null, null, "Movimentação: " + to.getDocumentNo(), MMovement.Table_ID, to.getM_Movement_ID());

		return "@Success@";
	}	//	doIt
}	//	CreateReturnMov
