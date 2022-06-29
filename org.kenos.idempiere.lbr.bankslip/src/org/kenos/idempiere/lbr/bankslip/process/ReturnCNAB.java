package org.kenos.idempiere.lbr.bankslip.process;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.security.MessageDigest;
import java.sql.Timestamp;
import java.util.List;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempierelbr.util.TextUtil;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.CreationHelper;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.compiere.model.MAttachment;
import org.compiere.model.MPayment;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.bankslip.cnab.ICNABDetail;
import org.kenos.idempiere.lbr.bankslip.cnab.ICNABProcessor;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankAccount;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlip;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipContract;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipMov;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipOccur;
import org.kenos.idempiere.lbr.bankslip.model.MLBRCNABFile;
import org.kenos.idempiere.lbr.bankslip.model.MLBRCNABFileLine;

/**
 * Process the return file
 *
 * @author Ricardo Santana <rsantana@kenos.com.br>
 */
public class ReturnCNAB extends SvrProcess 
{
	/** CNAB File */
	private String p_FileName = null;

	/** Contract **/
	private int p_Contract_ID = -1;

	/** Defines if the result should be presented to file only or screen **/
	private boolean resultToFileOnly = false;
	
	/** CNAB File **/
	private MLBRCNABFile cnab = null;
	
	/** Result **/
	private Workbook workbook = null;
	private CellStyle dateStyle = null;
	
	/** Result columns	**/
	private static final int COL_RAW 			= 0;
	private static final int COL_COD_OCORRENCIA = 1;
	private static final int COL_OCORRENCIA 	= 2;
	private static final int COL_TIPO 			= 3;
	private static final int COL_DOCUMENTO 		= 4;
	private static final int COL_DATA 			= 5;
	private static final int COL_VALOR 			= 6;
	private static final int COL_DESCONTO 		= 7;
	private static final int COL_JUROS 			= 8;
	private static final int COL_OBS 			= 9;

