/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2011 Ricardo Santana                                         *
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

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.logging.Level;

import org.adempiere.base.Service;
import org.adempiere.exceptions.AdempiereException;
import org.adempiere.report.jasper.JRViewerProvider;
import org.adempierelbr.model.MLBRNFeEvent;
import org.adempierelbr.model.MLBRNFeLot;
import org.adempierelbr.model.MLBRNFeWebService;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRPartnerDFe;
import org.adempierelbr.nfse.INFSe;
import org.adempierelbr.nfse.NFSeUtil;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;
import org.compiere.model.MImage;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MPInstance;
import org.compiere.model.MProcess;
import org.compiere.model.Query;
import org.compiere.model.X_T_Report;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.base.event.IDocFiscalPrint;
import org.kenos.idempiere.lbr.base.event.IDocFiscalPrintFactory;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.qrcode.QRCodeWriter;

import br.inf.portalfiscal.nfe.v400.NfeProcDocument;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JRParameter;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRXmlDataSource;
import net.sf.jasperreports.engine.util.JRLoader;

/**
 * 		Processo para imprimir documentos fiscais
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: PrintFromXML.java, v1.0 2012/05/21 21:52:49 PM, ralexsander Exp $
 */
public class PrintFromXML extends SvrProcess
{
	/** Process ID 					*/
	public static final int AD_Process_ID = 1120040;
	
	/**	Record ID	*/
	private int p_Record_ID = 0;
	
	/** PDF File 	*/
	private String p_PDFFile = null;
	private String p_ViewID = null;
			
	private MProcess process = null;
	private String reportName = "";
	
	// Informações da Organização
	private MOrgInfo oi;
	
