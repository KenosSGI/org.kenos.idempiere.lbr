package org.adempierelbr.nfse;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.stream.Collectors;

import org.adempiere.base.Service;
import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempiere.report.jasper.JRViewerProvider;
import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.model.MLBRNFConfig;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.nfse.util.FixedTxt;
import org.adempierelbr.process.ProcEMailNFe;
import org.adempierelbr.process.ProcReturnRPS;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.SignatureUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.validator.ValidatorBPartner;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.apache.axis2.transport.http.HTTPConstants;
import org.apache.xmlbeans.XmlCalendar;
import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;
import org.compiere.model.MBPartner;
import org.compiere.model.MImage;
import org.compiere.model.MOrgInfo;
import org.compiere.process.ProcessInfo;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Util;
import org.kenos.idempiere.lbr.base.model.MCity;
import org.kenos.idempiere.lbr.nfse.sjp.NfseStub;

import br.gov.pr.sjp.nfe.cabecalhoV03.CabecalhoDocument.Cabecalho;
import br.gov.pr.sjp.nfe.servicoConsultarLoteRpsEnvioV03.ConsultarLoteRpsEnvioDocument;
import br.gov.pr.sjp.nfe.servicoConsultarLoteRpsEnvioV03.ConsultarLoteRpsEnvioDocument.ConsultarLoteRpsEnvio;
import br.gov.pr.sjp.nfe.servicoConsultarLoteRpsRespostaV03.ConsultarLoteRpsRespostaDocument;
import br.gov.pr.sjp.nfe.servicoConsultarLoteRpsRespostaV03.ConsultarLoteRpsRespostaDocument.ConsultarLoteRpsResposta;
import br.gov.pr.sjp.nfe.servicoConsultarSituacaoLoteRpsEnvioV03.ConsultarSituacaoLoteRpsEnvioDocument;
import br.gov.pr.sjp.nfe.servicoConsultarSituacaoLoteRpsEnvioV03.ConsultarSituacaoLoteRpsEnvioDocument.ConsultarSituacaoLoteRpsEnvio;
import br.gov.pr.sjp.nfe.servicoConsultarSituacaoLoteRpsRespostaV03.ConsultarSituacaoLoteRpsRespostaDocument;
import br.gov.pr.sjp.nfe.servicoConsultarSituacaoLoteRpsRespostaV03.ConsultarSituacaoLoteRpsRespostaDocument.ConsultarSituacaoLoteRpsResposta;
import br.gov.pr.sjp.nfe.servicoEnviarLoteRpsEnvioV03.EnviarLoteRpsEnvioDocument;
import br.gov.pr.sjp.nfe.servicoEnviarLoteRpsEnvioV03.EnviarLoteRpsEnvioDocument.EnviarLoteRpsEnvio;
import br.gov.pr.sjp.nfe.servicoEnviarLoteRpsRespostaV03.EnviarLoteRpsRespostaDocument;
import br.gov.pr.sjp.nfe.servicoEnviarLoteRpsRespostaV03.EnviarLoteRpsRespostaDocument.EnviarLoteRpsResposta;
import br.gov.pr.sjp.nfe.tiposV03.ListaMensagemRetornoDocument.ListaMensagemRetorno;
import br.gov.pr.sjp.nfe.tiposV03.TcCancelamentoNfse;
import br.gov.pr.sjp.nfe.tiposV03.TcCompNfse;
import br.gov.pr.sjp.nfe.tiposV03.TcContato;
import br.gov.pr.sjp.nfe.tiposV03.TcCpfCnpj;
import br.gov.pr.sjp.nfe.tiposV03.TcDadosServico;
import br.gov.pr.sjp.nfe.tiposV03.TcDadosTomador;
import br.gov.pr.sjp.nfe.tiposV03.TcEndereco;
import br.gov.pr.sjp.nfe.tiposV03.TcIdentificacaoPrestador;
import br.gov.pr.sjp.nfe.tiposV03.TcIdentificacaoRps;
import br.gov.pr.sjp.nfe.tiposV03.TcIdentificacaoTomador;
import br.gov.pr.sjp.nfe.tiposV03.TcInfNfse;
import br.gov.pr.sjp.nfe.tiposV03.TcInfRps;
import br.gov.pr.sjp.nfe.tiposV03.TcLoteRps;
import br.gov.pr.sjp.nfe.tiposV03.TcLoteRps.ListaRps;
import br.gov.pr.sjp.nfe.tiposV03.TcMensagemRetorno;
import br.gov.pr.sjp.nfe.tiposV03.TcRps;
import br.gov.pr.sjp.nfe.tiposV03.TcValores;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRXmlDataSource;
import net.sf.jasperreports.engine.util.JRLoader;

/**
 * 		NFS-e de São José dos Pinhais PR
 * 
 * 	@author Davi Fochi (Kenos, www.kenos.com.br)
 *	@version $Id: NFSeSJPImpl, v1.0 2021/12/02 16:19:06, SFUSER Exp $
 */
public class NFSeSJPImpl implements INFSe
{
	/** Log				*/
	private static CLogger log = CLogger.getCLogger(NFSeSJPImpl.class);
	
	public static final Byte TIPO_RPS 			= Byte.valueOf ("1");
	public static final Byte TIPO_NF_CONJUGADA 	= Byte.valueOf ("2");
	public static final Byte TIPO_CUPOM 		= Byte.valueOf ("3");
	
	@SuppressWarnings("unused")
	private ProcessInfo pi;
	
	public NFSeSJPImpl (ProcessInfo pi)
	{
		this.pi = pi;
		header = Cabecalho.Factory.newInstance();
		header.setVersao("3");
		header.setVersaoDados("3");
	}
	
	/**
	 * Namespace
	 */
	public String namespace = "";
	public String url = "";
	public Integer C_City_ID = 1003515;
	
	/**
	 * Cidades que utilizam NFS-e SJP
	 */
	public static final Integer	 SAOJOSEDOSPINHAIS_ID = 1003515;
	
	private static final String FILE_XML_NFSE_AUTORIZADO = "-nfseOK-dst.xml";
	
	/*
	 * Situação Lote RPS
	 */
	private static final byte SITUAÇÃO_LOTE_PROCESSADO_COM_SUCESSO = 4;
	private static final byte SITUAÇÃO_LOTE_PROCESSADO_COM_ERROS = 3;
	private static final byte SITUAÇÃO_LOTE_EM_PROCESSAMENTO = 2;
	
	private final Cabecalho header;

	public NFSeSJPImpl()
	{
		header = Cabecalho.Factory.newInstance();
		header.setVersao("3");
		header.setVersaoDados("3");
	}	//	NFSeSJPImpl
	
	/**
	 *  Tipo de integração, Síncrono ou Assíncrono
	 */
	public String getType()
	{
		return TYPE_ASYNCHRONOUS;
	}	//	getType
	
