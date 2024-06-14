package org.adempierelbr.nfse.atibaia;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpRequest.BodyPublishers;
import java.net.http.HttpResponse;
import java.net.http.HttpResponse.BodyHandlers;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.atomic.AtomicBoolean;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.webui.apps.AEnv;
import org.adempiere.webui.component.Window;
import org.adempiere.webui.session.SessionManager;
import org.adempiere.webui.window.SimplePDFViewer;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.nfse.INFSe;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TextUtil;
import org.apache.commons.io.FileUtils;
import org.apache.xmlbeans.XmlOptions;
import org.compiere.model.MAttachment;
import org.compiere.model.MSysConfig;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.base.model.SysConfig;

import br.gov.sp.atibaia.nfse.NfeRespostaDocument;
import br.gov.sp.atibaia.nfse.NfeRespostaDocument.NfeResposta;
import br.gov.sp.atibaia.nfse.cancela.NfeDocument.Nfe.CancelaNota;
import br.gov.sp.atibaia.nfse.emissao.NfeDocument;
import br.gov.sp.atibaia.nfse.emissao.NfeDocument.Nfe;
import br.gov.sp.atibaia.nfse.emissao.NfeDocument.Nfe.NotaFiscal;
import br.gov.sp.atibaia.nfse.emissao.NfeDocument.Nfe.NotaFiscal.DadosPrestador;
import br.gov.sp.atibaia.nfse.emissao.NfeDocument.Nfe.NotaFiscal.DadosServico;
import br.gov.sp.atibaia.nfse.emissao.NfeDocument.Nfe.NotaFiscal.DadosTomador;
import br.gov.sp.atibaia.nfse.emissao.NfeDocument.Nfe.NotaFiscal.DetalheAutorizacao;
import br.gov.sp.atibaia.nfse.emissao.NfeDocument.Nfe.NotaFiscal.DetalheAutorizacao.Messages;
import br.gov.sp.atibaia.nfse.emissao.NfeDocument.Nfe.NotaFiscal.DetalheServico;
import br.gov.sp.atibaia.nfse.emissao.NfeDocument.Nfe.NotaFiscal.DetalheServico.Item;

/**
 * 	NFS-e Atibaia
 * @author Ricardo Santana
 */
public class NFSeAtibaiaImpl implements INFSe 
{
	/**	Atibaia City ID		*/
	public static final Integer C_City_ID = 1004770;

	/**	Atibaia only works with 1.1 HTTP version */
	protected static final HttpClient.Version httpVersion = HttpClient.Version.HTTP_1_1;
	
	XmlOptions xmlOptions = null;
	
	@Override
	public String getType() {
		/**
		 * 	Authorization came in the same request
		 */
		return TYPE_SYNCHRONOUS;
	}	//	getType

	/**
	 * 	Default Constructor
	 */
	public NFSeAtibaiaImpl () {
		Map<String, String> namespaces = new HashMap<>();
		namespaces.put("", "http://nfse.atibaia.sp.gov.br/cancela");
		namespaces.put("", "http://nfse.atibaia.sp.gov.br/emissao");
		
		xmlOptions = new XmlOptions();
		xmlOptions.setUseDefaultNamespace();
		xmlOptions.setCharacterEncoding(TextUtil.ISO88591);
		xmlOptions.setSaveSuggestedPrefixes(null);
		xmlOptions.setSaveImplicitNamespaces(namespaces);
	}	//	NFSeAtibaiaImpl
	
