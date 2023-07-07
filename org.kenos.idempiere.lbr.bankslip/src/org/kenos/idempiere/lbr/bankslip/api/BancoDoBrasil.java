package org.kenos.idempiere.lbr.bankslip.api;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.math.RoundingMode;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.compiere.util.CCache;
import org.compiere.util.TimeUtil;
import org.kenos.idempiere.lbr.bankslip.IBankSlipAPI;
import org.kenos.idempiere.lbr.bankslip.api.bb.ErroV2;
import org.kenos.idempiere.lbr.bankslip.api.bb.Errov2Erros;
import org.kenos.idempiere.lbr.bankslip.api.bb.RequisicaoBaixaBoleto;
import org.kenos.idempiere.lbr.bankslip.api.bb.RequisicaoRegistroBoletos;
import org.kenos.idempiere.lbr.bankslip.api.bb.RequisicaoRegistroBoletosJurosMora;
import org.kenos.idempiere.lbr.bankslip.api.bb.RequisicaoRegistroBoletosMulta;
import org.kenos.idempiere.lbr.bankslip.api.bb.RequisicaoRegistroBoletosPagador;
import org.kenos.idempiere.lbr.bankslip.api.bb.RespostaRegistroBoletos;
import org.kenos.idempiere.lbr.bankslip.api.bb.RespostaToken;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlip;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipContract;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipInfo;

import com.fasterxml.jackson.databind.ObjectMapper;

import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Request.Builder;
import retrofit2.Call;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.jackson.JacksonConverterFactory;

public class BancoDoBrasil implements IBankSlipAPI {

	private static final String BASE_URL = "https://api.sandbox.bb.com.br";
	private static final String BASE_URL_TOKEN = "https://oauth.sandbox.bb.com.br";
	private static final String PREFIXBANK = "000";

	/** Cache */
	private static CCache<Integer, String> s_cache = new CCache<Integer, String>(null, "NEKOT_UUID", 100, 59, true);
	private MLBRBankSlipContract contract = null;
	private InterfaceBB api = null;
	private String token = null;
	String clientCredentials = null;
	String devKey = null;
	
	public BancoDoBrasil(MLBRBankSlipContract contract) throws Exception {
		this.contract = contract;

		initialize();
	}

	@Override
	public IResponseAPI processBankSlip(MLBRBankSlip bankSlip) throws Exception {
		RequisicaoRegistroBoletos boleto = getBoleto(bankSlip);

		Call<RespostaRegistroBoletos> call = api.includeBankSlip(devKey, boleto);
		Response<RespostaRegistroBoletos> response = call.execute();

		if (response.code() == 200) {
			RespostaRegistroBoletos boletoResponse = response.body();
			IResponseAPI detail = new ResponseAPI();
			detail.setNumberInBank(boletoResponse.getNumero());
			detail.setBarcode(boletoResponse.getCodigoBarraNumerico());
			detail.setManualInput(boletoResponse.getLinhaDigitavel());
			
			return detail;
			
		} else if(response.code() == 400) {
			StringBuilder errors = new StringBuilder("");
			
			ErroV2 error = new ObjectMapper().readValue(response.errorBody().string(), ErroV2.class);
			
		    List<Errov2Erros> listaErrors = error.getErros();
		    
		    for(Errov2Erros errorItem : listaErrors) {
		    	errors.append("Descricao = ").append(errorItem.getMensagem())
		    	.append(" Codigo = ").append(errorItem.getCodigo())
		    	.append(" Ocorrencia = ").append(errorItem.getOcorrencia()); 	
		    }							
			throw new Exception("Error code [" + response.code() + "] - " + errors.toString());

		}else {
			throw new Exception("Error code [" + response.code() + "] - " + response.message());
		}
	}

	@Override
	public byte[] getPDF(MLBRBankSlip bankSlip) throws Exception {
		// TODO Auto-generated method stub
		
		return null;
	}

	@Override
	public boolean cancelBankSlip(MLBRBankSlip bankSlip) throws Exception {
		RequisicaoBaixaBoleto contractBaixa = new RequisicaoBaixaBoleto();
		contractBaixa.setNumeroConvenio(Integer.parseInt(contract.getLBR_AccordNo()));
				
		Call<Void> call = api.cancelBankSlip(PREFIXBANK+bankSlip.getLBR_NumberInBank(),devKey, contractBaixa);
		Response<Void> response = call.execute();
		
		return response.code() == 200;
	}

