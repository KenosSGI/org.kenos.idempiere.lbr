package org.kenos.idempiere.lbr.correios.api;

import java.util.List;

import org.kenos.idempiere.lbr.correios.api.cep.Cep;
import org.kenos.idempiere.lbr.correios.api.prazo.LotePrazoNacional;
import org.kenos.idempiere.lbr.correios.api.prazo.PrazoNacional;
import org.kenos.idempiere.lbr.correios.api.preco.LotePrecoNacionalParam;
import org.kenos.idempiere.lbr.correios.api.preco.PrecoProdutoResponse;
import org.kenos.idempiere.lbr.correios.api.token.ContratoRequest;
import org.kenos.idempiere.lbr.correios.api.token.Token;

import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.Headers;
import retrofit2.http.POST;
import retrofit2.http.Path;
import retrofit2.http.Query;

public interface InterfaceCorreiosAPI {

	@POST("token/v1/autentica/cartaopostagem")
	Call<Token> authenticate(@Header("Authorization") String authToken, @Body ContratoRequest contrato);

	@GET("cep/v2/enderecos/{Cep}")
	Call<Cep> getCep(@Path("Cep") String cep);
	
	@GET("preco/v1/nacional/{codigoProduto}")
	Call<PrecoProdutoResponse> getPreco(@Path("codigoProduto")String codigoProduto,
			@Query("cepDestino") String cepDestino,
			@Query("nuRequisicao") String nuRequisicao,
			@Query("nuContrato") String nuContrato,
			@Query("nuDR") Long nuDR,
			@Query("cepOrigem") String cepOrigem,
			@Query("psObjeto") String psObjeto,
			@Query("nuUnidade") String nuUnidade,
			@Query("tpObjeto") String tpObjeto,
			@Query("comprimento") String comprimento,
			@Query("largura") String largura,
			@Query("altura") String altura,
			@Query("diametro") String diametro,
			@Query("psCubico") String psCubico,
			@Query("servicosAdicionais") List<String> servicosAdicionais,
			@Query("criterios") List<String> list,
			@Query("vlDeclarado") String vlDeclarado,
			@Query("dtEvento") String dtEvento,
			@Query("coUnidadeOrigem") String coUnidadeOrigem,
			@Query("dtArmazenagem") String dtArmazenagem);
	
	@Headers("Content-Type: application/json")
	@GET("prazo/v1/nacional/{coProduto}")
	Call<PrazoNacional> getPrazo(@Path("coProduto") String codigoProduto,
			@Query("cepOrigem")String cepOrigem,
			@Query("cepDestino")String cepDestino,
			@Query("dtEvento")String dataEvento);
	
	@Headers("Content-Type: application/json")
	@POST("prazo/v1/nacional")
	Call<List<PrecoProdutoResponse>>postPreco(@Body LotePrecoNacionalParam lotePrecoNacionalParam);
	
	@Headers("Content-Type: application/json")
	@POST("preco/v1/nacional")
	Call<List<PrazoNacional>>postPrazo(@Body LotePrazoNacional lotePrazoNacional);

}