	/**
	 * 	Prepare - e.g., get Parameters.
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
				p_PDFFile = (String) para[i].getParameter();
			else if (name.equals("ViewID"))
				p_ViewID = (String) para[i].getParameter();
			else
				log.log (Level.SEVERE, "Unknown Parameter: " + name);
		}
		p_Record_ID = getRecord_ID();
		process = new MProcess (Env.getCtx(), getProcessInfo().getAD_Process_ID(), get_TrxName());
	}	//	prepare
	
	/**
	 *  Perform process.
	 *  @return Message (variables are parsed)
	 * 	@throws IOException 
	 * 	@throws AdempiereException 
	 *  @throws Exception if not successful e.g.
	 *  throw new AdempiereUserError ("@FillMandatory@  @C_BankAccount_ID@");
	 */
	protected String doIt() throws JRException, AdempiereException, IOException 
	{
		String message 			= null;
		String extension 		= "dst.xml";
		String datePattern 		= "yyyy-MM-dd'T'HH:mm:ssZ";
		String numberPattern 	= "###0.00";
		Locale locale			= new Locale( "pt", "BR" );
		boolean printLogo		= true;
		Map<String, Object> qrFiles = new HashMap<String, Object>();

		//	Arquivo com os XML das notas Autorizadas relacionadas do lote.
		StringBuilder lotXML 	= null;
		
		MAttachment att = null;
	    int tableID = getProcessInfo().getTable_ID();
		
	    IDocFiscalPrint printDocument = null;
	    List<IDocFiscalPrintFactory> factoryList = Service.locator().list(IDocFiscalPrintFactory.class).getServices();
		
		for (IDocFiscalPrintFactory factory : factoryList)
		{
			printDocument = factory.get (tableID, Env.getCtx(), p_Record_ID, get_TrxName());
			if (printDocument != null)
				break;
		}
	    
		//	Generic Print
		if (printDocument != null)
		{
			//	Parameters
			reportName 	= printDocument.getReportName();
			extension 	= printDocument.getExtension();
			datePattern = printDocument.getDatePattern();
			att 		= printDocument.getAttachment();

			//	Put files
			qrFiles.putAll(printDocument.getParameters());

			//	Message
			message = printDocument.getMessage();
			
			//	In case of error, do not proceed
			if (printDocument.isError())
				return message;
		}
		
		//	Carta de Correção Eletrônica
		else if (tableID == MLBRNFeEvent.Table_ID)
		{
			MLBRNFeEvent event = new MLBRNFeEvent (Env.getCtx(), p_Record_ID, get_TrxName());
			
			// Organização
			oi = MOrgInfo.get(Env.getCtx(), event.getAD_Org_ID(), null);
			
			if (!"135".equals (event.getlbr_NFeStatus()) && !"136".equals (event.getlbr_NFeStatus()))
				return "@Error@ CC-e n\u00E3o processada corretamente, n\u00E3o \u00E9 poss\u00EDvel fazer a impress\u00E3o";
			
			if (!MLBRNFeEvent.LBR_EVENTTYPE_CartaDeCorrecao.equals(event.getLBR_EventType()))
				return "@Error@ Documento n\u00E3o possui modelo de impress\u00E3o";
			
			att = event.getAttachment (true);
			
			//	Verifica o nome do arquivo principal
			if (process.getJasperReport() == null || process.getJasperReport().isEmpty())
				reportName = "ReportCCe.jasper";
			else
				reportName = process.getJasperReport();
		}
		
		//	Nota Fiscal Eletrônica
		else if (tableID == MLBRNotaFiscal.Table_ID)
		{
			MLBRNotaFiscal doc = new MLBRNotaFiscal(getCtx(), p_Record_ID, get_TrxName());
			doc.setIsPrinted(true);
			doc.save();
			
			// Organização
			oi = MOrgInfo.get(Env.getCtx(), doc.getAD_Org_ID(), null);
			
			//	Nota Fiscal de Serviço Eletrônica
			if (MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalDeServiçosEletrônicaRPS.equals(doc.getlbr_NFModel()))
			{
				INFSe infSe = NFSeUtil.get (doc);
				
				if (infSe != null)
					return infSe.printNFSe(doc);
				else
					return "@Error@ Documento sem formato de impress\u00E3o dispon\u00EDvel ou impress\u00E3o n\u00E3o permitida";
			}
			
			else if (MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalDeConsumidorEletrônica.equals (doc.getlbr_NFModel ()))
			{
				ByteArrayOutputStream out = new ByteArrayOutputStream();
				try 
				{
					Map<EncodeHintType, Object> hints = new EnumMap<EncodeHintType, Object>(EncodeHintType.class);
					hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");
					hints.put(EncodeHintType.MARGIN, 2);
					//
					MatrixToImageWriter.writeToStream(new QRCodeWriter().encode(doc.get_ValueAsString("LBR_NFCeQRCodeURL"), BarcodeFormat.QR_CODE, 300, 300, hints), "PNG", out);
				}
				catch (WriterException e)
				{
					e.printStackTrace();
					log.severe("Não foi possível gerar o DANFE da NFC-e. Erro: " + e.getMessage());
					throw new AdempiereException("Não foi possível gerar o QRCode da NFC-e.");
				}
				
				//	URL
				String url = MLBRNFeWebService.getURL (MLBRNFeWebService.NFCE_CONSULTA_QRCODE, doc.getlbr_NFeEnv(), NFeUtil.VERSAO_LAYOUT, doc.getOrg_Location().getC_Region_ID());
				
				qrFiles.put("QRCode", new ByteArrayInputStream(((ByteArrayOutputStream) out).toByteArray()));
				qrFiles.put("URLConsulta", url);
			}

			att = doc.getAttachment (true);
			
			if (!doc.islbr_IsOwnDocument())
				printLogo = false;
			
			//	Verifica o nome do arquivo principal
			if (MLBRNotaFiscal.LBR_DANFEFORMAT_1_NormalDANFE_Portrait.equals(doc.getlbr_DANFEFormat()))
				reportName = "DanfeMainPortraitA4.jasper";
			else if (MLBRNotaFiscal.LBR_DANFEFORMAT_2_NormalDANFE_Landscape.equals(doc.getlbr_DANFEFormat()))
				reportName = "DanfeMainLandscapeA4.jasper";
			else if (MLBRNotaFiscal.LBR_DANFEFORMAT_4_DANFENFC_E.equals(doc.getlbr_DANFEFormat()))
				reportName = "DanfeNFCe.jasper";
			
			if (MLBRNotaFiscal.LBR_NFESTATUS_101_CancelamentoDeNF_EHomologado.equals(doc.getlbr_NFeStatus()))
				message = "CANCELADO    CANCELADO\nC\u00D3PIA DE SEGURAN\u00C7A";
			
			else if (!MLBRNotaFiscal.LBR_NFESTATUS_100_AutorizadoOUsoDaNF_E.equals(doc.getlbr_NFeStatus()))
				message = "C\u00D3PIA DE SEGURAN\u00C7A     Sem autorizac\u00E3o";
		}

		//	Documento Fiscal Eletrônico
		else if (tableID == MLBRPartnerDFe.Table_ID)
		{
			MLBRPartnerDFe doc = new MLBRPartnerDFe(getCtx(), p_Record_ID, get_TrxName());
			
			// Organização
			oi = MOrgInfo.get(Env.getCtx(), doc.getAD_Org_ID(), null);
			
			if (MLBRPartnerDFe.LBR_SITNF_2_UseDenied.equals(doc.getLBR_SitNF()))
				message = "@Error@ Uso Denegado         Uso Denegado       Uso Denegado";

			att = doc.getAttachment (true);
			reportName = "DanfeMain[FORMAT]A4.jasper";
			extension = NFeUtil.PROC_XML_FILE_EXT;
			printLogo = false;
		}
		
		//	Lote da Nota Fiscal Eletrônica
		else if (tableID == MLBRNFeLot.Table_ID || tableID == X_T_Report.Table_ID)
		{
			//	Initialize
			lotXML = new StringBuilder();
			
			//	Lista de NF-e relacionada ao Lote.
			List <MLBRNotaFiscal> nfs = null;
			
			if (tableID == MLBRNFeLot.Table_ID)
			{
				//	Lote da NF-e
				MLBRNFeLot doc = new MLBRNFeLot(getCtx(), p_Record_ID, get_TrxName());
				
				// Organização
				oi = MOrgInfo.get(Env.getCtx(), doc.getAD_Org_ID(), null);
				
					nfs = new Query (Env.getCtx(), MLBRNotaFiscal.Table_Name, "LBR_NFeStatus = '100' AND LBR_NFeLot_ID = ?", get_TrxName())
											.setParameters(doc.getLBR_NFeLot_ID())
											.setOrderBy("DocumentNo")
											.list();
			}
			else if (tableID == X_T_Report.Table_ID)
				nfs = new Query (Env.getCtx(), MLBRNotaFiscal.Table_Name, "LBR_NFeStatus = '100' AND EXISTS (SELECT 1 FROM T_Selection s WHERE s.T_Selection_ID=LBR_NotaFiscal.LBR_NotaFiscal_ID AND s.ViewID=?)", get_TrxName())
										.setParameters(p_ViewID)
										.setOrderBy("DocumentNo")
										.list();
			
			if (nfs.size() == 0)
				return "@Error@ nenhuma NF encontrada para impressão";
			
			//	Adicionar Tab Principal do Arquivo
			lotXML.append(NFeUtil.XML_HEADER).append("<NFeLot>");
			
			//	Lista de Notas Fiscais Autorizadas
			for (MLBRNotaFiscal nf : nfs)
			{
				//	Arquivo Anexos na Nota Fiscal
				att = nf.getAttachment (true);	
				
				//	Verificar na Lista de Arquivos em Anexo o XML referente a Nota Fiscal Autorizada
				for (MAttachmentEntry entry : att.getEntries())
				{
					//	Try to find the right file
					if (entry != null && entry.getName().endsWith(extension))
					{
						try
						{
							//	Grava o XML no Arquivo nfXmlAutorized
							lotXML.append(new String (entry.getData(), TextUtil.UTF8).replace (NFeUtil.XML_HEADER, ""));
							
							nf.setIsPrinted(true);
							nf.save();
						}
						catch (Exception e)
						{
							log.warning(e.getMessage());
						}
					}
				}
			}
			
			//	Fechar Tag Principal
			lotXML.append("</NFeLot>");

			//	Verifica o nome do arquivo principal da Primeira Nota do Lote.
			if (MLBRNotaFiscal.LBR_DANFEFORMAT_1_NormalDANFE_Portrait.equals(nfs.get(0).getlbr_DANFEFormat()))
				reportName = "DanfeMainPortraitA4.jasper";
			else if (MLBRNotaFiscal.LBR_DANFEFORMAT_2_NormalDANFE_Landscape.equals(nfs.get(0).getlbr_DANFEFormat()))
				reportName = "DanfeMainLandscapeA4.jasper";					
		}
		
		else
			return "@Error@ Not implemented yet";
		
		if (att == null || att.getEntryCount() == 0)
			return "@Error@ Arquivo XML n\u00E3o encontrado para impress\u00E3o";
		
		MAttachmentEntry[] entries = att.getEntries();
		InputStream xml = null;
		InputStream xmlTmp = null;
		
		//	Lote da Nota Fiscal Eletrônica
		if (tableID == MLBRNFeLot.Table_ID || tableID == X_T_Report.Table_ID)
		{
			xml = new ByteArrayInputStream (lotXML.toString().getBytes(TextUtil.UTF8));
		}
		else
		{	
			for (MAttachmentEntry entry : entries)
			{
				//	Try to find the right file
				if (entry.getName().endsWith(extension))
				{
					xml = entry.getInputStream();
					break;
				}
				
				//	XML without authorization, preview only
				else if (entry.getName().endsWith("nfe.xml"))
				{
					xmlTmp = entry.getInputStream();
				}
			}
		}

		//	Uses temp xml for preview
		if (xml == null && xmlTmp != null)
		{
			xml = xmlTmp;
			message = "C\u00D3PIA DE SEGURAN\u00C7A     N\u00E3o Transmitido";
		}
		
		if (xml == null)
			return "@Error@ Arquivo XML n\u00E3o encontrado para impress\u00E3o";
		
		try
		{
			//	Lote da Nota Fiscal Eletrônica
			if (tableID != MLBRNFeLot.Table_ID && tableID != X_T_Report.Table_ID)
			{
				/*
				 * 	Tenta encontrar o formato de impressão baseado no XML
				 */
				NfeProcDocument nfe = NfeProcDocument.Factory.parse(xml);
				xml.reset();
				
				//	2-Landscape
				if ("2".equals(nfe.getNfeProc().getNFe().getInfNFe().getIde().xgetTpImp().getStringValue()))
					reportName = reportName.replace("[FORMAT]", "Landscape");
				else
					reportName = reportName.replace("[FORMAT]", "Portrait");
			}
		}
		catch (Exception e) 
		{
			xml.reset();
			reportName = reportName.replace("[FORMAT]", "Portrait");
		}
		
		Map<String, Object> files = getReportFile (printLogo, printDocument != null);	//	Generic Print must provide report file
		files.putAll(qrFiles);
		
		if (message != null)
			files.put("msgPrevisualizacao", message);
		
		//	BR Locale
		files.put( JRParameter.REPORT_LOCALE, locale );

		JasperReport jasperReport = null;
		
		//	Compile the report
		if (reportName.endsWith("jrxml"))
			jasperReport = JasperCompileManager.compileReport( (InputStream) files.remove (reportName));
		
		//	Load the report
		else
			jasperReport = (JasperReport) JRLoader.loadObject ( (InputStream) files.remove (reportName));
		
		JRXmlDataSource dataSource = new JRXmlDataSource ( xml , jasperReport.getQuery().getText() );
		dataSource.setDatePattern(datePattern);
		dataSource.setNumberPattern(numberPattern);
		dataSource.setLocale(Locale.US);

		//	Fill
		JasperPrint jasperPrint = JasperFillManager.fillReport (jasperReport, files, dataSource);

		//	Creates a PDF file instead of printing
		if (p_PDFFile != null)
		{
			File file = new File (p_PDFFile);
    		JasperExportManager.exportReportToPdfFile(jasperPrint, file.getAbsolutePath());
    		
    		return "@Success@";
		}
		
		JRViewerProvider viewerLauncher = Service.locator().locate(JRViewerProvider.class).getService();
		viewerLauncher.openViewer (jasperPrint, "Impress\u00E3o de Documento");
		
		return "@Success@";
	}	//	doIt