	private RequisicaoRegistroBoletos getBoleto(MLBRBankSlip bankSlip) {

		MLBRBankSlipInfo bsi = MLBRBankSlipInfo.get(bankSlip.getCtx(), bankSlip.get_ID(), bankSlip.get_TrxName());

		I_W_C_BPartner bp = bankSlip.getBP();

		RequisicaoRegistroBoletos registroBoletos = new RequisicaoRegistroBoletos();

		SimpleDateFormat dateFormat = new SimpleDateFormat("dd.MM.yyyy");
		
		registroBoletos.setNumeroConvenio(Long.parseLong(contract.getLBR_AccordNo()));
		registroBoletos.setNumeroCarteira(Integer.parseInt(bsi.getLBR_BankSlipFoldValue()));
		registroBoletos.setNumeroVariacaoCarteira(35);
		registroBoletos.setCodigoModalidade(1);
		registroBoletos.setDataEmissao(dateFormat.format(bankSlip.getDateDoc()));
		registroBoletos.setDataVencimento(dateFormat.format(bankSlip.getDueDate()));
		registroBoletos.setValorOriginal(bankSlip.getGrandTotal().floatValue());
		registroBoletos.setValorAbatimento(bankSlip.getDiscountAmt().floatValue());
		registroBoletos.setQuantidadeDiasProtesto(Float.valueOf(bankSlip.getLBR_ProtestDays()));
		registroBoletos.setIndicadorAceiteTituloVencido("N");
		registroBoletos.setCodigoAceite(bankSlip.getLBR_IsAccepted().equals("0") ? "N" : "S");
		registroBoletos.setNumeroDiasLimiteRecebimento(30);
		registroBoletos.setDescricaoTipoTitulo(convertKind (bsi.getLBR_BankSlipKindCode()));
		registroBoletos.setIndicadorPermissaoRecebimentoParcial("N");
		registroBoletos.setNumeroTituloCliente(PREFIXBANK+bankSlip.getLBR_NumberInBank());
		registroBoletos.setMensagemBloquetoOcorrencia(
				bsi.getlbr_Instruction1() + " " + bsi.getlbr_Instruction2() + " " + bsi.getlbr_Instruction3());

		if (bankSlip.getLBR_PenaltyType() != null) {
			RequisicaoRegistroBoletosMulta boletosMulta = new RequisicaoRegistroBoletosMulta();

			if (MLBRBankSlip.LBR_PENALTYTYPE_Amount.equals(bankSlip.getLBR_PenaltyType())) {
				boletosMulta.setTipo(Integer.parseInt(bankSlip.getLBR_PenaltyType()));
				boletosMulta.setData(dateFormat.format(TimeUtil.addDays(bankSlip.getDueDate(), bankSlip.getLBR_PenaltyDays())));
				boletosMulta.setValor(bankSlip.getLBR_PenaltyValue().floatValue());
				registroBoletos.setMulta(boletosMulta);

			} else if (MLBRBankSlip.LBR_PENALTYTYPE_Rate.equals(bankSlip.getLBR_PenaltyType())) {
				boletosMulta.setTipo(Integer.parseInt(bankSlip.getLBR_PenaltyType()));
				boletosMulta.setData(dateFormat.format(TimeUtil.addDays(bankSlip.getDueDate(), bankSlip.getLBR_PenaltyDays())));
				boletosMulta.setPorcentagem(bankSlip.getLBR_PenaltyValue().floatValue());
				registroBoletos.setMulta(boletosMulta);
			}
		}
		RequisicaoRegistroBoletosPagador boletosPagador = new RequisicaoRegistroBoletosPagador();
		boletosPagador.setTipoInscricao(I_W_C_BPartner.LBR_BPTYPEBR_PJ_LegalEntity.equals(bp.getlbr_BPTypeBR())
				? RequisicaoRegistroBoletosPagador.TIPO_PESSSOA_JURIDICA
				: RequisicaoRegistroBoletosPagador.TIPO_PESSSOA_FISICA);
		boletosPagador.setNumeroInscricao(Long.parseLong(bankSlip.getTaxIdentifier().replaceAll("\\D", "")));
		boletosPagador.setNome(bp.getName());
		boletosPagador.setEndereco(bsi.getlbr_BPAddress1() + " " + bsi.getlbr_BPAddress2() + " " + bsi.getlbr_BPAddress4());
		boletosPagador.setBairro(bsi.getlbr_BPAddress3());
		boletosPagador.setCidade(bsi.getlbr_BPCity());
		boletosPagador.setUf(bsi.getlbr_BPRegion());
		boletosPagador.setCep(Integer.parseInt(bsi.getlbr_BPPostal()));

		registroBoletos.setPagador(boletosPagador);

		if (bankSlip.getLBR_InterestType() != null) {
			RequisicaoRegistroBoletosJurosMora boletosJurosMora = new RequisicaoRegistroBoletosJurosMora();
			if (MLBRBankSlip.LBR_INTERESTTYPE_DailyValue.equals(bankSlip.getLBR_InterestType())) {
				boletosJurosMora.setTipo(Integer.parseInt(bankSlip.getLBR_PenaltyType()));
				boletosJurosMora.setValor(bankSlip.getDailyLateInterest().setScale(2, RoundingMode.HALF_UP).floatValue());

			} else if (MLBRBankSlip.LBR_INTERESTTYPE_MonthlyRate.equals(bankSlip.getLBR_InterestType())) {
				boletosJurosMora.setTipo(Integer.parseInt(bankSlip.getLBR_PenaltyType()));
				boletosJurosMora.setPorcentagem(bankSlip.getLBR_InterestValue().floatValue());
			} else {
				boletosJurosMora.setTipo(Integer.parseInt(bankSlip.getLBR_PenaltyType()));
			}
			registroBoletos.setJurosMora(boletosJurosMora);

		}

		return registroBoletos;
	}
	
//	private RespostaDetalhamentoBoleto getDetailBankSlip(MLBRBankSlip bankSlip) {
//		Call<RespostaDetalhamentoBoleto> detail = api.getDetailBankSlip(PREFIXBANK+bankSlip.getLBR_NumberInBank(), devKey, contract.getLBR_AccordNo());
//		
//		
//		return null;
//	}

