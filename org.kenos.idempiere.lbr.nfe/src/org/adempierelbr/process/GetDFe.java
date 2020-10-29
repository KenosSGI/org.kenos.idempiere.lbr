package org.adempierelbr.process;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Properties;
import java.util.UUID;
import java.util.logging.Level;
import java.util.zip.GZIPInputStream;

import javax.xml.stream.FactoryConfigurationError;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;

import org.adempiere.base.Service;
import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.model.MLBRNFConfig;
import org.adempierelbr.model.MLBRNFeWebService;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRPartnerDFe;
import org.adempierelbr.nfe.api.NFeDistribuicaoDFeStub;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.apache.axiom.om.OMElement;
import org.apache.xmlbeans.XmlException;
import org.compiere.model.MAttachment;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MSysConfig;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.CLogger;
import org.compiere.util.CacheMgt;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.base.event.IDocFiscalHandler;
import org.kenos.idempiere.lbr.base.event.IDocFiscalHandlerFactory;
import org.kenos.idempiere.lbr.base.model.SysConfig;

import br.inf.portalfiscal.nfe.dfe.DistDFeIntDocument;
import br.inf.portalfiscal.nfe.dfe.DistDFeIntDocument.DistDFeInt;
import br.inf.portalfiscal.nfe.dfe.DistDFeIntDocument.DistDFeInt.ConsNSU;
import br.inf.portalfiscal.nfe.dfe.DistDFeIntDocument.DistDFeInt.DistNSU;
import br.inf.portalfiscal.nfe.dfe.ResEventoDocument;
import br.inf.portalfiscal.nfe.dfe.ResEventoDocument.ResEvento;
import br.inf.portalfiscal.nfe.dfe.ResNFeDocument;
import br.inf.portalfiscal.nfe.dfe.ResNFeDocument.ResNFe;
import br.inf.portalfiscal.nfe.dfe.RetDistDFeIntDocument;
import br.inf.portalfiscal.nfe.dfe.RetDistDFeIntDocument.RetDistDFeInt;
import br.inf.portalfiscal.nfe.dfe.RetDistDFeIntDocument.RetDistDFeInt.LoteDistDFeInt;
import br.inf.portalfiscal.nfe.dfe.RetDistDFeIntDocument.RetDistDFeInt.LoteDistDFeInt.DocZip;
import br.inf.portalfiscal.nfe.dfe.TAmb;
import br.inf.portalfiscal.nfe.dfe.TCodUfIBGE;
import br.inf.portalfiscal.nfe.dfe.TVerDistDFe;
import br.inf.portalfiscal.nfe.evento.generico.ProcEventoNFeDocument;
import br.inf.portalfiscal.nfe.evento.generico.TRetEvento.InfEvento;
import br.inf.portalfiscal.nfe.v400.NfeProcDocument;
import br.inf.portalfiscal.nfe.v400.TNFe.InfNFe;
import br.inf.portalfiscal.nfe.v400.TNFe.InfNFe.Emit;
import br.inf.portalfiscal.nfe.v400.TProtNFe.InfProt;
import br.inf.portalfiscal.www.nfe.wsdl.nfedistribuicaodfe.NfeDadosMsg_type0;

/**
 * 		Buscar Documento Fiscal emitido contra Organização
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: GetDFe.java, v1.0 2013/MM/DD 4:08:49 PM, ralexsander Exp $
 */
public class GetDFe extends SvrProcess
{
	/** Process ID 					*/
	public static final int AD_Process_ID = 1120159;
	
	/**	Organization				*/
	private int p_AD_Org_ID = -1;
	
	private String p_LBR_NSU = "";
	
	private boolean p_ForceExec = false;
	
	/** Log							*/
	private static CLogger log = CLogger.getCLogger (GetDFe.class);
	
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare ()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;

			else if (MOrg.COLUMNNAME_AD_Org_ID.equals (name))
				p_AD_Org_ID = para[i].getParameterAsInt();
			
			else if (MLBRPartnerDFe.COLUMNNAME_LBR_NSU.equals (name))
				p_LBR_NSU = para[i].getParameterAsString();
			
