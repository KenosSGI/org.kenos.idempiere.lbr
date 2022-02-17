/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.adempierelbr.process;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempiere.pipo2.Zipper;
import org.adempierelbr.model.MLBRNFeEvent;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRPartnerDFe;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.apache.poi.hssf.usermodel.HSSFDataFormat;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;
import org.compiere.model.MBPartner;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MSysConfig;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Ini;
import org.kenos.idempiere.lbr.base.model.SysConfig;

/**
 *	Process to export NF-e XML
 *
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ProcXMLExport.java, v1.0 2010/06/24 4:33:11 PM, ralexsander Exp $
 */
public class ProcXMLExport extends SvrProcess
{
	/** Arquivo 		*/
	protected String p_FilePath = null;
	protected final String p_FolderKey = MSysConfig.getValue(SysConfig.LBR_FOLDERKEY, "ADempiereLBR", Env.getAD_Client_ID(Env.getCtx()));
	
	/**	Document Type	*/
	protected int p_C_DocTypeTarget_ID 	= 0;
	protected int p_AD_Org_ID 			= 0;
	protected int p_CreatedBy 			= 0;
	protected int p_C_BPartner_ID 		= 0;
	protected int p_C_BP_Group_ID 		= 0;
	protected int p_M_Shipper_ID 			= 0;
	protected Boolean p_IsCancelled		= false;
	protected Boolean p_IsSOTrx			= null;
	protected Boolean p_LBR_IncludeDANFE	= false;
	protected Boolean p_LBR_IsOwnDocument	= null;
	protected Boolean p_LBR_EMailSent		= null;

	/**	Period			*/
	protected Timestamp dateFrom;
	protected Timestamp dateTo;
	
	/**	Temp Directory	*/
	protected final String p_Temp = System.getProperty("java.io.tmpdir") + File.separator + "LBR_XML_Package" + File.separator;
	
	/**	Logger			*/
	protected static CLogger log = CLogger.getCLogger(ProcXMLExport.class);

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
			else if (name.equals (MLBRNotaFiscal.COLUMNNAME_DateDoc))
			{
				dateFrom 	= (Timestamp) para[i].getParameter();
				dateTo 		= (Timestamp) para[i].getParameter_To();
			}
			else if (name.equals (MLBRNotaFiscal.COLUMNNAME_C_DocTypeTarget_ID))
				p_C_DocTypeTarget_ID = para[i].getParameterAsInt();
			else if (name.equals ("File_Directory"))
				p_FilePath = para[i].getParameter().toString();
			else if (name.equals (MLBRNotaFiscal.COLUMNNAME_AD_Org_ID))
				p_AD_Org_ID = para[i].getParameterAsInt();
			else if (name.equals (MLBRNotaFiscal.COLUMNNAME_CreatedBy))
				p_CreatedBy = para[i].getParameterAsInt();
			else if (name.equals (MLBRNotaFiscal.COLUMNNAME_C_BPartner_ID))
				p_C_BPartner_ID = para[i].getParameterAsInt();
			else if (name.equals (MBPartner.COLUMNNAME_C_BP_Group_ID))
				p_C_BP_Group_ID = para[i].getParameterAsInt();
			else if (name.equals (MLBRNotaFiscal.COLUMNNAME_M_Shipper_ID))
				p_M_Shipper_ID = para[i].getParameterAsInt();
			else if (name.equals (MLBRNotaFiscal.COLUMNNAME_IsCancelled))
				p_IsCancelled = para[i].getParameterAsBoolean();
			else if (name.equals ("LBR_IncludeDANFE"))
				p_LBR_IncludeDANFE = para[i].getParameterAsBoolean();
			else if (name.equals (MLBRNotaFiscal.COLUMNNAME_IsSOTrx))
				p_IsSOTrx =  "Y".equals (para[i].getParameterAsString());
			else if (name.equals(MLBRNotaFiscal.COLUMNNAME_lbr_IsOwnDocument))
				p_LBR_IsOwnDocument = "Y".equals (para[i].getParameterAsString());
			else if (name.equals(MLBRNotaFiscal.COLUMNNAME_LBR_EMailSent))
				p_LBR_EMailSent = "Y".equals (para[i].getParameterAsString());
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
		log.info("init");
		//
		File f = new File (p_Temp);
		if (f.exists())
			deleteDir (f);
		//
		if (Ini.isClient() && p_FilePath == null)
			throw new AdempiereException ("@FillMandatory@ @File_Directory@");		
		
