/******************************************************************************
 * Product: iDempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2012 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY, without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program, if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.adempierelbr.wrapper;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for AD_OrgInfo
 *  @author iDempiere (generated) 
 *  @version Release 4.1
 */
@SuppressWarnings("all")
public interface I_W_AD_OrgInfo 
{

    /** TableName=AD_OrgInfo */
    public static final String Table_Name = "AD_OrgInfo";

    /** AD_Table_ID=228 */
    public static final int Table_ID = 228;


    /** Column name AD_Language */
    public static final String COLUMNNAME_AD_Language = "AD_Language";

	/** AD_Language AD_Reference_ID=327 */
	public static final int AD_LANGUAGE_AD_Reference_ID=327;


	/** Set Language.
	  * Language for this entity
	  */
	public void setAD_Language (String AD_Language);

	/** Get Language.
	  * Language for this entity
	  */
	public String getAD_Language();

    /** Column name ContactName */
    public static final String COLUMNNAME_ContactName = "ContactName";

	/** Set Contact Name.
	  * Business Partner Contact Name
	  */
	public void setContactName (String ContactName);

	/** Get Contact Name.
	  * Business Partner Contact Name
	  */
	public String getContactName();

    /** Column name LBR_BP_Accountant_ID */
    public static final String COLUMNNAME_LBR_BP_Accountant_ID = "LBR_BP_Accountant_ID";

	/** Set Accountant	  */
	public void setLBR_BP_Accountant_ID (int LBR_BP_Accountant_ID);

	/** Get Accountant	  */
	public int getLBR_BP_Accountant_ID();

	public org.compiere.model.I_C_BPartner getLBR_BP_Accountant() throws RuntimeException;

    /** Column name LBR_CCM */
    public static final String COLUMNNAME_LBR_CCM = "LBR_CCM";

	/** Set CCM.
	  * City Identification Code used in Brazil (City Tax ID)
	  */
	public void setLBR_CCM (String LBR_CCM);

	/** Get CCM.
	  * City Identification Code used in Brazil (City Tax ID)
	  */
	public String getLBR_CCM();

    /** Column name LBR_CNAE */
    public static final String COLUMNNAME_LBR_CNAE = "LBR_CNAE";

	/** Set CNAE.
	  * Classificação Nacional de Atividades Econômicas
	  */
	public void setLBR_CNAE (String LBR_CNAE);

	/** Get CNAE.
	  * Classificação Nacional de Atividades Econômicas
	  */
	public String getLBR_CNAE();

    /** Column name LBR_CNPJ */
    public static final String COLUMNNAME_LBR_CNPJ = "LBR_CNPJ";

	/** Set CNPJ.
	  * Used to identify Legal Entities in Brazil
	  */
	public void setLBR_CNPJ (String LBR_CNPJ);

	/** Get CNPJ.
	  * Used to identify Legal Entities in Brazil
	  */
	public String getLBR_CNPJ();

    /** Column name LBR_ContatoNFe_ID */
    public static final String COLUMNNAME_LBR_ContatoNFe_ID = "LBR_ContatoNFe_ID";

	/** Set Contato NFe.
	  * Email do Usuario/Contato que servirá como remetente do XML da NFe enviado automáticamente aos Usuários/Contatos do Parceiro de Negócio.
	  */
	public void setLBR_ContatoNFe_ID (int LBR_ContatoNFe_ID);

	/** Get Contato NFe.
	  * Email do Usuario/Contato que servirá como remetente do XML da NFe enviado automáticamente aos Usuários/Contatos do Parceiro de Negócio.
	  */
	public int getLBR_ContatoNFe_ID();

	public org.compiere.model.I_AD_User getLBR_ContatoNFe() throws RuntimeException;

    /** Column name LBR_DC_Org_ID */
    public static final String COLUMNNAME_LBR_DC_Org_ID = "LBR_DC_Org_ID";

	/** Set Certificado of Organization	  */
	public void setLBR_DC_Org_ID (int LBR_DC_Org_ID);

	/** Get Certificado of Organization	  */
	public int getLBR_DC_Org_ID();

    /** Column name LBR_DC_WS_ID */
    public static final String COLUMNNAME_LBR_DC_WS_ID = "LBR_DC_WS_ID";

	/** Set Certificado of Transmission	  */
	public void setLBR_DC_WS_ID (int LBR_DC_WS_ID);

	/** Get Certificado of Transmission	  */
	public int getLBR_DC_WS_ID();

    /** Column name LBR_DtArq */
    public static final String COLUMNNAME_LBR_DtArq = "LBR_DtArq";

	/** Set Data do Arquivamento.
	  * Data do arquivamento dos atos constitutivos.
	  */
	public void setLBR_DtArq (Timestamp LBR_DtArq);

	/** Get Data do Arquivamento.
	  * Data do arquivamento dos atos constitutivos.
	  */
	public Timestamp getLBR_DtArq();

    /** Column name LBR_Fantasia */
    public static final String COLUMNNAME_LBR_Fantasia = "LBR_Fantasia";

	/** Set Fantasia	  */
	public void setLBR_Fantasia (String LBR_Fantasia);

