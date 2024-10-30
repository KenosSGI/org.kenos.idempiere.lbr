/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2006 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.kenos.idempiere.lbr.tax.process;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.logging.Level;
import java.util.stream.Collectors;

import org.adempierelbr.model.MLBRNCM;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MPostIt;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

import okhttp3.OkHttpClient;
import retrofit2.Call;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.jackson.JacksonConverterFactory;
import retrofit2.http.GET;
import retrofit2.http.Query;

/**
 *	Import NCM
 *	
 *  @author Ricardo Santana <rsantana@kenos.com.br>
 */
public class ImportNCM extends SvrProcess
{
	private boolean p_CreateNew = false;
	private boolean p_DeleteOld = true;

	private static final String PROFILE = "PUBLICO";

	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals("CreateNew"))
				p_CreateNew = para[i].getParameterAsBoolean();
			else if (name.equals("DeleteOld"))
				p_DeleteOld = para[i].getParameterAsBoolean();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message (clear text)
	 *  @throws Exception if not successful
	 */
	protected String doIt() throws Exception
	{
		OkHttpClient client = new OkHttpClient.Builder().build();
		ClassifAPI api = new Retrofit.Builder()
				.baseUrl("https://portalunico.siscomex.gov.br/classif/api/")
				.addConverterFactory(JacksonConverterFactory.create())
				.client(client)
				.build().create(ClassifAPI.class);
		
		statusUpdate ("Conectando a API para obter os dados...");
		
		Call<Root> call = api.download(PROFILE);
		Response<Root> response = call.execute();
		
		if (response.code() != 200)
			return "@Error@ " + response.code() + " - " + response.message();
		
		statusUpdate ("Download concluído... Processando...");
		
		Root downloaded = response.body();
		//
		String ato = downloaded.getAto();
		
		Map<Integer, Nomenclatura> parent = new HashMap<Integer, Nomenclatura>();
		List<Nomenclatura> nomenclaturas = downloaded.getNomenclaturas();
		int total = nomenclaturas.size();
		AtomicInteger processed = new AtomicInteger();
		//
		nomenclaturas.forEach(nomenclatura -> {
			final StringBuilder parentDesc = new StringBuilder();
			final StringBuilder codigo = new StringBuilder(nomenclatura.getCodigo());
			//
			parent.keySet().stream().filter(key -> key < codigo.length()).forEach(key -> {
				Nomenclatura parentNCM = parent.get(key);
				if (TextUtil.toNumeric(nomenclatura.getCodigo())
						.startsWith(TextUtil.toNumeric(parentNCM.getCodigo())))
					parentDesc.append(parentNCM.getCodigo() + ": " + parentNCM.getDescricao()).append("\n");
			});
			
			parent.put(codigo.length(), nomenclatura);
			processNCM(nomenclatura, parentDesc.toString());
			
			int progress = processed.incrementAndGet()*100/total;
			if (progress % 5 == 0)
				statusUpdate("Processando... " + progress + "% ");
		});

		statusUpdate("Verificando os NCMs ativos");

		final Timestamp now = new Timestamp (System.currentTimeMillis());
		List<String> active = nomenclaturas.stream()
				.filter(ncm -> {
					return ncm.getData_Inicio().before(now) && ncm.getData_Fim().after(now);
				})
				.map(Nomenclatura::getCodigo)
				.collect(Collectors.toList());
		int[] ids = new org.compiere.model.Query (getCtx(), MLBRNCM.Table_Name, "", null)
				.setOnlyActiveRecords(true)
				.setClient_ID()
				.getIDs();

		if (p_DeleteOld) {
			statusUpdate("Desabilitando NCMs descontinuados");
			Arrays.stream(ids).forEach(id -> {
				MLBRNCM ncm = new MLBRNCM (getCtx(), id, null);
				if (active.contains(ncm.getValue()))
					return;
				//
				ncm.setIsActive(false);
				ncm.save();
				
				MPostIt postIt = new MPostIt (getCtx(), MLBRNCM.Table_ID, ncm.getLBR_NCM_ID(), null);
				postIt.setText("** Desativado via processo de Importação de NCM **");
				postIt.save();
			});
		}
			
		return "@Success@\n" + ato;
	}	//	doIt

	private void processNCM (Nomenclatura nomenclatura, String parentDesc) {
		String codigo = nomenclatura.getCodigo();
		MLBRNCM ncm = MLBRNCM.get (getCtx(), codigo, null);
		
		//	Create if not exists
		if (p_CreateNew && ncm == null) {
			ncm = new MLBRNCM (getCtx(), 0, get_TrxName());
			//
			ncm.setValue(codigo);
			ncm.setAD_Org_ID(0);
		}
		
		ncm.setDescription(parentDesc + nomenclatura.getDescricao());
		ncm.setValidFrom(nomenclatura.getData_Inicio());
		ncm.setValidTo(nomenclatura.getData_Fim());
		ncm.save();
	}	//	processNCM
}	//	ImportNCM

