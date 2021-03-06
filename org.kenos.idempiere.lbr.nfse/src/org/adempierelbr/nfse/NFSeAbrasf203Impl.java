package org.adempierelbr.nfse;

import java.awt.Desktop;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.math.BigDecimal;
import java.net.URL;
import java.util.Calendar;
import java.util.List;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.nfse.util.FixedTxt;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.SignatureUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.adempierelbr.wrapper.I_W_C_Invoice;
import org.apache.axis2.transport.http.HTTPConstants;
import org.apache.xmlbeans.XmlCursor;
import org.compiere.model.MBPartner;
import org.compiere.model.MInvoice;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

import br.org.abrasf.nfse.CabecalhoDocument.Cabecalho;
import br.org.abrasf.nfse.CancelarNfseEnvioDocument.CancelarNfseEnvio;
import br.org.abrasf.nfse.TcContato;
import br.org.abrasf.nfse.TcCpfCnpj;
import br.org.abrasf.nfse.TcDadosServico;
import br.org.abrasf.nfse.TcDadosTomador;
import br.org.abrasf.nfse.TcDeclaracaoPrestacaoServico;
import br.org.abrasf.nfse.TcEndereco;
import br.org.abrasf.nfse.TcIdentificacaoNfse;
import br.org.abrasf.nfse.TcIdentificacaoPrestador;
import br.org.abrasf.nfse.TcIdentificacaoRps;
import br.org.abrasf.nfse.TcIdentificacaoTomador;
import br.org.abrasf.nfse.TcInfDeclaracaoPrestacaoServico;
import br.org.abrasf.nfse.TcInfPedidoCancelamento;
import br.org.abrasf.nfse.TcInfRps;
import br.org.abrasf.nfse.TcPedidoCancelamento;
import br.org.abrasf.nfse.TcValoresDeclaracaoServico;
import br.org.abrasf.nfse.TsCodigoMunicipioIbge;
import br.org.abrasf.nfse.TsItemListaServico;
import br.org.abrasf.nfse.webservice.NfseWSServiceStub;
import br.org.abrasf.nfse.webservice.NfseWSServiceStub.CancelarNfseRequest;
import br.org.abrasf.nfse.webservice.NfseWSServiceStub.GerarNfseRequest;
import br.org.abrasf.nfse.webservice.NfseWSServiceStub.Input;

/**
 * 		NFS-e de Cidades que Utilizam Abrasf Versão 2.03 - Ginfes
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: NFSeIndaiatubaImpl.java, v1.0 2019/07/31 14:59:06, SFUSER Exp $
 */
public class NFSeAbrasf203Impl implements INFSe
{
	/** Log				*/
	private static CLogger log = CLogger.getCLogger(NFSeAbrasf203Impl.class);
	
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
	
	/**
	 * Namespace
	 */
	public String namespace = "";
	public String url = "";
	public Integer C_City_ID = 0;
	
	/**
	 * Cidades que utilizam NFS-e Abrasf
	 */
	public static final Integer	 INDAIATUBA_ID = 1004960;
	
	/**
	 * 
	 */
	private static final String FILE_XML_RECIBO_NFSE = "-recibo.xml";
	
	private static final String FILE_XML_NFSE_AUTORIZADO = "-nfseOK-dst.xml";

	/**
	 *  Tipo de integração, via Webservice ou via arquivo de RPS
	 */
	
