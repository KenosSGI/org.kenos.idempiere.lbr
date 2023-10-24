package org.kenos.idempiere.lbr.correios.api;

import java.io.IOException;
import java.security.SecureRandom;
import java.util.Base64;
import java.util.List;

import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

import org.compiere.util.CCache;
import org.kenos.idempiere.lbr.correios.api.cep.Cep;
import org.kenos.idempiere.lbr.correios.api.prazo.LotePrazoNacional;
import org.kenos.idempiere.lbr.correios.api.prazo.ParamPrazoNacional;
import org.kenos.idempiere.lbr.correios.api.prazo.PrazoNacional;
import org.kenos.idempiere.lbr.correios.api.preco.LotePrecoNacionalParam;
import org.kenos.idempiere.lbr.correios.api.preco.MessageResponse;
import org.kenos.idempiere.lbr.correios.api.preco.PrecoNacionalParam;
import org.kenos.idempiere.lbr.correios.api.preco.PrecoPrazo;
import org.kenos.idempiere.lbr.correios.api.preco.PrecoProdutoResponse;
import org.kenos.idempiere.lbr.correios.api.preco.PrecoServicoAdicional;
import org.kenos.idempiere.lbr.correios.api.token.ContratoRequest;
import org.kenos.idempiere.lbr.correios.api.token.Token;

import com.fasterxml.jackson.databind.ObjectMapper;

import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Request.Builder;
import retrofit2.Call;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.jackson.JacksonConverterFactory;

public class Correios implements InterfaceCorreios {

	private static CCache<Integer, String> s_cache = new CCache<Integer, String>(null, "NEKOT_UUID", 100, 9, true);

	private String user;
	private String password;
	private String cartaoPostagem;
	private Integer idProcess;
	private static final String BASE_URL = "https://api.correios.com.br";

	private static final String AVISO_RECEBIMENTO = "001";
	private static final String MAO_PROPRIA = "002";

	private InterfaceCorreiosAPI api = null;

	private String token;