	@Override
	public byte[] getXML(MLBRNotaFiscal nf) throws Exception {
		
		NfeDocument document = NfeDocument.Factory.newInstance();
		NotaFiscal notaFiscal = document.addNewNfe().addNewNotaFiscal();
		
		//	Dados do Prestador
		DadosPrestador prestador = notaFiscal.addNewDadosPrestador();
		prestador.setDataEmissao(TextUtil.timeToString(nf.getDateDoc(), "dd/MM/yyyy"));
		prestador.setIm(nf.getlbr_OrgCCM());
		prestador.setNumeroRps(Integer.valueOf(nf.getDocumentNo()));
		
		//	Dados do Serviço
		DadosServico dadosServico = notaFiscal.addNewDadosServico();
		if (nf.getlbr_OrgAddress3() != null)
			dadosServico.setBairro(nf.getlbr_OrgAddress3());
		dadosServico.setCep(TextUtil.toNumeric(nf.getlbr_OrgPostal()));
		dadosServico.setCidade(nf.getlbr_OrgCity());
		if (nf.getlbr_OrgAddress4() != null)
			dadosServico.setComplemento(nf.getlbr_OrgAddress4());
		dadosServico.setLogradouro(nf.getlbr_OrgAddress1());
		dadosServico.setNumero(nf.getlbr_OrgAddress2());
		dadosServico.setPais("BRASIL");
		dadosServico.setUf(nf.getlbr_OrgRegion());
		
		//	Dados do Tomador
		DadosTomador dadosTomador = notaFiscal.addNewDadosTomador();
		if (nf.getlbr_BPAddress3() != null)
			dadosTomador.setBairro(nf.getlbr_BPAddress3());
		dadosTomador.setCep(TextUtil.toNumeric(nf.getlbr_BPPostal()));
		dadosTomador.setCidade(nf.getlbr_BPCity());
		if (nf.getlbr_BPAddress4() != null)
			dadosTomador.setComplemento(nf.getlbr_BPAddress4());
		dadosTomador.setDocumento(TextUtil.toNumeric(nf.getlbr_BPCNPJ()));
		dadosTomador.setEmail(nf.getLBR_EMailNFe());
		if (nf.getlbr_BPIE() == null)
			dadosTomador.setIe("ISENTO");
		else
			dadosTomador.setIe(nf.getlbr_BPIE());
		dadosTomador.setLogradouro(nf.getlbr_BPAddress1());
		dadosTomador.setNumero(nf.getlbr_BPAddress2());
		dadosTomador.setNomeTomador(nf.getBPName());
		dadosTomador.setPais(nf.getlbr_BPCountry());
		dadosTomador.setUf(nf.getlbr_BPRegion());
		
		/**
		 * 	PJ -> J
		 *  PF -> F
		 *  XX -> X
		 */
		if (nf.getlbr_BPTypeBR() != null)
			notaFiscal.getDadosTomador().setTipoDoc(nf.getlbr_BPTypeBR().substring(1));
		
		BigDecimal csll = nf.getTaxAmt("CSLL");
		BigDecimal cofins = nf.getTaxAmt("COFINSSERV");
		BigDecimal inss = nf.getTaxAmt("INSS");
		BigDecimal ir = nf.getTaxAmt("IR");
		BigDecimal pis = nf.getTaxAmt("PISSERV");

		BigDecimal issrt = nf.getTaxAmt("ISSRT");
		BigDecimal issRate = nf.getTaxRate("ISS");

		DetalheServico det = notaFiscal.addNewDetalheServico();
		if (csll != null)
			det.setCsll(csll);
		if (cofins != null)
			det.setCofins(cofins);
		if (inss != null)
			det.setInss(inss);
		if (ir != null)
			det.setIr(ir);
		if (issrt != null && issrt.signum() ==1)
			det.setIssRetido(Env.ONE.setScale(0));
		else
			det.setIssRetido(Env.ZERO.setScale(0));
		if (pis != null)
			det.setPisPasep(pis);
		det.setDeducaoMaterial(Env.ZERO);
		det.setDescontoIncondicional(Env.ZERO);
		
		String serviceCode = "";
		String serviceDesc = "";
		for (MLBRNotaFiscalLine line : nf.getLines())
		{
			if (!line.islbr_IsService() || line.getlbr_ServiceCode() == null || line.getlbr_ServiceCode().isBlank())
				continue;
			//
			serviceCode = line.getlbr_ServiceCode();
			serviceDesc = line.getProductName();
			issRate 	= line.getTaxRate("ISS");
			break;
		}
		
		if (serviceCode == null || serviceCode.isBlank())
			throw new Exception ("Código do serviço inválido.");
		
		det.setObs(nf.getlbr_FiscalOBS() + "\n" + nf.getDescription());
		
		//	Itens
		Item item = det.addNewItem();
		if (issRate != null)
			item.setAliquota(issRate.stripTrailingZeros().setScale(2));
		item.setCodigo(Integer.parseInt(TextUtil.toNumeric(serviceCode)));
		item.setDescricao(serviceDesc);
		item.setValor(nf.getlbr_ServiceTotalAmt());
		
		String xmlText = document.xmlText(xmlOptions);
		NFeUtil.saveXML (String.valueOf(nf.getAD_Org_ID()), NFeUtil.KIND_NFSE, NFeUtil.MESSAGE_XML, nf.getDocumentNo(), xmlText.toString());
		
		return xmlText.getBytes(TextUtil.ISO88591);
	}	//	getXML

