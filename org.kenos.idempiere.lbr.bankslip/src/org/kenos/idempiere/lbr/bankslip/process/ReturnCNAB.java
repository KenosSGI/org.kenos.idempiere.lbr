package org.kenos.idempiere.lbr.bankslip.process;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.logging.Level;

import org.compiere.model.MPayment;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.bankslip.bean.CNABDetail;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlip;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipMov;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipOccur;


/**
 * 	Process the return file
 *
 * @author Ricardo Santana <rsantana@kenos.com.br>
 */
public class ReturnCNAB extends SvrProcess
{
	/**	CNAB File            */
	private String p_FileName = null;
	
	private int p_Contract_ID = -1;
	
	/** Defines if the result should be presented to file only or screen **/
	private boolean resultToFileOnly = false;

	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals("FileName"))
				p_FileName = (String)para[i].getParameter();
			else if (name.equals(MLBRBankSlip.COLUMNNAME_LBR_BankSlipContract_ID))
				p_Contract_ID = para[i].getParameterAsInt();
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message
	 *  @throws Exception if not successful
	 */
	protected String doIt() throws Exception
	{
		if (p_FileName == null || p_FileName.isBlank())
			return "@Error@ Arquivo Inválido";

		//	Large files should only be processed on CSV
		if (countLines(p_FileName) > 50)
			resultToFileOnly = true;
		
		List<CNABDetail> records = CNABDetail.processFile (new File(p_FileName));
		records.stream().forEach(this::processCNAB);

		return "@Success@";

	}	//	doIt
	
	/**
	 * 	Process the line of CNAB file
	 * 	@param detail
	 */
	private void processCNAB (CNABDetail detail)
	{
		/**
		 * 	Invalid, unable to find the bankslip
		 */
		if (detail.getNumberInOrg() == null || detail.getNumberInOrg().isBlank())
		{
			if (!resultToFileOnly)
				addLog(detail.toString() + " - Identificador do Boleto não encontrado");
			return;
		}
		
		//	Find the Bank Slip of CNAB file
		MLBRBankSlip bankSlip = MLBRBankSlip.get (getCtx(), p_Contract_ID, detail.getNumberInOrg());
		
		if (bankSlip == null)
		{
			addLog (detail, " - Boleto não encontrado");
			return;
		}
		
		//	Tries to find a occurrence code
		MLBRBankSlipOccur occur = MLBRBankSlipOccur.get (bankSlip.getLBR_BankSlipLayout_ID(), detail.getOccurCod());
		
		//	Creates a new movement for this file
		MLBRBankSlipMov mov = new MLBRBankSlipMov (getCtx(), 0, get_TrxName());
		mov.setLBR_BankSlip_ID(bankSlip.getLBR_BankSlip_ID());
		mov.setOccurrence(occur);
		mov.setIsSOTrx(false);
		mov.setDateTrx(detail.getDateFile());
		mov.setMovementDate(detail.getDateFile());
		mov.setGrandTotal(detail.getAmount());
		mov.setDiscountAmt(detail.getDiscount());
		mov.setLBR_InterestValue(detail.getInterest());
		
		if (MLBRBankSlipOccur.TYPE_Liquidation.equals(mov.getType()))
		{
			try
			{
				MPayment payment = bankSlip.pay (detail.getDateTrx(), detail.getAmount(), detail.getDiscount(), detail.getInterest(), Env.ZERO, "Liquidação feita via CNAB");
				mov.setC_Payment_ID(payment.getC_Payment_ID());
				addLog (detail, "Liquidação feita via CNAB #" + payment.getDocumentNo());
			}
			catch (Exception e) 
			{
				addLog (detail, e.getMessage());
				return;
			}
		}
		
		mov.setDescription("Line #" + String.valueOf(detail.getLineNo()));
		try
		{
			mov.saveEx();
			addLog (detail, "Movimento salvo com sucesso ID#" + mov.getLBR_BankSlipMov_ID());
		}
		catch (Exception e) 
		{
			addLog (detail, "Não foi possível salvar o movimento - " + e.getMessage());
		}
	}	//	processCNAB
	
	private void addLog (CNABDetail detail, String msg)
	{
		if (!resultToFileOnly)
			super.addLog(detail.toString() + " - " + msg);
	}	//	addLog
	
	/**
	 * 	https://stackoverflow.com/questions/453018/number-of-lines-in-a-file-in-java
	 * 
	 * @author martinus
	 * @param filename
	 * @return
	 * @throws IOException
	 */
	public static int countLines (String filename) throws IOException {
	    InputStream is = new BufferedInputStream(new FileInputStream(filename));
	    try {
	        byte[] c = new byte[1024];

	        int readChars = is.read(c);
	        if (readChars == -1) {
	            // bail out if nothing to read
	            return 0;
	        }

	        // make it easy for the optimizer to tune this loop
	        int count = 0;
	        while (readChars == 1024) {
	            for (int i=0; i<1024;) {
	                if (c[i++] == '\n') {
	                    ++count;
	                }
	            }
	            readChars = is.read(c);
	        }

	        // count remaining characters
	        while (readChars != -1) {
	            for (int i=0; i<readChars; ++i) {
	                if (c[i] == '\n') {
	                    ++count;
	                }
	            }
	            readChars = is.read(c);
	        }

	        return count == 0 ? 1 : count;
	    } finally {
	        is.close();
	    }
	}	//	countLines
}	//	ReturnCNAB