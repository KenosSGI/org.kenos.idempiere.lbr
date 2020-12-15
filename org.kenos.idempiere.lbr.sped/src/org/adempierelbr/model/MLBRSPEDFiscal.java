package org.adempierelbr.model;

import java.io.File;
import java.math.BigDecimal;
import java.util.Properties;

import org.compiere.process.DocAction;

/**
 * 
 * @author rfeitosa
 *
 */
public class MLBRSPEDFiscal extends X_LBR_SPEDFiscal implements DocAction 
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public MLBRSPEDFiscal(Properties ctx, int LBR_SPEDFiscal_ID, String trxName)
	{
		super(ctx, LBR_SPEDFiscal_ID, trxName);
	}

	public boolean processIt(String action) throws Exception
	{
		return false;
	}

	public boolean unlockIt()
	{
		return false;
	}

	public boolean invalidateIt()
	{

		return false;
	}

	
	public String prepareIt()
	{

		return null;
	}

	
	public boolean approveIt()
	{

		return false;
	}

	
	public boolean rejectIt()
	{

		return false;
	}

	
	public String completeIt()
	{

		return null;
	}

	
	public boolean voidIt()
	{

		return false;
	}

	
	public boolean closeIt()
	{

		return false;
	}

	
	public boolean reverseCorrectIt()
	{

		return false;
	}

	
	public boolean reverseAccrualIt()
	{

		return false;
	}

	
	public boolean reActivateIt()
	{

		return false;
	}

	
	public String getSummary()
	{

		return null;
	}

	
	public String getDocumentNo()
	{

		return null;
	}

	
	public String getDocumentInfo()
	{

		return null;
	}

	
	public File createPDF()
	{

		return null;
	}

	
	public String getProcessMsg()
	{

		return null;
	}

	
	public int getDoc_User_ID()
	{

		return 0;
	}

	
	public int getC_Currency_ID()
	{

		return 0;
	}
	
	public BigDecimal getApprovalAmt()
	{
		return null;
	}

}