	/**
	 * Gera e Retorna XML da NFS-e
	 */
	public byte[] getXML(MLBRNotaFiscal nf)
	{
		//	ID da Organização
		int p_AD_Org_ID = nf.getAD_Org_ID();
		
		//	Informações da Organização
		MOrgInfo orgInf = MOrgInfo.get (nf.getCtx(), p_AD_Org_ID, null);
		I_W_AD_OrgInfo woi = POWrapper.create(orgInf, I_W_AD_OrgInfo.class);
		
		//	Parceiro de Negócio
		MBPartner partner = new MBPartner(Env.getCtx(), nf.getC_BPartner_ID(), null);
		
		//SJP Não permite operação de substituição nem cancelamento
		if (nf.getLBR_NFReplacedNo() != null)
		{
			nf.setErrorMsg("Apague o campo Número Nota Fiscal Substituída. Substituição de Nota Fiscal não permitida."
					+ " Acesse o Sistema de Escrituração Fiscal (https://nfe.sjp.pr.gov.br/servicos/issOnline2/)"
					+ " -> Menu \"Nota Fiscal-> Substituição NFS");
			return null;
		}
		
		//	Date ZULU
		Calendar cal = Calendar.getInstance();
		cal.setTimeInMillis (nf.getDateDoc().getTime());
		Calendar xmlCal = new XmlCalendar ();
		
		//	Set date this way to avoid time zone incompatibilities
		
		xmlCal.set(Calendar.YEAR, 			cal.get (Calendar.YEAR));
		xmlCal.set(Calendar.MONTH, 			cal.get (Calendar.MONTH));
		xmlCal.set(Calendar.DAY_OF_MONTH, 	cal.get (Calendar.DAY_OF_MONTH));
		xmlCal.set(Calendar.HOUR, 			cal.get (Calendar.HOUR));
		xmlCal.set(Calendar.MINUTE, 		cal.get (Calendar.MINUTE));
		xmlCal.set(Calendar.SECOND, 		cal.get (Calendar.SECOND));
		
		//	Criar RPS
		//	Envio do Lote RPS
		EnviarLoteRpsEnvioDocument enviarLotDoc = EnviarLoteRpsEnvioDocument.Factory.newInstance();
		EnviarLoteRpsEnvio enviarLot = enviarLotDoc.addNewEnviarLoteRpsEnvio();
		
		//	Lote RPS
		TcLoteRps loteRps = enviarLot.addNewLoteRps();
		//	Identificação do Lote do RPS
		loteRps.setId("1");
		loteRps.setNumeroLote(new BigDecimal(nf.getDocumentNo()).intValue());
		loteRps.setCnpj(TextUtil.retiraEspecial(nf.getlbr_CNPJ()));
		loteRps.setInscricaoMunicipal(Long.valueOf((nf.getlbr_OrgCCM())));
		loteRps.setQuantidadeRps(1);
		
		//	Lista de RPS
		ListaRps listaRps = loteRps.addNewListaRps();
		TcRps rps = listaRps.addNewRps();
		
		//	Detalhes da Declaração de Prestação de Serviço
		TcInfRps infRps = rps.addNewInfRps();
		infRps.setId(nf.getDocumentNo());
		
		//	Identificação do RPS
		TcIdentificacaoRps indRps = infRps.addNewIdentificacaoRps();
		indRps.setNumero(new BigDecimal(nf.getDocumentNo()).longValue());
		indRps.setSerie(nf.getlbr_NFSerie());
		indRps.setTipo((byte)1);
		
		infRps.setDataEmissao(xmlCal);
		infRps.setStatus((byte)1);
		
		//	Identificação do Prestador de Serviço
		TcIdentificacaoPrestador prestador = infRps.addNewPrestador();
		
		//	CPF/CNPJ Organização
		prestador.setCnpj(TextUtil.toNumeric(nf.getlbr_CNPJ()));
		
		//	Inscrição Municipal Organização
		if (nf.getlbr_OrgCCM() != null && !nf.getlbr_OrgCCM().isEmpty())
			prestador.setInscricaoMunicipal(Long.valueOf((nf.getlbr_OrgCCM())));
			
		//	Identificação do Parceiro de Negócio Tomador do Serviço
		TcDadosTomador dadosTomador = infRps.addNewTomador();
		TcIdentificacaoTomador tomador = dadosTomador.addNewIdentificacaoTomador(); 
		TcCpfCnpj cpfcnpjTomador = tomador.addNewCpfCnpj();
		
		// CPF ou CNPJ do Parceiro de Negócio
		if (MLBRNotaFiscal.LBR_BPTYPEBR_PJ_LegalEntity.equals(nf.getlbr_BPTypeBR()))
			cpfcnpjTomador.setCnpj(TextUtil.toNumeric(nf.getlbr_BPCNPJ()));
		else
			cpfcnpjTomador.setCpf(TextUtil.toNumeric(nf.getlbr_BPCNPJ()));
		
		//	Inscrição Municipal do Parceiro de Negócio
		if (nf.getlbr_BPCity() != null && nf.getlbr_BPCity().equals(nf.getlbr_OrgCity())
				&& partner.get_ValueAsString("LBR_CCM") != null && !partner.get_ValueAsString("LBR_CCM").isEmpty())
			tomador.setInscricaoMunicipal(Long.valueOf((partner.get_ValueAsString("LBR_CCM"))));
		
		//	Dados do Tomador do Serviço / Parceiro de Negócio
		dadosTomador.setRazaoSocial(Util.deleteAccents(nf.getBPName()));
		TcEndereco endTomador = dadosTomador.addNewEndereco();
		
		endTomador.setEndereco(TextUtil.retiraEspecial(nf.getlbr_BPAddress1()));
		endTomador.setNumero(TextUtil.retiraEspecial(nf.getlbr_BPAddress2()));
		endTomador.setBairro(TextUtil.retiraEspecial(nf.getlbr_BPAddress3()));
		endTomador.setCodigoMunicipio(nf.getlbr_BPCityCode());
		endTomador.setCep(Integer.valueOf(TextUtil.toNumeric(nf.getlbr_BPPostal())));
		endTomador.setUf((nf.getlbr_BPRegion()));
		
		// Contato do Parceiro de Negócio
		TcContato contatoTomador = dadosTomador.addNewContato();
		if (nf.getlbr_BPPhone() != null && !nf.getlbr_BPPhone().isEmpty())
			contatoTomador.setTelefone(Long.valueOf(TextUtil.toNumeric((nf.getlbr_BPPhone()))));
		
		String eMailNFe = nf.getLBR_EMailNFe();
		if (eMailNFe != null && !eMailNFe.isBlank())
		{
			//	Use ; as separator
			eMailNFe = eMailNFe.trim().replace(" ", "").replace(",", ";");
			
			//	Check individual emails
			eMailNFe = Arrays.asList(eMailNFe.split(";")).stream()
				.filter(s -> s.matches(ValidatorBPartner.REGEX_EMAIL))
				.collect(Collectors.joining(";"));
			//
			
			if (eMailNFe.length() > 80)
			{
				int count=0;
				while (eMailNFe.indexOf(";") > 0)
				{
					if (count++ > 10)
						break;
					eMailNFe = eMailNFe.substring(0, eMailNFe.lastIndexOf(";"));
				}
			}
			
			if (eMailNFe.length() <= 80)
				contatoTomador.setEmail(eMailNFe);
		}
		
		//	Descrição do Serviço
		String descricaoServico = "";
		String serviceCode = "";
		BigDecimal aliquota = BigDecimal.ZERO;
		String iss = "";
		
		//	Identificação dos Serviços prestados
		TcDadosServico dadosServico = infRps.addNewServico();
	
		// Discriminação do Serviço
		String description = nf.getDescription();
		if (description != null && !description.isBlank())
			descricaoServico = description;
		
		if (descricaoServico == null || descricaoServico.length() < 5)
		{
			nf.setErrorMsg("Impossível gerar XML NFS-e. Discriminação dos serviços muito curta ou em branco.");
			nf.saveEx();
			throw new AdempiereException("Impossível gerar XML NFS-e. Discriminação dos serviços muito curta ou em branco.");
		}
				
		dadosServico.setDiscriminacao(descricaoServico.replace("\n", ". ").replaceAll("\\s+", " ").replaceAll("\\.+", ".").trim());
		
		//	Valores dos Serviços
		TcValores valores = dadosServico.addNewValores();
		MCity city = null;
		
		//	Serviços Prestados
		//	É possível descrever vários serviços numa mesma NFS-e, desde que relacionados a um
		//	único item da Lista, de mesma alíquota e para o mesmo tomador de serviço 
		for (MLBRNotaFiscalLine nfl : nf.getLines())
		{
			if (!nfl.islbr_IsService())
				continue;
			
			//
			if (nfl.getM_Product_ID() > 0)
			{
				// Descrição dos Serviços
				if (nfl.getProductName()!= null && !nfl.getProductName().isEmpty())
				{
					if (descricaoServico.isEmpty())
						descricaoServico = nfl.getProductName();
					else if (descricaoServico.indexOf(nfl.getProductName()) == -1)
						descricaoServico = descricaoServico + ". " + nfl.getProductName();
				}
				
				//	Mesmo código de serviço para todos os serviços prestados
				if (serviceCode.equals(""))
					serviceCode = nfl.getlbr_ServiceCode();
				else if (!serviceCode.equals(nfl.getlbr_ServiceCode()))
				{
					nf.setErrorMsg("Impossível gerar NFS-e. Todos os serviços da NFS-e devem conter o mesmo Código de Serviço");
					return null;
				}
					
				//	Mesma Alíquota de ISS para todos os serviços prestados
				if (aliquota.equals(BigDecimal.ZERO))
				{
					try
					{
					// ISS Retido ou ISS
						if (nfl.getTaxRate("ISS").equals(Env.ZERO) && !nfl.getTaxRate("ISSRT").equals(Env.ZERO))
						{
							iss = "ISSRT";
							//ISS Retido 1 = Sim
							valores.setIssRetido((byte) 1);
						}	
						else
						{
							iss = "ISS";
							//ISS Retido 2 = Não
							valores.setIssRetido((byte) 2);
							
						}
						aliquota = nfl.getTaxRate(iss);
						BigDecimal v_ISS 	= toBD (nfl.getTaxAmt(iss)).abs();
						if (iss.equals("ISSRT"))
							valores.setValorIssRetido(v_ISS);
						valores.setValorIss(v_ISS);
						
						/* Natureza Operação ISSRT (Exigibilidade ISS)
						/* A natureza da operação não é necessariamente a mesma do LBR
						/* Exemplo: Imunidade é 4 para SJP e 5 no LBR
						/* Tributação no Município - Exigivel - 1 */
						
						if (nfl.getTax(iss).getLBR_TaxStatus().getName().equals(MLBRNotaFiscalLine.LBR_TAXSTATUSISS_1_Exigível))
						{
							infRps.setNaturezaOperacao((byte)1);
						}
						/* Tributação Fora do Município - Não Incidência - 2 */
						else if (nfl.getTax(iss).getLBR_TaxStatus().getName().equals(MLBRNotaFiscalLine.LBR_TAXSTATUSISS_2_NãoIncidência)) 
						{
							infRps.setNaturezaOperacao((byte)2);
						}
						/* Isenção - 3 */
						else if (nfl.getTax(iss).getLBR_TaxStatus().getName().equals(MLBRNotaFiscalLine.LBR_TAXSTATUSISS_3_Isenção))
						{
							infRps.setNaturezaOperacao((byte)3);
						}
						/* Imunidade - 4 */
						else if (nfl.getTax(iss).getLBR_TaxStatus().getName().equals(MLBRNotaFiscalLine.LBR_TAXSTATUSISS_5_Imunidade))
						{
							infRps.setNaturezaOperacao((byte)4);
						}
						/* Exigibilidade Suspensa por Decisão Judicial - 5 */
						else if (nfl.getTax(iss).getLBR_TaxStatus().getName().equals(MLBRNotaFiscalLine.LBR_TAXSTATUSISS_6_ExigibilidadeSuspensaPorDecisaoJudicial))
						{
							infRps.setNaturezaOperacao((byte)5);
						}
						/* Exigibilidade Suspensa por Procedimento Administrativo - 6 */
						else if (nfl.getTax(iss).getLBR_TaxStatus().getName().equals(MLBRNotaFiscalLine.LBR_TAXSTATUSISS_7_ExigibilidadeSuspensaPorProcessoAdministrativo))
						{
							infRps.setNaturezaOperacao((byte)6);
						}
					}
					catch (Exception e)
					{
						nf.setErrorMsg(e.toString());
						nf.saveEx();
						throw new AdempiereException("Número do Documento:" + nf.getDocumentNo() + "Preencha a Situação Tributária do ISS");
					}
				}
				else if (!(aliquota.equals(nfl.getTaxRate("ISS"))) || !(aliquota.equals(nfl.getTaxRate("ISSRT"))))
				{
					nf.setErrorMsg("Impossível gerar XML NFS-e. Todos os serviços da NFS-e devem conter o mesmo Código de Serviço");
					return null;
				}
			}
			
			if (city == null && nfl.getC_City_ID() > 0)
				city = new MCity (Env.getCtx(), nfl.getC_City_ID(), null);
		}
		
		try
		{
			//	The service code should be splitted in 2 codes
			if (serviceCode == null || serviceCode.indexOf("|") == -1)
			{
				nf.setErrorMsg("Código de Serviço, o formato do código de serviço deverá ser Código Serviço | Código de Tributação no Município");
			}

			String[] splitted = serviceCode.split("\\|");

			dadosServico.setItemListaServico(splitted[0].trim());
			dadosServico.setCodigoTributacaoMunicipio(Integer.parseInt(TextUtil.toNumeric(splitted[1])));
		}
		catch (Exception e)
		{
			throw new AdempiereException("Número do Documento:" + nf.getDocumentNo() + "Erro no Código de Serviço: o formato do código de serviço deverá ser Código Serviço | Código de Tributação no Município. Exemplo: 7.09 | 3812-2/00-01");
		}
		
		//	Blank city, default org city
		if (city == null)
			city = new MCity (Env.getCtx(), nf.getOrg_Location().getC_City_ID(), null);

		dadosServico.setCodigoMunicipio(city.getlbr_CityCode());
			
		valores.setValorServicos(nf.getlbr_ServiceTotalAmt());
		valores.setValorDeducoes(BigDecimal.ZERO);
		
		//	Total de Imposto
		BigDecimal v_PIS 	= toBD (nf.getTaxAmt("PIS")).abs();
		BigDecimal v_COFINS = toBD (nf.getTaxAmt("COFINS")).abs();
		BigDecimal v_INSS 	= toBD (nf.getTaxAmt("INSS")).abs();
		BigDecimal v_IR 	= toBD (nf.getTaxAmt("IR")).abs();
		BigDecimal v_CSLL 	= toBD (nf.getTaxAmt("CSLL")).abs();
		
		// Valores da NFS-e
		valores.setValorPis(v_PIS);
		valores.setValorCofins(v_COFINS);
		valores.setValorInss(v_INSS);
		valores.setValorIr(v_IR);
		valores.setValorCsll(v_CSLL);
		valores.setOutrasRetencoes(BigDecimal.ZERO);
		valores.setAliquota(aliquota.divide(BigDecimal.valueOf(100)));
		valores.setDescontoIncondicionado(BigDecimal.ZERO);
		valores.setDescontoCondicionado(nf.getDiscountAmt());
		
		//	Optando do Simples Nacionals
		infRps.setOptanteSimplesNacional("S".equals(woi.getLBR_TaxRegime()) ? (byte)1 : (byte)2);
		
		// Incentivador Cultural
		infRps.setIncentivadorCultural((byte)2);
		
		try
		{
			//	Valida o documento
			NFeUtil.validate (enviarLotDoc);
			
			//	Adiciona o Certificado
			MLBRDigitalCertificate.setCertificate (nf.getCtx(), p_AD_Org_ID);
			
			//	Assina o XML
			new SignatureUtil (orgInf, SignatureUtil.OUTROS, "LoteRps").sign (enviarLotDoc, enviarLotDoc.getEnviarLoteRpsEnvio().newCursor());
			
			String xmlText = enviarLotDoc.xmlText(NFeUtil.getXmlOpt());
			
			NFeUtil.saveXML (String.valueOf(nf.getAD_Org_ID()), NFeUtil.KIND_NFSE, NFeUtil.MESSAGE_XML, nf.getDocumentNo(), xmlText.toString());

			return xmlText.getBytes(NFeUtil.NFE_ENCODING);
		}
		catch (Exception e)
		{
			nf.setErrorMsg(e.toString());
			nf.saveEx();
			if (nf.getC_Invoice() == null)
				throw new AdempiereException("Número do Documento da Nota: " + nf.getDocumentNo() + "- Erro: " + e.getMessage());
			throw new AdempiereException("Fatura: " + nf.getC_Invoice().getDocumentNo() + " - Número do Documento da Nota: " + nf.getDocumentNo() + "- Erro: " + e.getMessage()); 
		}
	}	//	getXML
	
