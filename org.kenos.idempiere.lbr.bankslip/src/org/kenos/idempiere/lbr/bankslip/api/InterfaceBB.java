package org.kenos.idempiere.lbr.bankslip.api;

import org.kenos.idempiere.lbr.bankslip.api.bb.RequisicaoBaixaBoleto;
import org.kenos.idempiere.lbr.bankslip.api.bb.RequisicaoRegistroBoletos;
import org.kenos.idempiere.lbr.bankslip.api.bb.RespostaDetalhamentoBoleto;
import org.kenos.idempiere.lbr.bankslip.api.bb.RespostaRegistroBoletos;
import org.kenos.idempiere.lbr.bankslip.api.bb.RespostaToken;
import org.kenos.idempiere.lbr.bankslip.api.inter.ResponseGetBoleto;
import org.kenos.idempiere.lbr.bankslip.api.inter.ResponseGetPDF;

import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.Headers;
import retrofit2.http.POST;
import retrofit2.http.Path;
import retrofit2.http.Query;

public interface InterfaceBB {
	@POST("oauth/token")
    @Headers("Content-Type: application/x-www-form-urlencoded")
	@FormUrlEncoded
	Call<RespostaToken> authenticate(@Header("Authorization") String authToken,
			@Field("grant_type") String grant_type,
			@Field("scope") String scope);

	@POST("cobrancas/v2/boletos")
	Call<RespostaRegistroBoletos> includeBankSlip(
			@Query("gw-dev-app-key") String devKey,
			@Body RequisicaoRegistroBoletos boleto);
	
	@GET("cobrancas/v2/boletos/{nossoNumero}/pdf")
	Call<ResponseGetPDF> getPDF(@Path("nossoNumero") String nossoNumero);
	
	@POST("cobrancas/v2/boletos/{nossoNumero}/baixar")
	Call<Void> cancelBankSlip(
			@Path("nossoNumero") String nossoNumero,
			@Query("gw-dev-app-key") String devKey,
			@Body RequisicaoBaixaBoleto convenio);
	
	@GET("cobrancas/v2/boletos/{nossoNumero}")
	Call<RespostaDetalhamentoBoleto> getDetailBankSlip(
			@Path("nossoNumero") String nossoNumero,
			@Query("gw-dev-app-key") String devKey,
			@Query("numeroConvenio") String numeroConvenio);
	
	public static final String FILTRAR_POR_DATA_VENCIMENTO 		= "VENCIMENTO";
	public static final String FILTRAR_POR_DATA_EMISSAO 		= "EMISSAO";
	public static final String FILTRAR_POR_DATA_DA_SITUACAO 	= "SITUACAO";

	public static final String SITUACAO_EXPIRADO 	= "EXPIRADO";
	public static final String SITUACAO_VENCIDO 	= "VENCIDO";
	public static final String SITUACAO_EM_ABERTO 	= "EMABERTO";
	public static final String SITUACAO_PAGO 		= "PAGO";
	public static final String SITUACAO_CANCELADO 	= "CANCELADO";
	
	@GET("cobrancas/v2/boletos")
	Call<ResponseGetBoleto> getBankSlips(
			@Query("gw-dev-app-key") String devKey, @Query("indicadorSituacao") String indicadorSituacao,
			@Query("contaCaucao") String contaCaucao, @Query("agenciaBeneficiario") Integer agenciaBeneficiario,
			@Query("contaBeneficiario") Integer contaBeneficiario, @Query("carteiraConvenio") String carteiraConvenio,
			@Query("variacaoCarteiraConvenio") String variacaoCarteiraConvenio, @Query("modalidadeCobranca") String modalidadeCobranca,
			@Query("cnpjPagador") String cnpjPagador, @Query("digitoCNPJPagador") String digitoCNPJPagador,
			@Query("cpfPagador") String cpfPagador, @Query("digitoCPFPagador")String digitoCPFPagador,
			@Query("dataInicioVencimento") String dataInicioVencimento, @Query("dataFimVencimento")String dataFimVencimento,
			@Query("dataInicioRegistro") String dataInicioRegistro, @Query("dataFimRegistro")String dataFimRegistro,
			@Query("dataInicioMovimento") String dataInicioMovimento, @Query("dataFimMovimento")String dataFimMovimento,
			@Query("codigoEstadoTituloCobranca") String codigoEstadoTituloCobranca, @Query("boletoVencido")String boletoVencido,
			@Query("indice")Integer indice);

}	//	InterfaceBB