	public String getType()
	{
		return TYPE_SYNCHRONOUS;
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
		
		MInvoice invoice = (MInvoice)nf.getC_Invoice();
		I_W_C_Invoice winvoice = POWrapper.create(invoice, I_W_C_Invoice.class);
		
		// Data da NF
		Calendar dateDoc = Calendar.getInstance();
		dateDoc.setTime(nf.getDateDoc());		
		
		//	Criar RPS
		TcDeclaracaoPrestacaoServico rps = TcDeclaracaoPrestacaoServico.Factory.newInstance();
		
		XmlCursor cursor= rps.newCursor();
		cursor.toNextToken();
		cursor.insertNamespace("A", namespace);
		//For example
		cursor.insertNamespace("xsi", "http://www.w3.org/2001/XMLSchema-instance");
		cursor.dispose();
		
		//	Detalhes da Declaração de Prestação de Serviço
		TcInfDeclaracaoPrestacaoServico infdps = rps.addNewInfDeclaracaoPrestacaoServico();						
		TcInfRps infRps = infdps.addNewRps();
		//	Identificação do RPS
		TcIdentificacaoRps indRps = infRps.addNewIdentificacaoRps();
		indRps.setNumero(new BigDecimal(nf.getDocumentNo()).longValue());
		indRps.setSerie(nf.getlbr_NFSerie());
		indRps.setTipo((byte)1);
		infRps.setDataEmissao(dateDoc);
		infRps.setStatus((byte)1);
		//	Competencia
		infdps.setCompetencia(dateDoc);
		
		//	Identificação do Prestador de Serviço
		TcIdentificacaoPrestador prestador = infdps.addNewPrestador();
		
		//	CPF/CNPJ Organização
		TcCpfCnpj cpfcnpjPrestador = prestador.addNewCpfCnpj();
		cpfcnpjPrestador.setCnpj(TextUtil.retiraEspecial(nf.getlbr_CNPJ()));

		//	Inscrição Municipal Organização
		if (nf.getlbr_OrgCCM() != null && !nf.getlbr_OrgCCM().isEmpty())
			prestador.setInscricaoMunicipal(nf.getlbr_OrgCCM());
			
		//	Identificação do Parceiro de Negócio Tomador do Serviço
		TcDadosTomador dadosTomador = infdps.addNewTomador();
		TcIdentificacaoTomador tomador = dadosTomador.addNewIdentificacaoTomador(); 
		TcCpfCnpj cpfcnpjTomador = tomador.addNewCpfCnpj();
		
		// CPF ou CNPJ do Parceiro de Negócio
		if (MLBRNotaFiscal.LBR_BPTYPEBR_PJ_LegalEntity.equals(nf.getlbr_BPTypeBR()))
			cpfcnpjTomador.setCnpj(TextUtil.retiraEspecial(nf.getlbr_BPCNPJ()));
		else
			cpfcnpjTomador.setCpf(TextUtil.retiraEspecial(nf.getlbr_BPCNPJ()));
		
		//	Inscriçaõ Municipal do Parceiro de Negócio
		if (partner.get_ValueAsString("LBR_CCM") != null && !partner.get_ValueAsString("LBR_CCM").isEmpty())
			tomador.setInscricaoMunicipal(partner.get_ValueAsString("LBR_CCM"));
		
		//	Dados do Tomador do Serviço / Parceiro de Negócio
		dadosTomador.setRazaoSocial(TextUtil.retiraEspecial(nf.getBPName()));
		TcEndereco endTomador = dadosTomador.addNewEndereco();
		endTomador.setEndereco(TextUtil.retiraEspecial(nf.getlbr_BPAddress1()));
		endTomador.setNumero(TextUtil.retiraEspecial(nf.getlbr_BPAddress2()));
		endTomador.setBairro(TextUtil.retiraEspecial(nf.getlbr_BPAddress3()));
		endTomador.setCodigoMunicipio(nf.getlbr_BPCityCode());
		endTomador.setCep(TextUtil.toNumeric (nf.getlbr_BPPostal()));
		
		// Contato do Parceiro de Negócio
		TcContato contatoTomador = dadosTomador.addNewContato();
		if (nf.getlbr_BPPhone() != null && !nf.getlbr_BPPhone().isEmpty())
			contatoTomador.setTelefone(TextUtil.retiraEspecial(nf.getlbr_BPPhone()));
		if (partner.get_ValueAsString("LBR_EMailNFe") != null && !partner.get_ValueAsString("LBR_EMailNFe").isEmpty())
			contatoTomador.setEmail(partner.get_ValueAsString("LBR_EMailNFe"));
		
		//	Descrição do Serviço
		String descricaoServico = "";
		String serviceCode = "";
		BigDecimal aliquota = BigDecimal.ZERO;
		
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
					else
						descricaoServico = descricaoServico + "\n" + nfl.getProductName();
				}
				