		//
		StringBuilder whereClause = new StringBuilder("AD_Client_ID=?")
		.append(" AND TRUNC (DateDoc) BETWEEN " + DB.TO_DATE(dateFrom))
		.append(" AND " + DB.TO_DATE(dateTo));

		if (p_C_DocTypeTarget_ID > 0)
			whereClause.append(" AND C_DocTypeTarget_ID="+p_C_DocTypeTarget_ID);
		else
			whereClause.append(" AND EXISTS (SELECT '1' ")
					.append("FROM C_DocType dt ")
					.append("WHERE dt.C_DocType_ID=LBR_NotaFiscal.C_DocTypeTarget_ID ")
					.append("AND dt.DocBaseType='NFB' ")
					.append("AND dt.lbr_IsOwnDocument='Y')");

		if (p_AD_Org_ID > 0)
			whereClause.append(" AND AD_Org_ID="+p_AD_Org_ID);

		if (p_CreatedBy > 0)
			whereClause.append(" AND CreatedBy="+p_CreatedBy);

		if (p_C_BPartner_ID > 0)
			whereClause.append(" AND C_BPartner_ID="+p_C_BPartner_ID);
		
		if (p_M_Shipper_ID > 0)
			whereClause.append(" AND M_Shipper_ID="+p_M_Shipper_ID);
		
		if (p_C_BP_Group_ID > 0)
			whereClause.append(" AND EXISTS (SELECT '1' FROM C_BPartner bp WHERE bp.C_BPartner_ID=LBR_NotaFiscal.C_BPartner_ID AND bp.C_BP_Group_ID ="+p_C_BP_Group_ID+")");
		
		if (p_IsSOTrx != null)
			if (p_IsSOTrx)
				whereClause.append(" AND IsSOTrx='Y'");
			else
				whereClause.append(" AND IsSOTrx='N'");
		
		if (p_LBR_IsOwnDocument != null)
			if (p_LBR_IsOwnDocument)
				whereClause.append(" AND " + MLBRNotaFiscal.COLUMNNAME_lbr_IsOwnDocument + "='Y'");
			else
				whereClause.append(" AND " + MLBRNotaFiscal.COLUMNNAME_lbr_IsOwnDocument + "='N'");
		
		if (p_LBR_EMailSent != null)
			if (p_LBR_EMailSent)
				whereClause.append(" AND " + MLBRNotaFiscal.COLUMNNAME_LBR_EMailSent + "='Y'");
			else
				whereClause.append(" AND " + MLBRNotaFiscal.COLUMNNAME_LBR_EMailSent + "!='Y'");
		
		List<ExportRow> rows = new ArrayList<ExportRow>();
		int[] ids = new Query(Env.getCtx(), MLBRNotaFiscal.Table_Name, whereClause.toString(), null)
					.setOrderBy(MLBRNotaFiscal.COLUMNNAME_IsSOTrx + ", " + MLBRNotaFiscal.COLUMNNAME_lbr_NFSerie + ", " + MLBRNotaFiscal.COLUMNNAME_DocumentNo)
					.setParameters(new Object[]{Env.getAD_Client_ID(Env.getCtx())})
					.getIDs();
		
