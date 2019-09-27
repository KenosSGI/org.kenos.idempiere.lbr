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
import java.io.IOException;
import java.nio.charset.Charset;
import java.sql.Timestamp;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.nfse.INFSe;
import org.adempierelbr.nfse.NFSeUtil;
import org.adempierelbr.nfse.util.NFSETransmit;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MSequence;
import org.compiere.model.MSysConfig;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Ini;
import org.kenos.idempiere.lbr.base.model.SysConfig;

/**
 *  	Process to Generate RPS
 *  
 *  @author Ricardo Santana (Kenos, www.kenos.com.br)
 *  	<li>	Transmissão via webservices
 *	 
 *	@author Alvaro Montenegro
 *  @contributor Mario Grigioni (Kenos, www.kenos.com.br), mgrigioni
 *	@version $Id: ProcGenerateRPS.java, v2.0 2008/04/17 10:37:22 PM, amontenegro Exp $
 */
public class ProcGenerateRPS extends SvrProcess
{
	/** Data Emissão     	*/
	private Timestamp 	p_DateFrom;
	private Timestamp 	p_DateTo;
	
	/**	Arquivo	            */
	private String 		p_FilePath = null;
	
	/**	Organização			*/
	private Integer 	p_AD_Org_ID;
	
	/**	Transmissão			*/
	private boolean		p_Transmit = true;
	
	/**	Extensão do Arquivo	*/
	public static final String ext = ".txt";
	
	/**	Logger				*/
	private static CLogger log = CLogger.getCLogger(ProcGenerateRPS.class);
	
	/** Charset				*/
	private static final Charset ISO88591 = Charset.forName("ISO8859_1");

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
			else if(name.equals("DateDoc"))
			{
				p_DateFrom = (Timestamp)para[i].getParameter();
				p_DateTo   = (Timestamp)para[i].getParameter_To();
			}
			else if(name.equals("File_Directory"))
			{
				p_FilePath = para[i].getParameter().toString();
			}
			else if(name.equals("AD_Org_ID"))
			{
				p_AD_Org_ID = para[i].getParameterAsInt();
			}
			else if (name.equals("LBR_NFETransmitter"))
			{
				p_Transmit = para[i].getParameterAsBoolean();
			}
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
		//	Default Organization
		if (p_AD_Org_ID == null || p_AD_Org_ID <= 0)
			p_AD_Org_ID = Env.getContextAsInt(Env.getCtx(), "#AD_Org_ID");
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message
	 *  @throws Exception if not successful
	 */
	protected String doIt() throws Exception
	{
		log.info("GenerateRPS Process ");
		//
		if (p_AD_Org_ID <= 0)
			return "No organization found";
		
		else if (p_FilePath == null 	//	Sem caminho
				&& !p_Transmit 			//	Para arquivo gerado local, não transmitido auto
				&& Ini.isClient())		//	Cliente Swing
			return "Selecione onde deseja salvar o arquivo";
		
		else if (!Ini.isClient())
			p_FilePath = System.getProperty("java.io.tmpdir") + File.separator;
		//
		Properties ctx = getCtx();
		String     trxName = get_TrxName();
		String     fileName = p_FilePath;
		
		//	Transmitir via webservices
		if (p_Transmit)
		{
			ProcessInfo pi = new ProcessInfo ("", 1120125);	//	FIXME: Hardcoded
			pi.setParameter(new ProcessInfoParameter[]
					{
						new ProcessInfoParameter (MLBRNotaFiscal.COLUMNNAME_AD_Org_ID, p_AD_Org_ID, null, "Organization", null), 
						new ProcessInfoParameter (MLBRNotaFiscal.COLUMNNAME_DateDoc, p_DateFrom, p_DateTo, "Date From", "Date To")
					});
			pi.setAD_Client_ID(getAD_Client_ID());
			pi.setAD_User_ID(getAD_User_ID());
			NFSETransmit transmitter = new NFSETransmit ();
			transmitter.startProcess (getCtx(), pi, null);
			//
			return pi.getSummary();
		}
		//
	    if (!fileName.endsWith(File.separator) && Ini.isClient()) 
	    	fileName += File.separator;
		//
		String dateFrom = TextUtil.timeToString (p_DateFrom, "ddMMyyyy");
		String dateTo = TextUtil.timeToString (p_DateTo, "ddMMyyyy");
		//
		fileName += "RPS_" + dateFrom + "_" + dateTo + ext;
		//
		return "@Success@" + generate (ctx, trxName, fileName);
	}	//	doIt
	
	/**
	 * 	Gera o arquivo do RPS
	 * 
	 * @param ctx
	 * @param trxName
	 * @param fileName
	 * @param dateFrom
	 * @param dateTo
	 * @throws IOException
	 */
	private String generate (Properties ctx, String trxName, String fileName) throws Exception
	{
		MOrgInfo OrgInfo = MOrgInfo.get(ctx, p_AD_Org_ID, trxName);
//		String ccm = OrgInfo.get_ValueAsString("lbr_CCM");
		//
		final String whereClause = "IsCancelled='N' AND DateDoc BETWEEN " + 
			DB.TO_DATE(p_DateFrom) + " AND " + 
			DB.TO_DATE(p_DateTo) + " AND AD_Org_ID=? AND IsPrinted='N' " +
			"AND DocStatus='IP' "+
			"AND lbr_NFModel='S1' ";
		//
		List<MLBRNotaFiscal> list = new Query (Env.getCtx(), MLBRNotaFiscal.Table_Name, whereClause, trxName)
			.setParameters(new Object[]{p_AD_Org_ID})
			.list();
		//
		for (MLBRNotaFiscal nf : list)
		{
			//	Gera a sequência de RPS neste momento
			if (!MSysConfig.getBooleanValue(SysConfig.LBR_REALTIME_RPS_NUMBER, true, nf.getAD_Client_ID())
					&& MLBRNotaFiscal.RPS_TEMP.equals(nf.getDocumentNo()))
			{
				nf.setDocumentNo(MSequence.getDocumentNo(nf.getC_DocTypeTarget_ID(), trxName, false));
				nf.save();
			}
		}
		//
		int C_City_ID = OrgInfo.getC_Location().getC_City_ID();
		INFSe infSe = NFSeUtil.get (C_City_ID);
		
		if (infSe == null)
			throw new AdempiereException ("Cidade não suportada");
		
		//	Generate RPS
		StringBuilder result = infSe.getRPS (list);
		
		File file = new File (fileName);
		if (file.exists())
			file.delete();
		
		TextUtil.generateFile (result.toString(), fileName, ISO88591.displayName());
		
		//	Save locally
		if (!Ini.isClient())
			processUI.download(file);
		
		return "@Success@";
	}	//	generate

}	//	ProcGenerateRPS
