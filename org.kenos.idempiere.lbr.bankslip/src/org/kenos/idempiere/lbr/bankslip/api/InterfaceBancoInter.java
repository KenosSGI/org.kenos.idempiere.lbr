package org.kenos.idempiere.lbr.bankslip.api;

import java.sql.Timestamp;

import org.kenos.idempiere.lbr.bankslip.api.inter.Boleto;
import org.kenos.idempiere.lbr.bankslip.api.inter.Cancelar;
import org.kenos.idempiere.lbr.bankslip.api.inter.ResponseBoleto;
import org.kenos.idempiere.lbr.bankslip.api.inter.ResponseGetBoleto;
import org.kenos.idempiere.lbr.bankslip.api.inter.ResponseLogin;
import org.kenos.idempiere.lbr.bankslip.api.inter.ResponseGetPDF;

import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Path;
import retrofit2.http.Query;

public interface InterfaceBancoInter {
	@POST("oauth/v2/token")
	@FormUrlEncoded
	Call<ResponseLogin> authenticate(@Field("client_id") String client_id,
			@Field("client_secret") String client_secret,
			@Field("grant_type") String grant_type,
			@Field("scope") String scope);

	@POST("cobranca/v2/boletos")
	Call<ResponseBoleto> includeBankSlip(@Body Boleto boleto);
	
	@GET("cobranca/v2/boletos/{nossoNumero}/pdf")
	Call<ResponseGetPDF> getPDF(@Path("nossoNumero") String nossoNumero);
	
	@POST("cobranca/v2/boletos/{nossoNumero}/cancelar")
	Call<Void> cancelBankSlip(@Path("nossoNumero") String nossoNumero, @Body Cancelar cancelar);
	
	public static final String FILTRAR_POR_DATA_VENCIMENTO 		= "VENCIMENTO";
	public static final String FILTRAR_POR_DATA_EMISSAO 		= "EMISSAO";
	public static final String FILTRAR_POR_DATA_DA_SITUACAO 	= "SITUACAO";

	public static final String SITUACAO_EXPIRADO 	= "EXPIRADO";
	public static final String SITUACAO_VENCIDO 	= "VENCIDO";
	public static final String SITUACAO_EM_ABERTO 	= "EMABERTO";
	public static final String SITUACAO_PAGO 		= "PAGO";
	public static final String SITUACAO_CANCELADO 	= "CANCELADO";
	
	@GET("cobranca/v2/boletos")
	Call<ResponseGetBoleto> getBankSlips(
			@Query("dataInicial") Timestamp dataInicial, @Query("dataFinal") Timestamp dataFinal,
			@Query("filtrarDataPor") String filtrarDataPor, @Query("situacao") String situacao,
			@Query("nome") String nome, @Query("email") String email,
			@Query("cpfCnpj") String cpfCnpj, @Query("itensPorPagina") Integer itensPorPagina,
			@Query("paginaAtual") Integer paginaAtual, @Query("ordenarPor") String ordenarPor,
			@Query("tipoOrdenacao") String tipoOrdenacao);
}	//	InterfaceBancoInter