	private void initialize() throws Exception {
		
		String keyType = "pkcs12";
		byte[] certificate = contract.getAttachmentData("p12");
		
		if (certificate == null) {
			certificate = contract.getAttachmentData("jks");
			keyType = "jks";
		}
		
		if (certificate == null)
			throw new Exception ("Certificate not found or incompatible (should be .p12 or .jks)");

		clientCredentials = contract.getLBR_Param1();
		devKey = contract.getLBR_Param2();
		
		TrustManager trusted = new X509TrustManager() {
			@Override
			public void checkClientTrusted(java.security.cert.X509Certificate[] chain, String authType) {
			}

			@Override
			public void checkServerTrusted(java.security.cert.X509Certificate[] chain, String authType) {
			}

			@Override
			public java.security.cert.X509Certificate[] getAcceptedIssuers() {
				return new java.security.cert.X509Certificate[] {};
			}
		};

//		SSLContext sslContext = SSLContext.getInstance("TLS");
//		sslContext.init(null, new TrustManager[] { trusted }, new SecureRandom());
		
		SSLContext context = setupSslContext (certificate, "changeit", trusted, keyType);
		OkHttpClient client = new OkHttpClient.Builder()
				.addInterceptor(new TokenInterceptor())
				.sslSocketFactory(context.getSocketFactory(),
			     (X509TrustManager) trusted).build();

		api = new Retrofit.Builder().baseUrl(BASE_URL).addConverterFactory(JacksonConverterFactory.create())
				.client(client).build().create(InterfaceBB.class);

		String token = s_cache.get(contract.getLBR_BankSlipContract_ID());
		if (token == null)
			getTokenAccess();
		else
			this.token = getToken();
		// initialize
	}

	private String getToken() throws Exception {
		if (!s_cache.containsKey(contract.get_ID()))
			getTokenAccess();
		String token = s_cache.get(contract.get_ID());
		if (token == null)
			throw new Exception("Could not obtain token");
		return token;
	}
	
	private void getTokenAccess() throws IOException, Exception {
		
		String keyType = "pkcs12";
		byte[] certificate = contract.getAttachmentData("p12");
		
		if (certificate == null) {
			certificate = contract.getAttachmentData("jks");
			keyType = "jks";
		}
		
		if (certificate == null)
			throw new Exception ("Certificate not found or incompatible (should be .p12 or .jks)");

		TrustManager trusted = new X509TrustManager() {
			@Override
			public void checkClientTrusted(java.security.cert.X509Certificate[] chain, String authType) {
			}

			@Override
			public void checkServerTrusted(java.security.cert.X509Certificate[] chain, String authType) {
			}

			@Override
			public java.security.cert.X509Certificate[] getAcceptedIssuers() {
				return new java.security.cert.X509Certificate[] {};
			}
		};		
//		SSLContext sslContext = SSLContext.getInstance("TLS");
//		sslContext.init(null, new TrustManager[] { trusted }, new SecureRandom());

		SSLContext context = setupSslContext (certificate, "changeit", trusted, keyType);
		OkHttpClient client = new OkHttpClient.Builder()
				.addInterceptor(new TokenInterceptor())
				.sslSocketFactory(context.getSocketFactory(),
				(X509TrustManager) trusted).build();

		InterfaceBB apiToken = new Retrofit.Builder()
				.baseUrl(BASE_URL_TOKEN)
				.addConverterFactory(JacksonConverterFactory.create())
				.client(client).build().create(InterfaceBB.class);

		Call<RespostaToken> call = apiToken.authenticate(clientCredentials, "client_credentials",
				"cobrancas.boletos-info cobrancas.boletos-requisicao");

		Response<RespostaToken> response = call.execute();

		if (response.code() != 201)
			throw new Exception("Error code [" + response.code() + "] - " + response.message());

		RespostaToken authenticate = response.body();

		this.token = authenticate.getAccessToken();
		s_cache.put(contract.getLBR_BankSlipContract_ID(), this.token);
	}