			else if ("LBR_ForceExec".equals(name))
				p_ForceExec = para[i].getParameterAsBoolean();
			
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}		
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message (variables are parsed)
	 *  @throws Exception if not successful e.g.
	 *  throw new AdempiereUserError ("@FillMandatory@  @C_BankAccount_ID@");
	 */
	protected String doIt () throws Exception
	{
		//	Organization
		if (p_AD_Org_ID <= 0)
			throw new AdempiereUserError ("@FillMandatory@  @AD_Org_ID@");
		
		Boolean consultOneNSU = false;
		
		//	Limit execution for each 1h and 10min to avoid being locked out from SeFaz
		Calendar cal = new GregorianCalendar();
		cal.setTime(new Date());
		cal.add(Calendar.HOUR, -1);
		
		String sql = "SELECT MAX(Created) "
				+ " FROM AD_PInstance "
				+ " WHERE AD_Process_ID=1120159 "	//	AD_Process_ID=UpdateDFe Process
				+ " AND Result=1 "
				+ " AND Created >= " + DB.TO_DATE (new Timestamp (cal.getTimeInMillis()), false);
		
		MOrgInfo oi = MOrgInfo.get (getCtx(), p_AD_Org_ID, null);
		RetDistDFeIntDocument bpResponse;
		
		if (!p_LBR_NSU.isEmpty() || p_ForceExec)
		{
			consultOneNSU = true;
			bpResponse = GetDFe.doIt (oi, p_LBR_NSU, consultOneNSU);
		}
		else
		{
			Timestamp lastCreated = DB.getSQLValueTS (null, sql);
			if (lastCreated != null)
			{
				cal.setTime(lastCreated);
				cal.add(Calendar.HOUR, 1);
				//
				addLog ("Somente permitido uma consulta por hora. ");
				addLog ("A próxima consulta poderá ser feita em " + TextUtil.timeToString(cal.getTime(), "dd/MM/yyyy' às 'HH'h 'mm'm e 'ss's'") );
				return "@Error@ Somente permitido uma consulta por hora. A próxima consulta poderá ser feita em " + TextUtil.timeToString(cal.getTime(), "dd/MM/yyyy' às 'HH'h 'mm'm e 'ss's'");
			}
		
			oi = MOrgInfo.get (getCtx(), p_AD_Org_ID, null);
			String lastNSU = MSysConfig.getValue (SysConfig.LBR_DFE_LAST_NSU, "000000000000000", oi.getAD_Client_ID(), oi.getAD_Org_ID());
			bpResponse = GetDFe.doIt (oi, lastNSU, consultOneNSU);

		}

		if (bpResponse == null)
			throw new AdempiereUserError ("Error consulting Business Partner data. Check log for more info.");

		RetDistDFeInt retConsNFeDest = bpResponse.getRetDistDFeInt();
		String cStat = retConsNFeDest.getCStat();
		
		//	Consulta OK, porém sem novos documentos emitidos
		if (MLBRNotaFiscal.LBR_NFESTATUS_137_NenhumDocumentoLocalizadoParaODestinatário.equals(cStat))
			return "@Success@ " + retConsNFeDest.getXMotivo();
		
		//	Consulta OK, documentos localizados
		else if (MLBRNotaFiscal.LBR_NFESTATUS_138_DocumentoLocalizadoParaODestinatário.equals(cStat))
		{
			//	Contador de registros
			Counter count = new Counter ();
			
			//	Max NSU at SeFaz
			String maxNSU 		= retConsNFeDest.getMaxNSU();
			
			//	Max NSU at this result
			String currentNSU 	= retConsNFeDest.getUltNSU();
			
			//	Save results
			GetDFe.processResult (getCtx(), retConsNFeDest.getLoteDistDFeInt(), count, p_AD_Org_ID);
			
			if (!consultOneNSU)
			{			
				//	Try to adquire more documets
				while (true)
				{
					if (maxNSU == null || currentNSU == null 		//	Invalid Max global or session NSU
							|| currentNSU.equals (maxNSU) 			//	All documents adquired
							|| (count.nfe + count.event) > 500)		//	Maximum documents reached
						break;
					
					RetDistDFeIntDocument retDoc = GetDFe.doIt (oi, currentNSU, true);
					if (retDoc == null)
						continue;
					
					RetDistDFeInt retLoop = retDoc.getRetDistDFeInt();
					
					//	Document Found
					if (MLBRNotaFiscal.LBR_NFESTATUS_138_DocumentoLocalizadoParaODestinatário
							.equals(retLoop.getCStat()))
					{
						//	Loop count
						count.loop++;
						
						//	NSU control
						maxNSU 		= retLoop.getMaxNSU();
						currentNSU 	= retLoop.getUltNSU();
						
						//	Save Results
						processResult (getCtx(), retLoop.getLoteDistDFeInt(), count, p_AD_Org_ID);
					}
					
					//	Ignore errors, use first status
					else
						break;				
				
					//	Set max NSU, next runs will start from this NSU
					setNSU (oi, maxNSU);
				}
			}
			
			return "@Success@ - " + retConsNFeDest.getXMotivo() + "<br />" + 
							count.nfe + " - Notas Fiscais obtidas<br />" +
							count.event + " - Eventos obtidos<br />" +
							"Adquiridas em " + count.loop + " pesquisa(s)";
		}
		
		addLog(retConsNFeDest.getXMotivo());
		return "@Error@";
	}	//	doIt
	
	/**
	 * 		Consulta o Parceiro de Negócios na SeFaz
	 * 
	 * 	@param oi Organization Info
	 * 	@param CNPJ
	 * 	@param CPF
	 * 	@param IE
	 * 	@param UF
	 * 	@return
	 * 	@throws XmlException 
	 */
	public static RetDistDFeIntDocument doIt (MOrgInfo oi, String nsu, Boolean consultOneNSU) throws XmlException
	{
		I_W_AD_OrgInfo oiW = POWrapper.create(oi, I_W_AD_OrgInfo.class);
		DistDFeIntDocument consDFeDoc = DistDFeIntDocument.Factory.newInstance();
		DistDFeInt consDFe = consDFeDoc.addNewDistDFeInt();
		
		MLBRNFConfig config = MLBRNFConfig.get(oi.getAD_Org_ID());
		
		consDFe.setTpAmb(TAmb.Enum.forString(config.getlbr_NFeEnv()));
		consDFe.setVersao(TVerDistDFe.X_1_01);
		consDFe.setCUFAutor(TCodUfIBGE.X_35);
		
		//	CPF ou CNPJ
		String CNPJF = TextUtil.toNumeric (oiW.getlbr_CNPJ());
		if (CNPJF != null && CNPJF.length() == 11)
			consDFe.setCPF (CNPJF);
		else
			consDFe.setCNPJ(CNPJF);
		
		if (!consultOneNSU)
		{
			DistNSU distNSU = consDFe.addNewDistNSU();
			distNSU.setUltNSU(nsu);
		}
		else
		{
			ConsNSU consNSU = consDFe.addNewConsNSU();
			consNSU.setNSU(nsu);
		}
		
		//	Validar XML
		NFeUtil.validate (consDFeDoc);
		
		try
		{
			String url = MLBRNFeWebService.getURL (MLBRNFeWebService.DISTRIBUICAONFE, config.getlbr_NFeEnv(), NFeUtil.VERSAO_LAYOUT, -1);
			
			//	XML
			StringBuilder xml =  new StringBuilder (consDFeDoc.xmlText(NFeUtil.getXmlOpt()));
			XMLStreamReader dadosXML = XMLInputFactory.newInstance().createXMLStreamReader(new StringReader(NFeUtil.wrapMsg(xml.toString())));
	
			final StringBuilder respStatus = new StringBuilder();
			
			//	Get the valid certificate
			MLBRDigitalCertificate certificate = MLBRDigitalCertificate.getCertificate (Env.getCtx(), oi.getAD_Org_ID());
			if (certificate == null)
				throw new Exception ("@Error@ Certificado Inválido");
			
			//	Try to find a service for PKCS#11 for transmit
			IDocFiscalHandler handler = null;
			List<IDocFiscalHandlerFactory> list = Service.locator ().list (IDocFiscalHandlerFactory.class).getServices();
			for (IDocFiscalHandlerFactory docFiscal : list)
			{
				handler = docFiscal.getHandler (certificate.getlbr_CertType(), GetDFe.class.getName());
				if (handler != null)
					break;
			}
			
			// 	We have both, the URL for the local app and the Plugin transmitter
			if (handler != null)
			{
				synchronized (respStatus)
				{
					String uuid = UUID.randomUUID().toString();
					handler.transmitDocument (IDocFiscalHandler.DOC_DFE, oi.get_ValueAsString(I_W_AD_OrgInfo.COLUMNNAME_lbr_CNPJ), 
							uuid, certificate.getURL(), url, "35", xml.toString(), respStatus);
					
					//	Wait until process is completed, when processing is async
					if (MLBRDigitalCertificate.LBR_CERTTYPE_PKCS11Remote.equals(certificate.getlbr_CertType()))
						respStatus.wait();
					
					//	Error message
					if (respStatus.toString().startsWith("@Error="))
						throw new Exception (respStatus.toString().substring(7));
				}	//	synchronized
			}
			else
			{
				//	Initialize
				certificate.initialize();
				
				//	Mensagem
				NfeDadosMsg_type0 dadosMsg = NfeDadosMsg_type0.Factory.parse (dadosXML);
				
				NFeDistribuicaoDFeStub stub = new NFeDistribuicaoDFeStub(url);
	
				OMElement nfeConsulta = stub.nfeDistDFeInteresse (dadosMsg).getExtraElement();
				respStatus.append(nfeConsulta.toString());
			}
			//	Resposta
			return RetDistDFeIntDocument.Factory.parse (respStatus.toString());
		}
		catch (XMLStreamException e)
		{
			e.printStackTrace();
		}
		catch (FactoryConfigurationError e)
		{
			e.printStackTrace();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}	//	doIt
	
	/**
	 * 	Process results
	 * @param lote
	 * @param countNFe
	 * @param countEvent
	 * @throws Exception 
	 */
	public static void processResult (Properties ctx, LoteDistDFeInt lote, Counter count, int p_AD_Org_ID) throws Exception
	{
		//	Para consulta de apenas um NSU, esse campo pode vir nulo
		if (count == null)
			count = new Counter();
		
		//	Process Responses
		for (DocZip zip : lote.getDocZipArray())
		{
			StringBuilder resDocument = readGZIP (new ByteArrayInputStream(zip.getByteArrayValue()));
			
			//	Response Types
			ResEventoDocument reEventoDoc 		= null;
			ResNFeDocument resNFeDoc 			= null;
			
			//	NT2013.002 B2B
			ProcEventoNFeDocument resProcEvento = null;
			NfeProcDocument resNFeProc 			= null;
			
			try
			{
				//	Try to convert document to NFe
				resNFeDoc = ResNFeDocument.Factory.parse (resDocument.toString());
			}
			catch (Exception e) {}

			//	Nota Fiscal Eletrônica
			if (resNFeDoc != null)
			{
				ResNFe resNFe = resNFeDoc.getResNFe();
				
				MLBRPartnerDFe pDFe = MLBRPartnerDFe.get (resNFe.getChNFe());
				
				//	New document
				if (pDFe == null)
					pDFe = new MLBRPartnerDFe (ctx, 0, null);
				
				pDFe.setAD_Org_ID(p_AD_Org_ID);
				pDFe.setDocumentType(MLBRPartnerDFe.DOCUMENTTYPE_NF_E);
				pDFe.setlbr_NFeID(resNFe.getChNFe());
				pDFe.setlbr_CNPJ(resNFe.getCNPJ());
				pDFe.setlbr_CPF(resNFe.getCPF());
				pDFe.setBPName(resNFe.getXNome());
				pDFe.setlbr_IE(resNFe.getIE());
				pDFe.setDateDoc(NFeUtil.stringToTime (resNFe.getDhEmi()));
				pDFe.setGrandTotal(new BigDecimal (resNFe.getVNF()));
				pDFe.setlbr_DigestValue(resNFe.xgetDigVal().getStringValue());
				pDFe.setDateTrx(NFeUtil.stringToTime (resNFe.getDhRecbto().toString()));
				pDFe.setLBR_NSU(zip.getNSU());
				pDFe.setLBR_SitNF(resNFe.getCSitNFe().toString());
				pDFe.setlbr_NFeProt(resNFe.getNProt());
				pDFe.setIsSOTrx("1".equals(resNFe.xgetTpNF().getStringValue()));
				pDFe.setProcessed(true);
				if (pDFe.save())
					count.nfe++;
				
				continue;
			}
			
			try
			{
				//	Try to convert document to Event
				reEventoDoc = ResEventoDocument.Factory.parse (resDocument.toString());
			}
			catch (Exception e) {}
			
			//	Event
			if (reEventoDoc != null)
			{
				ResEvento resEvento = reEventoDoc.getResEvento();
				//
				MLBRPartnerDFe pDFe = new MLBRPartnerDFe (ctx, 0, null);
				pDFe.setAD_Org_ID(p_AD_Org_ID);
				pDFe.setDocumentType(MLBRPartnerDFe.DOCUMENTTYPE_Evento);
				pDFe.setlbr_NFeID(resEvento.getChNFe());
				pDFe.setlbr_CNPJ(resEvento.getCNPJ());
				pDFe.setlbr_CPF(resEvento.getCPF());
				pDFe.setDateDoc(NFeUtil.stringToTime(resEvento.getDhEvento()));					
				pDFe.setSeqNo(Integer.valueOf(resEvento.getNSeqEvento()));
				pDFe.setDocumentNote(resEvento.getXEvento());
				
				if (resEvento.getDhRecbto() != null)
					pDFe.setDateTrx(NFeUtil.stringToTime (resEvento.getDhRecbto().toString()));
				
				pDFe.setlbr_NFeProt(resEvento.getNProt());
				pDFe.setLBR_NSU(zip.getNSU());
				pDFe.setLBR_EventType(resEvento.getTpEvento());
				pDFe.setProcessed(true);
				if (pDFe.save())
					count.event++;
				
				continue;
			}
			
			try
			{
				//	Try to convert document to Event
				resProcEvento = ProcEventoNFeDocument.Factory.parse (resDocument.toString());
			}
			catch (Exception e) {}
			
			//	Event
			if (resProcEvento != null)
			{
				InfEvento resEvento = resProcEvento.getProcEventoNFe().getRetEvento().getInfEvento();
				//
				MLBRPartnerDFe pDFe = new MLBRPartnerDFe (ctx, 0, null);
				pDFe.setAD_Org_ID(p_AD_Org_ID);
				pDFe.setDocumentType(MLBRPartnerDFe.DOCUMENTTYPE_Evento);
				pDFe.setlbr_NFeID(resEvento.getChNFe());
				pDFe.setlbr_CNPJ(resEvento.getCNPJDest());
				pDFe.setlbr_CPF(resEvento.getCPFDest());
				pDFe.setDateDoc(NFeUtil.stringToTime(resEvento.getDhRegEvento()));					
				pDFe.setSeqNo(Integer.valueOf(resEvento.getNSeqEvento()));
				pDFe.setDocumentNote(resEvento.getXEvento());
				pDFe.setDateTrx(NFeUtil.stringToTime (resProcEvento.getProcEventoNFe().getEvento().getInfEvento().getDhEvento()));
				pDFe.setlbr_NFeProt(resEvento.getNProt());
				pDFe.setLBR_NSU(zip.getNSU());
				try
				{
					pDFe.setLBR_EventType(resEvento.getTpEvento());
				} 
				catch (Exception e) {}
				pDFe.setProcessed(true);
				if (pDFe.save())
				{
					count.event++;
					
					//	Arquivo de resposta final
					MAttachment attachEvent = pDFe.createAttachment ();
					attachEvent.addEntry (pDFe.getlbr_NFeID() + "_" + pDFe.getLBR_EventType() + "-procEventoNFe.xml", (NFeUtil.XML_HEADER + resDocument.toString()).getBytes("UTF-8"));
					attachEvent.save();
					
					//	Marca como anexo válido
					pDFe.setLBR_IsXMLValid(true);
					pDFe.save();
				}
				
				continue;
			}
			
			try
			{
				//	Try to convert document to Event
				resNFeProc = NfeProcDocument.Factory.parse (resDocument.toString());
			}
			catch (Exception e) {}
			
			//	NF-e Proc
			if (resNFeProc != null)
			{
				InfProt resNFe = resNFeProc.getNfeProc().getProtNFe().getInfProt();
				MLBRPartnerDFe pDFe = MLBRPartnerDFe.get (resNFe.getChNFe());

				if (pDFe == null)
				{
					InfNFe nfe = resNFeProc.getNfeProc().getNFe().getInfNFe();
					Emit emit = nfe.getEmit();
					//
					pDFe = new MLBRPartnerDFe (ctx, 0, null);
					pDFe.setAD_Org_ID(p_AD_Org_ID);
					pDFe.setDocumentType(MLBRPartnerDFe.DOCUMENTTYPE_NF_E);
					pDFe.setlbr_NFeID(resNFe.getChNFe());
					pDFe.setlbr_CNPJ(emit.getCNPJ());
					pDFe.setlbr_CPF(emit.getCPF());
					pDFe.setBPName(emit.getXNome());
					pDFe.setlbr_IE(emit.getIE());
					pDFe.setDateDoc(NFeUtil.stringToTime (nfe.getIde().getDhEmi()));
					pDFe.setGrandTotal(new BigDecimal (nfe.getTotal().getICMSTot().getVNF()));
					pDFe.setlbr_DigestValue(resNFe.xgetDigVal().getStringValue());
					pDFe.setDateTrx(NFeUtil.stringToTime (resNFe.getDhRecbto().toString()));
					pDFe.setLBR_NSU(zip.getNSU());
					
					//	Autorizado
					if (MLBRNotaFiscal.LBR_NFESTATUS_100_AutorizadoOUsoDaNF_E.equals(resNFe.getCStat()))
						pDFe.setLBR_SitNF(MLBRPartnerDFe.LBR_SITNF_1_Authorized);
					
					//	Denegado
					else if (MLBRNotaFiscal.LBR_NFESTATUS_110_UsoDenegado.equals(resNFe.getCStat()))
						pDFe.setLBR_SitNF(MLBRPartnerDFe.LBR_SITNF_2_UseDenied);
					
					pDFe.setlbr_NFeProt(resNFe.getNProt());
					pDFe.setIsSOTrx("1".equals(nfe.getIde().getTpNF().toString()));
					pDFe.setProcessed(true);
					pDFe.save();
				}
				else
					pDFe.setLBR_NSU(zip.getNSU());
				
				//	Tenta salvar
				if (pDFe.getLBR_PartnerDFe_ID() > 0)
				{
					count.nfe++;
					
					//	Arquivo de resposta final
					MAttachment attachEvent = pDFe.createAttachment ();
					attachEvent.addEntry (pDFe.getlbr_NFeID() + NFeUtil.PROC_XML_FILE_EXT, (NFeUtil.XML_HEADER + resDocument.toString()).getBytes("UTF-8"));
					attachEvent.save();
					
					//	Marca como anexo válido
					pDFe.setLBR_IsXMLValid(true);
					pDFe.save();
				}
				
				continue;
			}
			
			//	Log to check later, do not throw excetion, so this can continue processing other documents
			log.severe ("Document not found: " + resDocument);
		}
	}	//	processResult
	
	/**
	 * 	Read GZIP File
	 * @param gzis
	 * @return
	 * @throws IOException
	 */
	public static StringBuilder readGZIP (InputStream gzis) throws IOException
	{
		return readGZIP (new GZIPInputStream (gzis));
	}	//	readGZIP
	
	/**
	 * 	Read GZIP File
	 * @param gzis
	 * @return
	 * @throws IOException
	 */
	public static StringBuilder readGZIP (GZIPInputStream gzis) throws IOException
	{
		InputStreamReader reader = new InputStreamReader(gzis);
		BufferedReader in = new BufferedReader(reader);

		String readed;
		StringBuilder doc = new StringBuilder();
		while ((readed = in.readLine()) != null)
		{
			doc.append (readed);
		}
		
		return doc;
	}	//	readGZIP
	
	/**
	 * 	Ajusta o último NSU para consulta de DF-e
	 * 	@param oi
	 * 	@param pNSU
	 */
	private void setNSU (MOrgInfo oi, String pNSU)
	{
		String sql = "AD_Org_ID=? AND Name=?";
		MSysConfig sysConfig = new Query (getCtx(), MSysConfig.Table_Name, sql, null)
				.setParameters(oi.getAD_Org_ID(), SysConfig.LBR_DFE_LAST_NSU)
				.first();
		//
		if (sysConfig == null)
		{
			sysConfig = new MSysConfig (getCtx(), 0, null);
			sysConfig.setAD_Org_ID(oi.getAD_Org_ID());
			sysConfig.setName(SysConfig.LBR_DFE_LAST_NSU);
			sysConfig.setDescription("Last NSU for DF-e aquisition *** Do not change manually ***");
			sysConfig.setConfigurationLevel(MSysConfig.CONFIGURATIONLEVEL_Organization);
		}
		//
		sysConfig.setValue(pNSU);
		sysConfig.save();
		//
		CacheMgt.get ().reset (MSysConfig.Table_Name, sysConfig.getAD_SysConfig_ID ());
	}	//	setNSU
}	//	GetDFe

/**
 *	Counter
 */
class Counter 
{
	public Counter() {}
	public Counter(int loop)
	{
		this.loop = loop;
	}
	
	Integer nfe 	= 0;
	Integer err 	= 0;
	Integer event 	= 0;
	Integer loop 	= 1;
}	//	Counter