				MProduct p = new MProduct (Env.getCtx(), nfl.getM_Product_ID(), null);
				if (p.get_ValueAsString("lbr_ServiceCode") != null)
				{
					//	Mesmo código de serviço para todos os serviços prestados
					if (serviceCode.equals(""))
						serviceCode = p.get_ValueAsString("lbr_ServiceCode");	//	FIXME : Copiar para LBR_NotaFiscalLine
					else if (!serviceCode.equals(p.get_ValueAsString("lbr_ServiceCode")))
					{
						nf.setErrorMsg("Impossível gerar NFS-e. Todos os serviços da NFS-e devem conter o mesmo Código de Serviço");
						return null;
					}
						
					//	Mesma Alíquota de ISS para todos os serviços prestados
					if (aliquota.equals(BigDecimal.ZERO))
							aliquota = nfl.getTaxRate("ISS");
					else if (!aliquota.equals(nfl.getTaxRate("ISS")))
					{
						nf.setErrorMsg("Impossível gerar XML NFS-e. Todos os serviços da NFS-e devem conter o mesmo Código de Serviço");
						return null;
					}
				}								
			}
		}
		
		//	Identificação dos Serviços prestados
		TcDadosServico dadosServico = infdps.addNewServico();		
	
		// Discriminação do Serviço
		dadosServico.setDiscriminacao(descricaoServico);
		dadosServico.setItemListaServico(TsItemListaServico.Enum.forString(serviceCode));
		dadosServico.setIssRetido((byte)(winvoice.isLBR_HasWithhold() ? 1 : 1));
		dadosServico.setCodigoMunicipio(nf.getlbr_BPCityCode());
		
		//	FIXME: Criar campo ExigibilidadeISS
		/*	1 - Exigível;
			2 - Não incidência;
			3 - Isenção;
			4 - Exportação;
			5 - Imunidade;
			6 - Exigibilidade Suspensa por Decisão Judicial;
			7 - Exigibilidade Suspensa por Processo Administrativo*/
		
		dadosServico.setExigibilidadeISS((byte)1);
		dadosServico.setMunicipioIncidencia(nf.getlbr_BPCityCode());
		
		//	Valores dos Serviços
		TcValoresDeclaracaoServico valores = dadosServico.addNewValores();
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
		valores.setValTotTributos(nf.getlbr_vTotTrib());
		valores.setDescontoIncondicionado(BigDecimal.ZERO);
		valores.setDescontoCondicionado(nf.getDiscountAmt());
		
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
			new SignatureUtil (orgInf, SignatureUtil.RPS, "nfd").sign (rps, rps.newCursor());
					
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
			
		Cabecalho header = Cabecalho.Factory.newInstance();
		header.setVersao("2.03");
		header.setVersaoDados("");
		
		/**
		 *	Enviar NF-e
		 */
		//
		Input inputXmlNfse = new Input();
		inputXmlNfse.setNfseCabecMsg(header.xmlText());
		inputXmlNfse.setNfseDadosMsg(xml);
		
		//	Set certificate
		MLBRDigitalCertificate.setCertificate (Env.getCtx(), nf.getAD_Org_ID());
		
		GerarNfseRequest gerarNfseRequest = new GerarNfseRequest();
		gerarNfseRequest.setGerarNfseRequest(inputXmlNfse);
		
		NfseWSServiceStub nfseStub = new NfseWSServiceStub();
		
		nfseStub._getServiceClient().getOptions().setProperty(HTTPConstants.CHUNKED, false);	
				
		String result = nfseStub.gerarNfse(gerarNfseRequest).getGerarNfseResponse().getOutputXML();
		
		return true;
	}	//	transmit
	
	/**
	 * 	Transmissão de RPS em lote
	 */
	public boolean transmit (Properties ctx, int AD_Org_ID, String trxName, List<MLBRNotaFiscal> nfs) throws Exception
	{
		log.info ("NFSETransmit Process");
		
		return false;
	}	//	transmit
	
	/**
	 * Consultar Estado da NF-e de Serviço após a Transmissão
	 */
	public boolean consult(MLBRNotaFiscal nf) throws Exception
	{
		log.info ("NFSE Consult Process");
				
		return true;
	}	// consult
	
	
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
		return value.setScale(2, BigDecimal.ROUND_HALF_UP).stripTrailingZeros();
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
		try
		{			
			if (!Desktop.isDesktopSupported()) 
				return "@Error@" + "Impossível abrir o arquivo";
			
			//	Abrir DANFE
			Desktop.getDesktop().open(getPDF(nf));
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
		File PDF = null;
		InputStream is = null;
		
		try
		{
			//	XML com a URL da DANFE
			String xml = getURLVisualizarNF(nf);
			
			//	URL de Impressão
			String path = getTagValue(xml.replace("amp;", ""), "urlAutenticidade");
			
			//	URL
			URL url = new URL (path);
			
			//	Abrir Stream
			is = url.openStream();
			
			//	String Buffere com a estimativa de Quantidade de Bytes da String
			byte[] buffer = new byte[is.available()];
			
			//	Receber dados
		    ByteArrayOutputStream baos = new ByteArrayOutputStream();

		    //	Quantidade de Bytes Lidos
		    int bytesRead;
		    
		    //	Leitura dos Bytes
		    while ((bytesRead = is.read(buffer)) != -1)
		    {
		        baos.write(buffer, 0, bytesRead);
		    }
		    
			//	Criar Arquivo no Temp
			PDF = File.createTempFile("NFSe" + nf.getlbr_NFENo() + "-", ".pdf");
			
			//	Preencher o Arquivo.
			FileOutputStream file = new FileOutputStream(PDF);
			file.write(baos.toByteArray());
			file.flush();
			file.close();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return PDF;
	}	
	
	/**
	 * Cancel NFS-e
	 * @param nf
	 * @return
	 */
	public String cancel(MLBRNotaFiscal nf)
	{
		MOrgInfo orgInf = MOrgInfo.get (nf.getCtx(), nf.getAD_Org_ID(), null);
		
		CancelarNfseEnvio cancelNf = CancelarNfseEnvio.Factory.newInstance();
		
		TcPedidoCancelamento cancelOrder = cancelNf.addNewPedido();
		TcInfPedidoCancelamento infCancelOrder = cancelOrder.addNewInfPedidoCancelamento();
		
		TcIdentificacaoNfse identNfse = infCancelOrder.addNewIdentificacaoNfse();
		
		identNfse.setNumero(new BigDecimal(nf.getDocumentNo()).longValue());
		
		//	CPF/CNPJ Organização
		/*TcCpfCnpj cpfcnpjPrestador = identNfse.addNewCpfCnpj();
		cpfcnpjPrestador.setCnpj(TextUtil.retiraEspecial(nf.getlbr_CNPJ()));
		identNfse.setInscricaoMunicipal(nf.getlbr_OrgCCM());*/
		
		TsCodigoMunicipioIbge ibge =  TsCodigoMunicipioIbge.Factory.newInstance();
		ibge.set(BPartnerUtil.getCityCode (nf.getlbr_OrgRegion(), nf.getlbr_OrgCity()));
		identNfse.xsetCodigoMunicipio(ibge);
		
		Cabecalho header = Cabecalho.Factory.newInstance();
		header.setVersao("2.03");
		header.setVersaoDados("");
		
		/**
		 *	Enviar NF-e
		 */
		//
		Input inputXmlNfse = new Input();
		inputXmlNfse.setNfseCabecMsg(header.xmlText());
		inputXmlNfse.setNfseDadosMsg(cancelOrder.getInfPedidoCancelamento().xmlText());
		
		CancelarNfseRequest resquest = new CancelarNfseRequest();
		resquest.setCancelarNfseRequest(inputXmlNfse);
		
		try
		{
			//	Set certificate
			MLBRDigitalCertificate.setCertificate (Env.getCtx(), nf.getAD_Org_ID());
			
			NfseWSServiceStub nfseStub = new NfseWSServiceStub();
			
			nfseStub._getServiceClient().getOptions().setProperty(HTTPConstants.CHUNKED, false);	
			
			String result = nfseStub.cancelarNfse(resquest).getCancelarNfseResponse().getOutputXML();
		}
		catch (Exception e)
		{
			new AdempiereException(e.getMessage());
		}	
		
		return null;
	}
	
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