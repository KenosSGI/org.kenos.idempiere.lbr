package org.kenos.idempiere.lbr.bankslip.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.List;
import java.util.Properties;

import org.adempierelbr.model.X_LBR_BankSlipMov;
import org.compiere.model.Query;

/**
 * 	Bank Slip Movements
 * 	@author Ricardo Santana
 */
public class MLBRBankSlipMov extends X_LBR_BankSlipMov
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = -263371883991400518L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRBankSlipMov (Properties ctx, int LBR_BankSlipMov_ID, String trx)
	{
		super (ctx, LBR_BankSlipMov_ID, trx);
	}	//	MLBRBankSlipMov

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRBankSlipMov (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRBankSlipMov
	
	/**
	 * 	Constructor
	 * 	@param bs Bank Slips
	 */
	public MLBRBankSlipMov (MLBRBankSlip bs)
	{
		this (bs.getCtx(), 0, bs.get_TrxName());
		setAD_Org_ID(bs.getAD_Org_ID());
		setLBR_BankSlip_ID(bs.getLBR_BankSlip_ID());
	}	//	MLBRBankSlipMov
	
	/**
	 * 	Check if a file with this movement was generated
	 * 	@return
	 */
	public boolean isFileGenerated ()
	{
		List<MLBRCNABFileLine> movs = new Query (getCtx(), MLBRCNABFileLine.Table_Name, MLBRCNABFileLine.COLUMNNAME_LBR_BankSlipMov_ID + "=?", get_TrxName()).setParameters(getLBR_BankSlipMov_ID()).list();
		return movs.size() != 0;
	}	//	isFileGenerated
	
	/**
	 * 	Set Occurrence and related fields
	 * 	@param occur
	 */
	public void setOccurrence (MLBRBankSlipOccur occur)
	{
		if (occur == null)
			setLBR_BankSlipOccur_ID(0);
		else
		{
			setLBR_BankSlipOccur_ID(occur.getLBR_BankSlipOccur_ID());
			//
			setType(occur.getType());
			setValue(occur.getValue());
		}
	}	//	setOccurrence
	
	@Override
	protected boolean beforeSave(boolean newRecord)
	{
		MLBRBankSlip bankSlip = (MLBRBankSlip) getLBR_BankSlip();
		//
		String movementType = getType();
		
		if (MLBRBankSlipOccur.TYPE_Liquidation.equals(movementType))
			bankSlip.setIsPaid(true);
		
		else if (MLBRBankSlipOccur.TYPE_RegisterConfirmed.equals(movementType))
			bankSlip.setIsRegistered(true);
		
		else if (MLBRBankSlipOccur.TYPE_BankSlipRejected.equals(movementType))
		{
			bankSlip.setDocStatus(MLBRBankSlip.DOCSTATUS_Invalid);
			bankSlip.setProcessed(false);
		}
		
		else if (MLBRBankSlipOccur.TYPE_ChangeDueDateConfirmation.equals(movementType))
		{
			Timestamp dueDate = getDueDate();
			if (dueDate != null && dueDate.after(getLBR_BankSlip().getDateDoc()))
				bankSlip.setDueDate(dueDate);
			else
				setDescription("Data do Vencimento Inválida: " + dueDate);
		}
		
		else if (MLBRBankSlipOccur.TYPE_ProtestConfirmation.equals(movementType))
			bankSlip.setLBR_IsProtested(true);
		
		else if (MLBRBankSlipOccur.TYPE_RebateConfirmation.equals(movementType))
		{
			BigDecimal writeOffAmt = getWriteOffAmt();
			if (writeOffAmt != null && writeOffAmt.signum() == 1)
				bankSlip.setWriteOffAmt(writeOffAmt);
			else
				setDescription("Valor do Abatimento Inválido: " + writeOffAmt);
		}
		
		else if (MLBRBankSlipOccur.TYPE_WriteOffConfirmation.equals(movementType))
		{
			bankSlip.setDocStatus(MLBRBankSlip.DOCSTATUS_Closed);
			bankSlip.setLBR_IsWrittenOff(true);
		}
		
		else if (MLBRBankSlipOccur.TYPE_CancelProtestConfirmation.equals(movementType))
			bankSlip.setLBR_IsHalted(true);
		
		else if (MLBRBankSlipOccur.TYPE_DoNotProtestConfirmation.equals(movementType))
			bankSlip.setLBR_ProtestType(MLBRBankSlip.LBR_PROTESTTYPE_DoNotProtest);
		
		if (bankSlip.is_Changed())
			bankSlip.save();
		
		return true;
	}	//	beforeSave
}	//	MLBRBankSlipMov
