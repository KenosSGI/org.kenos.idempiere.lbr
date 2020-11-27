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

/** Generated Interface for LBR_SCANC_NF
 *  @author iDempiere (generated) 
 *  @version Release 6.2
 */
@SuppressWarnings("all")
public interface I_LBR_SCANC_NF 
{

    /** TableName=LBR_SCANC_NF */
    public static final String Table_Name = "LBR_SCANC_NF";

    /** AD_Table_ID=1120705 */
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

    /** Column name Description */
    public static final String COLUMNNAME_Description = "Description";

	/** Set Description.
	  * Optional short description of the record
	  */
	public void setDescription (String Description);

	/** Get Description.
	  * Optional short description of the record
	  */
	public String getDescription();

    /** Column name DocumentNo */
    public static final String COLUMNNAME_DocumentNo = "DocumentNo";

	/** Set Document No.
	  * Document sequence number of the document
	  */
	public void setDocumentNo (String DocumentNo);

	/** Get Document No.
	  * Document sequence number of the document
	  */
	public String getDocumentNo();

    /** Column name GrandTotal */
    public static final String COLUMNNAME_GrandTotal = "GrandTotal";

	/** Set Grand Total.
	  * Total amount of document
	  */
	public void setGrandTotal (BigDecimal GrandTotal);

	/** Get Grand Total.
	  * Total amount of document
	  */
	public BigDecimal getGrandTotal();

    /** Column name ICMSST_TaxAmt */
    public static final String COLUMNNAME_ICMSST_TaxAmt = "ICMSST_TaxAmt";

	/** Set ICMSST	  */
	public void setICMSST_TaxAmt (BigDecimal ICMSST_TaxAmt);

	/** Get ICMSST	  */
	public BigDecimal getICMSST_TaxAmt();

    /** Column name ICMSST_TaxBaseAmt */
    public static final String COLUMNNAME_ICMSST_TaxBaseAmt = "ICMSST_TaxBaseAmt";

	/** Set ICMSST Base	  */
	public void setICMSST_TaxBaseAmt (BigDecimal ICMSST_TaxBaseAmt);

	/** Get ICMSST Base	  */
	public BigDecimal getICMSST_TaxBaseAmt();

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

    /** Column name LBR_NotaFiscalLine_ID */
    public static final String COLUMNNAME_LBR_NotaFiscalLine_ID = "LBR_NotaFiscalLine_ID";

	/** Set Nota Fiscal Line.
	  * Primary key table LBR_NotaFiscalLine
	  */
	public void setLBR_NotaFiscalLine_ID (int LBR_NotaFiscalLine_ID);

	/** Get Nota Fiscal Line.
	  * Primary key table LBR_NotaFiscalLine
	  */
	public int getLBR_NotaFiscalLine_ID();

	public org.adempierelbr.model.I_LBR_NotaFiscalLine getLBR_NotaFiscalLine() throws RuntimeException;

    /** Column name LBR_SCANC_ID */
    public static final String COLUMNNAME_LBR_SCANC_ID = "LBR_SCANC_ID";

	/** Set SCANC	  */
	public void setLBR_SCANC_ID (int LBR_SCANC_ID);

	/** Get SCANC	  */
	public int getLBR_SCANC_ID();

	public org.adempierelbr.model.I_LBR_SCANC getLBR_SCANC() throws RuntimeException;

    /** Column name LBR_SCANC_NF_ID */
    public static final String COLUMNNAME_LBR_SCANC_NF_ID = "LBR_SCANC_NF_ID";

	/** Set SCANC NF	  */
	public void setLBR_SCANC_NF_ID (int LBR_SCANC_NF_ID);

	/** Get SCANC NF	  */
	public int getLBR_SCANC_NF_ID();

    /** Column name LBR_SCANC_NF_UU */
    public static final String COLUMNNAME_LBR_SCANC_NF_UU = "LBR_SCANC_NF_UU";

	/** Set LBR_SCANC_NF_UU	  */
	public void setLBR_SCANC_NF_UU (String LBR_SCANC_NF_UU);

	/** Get LBR_SCANC_NF_UU	  */
	public String getLBR_SCANC_NF_UU();

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

    /** Column name Region */
    public static final String COLUMNNAME_Region = "Region";

	/** Set Region	  */
	public void setRegion (String Region);

	/** Get Region	  */
	public String getRegion();

    /** Column name RegionName */
    public static final String COLUMNNAME_RegionName = "RegionName";

	/** Set Region.
	  * Name of the Region
	  */
	public void setRegionName (String RegionName);

	/** Get Region.
	  * Name of the Region
	  */
	public String getRegionName();

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

    /** Column name lbr_BPShipperCNPJ */
    public static final String COLUMNNAME_lbr_BPShipperCNPJ = "lbr_BPShipperCNPJ";

	/** Set BP Shipper CNPJ.
	  * BP Shipper CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPShipperCNPJ (String lbr_BPShipperCNPJ);

	/** Get BP Shipper CNPJ.
	  * BP Shipper CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPShipperCNPJ();

    /** Column name lbr_BPShipperLicensePlate */
    public static final String COLUMNNAME_lbr_BPShipperLicensePlate = "lbr_BPShipperLicensePlate";

	/** Set BP Shipper License Plate.
	  * Defines the BP Shipper License Plate
	  */
	public void setlbr_BPShipperLicensePlate (String lbr_BPShipperLicensePlate);

	/** Get BP Shipper License Plate.
	  * Defines the BP Shipper License Plate
	  */
	public String getlbr_BPShipperLicensePlate();

    /** Column name lbr_CFOPName */
    public static final String COLUMNNAME_lbr_CFOPName = "lbr_CFOPName";

	/** Set CFOP Name.
	  * Defines the CFOP Name
	  */
	public void setlbr_CFOPName (String lbr_CFOPName);

	/** Get CFOP Name.
	  * Defines the CFOP Name
	  */
	public String getlbr_CFOPName();

    /** Column name lbr_IE */
    public static final String COLUMNNAME_lbr_IE = "lbr_IE";

	/** Set IE.
	  * Used to Identify the IE (State Tax ID)
	  */
	public void setlbr_IE (String lbr_IE);

	/** Get IE.
	  * Used to Identify the IE (State Tax ID)
	  */
	public String getlbr_IE();

    /** Column name lbr_NFModel */
    public static final String COLUMNNAME_lbr_NFModel = "lbr_NFModel";

	/** Set NF Model.
	  * Identifies the model of Nota Fiscal
	  */
	public void setlbr_NFModel (String lbr_NFModel);

	/** Get NF Model.
	  * Identifies the model of Nota Fiscal
	  */
	public String getlbr_NFModel();

    /** Column name lbr_NFSerie */
    public static final String COLUMNNAME_lbr_NFSerie = "lbr_NFSerie";

	/** Set NF Serie	  */
	public void setlbr_NFSerie (String lbr_NFSerie);

	/** Get NF Serie	  */
	public String getlbr_NFSerie();
}