	@Override
	public StringBuilder getRPS(List<MLBRNotaFiscal> nfs) throws Exception
	{		
		return null;
	}	//	getRPS

	/**
	 * 	Emissão de Nota Fiscal de Serviço de Forma Assincrona
	 */
	public boolean transmit (MLBRNotaFiscal nf) throws Exception
	{
		log.info ("NFSETransmit Process");
		
		//	Procura o XML nos anexos
		byte[] xmlData = nf.getAttachmentData("xml");
		if (xmlData == null || xmlData.length == 0)
			xmlData = getXML (nf);	//	Gera um novo XML
			
		String xml = new String (xmlData, NFeUtil.NFE_ENCODING);
		
		//	Mensagem de Retorno após enviar NFS-e para Emissão
		String retornoEnvioXMLNFSe = "";
		
		//	Set certificate
		MLBRDigitalCertificate.setCertificate (Env.getCtx(), nf.getAD_Org_ID());
		
		//	URL Homologação
		String url = "https://nfe.sjp.pr.gov.br/servicos/issOnline2/homologacao/ws/index.php?wsdl";

		//	URL Produção
		if (MLBRNotaFiscal.LBR_NFEENV_Production.equals(nf.getlbr_NFeEnv()))
			url = "https://nfe.sjp.pr.gov.br/servicos/issOnline2/ws/index.php?wsdl";
		
		NFeUtil.saveXML (String.valueOf(nf.getAD_Org_ID()), NFeUtil.KIND_NFSE, NFeUtil.MESSAGE_REQ_AUTORIZE, nf.getDocumentNo(), xml.toString());

		NfseStub nfseStub = new NfseStub(url);
		nfseStub._getServiceClient().getOptions().setProperty(HTTPConstants.CHUNKED, false);
		
		retornoEnvioXMLNFSe = nfseStub.recepcionarLoteRpsV3(header.xmlText(),xml);
		
		NFeUtil.saveXML (String.valueOf(nf.getAD_Org_ID()), NFeUtil.KIND_NFSE, NFeUtil.MESSAGE_RET_AUTORIZE, nf.getDocumentNo(), retornoEnvioXMLNFSe);

		EnviarLoteRpsResposta resposta = EnviarLoteRpsRespostaDocument.Factory.parse(retornoEnvioXMLNFSe).getEnviarLoteRpsResposta();
		
		if (resposta.getListaMensagemRetorno() != null)
		{
			ListaMensagemRetorno listaMensagemRetorno = null;
			
			listaMensagemRetorno = resposta.getListaMensagemRetorno();
			//	Check error messages
			StringBuilder msgRetorno = new StringBuilder ();
			if (listaMensagemRetorno != null)
			{
				Arrays.asList(listaMensagemRetorno.getMensagemRetornoArray())
					.forEach(msg -> {
						msgRetorno
							.append("Cod=").append(msg.getCodigo())
							.append(", Correção=").append(msg.getCorrecao())
							.append(", Msg=").append(msg.getMensagem())
							.append("\n");
					});
				//
				log.warning("NFS-e " + nf.toString() + " - " + msgRetorno.toString());
				nf.setErrorMsg(msgRetorno.toString());
				nf.save();
				new AdempiereException("Número do Documento:" + nf.getDocumentNo() + msgRetorno.toString());
				return false;
			}
		}
		
		try
		{
			//	Adicionar Protocolo do Lote
			if (resposta != null && resposta.getProtocolo() != null)
			{
				nf.setlbr_DigestValue(resposta.getProtocolo());
				nf.setDateTrx(new Timestamp (resposta.getDataRecebimento().getTimeInMillis()));
				nf.save();
			}

		}
		catch (Exception e)
		{
			nf.setErrorMsg(e.toString());
			nf.saveEx();
			new AdempiereException("Número do Documento:" + nf.getDocumentNo() + e.getMessage());
		}
		return true;
	}	//	transmit

