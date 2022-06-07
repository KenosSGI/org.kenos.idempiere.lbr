package org.adempierelbr.nfse;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.nio.file.Files;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.xml.namespace.QName;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamReader;

import org.adempiere.base.Service;
import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempiere.report.jasper.JRViewerProvider;
import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.nfse.util.FixedTxt;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.SignatureUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.apache.axiom.om.OMAbstractFactory;
import org.apache.axiom.om.OMElement;
import org.apache.axis2.databinding.ADBException;
import org.apache.axis2.transport.http.HTTPConstants;
import org.apache.xmlbeans.XmlCalendar;
import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;
import org.compiere.model.MBPartner;
import org.compiere.model.MImage;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MSysConfig;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Util;
import org.kenos.idempiere.lbr.base.model.MCity;
import org.kenos.idempiere.lbr.base.model.SysConfig;
import org.kenos.idempiere.lbr.nfse.abrasf.api.IssWebWSStub;

import br.org.abrasf.www.nfse_xsd.CancelarNfseEnvio_type0;
import br.org.abrasf.www.nfse_xsd.CancelarNfseResposta_type0;
import br.org.abrasf.www.nfse_xsd.ConsultarNfseRpsEnvio_type0;
import br.org.abrasf.www.nfse_xsd.ConsultarNfseRpsResposta_type0;
import br.org.abrasf.www.nfse_xsd.EnviarLoteRpsSincronoEnvio_type0;
import br.org.abrasf.www.nfse_xsd.EnviarLoteRpsSincronoResposta_type0;
import br.org.abrasf.www.nfse_xsd.GerarNfseEnvio_type0;
import br.org.abrasf.www.nfse_xsd.GerarNfseResposta_type0;
import br.org.abrasf.www.nfse_xsd.ListaMensagemRetornoLote_type0;
import br.org.abrasf.www.nfse_xsd.ListaMensagemRetorno_type0;
import br.org.abrasf.www.nfse_xsd.SubstituirNfseEnvio_type0;
import br.org.abrasf.www.nfse_xsd.SubstituirNfseResposta_type0;
import br.org.abrasf.www.nfse_xsd.TcCompNfse;
import br.org.abrasf201.nfse.CabecalhoDocument.Cabecalho;
import br.org.abrasf201.nfse.CancelarNfseEnvioDocument;
import br.org.abrasf201.nfse.CancelarNfseEnvioDocument.CancelarNfseEnvio;
import br.org.abrasf201.nfse.CancelarNfseRespostaDocument;
import br.org.abrasf201.nfse.ConsultarNfseRpsEnvioDocument;
import br.org.abrasf201.nfse.ConsultarNfseRpsEnvioDocument.ConsultarNfseRpsEnvio;
import br.org.abrasf201.nfse.EnviarLoteRpsSincronoEnvioDocument;
import br.org.abrasf201.nfse.EnviarLoteRpsSincronoEnvioDocument.EnviarLoteRpsSincronoEnvio;
import br.org.abrasf201.nfse.GerarNfseEnvioDocument;
import br.org.abrasf201.nfse.SubstituirNfseEnvioDocument;
import br.org.abrasf201.nfse.SubstituirNfseEnvioDocument.SubstituirNfseEnvio;
import br.org.abrasf201.nfse.SubstituirNfseEnvioDocument.SubstituirNfseEnvio.SubstituicaoNfse;
import br.org.abrasf201.nfse.TcContato;
import br.org.abrasf201.nfse.TcCpfCnpj;
import br.org.abrasf201.nfse.TcDadosServico;
import br.org.abrasf201.nfse.TcDadosTomador;
import br.org.abrasf201.nfse.TcDeclaracaoPrestacaoServico;
import br.org.abrasf201.nfse.TcEndereco;
import br.org.abrasf201.nfse.TcIdentificacaoNfse;
import br.org.abrasf201.nfse.TcIdentificacaoPrestador;
import br.org.abrasf201.nfse.TcIdentificacaoRps;
import br.org.abrasf201.nfse.TcIdentificacaoTomador;
import br.org.abrasf201.nfse.TcInfDeclaracaoPrestacaoServico;
import br.org.abrasf201.nfse.TcInfPedidoCancelamento;
import br.org.abrasf201.nfse.TcInfRps;
import br.org.abrasf201.nfse.TcLoteRps;
import br.org.abrasf201.nfse.TcLoteRps.ListaRps;
import br.org.abrasf201.nfse.TcPedidoCancelamento;
import br.org.abrasf201.nfse.TcValoresDeclaracaoServico;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRXmlDataSource;
import net.sf.jasperreports.engine.util.JRLoader;

/**
 * 		NFS-e de Cidades que Utilizam Abrasf Versão 2.01
 * 
 * 	@author Davi Fochi (Kenos, www.kenos.com.br)
 *	@version $Id: NFSeAbrasf201Impl.java, v1.0 2021/12/31 14:17:06, SFUSER Exp $
 */
public class NFSeAbrasf201Impl implements INFSe
{
	/** Log				*/
	private static CLogger log = CLogger.getCLogger(NFSeAbrasf201Impl.class);
	
	/** Cidades que utilizam padrão Abrasf 
	 *	
	 *	Exemplo
	 *	public static final Integer	 Cidade1_ID = 0; 
	 *	public static final Integer	 Cidade2_ID = 1;
	 *	public static final Integer	 Cidade3_ID = 2;
	 *
	 *	Para Registrar
	 *
	 *	NFSeUtil.registerClass (NFSeAbrasfImpl.Cidade1_ID, NFSeAbrasfImpl.class);
	 *	NFSeUtil.registerClass (NFSeAbrasfImpl.Cidade2_ID, NFSeAbrasfImpl.class);
	 *	NFSeUtil.registerClass (NFSeAbrasfImpl.Cidade3_ID, NFSeAbrasfImpl.class);
	 */

	public static final Byte TIPO_RPS 			= Byte.valueOf ("1");
	public static final Byte TIPO_NF_CONJUGADA 	= Byte.valueOf ("2");
	public static final Byte TIPO_CUPOM 		= Byte.valueOf ("3");
	
	private static final RoundingMode MODO_ARREDONDAMENTO = RoundingMode.HALF_EVEN;
	
	/**
	 * Namespace
	 */
	public String namespace = "";
	public String url = "";
	public Integer C_City_ID = 0;
	
