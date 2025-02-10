package org.kenos.idempiere.lbr.bankslip;

import org.kenos.idempiere.lbr.bankslip.api.IResponseAPI;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlip;

/**
 * Factory for Bank Slip API
 * @author Ricardo Santana
 */
public interface IBankSlipAPI
{
	public IResponseAPI processBankSlip (MLBRBankSlip bankSlip) throws Exception;
	public IResponseAPI retrieveBankSlip (MLBRBankSlip bankSlip, String identifier) throws Exception;
	public byte[] getPDF (MLBRBankSlip bankSlip) throws Exception;
	public boolean cancelBankSlip (MLBRBankSlip bankSlip) throws Exception;
}	//	IBankSlipAPI