	/**
	 * Prepare - e.g., get Parameters.
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
				p_FileName = (String) para[i].getParameter();
			else if (name.equals(MLBRBankSlip.COLUMNNAME_LBR_BankSlipContract_ID))
				p_Contract_ID = para[i].getParameterAsInt();
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
	} // prepare

	/**
	 * Perform process.
	 * 
	 * @return Message
	 * @throws Exception if not successful
	 */
	protected String doIt() throws Exception 
	{
		if (p_FileName == null || p_FileName.isBlank())
			return "@Error@ Arquivo Inválido";

		// Large files should only be processed on CSV
		if (countLines(p_FileName) > 50)
			resultToFileOnly = true;

		File returnFile = new File(p_FileName);

		MessageDigest md5Digest = MessageDigest.getInstance("SHA-1");

		// Get the checksum
		String checksum = getFileChecksum (md5Digest, returnFile);
		
		cnab = MLBRCNABFile.get (p_Contract_ID, checksum);
		if (cnab != null)
		{
			addLog (cnab.get_ID(), null, null, "CNAB: " + cnab.getDocumentNo(), MLBRCNABFile.Table_ID, cnab.get_ID());
			return "@Error@ Arquivo CNAB já lançado, para forçar o lançamento novamente anule o arquivo anterior";
		}
		
		MLBRBankSlipContract contract = new MLBRBankSlipContract (Env.getCtx(), p_Contract_ID, null);
		MLBRBankAccount bankAcc = new MLBRBankAccount (Env.getCtx(), contract.getC_BankAccount_ID(), null);

		ICNABProcessor processor = contract.getProcessor();
		if (processor == null)
			return "@Error@ Não foi possível encontrar um processador adequado para o layout do arquivo"; 
		
		cnab = new MLBRCNABFile (Env.getCtx(), 0, get_TrxName());
		cnab.setDateDoc(new Timestamp (System.currentTimeMillis()));
		cnab.setRoutingNo(bankAcc.getC_Bank().getRoutingNo());
		cnab.setlbr_AgencyNo(bankAcc.getAgencyNo());
		cnab.setLBR_BankAgencyVD(bankAcc.getAgencyVD());
		cnab.setAccountNo(bankAcc.getAccountNoWOVD());
		cnab.setLBR_BankAccountVD(bankAcc.getAccountVD());
		cnab.setAD_Org_ID(bankAcc.getAD_Org_ID());
		cnab.setC_BankAccount_ID(bankAcc.getC_BankAccount_ID());
		cnab.setC_Bank_ID(bankAcc.getC_Bank_ID());
		cnab.setIsSOTrx(false);
		cnab.setLBR_BankSlipContract_ID(contract.getLBR_BankSlipContract_ID());
		cnab.setlbr_DigestValue(checksum);
		cnab.setDocStatus(MLBRCNABFile.DOCSTATUS_Completed);
		cnab.setProcessed(true);
		cnab.saveEx();
		
		//	Save attachment
		MAttachment attachment = cnab.createAttachment();
		attachment.addEntry(returnFile);
		attachment.save();
		
		//	Prepare result
		workbook = new XSSFWorkbook();
		Sheet output = workbook.createSheet("RETORNO");
		Row row = output.createRow(0);
		//
		CreationHelper creationHelper = workbook.getCreationHelper();
        short dateTimeFormat = creationHelper.createDataFormat().getFormat("dd/mm/yyyy");
        dateStyle = workbook.createCellStyle();
        dateStyle.setDataFormat(dateTimeFormat);
        
		row.createCell(COL_RAW).setCellValue("Linha");
		row.createCell(COL_COD_OCORRENCIA).setCellValue("Cód.Ocorrência");
		row.createCell(COL_OCORRENCIA).setCellValue("Ocorrência");
		row.createCell(COL_TIPO).setCellValue("Tipo");
		row.createCell(COL_DOCUMENTO).setCellValue("Documento");
		row.createCell(COL_DATA).setCellValue("Data");
		row.createCell(COL_VALOR).setCellValue("Valor");
		row.createCell(COL_DESCONTO).setCellValue("Desconto");
		row.createCell(COL_JUROS).setCellValue("Juros");
		row.createCell(COL_OBS).setCellValue("Observação");
		
		List<ICNABDetail> records = processor.processFile (returnFile);
		records.stream().forEach(this::processCNAB);

		if (output.getLastRowNum() > 0)
		{
			File resultFile = File.createTempFile("CNAB_" + TextUtil.timeToString(new Timestamp(System.currentTimeMillis()), "yyyyMMdd"), ".xlsx");
			FileOutputStream os = new FileOutputStream(resultFile);
            workbook.write(os);
            //
           if (processUI != null)
				processUI.download(resultFile);
		}
		
		return "@Success@";
	}	// doIt