	@Override
	public StringBuilder getRPS(List<MLBRNotaFiscal> nfs) throws Exception {
		return null;
	}	//	getRPS

	@Override
	public boolean transmit(MLBRNotaFiscal nf) throws Exception {
		List<MLBRNotaFiscal> nfArray = new ArrayList<MLBRNotaFiscal>();
		nfArray.add(nf);
		//
		return transmit (nf.getCtx(), nf.getAD_Org_ID(), nf.get_TrxName(), nfArray);
	}	//	transmit

	@Override
	public boolean transmit(Properties ctx, int AD_Org_ID, String trxName, List<MLBRNotaFiscal> nfs) throws Exception {
		
		int AD_Client_ID = Env.getAD_Client_ID (ctx);
		List<NotaFiscal> notaFiscalList = new ArrayList<NotaFiscal> ();
		AtomicBoolean isHomolog = new AtomicBoolean(false);
		
		nfs.stream().forEach(nf -> {
			//	Check for homologation
			isHomolog.set(isHomolog.get() || MLBRNotaFiscal.LBR_NFEENV_Homologation.equals(nf.getlbr_NFeEnv()));
			
			byte[] xmlData = nf.getAttachmentData("xml");
			if (xmlData == null || xmlData.length == 0)
				throw new AdempiereException ("XML not found");
			//
			try
			{
				NfeDocument document = NfeDocument.Factory.parse (new String (xmlData, NFeUtil.NFE_ENCODING));
				notaFiscalList.addAll (Arrays.asList (document.getNfe ().getNotaFiscalArray ()));
			}
			catch (Exception e)
			{
				e.printStackTrace();
			}
		});
		
		NfeDocument document = NfeDocument.Factory.newInstance();
		Nfe nfe = document.addNewNfe();
		String[] ccm = {""};
		//
		notaFiscalList.stream().forEach(l -> {
			NotaFiscal notaFiscal = nfe.addNewNotaFiscal();
			notaFiscal.set(l);
			//
			ccm[0] = notaFiscal.getDadosPrestador().getIm();
		});
		
		String token = MSysConfig.getValue(SysConfig.LBR_NFSE_TOKEN, AD_Client_ID, AD_Org_ID);
		String xmlText = document.xmlText(xmlOptions);
		String URL = "http://ws.prefeituradeatibaia.com.br/WSNfses/nfseresources/ws/v2/emissao";
		
		NFeUtil.saveXML (String.valueOf(AD_Org_ID), NFeUtil.KIND_NFSE, NFeUtil.MESSAGE_REQ_AUTORIZE, nfs.get(0).getDocumentNo(), xmlText.toString());

		if (token == null || token.isBlank())
			throw new Exception ("Token de comunicação com a prefeitura inválido.");
		
		//	Homologação
		if (isHomolog.get())
			URL += "/simula";
		
		HttpRequest request = HttpRequest.newBuilder(URI.create(URL))
				.version(httpVersion)
				.header("Authorization", ccm[0] + "-" + token)
				.header("Cache-Control", "no-cache")
				.header("Content-Type", "application/xml")
				.POST(BodyPublishers.ofString(xmlText))
				.build();

		HttpResponse<String> send = HttpClient.newHttpClient().send(request, BodyHandlers.ofString());
		
		NFeUtil.saveXML (String.valueOf(AD_Org_ID), NFeUtil.KIND_NFSE, NFeUtil.MESSAGE_RET_AUTORIZE, nfs.get(0).getDocumentNo(), send.body());

		if (send.statusCode() != 200)
			throw new Exception ("Failed to connect to Web Services: " + send.statusCode() + " - " + send.body());
		
		String body = send.body();
		NfeResposta response = NfeRespostaDocument.Factory.parse(body).getNfeResposta();
		AtomicBoolean success = new AtomicBoolean (false);
		
		nfs.stream().forEach(nf -> {
			byte[] xmlData = nf.getAttachmentData("xml");
			
			if (xmlData == null || xmlData.length == 0)
				throw new AdempiereException ("XML not found");
			//
			try
			{
				NfeDocument doc = NfeDocument.Factory.parse (new String (xmlData, NFeUtil.NFE_ENCODING));
				NotaFiscal nfxml = doc.getNfe().getNotaFiscalArray(0);
				DetalheAutorizacao autorizacao = nfxml.addNewDetalheAutorizacao();
				//
				Arrays.asList(response.getNotaFiscalArray()).stream()
					.filter(r -> nfs.size() == 1 || r.getNumeroRps() == nfxml.getDadosPrestador().getNumeroRps())
					.forEach(r -> {
						
						if (r.getStatusEmissao() != 200)
						{
							nf.setErrorMsg(r.getMessages().getCode() + " - " + r.getMessages().getMessage());
						}
						else
						{
							nf.setlbr_NFENo(String.valueOf(r.getNumeroNota()));
							nf.setErrorMsg(null);
							nf.setProcessed(true);
							nf.setlbr_NFeProt(r.getCodigoVerificacao());
							//
							autorizacao.setNumeroNota(r.getNumeroNota());
							autorizacao.setNumeroRps(r.getNumeroRps());
							autorizacao.setStatusEmissao(r.getStatusEmissao());
							autorizacao.setCodigoVerificacao(r.getCodigoVerificacao());
							//
							Messages messages = autorizacao.addNewMessages();
							messages.setCode(r.getMessages().getCode());
							messages.setMessage(r.getMessages().getMessage());
							//
							success.set(true);
						}
					});;
					
					//	Save if something was changed
					if (nf.is_Changed())
						nf.save();

					//	Anexa o XML na NF
					if (success.get()) {
						String xml = doc.xmlText(xmlOptions);
						
						if (nf.getAttachment (true) != null)
							nf.getAttachment ().delete (true);
						
						nf.getAttachment(true);	//	FIX
						MAttachment attachNFe = nf.createAttachment();
						attachNFe.addEntry("RPS-" + nf.getDocumentNo() + ".xml", xml.replaceAll("\\&\\#[0-9A-Za-z]*;|\\n", "").getBytes(NFeUtil.NFE_ENCODING));
						attachNFe.save();
					}
			}
			catch (Exception e)
			{
				e.printStackTrace();
			}
		});
		
		return success.get();
	}	//	transmit