	/**
	 * Cidades que utilizam NFS-e Abrasf
	 */
	public static final Integer	 TAPIRAI_ID = 1005320;

	private final Cabecalho header;

	public NFSeAbrasf201Impl()
	{
		header = Cabecalho.Factory.newInstance();
		header.setVersao("2.01");
		header.setVersaoDados("");
	}	//	NFSeAbrasf203Impl
	
	/**
	 *  Tipo de integração, via Webservice ou via arquivo de RPS
	 */
	public String getType()
	{
		return TYPE_SYNCHRONOUS;
	}	//	getType
	
	/**
	 * Credenciais para consulta no Webservices Fiorilli
	 * @return
	 */
	private String getUser(MLBRNotaFiscal nf)
	{
		if (MLBRNotaFiscal.LBR_NFEENV_Homologation.equals(nf.getlbr_NFeEnv()))
		{
			return "01001001000113";
		} 
		else
		{
			return MSysConfig.getValue (SysConfig.LBR_NFSE_TAPIRAI_USER, "01001001000113", nf.getAD_Client_ID(), nf.getAD_Org_ID());
		}
	}
	
	private String getPassword(MLBRNotaFiscal nf)
	{
		if (MLBRNotaFiscal.LBR_NFEENV_Homologation.equals(nf.getlbr_NFeEnv()))
		{
			return "123456";
		} 
		else
		{
			return MSysConfig.getValue (SysConfig.LBR_NFSE_TAPIRAI_PASS, "123456", nf.getAD_Client_ID(), nf.getAD_Org_ID());
		}
	}
	
	private String getInscricaoMunicipal(MLBRNotaFiscal nf)
	{
		if (MLBRNotaFiscal.LBR_NFEENV_Homologation.equals(nf.getlbr_NFeEnv()))
		{
			return "15000";
		} 
		else
		{
			return nf.getlbr_OrgCCM();
		}
	}
	
	private String getCNPJ(MLBRNotaFiscal nf)
	{
		if (MLBRNotaFiscal.LBR_NFEENV_Homologation.equals(nf.getlbr_NFeEnv()))
		{
			return "01001001000113";
		} 
		else
		{
			return nf.getlbr_CNPJ();
		}
	}
	
	private String getURL(MLBRNotaFiscal nf)
	{
		if(nf.getOrg_Location().getC_City_ID() == TAPIRAI_ID)
		{
			if (MLBRNotaFiscal.LBR_NFEENV_Production.equals(nf.getlbr_NFeEnv()))
				return MSysConfig.getValue (SysConfig.LBR_NFSE_URL, "http://siatapirai.dcfiorilli.com.br:8080/IssWeb-ejb/IssWebWS/IssWebWS", nf.getAD_Client_ID(), nf.getAD_Org_ID());
			else
				return  "http://fi1.fiorilli.com.br:5663/IssWeb-ejb/IssWebWS/IssWebWS?wsdl";
		} 
		else
		{
			return "http://fi1.fiorilli.com.br:5663/IssWeb-ejb/IssWebWS/IssWebWS?wsdl";
		}
	}
	
	
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
		
		//	Date ZULU
		Calendar cal = Calendar.getInstance();
		cal.setTimeInMillis (nf.getDateDoc().getTime());
		
		//	Set date this way to avoid time zone incompatibilities
		Calendar xmlCal = new XmlCalendar ();
		xmlCal.set(Calendar.YEAR, 			cal.get (Calendar.YEAR));
		xmlCal.set(Calendar.MONTH, 			cal.get (Calendar.MONTH));
		xmlCal.set(Calendar.DAY_OF_MONTH, 	cal.get (Calendar.DAY_OF_MONTH));

		//	Criar RPS
		TcDeclaracaoPrestacaoServico rps = TcDeclaracaoPrestacaoServico.Factory.newInstance();
		
		//	Detalhes da Declaração de Prestação de Serviço
		TcInfDeclaracaoPrestacaoServico infdps = rps.addNewInfDeclaracaoPrestacaoServico();
		infdps.setId(nf.getDocNo());
		
		TcInfRps infRps = infdps.addNewRps();
		//	Identificação do RPS
		TcIdentificacaoRps indRps = infRps.addNewIdentificacaoRps();
		indRps.setNumero(new BigDecimal(nf.getDocumentNo()).longValue());
		indRps.setSerie(nf.getlbr_NFSerie());
		indRps.setTipo((byte)1);
		infRps.setDataEmissao(xmlCal);
		infRps.setStatus((byte)1);
		//	Competencia
		infdps.setCompetencia(xmlCal);
		
		//	Identificação do Prestador de Serviço
		TcIdentificacaoPrestador prestador = infdps.addNewPrestador();
		
		//	CPF/CNPJ Organização
		TcCpfCnpj cpfcnpjPrestador = prestador.addNewCpfCnpj();
		cpfcnpjPrestador.setCnpj(TextUtil.toNumeric(getCNPJ(nf)));

		//	Inscrição Municipal Organização
		if (nf.getlbr_OrgCCM() != null && !nf.getlbr_OrgCCM().isEmpty())
			prestador.setInscricaoMunicipal(TextUtil.toNumeric(getInscricaoMunicipal(nf)));
			
		//	Identificação do Parceiro de Negócio Tomador do Serviço
		TcDadosTomador dadosTomador = infdps.addNewTomador();
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
			tomador.setInscricaoMunicipal(TextUtil.toNumeric(partner.get_ValueAsString("LBR_CCM")));
		
		//	Dados do Tomador do Serviço / Parceiro de Negócio
		dadosTomador.setRazaoSocial(Util.deleteAccents(nf.getBPName().trim()));
		TcEndereco endTomador = dadosTomador.addNewEndereco();
		if (nf.getlbr_BPAddress1() == null || nf.getlbr_BPAddress1().isBlank())
		{
			nf.setErrorMsg("Impossível gerar NFS-e. Endereço inválido");
			return null;
		}
		endTomador.setEndereco(Util.deleteAccents(nf.getlbr_BPAddress1().trim()));
		if (nf.getlbr_BPAddress2() == null || nf.getlbr_BPAddress2().isBlank())
		{
			nf.setErrorMsg("Impossível gerar NFS-e. Número do endereço inválido");
			return null;
		}
		endTomador.setNumero(nf.getlbr_BPAddress2().trim());
		if (nf.getlbr_BPAddress3() == null || nf.getlbr_BPAddress3().isBlank())
		{
			nf.setErrorMsg("Impossível gerar NFS-e. Bairro do endereço inválido");
			return null;
		}
		endTomador.setBairro(Util.deleteAccents(nf.getlbr_BPAddress3()));
		endTomador.setCodigoMunicipio(nf.getlbr_BPCityCode());
		endTomador.setCep(TextUtil.toNumeric (nf.getlbr_BPPostal()));
		endTomador.setUf(nf.getlbr_BPRegion());
		if (nf.getlbr_CountryCode() != null && "9999999".equals(nf.getlbr_BPCity()))
			endTomador.setCodigoPais(nf.getlbr_CountryCode().substring(1));
		
