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
package org.adempierelbr.model;

import java.io.File;
import java.io.StringReader;
import java.math.BigDecimal;
import java.rmi.RemoteException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.List;
import java.util.Properties;
import java.util.UUID;

import javax.net.ssl.SSLException;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;

import org.adempiere.base.Service;
import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.nfe.NFeXMLGenerator;
import org.adempierelbr.nfe.api.NFeRecepcaoEvento4Stub;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.SignatureUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.apache.axis2.databinding.ADBException;
import org.apache.xmlbeans.SchemaTypeLoader;
import org.apache.xmlbeans.XmlBeans;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlObject;
import org.compiere.model.MAttachment;
import org.compiere.model.MDocType;
import org.compiere.model.MOrgInfo;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.process.DocAction;
import org.compiere.process.DocumentEngine;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.base.event.IDocFiscalHandler;
import org.kenos.idempiere.lbr.base.event.IDocFiscalHandlerFactory;

import br.inf.portalfiscal.nfe.evento.generico.EnvEventoDocument;
import br.inf.portalfiscal.nfe.evento.generico.ProcEventoNFeDocument;
import br.inf.portalfiscal.nfe.evento.generico.RetEnvEventoDocument;
import br.inf.portalfiscal.nfe.evento.generico.TAmb;
import br.inf.portalfiscal.nfe.evento.generico.TCOrgaoIBGE;
import br.inf.portalfiscal.nfe.evento.generico.TEnvEvento;
import br.inf.portalfiscal.nfe.evento.generico.TEvento;
import br.inf.portalfiscal.nfe.evento.generico.TProcEvento;
import br.inf.portalfiscal.nfe.evento.generico.TRetEnvEvento;
import br.inf.portalfiscal.nfe.evento.generico.TRetEvento;

/**
 * 		Model for Events
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRCCe.java, v1.0 2012/05/13 21:53:21 PM, ralexsander Exp $
 */
