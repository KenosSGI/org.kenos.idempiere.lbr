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
package org.adempierelbr.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for LBR_SIMPLine
 *  @author iDempiere (generated) 
 *  @version Release 6.2
 */
@SuppressWarnings("all")
public interface I_LBR_SIMPLine 
{

    /** TableName=LBR_SIMPLine */
    public static final String Table_Name = "LBR_SIMPLine";

    /** AD_Table_ID=1120699 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 3 - Client - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(3);

    /** Load Meta Data */

    /** Column name AD_Client_ID */
    public static final String COLUMNNAME_AD_Client_ID = "AD_Client_ID";

	/** Get Client.
	  * Client/Tenant for this installation.
	  */
	public int getAD_Client_ID();

    /** Column name AD_Org_ID */
    public static final String COLUMNNAME_AD_Org_ID = "AD_Org_ID";

	/** Set Organization.
	  * Organizational entity within client
	  */
	public void setAD_Org_ID (int AD_Org_ID);

	/** Get Organization.
	  * Organizational entity within client
	  */
	public int getAD_Org_ID();

    /** Column name Created */
    public static final String COLUMNNAME_Created = "Created";

	/** Get Created.
	  * Date this record was created
	  */
	public Timestamp getCreated();

    /** Column name CreatedBy */
    public static final String COLUMNNAME_CreatedBy = "CreatedBy";

	/** Get Created By.
	  * User who created this records
	  */
	public int getCreatedBy();

    /** Column name DateDoc */
    public static final String COLUMNNAME_DateDoc = "DateDoc";

	/** Set Document Date.
	  * Date of the Document
	  */
	public void setDateDoc (Timestamp DateDoc);

	/** Get Document Date.
	  * Date of the Document
	  */
	public Timestamp getDateDoc();

    /** Column name IsActive */
    public static final String COLUMNNAME_IsActive = "IsActive";

	/** Set Active.
	  * The record is active in the system
	  */
	public void setIsActive (boolean IsActive);

	/** Get Active.
	  * The record is active in the system
	  */
	public boolean isActive();

    /** Column name LBR_CNPJF */
    public static final String COLUMNNAME_LBR_CNPJF = "LBR_CNPJF";

	/** Set CNPJ/CPF.
	  * CNPJ ou CPF do cliente
	  */
	public void setLBR_CNPJF (String LBR_CNPJF);

	/** Get CNPJ/CPF.
	  * CNPJ ou CPF do cliente
	  */
	public String getLBR_CNPJF();

    /** Column name LBR_FreightCostRule */
    public static final String COLUMNNAME_LBR_FreightCostRule = "LBR_FreightCostRule";

	/** Set Freight Cost Rule.
	  * Method for charging Freight
	  */
	public void setLBR_FreightCostRule (String LBR_FreightCostRule);

	/** Get Freight Cost Rule.
	  * Method for charging Freight
	  */
	public String getLBR_FreightCostRule();

    /** Column name LBR_FuelOperation_ID */
    public static final String COLUMNNAME_LBR_FuelOperation_ID = "LBR_FuelOperation_ID";

	/** Set Fuel Operation	  */
	public void setLBR_FuelOperation_ID (int LBR_FuelOperation_ID);

	/** Get Fuel Operation	  */
	public int getLBR_FuelOperation_ID();

	public org.adempierelbr.model.I_LBR_FuelOperation getLBR_FuelOperation() throws RuntimeException;

    /** Column name LBR_GLPContainer */
    public static final String COLUMNNAME_LBR_GLPContainer = "LBR_GLPContainer";

	/** Set GLP Container	  */
	public void setLBR_GLPContainer (String LBR_GLPContainer);

	/** Get GLP Container	  */
	public String getLBR_GLPContainer();

    /** Column name LBR_InstallCode1 */
    public static final String COLUMNNAME_LBR_InstallCode1 = "LBR_InstallCode1";

	/** Set Install Code 1	  */
	public void setLBR_InstallCode1 (String LBR_InstallCode1);

	/** Get Install Code 1	  */
	public String getLBR_InstallCode1();

    /** Column name LBR_InstallCode2 */
    public static final String COLUMNNAME_LBR_InstallCode2 = "LBR_InstallCode2";