		// Contato do Parceiro de Negócio
		TcContato contatoTomador = dadosTomador.addNewContato();
		String bpemail = partner.get_ValueAsString("LBR_EMailNFSe");
		String bpPhone = nf.getlbr_BPPhone();
		if (bpPhone == null || bpPhone.isBlank())
			bpPhone = "0";	//	Obrigatório
		contatoTomador.setTelefone(bpPhone.trim().substring(0,Math.min(bpPhone.trim().length(),20)));
		
		if (bpemail != null && !bpemail.isBlank())
			contatoTomador.setEmail(bpemail.trim().substring(0,Math.min(bpemail.trim().length(),80)));
		
		//	Descrição do Serviço
		String descricaoServico = "";
		String serviceCode = "";
		BigDecimal aliquota = BigDecimal.ZERO;
		String iss = "";
		
		//	Identificação dos Serviços prestados
		TcDadosServico dadosServico = infdps.addNewServico();
		
		//	Valores dos Serviços
		TcValoresDeclaracaoServico valores = dadosServico.addNewValores();
		
		boolean issRetido = false;
		
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
					// ISS Retido ou ISS
					if (nfl.getTaxRate("ISS").equals(Env.ZERO) && !nfl.getTaxRate("ISSRT").equals(Env.ZERO))
					{
						issRetido = true;
						
						iss = "ISSRT";
						//ISS Retido 1 = Sim
						dadosServico.setIssRetido((byte) 1);
						//
						dadosServico.setResponsavelRetencao((byte) 1);
					}	
					else
					{
						iss = "ISS";
						//ISS Retido 2 = Não
						dadosServico.setIssRetido((byte) 2);
						
					}
					aliquota = nfl.getTaxRate(iss);
					
					//if (v_ISS.subtract(aliquota.multiply(nf.getlbr_ServiceTotalAmt())) != BigDecimal.ZERO)
					//	throw new AdempiereException("Verifique o Valor do ISS e o Total de Serviço da Nota. Alíquota");
					if (nfl.getTax(iss).getLBR_TaxStatus().getName() == null)
					{
						nf.setErrorMsg("Preencha a Situação Tributária do ISS");
						nf.setDocAction(MLBRNotaFiscal.DOCACTION_Prepare);
						throw new AdempiereException(nf.getDocNo() + ": Preencha a Situação Tributária do ISS");
					}
					/* (Exigibilidade ISS)
					/* Tributação no Município - Exigivel - 1 */
					
					if (nfl.getTax(iss).getLBR_TaxStatus().getName().equals(MLBRNotaFiscalLine.LBR_TAXSTATUSISS_1_Exigível))
					{
						dadosServico.setExigibilidadeISS((byte)1);
					}
					/* Tributação Fora do Município - Não Incidência - 2 */
					else if (nfl.getTax(iss).getLBR_TaxStatus().getName().equals(MLBRNotaFiscalLine.LBR_TAXSTATUSISS_2_NãoIncidência)) 
					{
						dadosServico.setExigibilidadeISS((byte)2);
					}
					/* Isenção - 3 */
					else if (nfl.getTax(iss).getLBR_TaxStatus().getName().equals(MLBRNotaFiscalLine.LBR_TAXSTATUSISS_3_Isenção))
					{
						dadosServico.setExigibilidadeISS((byte)3);
					}
					/* Exportação - 4 */
					else if (nfl.getTax(iss).getLBR_TaxStatus().getName().equals(MLBRNotaFiscalLine.LBR_TAXSTATUSISS_4_Exportação))
					{
						dadosServico.setExigibilidadeISS((byte)4);
					}
					/* Imunidade - 5 */
					else if (nfl.getTax(iss).getLBR_TaxStatus().getName().equals(MLBRNotaFiscalLine.LBR_TAXSTATUSISS_5_Imunidade))
					{
						dadosServico.setExigibilidadeISS((byte)5);
					}
					/* Exigibilidade Suspensa por Decisão Judicial - 6 */
					else if (nfl.getTax(iss).getLBR_TaxStatus().getName().equals(MLBRNotaFiscalLine.LBR_TAXSTATUSISS_6_ExigibilidadeSuspensaPorDecisaoJudicial))
					{
						dadosServico.setExigibilidadeISS((byte)6);
					}
					/* Exigibilidade Suspensa por Procedimento Administrativo - 7 */
					else if (nfl.getTax(iss).getLBR_TaxStatus().getName().equals(MLBRNotaFiscalLine.LBR_TAXSTATUSISS_7_ExigibilidadeSuspensaPorProcessoAdministrativo))
					{
						dadosServico.setExigibilidadeISS((byte)7);
					}
					
					/**
					 * Em caso de ISS não retido, não preencher para que seja preenchido com o default
					 * 
					 */

					int cityCode = nfl.getlbr_CityCode();
					
