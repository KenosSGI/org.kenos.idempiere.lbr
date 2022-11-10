package org.kenos.idempiere.lbr.bankslip.api;

import org.kenos.idempiere.lbr.bankslip.api.inter.Boleto;
import org.kenos.idempiere.lbr.bankslip.api.inter.Cancelar;
import org.kenos.idempiere.lbr.bankslip.api.inter.ResponseBoleto;
import org.kenos.idempiere.lbr.bankslip.api.inter.ResponseLogin;
import org.kenos.idempiere.lbr.bankslip.api.inter.ResponseGetPDF;

import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Path;

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
}	//	InterfaceBancoInter
