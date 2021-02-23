/******************************************************************************
 * Copyright (C) 2018 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2018 Ricardo Santana                                         *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.kenos.idempiere.lbr.base.cep.provider;

import java.math.BigDecimal;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.net.http.HttpResponse.BodyHandlers;
import java.util.Map;

import org.adempierelbr.util.TextUtil;
import org.json.JSONObject;
import org.kenos.idempiere.lbr.base.cep.IBuscaCEP;

/**
 * 		Implementação da pesquisa de CEP para o serviço Postmon
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: Postmon.java, v1.0 2018/04/11 13:27:12 PM, ralexsander Exp $
 */
public class Postmon implements IBuscaCEP 
{
	/**	Result code	*/
	private int resultCode = -1;
	
	/**	CEP retornado pela pesquisa	*/
	private String cep = null;
	
	/**	Bairro	*/
	private String bairro = null;
	
	/**	Cidade	*/
	private String cidade = null;
	
	/**	Logradouro	*/
	private String logradouro = null;
	
	/**	UF	*/
	private String uf = null;

	/**	Dados adicionais da Cidade */
	private Map<String, String> cidadeInfo = null;
	
	/**	Dados adicionais da UF */
	private Map<String, String> estadoInfo = null;

	/**
	 * 	Ajusta o valor do resultado da pesquisa
	 * 	@param resultCode
	 */
	private void setResultCode (int resultCode)
	{
		this.resultCode = resultCode;
	}	//	setResultCode

	/**	Postmon URL	*/
	private static final String URL_STRING = "https://api.postmon.com.br/v1/cep/";
	
	/**
	 * Faz uma busca a partir do cep enviado, no site 
	 * <a href="http://www.http://postmon.com.br/" 
	 * target="_blank">POSTMON</a>, retornando o resultado em um objeto
	 * {@link Postmon}.
	 * <BR>
	 * <BR>Não se faz necessário formatações, a string pode ser enviada em qualquer
	 * formatação, pois só serão consideradas os primeiros 8 numeros da string.
	 * <BR>Por Exemplo:
	 * <BR>Uma <tt>{@link String} "14.568-910"</tt> é automaticamente passada para
	 * <tt>"14568910"</tt>.
	 * <BR>Uma <tt>{@link String} "1%4#5?55%16a8&910"</tt> é automaticamente passada para
	 * <tt>"14555168"</tt>, só levando em conta os primeiros 8 números.
	 * @param	cep Número do cep a ser carregado. Só serão considerados os primeiros 8 
	 * 			números da {@link String} enviada. Todos os caracters não numéricos serão
	 * 			removidos, e a string será truncada caso seja maior que 8 caracters.
	 * @return {@link RepublicaVirtual} contendo as informações da pesquisa.
	 */
	@Override
	public void searchCEP (String cep)
	{
		//	Clear fields
		clearFields ();
		
		//	To Numeric
		cep = TextUtil.toNumeric (cep);
		//	Exact 8 digits
		if (cep.length() != 8)
			cep = TextUtil.lPad (cep, 8);
		
		try
		{
			//	Create the complete URL
			HttpRequest request = HttpRequest.newBuilder(URI.create(URL_STRING + cep))
					.header("Content-Type", "application/json")
					.GET()
					.build();

			HttpResponse<String> send = HttpClient.newHttpClient().send(request, BodyHandlers.ofString());
			if (send.statusCode() != 200)
				throw new Exception ("Failed to connect to Web Services: " + send.statusCode() + " - " + send.body());
			
			JSONObject result_cep = new JSONObject(send.body());
			this.uf				= result_cep.getString("estado");
			this.cep 			= result_cep.getString("cep").replaceAll("(\\d{5})(\\d{3})", "$1-$2");
			this.bairro 		= result_cep.getString("bairro");
			this.cidade 		= result_cep.getString("cidade");
			this.logradouro 	= result_cep.getString("logradouro");
			
			//	Everything OK
			setResultCode(RESULT_CEP_ENCONTRADO);
		}
		catch (Exception e)
		{
			setResultCode(RESULT_ERRO_DESCONHECIDO);
		}
	}	//	searchCEP

	/**
	 * 	Clear fields
	 */
	private void clearFields ()
	{
		resultCode 	= -1;
		cep 		= null;
		bairro 		= null;
		cidade 		= null;
		logradouro 	= null;
		cidadeInfo 	= null;
		estadoInfo 	= null;
	}	//	clearFields

	@Override
	public boolean wasSuccessful()
	{
		return resultCode == RESULT_CEP_ENCONTRADO;
	}	//	wasSuccessful

	@Override
	public int getResulCode()
	{
		return resultCode;
	}	//	getResulCode

	@Override
	public String getCidade()
	{
		return cidade;
	}	//	getCidade

	@Override
	public String getLogradouroType()
	{
		return "";
	}	//	getLogradouroType

	@Override
	public String getLogradouro()
	{
		return logradouro;
	}	//	getLogradouro

	@Override
	public String getBairro()
	{
		return bairro;
	}	//	getBairro

	@Override
	public String getCEP()
	{
		return cep;
	}	//	getCEP

	@Override
	public String getUF()
	{
		return uf;
	}	//	getUF
	
	@Override
	public String getCodCidadeIBGE()
	{
		return cidadeInfo != null ? cidadeInfo.get("codigo_ibge") : null;
	}	//	getCodCidadeIBGE

	
	@Override
	public String getCodUFIBGE()
	{
		return estadoInfo != null ? estadoInfo.get("codigo_ibge") : null;
	}	//	getCodUFIBGE

	/**
	 * 	Webservice não fornece esta informação
	 */
	@Override
	public BigDecimal getLatitude()
	{
		return null;
	}	//	getLatitude

	/**
	 * 	Webservice não fornece esta informação
	 */
	@Override
	public BigDecimal getLongitude()
	{
		return null;
	}	//	getLongitude
	
	/**
	 * 	Testing
	 * 	@param args
	 */
	public static void main (String[] args)
	{
		Postmon mon = new Postmon ();
		
		//	A pesquisa deverá agregar os zeros à esqueda e eliminar qualquer dígito não numérico
		mon.searchCEP(" 2 0 1 7 - 0 0 2 | QWERTY ");
		
		System.out.println("==================================================");
		System.out.println("| Resultado:   " + mon.getResulCode());
		System.out.println("--------------------------------------------------");
		System.out.println("| Logradouro:  " + mon.getLogradouro());
		System.out.println("| Bairro:      " + mon.getBairro());
		System.out.println("| Cidade:      " + mon.getCidade() + " / " + mon.getCodCidadeIBGE());
		System.out.println("| CEP:         " + mon.getCEP());
		System.out.println("| UF:          " + mon.getUF() + " / " + mon.getCodUFIBGE());
		System.out.println("==================================================");
	}	//	main
}	//	Postmon