					if (issRetido && cityCode > 0)
					{
						dadosServico.setCodigoMunicipio(cityCode);
						dadosServico.setMunicipioIncidencia(cityCode);
					}
				}
				else if (!aliquota.equals(nfl.getTaxRate("ISS")))
				{
					nf.setErrorMsg("Impossível gerar XML NFS-e. Todos os serviços da NFS-e devem conter o mesmo Código de Serviço");
					return null;
				}
			}
		}
		// Discriminação do Serviço
		String description = nf.getDescription();
		if (description != null && !description.isBlank())
			descricaoServico = description;
		
		if (descricaoServico == null || descricaoServico.length() < 5)
		{
			nf.setErrorMsg("Impossível gerar XML NFS-e. Discriminação dos serviços muito curta ou em branco.");
			return null;
		}
		MCity city = new MCity (Env.getCtx(), nf.getOrg_Location().getC_City_ID(), null);
		
		TextUtil.retiraEspecial(descricaoServico);
		dadosServico.setDiscriminacao(TextUtil.retiraEspecial(descricaoServico).replace("\n", ". ").replaceAll("\\s+", " ").replaceAll("\\.+", ".").trim());
		dadosServico.setItemListaServico(serviceCode);
		if (dadosServico.getCodigoMunicipio() < 1)
			dadosServico.setCodigoMunicipio(city.getlbr_CityCode());
		if (dadosServico.getMunicipioIncidencia() < 1)
			dadosServico.setMunicipioIncidencia(city.getlbr_CityCode());
		
		valores.setValorServicos(nf.getlbr_ServiceTotalAmt());
		valores.setValorDeducoes(BigDecimal.ZERO.setScale(2, MODO_ARREDONDAMENTO));
		
		//	Total de Imposto
		BigDecimal v_PIS 	= toBD (nf.getTaxAmt("PIS")).abs().setScale(2, MODO_ARREDONDAMENTO);
		BigDecimal v_COFINS = toBD (nf.getTaxAmt("COFINS")).abs().setScale(2, MODO_ARREDONDAMENTO);
		BigDecimal v_INSS 	= toBD (nf.getTaxAmt("INSS")).abs().setScale(2, MODO_ARREDONDAMENTO);
		BigDecimal v_IR 	= toBD (nf.getTaxAmt("IR")).abs().setScale(2, MODO_ARREDONDAMENTO);
		BigDecimal v_CSLL 	= toBD (nf.getTaxAmt("CSLL")).abs().setScale(2, MODO_ARREDONDAMENTO);
		BigDecimal v_ISS 	= toBD (nf.getTaxAmt("ISS").add(nf.getTaxAmt("ISSRT"))).abs().setScale(2, MODO_ARREDONDAMENTO);
		BigDecimal v_TotTrib= toBD (nf.getlbr_vTotTrib()).abs().setScale(2, MODO_ARREDONDAMENTO);

		// Valores da NFS-e
		valores.setValorPis(v_PIS);
		valores.setValorCofins(v_COFINS);
		valores.setValorInss(v_INSS);
		valores.setValorIr(v_IR);
		valores.setValorCsll(v_CSLL);
		valores.setValorIss(v_ISS);
		valores.setOutrasRetencoes(BigDecimal.ZERO.setScale(2, MODO_ARREDONDAMENTO));
		//valores.setValTotTributos(v_TotTrib);
		valores.setAliquota(aliquota.setScale(2,MODO_ARREDONDAMENTO));
		valores.setDescontoIncondicionado(BigDecimal.ZERO.setScale(2, MODO_ARREDONDAMENTO));
		valores.setDescontoCondicionado(nf.getDiscountAmt().setScale(2, MODO_ARREDONDAMENTO));
		
		//	Optando do Simples Nacionals
		infdps.setOptanteSimplesNacional("S".equals(woi.getLBR_TaxRegime()) ? (byte)1 : (byte)2);
		
		// Possui Incentivo Fiscal
		infdps.setIncentivoFiscal((byte)2);		
		
		try
		{
			//	Valida o documento
			NFeUtil.validate (rps);
			
			//	Adiciona o Certificado
			MLBRDigitalCertificate.setCertificate (nf.getCtx(), p_AD_Org_ID);
			
			//	Assina o XML
			if (MLBRNotaFiscal.LBR_NFEENV_Production.equals(nf.getlbr_NFeEnv()))
			new SignatureUtil (orgInf, SignatureUtil.OUTROS, "InfDeclaracaoPrestacaoServico").sign (rps, rps.newCursor());
					
			return rps.xmlText(NFeUtil.getXmlOpt()).getBytes(NFeUtil.NFE_ENCODING);
		
		}
		catch (Exception e)
		{
			nf.setErrorMsg(e.toString());
			nf.saveEx();
			throw new AdempiereException(e.getMessage());
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
		
		//	Set certificate
		MLBRDigitalCertificate.setCertificate (Env.getCtx(), nf.getAD_Org_ID());
		
		String url = getURL(nf);
		
		IssWebWSStub nfseStub = new IssWebWSStub(url);
		nfseStub._getServiceClient().getOptions().setProperty(HTTPConstants.CHUNKED, false);
		
		br.org.abrasf.www.nfse_xsd.TcCompNfse compNfse = null;
		
		ListaMensagemRetorno_type0 listaMensagemRetorno = null;
		
		if (nf.getLBR_NFReplacedNo() != null)
		{
			if (nf.getRef_NotaFiscal_ID() == 0 || nf.getRef_NotaFiscal() == null) {
				throw new Exception ("Selecione a Nota a ser Substituída no Campo NF Substituída");
			}
				
			
			SubstituirNfseEnvioDocument document = SubstituirNfseEnvioDocument.Factory.newInstance();
			SubstituirNfseEnvio substituirNfseEnvio = document.addNewSubstituirNfseEnvio();
			SubstituicaoNfse substituicaoNfse = substituirNfseEnvio.addNewSubstituicaoNfse();
			substituicaoNfse.setRps(TcDeclaracaoPrestacaoServico.Factory.parse(xml));
			substituicaoNfse.setId("Substituicao_1");
			
			TcPedidoCancelamento pedido = substituicaoNfse.addNewPedido();
			TcInfPedidoCancelamento infCancelOrder = pedido.addNewInfPedidoCancelamento();
			infCancelOrder.setCodigoCancelamento((byte) 1);
			infCancelOrder.setId("Cancelamento_1");
			
			TcIdentificacaoNfse identNfse = infCancelOrder.addNewIdentificacaoNfse();
			identNfse.setNumero(new BigDecimal(nf.getLBR_NFReplacedNo()).longValue());
			identNfse.setCodigoMunicipio(nf.getlbr_BPCityCode());
			identNfse.setInscricaoMunicipal(TextUtil.toNumeric(getInscricaoMunicipal(nf)));
			
			TcCpfCnpj cpfcnpjPrestador = identNfse.addNewCpfCnpj();
			cpfcnpjPrestador.setCnpj(TextUtil.toNumeric(getCNPJ(nf)));
			
			MOrgInfo orgInf = MOrgInfo.get (nf.getCtx(), nf.getAD_Org_ID(), null);
			new SignatureUtil (orgInf, SignatureUtil.OUTROS, "InfPedidoCancelamento").sign (document, pedido.newCursor());
			
			//	Valida o documento
			NFeUtil.validate (document);
			
			Reader reader = new StringReader(document.xmlText());
			XMLInputFactory factory = XMLInputFactory.newInstance();
			XMLStreamReader xmlReader = factory.createXMLStreamReader(reader);
			
			NFeUtil.saveXML (String.valueOf(nf.getAD_Org_ID()), NFeUtil.KIND_NFSE, NFeUtil.MESSAGE_REQ_AUTORIZE, "Substituicao-RPS-" + nf.getDocumentNo(), document.xmlText());
			
			SubstituirNfseEnvio_type0 substituirNfseDoc = SubstituirNfseEnvio_type0.Factory.parse(xmlReader); 
			SubstituirNfseResposta_type0 result = nfseStub.substituirNfse(substituirNfseDoc,getUser(nf),getPassword(nf));
			
			try 
			{
				QName qname = new javax.xml.namespace.QName("http://www.abrasf.org.br/nfse.xsd", "SubstituirNfseResposta");
				OMElement omElement = result.getOMElement(qname, OMAbstractFactory.getOMFactory());
				NFeUtil.saveXML (String.valueOf(nf.getAD_Org_ID()), NFeUtil.KIND_NFSE, NFeUtil.MESSAGE_RET_AUTORIZE, "Retorno-Substituicao-RPS-" + nf.getDocumentNo(), omElement.toString());
				System.out.println(omElement.toString());
			}
			catch (ADBException e) {
				e.printStackTrace();
			}
			
			//Monitorar envio do Stub
			String request = nfseStub._getServiceClient().getLastOperationContext().getMessageContext("Out")
					.getEnvelope().toString();
			
			log.info(request);
			
			listaMensagemRetorno = result.getListaMensagemRetorno();
			if (result.getRetSubstituicao() != null)
				compNfse = result.getRetSubstituicao().getNfseSubstituidora().getCompNfse();
			//
			if (nf.getRef_NotaFiscal_ID() > 0 && compNfse != null)
			{
				MLBRNotaFiscal nfc = new MLBRNotaFiscal (nf.getCtx(), nf.getRef_NotaFiscal_ID(), nf.get_TrxName());
				setCancel(nfc, null, "NF Substituída pelo RPS: " + nf.getDocumentNo() + ", NFS-e: " + compNfse.getNfse().getInfNfse().getNumero());
			}
		}
		else
		{
			GerarNfseEnvioDocument document = GerarNfseEnvioDocument.Factory.newInstance();
			document.addNewGerarNfseEnvio().setRps(TcDeclaracaoPrestacaoServico.Factory.parse(xml));
			
			XMLInputFactory factory = XMLInputFactory.newInstance();
			XMLStreamReader xmlReader = factory.createXMLStreamReader(new ByteArrayInputStream(document.xmlText().getBytes()));
			
			NFeUtil.saveXML (String.valueOf(nf.getAD_Org_ID()), NFeUtil.KIND_NFSE, NFeUtil.MESSAGE_REQ_AUTORIZE, "RPS-" + nf.getDocumentNo(), document.xmlText());
			
			GerarNfseEnvio_type0 gerarNfseDoc = GerarNfseEnvio_type0.Factory.parse(xmlReader);
			
			GerarNfseResposta_type0 resultado = nfseStub.gerarNfse(gerarNfseDoc,getUser(nf),getPassword(nf));
			try 
			{
				QName qname = new javax.xml.namespace.QName("http://www.abrasf.org.br/nfse.xsd", "EnviarLoteRpsResposta");
				OMElement omElement = resultado.getOMElement(qname, OMAbstractFactory.getOMFactory());
				NFeUtil.saveXML (String.valueOf(nf.getAD_Org_ID()), NFeUtil.KIND_NFSE, NFeUtil.MESSAGE_RET_AUTORIZE, "Retorno_RPS-" + nf.getDocumentNo(), omElement.toString());
			}
			catch (ADBException e) {
				e.printStackTrace();
			}
			
			
			//Monitorar envio do Stub
			String request = nfseStub._getServiceClient().getLastOperationContext().getMessageContext("Out")
					.getEnvelope().toString();
			
			log.info(request);
			
			listaMensagemRetorno = resultado.getListaMensagemRetorno();
			if (resultado.getListaNfse() != null)
				compNfse = resultado.getListaNfse().getCompNfse();
			
		}
		
		//	Check error messages
		StringBuilder msgRetorno = new StringBuilder ();
		if (listaMensagemRetorno != null)
		{
			Arrays.asList(listaMensagemRetorno.getMensagemRetorno())
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
		if (compNfse != null 
				&& !compNfse.getNfse().getInfNfse().getCodigoVerificacao().isEmpty())
		{
			setProtocol (nf, compNfse);
		}
		else
			throw new Exception (msgRetorno.toString());
		return true;
	}	//	transmit

	private void setProtocol (MLBRNotaFiscal nf, br.org.abrasf.www.nfse_xsd.TcCompNfse compNfse)
	{
		//	Protocol
		nf.setlbr_NFeProt(compNfse.getNfse().getInfNfse().getCodigoVerificacao());
		nf.setDateTrx(new Timestamp (compNfse.getNfse().getInfNfse().getDataEmissao().getTimeInMillis()));
		nf.setlbr_NFENo(String.valueOf(compNfse.getNfse().getInfNfse().getNumero()));
		
		//	Cancel
		if (compNfse.getNfseCancelamento() != null)
		{
			nf.setlbr_MotivoCancel("Cancelamento: " + compNfse.getNfseCancelamento().getConfirmacao().getDataHora());
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
			QName qname = new javax.xml.namespace.QName("http://www.abrasf.org.br/nfse.xsd", "Nfse");
			
			OMElement omElement = compNfse.getOMElement(qname, OMAbstractFactory.getOMFactory());

			attachNFe.addEntry("NFSe_" + nf.getlbr_NFENo() + "_RPS_" + nf.getDocumentNo() + "-dst.xml", omElement.toString().getBytes(NFeUtil.NFE_ENCODING));
			attachNFe.save();
		}
		catch (UnsupportedEncodingException e)
		{
			e.printStackTrace();
		}
		catch (ADBException e) {
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
		
		// Set certificate
		MLBRDigitalCertificate.setCertificate (Env.getCtx(), AD_Org_ID);
		
		String url = "http://fi1.fiorilli.com.br:5663/IssWeb-ejb/IssWebWS/IssWebWS?wsdl";
		
		for (MLBRNotaFiscal nf : nfs)
		{
			//	Todas URLs em Produção
			if (MLBRNotaFiscal.LBR_NFEENV_Production.equals(nf.getlbr_NFeEnv()))
				url = MSysConfig.getValue (SysConfig.LBR_NFSE_URL, "http://siatapirai.dcfiorilli.com.br:8080/IssWeb-ejb/IssWebWS/IssWebWS", nf.getAD_Client_ID(), nf.getAD_Org_ID());
			else break;
		}
		
		long soTimeout = MSysConfig.getIntValue ("LBR_NFSE_TIMEOUT",  5 * 60 * 1000, Env.getAD_Client_ID(ctx), AD_Org_ID); // Five minutes
		
		IssWebWSStub nfseStub = new IssWebWSStub(url);
		nfseStub._getServiceClient().getOptions().setProperty(HTTPConstants.CHUNKED, false);
		nfseStub._getServiceClient().getOptions().setTimeOutInMilliSeconds(soTimeout);
		
		EnviarLoteRpsSincronoEnvioDocument enviarLotDoc = EnviarLoteRpsSincronoEnvioDocument.Factory.newInstance();
		EnviarLoteRpsSincronoEnvio enviarLot = enviarLotDoc.addNewEnviarLoteRpsSincronoEnvio();

		//	Lote RPS
		TcLoteRps loteRps = enviarLot.addNewLoteRps();
		
		//	Lista de RPS
		ListaRps listaRps = loteRps.addNewListaRps();
		List<TcDeclaracaoPrestacaoServico> listRps = new ArrayList<TcDeclaracaoPrestacaoServico>();
		
		for (MLBRNotaFiscal nf : nfs)
		{
			//			Procura o XML nos anexos
			byte[] xmlData = nf.getAttachmentData("xml");
			if (xmlData == null || xmlData.length == 0)
				xmlData = getXML (nf);	//	Gera um novo XML
			
			String xml = new String (xmlData, NFeUtil.NFE_ENCODING);
			
			TcDeclaracaoPrestacaoServico rps = TcDeclaracaoPrestacaoServico.Factory.parse(xml);
			listRps.add(rps);
		}
		
		TcDeclaracaoPrestacaoServico[] TcRpsArray = new TcDeclaracaoPrestacaoServico[listRps.size()];
		listRps.toArray(TcRpsArray);
		
		//	Identificação do Lote do RPS
		loteRps.setId("lote1");
		loteRps.setVersao("2.01");
		loteRps.setNumeroLote(new BigDecimal(nfs.get(0).getDocumentNo()).intValue());
		
		TcCpfCnpj cpfcnpjPrestador = loteRps.addNewCpfCnpj();
		cpfcnpjPrestador.setCnpj(TextUtil.toNumeric(getCNPJ(nfs.get(0))));
		
		loteRps.setInscricaoMunicipal(TextUtil.toNumeric(getInscricaoMunicipal(nfs.get(0))));
		loteRps.setQuantidadeRps(listRps.size());
		
		listaRps.setRpsArray(TcRpsArray);
		
		//	Valida o documento
		NFeUtil.validate (enviarLotDoc);
			
		//	Adiciona o Certificado
		MLBRDigitalCertificate.setCertificate (ctx, AD_Org_ID);
		
		//	Assina o XML
		//new SignatureUtil (orgInf, SignatureUtil.OUTROS, "LoteRps").sign (enviarLotDoc,enviarLotDoc.getEnviarLoteRpsEnvio().newCursor());
		new SignatureUtil (orgInf, SignatureUtil.OUTROS, "LoteRps").sign (enviarLotDoc,enviarLotDoc.getEnviarLoteRpsSincronoEnvio().newCursor());
		
		String xmlText = new String (enviarLotDoc.xmlText().getBytes(), NFeUtil.NFE_ENCODING);
		
		NFeUtil.saveXML (String.valueOf(AD_Org_ID), NFeUtil.KIND_NFSE, NFeUtil.MESSAGE_REQ_AUTORIZE, "Envio_Lote-" + nfs.get(0).getDocumentNo(), xmlText);
		
		XMLInputFactory factory = XMLInputFactory.newInstance();
		XMLStreamReader xmlReader = factory.createXMLStreamReader(new ByteArrayInputStream(enviarLotDoc.xmlText().getBytes()));

		EnviarLoteRpsSincronoEnvio_type0 EnviarLoteRpsEnvio = EnviarLoteRpsSincronoEnvio_type0.Factory.parse(xmlReader);
		EnviarLoteRpsSincronoResposta_type0 resposta = nfseStub.recepcionarLoteRpsSincrono(EnviarLoteRpsEnvio, getUser(nfs.get(0)), getPassword(nfs.get(0)));
	
		//Monitorar envio do Stub
		String request = nfseStub._getServiceClient().getLastOperationContext().getMessageContext("Out")
				.getEnvelope().toString();
		
		log.info(request);
		
		try 
		{
			QName qname = new javax.xml.namespace.QName("http://www.abrasf.org.br/nfse.xsd", "EnviarLoteRpsSincronoResposta");
			OMElement omElement = resposta.getOMElement(qname, OMAbstractFactory.getOMFactory());
			NFeUtil.saveXML (String.valueOf(AD_Org_ID), NFeUtil.KIND_NFSE, NFeUtil.MESSAGE_RET_AUTORIZE, "Retorno_Envio_Lote-" + nfs.get(0).getDocumentNo(), omElement.toString());
		}
		catch (ADBException e) {
			e.printStackTrace();
		}
		
		if (resposta.getListaMensagemRetorno() != null)
		{
			ListaMensagemRetorno_type0 listaMensagemRetorno = null;
			
			listaMensagemRetorno = resposta.getListaMensagemRetorno();
			
			//	Check error messages
			StringBuilder msgRetorno = new StringBuilder ();
			if (listaMensagemRetorno != null)
			{
				Arrays.asList(listaMensagemRetorno.getMensagemRetorno())
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
		
		if (resposta.getListaMensagemRetornoLote() != null)
		{
			
			ListaMensagemRetornoLote_type0 listaMensagemRetornoLote = null;
			
			listaMensagemRetornoLote = resposta.getListaMensagemRetornoLote();
			//	Check error messages
			StringBuilder msgRetorno = new StringBuilder ();
			if (listaMensagemRetornoLote != null)
			{
				Arrays.asList(listaMensagemRetornoLote.getMensagemRetorno())
					.forEach(msg -> {
						msgRetorno
							.append("Cod=").append(msg.getCodigo())
							.append(", Número RPS=").append(msg.getIdentificacaoRps().getNumero())
							.append(", Msg=").append(msg.getMensagem())
							.append("\n");
					});
				throw new AdempiereException(msgRetorno.toString());
			}
		}
		
		if (resposta.getListaNfse() != null)
		{
			for (TcCompNfse compNfse : resposta.getListaNfse().getCompNfse()) 
			{
				int LBR_NotaFiscal_ID = MLBRNotaFiscal.getLBR_NotaFiscal_ID (AD_Org_ID, 
						compNfse.getNfse().getInfNfse().getDeclaracaoPrestacaoServico().
						getInfDeclaracaoPrestacaoServico().getRps().getIdentificacaoRps().getNumero().toString(),
						true, MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalDeServiçosEletrônicaRPS, trxName);
				setProtocol (new MLBRNotaFiscal (ctx, LBR_NotaFiscal_ID, trxName), compNfse);
			}
		}
		
		return true;
	}	//	transmit
	
	/**
	 * Consultar Estado da NF-e de Serviço após a Transmissão
	 */
	public boolean consult (MLBRNotaFiscal nf) throws Exception
	{
		log.info ("NFSE Consult Process");
		
		ConsultarNfseRpsEnvioDocument document = ConsultarNfseRpsEnvioDocument.Factory.newInstance();
		ConsultarNfseRpsEnvio rpsEnvio = document.addNewConsultarNfseRpsEnvio();
		TcIdentificacaoRps identificacaoRps = rpsEnvio.addNewIdentificacaoRps();
		
		identificacaoRps.setNumero(Long.valueOf(nf.getDocumentNo()));
		identificacaoRps.setSerie(nf.getlbr_NFSerie());
		identificacaoRps.setTipo(TIPO_RPS);
		
		TcIdentificacaoPrestador prestador = rpsEnvio.addNewPrestador();
		
		//	CPF/CNPJ Organização
		TcCpfCnpj cpfcnpjPrestador = prestador.addNewCpfCnpj();
		cpfcnpjPrestador.setCnpj(TextUtil.toNumeric(getCNPJ(nf)));
		
		
		//	Inscrição Municipal Organização
		if (nf.getlbr_OrgCCM() != null && !nf.getlbr_OrgCCM().isEmpty())
			prestador.setInscricaoMunicipal(TextUtil.toNumeric(getInscricaoMunicipal(nf)));
		
		IssWebWSStub nfseStub = new IssWebWSStub(getURL(nf));
		nfseStub._getServiceClient().getOptions().setProperty(HTTPConstants.CHUNKED, false);	
		
		MLBRDigitalCertificate.setCertificate (Env.getCtx(), nf.getAD_Org_ID());
		
		Reader reader = new StringReader(document.xmlText());
		XMLInputFactory factory = XMLInputFactory.newInstance();
		XMLStreamReader xmlReader = factory.createXMLStreamReader(reader);
		
		ConsultarNfseRpsEnvio_type0 consultarNfse = ConsultarNfseRpsEnvio_type0.Factory.parse(xmlReader);

		ConsultarNfseRpsResposta_type0 result = nfseStub.consultarNfsePorRps(consultarNfse, getUser(nf), getPassword(nf));
		
		//Monitorar envio do Stub
		String request = nfseStub._getServiceClient().getLastOperationContext().getMessageContext("Out")
				.getEnvelope().toString();
		
		log.info(request);
		
		ListaMensagemRetorno_type0 listaMensagemRetorno = result.getListaMensagemRetorno();
		if (listaMensagemRetorno != null)
		{
			StringBuilder msgRetorno = new StringBuilder ();
			Arrays.asList(listaMensagemRetorno.getMensagemRetorno())
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
		QName qname = new javax.xml.namespace.QName("http://www.abrasf.org.br/nfse.xsd", "Nfse");
		
		br.org.abrasf.www.nfse_xsd.TcCompNfse compNfse = result.getCompNfse();
		
		//OMElement omElement = compNfse.getOMElement(qname, OMAbstractFactory.getOMFactory());
	
		//	Adicionar Protocolo do Lote
		if (result.getCompNfse() != null 
				&& !result.getCompNfse().getNfse().getInfNfse().getCodigoVerificacao().isEmpty())
		{
		//	setProtocol (nf, resposta.getCompNfse());
		}
		else
			throw new AdempiereException("Erro ao Transmitir NFS-e");
		
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
			
			//			Attachment
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
			}
			
			if (nf.getlbr_OrgPostal() != null && !nf.getlbr_OrgPostal().isEmpty())
			{
				map.put("CEPPrestador", nf.getlbr_OrgPostal());
			}
			
			if (nf.getlbr_BPCNPJ() != null && !nf.getlbr_BPCNPJ().isEmpty())
			{
				map.put("cnpjtomador", nf.getlbr_BPCNPJ());
			}
			
			if (nf.getlbr_BPPostal() != null && !nf.getlbr_BPPostal().isEmpty())
			{
				map.put("CEPTomador", nf.getlbr_BPPostal());
			}
			
			if (nf.getlbr_BPCity() != null && !nf.getlbr_BPCity().isEmpty())
			{
				map.put("cidadetomador", nf.getlbr_BPCity());
			}
			
			if (MSysConfig.getValue(SysConfig.LBR_NFSE_ABRASF201_JASPER_CITY_LOGO, null, nf.getAD_Client_ID(), nf.getAD_Org_ID()) != null) {
				File logoprefeitura = new File(MSysConfig.getValue(SysConfig.LBR_NFSE_ABRASF201_JASPER_CITY_LOGO, "", nf.getAD_Client_ID(), nf.getAD_Org_ID()));
				byte[] logoprefeituraimg = Files.readAllBytes(logoprefeitura.toPath());
				map.put("logotipoprefeitura", new ByteArrayInputStream(logoprefeituraimg));
			}

			MLBRNotaFiscalLine nfl = nf.getLines()[0];
			Integer c_city_id = nfl.getC_City_ID();
			if (c_city_id > 0) {
				org.compiere.model.MCity city = MCity.get(Env.getCtx(), c_city_id);
				map.put("cidadeincidencia", city.getName());
			}
			
			if(nf.getOrg_Location().getC_City_ID() == TAPIRAI_ID) {
				map.put("prefeitura", "MUNICÍPIO DE TAPIRAÍ");
				map.put("secretaria", "Departamento de Finanças e Administração");
			}
			
			String Authenticity = MSysConfig.getValue (SysConfig.LBR_NFSE_ABRASF201_JASPER_AUTHENTICITY_TEXT, "", nf.getAD_Client_ID(), nf.getAD_Org_ID());
			map.put("autenticidade", Authenticity);

			if (nf.getlbr_CNPJ() != null && !nf.getlbr_OrgCity().isEmpty() 
					&& !nf.getlbr_OrgRegion().isEmpty())
			{
				map.put("cnpjprestador", nf.getlbr_CNPJ());
				map.put("cidadeprestador", nf.getlbr_OrgCity());
				map.put("UFprestador", nf.getlbr_OrgRegion());
			}
			
			MOrgInfo orgInf = MOrgInfo.get (nf.getCtx(), nf.getAD_Org_ID(), null);
			map.put("emailprestador", orgInf.getEMail());
			map.put("telefoneprestador", orgInf.getPhone());
			
			//	Get Jasper
			ClassLoader cl = getClass().getClassLoader();
			InputStream report = cl.getResourceAsStream("org/kenos/idempiere/lbr/nfse/report/ImpressaoNFSEABRASF201.jasper");
			
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
		
		CancelarNfseEnvioDocument cancelDoc = CancelarNfseEnvioDocument.Factory.newInstance();
		CancelarNfseEnvio cancelNf = cancelDoc.addNewCancelarNfseEnvio();
		
		TcPedidoCancelamento cancelOrder = cancelNf.addNewPedido();
		TcInfPedidoCancelamento infCancelOrder = cancelOrder.addNewInfPedidoCancelamento();
		infCancelOrder.setCodigoCancelamento((byte) 2);
		infCancelOrder.setId("1");
		
		TcIdentificacaoNfse identNfse = infCancelOrder.addNewIdentificacaoNfse();
		identNfse.setNumero(new BigDecimal(nf.getlbr_NFENo()).longValue());
		identNfse.setCodigoMunicipio(nf.getlbr_BPCityCode());
		identNfse.setInscricaoMunicipal(TextUtil.toNumeric(getInscricaoMunicipal(nf)));

		TcCpfCnpj cpfcnpjPrestador = identNfse.addNewCpfCnpj();
		cpfcnpjPrestador.setCnpj(TextUtil.toNumeric(getCNPJ(nf)));
				
		try
		{
			MOrgInfo orgInf = MOrgInfo.get (nf.getCtx(), nf.getAD_Org_ID(), null);
			new SignatureUtil (orgInf, SignatureUtil.OUTROS, "InfPedidoCancelamento").sign (cancelDoc, cancelNf.getPedido().newCursor());
			
			//	Valida o documento
			NFeUtil.validate (cancelDoc);
					
			//	Set certificate
			MLBRDigitalCertificate.setCertificate (Env.getCtx(), nf.getAD_Org_ID());
			
			String url = getURL(nf);
			
			IssWebWSStub nfseStub = new IssWebWSStub(url);
			nfseStub._getServiceClient().getOptions().setProperty(HTTPConstants.CHUNKED, false);	
			
			CancelarNfseRespostaDocument document = CancelarNfseRespostaDocument.Factory.newInstance();
			
			Reader reader = new StringReader(cancelDoc.xmlText());
			XMLInputFactory factory = XMLInputFactory.newInstance();
			XMLStreamReader xmlReader = factory.createXMLStreamReader(reader);
			
			CancelarNfseEnvio_type0 cancelarEnvioDoc = CancelarNfseEnvio_type0.Factory.parse(xmlReader); 
			
			CancelarNfseResposta_type0 result = nfseStub.cancelarNfse(cancelarEnvioDoc,getUser(nf),getPassword(nf));
			
			//Monitorar envio do Stub
			String request = nfseStub._getServiceClient().getLastOperationContext().getMessageContext("Out")
					.getEnvelope().toString();
			//System.out.println(request);
			
			//	Check error messages
			ListaMensagemRetorno_type0 listaMensagemRetorno = result.getListaMensagemRetorno();
			if (listaMensagemRetorno != null)
			{
				StringBuilder msgRetorno = new StringBuilder ();
				Arrays.asList(listaMensagemRetorno.getMensagemRetorno())
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
			if (result.getRetCancelamento() != null 
					&& result.getRetCancelamento().getNfseCancelamento() != null)
			{
				setCancel (nf, result.getRetCancelamento().getNfseCancelamento());
			}
			else
				return false;
		}
		catch (Exception e)
		{
			throw new AdempiereException(e.getMessage());
		}	
		
		return true;
	}	//	cancel

	private void setCancel(MLBRNotaFiscal nf, br.org.abrasf.www.nfse_xsd.TcCancelamentoNfse tcCancelamentoNfse)
	{
		setCancel (nf, tcCancelamentoNfse, null);
	}
	
	private void setCancel(MLBRNotaFiscal nf, br.org.abrasf.www.nfse_xsd.TcCancelamentoNfse tcCancelamentoNfse, String msg)
	{
		//	Can't change cancel reason after NF is cancelled
		if (!nf.isCancelled())
		{
			if (tcCancelamentoNfse != null)
			{			
				QName qname = new javax.xml.namespace.QName("http://www.abrasf.org.br/nfse.xsd", "cancelarNfse");
				try {
					OMElement omElement = tcCancelamentoNfse.getOMElement(qname, OMAbstractFactory.getOMFactory());
					SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm aa");
					nf.setlbr_MotivoCancel("" + dateFormat.format(tcCancelamentoNfse.getConfirmacao().getDataHora().getTime()));
				} 
				catch (ADBException e) {
					e.printStackTrace();
				}
			}
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