public class MLBRNFeEvent extends X_LBR_NFeEvent implements DocAction
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNFeEvent (Properties ctx, int ID, String trx)
	{
		super (ctx,ID,trx);
	}	//	MLBRCCe

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNFeEvent (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRCCe
	
	/**
	 * 	Get Document Info
	 *	@return document info (untranslated)
	 */
	public String getDocumentInfo()
	{
		MDocType dt = MDocType.get(getCtx(), 0);
		return dt.getName() + " " + getDocumentNo();
	}	//	getDocumentInfo

	/**
	 * 	Create PDF
	 *	@return File or null
	 */
	public File createPDF ()
	{
		try
		{
			File temp = File.createTempFile(get_TableName()+get_ID()+"_", ".pdf");
			return createPDF (temp);
		}
		catch (Exception e)
		{
			log.severe("Could not create PDF - " + e.getMessage());
		}
		return null;
	}	//	getPDF

	/**
	 * 	Create PDF file
	 *	@param file output file
	 *	@return file if success
	 */
	public File createPDF (File file)
	{
		return null;
	}	//	createPDF

	/**************************************************************************
	 * 	Process document
	 *	@param processAction document action
	 *	@return true if performed
	 */
	public boolean processIt (String processAction)
	{
		m_processMsg = null;
		DocumentEngine engine = new DocumentEngine (this, getDocStatus());
		return engine.processIt (processAction, getDocAction());
	}	//	processIt
	
	/**	Process Message 			*/
	private String		m_processMsg = null;
	/**	Just Prepared Flag			*/
	private boolean		m_justPrepared = false;
	private boolean 	m_updateNFe = true;

	/**
	 * 	Unlock Document.
	 * 	@return true if success 
	 */
	public boolean unlockIt()
	{
		log.info("unlockIt - " + toString());
		return true;
	}	//	unlockIt
	
	/**
	 * 	Invalidate Document
	 * 	@return true if success 
	 */
	public boolean invalidateIt()
	{
		log.info("invalidateIt - " + toString());
		return true;
	}	//	invalidateIt
	
	/**
	 *	Prepare Document
	 * 	@return new status (In Progress or Invalid) 
	 */
	public String prepareIt()
	{
		log.info(toString());
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;

		//	Validação da NF-e
		if (getLBR_NotaFiscal_ID() > 0)
		{
			MLBRNotaFiscal nf = new MLBRNotaFiscal (Env.getCtx(), getLBR_NotaFiscal_ID(), null);
			if (!MLBRNotaFiscal.LBR_NFESTATUS_100_AutorizadoOUsoDaNF_E.equals(nf.getlbr_NFeStatus()))
			{
				m_processMsg = "@Invalid@ @LBR_NotaFiscal_ID@";
				return DocAction.STATUS_Invalid;
			}
		}
		
		//	Validação do Tipo de Evento Cancelamento
		if (LBR_EVENTTYPE_Cancelamento.equals(getLBR_EventType()) && (getProtocol() == null || getProtocol().isEmpty()))
		{
			m_processMsg = "@Invalid@ @Protocol@";
			return DocAction.STATUS_Invalid;
		}
		
		//	Validação do Modelo da NF
		if (getlbr_NFModel() == null || getlbr_NFModel().isEmpty())
		{
			m_processMsg = "@Invalid@ @lbr_NFModel@";
			return DocAction.STATUS_Invalid;
		}
		
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		m_justPrepared = true;

		return DocAction.STATUS_InProgress;
	}	//	prepareIt
	
	/**
	 * 	Approve Document
	 * 	@return true if success 
	 */
	public boolean  approveIt()
	{
		log.info("approveIt - " + toString());
		return true;
	}	//	approveIt
	
	/**
	 * 	Reject Approval
	 * 	@return true if success 
	 */
	public boolean rejectIt()
	{
		log.info("rejectIt - " + toString());
		return true;
	}	//	rejectIt
	
	/**
	 * 	Complete Document
	 * 	@return new status (Complete, In Progress, Invalid, Waiting ..)
	 */
	public String completeIt()
	{
		//	Re-Check
		if (!m_justPrepared)
		{
			String status = prepareIt();
			if (!DocAction.STATUS_InProgress.equals(status))
				return status;
		}

		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_COMPLETE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		
		log.info(toString());
		
		String xmlExtension = ".xml";
				
		MOrgInfo oi = MOrgInfo.get (Env.getCtx(), getAD_Org_ID(), null);
		I_W_AD_OrgInfo oiW = POWrapper.create (oi, I_W_AD_OrgInfo.class);
		int p_Org_Region_ID = oi.getC_Location().getC_Region_ID();
		
		try
		{
			//Nota Fiscal Eletrônica
			if (TextUtil.match(getlbr_NFModel(), MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalEletrônica, MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalDeConsumidorEletrônica)) 
			{	
				//	Dados do Envio
				EnvEventoDocument envDoc = EnvEventoDocument.Factory.newInstance();
				TEnvEvento env = envDoc.addNewEnvEvento();
				env.setVersao(NFeUtil.VERSAO_EVENTO);
				env.setIdLote(getDocumentNo());
				
				//	Dados do Evento da Carta de Correção
				TEvento evento = env.addNewEvento();
				evento.setVersao(NFeUtil.VERSAO_EVENTO);
				TEvento.InfEvento infEv = evento.addNewInfEvento();
				
				//	Informações do Evento da Carta de Correção
				infEv.setCOrgao(TCOrgaoIBGE.Enum.forString(Integer.toString (NFeUtil.getRegionCode (oi))));
				infEv.setTpAmb(TAmb.Enum.forString(getlbr_NFeEnv()));
				
				//	CPF ou CNPJ
				String CNPJF = TextUtil.toNumeric (oiW.getlbr_CNPJ());
				if (CNPJF != null && CNPJF.length() == 11)
					infEv.setCPF (CNPJF);
				else
					infEv.setCNPJ(CNPJF);
				
				infEv.setChNFe(getlbr_NFeID());
				infEv.setDhEvento(NFeXMLGenerator.normalizeTZ (getDateDoc()));
				infEv.setNSeqEvento(Integer.toString(getSeqNo()));
				infEv.setVerEvento(NFeUtil.VERSAO_EVENTO);
				infEv.setTpEvento(getLBR_EventType());
				
				//	Chave
				String key = "ID" + infEv.getTpEvento() + infEv.getChNFe() + TextUtil.lPad (infEv.getNSeqEvento(), 2);
				infEv.setId(key);
				
				XmlObject det = null;
				
				//	Evento de cancelamento
				if (LBR_EVENTTYPE_Cancelamento.equals(getLBR_EventType()))
				{
					br.inf.portalfiscal.nfe.evento.cancelamento.DetEventoDocument detDoc = br.inf.portalfiscal.nfe.evento.cancelamento.DetEventoDocument.Factory.newInstance();
					br.inf.portalfiscal.nfe.evento.cancelamento.DetEventoDocument.DetEvento detCan = detDoc.addNewDetEvento();
					//
					if (getDescription() != null)
						detCan.setXJust(getDescription().trim());	
					//
					detCan.setVersao(br.inf.portalfiscal.nfe.evento.cancelamento.DetEventoDocument.DetEvento.Versao.X_1_00);
					detCan.setDescEvento(br.inf.portalfiscal.nfe.evento.cancelamento.DetEventoDocument.DetEvento.DescEvento.CANCELAMENTO);
					detCan.setNProt(getProtocol());
					//
					xmlExtension = "-can-dst.xml";
					NFeUtil.validate (detCan);
					det = detCan;
				}
				
				//	Carta de Correção
				else if (LBR_EVENTTYPE_CartaDeCorrecao.equals(getLBR_EventType()))
				{
					br.inf.portalfiscal.nfe.evento.cce.DetEventoDocument detDoc = br.inf.portalfiscal.nfe.evento.cce.DetEventoDocument.Factory.newInstance();
					br.inf.portalfiscal.nfe.evento.cce.DetEventoDocument.DetEvento detCCe = detDoc.addNewDetEvento();
					//
					detCCe.setVersao(br.inf.portalfiscal.nfe.evento.cce.DetEventoDocument.DetEvento.Versao.X_1_00);
					detCCe.setXCorrecao(getDescription().trim());
					detCCe.setDescEvento(br.inf.portalfiscal.nfe.evento.cce.DetEventoDocument.DetEvento.DescEvento.CARTA_DE_CORREÇÃO);
					detCCe.setXCondUso(br.inf.portalfiscal.nfe.evento.cce.DetEventoDocument.DetEvento.XCondUso.A_CARTA_DE_CORREÇÃO_É_DISCIPLINADA_PELO_1_º_A_DO_ART_7_º_DO_CONVÊNIO_S_N_DE_15_DE_DEZEMBRO_DE_1970_E_PODE_SER_UTILIZADA_PARA_REGULARIZAÇÃO_DE_ERRO_OCORRIDO_NA_EMISSÃO_DE_DOCUMENTO_FISCAL_DESDE_QUE_O_ERRO_NÃO_ESTEJA_RELACIONADO_COM_I_AS_VARIÁVEIS_QUE_DETERMINAM_O_VALOR_DO_IMPOSTO_TAIS_COMO_BASE_DE_CÁLCULO_ALÍQUOTA_DIFERENÇA_DE_PREÇO_QUANTIDADE_VALOR_DA_OPERAÇÃO_OU_DA_PRESTAÇÃO_II_A_CORREÇÃO_DE_DADOS_CADASTRAIS_QUE_IMPLIQUE_MUDANÇA_DO_REMETENTE_OU_DO_DESTINATÁRIO_III_A_DATA_DE_EMISSÃO_OU_DE_SAÍDA);
					//
					xmlExtension = "-cce-dst.xml";
					NFeUtil.validate (detCCe);
					det = detCCe;
				}
				
				//	Manifestação do Destinatário
				else if (getLBR_EventType().startsWith("2102"))	//	Manifesto
				{
					br.inf.portalfiscal.nfe.evento.manifestadest.DetEventoDocument detDoc = br.inf.portalfiscal.nfe.evento.manifestadest.DetEventoDocument.Factory.newInstance();
					br.inf.portalfiscal.nfe.evento.manifestadest.DetEventoDocument.DetEvento detManif = detDoc.addNewDetEvento();
					//
					detManif.setVersao(br.inf.portalfiscal.nfe.evento.manifestadest.DetEventoDocument.DetEvento.Versao.X_1_00);
					detManif.setDescEvento(br.inf.portalfiscal.nfe.evento.manifestadest.DetEventoDocument.DetEvento.DescEvento.Enum.forString(getLBR_EventType()));
					
					if (LBR_EVENTTYPE_CienciaDaOperacao.equals(getLBR_EventType()))
						detManif.setDescEvento(br.inf.portalfiscal.nfe.evento.manifestadest.DetEventoDocument.DetEvento.DescEvento.CIENCIA_DA_OPERACAO);
					
					else if (LBR_EVENTTYPE_ConfirmacaoDaOperacao.equals(getLBR_EventType()))
						detManif.setDescEvento(br.inf.portalfiscal.nfe.evento.manifestadest.DetEventoDocument.DetEvento.DescEvento.CONFIRMACAO_DA_OPERACAO);
					
					else if (LBR_EVENTTYPE_DesconhecimentoDaOperacao.equals(getLBR_EventType()))
						detManif.setDescEvento(br.inf.portalfiscal.nfe.evento.manifestadest.DetEventoDocument.DetEvento.DescEvento.DESCONHECIMENTO_DA_OPERACAO);
					
					else if (LBR_EVENTTYPE_OperacaoNaoRealizada.equals(getLBR_EventType()))
					{
						detManif.setXJust(getDescription().trim());
						detManif.setDescEvento(br.inf.portalfiscal.nfe.evento.manifestadest.DetEventoDocument.DetEvento.DescEvento.OPERACAO_NAO_REALIZADA);
						NFeUtil.validate (detManif);
					}
					else
						throw new AdempiereException ("Evento não suportado");
					
					//	Manifesto - Ambiente Nacional
					infEv.setCOrgao(TCOrgaoIBGE.Enum.forString(Integer.toString (91)));
					p_Org_Region_ID = 0;
					//
					xmlExtension = "-manif.xml";
					det = detManif;
				}
			
				//	Detalhes do Evento
				if (det == null)
					return "@Error@ Detalhes do Evento não encontrado";
				
				XmlCursor detCursor = det.newCursor();
				detCursor.toStartDoc();
				detCursor.toNextToken();
			
				//	Move o XML do Detalhe do Evento
				XmlCursor rootCursor = infEv.newCursor();
				rootCursor.toEndToken();
				detCursor.copyXml(rootCursor);
				
				//	Assinando o documento
				new SignatureUtil (oi, SignatureUtil.EVENTO).sign (envDoc, evento.newCursor());
				
				//	Validação
				NFeUtil.validate (envDoc);
				
				//	XML
				StringBuilder xml = new StringBuilder (envDoc.xmlText (NFeUtil.getXmlOpt()));
				log.fine (xml.toString());
	
				//	Procura os endereços para Transmissão
				String wsName = MLBRNFeWebService.RECEPCAOEVENTO;
				if (LBR_NFMODEL_NotaFiscalDeConsumidorEletrônica.equals(getlbr_NFModel()))
					wsName = "NFCe" + wsName;
				MLBRNFeWebService ws = MLBRNFeWebService.get (wsName, getlbr_NFeEnv(), NFeUtil.VERSAO_LAYOUT, p_Org_Region_ID, 0);
				
				if (ws == null)
				{
					m_processMsg = "Erro ao transmitir o Evento da NF-e. Não foi encontrado um endereço WebServices válido.";
					return DocAction.STATUS_Invalid;
				}
				
				//	URL
				String url = ws.getURL();
				
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
					handler = docFiscal.getHandler (certificate.getlbr_CertType(), MLBRNFeEvent.class.getName());
					if (handler != null)
						break;
				}
				
				// 	We have both, the URL for the local app and the Plugin transmitter
				if (handler != null)
				{
					synchronized (respStatus)
					{
						String uuid = UUID.randomUUID().toString();
						handler.transmitDocument(IDocFiscalHandler.DOC_NFE_EVENT, oi.get_ValueAsString(I_W_AD_OrgInfo.COLUMNNAME_lbr_CNPJ), 
								uuid, certificate.getURL(), url, "" + NFeUtil.getRegionCode (oi), xml.toString (), respStatus);

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
					//	Prepara a Transmissão
					certificate.initialize();
					
					XMLStreamReader dadosXML = XMLInputFactory.newInstance().createXMLStreamReader (new StringReader (NFeUtil.XML_HEADER + NFeUtil.wrapMsg (xml.toString ())));
	
					br.inf.portalfiscal.www.nfe.wsdl.nferecepcaoevento4.NfeDadosMsg dadosMsg = br.inf.portalfiscal.www.nfe.wsdl.nferecepcaoevento4.NfeDadosMsg.Factory.parse(dadosXML);
					
					NFeRecepcaoEvento4Stub stub = new NFeRecepcaoEvento4Stub(url);
	
					//	Resposta do SEFAZ
					String respLote = NFeUtil.XML_HEADER + stub.nfeRecepcaoEvento (dadosMsg.getExtraElement()).toString();
					log.fine (respLote);
					
					respStatus.append(respLote);
				}
				
				//	SchemaTypeLoader necessário, pois o RetEnvEventoDocument existe com a mesma namespace para outros docs
				//		ref. http://ateneatech.com/blog/desenredando-xmlbeans
				SchemaTypeLoader stl = XmlBeans.typeLoaderUnion(new SchemaTypeLoader[]{RetEnvEventoDocument.type.getTypeSystem(), XmlBeans.getContextTypeLoader()});			
				TRetEnvEvento retEnvEvento = ((RetEnvEventoDocument) stl.parse (respStatus.toString(), null, null)).getRetEnvEvento();
				
				if (!LBR_NFESTATUS_128_LoteDeEventoProcessado.equals (retEnvEvento.getCStat()))
					throw new AdempiereException (retEnvEvento.getXMotivo());
				
				for (TRetEvento retEvento : retEnvEvento.getRetEventoArray())
				{
					TRetEvento.InfEvento infReturn = retEvento.getInfEvento();
					
					//	Evento processada com sucesso
					String cStat = infReturn.getCStat();
					
					if (TextUtil.match (cStat, 	LBR_NFESTATUS_135_EventoRegistradoEVinculadoANF_E, 
												LBR_NFESTATUS_136_EventoRegistradoMasNãoVinculadoANF_E,
												LBR_NFESTATUS_151_CancelamentoDeNF_EHomologadoForaDePrazo,
												LBR_NFESTATUS_155_CancelamentoDeNF_EHomologadoForaDePrazo))
					{
						setlbr_NFeStatus (cStat);
						setDateTrx (NFeUtil.stringToTime (infReturn.getDhRegEvento()));
						setStatus (infReturn.getXMotivo ());
						setlbr_CNPJ (infReturn.getCNPJDest ());
						setlbr_CPF (infReturn.getCPFDest ());
						setlbr_NFeProt (infReturn.getNProt ());
						setEMail (infReturn.getEmailDest ());
						saveEx ();
						
						//	Marca a NF como cancelada
						if (LBR_EVENTTYPE_Cancelamento.equals (infReturn.getTpEvento())
								&& m_updateNFe)
						{
							MLBRNotaFiscal nfe = MLBRNotaFiscal.getNFe(infReturn.getChNFe(), get_TrxName());
							
							if (nfe != null)
							{
								nfe.setVoidInfo (true);
								nfe.save();
							}
						}
		
						//	Arquivo de Distribuição
						ProcEventoNFeDocument procEventoNFeDoc = ProcEventoNFeDocument.Factory.newInstance(); 
						TProcEvento procEventoNFe = procEventoNFeDoc.addNewProcEventoNFe();
						procEventoNFe.setVersao (NFeUtil.VERSAO_EVENTO);
						procEventoNFe.setEvento(evento);
						procEventoNFe.setRetEvento(retEvento);
						
						//	Arquivo de resposta final
						getAttachment(true);	//	FIX
						MAttachment attachEvent = createAttachment ();
						attachEvent.addEntry (infEv.getId() + xmlExtension, (NFeUtil.XML_HEADER + procEventoNFeDoc.xmlText(NFeUtil.getXmlOpt())).getBytes("UTF-8"));
						attachEvent.save();
					}
					else
					{
						log.severe("XML Sent: " + xml + "\nXML Response: " + respStatus.toString());
						throw new AdempiereException (infReturn.getCStat() + " - " + infReturn.getXMotivo());
					}
				}
			}
			//Nota Fiscal de Serviços Eletrõnica - RPS
			else if (MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalDeServiçosEletrônicaRPS.equals(getlbr_NFModel())) 
			{
//		TODO		if (!LBR_EVENTTYPE_Cancelamento.equals(getLBR_EventType()))
					throw new AdempiereException ("Evento não suportado para NFSe");
				
//				INFSe infSe = NFSeUtil.get (nf);
//				infSe.cancel(this, nf);
			}
			
		}
		catch (AdempiereException e)
		{
			e.printStackTrace();
			m_processMsg = "Problema com o processamento do lote pela SEFAZ/SEFIN: " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
		catch (SSLException e)
		{
			e.printStackTrace();
			m_processMsg = "Erro ao transmitir o Evento. " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
		catch (RemoteException e)
		{
			e.printStackTrace();
			m_processMsg = "Erro ao transmitir o Evento. " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
		catch (ADBException e)
		{
			e.printStackTrace();
			m_processMsg = "Erro ao converter o XML para transmissão do Evento. " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
		catch (XMLStreamException e)
		{
			e.printStackTrace();
			m_processMsg = "Erro ao converter o XML para transmissão do Evento. " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
		catch (CertificateExpiredException e)
		{
			e.printStackTrace();
			m_processMsg = "Erro ao assinar o Evento. O certificado expirou. " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
		catch (CertificateNotYetValidException e)
		{
			e.printStackTrace();
			m_processMsg = "Erro ao assinar o Evento. O certificado não é válido para esta data. " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
		catch (Exception e)
		{
			e.printStackTrace();
			m_processMsg = "Erro no processo para gerar o Evento. " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
	
		//	User Validation
		String valid = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_COMPLETE);
		if (valid != null)
		{
			m_processMsg = valid;
			return DocAction.STATUS_Invalid;
		}

		setProcessed(true);
		setDocAction(DOCACTION_None);
		return DocAction.STATUS_Completed;
	}	//	completeIt

	/**
	 * 	Void Document.
	 * 	Same as Close.
	 * 	@return true if success 
	 */
	public boolean voidIt()
	{
		log.info("voidIt - " + toString());
		
		if (!DOCSTATUS_Completed.equals(getDocStatus()))
		{
			setProcessed (true);
			setDocAction (DOCACTION_None);
			return true;
		}
		return closeIt();
	}	//	voidIt
	
	/**
	 * 	Close Document.
	 * 	Cancel not delivered Qunatities
	 * 	@return true if success 
	 */
	public boolean closeIt()
	{
		log.info("closeIt - " + toString());
		m_processMsg = "Não é permitido fechar o documento.";
		return false;
	}	//	closeIt
	
	/**
	 * 	Reverse Correction
	 * 	@return true if success 
	 */
	public boolean reverseCorrectIt()
	{
		log.info("reverseCorrectIt - " + toString());
		return false;
	}	//	reverseCorrectionIt
	
	/**
	 * 	Reverse Accrual - none
	 * 	@return true if success 
	 */
	public boolean reverseAccrualIt()
	{
		log.info("reverseAccrualIt - " + toString());
		return false;
	}	//	reverseAccrualIt
	
	/** 
	 * 	Re-activate
	 * 	@return true if success 
	 */
	public boolean reActivateIt()
	{
		log.info("reActivateIt - " + toString());

		if (reverseCorrectIt())
			return true;
		return false;
	}	//	reActivateIt
	
	/*************************************************************************
	 * 	Get Summary
	 *	@return Summary of Document
	 */
	public String getSummary()
	{
		return "";
	}	//	getSummary

	/**
	 * 	Get Process Message
	 *	@return clear text error message
	 */
	public String getProcessMsg()
	{
		return m_processMsg;
	}	//	getProcessMsg
	
	/**
	 * 	Get Document Owner (Responsible)
	 *	@return AD_User_ID
	 */
	public int getDoc_User_ID()
	{
		return 0;
	}	//	getDoc_User_ID

	/**
	 * 	Get Document Approval Amount
	 *	@return amount
	 */
	public BigDecimal getApprovalAmt()
	{
		return null;
	}	//	getApprovalAmt
	
	/**
	 * 	Get Document Currency
	 *	@return C_Currency_ID
	 */
	public int getC_Currency_ID()
	{
		return 0;
	}	//	getC_Currency_ID
	
	/**
	 * 	Before Save
	 */
	protected boolean beforeSave (boolean newRecord)
	{
		if (getlbr_NFeID() != null && !getlbr_NFeID().isEmpty()
				&& !NFeUtil.validateNFeID(getlbr_NFeID()))
			throw new AdempiereException("Chave da NF-e Invalida");

		if (newRecord)
		{
			int seqNo = DB.getSQLValue (get_TrxName(), "SELECT COALESCE(MAX(SeqNo), 0)+1 AS DefaultValue "
					+ "FROM LBR_NFeEvent "
					+ "WHERE DocStatus IN ('CL','CO') "
					+ "AND LBR_NFeID=? "
					+ "AND LBR_EventType=?", getlbr_NFeID(), getLBR_EventType());	
			//
			setSeqNo (seqNo);
			setDateDoc(new Timestamp(System.currentTimeMillis()));
			
			if (getlbr_NFeEnv() == null)
			{
				MLBRNFConfig config = MLBRNFConfig.get(getAD_Org_ID(), getlbr_NFModel());
				if (config != null)
					setlbr_NFeEnv(config.getlbr_NFeEnv());
			}
		}
		
		//	Remover espaços do campo de Carta de Correção
		if (LBR_EVENTTYPE_CartaDeCorrecao.equals(getLBR_EventType()) && getDescription() != null)
			setDescription(NFeXMLGenerator.normalize (getDescription()));
		return true;
	}	//	beforeSave
	
	/**
	 *	
	 */
	public String toString() 
	{
		return "MLBRNFeEvent[ID=" + getLBR_NFeEvent_ID() + ", Key='" + getlbr_NFeID() + "', Type='" + getLBR_EventType() + "', DocStatus='" + getDocStatus() + "']";
	}	//	toString
	
	/**
	 * 	Registrar evento
	 * @param nf
	 * @param eventType
	 * @param desc
	 * @param seqNo
	 * @throws AdempiereException
	 */
	public static void registerEvent (MLBRNotaFiscal nf, String eventType, String desc, int seqNo, boolean updateNFe) throws AdempiereException
	{
		registerEvent (nf, eventType, desc, seqNo, updateNFe, true);
	}	//	registerEvent
	
	/**
	 * 	Registrar evento
	 * @param nf
	 * @param eventType
	 * @param desc
	 * @param seqNo
	 * @throws AdempiereException
	 */
	public static MLBRNFeEvent registerEvent (MLBRNotaFiscal nf, String eventType, String desc, int seqNo, boolean updateNFe, boolean transmit) throws AdempiereException
	{
		MLBRNFeEvent event = new MLBRNFeEvent (nf.getCtx(), 0, nf.get_TrxName());
		event.setAD_Org_ID(nf.getAD_Org_ID());
		event.setLBR_NotaFiscal_ID(nf.getLBR_NotaFiscal_ID());
		event.setlbr_NFeID(nf.getlbr_NFeID());
		event.setLBR_EventType(eventType);
		event.setlbr_NFeEnv(nf.getlbr_NFeEnv());
		event.setDescription(desc);
		event.setDateDoc(new Timestamp (System.currentTimeMillis()));
		event.setSeqNo(seqNo);
		event.setlbr_NFModel(nf.getlbr_NFModel());
		event.setProtocol(nf.getlbr_NFeProt());
		event.saveEx();
		//
		event.m_updateNFe = updateNFe;
		
		//	Transmit the evento to SeFaz
		if (transmit)
		{
			if (event.processIt(DOCACTION_Complete))
			{
				event.setDocStatus(DOCSTATUS_Completed);
				event.setDocAction(DOCACTION_None);
				event.save();
			}
			else
			{
				throw new AdempiereException ("Falha ao completar o registro do evento. " + event.getProcessMsg());
			}
		}
		
		return event;
	}	//	registerEvent
}	//	MLBRNFeEvent