		int countNFeXML = 0;
		int countDFeXML = 0;
		//		
		for (int id : ids)
		{
			MLBRNotaFiscal nf = new MLBRNotaFiscal (Env.getCtx(), id, null);
			
			//	Adicionar NFs Cancelada no Arquivo de Resumo
			if (nf.isCancelled())
			{
				rows.add(new ExportRow (TextUtil.toNumeric(nf.getlbr_CNPJ()), "Cancelada/Inutilizada", nf.getlbr_NFeStatus(), nf.getDateDoc(), null, nf.isSOTrx(), 
						nf.getBPName(), nf.getDocumentNo(), nf.getlbr_NFSerie(), nf.getlbr_NFeID(), null));
				
				//	Se o campo Incluir Documentos Cancelados estiver desmarcado não adicionar o XML da NF ao arquivo
				if (!p_IsCancelled)
					continue;
				
				// NF Inutilizada não possui XML
				if (MLBRNotaFiscal.LBR_NFESTATUS_102_InutilizaçãoDeNúmeroHomologado.equals(nf.getlbr_NFeStatus()))
					continue;
			}
			
			//	Anexos da NF-e
			MAttachment attachment = nf.getAttachment();
			if (attachment == null 
					|| (!MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalEletrônica.equals(nf.getlbr_NFModel()) &&
							!MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalDeConsumidorEletrônica.equals(nf.getlbr_NFModel())))
				continue;

			//	Tenta encontrar o arquivo de distribuição
			MAttachmentEntry xml = null;
			for (MAttachmentEntry entry : attachment.getEntries())
			{
				if (entry.getName().endsWith("dst.xml"))
				{
					xml = entry;
					break;
				}
				else if (entry.getName().endsWith("xml"))
					xml = entry;
			}
			
			//	Se houver XML da NF-e
			if (xml != null)
			{
				//	Pasta para adicionar o XML das NFs de Entrada e Saída
				String folder = p_Temp + p_FolderKey + File.separator + TextUtil.toNumeric(nf.getlbr_CNPJ()) 
				+ File.separator + "Emitidas" + File.separator + (nf.isSOTrx() ? "Saida" : "Entrada");
				
				//	Arquivo XML
				String fileName = folder + File.separator + nf.getDocumentNo() + "_" + xml.getName();
				//
				File file = new File (folder);
				if (!file.exists())
					file.mkdirs();
				//
				log.finer ("Saving to >> " + fileName);
				xml.getFile (new File (fileName));
				
				//	Adicionar no Relatório como Emitidas Apenas que as NFs Válidas
				if (!nf.isCancelled())
				{
					rows.add(new ExportRow (TextUtil.toNumeric(nf.getlbr_CNPJ()), "Emitidas", nf.getlbr_NFeStatus(), nf.getDateDoc(), null, nf.isSOTrx(), 
							nf.getBPName(), nf.getDocumentNo(), nf.getlbr_NFSerie(), nf.getlbr_NFeID(), null));
					countNFeXML++;
				}
						
				//	Adicionar Eventos da NFe				
				List<MLBRNFeEvent> events = nf.getNFeEvents();
	
				//	Adicionando os Eventos
				for (MLBRNFeEvent event : events)
				{	
					//	Se houver um Evento
					if (event != null && MLBRNFeEvent.DOCSTATUS_Completed.equals(event.getDocStatus()))
					{
						if (event.getAttachment() == null)
							continue;
						
						//	XMLs do Evento
						MAttachmentEntry xmlEvent = event.getAttachment().getEntry(0);
						
						//	Pasta dos Eventos
						folder = p_Temp + p_FolderKey + File.separator + TextUtil.toNumeric(nf.getlbr_CNPJ()) 
						+ File.separator + "Emitidas" + File.separator + 
						(nf.isSOTrx() ? "Saida" + File.separator + "Eventos" : 
							"Entrada" + File.separator + "Eventos");
						
						//	XML
						String fileNameEvent = folder + File.separator + xmlEvent.getName();
						//
						File fileEvent = new File (folder);
						if (!fileEvent.exists())
							fileEvent.mkdirs();
						//						
						log.finer ("Saving to >> " + fileNameEvent);
						xmlEvent.getFile (new File (fileNameEvent));
					}
				}
				
				//	Include DANFE
				if (p_LBR_IncludeDANFE)
				{
					File danfe = new File (folder + File.separator + nf.getDocumentNo() + "_" + nf.getlbr_NFeID() + ".pdf");
					nf.createPDF(danfe);
				}
			}
		}

		whereClause = new StringBuilder("AD_Client_ID=?")
				.append(" AND TRUNC (DateDoc) BETWEEN " + DB.TO_DATE(dateFrom))
				.append(" AND " + DB.TO_DATE(dateTo))
				.append(" AND DocumentType=?");
		
		int[] dfeIDs = new Query(Env.getCtx(), MLBRPartnerDFe.Table_Name, whereClause.toString(), null)
				.setOrderBy(MLBRPartnerDFe.COLUMNNAME_DateDoc + ", " + MLBRPartnerDFe.COLUMNNAME_lbr_CNPJ + ", " + MLBRPartnerDFe.COLUMNNAME_lbr_NFeID)
				.setParameters(new Object[]{Env.getAD_Client_ID(Env.getCtx()), MLBRPartnerDFe.DOCUMENTTYPE_NF_E})
				.getIDs();
		