	/**
	 * Process the line of CNAB file
	 * 
	 * @param detail
	 */
	private void processCNAB(ICNABDetail detail) 
	{
		Sheet output = workbook.getSheetAt(0);
		int lastRowNum = output.getLastRowNum();
		Row row = output.createRow(lastRowNum+1);

		row.createCell(COL_COD_OCORRENCIA).setCellValue(detail.getOccurCod());
		row.createCell(COL_DOCUMENTO).setCellValue(detail.getDocumentNo());
		row.createCell(COL_VALOR).setCellValue(toDouble (detail.getAmount()));
		row.createCell(COL_DESCONTO).setCellValue(toDouble (detail.getDiscount()));
		row.createCell(COL_JUROS).setCellValue(toDouble (detail.getInterest()));
		//
		Cell dateCell = row.createCell(COL_DATA);
		dateCell.setCellValue(detail.getDateTrx());
		dateCell.setCellStyle(dateStyle);
		
		/**
		 * Invalid, unable to find the bankslip
		 */
		if (detail.getNumberInOrg() == null || detail.getNumberInOrg().isBlank()) 
		{
			if (!resultToFileOnly)
				addLog(detail.toString() + " - Identificador do Boleto não encontrado");
			row.createCell(COL_OBS).setCellValue("Identificador do Boleto não encontrado");
			return;
		}

		// Find the Bank Slip of CNAB file
		MLBRBankSlip bankSlip = MLBRBankSlip.get(getCtx(), p_Contract_ID, detail.getNumberInOrg());

		if (bankSlip == null) 
		{
			addLog(detail, " - Boleto não encontrado");
			row.createCell(COL_OBS).setCellValue("Boleto não encontrado");
			return;
		}

		// Tries to find a occurrence code
		MLBRBankSlipOccur occur = MLBRBankSlipOccur.get (bankSlip.getLBR_BankSlipLayout_ID(), detail.getOccurCod(), false);
		if (occur != null) 
		{
			row.createCell(COL_OCORRENCIA).setCellValue(occur.getName());
			row.createCell(COL_TIPO).setCellValue(occur.get_DisplayValue(MLBRBankSlipOccur.COLUMNNAME_Type, true));
		}
		
		// Creates a new movement for this file
		MLBRBankSlipMov mov = new MLBRBankSlipMov(getCtx(), 0, get_TrxName());
		mov.setLBR_BankSlip_ID(bankSlip.getLBR_BankSlip_ID());
		mov.setOccurrence(occur);
		mov.setIsSOTrx(false);
		mov.setDateTrx(detail.getDateTrx());
		mov.setMovementDate(detail.getDateFile());
		mov.setGrandTotal(detail.getAmount());
		mov.setDiscountAmt(detail.getDiscount());
		mov.setWriteOffAmt(detail.getWriteOffAmt());
		mov.setLBR_InterestValue(detail.getInterest());
		mov.setDueDate(detail.getDueDate());

		if (MLBRBankSlipOccur.TYPE_Liquidation.equals(mov.getType())) 
		{
			try 
			{
				//	Check if invoice is already paid
				if (bankSlip.getC_Invoice_ID() > 0 && bankSlip.getC_Invoice().isPaid())
					throw new AdempiereException ("Fatura já paga");
				//
				MPayment payment = bankSlip.pay(detail.getDateTrx(), detail.getAmount(), detail.getDiscount(), detail.getInterest(), Env.ZERO, "Liquidação feita via CNAB");
				mov.setC_Payment_ID(payment.getC_Payment_ID());
				addLog(detail, "Liquidação feita via CNAB Pagamento #" + payment.getDocumentNo());
				row.createCell(COL_OBS).setCellValue("Liquidação feita via CNAB Pagamento #" + payment.getDocumentNo());
			} 
			catch (Exception e) 
			{
				addLog(detail, e.getMessage());
				row.createCell(COL_OBS).setCellValue("Erro ao registrar pagamento: " + e.getMessage());
				return;
			}
		}

		mov.setDescription("Line #" + String.valueOf(detail.getLineNo()));
		try 
		{
			mov.saveEx();
			//
			MLBRCNABFileLine line = new MLBRCNABFileLine (cnab, mov);
			line.saveEx();
		} 
		catch (Exception e) 
		{
			addLog(detail, "Não foi possível salvar o movimento - " + e.getMessage());
			row.createCell(COL_OBS).setCellValue("Não foi possível salvar o movimento: " + e.getMessage());
		}
	} // processCNAB

	private double toDouble (BigDecimal interest) {
		if (interest == null)
			return 0.0;
		return interest.doubleValue();
	}	//	toDouble

	private void addLog(ICNABDetail detail, String msg) 
	{
		if (!resultToFileOnly)
			super.addLog(detail.toString() + " - " + msg);
	} 	// 	addLog

	/**
	 * https://stackoverflow.com/questions/453018/number-of-lines-in-a-file-in-java
	 * 
	 * @author martinus
	 * @param filename
	 * @return
	 * @throws IOException
	 */
	public static int countLines(String filename) throws IOException {
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
				for (int i = 0; i < 1024;) {
					if (c[i++] == '\n') {
						++count;
					}
				}
				readChars = is.read(c);
			}

			// count remaining characters
			while (readChars != -1) {
				for (int i = 0; i < readChars; ++i) {
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
	} // countLines

	private static String getFileChecksum (MessageDigest digest, File file) throws IOException 
	{
		// Get file input stream for reading the file content
		FileInputStream fis = new FileInputStream(file);

		// Create byte array to read data in chunks
		byte[] byteArray = new byte[1024];
		int bytesCount = 0;

		// Read file data and update in message digest
		while ((bytesCount = fis.read(byteArray)) != -1) {
			digest.update(byteArray, 0, bytesCount);
		};

		// close the stream; We don't need it now.
		fis.close();

		// Get the hash's bytes
		byte[] bytes = digest.digest();

		// This bytes[] has bytes in decimal format;
		// Convert it to hexadecimal format
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < bytes.length; i++) {
			sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
		}

		// return complete hash
		return sb.toString();
	}
} // ReturnCNAB