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
import org.kenos.idempiere.lbr.bankslip.exception.MovementException;
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
		try
		{
			MLBRBankSlip bankSlip = new MLBRBankSlip(getCtx(), m_LBR_BankSlip_ID, get_TrxName());
			register (bankSlip, m_LBR_OccurType, m_WriteOffAmt, m_DueDate, m_ProtestDays, m_Description);
		}
		catch (Exception e)
		{
			return "@Error@ " + e.getMessage();
		}
		
		return "@Success@";
	}	//	doIt
	
	/**
	 * Initiates the write-off process for a bank slip with the total amount due.
	 * 
	 * @param bankSlip     The bank slip instance to be written off.
	 * @param description  A description or note regarding the write-off process.
	 * @throws MovementException If any errors occur during the registration of the write-off.
	 */
	public static void writeOff (MLBRBankSlip bankSlip, String description) throws MovementException
	{
		register (bankSlip, MLBRBankSlipOccur.TYPE_AskToWriteOff, null, null, 0, description);
	}	//	writeOff
	
	/**
	 * Initiates the rebate process for a bank slip with a specified rebate amount. This allows partial rebates
	 * of the total amount due on the bank slip.
	 * 
	 * @param bankSlip     The bank slip instance to be rebated.
	 * @param rebateAmt  The amount to write off from the bank slip's total amount.
	 * @param description  A description or note regarding the write-off process.
	 * @throws MovementException If any errors occur during the registration of the write-off.
	 */
	public static void rebate (MLBRBankSlip bankSlip, BigDecimal writeOffAmt, String description) throws MovementException
	{
		register (bankSlip, MLBRBankSlipOccur.TYPE_GiveRebate, writeOffAmt, null, 0, description);
	}	//	rebate
	
	/**
	 * Registers a bank slip occurrence. This generic method handles the registration of different types of occurrences
	 * for a bank slip, including write-offs, rebate, due date change, protest, etc.
	 * 
	 * @param bankSlip     The bank slip instance related to the occurrence.
	 * @param occurType    The type of occurrence (e.g., request to write-off).
	 * @param writeOffAmt  The amount to write off (applicable if the occurrence is a write-off).
	 * @param dueDate      The due date for the occurrence, if applicable.
	 * @param protestDays  The number of days to protest, if applicable.
	 * @param description  A description or note regarding the occurrence.
	 * @throws MovementException If any errors occur during the registration of the occurrence.
	 */
	public static void register (MLBRBankSlip bankSlip, String occurType, BigDecimal writeOffAmt, Timestamp dueDate, int protestDays, String description) throws MovementException
	{
		if (occurType == null)
			throw new MovementException ("@Error@ Código de Ocorrência inválido");

		if (MLBRBankSlipOccur.TYPE_GiveRebate.equals(occurType) && (writeOffAmt == null || writeOffAmt.signum() != 1))
			throw new MovementException ("Abatimento inválido");
		
		if (MLBRBankSlipOccur.TYPE_ChangeDueDate.equals(occurType) && (dueDate == null || dueDate.before(new Timestamp (System.currentTimeMillis()))))
			throw new MovementException ("Vencimento inválido");
		
		if (MLBRBankSlipOccur.TYPE_AskToProtest.equals(occurType) && protestDays < 2)
			throw new MovementException ("Protesto deve ocorrer no mínimo 2 dias após o vencimento");
		
		if (MLBRBankSlipOccur.TYPE_CancelProtest.equals(occurType) && !bankSlip.isLBR_IsProtested())
			throw new MovementException ("Título não está protestado ainda, impossível solicitar o cancelamento.");

		MLBRBankSlipOccur bankSlipOccur = MLBRBankSlipOccur.getFromType (bankSlip.getLBR_BankSlipLayout_ID(), occurType);
		if (bankSlipOccur == null)
			throw new MovementException ("Banco não configurado para a ocorrência desejada");
		
		boolean canHandle = false;
		List<ICNABFactory> list = Service.locator ().list (ICNABFactory.class).getServices();
		for (ICNABFactory cnabFactory : list)
		{
			I_LBR_BankSlipLayout layout = bankSlip.getLBR_BankSlipLayout();
			ICNABGenerator handler = cnabFactory.getCNABGenerator(Integer.valueOf(bankSlip.getRoutingNo()), layout.getType(), layout.getVersion());
			if (handler != null && handler.getAvailableOccurs().contains(occurType))
			{
				canHandle = true;
				break;
			}
		}
		
		//	Can't handle ocurrence
		if (!canHandle)
			throw new MovementException ("Leiaute CNAB não suporta a ação desejada, faça a alteração diretamente no banco");
		
		//	Creates the new movement
		MLBRBankSlipMov movement = bankSlip.createMovement(occurType);
		if (writeOffAmt != null)
			movement.setWriteOffAmt(writeOffAmt);
		if (dueDate != null)
			movement.setDueDate(dueDate);
		if (protestDays > 0)
			movement.setLBR_ProtestDays(protestDays);
		movement.setDescription(description);
		movement.saveEx();
	}	//	register
}	//	RegisterOccurence