	@SuppressWarnings("unused")
	private void setProtocol (MLBRNotaFiscal nf, EnviarLoteRpsResposta resposta, TcCompNfse infNfse)
	{
		//	Protocol
		nf.setlbr_NFeProt(resposta.getProtocolo());
		nf.setDateTrx(new Timestamp (resposta.getDataRecebimento().getTimeInMillis()));
		nf.setlbr_NFENo(String.valueOf(infNfse.getNfse().getInfNfse().getNumero()));
		
		//	Cancel
		if (infNfse.getNfseCancelamento() != null)
		{
			nf.setlbr_MotivoCancel("Cancelamento: " + infNfse.getNfseCancelamento().getConfirmacao().getInfConfirmacaoCancelamento().getDataHora());
			nf.setIsCancelled(true);
			nf.setDocStatus(MLBRNotaFiscal.DOCSTATUS_Voided);
			nf.setDocAction(MLBRNotaFiscal.ACTION_None);
		}
		nf.save();
		
		//	Apaga anexos existentes
		if (nf.getAttachment (true) != null)
			nf.getAttachment ().delete (true);
		
		nf.getAttachment(true);	//	FIX
		MAttachment attachNFe = nf.createAttachment();
		try 
		{			
			attachNFe.addEntry("NFSe_" + nf.getlbr_NFENo() + "_RPS_" + nf.getDocumentNo() + "-dst.xml", infNfse.getNfse().xmlText().getBytes(NFeUtil.NFE_ENCODING));
			attachNFe.save();
		}
		catch (UnsupportedEncodingException e)
		{
			e.printStackTrace();
		}
	}	//	setProtocol
	
	/**
	 * 	Transmissão de RPS em lote
	 */
	public boolean transmit (Properties ctx, int AD_Org_ID, String trxName, List<MLBRNotaFiscal> nfs) throws Exception
	{
		log.info ("NFSETransmit Process");
		
		MOrgInfo orgInf = MOrgInfo.get (ctx, AD_Org_ID, null);
		
		String retornoEnvioXMLNFSe = "";
		
		//	Set certificate
		MLBRDigitalCertificate.setCertificate (Env.getCtx(), AD_Org_ID);
		
		//	URL Homologação
		String url = "https://nfe.sjp.pr.gov.br/servicos/issOnline2/homologacao/ws/index.php?wsdl";
		
		for (MLBRNotaFiscal nf : nfs)
		{
			//	Todas URLs em Produção
			if (MLBRNotaFiscal.LBR_NFEENV_Production.equals(nf.getlbr_NFeEnv()))
				url = "https://nfe.sjp.pr.gov.br/servicos/issOnline2/ws/index.php?wsdl";
			else break;
		}
		
		NfseStub nfseStub = new NfseStub(url);
		nfseStub._getServiceClient().getOptions().setProperty(HTTPConstants.CHUNKED, false);
		nfseStub._getServiceClient().getOptions().setTimeOutInMilliSeconds(300000);
		
		EnviarLoteRpsEnvioDocument enviarLotDoc = EnviarLoteRpsEnvioDocument.Factory.newInstance();
		EnviarLoteRpsEnvio enviarLot = enviarLotDoc.addNewEnviarLoteRpsEnvio();
		
		//	Lote RPS
		TcLoteRps loteRps = enviarLot.addNewLoteRps();
		
		//	Lista de RPS
		ListaRps listaRps = loteRps.addNewListaRps();
		List<TcRps> listRps = new ArrayList<TcRps>();
		
		for (MLBRNotaFiscal nf : nfs)
		{
			//			Procura o XML nos anexos
			byte[] xmlData = nf.getAttachmentData("xml");
			if (xmlData == null || xmlData.length == 0)
				xmlData = getXML (nf);	//	Gera um novo XML
			
			EnviarLoteRpsEnvioDocument enviarLotDoc_nf = EnviarLoteRpsEnvioDocument.Factory.parse(new String (xmlData, NFeUtil.NFE_ENCODING));
			TcRps rps = enviarLotDoc_nf.getEnviarLoteRpsEnvio().getLoteRps().getListaRps().getRpsArray(0);
			listRps.add(rps);
		}
		
		TcRps[] TcRpsArray = new TcRps[listRps.size()];
		listRps.toArray(TcRpsArray);
		
		//	Identificação do Lote do RPS
		loteRps.setId("1");
		loteRps.setNumeroLote(new BigDecimal(nfs.get(0).getDocumentNo()).intValue());
		loteRps.setCnpj(TextUtil.retiraEspecial(nfs.get(0).getlbr_CNPJ()));
		loteRps.setInscricaoMunicipal(Long.valueOf((nfs.get(0).getlbr_OrgCCM())));
		loteRps.setQuantidadeRps(listRps.size());
		
		listaRps.setRpsArray(TcRpsArray);
		
		//	Valida o documento
		NFeUtil.validate (enviarLotDoc);
		
		//	Adiciona o Certificado
		MLBRDigitalCertificate.setCertificate (ctx, AD_Org_ID);
		
		//	Assina o XML
		new SignatureUtil (orgInf, SignatureUtil.OUTROS, "LoteRps").sign (enviarLotDoc, enviarLotDoc.getEnviarLoteRpsEnvio().newCursor());
		
		String xmlText = enviarLotDoc.xmlText(NFeUtil.getXmlOpt());
		
		NFeUtil.saveXML (String.valueOf(AD_Org_ID), NFeUtil.KIND_NFSE, NFeUtil.MESSAGE_REQ_AUTORIZE, "Envio_Lote-" + nfs.get(0).getDocumentNo(), xmlText);
		
		retornoEnvioXMLNFSe = nfseStub.recepcionarLoteRpsV3(header.xmlText(),xmlText);
		NFeUtil.saveXML (String.valueOf(AD_Org_ID), NFeUtil.KIND_NFSE, NFeUtil.MESSAGE_RET_AUTORIZE, "Retorno_Envio_Lote-" + nfs.get(0).getDocumentNo(), retornoEnvioXMLNFSe);
		EnviarLoteRpsResposta resposta = EnviarLoteRpsRespostaDocument.Factory.parse(retornoEnvioXMLNFSe).getEnviarLoteRpsResposta();
		
		if (resposta.getListaMensagemRetorno() != null)
		{
			ListaMensagemRetorno listaMensagemRetorno = null;
			
			listaMensagemRetorno = resposta.getListaMensagemRetorno();
			//	Check error messages
			StringBuilder msgRetorno = new StringBuilder ();
			if (listaMensagemRetorno != null)
			{
				Arrays.asList(listaMensagemRetorno.getMensagemRetornoArray())
					.forEach(msg -> {
						msgRetorno
							.append("Cod=").append(msg.getCodigo())
							.append(", Correção=").append(msg.getCorrecao())
							.append(", Msg=").append(msg.getMensagem())
							.append("\n");
					});
				throw new AdempiereException(msgRetorno.toString());
			}
		}
		
		Thread.sleep(90*1000);
		
		ConsultarSituacaoLoteRpsEnvioDocument document = ConsultarSituacaoLoteRpsEnvioDocument.Factory.newInstance();
		ConsultarSituacaoLoteRpsEnvio rpsEnvio = document.addNewConsultarSituacaoLoteRpsEnvio();
		TcIdentificacaoPrestador prestador = rpsEnvio.addNewPrestador();
		
		//CNPJ Organização
		prestador.setCnpj(TextUtil.toNumeric(nfs.get(0).getlbr_CNPJ()));
		
		//	Inscrição Municipal Organização
		if (nfs.get(0).getlbr_OrgCCM() != null && !nfs.get(0).getlbr_OrgCCM().isEmpty())
			prestador.setInscricaoMunicipal(Long.valueOf((nfs.get(0).getlbr_OrgCCM())));
		
		// Protocolo NFS-e
		if (resposta.getProtocolo() != null)
			rpsEnvio.setProtocolo(resposta.getProtocolo());
		
		NFeUtil.saveXML (String.valueOf(AD_Org_ID), NFeUtil.KIND_NFSE, NFeUtil.MESSAGE_REQ_CONSULT, "Envio_Situacao_Lote-" + nfs.get(0).getDocumentNo(), document.xmlText());
		
		String result = nfseStub.consultarSituacaoLoteRpsV3(header.xmlText(), document.xmlText());
		NFeUtil.saveXML (String.valueOf(AD_Org_ID), NFeUtil.KIND_NFSE, NFeUtil.MESSAGE_RET_CONSULT, "Retorno_Situacao_Lote-" + nfs.get(0).getDocumentNo(), result);
		
		ConsultarSituacaoLoteRpsResposta respostaSituacao = ConsultarSituacaoLoteRpsRespostaDocument.Factory.parse(result).getConsultarSituacaoLoteRpsResposta();

		ListaMensagemRetorno listaMensagemRetornoSituacao = respostaSituacao.getListaMensagemRetorno();

		if (listaMensagemRetornoSituacao != null)
		{
			StringBuilder msgRetorno = new StringBuilder ();
			Arrays.asList(listaMensagemRetornoSituacao.getMensagemRetornoArray())
				.forEach(msg -> {
					msgRetorno
						.append("Cod=").append(msg.getCodigo())
						.append(", Correção=").append(msg.getCorrecao())
						.append(", Msg=").append(msg.getMensagem())
						.append("\n");
				});
			//
			log.warning("NFS-e " + " - " + msgRetorno.toString());
			throw new AdempiereException(msgRetorno.toString());
		}
		
		/* Checa Situação da Resposta
		2 - Lote em Processamento
		3 - Lote Processado com Erros
		4 - Lote Processado com Sucesso
		*/
		if(respostaSituacao.getSituacao() == SITUAÇÃO_LOTE_PROCESSADO_COM_SUCESSO)
		{
			ConsultarLoteRpsEnvioDocument consultadocument = ConsultarLoteRpsEnvioDocument.Factory.newInstance();
			ConsultarLoteRpsEnvio consultarpsEnvio = consultadocument.addNewConsultarLoteRpsEnvio();
			consultarpsEnvio.setPrestador(prestador);
			
			consultarpsEnvio.setProtocolo(resposta.getProtocolo());
			
			NFeUtil.saveXML (String.valueOf(AD_Org_ID), NFeUtil.KIND_NFSE, NFeUtil.MESSAGE_REQ_CONSULT, "RPS-" + nfs.get(0).getDocumentNo(), consultadocument.xmlText());
			
			String resultconsulta = nfseStub.consultarLoteRpsV3(header.xmlText(), consultadocument.xmlText());
			
			NFeUtil.saveXML (String.valueOf(AD_Org_ID), NFeUtil.KIND_NFSE, NFeUtil.MESSAGE_RET_CONSULT, "RPS-" + nfs.get(0).getDocumentNo(), resultconsulta);
			
			ConsultarLoteRpsResposta consultaresposta = ConsultarLoteRpsRespostaDocument.Factory.parse(resultconsulta).getConsultarLoteRpsResposta();
			
			if (consultaresposta.getListaMensagemRetorno() != null)
			{
				TcMensagemRetorno[] alertas = consultaresposta.getListaMensagemRetorno().getMensagemRetornoArray();
				for (TcMensagemRetorno alerta : alertas)
					log.warning("Código:" + alerta.getCodigo() + ", Mensagem:" + alerta.getMensagem() + 
							", Correção:" + alerta.getCorrecao());
			}
				
			TcCompNfse[] notas = consultaresposta.getListaNfse().getCompNfseArray();
			for (TcCompNfse nota : notas)
			{
				processNFSe(ctx, trxName, String.valueOf(nota.getNfse().getInfNfse().getIdentificacaoRps().getNumero()), 
						String.valueOf(nota.getNfse().getInfNfse().getNumero()), 
						String.valueOf(nota.getNfse().getInfNfse().getCodigoVerificacao()), AD_Org_ID, nota.getNfse().getInfNfse().getDataEmissao(), nota.xmlText());
			}
			return true;
		}
		return false;
	}	//	transmit
	