	/** Get Fantasia	  */
	public String getLBR_Fantasia();

    /** Column name LBR_IE */
    public static final String COLUMNNAME_LBR_IE = "LBR_IE";

	/** Set IE.
	  * Used to Identify the IE (State Tax ID)
	  */
	public void setLBR_IE (String LBR_IE);

	/** Get IE.
	  * Used to Identify the IE (State Tax ID)
	  */
	public String getLBR_IE();

    /** Column name LBR_IndAtividade */
    public static final String COLUMNNAME_LBR_IndAtividade = "LBR_IndAtividade";

	/** Industrial ou equiparado a industrial = 0 */
	public static final String LBR_INDATIVIDADE_IndustrialOuEquiparadoAIndustrial = "0";

	/** Outros = 1 */
	public static final String LBR_INDATIVIDADE_Outros = "1";


	/** Set Tipo de atividade.
	  * Tipo de atividade
	  */
	public void setLBR_IndAtividade (String LBR_IndAtividade);

	/** Get Tipo de atividade.
	  * Tipo de atividade
	  */
	public String getLBR_IndAtividade();

    /** Column name LBR_IndPres */
    public static final String COLUMNNAME_LBR_IndPres = "LBR_IndPres";

	/** Não se Aplica = 0 */
	public static final String LBR_INDPRES_NãoSeAplica = "0";

	/** Operação Presencial = 1 */
	public static final String LBR_INDPRES_OperaçãoPresencial = "1";

	/** Operação não Presencial, pela Internet = 2 */
	public static final String LBR_INDPRES_OperaçãoNãoPresencialPelaInternet = "2";

	/** Operação não Presencial, Teleatendimento = 3 */
	public static final String LBR_INDPRES_OperaçãoNãoPresencialTeleatendimento = "3";

	/** NFC-e em Operação com Entrega em Domicílio = 4 */
	public static final String LBR_INDPRES_NFC_EEmOperaçãoComEntregaEmDomicílio = "4";

	/** Operação não Presencial, Outros = 9 */
	public static final String LBR_INDPRES_OperaçãoNãoPresencialOutros = "9";


	/** Set Indicação de Atendimento Presencial.
	  * Indicador de presença do comprador no estabelecimento comercial no momento da operação
	  */
	public void setLBR_IndPres (String LBR_IndPres);

	/** Get Indicação de Atendimento Presencial.
	  * Indicador de presença do comprador no estabelecimento comercial no momento da operação
	  */
	public String getLBR_IndPres();

    /** Column name LBR_Interest */
    public static final String COLUMNNAME_LBR_Interest = "LBR_Interest";

	/** Set Interest.
	  * Defines the Interest
	  */
	public void setLBR_Interest (BigDecimal LBR_Interest);

	/** Get Interest.
	  * Defines the Interest
	  */
	public BigDecimal getLBR_Interest();

    /** Column name LBR_LegalEntity */
    public static final String COLUMNNAME_LBR_LegalEntity = "LBR_LegalEntity";

	/** Set Legal Entity	  */
	public void setLBR_LegalEntity (String LBR_LegalEntity);

	/** Get Legal Entity	  */
	public String getLBR_LegalEntity();

    /** Column name LBR_NIRE */
    public static final String COLUMNNAME_LBR_NIRE = "LBR_NIRE";

	/** Set NIRE.
	  * Número de Identificação do Registro de Empresas da Junta Comercial
	  */
	public void setLBR_NIRE (String LBR_NIRE);

	/** Get NIRE.
	  * Número de Identificação do Registro de Empresas da Junta Comercial
	  */
	public String getLBR_NIRE();

    /** Column name LBR_Suframa */
    public static final String COLUMNNAME_LBR_Suframa = "LBR_Suframa";

	/** Set Suframa.
	  * Brazilian SUFRAMA Identification Number
	  */
	public void setLBR_Suframa (String LBR_Suframa);

	/** Get Suframa.
	  * Brazilian SUFRAMA Identification Number
	  */
	public String getLBR_Suframa();

    /** Column name LBR_TaxRegime */
    public static final String COLUMNNAME_LBR_TaxRegime = "LBR_TaxRegime";

	/** Simple National = S */
	public static final String LBR_TAXREGIME_SimpleNational = "S";

	/** Presumed Profit = P */
	public static final String LBR_TAXREGIME_PresumedProfit = "P";

	/** Real Profit = R */
	public static final String LBR_TAXREGIME_RealProfit = "R";

	/** Simple National - MEI = M */
	public static final String LBR_TAXREGIME_SimpleNational_MEI = "M";


	/** Set Tax Regime	  */
	public void setLBR_TaxRegime (String LBR_TaxRegime);

	/** Get Tax Regime	  */
	public String getLBR_TaxRegime();

    /** Column name LBR_Tax_ID */
    public static final String COLUMNNAME_LBR_Tax_ID = "LBR_Tax_ID";

	/** Set Brazilian Tax.
	  * Primary key table LBR_Tax
	  */
	public void setLBR_Tax_ID (Object LBR_Tax_ID);

	/** Get Brazilian Tax.
	  * Primary key table LBR_Tax
	  */
	public Object getLBR_Tax_ID();
}