	/**
	 * 		Get Report File
	 * 
	 * 	@return
	 * 	@throws AdempiereException
	 * 	@throws IOException 
	 */
	private Map<String, Object> getReportFile (boolean printLogo, boolean reportFound) throws AdempiereException, IOException
	{
		//	Procura o relatório anexado no processo
		MAttachment att = process.getAttachment (true);
		Map<String, Object> map = new HashMap<String, Object>();

		if (att != null)
		{
			MAttachmentEntry[] entries = att.getEntries();
			for (MAttachmentEntry entry : entries)
			{
				String name = entry.getName();
				//
				if (name.equals (reportName))
					reportFound = true;
				//
				map.put (name, entry.getInputStream());
			}
		}

		//	Se não existir anexado, utiliza o default do resource
		if (!reportFound)
		{
			ClassLoader cl = getClass().getClassLoader();
			InputStream report = cl.getResourceAsStream("reports/" + reportName);
			
			if (report == null)
				throw new AdempiereException ("@Error@ report not found");
			
			//	Main Report
			map.put (reportName, report);
			
			//	SubReports and Resources
			String subreport = reportName.replace(".jasper", "").replace(".jrxml", "");
			//
			for (String resourceName : getResourceListing (getClass(), "reports/"))
			{
				if (resourceName != null 
						&&	!resourceName.endsWith("jrxml")
						&& (resourceName.startsWith (subreport + "_Sub_") || resourceName.startsWith (subreport + "_Res_")))
					map.put (resourceName.replace(".jasper", "").replace(".jrxml", ""), cl.getResourceAsStream("reports/" + resourceName));
			}
		}
		
		if (oi == null)
		{
			MPInstance pinstance = new MPInstance (getCtx(), getAD_PInstance_ID(), null);
			oi = MOrgInfo.get (getCtx(), pinstance.getAD_Org_ID(), null);
		}
				
		//	Logo not found
		if (oi.getLogo_ID() <= 0 || !printLogo)
			return map;
		
		MImage mImage = MImage.get (getCtx(), oi.getLogo_ID());
		
		if (mImage.getBinaryData () != null)
		{
			InputStream is = new ByteArrayInputStream (mImage.getBinaryData ());
			map.put ("LOGO", is);
		}

		return map;
	}	//	doIt
	
