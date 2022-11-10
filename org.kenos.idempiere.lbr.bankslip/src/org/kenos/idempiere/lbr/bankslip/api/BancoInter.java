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
import java.util.List;

import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.compiere.util.CCache;
import org.compiere.util.Env;
import org.compiere.util.TimeUtil;
import org.kenos.idempiere.lbr.bankslip.IBankSlipAPI;
import org.kenos.idempiere.lbr.bankslip.api.inter.Boleto;
import org.kenos.idempiere.lbr.bankslip.api.inter.Cancelar;
import org.kenos.idempiere.lbr.bankslip.api.inter.Mensagem;
import org.kenos.idempiere.lbr.bankslip.api.inter.Mora;
import org.kenos.idempiere.lbr.bankslip.api.inter.Multa;
import org.kenos.idempiere.lbr.bankslip.api.inter.PagadorBeneficiario;
import org.kenos.idempiere.lbr.bankslip.api.inter.ResponseBoleto;
import org.kenos.idempiere.lbr.bankslip.api.inter.ResponseBoletoError;
import org.kenos.idempiere.lbr.bankslip.api.inter.ResponseGetPDF;
import org.kenos.idempiere.lbr.bankslip.api.inter.ResponseLogin;
import org.kenos.idempiere.lbr.bankslip.api.inter.Violacao;
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

public class BancoInter implements IBankSlipAPI {

	private static final String BASE_URL = "https://cdpj.partners.bancointer.com.br/";
	
	/**	Cache					*/
	private static CCache<Integer,String> s_cache = new CCache<Integer,String>(null, "NEKOT_UUID", 100, 59, true);
	
	private MLBRBankSlipContract contract  = null;
	public BancoInter (MLBRBankSlipContract contract) throws Exception {
		this.contract = contract;
		//
		initialize();
	}	//	Inter
	
	public boolean cancelBankSlip (MLBRBankSlip bankSlip) throws Exception {
		Call<Void> call = api.cancelBankSlip(bankSlip.getLBR_NumberInBank(true), new Cancelar (Cancelar.MOTIVO_ACERTOS));
		Response<Void> response = call.execute();
		
		return response.code() == 204;
	}	//	processBankSlip
	
	public byte[] getPDF (MLBRBankSlip bankSlip) throws Exception {
		Call<ResponseGetPDF> call = api.getPDF(bankSlip.getLBR_NumberInBank(true));
		Response<ResponseGetPDF> response = call.execute();
		
		if (response.code() != 200)
			throw new Exception ("Error code [" + response.code() +"] - " + response.message());
		
		return response.body().getPdfFile();
	}	//	processBankSlip
	
	public IResponseAPI processBankSlip (MLBRBankSlip bankSlip) throws Exception {
		Boleto boleto = getBoleto(bankSlip);
		Call<ResponseBoleto> call = api.includeBankSlip(boleto);
		Response<ResponseBoleto> response = call.execute();
		

		if (response.code() == 200) {
			ResponseBoleto boletoResponse = response.body();
			IResponseAPI detail = new ResponseAPI();
			detail.setNumberInBank(boletoResponse.getNossoNumero());
			detail.setNumberInOrg(boletoResponse.getSeuNumero());
			detail.setBarcode(boletoResponse.getCodigoBarras());
			detail.setManualInput(boletoResponse.getLinhaDigitavel());
			return detail;
		}
		else if (response.code() == 400) {
			StringBuilder errors = new StringBuilder ("");
			ResponseBoletoError errorResponse = new ObjectMapper ()
					.readValue(response.errorBody().string(), ResponseBoletoError.class);
			
			List<Violacao> violacoes = errorResponse.getViolacoes();
			if (violacoes != null && violacoes.size() > 0)
				violacoes.stream().forEach(v -> errors.append("Razao = ").append(v.getRazao())
						.append(", Propriedade = ").append(v.getPropriedade())
						.append(", Valor = ").append(v.getValor()).append(" / "));
			//
			throw new Exception ("Error code [" + response.code() +"] - " + errors.toString());
		}
		else
			throw new Exception ("Error code [" + response.code() +"] - " + response.message());
	}	//	processBankSlip

	private String getToken () throws Exception {
		if (!s_cache.containsKey(contract.get_ID()))
			renewToken ();
		String token = s_cache.get(contract.get_ID());
		if (token == null)
			throw new Exception ("Could not obtain token");
		return token;
	}	//	getToken

