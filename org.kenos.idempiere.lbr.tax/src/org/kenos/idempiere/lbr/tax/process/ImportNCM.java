/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2006 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.kenos.idempiere.lbr.tax.process;

import java.io.File;
import java.io.FileOutputStream;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Arrays;
import java.util.Iterator;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRNCM;
import org.adempierelbr.model.MLBRTax;
import org.adempierelbr.model.MLBRTaxLine;
import org.adempierelbr.model.MLBRTaxStatus;
import org.adempierelbr.util.TextUtil;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;

/**
 *	Import NCM
 *	
 *  @author Ricardo Santana <rsantana@kenos.com.br>
 */
public class ImportNCM extends SvrProcess
{
	/** File		*/
	private String 	p_FileName = null;
	
	private boolean p_CreateNew = false;

	private static final int COL_NCM_VALUE 	= 0;
	private static final int COL_NCM_NAME 	= 1;
	private static final int COL_IPI 		= 2;
	private static final int COL_RESULT		= 3;

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
				p_FileName = para[i].getParameter().toString();
			else if (name.equals("CreateNew"))
				p_CreateNew = para[i].getParameterAsBoolean();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message (clear text)
	 *  @throws Exception if not successful
	 */
	protected String doIt() throws Exception
	{
		Workbook workbook = WorkbookFactory.create(new File(p_FileName));
		Sheet sheet = workbook.getSheetAt(0);
		Iterator<Row> rowIterator = sheet.rowIterator();
		
		//	Skip header
		if (rowIterator.hasNext()) rowIterator.next();
		
		while (rowIterator.hasNext()) {
			Row row = rowIterator.next();

			Cell x1 = row.getCell(COL_NCM_VALUE);
			Cell x2 = row.getCell(COL_NCM_NAME);
			Cell x3 = row.getCell(COL_IPI);
			
			if (x1 == null)
				continue;
			
			MLBRNCM ncm = MLBRNCM.get (getCtx(), x1.getStringCellValue().trim(), get_TrxName());
			
			//	Create if not exists
			if (p_CreateNew && ncm == null) {
				ncm = new MLBRNCM (getCtx(), 0, get_TrxName());
				//
				ncm.setValue(x1.getStringCellValue());				
				if (x2 != null)
					ncm.setDescription(x2.getStringCellValue());
				ncm.setAD_Org_ID(0);
				ncm.save();
			}
			
			//	No tax rate to fill
			if (ncm == null)
			{
				row.createCell(COL_RESULT).setCellValue("NCM não encontrado");
				continue;
			}
			//	Invalid tax rate
			double ipi = x3.getNumericCellValue();
			if (x3 == null || ipi <= 0)
			{
				int LBR_Tax_ID = ncm.getLBR_Tax_ID();
				//				
				if (LBR_Tax_ID > 0) {
					ncm.setLBR_Tax_ID(0);
					ncm.save();
					//
					MLBRTax tax = new MLBRTax (getCtx(), 0, get_TrxName());
					tax.delete(true);
				}

				row.createCell(COL_RESULT).setCellValue("Imposto zerado");
				continue;
			}
			
			MLBRTax tax = null;
					
			//	Create Tax record
			if (ncm.getLBR_Tax_ID() < 1) {
				tax = new MLBRTax (getCtx(), 0, get_TrxName());
				tax.save();
			}
			else
				tax = new MLBRTax (getCtx(), ncm.getLBR_Tax_ID(), get_TrxName());
			
			//	Find IPI Line
			MLBRTaxLine ipiTax = Arrays.asList(tax.getLines()).stream()
				.filter(l -> l.getLBR_TaxName_ID() == MLBRTax.TAX_IPI)
				.findFirst().orElse(new MLBRTaxLine (getCtx(), 0, get_TrxName()));
			
			ipiTax.setLBR_Tax_ID(tax.getLBR_Tax_ID());
			ipiTax.setLBR_TaxName_ID(MLBRTax.TAX_IPI);
			ipiTax.setlbr_TaxRate(new BigDecimal(ipi));
			ipiTax.setAD_Org_ID(0);
			int LBR_TaxStatus_ID = MLBRTaxStatus.get (MLBRTax.TAX_IPI, "50");
			if (LBR_TaxStatus_ID > 0)
				ipiTax.setLBR_TaxStatus_ID(LBR_TaxStatus_ID);
			if (ipiTax.save())
				row.createCell(COL_RESULT).setCellValue("Imposto cadastrado");
			//	Fix description
			tax.setDescription();
			tax.setAD_Org_ID(0);
			tax.save();
			
			ncm.setLBR_Tax_ID(tax.getLBR_Tax_ID());
			ncm.save();
		}
		
		//	Show result
		File resultFile = File.createTempFile("ImportNCM_" + TextUtil.timeToString(new Timestamp(System.currentTimeMillis()), "yyyyMMdd"), ".xlsx");
		FileOutputStream os = new FileOutputStream(resultFile);
		workbook.write(os);
		//
		if (processUI != null)
			processUI.download(resultFile);
       
		return "@Success@";
	}	//	doIt
}	//	ImportNCM