	private static SSLContext setupSslContext (final byte[] keyStoreByteArray, final String pwKeyStore, TrustManager trusted, String keyType) throws Exception {
		String keymanageralgorithm = "SunX509";

		char[] keyStorePw = pwKeyStore.toCharArray();
		SecureRandom secureRandom = new SecureRandom();
		secureRandom.nextInt();
		KeyStore ks = null;
		try {
			ks = KeyStore.getInstance(keyType);
		} catch (KeyStoreException exp) {
			throw new Exception("KeyStoreException exception occurred while reading the config file : " + exp.getMessage());
		}

		ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(keyStoreByteArray);
		try {
			ks.load(byteArrayInputStream, keyStorePw);
		} catch (NoSuchAlgorithmException exp) {
			throw new Exception("NoSuchAlgorithmException exception occurred " + exp.getMessage());
		} catch (CertificateException | IOException exp) {
			if (exp.getMessage().contains("password was incorrect")) {
				throw new Exception("Senha incorreta!");
			} else {
				throw new Exception("CertificateException exception occurred " + exp.getMessage());
			}
		}

		KeyManagerFactory kmf = null;
		try {
			kmf = KeyManagerFactory.getInstance(keymanageralgorithm);
		} catch (NoSuchAlgorithmException exp) {
			throw new Exception("IOException exception occurred " + exp.getMessage());
		}
		try {
			kmf.init(ks, keyStorePw);
		} catch (UnrecoverableKeyException exp) {
			throw new Exception("UnrecoverableKeyException exception occurred " + exp.getMessage());
		} catch (KeyStoreException exp) {
			throw new Exception("KeyStoreException exception occurred " + exp.getMessage());
		} catch (NoSuchAlgorithmException exp) {
			throw new Exception("NoSuchAlgorithmException exception occurred " + exp.getMessage());
		}

		KeyStore ts = null;
		try {
			ts = KeyStore.getInstance("JKS");
		} catch (KeyStoreException exp) {
			throw new Exception("NoSuchAlgorithmException exception occurred " + exp.getMessage());
		}
		SSLContext sslContext = null;
		try {
			ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(keyStoreByteArray);
			ts.load(byteArrayInputStream2, keyStorePw);
			TrustManagerFactory tmf = TrustManagerFactory.getInstance(keymanageralgorithm);
			tmf.init(ts);
			sslContext = SSLContext.getInstance("TLS");
			sslContext.init(kmf.getKeyManagers(), new TrustManager[] { trusted }, secureRandom);
		} catch (NoSuchAlgorithmException | CertificateException | IOException | KeyStoreException exp) {
			throw new Exception("NoSuchAlgorithmException exception occurred " + exp.getMessage());
		}
		return sslContext;
	}	//	setupSslContext
			
	private class TokenInterceptor implements Interceptor {
		@Override
		public okhttp3.Response intercept(Chain chain) throws IOException {
			Builder builder = chain.request().newBuilder();
			if (token != null)
				try {
					builder.header("Authorization", "Bearer " + getToken());
				} catch (Exception e) {
					e.printStackTrace();
				}
			Request newRequest = builder.build();
			return chain.proceed(newRequest);
		}
	}
	
	private String convertKind (String kindValue)
	{
		switch (Integer.valueOf (kindValue))
		{
			case MLBRBankSlip.ESPECIE_DUPLICATA_MERCANTIL:
				return "DM";
				
			default:
				return "DM";	//	Duplicata Mercantil
		}
	}
	
//	private String authorization(String clientId, String clientSecrect) {
//
//		String access = clientId + ":" + clientSecrect;
//
//		byte[] encoder = Base64.getEncoder().encode(access.getBytes());
//
//		access = "Basic " + new String(encoder);
//
//		return access;
//	}

}