	/**
	 * 		Processar NF-e
	 * 	@param p_RPS
	 * 	@param p_NFe
	 * 	@param p_VerifCode
	 * 	@param p_AD_Org_ID - Organization
	 */
	private void processNFSe (Properties ctx, String trxName, String p_RPS, String p_NFe, String p_VerifCode, int p_AD_Org_ID, Calendar dateTrx, String xmldata) throws Exception
	{
		int LBR_NotaFiscal_ID = MLBRNotaFiscal.getLBR_NotaFiscal_ID (p_AD_Org_ID, p_RPS, true, MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalDeServiçosEletrônicaRPS, trxName);
		if (LBR_NotaFiscal_ID > 0)
		{
			MLBRNotaFiscal nf = new MLBRNotaFiscal (ctx, LBR_NotaFiscal_ID, trxName);
			if (dateTrx != null)
				nf.setDateTrx(new Timestamp (dateTrx.getTimeInMillis()));
			
			String nfeNo = p_NFe;
			if (nfeNo.length() > 11)
				nfeNo = nfeNo.substring(4);
			
			ProcReturnRPS.proccessNFSe (nf, nfeNo, p_VerifCode);
			
			MAttachment attachNFe = nf.createAttachment();
			attachNFe.addEntry("NFSE-" + nf.getlbr_NFENo() + FILE_XML_NFSE_AUTORIZADO, xmldata.replaceAll("\\&\\#[0-9A-Za-z]*;|\\n", "").getBytes(NFeUtil.NFE_ENCODING));
			attachNFe.save();
			
			//	Check if email should be sent immediately
			MLBRNFConfig nfConfig = MLBRNFConfig.get(p_AD_Org_ID);
			if (nfConfig != null && MLBRNFConfig.SENDEMAIL_SendImmediately.equals(nfConfig.getSendEMail()))
				ProcEMailNFe.sendEmailNFeThread (nf, false);		}
	}
	
	/**
	 * Consultar Estado da NF-e de Serviço após a Transmissão
	 */
	public boolean consult (MLBRNotaFiscal nf) throws Exception
	{
		log.info ("NFSE Consult Process");
		
		ConsultarSituacaoLoteRpsEnvioDocument document = ConsultarSituacaoLoteRpsEnvioDocument.Factory.newInstance();
		ConsultarSituacaoLoteRpsEnvio rpsEnvio = document.addNewConsultarSituacaoLoteRpsEnvio();
		TcIdentificacaoPrestador prestador = rpsEnvio.addNewPrestador();
		
		//CNPJ Organização
		prestador.setCnpj(TextUtil.toNumeric(nf.getlbr_CNPJ()));
		
		//	Inscrição Municipal Organização
		if (nf.getlbr_OrgCCM() != null && !nf.getlbr_OrgCCM().isEmpty())
			prestador.setInscricaoMunicipal(Long.valueOf((nf.getlbr_OrgCCM())));
		
		// Protocolo NFS-e
		if (nf.getlbr_DigestValue() != null)
			rpsEnvio.setProtocolo(nf.getlbr_DigestValue());
		
		//	URL Homologação
		String url = "https://nfe.sjp.pr.gov.br/servicos/issOnline2/homologacao/ws/index.php?wsdl";
		
		//	URL Produção
		if (MLBRNotaFiscal.LBR_NFEENV_Production.equals(nf.getlbr_NFeEnv()))
			url = "https://nfe.sjp.pr.gov.br/servicos/issOnline2/ws/index.php?wsdl";
		
		NFeUtil.saveXML (String.valueOf(nf.getAD_Org_ID()), NFeUtil.KIND_NFSE, NFeUtil.MESSAGE_REQ_CONSULT, "Lote-" + nf.getDocumentNo(), document.xmlText());

		NfseStub nfseStub = new NfseStub(url);
		nfseStub._getServiceClient().getOptions().setProperty(HTTPConstants.CHUNKED, false);
		nfseStub._getServiceClient().getOptions().setTimeOutInMilliSeconds(300000);
		
		MLBRDigitalCertificate.setCertificate (Env.getCtx(), nf.getAD_Org_ID());
		String result = nfseStub.consultarSituacaoLoteRpsV3(header.xmlText(), document.xmlText());

		NFeUtil.saveXML (String.valueOf(nf.getAD_Org_ID()), NFeUtil.KIND_NFSE, NFeUtil.MESSAGE_RET_CONSULT, "Lote-" + nf.getDocumentNo(), result);

		ConsultarSituacaoLoteRpsResposta resposta = ConsultarSituacaoLoteRpsRespostaDocument.Factory.parse(result).getConsultarSituacaoLoteRpsResposta();
		
		ListaMensagemRetorno listaMensagemRetorno = resposta.getListaMensagemRetorno();

		if (listaMensagemRetorno != null)
		{
			StringBuilder msgRetorno = new StringBuilder ();
			Arrays.asList(listaMensagemRetorno.getMensagemRetornoArray())
				.forEach(msg -> {
					msgRetorno
						.append("Cod=").append(msg.getCodigo())
						.append(", Correção=").append(msg.getCorrecao())
						.append(", Msg=").append(msg.getMensagem())
						.append("\n");
				});
			//
			log.warning("NFS-e " + nf.toString() + " - " + msgRetorno.toString());
			nf.setErrorMsg(msgRetorno.toString());
			nf.setDocStatus(MLBRNotaFiscal.DOCSTATUS_Drafted);
			nf.save();
			new AdempiereException(msgRetorno.toString());
			return false;
		}
		
		/* Checa Situação da Resposta
		2 - Lote em Processamento
		3 - Lote Processado com Erros
		4 - Lote Processado com Sucesso
		*/
		if(resposta.getSituacao() == SITUAÇÃO_LOTE_PROCESSADO_COM_SUCESSO)
		{
			ConsultarLoteRpsEnvioDocument consultadocument = ConsultarLoteRpsEnvioDocument.Factory.newInstance();
			ConsultarLoteRpsEnvio consultarpsEnvio = consultadocument.addNewConsultarLoteRpsEnvio();
			consultarpsEnvio.setPrestador(prestador);
			
			consultarpsEnvio.setProtocolo(nf.getlbr_DigestValue());
			
			NFeUtil.saveXML (String.valueOf(nf.getAD_Org_ID()), NFeUtil.KIND_NFSE, NFeUtil.MESSAGE_RET_CONSULT, "RPS-" + nf.getDocumentNo(), consultadocument.xmlText());
			
			String resultconsulta = nfseStub.consultarLoteRpsV3(header.xmlText(), consultadocument.xmlText());
			
			NFeUtil.saveXML (String.valueOf(nf.getAD_Org_ID()), NFeUtil.KIND_NFSE, NFeUtil.MESSAGE_RET_CONSULT, "RPS-" + nf.getDocumentNo(), resultconsulta);
			
			ConsultarLoteRpsResposta consultaresposta = ConsultarLoteRpsRespostaDocument.Factory.parse(resultconsulta).getConsultarLoteRpsResposta();
			String xmlAut = consultaresposta.xmlText();
			
			if (consultaresposta.getListaNfse().getCompNfseArray().length > 1)
			{
				for (TcCompNfse compnfse : consultaresposta.getListaNfse().getCompNfseArray()) {
					if (nf.getDocumentNo().equals(String.valueOf(compnfse.getNfse().getInfNfse().getIdentificacaoRps().getNumero()))) {
						TcInfNfse nfse = compnfse.getNfse().getInfNfse();
						String nfeNo = String.valueOf(nfse.getNumero());
						if (nfeNo.length() > 11)
							nfeNo = nfeNo.substring(4);
						
						nf.setlbr_NFENo(nfeNo);
						nf.setlbr_NFeProt(String.valueOf(nfse.getCodigoVerificacao()));
						nf.setDateTrx(new Timestamp(nfse.getDataEmissao().getTimeInMillis()));
						//nf.setlbr_NFeStatus(MLBRNotaFiscal.LBR_NFESTATUS_100_AutorizadoOUsoDaNF_E);
						nf.setDocStatus(MLBRNotaFiscal.DOCSTATUS_Completed);
						nf.save();
						
						MAttachment attachNFe = nf.createAttachment();
						attachNFe.addEntry("NFSE-" + nf.getlbr_NFENo() + FILE_XML_NFSE_AUTORIZADO, xmlAut.replaceAll("\\&\\#[0-9A-Za-z]*;|\\n", "").getBytes(NFeUtil.NFE_ENCODING));
						attachNFe.save();
						break;
					}
				}
			}
			else {
				TcInfNfse nfse = consultaresposta.getListaNfse().getCompNfseArray(0).getNfse().getInfNfse();

				String nfeNo = String.valueOf(nfse.getNumero());
				if (nfeNo.length() > 11)
					nfeNo = nfeNo.substring(4);
				
				nf.setlbr_NFENo(nfeNo);
				nf.setlbr_NFeProt(String.valueOf(nfse.getCodigoVerificacao()));
				nf.setDateTrx(new Timestamp(nfse.getDataEmissao().getTimeInMillis()));
				//nf.setlbr_NFeStatus(MLBRNotaFiscal.LBR_NFESTATUS_100_AutorizadoOUsoDaNF_E);
				nf.setDocStatus(MLBRNotaFiscal.DOCSTATUS_Completed);
				nf.save();
				
				MAttachment attachNFe = nf.createAttachment();
				attachNFe.addEntry("NFSE-" + nf.getlbr_NFENo() + FILE_XML_NFSE_AUTORIZADO, xmlAut.replaceAll("\\&\\#[0-9A-Za-z]*;|\\n", "").getBytes(NFeUtil.NFE_ENCODING));
				attachNFe.save();
			}
		}
		else if (resposta.getSituacao() == SITUAÇÃO_LOTE_PROCESSADO_COM_ERROS)
		{
			nf.setDateTrx(new Timestamp(System.currentTimeMillis()));
			nf.setDocStatus(MLBRNotaFiscal.DOCSTATUS_Drafted);
			nf.save();
			return false;
		}
		else if (resposta.getSituacao() == SITUAÇÃO_LOTE_EM_PROCESSAMENTO)
		{
			nf.setDateTrx(new Timestamp(System.currentTimeMillis()));
			nf.setDocStatus(MLBRNotaFiscal.DOCSTATUS_WaitingConfirmation);
			nf.setProcessed(true);
			nf.save();
			return false;
		}
		return true;
	}	// consult
	