	/**
	 * 	List directory contents for a resource folder. Not recursive.
	 * 	This is basically a brute-force implementation.
	 * 	Works for regular files and also JARs.
	 * 
	 * 	http://www.uofr.net/~greg/java/get-resource-listing.html
	 * 
	 * @author Greg Briggs
	 * @param clazz Any java class that lives in the same place as the resources you want.
	 * @param path Should end with "/", but not start with one.
	 * @return Just the name of each member item, not the full paths.
	 */
	private String[] getResourceListing (Class<?> clazz, String path)
	{
		//	MDFe
		if (reportName.startsWith("DAMDFeRetratoA4"))
			return new String[]{"DAMDFeRetratoA4_Sub_ValePedagio.jasper", "DAMDFeRetratoA4_Sub_Motoristas.jasper"};
		
		// NF-e Landscape
		if (reportName.startsWith("DanfeMainLandscapeA4"))
			return new String[]{"DanfeMainLandscapeA4_Sub_Item.jasper", "DanfeMainLandscapeA4_Sub_Invoice.jasper", "DanfeMainLandscapeA4_Sub_InfCompl.jasper"};
		
		//	NF-e Portrait
		if (reportName.startsWith("DanfeMainPortraitA4"))
			return new String[]{"DanfeMainPortraitA4_Sub_Item.jasper", "DanfeMainPortraitA4_Sub_Invoice.jasper", "DanfeMainPortraitA4_Sub_InfCompl.jasper"};
		
		//	Carta de Correção
		if (reportName.startsWith("ReportCCe"))
			return new String[]{};	//	No Subreports for this document
		
		// NFC-e 
		if (reportName.startsWith("DanfeNFCe"))
			return new String[]{}; //	No Subreports for this document
		
		//	Not found, try to catch all from the given path
		URL dirURL = clazz.getClassLoader().getResource(path);
		if (dirURL != null && dirURL.getProtocol().equals("file"))
		{
			try
			{
				/* A file path: easy enough */
				return new File(dirURL.toURI()).list();
			}
			catch (Exception e)
			{
				e.printStackTrace();
			}
		} 

		throw new UnsupportedOperationException("Cannot list files for URL "+dirURL);
	}	//	getResourceListing
}	//	PrintFromXML