interface ClassifAPI {
	@GET("publico/nomenclatura/download/json")
	Call<Root> download(@Query("perfil") String perfil);
}

@JsonIgnoreProperties(ignoreUnknown = true)
class Nomenclatura {
	@JsonProperty("Codigo")
	public String codigo;
	@JsonProperty("Descricao")
	public String descricao;
	@JsonProperty("Data_Inicio")
	public String data_Inicio;
	@JsonProperty("Data_Fim")
	public String data_Fim;
	@JsonProperty("Tipo_Ato")
	public String tipo_Ato;
	@JsonProperty("Numero_Ato")
	public String numero_Ato;
	@JsonProperty("Ano_Ato")
	public String ano_Ato;
	public String getCodigo() {
		return codigo;
	}
	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public Timestamp getData_Inicio() {
		return TextUtil.stringToTime(data_Inicio, "dd/MM/yyyy");
	}
	public void setData_Inicio(String data_Inicio) {
		this.data_Inicio = data_Inicio;
	}
	public Timestamp getData_Fim() {
		return TextUtil.stringToTime(data_Fim, "dd/MM/yyyy");
	}
	public void setData_Fim(String data_Fim) {
		this.data_Fim = data_Fim;
	}
	public String getTipo_Ato() {
		return tipo_Ato;
	}
	public void setTipo_Ato(String tipo_Ato) {
		this.tipo_Ato = tipo_Ato;
	}
	public String getNumero_Ato() {
		return numero_Ato;
	}
	public void setNumero_Ato(String numero_Ato) {
		this.numero_Ato = numero_Ato;
	}
	public String getAno_Ato() {
		return ano_Ato;
	}
	public void setAno_Ato(String ano_Ato) {
		this.ano_Ato = ano_Ato;
	}
}	//	Nomenclatura

class Root {
	@JsonProperty("Data_Ultima_Atualizacao_NCM")
	public String data_Ultima_Atualizacao_NCM;
	@JsonProperty("Ato")
	public String ato;
	@JsonProperty("Nomenclaturas")
	public ArrayList<Nomenclatura> nomenclaturas;
	public Timestamp getData_Ultima_Atualizacao_NCM() {
		return TextUtil.stringToTime(data_Ultima_Atualizacao_NCM, "dd/MM/yyyy");
	}
	public void setData_Ultima_Atualizacao_NCM(String data_Ultima_Atualizacao_NCM) {
		this.data_Ultima_Atualizacao_NCM = data_Ultima_Atualizacao_NCM;
	}
	public String getAto() {
		return ato;
	}
	public void setAto(String ato) {
		this.ato = ato;
	}
	public ArrayList<Nomenclatura> getNomenclaturas() {
		return nomenclaturas;
	}
	public void setNomenclaturas(ArrayList<Nomenclatura> nomenclaturas) {
		this.nomenclaturas = nomenclaturas;
	}
}	//	Root