	@Override
	public boolean consult(MLBRNotaFiscal nf) throws Exception {
		return false;
	}	//	consult

	@Override
	public boolean consult(Properties ctx, int AD_Org_ID, String trxName, List<MLBRNotaFiscal> nfs) throws Exception {
		return false;
	}	//	consult
	
	/**
	 *	Imprimir a NFS-e
	 * 	@return
	 */
	public String printNFSe (MLBRNotaFiscal nf)
	{
		try
		{
			File outFile = getPDF(nf);
			
			AEnv.executeAsyncDesktopTask(new Runnable() {			
				@Override
				public void run() {
					Window win;
					try {
						win = new SimplePDFViewer("Impressão de NFS-e", new FileInputStream(outFile));
						win.setAttribute(Window.MODE_KEY, Window.MODE_HIGHLIGHTED);
						SessionManager.getAppDesktop().showWindow(win, "center");
					} catch (FileNotFoundException e) {
						e.printStackTrace();
					}				
				}
			});
		}
		catch (Exception e)
		{
			return "@Error@ " + e.getMessage();
		}
		
		return "@Success@";
	}	//	printNFSe
	
    /** Error code for "Mês Competência". */
    public static final short ERRO_MES_COMPETENCIA        = 8;

    /** Error code for "Local da Prestação". */
    public static final short ERRO_LOCAL_PRESTACAO        = 9;

    /** Error code for "Alíquota". */
    public static final short ERRO_ALIQUOTA               = 10;

    /** Error code for "Base de Cálculo". */
    public static final short ERRO_BASE_CALCULO           = 11;

    /** Error code for "Descrição dos Serviços". */
    public static final short ERRO_DESCRICAO_SERVICOS     = 12;

