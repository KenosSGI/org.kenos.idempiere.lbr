package org.kenos.idempiere.lbr.bankslip.process;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.List;
import java.util.logging.Level;

import org.adempiere.base.Service;
import org.adempierelbr.model.I_LBR_BankSlipLayout;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.kenos.idempiere.lbr.bankslip.ICNABFactory;
import org.kenos.idempiere.lbr.bankslip.ICNABGenerator;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlip;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipMov;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipOccur;

/**
 * 	Copy Bank Slip configuration
 * 	@author Ricardo Santana <rsantana@kenos.com.br>
 */
public class RegisterOccurence extends SvrProcess
{
	/**	Bank Slip ID				*/
	private int				m_LBR_BankSlip_ID 	= 0;
	/**	Description					*/
	private String			m_Description 		= null;
	/**	Ocurrence					*/
	private String			m_LBR_OccurType 	= null;
	/**	Due Date					*/
	private Timestamp		m_DueDate 			= null;
	/**	Discount Amount				*/
	private BigDecimal		m_WriteOffAmt 		= null;
	/** Protest Days				*/
	private int				m_ProtestDays		= 0;
	
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		for (ProcessInfoParameter para : getParameter())
		{
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if (name.equals("lbr_OccurType"))
				m_LBR_OccurType = para.getParameterAsString();
			else if (name.equals("DueDate"))
				m_DueDate = para.getParameterAsTimestamp();
			else if (name.equals("WriteOffAmt"))
				m_WriteOffAmt = para.getParameterAsBigDecimal();
			else if (name.equals("Description"))
				m_Description = para.getParameterAsString();
			else if (name.equals(MLBRBankSlip.COLUMNNAME_LBR_ProtestDays))
				m_ProtestDays = para.getParameterAsInt();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		
		m_LBR_BankSlip_ID = getRecord_ID();
	}	//	prepare

	/**
	 * 	Cleanup Attribute Set Instance
	 * 
	 *	@return info
	 *	@throws Exception
	 */
	protected String doIt () throws Exception
	{
		if (m_LBR_OccurType == null)
			return "@Error@ Código de Ocorrência inválido";

		if (MLBRBankSlipOccur.TYPE_GiveRebate.equals(m_LBR_OccurType) && (m_WriteOffAmt == null || m_WriteOffAmt.signum() != 1))
			return "@Error@ Abatimento inválido";
		
		if (MLBRBankSlipOccur.TYPE_ChangeDueDate.equals(m_LBR_OccurType) && (m_DueDate == null || m_DueDate.before(new Timestamp (System.currentTimeMillis()))))
			return "@Error@ Vencimento inválido";
		
		if (MLBRBankSlipOccur.TYPE_AskToProtest.equals(m_LBR_OccurType) && m_ProtestDays < 2)
			return "@Error@ Protesto deve ocorrer no mínimo 2 dias após o vencimento";
		
		MLBRBankSlip bankSlip = new MLBRBankSlip (getCtx(), m_LBR_BankSlip_ID, get_TrxName());
		
		if (MLBRBankSlipOccur.TYPE_CancelProtest.equals(m_LBR_OccurType) && !bankSlip.isLBR_IsProtested())
			return "@Error@ Título não está protestado ainda, impossível solicitar o cancelamento.";

		MLBRBankSlipOccur bankSlipOccur = MLBRBankSlipOccur.getFromType (bankSlip.getLBR_BankSlipLayout_ID(), m_LBR_OccurType);
		if (bankSlipOccur == null)
			return "@Error@ Banco não configurado para a ocorrência desejada";
		
		boolean canHandle = false;
		List<ICNABFactory> list = Service.locator ().list (ICNABFactory.class).getServices();
		for (ICNABFactory cnabFactory : list)
		{
			I_LBR_BankSlipLayout layout = bankSlip.getLBR_BankSlipLayout();
			ICNABGenerator handler = cnabFactory.getCNABGenerator(Integer.valueOf(bankSlip.getRoutingNo()), layout.getType(), layout.getVersion());
			if (handler != null && handler.getAvailableOccurs().contains(m_LBR_OccurType))
			{
				canHandle = true;
				break;
			}
		}
		
		//	Can't handle ocurrence
		if (!canHandle)
			return "@Error@ Leiaute CNAB não suporta a ação desejada, faça a alteração diretamente no banco";
		
		//	Creates the new movement
		MLBRBankSlipMov movement = bankSlip.createMovement(m_LBR_OccurType);
		if (m_WriteOffAmt != null)
			movement.setWriteOffAmt(m_WriteOffAmt);
		if (m_DueDate != null)
			movement.setDueDate(m_DueDate);
		if (m_ProtestDays > 0)
			movement.setLBR_ProtestDays(m_ProtestDays);
		movement.setDescription(m_Description);
		movement.save();
		
		return "@Success@";
	}	//	doIt
}	//	RegisterOccurence