	private Boleto getBoleto (MLBRBankSlip bankSlip) {
		
		MLBRBankSlipInfo bsi = MLBRBankSlipInfo.get(bankSlip.getCtx(), bankSlip.get_ID(), bankSlip.get_TrxName());
		
		I_W_C_BPartner bp = bankSlip.getBP();
		
		Boleto boleto = new Boleto();
		boleto.setSeuNumero(bankSlip.getLBR_NumberInOrg());
		boleto.setValorNominal(bankSlip.getGrandTotal());
		boleto.setDataVencimento(bankSlip.getDueDate());
		boleto.setNumDiasAgenda(30);
		
		PagadorBeneficiario pagador = new PagadorBeneficiario();
		pagador.setCpfCnpj(bankSlip.getTaxIdentifier());
		pagador.setTipoPessoa(I_W_C_BPartner.LBR_BPTYPEBR_PJ_LegalEntity.equals(bp.getlbr_BPTypeBR()) ? PagadorBeneficiario.TIPO_PESSSOA_JURIDICA : PagadorBeneficiario.TIPO_PESSSOA_FISICA);
		pagador.setNome(bp.getName());
		pagador.setEndereco(bsi.getlbr_BPAddress1());
		pagador.setNumero(bsi.getlbr_BPAddress2());
		pagador.setBairro(bsi.getlbr_BPAddress3());
		pagador.setComplemento(bsi.getlbr_BPAddress4());
		pagador.setCidade(bsi.getlbr_BPCity());
		pagador.setUf(bsi.getlbr_BPRegion());
		pagador.setCep(bsi.getlbr_BPPostal());
		
		boleto.setPagador(pagador);
		
		Mensagem mensagem = new Mensagem();
		mensagem.setLinha1(bsi.getlbr_Instruction1());
		mensagem.setLinha2(bsi.getlbr_Instruction2());
		mensagem.setLinha3(bsi.getlbr_Instruction3());
		
		boleto.setMensagem(mensagem);
		
		if (bankSlip.getLBR_PenaltyType() != null) {
			Multa multa = new Multa ();
			boleto.setMulta(multa);

			if (MLBRBankSlip.LBR_PENALTYTYPE_Amount.equals(bankSlip.getLBR_PenaltyType())) {
				multa.setCodigoMulta(Multa.CODIGO_MULTA_VALOR_FIXO);
				multa.setValor(bankSlip.getLBR_PenaltyValue());
				multa.setData(TimeUtil.addDays (bankSlip.getDueDate(), bankSlip.getLBR_PenaltyDays()));
			}
			else if (MLBRBankSlip.LBR_PENALTYTYPE_Rate.equals(bankSlip.getLBR_PenaltyType())) {
				multa.setCodigoMulta(Multa.CODIGO_MULTA_PERCENTUAL);
				multa.setTaxa(bankSlip.getLBR_PenaltyValue());
				multa.setData(TimeUtil.addDays (bankSlip.getDueDate(), bankSlip.getLBR_PenaltyDays()));
			}
			else {
				multa.setCodigoMulta(Multa.CODIGO_MULTA_NAO_TEM_MULTA);
				multa.setTaxa(Env.ZERO);
				multa.setValor(Env.ZERO);
			}
		}

		if (bankSlip.getLBR_InterestType() != null && bankSlip.getDailyLateInterest().signum() == 1) {
			Mora mora = new Mora ();
			boleto.setMora(mora);

			int interestDays = bankSlip.getLBR_InterestDays();
			if (interestDays < 1)
				interestDays = 1;
			
			mora.setCodigoMora(Mora.CODIGO_MORA_VALORDIA);
			mora.setData(TimeUtil.addDays (bankSlip.getDueDate(), interestDays));
			mora.setTaxa(Env.ZERO);
			mora.setValor(bankSlip.getDailyLateInterest().setScale(2, RoundingMode.HALF_UP));
		}
		
		return boleto;
	}	//	getBoleto
	
	private String token = null;
	private InterfaceBancoInter api = null;
	
	private void initialize () throws Exception {
		byte[] certificate = contract.getAttachmentData("p12");
		
		TrustManager trusted = new X509TrustManager() {
			@Override
			public void checkClientTrusted(java.security.cert.X509Certificate[] chain, String authType) {}

			@Override 
			public void checkServerTrusted(java.security.cert.X509Certificate[] chain, String authType) {}

			@Override
			public java.security.cert.X509Certificate[] getAcceptedIssuers() {
				return new java.security.cert.X509Certificate[] {};
			}	
		};
		
		SSLContext context = setupSslContext (certificate, "changeit", trusted);
		OkHttpClient client = new OkHttpClient.Builder()
				.addInterceptor(new TokenInterceptor())
				.sslSocketFactory(context.getSocketFactory(), (X509TrustManager) trusted)
				.build();

		api = new Retrofit.Builder()
				.baseUrl(BASE_URL)
				.addConverterFactory(JacksonConverterFactory.create())
				.client(client)
				.build().create(InterfaceBancoInter.class);
		
		//	Renew Token
		String token = s_cache.get(contract.getLBR_BankSlipContract_ID());
		if (token == null) 
			renewToken ();
		
		//	Put in cache
		else
			this.token = getToken();
	}	//	initialize

	private void renewToken () throws IOException, Exception {
		Call<ResponseLogin> call = api.authenticate (
				contract.getLBR_Param1(), 	//	client_id
				contract.getLBR_Param2(), 	//	client_secret
				"client_credentials", 
				"boleto-cobranca.read boleto-cobranca.write" );
		Response<ResponseLogin> response = call.execute();
		
		if (response.code() != 200)
			throw new Exception ("Error code [" + response.code() +"] - " + response.message());
		
		ResponseLogin authenticate = response.body();
		this.token = authenticate.getAccess_token();
		s_cache.put(contract.getLBR_BankSlipContract_ID(), this.token);
	}	//	renewToken
	
	private static SSLContext setupSslContext (final byte[] keyStoreByteArray, final String pwKeyStore, TrustManager trusted) throws Exception {
		String keymanageralgorithm = "SunX509";

		char[] keyStorePw = pwKeyStore.toCharArray();
		SecureRandom secureRandom = new SecureRandom();
		secureRandom.nextInt();
		KeyStore ks = null;
		try {
			ks = KeyStore.getInstance("JKS");
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
		public okhttp3.Response intercept (Chain chain) throws IOException {
			Builder builder = chain.request().newBuilder();
			if (token != null)
				try {
					builder.header("Authorization", "Bearer " + getToken());
				} catch (Exception e) {
					e.printStackTrace();
				}
			Request newRequest=builder.build();
			return chain.proceed(newRequest);
		}
	}	//	TokenInterceptor
}	//	BancoInter