		/**	Incluir documentos destinados (DF-e)	*/
		if (p_LBR_IsOwnDocument == null || !p_LBR_IsOwnDocument)
		{
			for (int dfeID : dfeIDs)
			{
				MLBRPartnerDFe dfe = new MLBRPartnerDFe(Env.getCtx(), dfeID, null);
				
				String desc = "";
				
				MAttachment attachment = dfe.getAttachment();
				
				if (attachment == null)
					desc = "XML não Encontrado";
				
				I_W_AD_OrgInfo oi = POWrapper.create(MOrgInfo.get(getCtx(), dfe.getAD_Org_ID(), null), I_W_AD_OrgInfo.class);
				rows.add(new ExportRow (TextUtil.toNumeric(oi.getlbr_CNPJ()), "Recebidas", null, dfe.getDateDoc(), null, dfe.isSOTrx(), 
						dfe.getBPName(), dfe.getlbr_NFeID().substring(26, 35), dfe.getlbr_NFeID().substring(23, 26), dfe.getlbr_NFeID(), desc));
				
				// XML não Encontrado
				if (!desc.isEmpty())
					continue;
				
				if (!dfe.isLBR_IsXMLValid())
					continue;
				
				//	Tenta encontrar o arquivo de distribuição
				MAttachmentEntry xml = null;
				for (MAttachmentEntry entry : attachment.getEntries())
				{
					if (entry.getName().endsWith("xml"))
					{
						xml = entry;
						break;
					}
				}
				
				if (xml != null)
				{
					String folder = p_Temp + p_FolderKey + File.separator + TextUtil.toNumeric(oi.getlbr_CNPJ()) 
							+ File.separator + "Recebidas" + File.separator + (dfe.isSOTrx() ? "Saida" : "Entrada");
					String fileName = folder + File.separator + xml.getName();
					//
					File file = new File (folder);
					if (!file.exists())
						file.mkdirs();
					//
					log.finer ("Saving to >> " + fileName);
					xml.getFile (new File (fileName));
					countDFeXML++;
				}
			}
		}
		
		File resume = new File (p_Temp + p_FolderKey);
		if (!resume.exists())
			resume.mkdirs();
		processResult (resume.getAbsolutePath() + File.separator + "Resumo.xls", rows);
		