    /** Error code for "Divergência Cadastral". */
    public static final short ERRO_DIVERGENCIA_CADASTRAL  = 13;

    /** Error code for "Dados do Tomador". */
    public static final short ERRO_DADOS_TOMADOR          = 14;
	
    /**
     * 	Cancel the NF
     */
	@Override
	public boolean cancel (MLBRNotaFiscal nf) throws Exception {
		String URL = "http://ws.prefeituradeatibaia.com.br/WSNfses/nfseresources/ws/v2/cancela";
		String token = MSysConfig.getValue(SysConfig.LBR_NFSE_TOKEN, nf.getAD_Client_ID(), nf.getAD_Org_ID());	

		br.gov.sp.atibaia.nfse.cancela.NfeDocument document = br.gov.sp.atibaia.nfse.cancela.NfeDocument.Factory.newInstance();
		CancelaNota cancelaNota = document.addNewNfe().addNewCancelaNota();
		cancelaNota.setCodigoMotivo(ERRO_DESCRICAO_SERVICOS);
		cancelaNota.setNumeroNota(Integer.parseInt(nf.getlbr_NFENo()));
		
		String xmlText = document.xmlText(xmlOptions);
		NFeUtil.saveXML (String.valueOf(nf.getAD_Org_ID()), NFeUtil.KIND_NFSE, NFeUtil.MESSAGE_REQ_CANCEL, nf.getDocumentNo(), xmlText.toString());

		HttpRequest request = HttpRequest.newBuilder(URI.create(URL))
				.version(httpVersion)
				.header("Authorization", nf.getlbr_OrgCCM() + "-" + token)
				.header("Cache-Control", "no-cache")
				.header("Content-Type", "application/xml")
				.POST(BodyPublishers.ofString(xmlText))
				.build();

		HttpResponse<String> send = HttpClient.newHttpClient().send(request, BodyHandlers.ofString());
		
		if (send != null && send.body() != null)
			NFeUtil.saveXML (String.valueOf(nf.getAD_Org_ID()), NFeUtil.KIND_NFSE, NFeUtil.MESSAGE_RET_CANCEL, nf.getDocumentNo(), send.body());

		if (send.statusCode() != 200)
			throw new Exception ("Failed to connect to Web Services: " + send.statusCode() + " - " + send.body());
		
		String body = send.body();
		NfeResposta response = NfeRespostaDocument.Factory.parse(body).getNfeResposta();
		
		return response !=null && response.getNotaFiscalArray() != null && response.getNotaFiscalArray()[0].getStatusEmissao() == 200;
	}	//	cancel

	/**
	 * 	Get the NF PDF
	 */
	@Override
	public File getPDF (MLBRNotaFiscal nf)
	{
		File PDF = null;
		InputStream is = null;
		
		try
		{
			//	Campos para Criar URL de Impressão da NFS-e
			String ccm = TextUtil.toNumeric (nf.getlbr_OrgCCM());
			String fullcod = nf.getlbr_NFeProt();
			
			if (fullcod == null || fullcod.trim().isEmpty())
				throw new Exception ("NFS-e sem o c\u00F3digo de autoriza\u00E7\u00E3o necess\u00E1rio para a impress\u00E3o");
			
			String cod = fullcod.substring(0, 7);
			
			//	URL de Impressão
			String message = MSysConfig.getValue ("LBR_NFSE_PRINT_URL", "http://nfse.prefeituradeatibaia.com.br/ords/atibaia/f?p=901:36::EMITENOTA:NO::P36_ID,P36_COTR_NUM_INSCRICAO,P36_LIVR_VERIFICACAO:{0},{1},{2}", nf.getAD_Client_ID(), nf.getAD_Org_ID());
			
			MessageFormat mf = null;
			mf = new MessageFormat (message);
			
			URL url = new URL (mf.format (new Object[]{cod, ccm, fullcod}));
			is = url.openStream();
			
			PDF = File.createTempFile("NFSe", ".pdf");
			FileUtils.copyInputStreamToFile(is, PDF);
			//
			is.close();
		}
		catch (MalformedURLException mue)
		{
			mue.printStackTrace();
		}
		catch (IOException ioe)
		{
			ioe.printStackTrace();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return PDF;
	}	//	getPDF
}	//	NFSeAtibaiaImpl