	public Correios(String user, String password, String cartaoPostagem, Integer idProcess) {
		this.user = user;
		this.password = password;
		this.cartaoPostagem = cartaoPostagem;
		this.idProcess = idProcess;
		
		try {
			initialize();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void initialize() throws Exception {

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

		SSLContext sslContext = SSLContext.getInstance("TLS");
		sslContext.init(null, new TrustManager[] { trusted }, new SecureRandom());

		OkHttpClient client = new OkHttpClient.Builder().addInterceptor(new TokenInterceptor())
				.sslSocketFactory(sslContext.getSocketFactory(), (X509TrustManager) trusted).build();

		api = new Retrofit.Builder().baseUrl(BASE_URL).addConverterFactory(JacksonConverterFactory.create())
				.client(client).build().create(InterfaceCorreiosAPI.class);

		String token = s_cache.get(idProcess);
		if (token == null)
			getNewToken();
		else
			this.token = getToken();
	}

	public void getNewToken() throws Exception {

		ContratoRequest contratoRequest = new ContratoRequest();

		contratoRequest.setNumero(cartaoPostagem);

		String authorization = getBasic(user, password);

		Call<Token> call = api.authenticate(authorization, contratoRequest);
		Response<Token> response = call.execute();

		if (response.code() != 201) {
			throw new Exception("Error code [" + response.code() + "] - " + response.message());
		}

		Token token = response.body();
		this.token = token.getToken();
		this.token = this.token + ":" + token.getCartaoPostagem().getDr().toString();
		this.token = this.token + ":" + token.getCartaoPostagem().getContrato();

		s_cache.put(idProcess, this.token);
//		}
	}

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

	public String getBasic(String user, String password) {

		String auth = user + ":" + password;
		byte[] text = auth.getBytes();
		String hash = "Basic ";
		hash = hash + new String(Base64.getEncoder().encode(text));

		return hash;
	}

	private String getToken() throws Exception {
		if (!s_cache.containsKey(idProcess))
			getNewToken();
		String token[] = s_cache.get(idProcess).split(":");
		if (token == null)
			throw new Exception("Could not obtain token");
		return token[0];
	}

	@Override
	public Cep getCep(String cepNumber) {

		try {
			Call<Cep> call = api.getCep(cepNumber.toString());
			Response<Cep> response = call.execute();

			if (response.code() != 200) {
				throw new Exception("Error code [" + response.code() + "] - " + response.message());
			}

			Cep cep = response.body();

			return cep;

		} catch (Exception e) {

			e.printStackTrace();
		}

		return null;
	}

	public Object getPreco(PrecoNacionalParam precoNacional) {

		try {
			Call<PrecoProdutoResponse> call = api.getPreco(precoNacional.getCoProduto(), precoNacional.getCepDestino(),
					precoNacional.getNuRequisicao(), precoNacional.getNuContrato(), precoNacional.getNuDR(),
					precoNacional.getCepOrigem(), precoNacional.getPsObjeto(), precoNacional.getNuUnidade(),
					precoNacional.getTpObjeto(), precoNacional.getComprimento(), precoNacional.getLargura(),
					precoNacional.getAltura(), precoNacional.getDiametro(), precoNacional.getPsCubico(),
					precoNacional.getServicosAdicionais(), precoNacional.getCriterios(), precoNacional.getVlDeclarado(),
					precoNacional.getDtEvento(), precoNacional.getCoUnidadeOrigem(), precoNacional.getDtArmazenagem());

			Response<PrecoProdutoResponse> response = call.execute();

			if (response.code() == 200) {
				PrecoProdutoResponse precoProduto = response.body();

				return precoProduto;
			} else if (response.code() == 400) {

				MessageResponse message = new ObjectMapper().readValue(response.errorBody().string(),
						MessageResponse.class);

				return message;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

	public Object getPrazo(ParamPrazoNacional prazoNacional) {

		try {
			Call<PrazoNacional> call = api.getPrazo(prazoNacional.getCoProduto(), prazoNacional.getCepOrigem(),
					prazoNacional.getCepDestino(), null);
			Response<PrazoNacional> response = call.execute();

			if (response.code() == 200) {
				PrazoNacional prazo = response.body();

				return prazo;
			} else if (response.code() == 400) {
				MessageResponse message = new ObjectMapper().readValue(response.errorBody().string(),
						MessageResponse.class);

				return message;
			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		return null;
	}

	public List<PrecoProdutoResponse> postPreco(LotePrecoNacionalParam lotePrecoNacionalParam) {

		try {

			Call<List<PrecoProdutoResponse>> call = api.postPreco(lotePrecoNacionalParam);
			Response<List<PrecoProdutoResponse>> response = call.execute();

			if (response.code() != 201) {
//				throw new Exception("Error code [" + response.code() + "] - " + response.message());
			}

			if (response.code() == 400) {
//				StringBuilder errors = new StringBuilder("");
//				MessageResponse message = new ObjectMapper().readValue(response.errorBody().string(),
//						MessageResponse.class);

//				System.out.println(message.toString());

				throw new Exception("Error code [" + response.code() + "] - " + response.message());

			}

			List<PrecoProdutoResponse> listPrecoProduto = response.body();

			return listPrecoProduto;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

	public List<PrazoNacional> postPrazo(LotePrazoNacional lotePrazoNacional) {

		try {
			Call<List<PrazoNacional>> call = api.postPrazo(lotePrazoNacional);
			Response<List<PrazoNacional>> response = call.execute();

//			if (response.code() != 201) {
//				throw new Exception("Error code [" + response.code() + "] - " + response.message());
//			}

			if (response.code() == 400) {
//				StringBuilder errors = new StringBuilder("");
//				MessageResponse message = new ObjectMapper().readValue(response.errorBody().toString(),
//						MessageResponse.class);

				throw new Exception("Error code [" + response.code() + "] - " + response.message());

			}

			List<PrazoNacional> listPrazoNacional = response.body();

			return listPrazoNacional;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

	public Long getDR() {

		try {
			String dr[] = s_cache.get(idProcess).split(":");

			return Long.parseLong(dr[1]);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}
	
	public String getContract() {

		try {
			String contract[] = s_cache.get(idProcess).split(":");

			return contract[2];
		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public PrecoPrazo calcPrazoPreco(PrecoNacionalParam precoNacional) {

		PrecoProdutoResponse precoProdutoResponse = null;
		PrazoNacional prazoNacionalResponse = null;
		MessageResponse messageResponse = null;
		StringBuilder msg = new StringBuilder();

		String valorRecebimento = "0";
		String valorMaoPropria = "0";

		PrecoPrazo precoPrazo = new PrecoPrazo();

		ParamPrazoNacional prazoNacional = new ParamPrazoNacional();

		prazoNacional.setCoProduto(precoNacional.getCoProduto());
		prazoNacional.setCepDestino(precoNacional.getCepDestino());
		prazoNacional.setCepOrigem(precoNacional.getCepOrigem());
		prazoNacional.setDataPostagem(precoNacional.getDtEvento());
		prazoNacional.setCepDestino(precoNacional.getCepDestino());
		prazoNacional.setNuRequisicao("1");

		precoNacional.setNuContrato(getContract());
		precoNacional.setNuRequisicao("1");
		precoNacional.setNuDR(getDR());
		precoNacional.setDtEvento(null);

		Object preco = getPreco(precoNacional);

		Object prazo = getPrazo(prazoNacional);

		if (prazo instanceof PrazoNacional) {
			prazoNacionalResponse = (PrazoNacional) prazo;
		} else {
			messageResponse = (MessageResponse) prazo;
			msg.append("(Prazo): " + messageResponse.getMsgs().get(0)).append("\n");
		}

		if (preco instanceof PrecoProdutoResponse) {
			precoProdutoResponse = (PrecoProdutoResponse) preco;
		} else {
			messageResponse = (MessageResponse) preco;
			msg.append("(Preço): " + messageResponse.getMsgs().get(0));
		}

		if (!((precoProdutoResponse == null || prazoNacionalResponse == null) && messageResponse != null)) {

			if (precoProdutoResponse.getPcTotalServicosAdicionais() != null) {
				List<PrecoServicoAdicional> serviciosAdicionais = precoProdutoResponse.getServicoAdicional();

				for (PrecoServicoAdicional list : serviciosAdicionais) {

					if (AVISO_RECEBIMENTO.equals(list.getCoServAdicional())) {
						valorRecebimento = list.getPcServicoAdicional();
					}

					if (MAO_PROPRIA.equals(list.getCoServAdicional())) {
						valorMaoPropria = list.getPcServicoAdicional();
					}
				}
			} else {
				precoPrazo.setValorRecebimento("0");
				precoPrazo.setValorMaoPropria("0");
			}

			precoPrazo.setCodigoProduto(precoProdutoResponse.getCoProduto());
			precoPrazo.setValorFinal(precoProdutoResponse.getPcFinal());
			precoPrazo.setValorSeguro(precoProdutoResponse.getVlSeguroAutomatico());
			precoPrazo.setValorProduto(precoProdutoResponse.getPcProduto());
			precoPrazo.setValorRecebimento(valorRecebimento);
			precoPrazo.setValorMaoPropria(valorMaoPropria);
			precoPrazo.setPrazo(prazoNacionalResponse.getPrazoEntrega());
			precoPrazo.setMessage("");

			return precoPrazo;
		} else {
			precoPrazo.setCodigoProduto(precoNacional.getCoProduto());
			precoPrazo.setMessage(msg.toString());
			precoPrazo.setPrazo(0);
			precoPrazo.setValorFinal("0");
			precoPrazo.setValorMaoPropria("0");
			precoPrazo.setValorProduto("0");
			precoPrazo.setValorRecebimento("0");
			precoPrazo.setValorSeguro("0");

			return precoPrazo;
		}

	}

}