		//	Web Interface
		if (p_FilePath == null || !Ini.isClient())
			p_FilePath = p_Temp;
		//	Swing Interface
		if (!p_FilePath.endsWith (File.separator))
			p_FilePath += File.separator;
		//	Name of file
		String fileName = "XML_NFe_" + TextUtil.timeToString(dateFrom, "ddMMyyyy") + "_" + TextUtil.timeToString(dateTo, "ddMMyyyy") + ".zip";
		//	ZIP the XML together
		File zipFile = new File(p_FilePath+fileName);
		Zipper.zipFolder (new File (p_Temp), zipFile, p_FolderKey + File.separator + "**");
		//	Make download available
		if (!Ini.isClient() && processUI != null)
				processUI.download(zipFile);
		log.info("finale");
		//
		return "@Success@<br /><br />Resumo:<br />" + countNFeXML+ " Nota(s) emitida(s) incluída(s)<br />" + dfeIDs.length + " Nota(s) recebida(s) incluída(s) com " + countDFeXML + " XML(s)";
	}	//	doIt
	
	/**
	 * 	Delete subdirs
	 * 
	 * @param dir
	 * @return
	 */
	public static boolean deleteDir (File dir)
	{
		if (dir.isDirectory())
		{
			String[] children = dir.list();
			for (int i = 0; i < children.length; i++)
			{
				boolean success = deleteDir (new File(dir, children[i]));
				if (!success)
				{
					return false;
				}
			}	//	for
		}
		// The directory is now empty so delete it
		return dir.delete();
	}	//	deleteDir
	
	/**
	 * 	Process result
	 * @param file
	 * @param rows
	 * @throws IOException
	 */
	@SuppressWarnings("resource")
	private void processResult (String file, List<ExportRow> rows) throws IOException
	{
		FileOutputStream out = new FileOutputStream(file);
		Workbook wb = new HSSFWorkbook();
		Sheet sheet = wb.createSheet();
		Row row = null;
		Cell cell = null;
		CellStyle csTitle = wb.createCellStyle();
		CellStyle csRows = wb.createCellStyle();
		CellStyle csTS = wb.createCellStyle();

		Font fTitle = wb.createFont();
		Font fRows = wb.createFont();

		fTitle.setFontHeightInPoints((short) 13);
		fTitle.setBold(true);
		fRows.setFontHeightInPoints((short) 12);

		csTitle.setDataFormat(HSSFDataFormat.getBuiltinFormat("text"));
		csTitle.setFont(fTitle);
		csRows.setDataFormat(HSSFDataFormat.getBuiltinFormat("text"));
		csRows.setFont(fRows);
		csTS.setDataFormat((short)16);
		csTS.setFont(fRows);

		wb.setSheetName(0, "NFs" );
		
		int index = 0;
		row = sheet.createRow(0);
		String header = "CNPJ:TIPO:ESTADO:DATA EMISSÃO:DATA ENTRADA:ENTRADA/SAÍDA:NOME DO PARCEIRO:NÚMERO DA NF:SÉRIE DA NF:CHAVE:OBSERVAÇÃO";
		for (String text : header.split(":"))
		{
			cell = row.createCell(index++);
		    cell.setCellStyle(csTitle);
		    cell.setCellValue(text);
		}
		
		int rownum = 1;
		for (ExportRow erow : rows)
		{
		    // create a row
		    row = sheet.createRow(rownum++);

		    if (erow.cnpj != null)
		    {
			    cell = row.createCell(0);
			    cell.setCellStyle(csRows);
			    cell.setCellValue(erow.cnpj);
		    }
		    
		    if (erow.type != null)
		    {
			    cell = row.createCell(1);
			    cell.setCellStyle(csRows);
			    cell.setCellValue(erow.type);
		    }
		    
		    if (erow.status != null)
		    {
			    cell = row.createCell(2);
			    cell.setCellStyle(csRows);
			    cell.setCellValue(erow.status);
		    }
		    
		    if (erow.dateDoc != null)
		    {
			    cell = row.createCell(3);
			    cell.setCellStyle(csTS);
			    cell.setCellValue(erow.dateDoc);
		    }
		    
		    if (erow.dateInOut != null)
		    {
			    cell = row.createCell(4);
			    cell.setCellStyle(csTS);
			    cell.setCellValue(erow.dateInOut);
		    }
		    
		    if (erow.isSOTrx != null)
		    {
			    cell = row.createCell(5);
			    cell.setCellStyle(csRows);
			    cell.setCellValue(erow.isSOTrx);
		    }
		    
		    if (erow.bpName != null)
		    {
			    cell = row.createCell(6);
			    cell.setCellStyle(csRows);
			    cell.setCellValue(erow.bpName);
		    }
		    
		    if (erow.documentNo != null)
		    {
			    cell = row.createCell(7);
			    cell.setCellStyle(csRows);
			    cell.setCellValue(erow.documentNo);
		    }
		    
		    if (erow.serieNo != null)
		    {
			    cell = row.createCell(8);
			    cell.setCellStyle(csRows);
			    cell.setCellValue(erow.serieNo);
		    }
		    
		    if (erow.nfeID != null)
		    {
			    cell = row.createCell(9);
			    cell.setCellStyle(csRows);
			    cell.setCellValue(erow.nfeID);
		    }
		    
		    if (erow.desc != null)
		    {
			    cell = row.createCell(10);
			    cell.setCellStyle(csRows);
			    cell.setCellValue(erow.desc);
		    }
		}

		wb.write(out);
		out.close();
	}
	
	/**
	 * 	Row
	 * 	@author ricardo
	 */
	public class ExportRow 
	{
		public ExportRow (String cnpj, String type, String status, Timestamp dateDoc, 
				Timestamp dateInOut, boolean isSOTrx, String bpName, 
				String documentNo, String serieNo, String nfeID, String desc)
		{
			this.cnpj 		= cnpj;
			this.type 		= type;
			this.status 	= status;
			this.dateDoc 	= dateDoc;
			this.dateInOut 	= dateInOut;
			this.isSOTrx 	= isSOTrx ? "Saida" : "Entrada";
			this.bpName 	= bpName;
			this.documentNo = documentNo;
			this.serieNo 	= serieNo;
			this.nfeID 		= nfeID;
			this.desc 		= desc;
		}	//	ExportRow
		
		public String cnpj;
		public String type;
		public String status;
		public Timestamp dateDoc;
		public Timestamp dateInOut;
		public String isSOTrx;
		public String bpName;
		public String documentNo;
		public String serieNo;
		public String nfeID;
		public String desc;
	}	//	ExportRow
}	//	ProcXMLExport