	/**
	 * Consultar Estado da NF-e de Serviço após a Transmissão
	 */
	public boolean replace (MLBRNotaFiscal nf) throws Exception
	{
		return false;
	}	// replace
	
	/**
	 * Consultar Estado da NF-e de Serviço após a Transmissão em Lote
	 */
	public boolean consult(Properties ctx, int AD_Org_ID, String trxName, List<MLBRNotaFiscal> nfs)throws Exception
	{
		return false;
	}
	
	/**
	 * Obter link de Validação da NFS-e e Link para Visualização da Impressão
	 * @param nf
	 * @return
	 */
	public String getURLVisualizarNF(MLBRNotaFiscal nf)
	{
		return "";		
	}	
	
	private static BigDecimal toBD (BigDecimal value)
	{
		if (value == null)
			return Env.ZERO;
		return value.setScale(2, RoundingMode.HALF_UP).stripTrailingZeros();
	}	//	toBD
	
	/**
	 * 	Header
	 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
	 */
	class Header
	{
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=1)
		String tipoDeRegistro;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=1)
		String tpIdentificacao;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=14)
		String CNPJCPF;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=8)
		String CCM;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=2)
		String versaoLayout;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=124)
		String filler;

		/**
		 * 	To String
		 */
		@Override
		public String toString()
		{
			return getTipodeRegistro() + getTpIdentificacao() + getCNPJCPF() + getCCM() + getVersaoLayout() + getFiller();
		}	//	toString
		
		public String getTipodeRegistro()
		{
			return tipoDeRegistro;
		}

		public void setTipodeRegistro(String tipodeRegistro)
		{
			this.tipoDeRegistro = tipodeRegistro;
		}

		public String getTpIdentificacao()
		{
			return tpIdentificacao;
		}

		public void setTpIdentificacao(String tpIdentificacao)
		{
			this.tpIdentificacao = tpIdentificacao;
		}

		public String getCNPJCPF()
		{
			return CNPJCPF;
		}

		public void setCNPJCPF(String cNPJCPF)
		{
			CNPJCPF = cNPJCPF;
		}

		public String getCCM()
		{
			return CCM;
		}

		public void setCCM(String cCM)
		{
			CCM = cCM;
		}

		public String getVersaoLayout()
		{
			return versaoLayout;
		}

		public void setVersaoLayout(String versaoLayout)
		{
			this.versaoLayout = versaoLayout;
		}

		public String getFiller()
		{
			return filler;
		}

		public void setFiller(String filler)
		{
			this.filler = filler;
		}
	}	//	Header
	
	/**
	 * 	Detalhe da NF
	 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
	 */
	class DetNF
	{
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=1)
		String tipodeRegistro;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=8)
		String sequencialNF;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=8)
		String NF;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=1)
		String situacaoNF;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=8)
		String dtEmissao;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=6)
		String codAtividade;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=3)
		String CFPS;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=2)
		String serie;
				
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=14)
		String CNPJCPF;
			
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=100)
		String nome;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=8)
		String cep;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=100)
		String endereco;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=50)
		String bairro;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=60)
		String cidade;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=2)
		String estado;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=100)
		String enderecoCobranca;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=80)
		String email;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=1)
		String eviarNFPorEmail;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=1)
		String impRetido;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT2, size=14)
		String vlrServico;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT2, size=14)
		String vlrDeducoes;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT2, size=14)
		String vlrImposto;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT2, size=5)
		String aliquota;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT2, size=14)
		String vlrTotalNota;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT2, size=14)
		String vlrCONFINS;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT2, size=14)
		String vlrPIS;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT2, size=14)
		String vlrIRRF;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT2, size=14)
		String vlrINSS;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT2, size=14)
		String vlrCSLL;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=8)
		String RPS;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=1)
		String modelo;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=255)
		String observacao;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=8)
		String dtEmissaoRPS;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=1)
		String tipoTomador;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=20)
		String RGInscrEstadual;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=132)
		String filler;
		
		/**
		 * 	To String
		 */
		@Override
		public String toString()
		{
			return  getTipodeRegistro() + getSequencialNF() + getNF() + getSituacaoNF() + 
					getDtEmissao() + getCodAtividade() + getCFPS() + getSerie() + getCNPJCPF() + 
					getNome() + getCep() + getEndereco() + getBairro() + getCidade() + 
					getEstado() + getEnderecoCobranca() + getEmail() + getEviarNFPorEmail() + 
					getImpRetido() + getVlrServico() + getVlrDeducoes() + getVlrImposto() + 
					getAliquota() + getVlrTotalNota() + getVlrCONFINS() + getVlrPIS() + 
					getVlrIRRF() + getVlrINSS() + getVlrCSLL() +  getRPS() + getModelo() + 
					getObservacao() +  getDtEmissaoRPS() + getTipoTomador() + getRGInscrEstadual() + 
					getFiller();
		}	//	toString

		public String getTipodeRegistro()
		{
			return tipodeRegistro;
		}

		public void setTipodeRegistro(String tipodeRegistro)
		{
			this.tipodeRegistro = tipodeRegistro;
		}

		public String getSequencialNF()
		{
			return sequencialNF;
		}

		public void setSequencialNF(String sequencialNF)
		{
			this.sequencialNF = sequencialNF;
		}

		public String getNF()
		{
			return NF;
		}

		public void setNF(String nF)
		{
			NF = nF;
		}

		public String getSituacaoNF()
		{
			return situacaoNF;
		}

		public void setSituacaoNF(String situacaoNF)
		{
			this.situacaoNF = situacaoNF;
		}

		public String getDtEmissao()
		{
			return dtEmissao;
		}

		public void setDtEmissao(String dtEmissao)
		{
			this.dtEmissao = dtEmissao;
		}

		public String getCodAtividade()
		{
			return codAtividade;
		}

		public void setCodAtividade(String codAtividade)
		{
			this.codAtividade = codAtividade;
		}

		public String getCFPS()
		{
			return CFPS;
		}

		public void setCFPS(String cFPS)
		{
			CFPS = cFPS;
		}

		public String getSerie()
		{
			return serie;
		}

		public void setSerie(String serie)
		{
			this.serie = serie;
		}

		public String getCNPJCPF()
		{
			return CNPJCPF;
		}

		public void setCNPJCPF(String cNPJCPF)
		{
			CNPJCPF = cNPJCPF;
		}

		public String getNome()
		{
			return nome;
		}

		public void setNome(String nome)
		{
			this.nome = nome;
		}

		public String getCep()
		{
			return cep;
		}

		public void setCep(String cep)
		{
			this.cep = cep;
		}

		public String getEndereco()
		{
			return endereco;
		}

		public void setEndereco(String endereco)
		{
			this.endereco = endereco;
		}

		public String getBairro()
		{
			return bairro;
		}

		public void setBairro(String bairro)
		{
			this.bairro = bairro;
		}

		public String getCidade()
		{
			return cidade;
		}

		public void setCidade(String cidade)
		{
			this.cidade = cidade;
		}

		public String getEstado()
		{
			return estado;
		}

		public void setEstado(String estado)
		{
			this.estado = estado;
		}

		public String getEnderecoCobranca()
		{
			return enderecoCobranca;
		}

		public void setEnderecoCobranca(String enderecoCobranca)
		{
			this.enderecoCobranca = enderecoCobranca;
		}

		public String getEmail()
		{
			return email;
		}

		public void setEmail(String email)
		{
			this.email = email;
		}

		public String getEviarNFPorEmail()
		{
			return eviarNFPorEmail;
		}

		public void setEviarNFPorEmail(String eviarNFPorEmail)
		{
			this.eviarNFPorEmail = eviarNFPorEmail;
		}

		public String getImpRetido()
		{
			return impRetido;
		}

		public void setImpRetido(String impRetido)
		{
			this.impRetido = impRetido;
		}

		public String getVlrServico()
		{
			return vlrServico;
		}

		public void setVlrServico(String vlrServico)
		{
			this.vlrServico = vlrServico;
		}

		public String getVlrDeducoes()
		{
			return vlrDeducoes;
		}

		public void setVlrDeducoes(String vlrDeducoes)
		{
			this.vlrDeducoes = vlrDeducoes;
		}

		public String getVlrImposto()
		{
			return vlrImposto;
		}

		public void setVlrImposto(String vlrImposto)
		{
			this.vlrImposto = vlrImposto;
		}

		public String getAliquota()
		{
			return aliquota;
		}

		public void setAliquota(String aliquota)
		{
			this.aliquota = aliquota;
		}

		public String getVlrTotalNota()
		{
			return vlrTotalNota;
		}

		public void setVlrTotalNota(String vlrTotalNota)
		{
			this.vlrTotalNota = vlrTotalNota;
		}

		public String getVlrCONFINS()
		{
			return vlrCONFINS;
		}

		public void setVlrCONFINS(String vlrCONFINS)
		{
			this.vlrCONFINS = vlrCONFINS;
		}

		public String getVlrPIS()
		{
			return vlrPIS;
		}

		public void setVlrPIS(String vlrPIS)
		{
			this.vlrPIS = vlrPIS;
		}

		public String getVlrIRRF()
		{
			return vlrIRRF;
		}

		public void setVlrIRRF(String vlrIRRF)
		{
			this.vlrIRRF = vlrIRRF;
		}

		public String getVlrINSS()
		{
			return vlrINSS;
		}

		public void setVlrINSS(String vlrINSS)
		{
			this.vlrINSS = vlrINSS;
		}

		public String getVlrCSLL()
		{
			return vlrCSLL;
		}

		public void setVlrCSLL(String vlrCSLL)
		{
			this.vlrCSLL = vlrCSLL;
		}

		public String getRPS()
		{
			return RPS;
		}

		public void setRPS(String rPS)
		{
			RPS = rPS;
		}

		public String getModelo()
		{
			return modelo;
		}

		public void setModelo(String modelo)
		{
			this.modelo = modelo;
		}

		public String getObservacao()
		{
			return observacao;
		}

		public void setObservacao(String observacao)
		{
			this.observacao = observacao;
		}

		public String getDtEmissaoRPS()
		{
			return dtEmissaoRPS;
		}

		public void setDtEmissaoRPS(String dtEmissaoRPS)
		{
			this.dtEmissaoRPS = dtEmissaoRPS;
		}

		public String getTipoTomador()
		{
			return tipoTomador;
		}

		public void setTipoTomador(String tipoTomador)
		{
			this.tipoTomador = tipoTomador;
		}

		public String getRGInscrEstadual()
		{
			return RGInscrEstadual;
		}

		public void setRGInscrEstadual(String rGInscrEstadual)
		{
			RGInscrEstadual = rGInscrEstadual;
		}

		public String getFiller()
		{
			return filler;
		}

		public void setFiller(String filler)
		{
			this.filler = filler;
		}
		
	}	//	DetNF
	
	/**
	 * 	Detalhe do Item da NF
	 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
	 */
	class DetItemNF
	{
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=1)
		String tipodeRegistro;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=8)
		String sequencialNF;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=8)
		String item;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT4, size=14)
		String qtd;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=2)
		String unidade;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT4, size=14)
		String vlrUnidade;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT2, size=14)
		String vlrTotal;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=910)
		String descrItem;
				
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=172)
		String filler;
		
		/**
		 * 	To String
		 */
		@Override
		public String toString()
		{
			return getTipodeRegistro() + getSequencialNF() + getItem() + getQtd() + getUnidade() + getVlrUnidade() + getVlrTotal() + getDescrItem() + getFiller();
		}	//	toString

		public String getTipodeRegistro()
		{
			return tipodeRegistro;
		}

		public void setTipodeRegistro(String tipodeRegistro)
		{
			this.tipodeRegistro = tipodeRegistro;
		}

		public String getSequencialNF()
		{
			return sequencialNF;
		}

		public void setSequencialNF(String sequencialNF)
		{
			this.sequencialNF = sequencialNF;
		}

		public String getItem()
		{
			return item;
		}

		public void setItem(String item)
		{
			this.item = item;
		}

		public String getQtd()
		{
			return qtd;
		}

		public void setQtd(String qtd)
		{
			this.qtd = qtd;
		}

		public String getUnidade()
		{
			return unidade;
		}

		public void setUnidade(String unidade)
		{
			this.unidade = unidade;
		}

		public String getVlrUnidade()
		{
			return vlrUnidade;
		}

		public void setVlrUnidade(String vlrUnidade)
		{
			this.vlrUnidade = vlrUnidade;
		}

		public String getVlrTotal()
		{
			return vlrTotal;
		}

		public void setVlrTotal(String vlrTotal)
		{
			this.vlrTotal = vlrTotal;
		}

		public String getDescrItem()
		{
			return descrItem;
		}

		public void setDescrItem(String descrItem)
		{
			this.descrItem = descrItem;
		}

		public String getFiller()
		{
			return filler;
		}

		public void setFiller(String filler)
		{
			this.filler = filler;
		}
		
	}	//	DetItemNF
	
	/**
	 * 	Detalhe das Parcelas
	 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
	 */
	class DetParcNF
	{
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=1)
		String tipodeRegistro;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=8)
		String sequencialNF;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=2)
		String nroParcelas;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=8)
		String dtVencimento;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT2, size=14)
		String valor;
		
		/**
		 * 	To String
		 */
		@Override
		public String toString()
		{
			return getTipodeRegistro() + getSequencialNF() + getNroParcelas() + getDtVencimento() + getValor();
		}	//	toString

		public String getTipodeRegistro()
		{
			return tipodeRegistro;
		}

		public void setTipodeRegistro(String tipodeRegistro)
		{
			this.tipodeRegistro = tipodeRegistro;
		}

		public String getSequencialNF()
		{
			return sequencialNF;
		}

		public void setSequencialNF(String sequencialNF)
		{
			this.sequencialNF = sequencialNF;
		}

		public String getNroParcelas()
		{
			return nroParcelas;
		}

		public void setNroParcelas(String nroParcelas)
		{
			this.nroParcelas = nroParcelas;
		}

		public String getDtVencimento()
		{
			return dtVencimento;
		}

		public void setDtVencimento(String dtVencimento)
		{
			this.dtVencimento = dtVencimento;
		}

		public String getValor()
		{
			return valor;
		}

		public void setValor(String valor)
		{
			this.valor = valor;
		}
	}	//	DetParcNF
	
	/**
	 * 	Trailler
	 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
	 */
	class Trailler
	{
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=1)
		String tipodeRegistro;
		
		@FixedTxt (type=FixedTxt.TYPE_NUMERIC, size=4)
		String sequencialNF;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT2, size=14)
		String nroParcelas;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT2, size=14)
		String dtVencimento;
		
		@FixedTxt (type=FixedTxt.TYPE_AMOUNT2, size=14)
		String valor;
		
		@FixedTxt (type=FixedTxt.TYPE_TEXT, size=53)
		String filler;

		/**
		 * 	To String
		 */
		@Override
		public String toString()
		{
			return getTipodeRegistro() + getSequencialNF() + getNroParcelas() + getDtVencimento() + getValor() + getFiller();
		}	//	toString
		
		public String getTipodeRegistro()
		{
			return tipodeRegistro;
		}

		public void setTipodeRegistro(String tipodeRegistro)
		{
			this.tipodeRegistro = tipodeRegistro;
		}

		public String getSequencialNF()
		{
			return sequencialNF;
		}

		public void setSequencialNF(String sequencialNF)
		{
			this.sequencialNF = sequencialNF;
		}

		public String getNroParcelas()
		{
			return nroParcelas;
		}

		public void setNroParcelas(String nroParcelas)
		{
			this.nroParcelas = nroParcelas;
		}

		public String getDtVencimento()
		{
			return dtVencimento;
		}

		public void setDtVencimento(String dtVencimento)
		{
			this.dtVencimento = dtVencimento;
		}

		public String getValor()
		{
			return valor;
		}

		public void setValor(String valor)
		{
			this.valor = valor;
		}

		public String getFiller()
		{
			return filler;
		}

		public void setFiller(String filler)
		{
			this.filler = filler;
		}
	}
	
	/**
	 * Imprimir DANFE
	 */
	public String printNFSe(MLBRNotaFiscal nf)
	{
		log.fine("start printNFSe");
		
		try
		{			
			JasperPrint jasperPrint = getReport (nf);
			JRViewerProvider viewerLauncher = Service.locator().locate(JRViewerProvider.class).getService();
			viewerLauncher.openViewer (jasperPrint, "Impress\u00E3o de NFS-e para a Cidade de " + nf.getlbr_OrgCity());
		}
		catch (Exception e)
		{
			return "@Error@ " + e.getMessage();
		}
		
		return "@Success@";
	}
	
	/**
	 * Pegar DANFE no formato de PDF
	 */
	public File getPDF(MLBRNotaFiscal nf)
	{		
		log.fine("start getPDF");
		
		File PDF = null;
		
		/*try
		{
			//	Get Report
			JasperPrint jasperPrint = getReport (nf);
			
			//	File in PDF
			PDF = File.createTempFile("NFSe" + nf.getlbr_NFENo() + "-", ".pdf");
    		JasperExportManager.exportReportToPdfFile(jasperPrint, PDF.getAbsolutePath());
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}*/
		
		return PDF;
	}	
	
	/**
	 * 	Get JasperReport
	 * @param nf
	 * @return
	 * @throws Exception
	 */
	private JasperPrint getReport (MLBRNotaFiscal nf) throws Exception
	{
		log.fine("start getReport");
		
		InputStream is = null;
		MImage img = MImage.get(Env.getCtx(), MOrgInfo.get(Env.getCtx(), nf.getAD_Org_ID(), nf.get_TrxName()).getLogo_ID());
		InputStream xml = null;
		MAttachment att = null;	
		
		try
		{
			//	Map Parameters
			Map<String, Object> map = new HashMap<String, Object>();
			
			//	Attachment
			att = nf.getAttachment (true);
			
			if (att == null || att.getEntryCount() == 0)
				throw new Exception ("Arquivo XML n\u00E3o encontrado para impress\u00E3o");
			
			MAttachmentEntry[] entries = att.getEntries();
			
			//	Get XML
			for (MAttachmentEntry entry : entries)
			{
				//	Try to find the right file
				if (entry.getName().endsWith("dst.xml"))
				{
					xml = entry.getInputStream();
					break;
				}
			}
			
			//	Valid XML
			if (xml == null)
				throw new Exception ("Arquivo XML não foi encontrado");
			
			//	Get Logo
			if (img.getBinaryData() != null)
			{
				is = new ByteArrayInputStream (img.getBinaryData());
				map.put("logotipo", is);
			}
			
			if (nf.getlbr_OrgCity() != null && !nf.getlbr_OrgCity().isEmpty())
			{
				map.put("municipioprestador", nf.getlbr_OrgCity());
				map.put("orgaogerador", nf.getlbr_OrgCity());
			}
			
			if (nf.getlbr_BPCity() != null && !nf.getlbr_BPCity().isEmpty())
			{
				map.put("municipiotomador", nf.getlbr_BPCity());
			}
				
			//	Get Jasper
			ClassLoader cl = getClass().getClassLoader();
			InputStream report = cl.getResourceAsStream("org/kenos/idempiere/lbr/nfse/report/ImpressaoNFSEABRASF203.jasper");
			
			log.fine("after find report");
			
			JasperReport jasperReport = (JasperReport) JRLoader.loadObject (report);
			JRXmlDataSource dataSource = new JRXmlDataSource ( xml , jasperReport.getQuery().getText() );
			
			//	Fill
			return JasperFillManager.fillReport (jasperReport, map, dataSource);			
		}
		catch (Exception e)
		{
			e.printStackTrace();
			throw new Exception (e.getMessage());
		}
		finally
		{
			try
			{
				if (is != null)
					is.close();
			}
			catch (IOException ioe)
			{
				throw new Exception ("Erro na Impressão da Nota Fiscal de Serviço. Imprima a partir do Site da Prefeitura");
			}
		}
	}	//	getReport
	
	/**
	 * Cancel NFS-e
	 * @param nf
	 * @return
	 */
	public boolean cancel (MLBRNotaFiscal nf)
	{
		if (nf.getlbr_NFENo() == null)
			return false;
		
		/*A operação de cancelamento existe e está implantanda porém o decreto municipal número 1852
		 *impede o cancelamento da nota via webservices, apenas no site, mediante aprovação do fisco.
		 *O método de cancelamento abaixo está desenvolvido e poderá ser reativado caso a legislação
		 *municipal venha a permitir o cancelamento. 
		 */
		
		
		/*CancelarNfseEnvioDocument cancelDoc = CancelarNfseEnvioDocument.Factory.newInstance();
		CancelarNfseEnvio cancelNf = cancelDoc.addNewCancelarNfseEnvio();
		
		TcPedidoCancelamento cancelOrder = cancelNf.addNewPedido();
		TcInfPedidoCancelamento infCancelOrder = cancelOrder.addNewInfPedidoCancelamento();
		infCancelOrder.setCodigoCancelamento("2");
		infCancelOrder.setId("1");
		
		TcIdentificacaoNfse identNfse = infCancelOrder.addNewIdentificacaoNfse();
		identNfse.setNumero(new BigDecimal(nf.getlbr_NFENo()).longValue());
		identNfse.setCodigoMunicipio(nf.getlbr_BPCityCode());
		identNfse.setInscricaoMunicipal(Long.valueOf(nf.getlbr_OrgCCM()));
		identNfse.setCnpj(TextUtil.toNumeric(nf.getlbr_CNPJ()));
		
		try
		{
			MOrgInfo orgInf = MOrgInfo.get (nf.getCtx(), nf.getAD_Org_ID(), null);
			new SignatureUtil (orgInf, SignatureUtil.OUTROS, "InfPedidoCancelamento").sign (cancelDoc, cancelNf.getPedido().newCursor());
			
			//	Valida o documento
			NFeUtil.validate (cancelDoc);
					
			//	Set certificate
			MLBRDigitalCertificate.setCertificate (Env.getCtx(), nf.getAD_Org_ID());
			
			String url = "https://deiss.indaiatuba.sp.gov.br/homologacao/nfse";
			if (MLBRNotaFiscal.LBR_NFEENV_Production.equals(nf.getlbr_NFeEnv()))
				url = "https://deiss.indaiatuba.sp.gov.br/producao/nfse";
			
			NfseStub nfseStub = new NfseStub(url);
			nfseStub._getServiceClient().getOptions().setProperty(HTTPConstants.CHUNKED, false);	
			
			String result = nfseStub.cancelarNfseV3(header.xmlText(), cancelDoc.xmlText());
			
			CancelarNfseRespostaDocument response = CancelarNfseRespostaDocument.Factory.parse(result);
			
			//	Check error messages
			ListaMensagemRetorno listaMensagemRetorno = response.getCancelarNfseResposta().getListaMensagemRetorno();
			if (listaMensagemRetorno != null)
			{
				StringBuilder msgRetorno = new StringBuilder ();
				Arrays.asList(listaMensagemRetorno.getMensagemRetornoArray())
					.forEach(msg -> {
						msgRetorno
							.append("Cod=").append(msg.getCodigo())
							.append(", Correção=").append(msg.getCorrecao())
							.append(", Msg=").append(msg.getMensagem())
							.append("\n");
					});
				//
				log.warning("NFS-e " + nf.toString() + " - " + msgRetorno.toString());
				nf.setErrorMsg(msgRetorno.toString());
				nf.save();
			}
			
			//	Adicionar Protocolo do Lote
			if (response.getCancelarNfseResposta().getCancelamento() != null 
					&& response.getCancelarNfseResposta().getCancelamento().getConfirmacao() != null)
			{
				setCancel (nf, response.getCancelarNfseResposta().getCancelamento());
			}
			else
				return false;
		}
		catch (Exception e)
		{
			throw new AdempiereException(e.getMessage());
		}	
		*/
		return false;
	}	//	cancel

	@SuppressWarnings("unused")
	private void setCancel(MLBRNotaFiscal nf, TcCancelamentoNfse retCancelamento)
	{
		setCancel (nf, retCancelamento, null);
	}
	
	private void setCancel(MLBRNotaFiscal nf, TcCancelamentoNfse retCancelamento, String msg)
	{
		//	Can't change cancel reason after NF is cancelled
		if (!nf.isCancelled())
		{
			if (retCancelamento != null)
				nf.setlbr_MotivoCancel("" + retCancelamento.getConfirmacao().getInfConfirmacaoCancelamento().getDataHora());
			else if (msg != null)
				nf.setlbr_MotivoCancel(msg);
		}
		
		nf.setDocStatus(MLBRNotaFiscal.DOCSTATUS_Voided);
		nf.setDocAction(MLBRNotaFiscal.DOCACTION_None);
		nf.setIsCancelled(Boolean.TRUE);
		nf.save();
	}	//	setCancel
	
	/**
	 * Buscar informação da Tag do XML
	 * @param xml
	 * @param tagName
	 * @return
	 */
	public static String getTagValue(String xml, String tagName){
	    return xml.split("<"+tagName+">")[1].split("</"+tagName+">")[0];
	}
	
}	//	NFSeImpl