	/** Set Install Code 2	  */
	public void setLBR_InstallCode2 (String LBR_InstallCode2);

	/** Get Install Code 2	  */
	public String getLBR_InstallCode2();

    /** Column name LBR_LI */
    public static final String COLUMNNAME_LBR_LI = "LBR_LI";

	/** Set LI.
	  * Licença de Importação
	  */
	public void setLBR_LI (String LBR_LI);

	/** Get LI.
	  * Licença de Importação
	  */
	public String getLBR_LI();

    /** Column name LBR_PhysicalChar */
    public static final String COLUMNNAME_LBR_PhysicalChar = "LBR_PhysicalChar";

	/** Set Physical Char.
	  * Physical Characteristic
	  */
	public void setLBR_PhysicalChar (String LBR_PhysicalChar);

	/** Get Physical Char.
	  * Physical Characteristic
	  */
	public String getLBR_PhysicalChar();

    /** Column name LBR_PipelineCode */
    public static final String COLUMNNAME_LBR_PipelineCode = "LBR_PipelineCode";

	/** Set Pipeline Code	  */
	public void setLBR_PipelineCode (String LBR_PipelineCode);

	/** Get Pipeline Code	  */
	public String getLBR_PipelineCode();

    /** Column name LBR_SIMPLine_ID */
    public static final String COLUMNNAME_LBR_SIMPLine_ID = "LBR_SIMPLine_ID";

	/** Set SIMP Line	  */
	public void setLBR_SIMPLine_ID (int LBR_SIMPLine_ID);

	/** Get SIMP Line	  */
	public int getLBR_SIMPLine_ID();

    /** Column name LBR_SIMPLine_UU */
    public static final String COLUMNNAME_LBR_SIMPLine_UU = "LBR_SIMPLine_UU";

	/** Set LBR_SIMPLine_UU	  */
	public void setLBR_SIMPLine_UU (String LBR_SIMPLine_UU);

	/** Get LBR_SIMPLine_UU	  */
	public String getLBR_SIMPLine_UU();

    /** Column name LBR_SIMP_ID */
    public static final String COLUMNNAME_LBR_SIMP_ID = "LBR_SIMP_ID";

	/** Set SIMP	  */
	public void setLBR_SIMP_ID (int LBR_SIMP_ID);

	/** Get SIMP	  */
	public int getLBR_SIMP_ID();

	public org.adempierelbr.model.I_LBR_SIMP getLBR_SIMP() throws RuntimeException;

    /** Column name LBR_TranspModal */
    public static final String COLUMNNAME_LBR_TranspModal = "LBR_TranspModal";

	/** Set Transport Modal	  */
	public void setLBR_TranspModal (String LBR_TranspModal);

	/** Get Transport Modal	  */
	public String getLBR_TranspModal();

    /** Column name Line */
    public static final String COLUMNNAME_Line = "Line";

	/** Set Line No.
	  * Unique line for this document
	  */
	public void setLine (int Line);

	/** Get Line No.
	  * Unique line for this document
	  */
	public int getLine();

    /** Column name Method */
    public static final String COLUMNNAME_Method = "Method";

	/** Set Method	  */
	public void setMethod (String Method);

	/** Get Method	  */
	public String getMethod();

    /** Column name Operation */
    public static final String COLUMNNAME_Operation = "Operation";

	/** Set Operation.
	  * Compare Operation
	  */
	public void setOperation (String Operation);

	/** Get Operation.
	  * Compare Operation
	  */
	public String getOperation();

    /** Column name Price */
    public static final String COLUMNNAME_Price = "Price";

	/** Set Price.
	  * Price
	  */
	public void setPrice (BigDecimal Price);

	/** Get Price.
	  * Price
	  */
	public BigDecimal getPrice();

    /** Column name ProductValue */
    public static final String COLUMNNAME_ProductValue = "ProductValue";

	/** Set Product Key.
	  * Key of the Product
	  */
	public void setProductValue (String ProductValue);

	/** Get Product Key.
	  * Key of the Product
	  */
	public String getProductValue();

    /** Column name Qty */
    public static final String COLUMNNAME_Qty = "Qty";

	/** Set Quantity.
	  * Quantity
	  */
	public void setQty (BigDecimal Qty);

