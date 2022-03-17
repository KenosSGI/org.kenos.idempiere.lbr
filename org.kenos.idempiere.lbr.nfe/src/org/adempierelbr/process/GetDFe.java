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
import org.adempiere.exceptions.AdempiereException;
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
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.base.event.IDocFiscalHandler;
import org.kenos.idempiere.lbr.base.event.IDocFiscalHandlerFactory;

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
import br.inf.portalfiscal.www.nfe.wsdl.nfedistribuicaodfe.NfeDistDFeInteresseResult_type0;

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
	
	/** Environment Type			*/
	private String p_tpEnv = null;
	
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
			
			else if (MLBRNotaFiscal.COLUMNNAME_lbr_NFeEnv.equals(name))
				p_tpEnv = para[i].getParameterAsString();
			
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
		
		Boolean consultSingleNSU = false;
		
		//	Limit execution for each 1h and 10min to avoid being locked out from SeFaz
		Calendar cal = new GregorianCalendar();
		cal.setTime(new Date());
		cal.add(Calendar.HOUR, -1);
		
		String sql = "SELECT MAX(i.Created) "
				+ " FROM AD_PInstance i, AD_PInstance_Para p "
				+ " WHERE i.AD_Process_ID=1120159 "	//	AD_Process_ID=UpdateDFe Process
				+ " AND i.AD_PInstance_ID=p.AD_PInstance_ID "
				+ " AND p.ParameterName='AD_Org_ID' "
				+ " AND p.P_Number=" + p_AD_Org_ID
				+ " AND i.Result=1 "
				+ " AND i.Created >= " + DB.TO_DATE (new Timestamp (cal.getTimeInMillis()), false);
		
		MOrgInfo oi = MOrgInfo.get (getCtx(), p_AD_Org_ID, null);
		RetDistDFeIntDocument bpResponse;
		
		if (!p_LBR_NSU.isEmpty())
		{
			consultSingleNSU = true;
			bpResponse = GetDFe.doIt (oi, p_LBR_NSU, consultSingleNSU);
		}
		else
		{
			Timestamp lastCreated = DB.getSQLValueTS (null, sql);
			if (!p_ForceExec && lastCreated != null)
			{
				cal.setTime(lastCreated);
				cal.add(Calendar.HOUR, 1);
				//
				addLog ("Somente permitido uma consulta por hora. ");
				addLog ("A próxima consulta poderá ser feita em " + TextUtil.timeToString(cal.getTime(), "dd/MM/yyyy' às 'HH'h 'mm'm e 'ss's'") );
				return "@Error@ Somente permitido uma consulta por hora. A próxima consulta poderá ser feita em " + TextUtil.timeToString(cal.getTime(), "dd/MM/yyyy' às 'HH'h 'mm'm e 'ss's'");
			}
		
			oi = MOrgInfo.get (getCtx(), p_AD_Org_ID, null);
			Long lastNSU = getMaxNSU (oi.getAD_Org_ID());
			bpResponse = GetDFe.doIt (oi, lastNSU, consultSingleNSU, p_tpEnv);
		}

		if (bpResponse == null)
			throw new AdempiereUserError ("Error getting DF-e, null response from SeFaz. Check log for more info.");

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
			Long maxNSU 		= Long.valueOf(retConsNFeDest.getMaxNSU());
			
			//	Max NSU at this result
			Long currentNSU 	= Long.valueOf(retConsNFeDest.getUltNSU());

			//	Save results
			processResult (getCtx(), retConsNFeDest.getLoteDistDFeInt(), count, p_AD_Org_ID);
			
			//	Log results
			log.info ("Current NSU -> " + currentNSU + " Max NSU -> " + maxNSU);

			//	Try to adquire more documets
			while (!consultSingleNSU && true)
			{
				if (maxNSU == null || currentNSU == null 						//	Invalid Max global or session NSU
						|| currentNSU >= maxNSU 								//	All documents acquired
						|| (count.loop) > 500)									//	Maximum documents reached
					break;
				
				//	In case of failure, cancel operation
				RetDistDFeIntDocument retDoc = GetDFe.doIt (oi, currentNSU, false, p_tpEnv);
				if (retDoc == null)
					break;
				
				RetDistDFeInt retLoop = retDoc.getRetDistDFeInt();
				
				//	Document Found
				if (MLBRNotaFiscal.LBR_NFESTATUS_138_DocumentoLocalizadoParaODestinatário
						.equals(retLoop.getCStat()))
				{
					//	Save Results
					processResult (getCtx(), retLoop.getLoteDistDFeInt(), count, p_AD_Org_ID);
					
					//	Check if last NSU is greater than current, else increment current
					Long lastNSU = Long.valueOf(retLoop.getUltNSU());
					currentNSU = lastNSU > currentNSU ? lastNSU : currentNSU++;
				}
				
				//	Increment NSU
				else if (MLBRNotaFiscal.LBR_NFESTATUS_137_NenhumDocumentoLocalizadoParaODestinatário
						.equals(retLoop.getCStat()))
				{
					log.warning("Loop [" + count.loop + "] failed with status [" + retLoop.getCStat() + "] - " + retLoop.getXMotivo());
					currentNSU++;
				}
				
				else
				{
					log.warning("ERROR - Loop [" + count.loop + "] failed with status [" + retLoop.getCStat() + "] - " + retLoop.getXMotivo());
					break;
				}
				
				log.info ("Current NSU -> " + currentNSU + " on loop -> " + count.loop);

				//	Loop
				count.loop++;
			}
			
			return "@Success@ - " + retConsNFeDest.getXMotivo() + "<br />" + 
							count.nfe + " - Notas Fiscais obtidas<br />" +
							count.event + " - Eventos obtidos<br />" +
							"Adquiridas em " + count.loop + " pesquisa(s)";
		}
		
		addLog(retConsNFeDest.getXMotivo());
		return "@Error@ - " + retConsNFeDest.getXMotivo();
	}	//	doIt
	
	/**
	 * 	Get max NSU of the Organization
	 * 	@param AD_Org_ID
	 * 	@return
	 */
	private Long getMaxNSU (int AD_Org_ID) 
	{
		String result = DB.getSQLValueString(get_TrxName(), "SELECT MAX(" + MLBRPartnerDFe.COLUMNNAME_LBR_NSU + 
				") FROM " + MLBRPartnerDFe.Table_Name + 
				" WHERE " + MLBRPartnerDFe.COLUMNNAME_AD_Org_ID + "=? AND " + 
				MLBRPartnerDFe.COLUMNNAME_LBR_NSU + " IS NOT NULL", AD_Org_ID);
		//
		if (result == null || result.isBlank())
			result = "0";
		return Long.valueOf (result);
	}	//	getMaxNSU

	/**
	 * 		Consulta o Parceiro de Negócios na SeFaz
	 * 
	 * 	@param oi Organization Info
	 * 	@param CNPJ
	 * 	@param CPF
	 * 	@param IE
	 * 	@param UF
	 * 	@param Envorionment Type
	 * 	@return
	 * 	@throws XmlException 
	 */
	public static RetDistDFeIntDocument doIt (MOrgInfo oi, String nsu, Boolean consultSingleNSU) throws XmlException, AdempiereException
	{
		return doIt (oi, Long.valueOf(nsu), consultSingleNSU, null);
	}	//	doIt

	/**
	 * 		Consulta o Parceiro de Negócios na SeFaz
	 * 
	 * 	@param oi Organization Info
	 * 	@param CNPJ
	 * 	@param CPF
	 * 	@param IE
	 * 	@param UF
	 * 	@param Envorionment Type
	 * 	@return
	 * 	@throws XmlException 
	 */
	public static RetDistDFeIntDocument doIt (MOrgInfo oi, String nsu, Boolean consultSingleNSU, String tpEnv) throws XmlException, AdempiereException
	{
		return doIt (oi, Long.valueOf(nsu), consultSingleNSU, tpEnv);
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
	public static RetDistDFeIntDocument doIt (MOrgInfo oi, Long nsu, Boolean consultSingleNSU) throws XmlException, AdempiereException
	{
		return doIt (oi, Long.valueOf(nsu), consultSingleNSU, null);
	}	//	doIt

	/**
	 * 		Consulta o Parceiro de Negócios na SeFaz
	 * 
	 * 	@param oi Organization Info
	 * 	@param CNPJ
	 * 	@param CPF
	 * 	@param IE
	 * 	@param UF
	 * 	@param Envorionment Type
	 * 	@return
	 * 	@throws XmlException 
	 */
	public static RetDistDFeIntDocument doIt (MOrgInfo oi, Long nsu, Boolean consultSingleNSU, String tpEnv) throws XmlException, AdempiereException
	{
		I_W_AD_OrgInfo oiW = POWrapper.create(oi, I_W_AD_OrgInfo.class);
		DistDFeIntDocument consDFeDoc = DistDFeIntDocument.Factory.newInstance();
		DistDFeInt consDFe = consDFeDoc.addNewDistDFeInt();
		
		MLBRNFConfig config = MLBRNFConfig.get(oi.getAD_Org_ID());
		if (tpEnv == null && config != null)
			tpEnv = config.getlbr_NFeEnv();
		if (tpEnv == null)
			throw new AdempiereException ("Ambiente Inválido para consulta de DF-e");
		
		consDFe.setTpAmb(TAmb.Enum.forString(tpEnv));
		consDFe.setVersao(TVerDistDFe.X_1_01);
		consDFe.setCUFAutor(TCodUfIBGE.X_35);
		
		//	CPF ou CNPJ
		String CNPJF = TextUtil.toNumeric (oiW.getlbr_CNPJ());
		if (CNPJF != null && CNPJF.length() == 11)
			consDFe.setCPF (CNPJF);
		else
			consDFe.setCNPJ(CNPJF);
		
		if (!consultSingleNSU)
		{
			DistNSU distNSU = consDFe.addNewDistNSU();
			distNSU.setUltNSU(TextUtil.lPad(nsu.toString(), 15));
		}
		else
		{
			ConsNSU consNSU = consDFe.addNewConsNSU();
			consNSU.setNSU(TextUtil.lPad(nsu.toString(), 15));
		}
		
		//	Validar XML
		NFeUtil.validate (consDFeDoc);
		
		try
		{
			String url = MLBRNFeWebService.getURL (MLBRNFeWebService.DISTRIBUICAONFE, tpEnv, NFeUtil.VERSAO_LAYOUT, -1);
			
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
	
				NfeDistDFeInteresseResult_type0 nfeDistDFeInteresse = stub.nfeDistDFeInteresse (dadosMsg);
				if (nfeDistDFeInteresse == null)
					throw new Exception ("@Error@ Resposta da SeFaz inválida");

				OMElement nfeConsulta = nfeDistDFeInteresse.getExtraElement();
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
				
				//	Try to find an existing event
				MLBRPartnerDFe pDFe = null;
				if (resEvento.getNProt() == null)
					pDFe = MLBRPartnerDFe.get (resEvento.getChNFe(), MLBRPartnerDFe.DOCUMENTTYPE_Evento, "evento-sem-protocolo", 0);
				
				//	New event
				if (pDFe == null)
					pDFe = new MLBRPartnerDFe (ctx, 0, null);
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
				
				//	Some events does not has date or protocol
				if (pDFe.getDateDoc() == null)
					pDFe.setDateDoc(new Timestamp (System.currentTimeMillis()));
				if (pDFe.getDateTrx() == null)
					pDFe.setDateTrx(new Timestamp (System.currentTimeMillis()));
				if (pDFe.getlbr_NFeProt() == null)
					pDFe.setlbr_NFeProt("evento-sem-protocolo");
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