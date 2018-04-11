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
package org.kenos.idempiere.lbr.base.cep;

import java.math.BigDecimal;

/**
 * 		Interface para pesquisa de endereço pelo CEP
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: BuscaCEP.java, v1.0 2018/04/11 13:13:04 PM, ralexsander Exp $
 */
public interface IBuscaCEP
{
	/** Timeout de conexão	*/
	public static final int TIMEOUT = 10000;
	
	/** Busca não realizada */
	public static final int RESULT_BUSCA_NAO_REALIZADA = -1;
	
	/** CEP não encontrado */
	public static final int RESULT_CEP_NAO_ENCONTRADO = 0;
	
	/** CEP econtrado */
	public static final int RESULT_CEP_ENCONTRADO = 1;
	
	/** CEP parcial econtrado */
	public static final int RESULT_CEP_ENCONTRADO_PARCIAL = 2;
	
	/** Site não encontrado (pode ser por problemas na internet). */
	public static final int RESULT_ERRO_WS_NAO_ENCONTRADO = -14;
	
	/** Não foi possivel ler o documento xml */
	public static final int RESULT_ERRO_XML_INVALIDO = -15;
	
	/** Erro na formação da url */
	public static final int RESULT_ERRO_URL_MAL_FORMADA = -16;
	
	/** Erro inesperado */
	public static final int RESULT_ERRO_DESCONHECIDO = -17;

	/**
	 * Faz uma busca a partir do cep enviado, retornando o resultado em um objeto
	 * {@link IBuscaCEP}.
	 * <BR>
	 * @param	CEP Número do cep a ser carregado.
	 */
	public void searchCEP (String cep);
	
	/**
	 * Informa se o CEP foi encontrado com sucesso.
	 * @return	<tt>true</tt> - caso a pesquisa ache um resultado no banco.
	 * 			<BR><tt>false</tt> - caso haja falhas, ou o cep enviado não esteja 
	 * 			cadastrado.
	 */
	public boolean wasSuccessful();
	
	/**
	 * Informa o código do resultado da pesquisa.
	 * <BR>Códigos conhecidos:
	 * <BR><tt>-1</tt> : busca não realizada
	 * <BR><tt>0</tt> : CEP não encontrado
	 * <BR><tt>1</tt> : CEP econtrado
	 * <BR><tt>-14</tt> : Site não encontrado (pode ser por problemas na internet).
	 * <BR><tt>-15</tt> : Não foi possivel ler o documento xml
	 * <BR><tt>-16</tt> : Erro na formação da url
	 * <BR><tt>-17</tt> : Erro inesperado
	 * @return <tt>int</tt> Código do resultado.
	 */
	public int getResulCode();

	/**
	 * Informa a cidade
	 * @return {@link String} contendo o nome da Cidade
	 */
	public String getCidade();
	
	/**
	 * Informa o tipo do logradouro.
	 * @return {@link String} contendo o tipo de logradouuro.
	 */
	public String getLogradouroType();
	
	/**
	 * Informa o logradouro.
	 * @return {@link String} contendo o nome do Logradouro
	 */
	public String getLogradouro();
	
	/**
	 * Informa o bairro
	 * @return {@link String} contendo o nome bairro
	 */
	public String getBairro();
	
	/**
	 * Informa o cep.
	 * @return {@link String} contendo o cep.
	 */
	public String getCEP();
	
	/**
	 * Informa a Unidade Federativa
	 * @return {@link String} contendo o nome da Unidade Federativa
	 */
	public String getUF();
	
	/**
	 * Retorna o código da Cidade Cadastrado no IBGE
	 * @return {@link String} contendo o código da cidade
	 */
	public String getCodCidadeIBGE();
	
	/**
	 * Retorna o código do Estado/UF Cadastrado no IBGE
	 * @return {@link String} contendo o código da UF
	 */
	public String getCodUFIBGE();
	
	/**
	 * Retorna a latirude da cidade
	 * @return {@link BigDecimal} contendo a latirude da cidade
	 */
	public BigDecimal getLatitude();
	
	/**
	 * Retorna a longitude da cidade
	 * @return {@link BigDecimal} contendo a longitude da cidade
	 */
	public BigDecimal getLongitude();
}	//	BuscaCEP