	/** Get Quantity.
	  * Quantity
	  */
	public BigDecimal getQty();

    /** Column name Result */
    public static final String COLUMNNAME_Result = "Result";

	/** Set Result.
	  * Result of the action taken
	  */
	public void setResult (String Result);

	/** Get Result.
	  * Result of the action taken
	  */
	public String getResult();

    /** Column name SelectedProductValue */
    public static final String COLUMNNAME_SelectedProductValue = "SelectedProductValue";

	/** Set Selected Product Value	  */
	public void setSelectedProductValue (String SelectedProductValue);

	/** Get Selected Product Value	  */
	public String getSelectedProductValue();

    /** Column name Updated */
    public static final String COLUMNNAME_Updated = "Updated";

	/** Get Updated.
	  * Date this record was updated
	  */
	public Timestamp getUpdated();

    /** Column name UpdatedBy */
    public static final String COLUMNNAME_UpdatedBy = "UpdatedBy";

	/** Get Updated By.
	  * User who updated this records
	  */
	public int getUpdatedBy();

    /** Column name lbr_CNAE */
    public static final String COLUMNNAME_lbr_CNAE = "lbr_CNAE";

	/** Set CNAE.
	  * Classificação Nacional de Atividades Econômicas
	  */
	public void setlbr_CNAE (String lbr_CNAE);

	/** Get CNAE.
	  * Classificação Nacional de Atividades Econômicas
	  */
	public String getlbr_CNAE();

    /** Column name lbr_CityCode */
    public static final String COLUMNNAME_lbr_CityCode = "lbr_CityCode";

	/** Set Cod. Cidade (IBGE).
	  * Código da Cidade do IBGE (Institudo Brasileiro de Geografia e Estatística)
	  */
	public void setlbr_CityCode (int lbr_CityCode);

	/** Get Cod. Cidade (IBGE).
	  * Código da Cidade do IBGE (Institudo Brasileiro de Geografia e Estatística)
	  */
	public int getlbr_CityCode();

    /** Column name lbr_CountryCode */
    public static final String COLUMNNAME_lbr_CountryCode = "lbr_CountryCode";

	/** Set Country Code.
	  * Country Code used for issue Nota Fiscal
	  */
	public void setlbr_CountryCode (String lbr_CountryCode);

	/** Get Country Code.
	  * Country Code used for issue Nota Fiscal
	  */
	public String getlbr_CountryCode();

    /** Column name lbr_DI */
    public static final String COLUMNNAME_lbr_DI = "lbr_DI";

	/** Set DI.
	  * N˙mero do Documento de Importação DI/DSI/DA (DI/DSI/DA)
	  */
	public void setlbr_DI (String lbr_DI);

	/** Get DI.
	  * N˙mero do Documento de Importação DI/DSI/DA (DI/DSI/DA)
	  */
	public String getlbr_DI();

    /** Column name lbr_NFENo */
    public static final String COLUMNNAME_lbr_NFENo = "lbr_NFENo";

	/** Set NFe No	  */
	public void setlbr_NFENo (String lbr_NFENo);

	/** Get NFe No	  */
	public String getlbr_NFENo();

    /** Column name lbr_NFSerie */
    public static final String COLUMNNAME_lbr_NFSerie = "lbr_NFSerie";

	/** Set NF Serie	  */
	public void setlbr_NFSerie (String lbr_NFSerie);

	/** Get NF Serie	  */
	public String getlbr_NFSerie();

    /** Column name lbr_NFeID */
    public static final String COLUMNNAME_lbr_NFeID = "lbr_NFeID";

	/** Set NFe ID.
	  * Identification of NFe
	  */
	public void setlbr_NFeID (String lbr_NFeID);

	/** Get NFe ID.
	  * Identification of NFe
	  */
	public String getlbr_NFeID();

    /** Column name lbr_ServiceCode */
    public static final String COLUMNNAME_lbr_ServiceCode = "lbr_ServiceCode";

	/** Set Service Code.
	  * Service Code used for Nota Fiscal de Servicos Eletronica
	  */
	public void setlbr_ServiceCode (String lbr_ServiceCode);

	/** Get Service Code.
	  * Service Code used for Nota Fiscal de Servicos Eletronica
	  */
	public String getlbr_ServiceCode();
}
