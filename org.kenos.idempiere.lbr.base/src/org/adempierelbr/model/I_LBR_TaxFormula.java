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

/** Generated Interface for LBR_TaxFormula
 *  @author iDempiere (generated) 
 *  @version Release 6.2
 */
@SuppressWarnings("all")
public interface I_LBR_TaxFormula 
{

    /** TableName=LBR_TaxFormula */
    public static final String Table_Name = "LBR_TaxFormula";

    /** AD_Table_ID=1000026 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 6 - System - Client 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(6);

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

    /** Column name IsSOTrx */
    public static final String COLUMNNAME_IsSOTrx = "IsSOTrx";

	/** Set Sales Transaction.
	  * This is a Sales Transaction
	  */
	public void setIsSOTrx (String IsSOTrx);

	/** Get Sales Transaction.
	  * This is a Sales Transaction
	  */
	public String getIsSOTrx();

    /** Column name IsTaxIncluded */
    public static final String COLUMNNAME_IsTaxIncluded = "IsTaxIncluded";

	/** Set Price includes Tax.
	  * Tax is included in the price 
	  */
	public void setIsTaxIncluded (boolean IsTaxIncluded);

	/** Get Price includes Tax.
	  * Tax is included in the price 
	  */
	public boolean isTaxIncluded();

    /** Column name LBR_FormulaAdd_ID */
    public static final String COLUMNNAME_LBR_FormulaAdd_ID = "LBR_FormulaAdd_ID";

	/** Set Additional Formula	  */
	public void setLBR_FormulaAdd_ID (int LBR_FormulaAdd_ID);

	/** Get Additional Formula	  */
	public int getLBR_FormulaAdd_ID();

	public org.adempierelbr.model.I_LBR_Formula getLBR_FormulaAdd() throws RuntimeException;

    /** Column name LBR_FormulaBase_ID */
    public static final String COLUMNNAME_LBR_FormulaBase_ID = "LBR_FormulaBase_ID";

	/** Set Formula Base	  */
	public void setLBR_FormulaBase_ID (int LBR_FormulaBase_ID);

	/** Get Formula Base	  */
	public int getLBR_FormulaBase_ID();

	public org.adempierelbr.model.I_LBR_Formula getLBR_FormulaBase() throws RuntimeException;

    /** Column name LBR_FormulaNet_ID */
    public static final String COLUMNNAME_LBR_FormulaNet_ID = "LBR_FormulaNet_ID";

	/** Set Formula Net (BR)	  */
	public void setLBR_FormulaNet_ID (int LBR_FormulaNet_ID);

	/** Get Formula Net (BR)	  */
	public int getLBR_FormulaNet_ID();

	public org.adempierelbr.model.I_LBR_Formula getLBR_FormulaNet() throws RuntimeException;

    /** Column name LBR_Formula_ID */
    public static final String COLUMNNAME_LBR_Formula_ID = "LBR_Formula_ID";

	/** Set Formula (BR)	  */
	public void setLBR_Formula_ID (int LBR_Formula_ID);

	/** Get Formula (BR)	  */
	public int getLBR_Formula_ID();

	public org.adempierelbr.model.I_LBR_Formula getLBR_Formula() throws RuntimeException;

    /** Column name LBR_TaxFormula_ID */
    public static final String COLUMNNAME_LBR_TaxFormula_ID = "LBR_TaxFormula_ID";

	/** Set Tax Formula.
	  * Primary key table LBR_TaxFormula
	  */
	public void setLBR_TaxFormula_ID (int LBR_TaxFormula_ID);

	/** Get Tax Formula.
	  * Primary key table LBR_TaxFormula
	  */
	public int getLBR_TaxFormula_ID();

    /** Column name LBR_TaxFormula_UU */
    public static final String COLUMNNAME_LBR_TaxFormula_UU = "LBR_TaxFormula_UU";

	/** Set LBR_TaxFormula_UU	  */
	public void setLBR_TaxFormula_UU (String LBR_TaxFormula_UU);

	/** Get LBR_TaxFormula_UU	  */
	public String getLBR_TaxFormula_UU();

    /** Column name LBR_TaxName_ID */
    public static final String COLUMNNAME_LBR_TaxName_ID = "LBR_TaxName_ID";

	/** Set Tax Name.
	  * Primary key table LBR_TaxName
	  */
	public void setLBR_TaxName_ID (int LBR_TaxName_ID);

	/** Get Tax Name.
	  * Primary key table LBR_TaxName
	  */
	public int getLBR_TaxName_ID();

	public org.adempierelbr.model.I_LBR_TaxName getLBR_TaxName() throws RuntimeException;

    /** Column name Percentage */
    public static final String COLUMNNAME_Percentage = "Percentage";

	/** Set Percentage.
	  * Percent of the entire amount
	  */
	public void setPercentage (BigDecimal Percentage);

	/** Get Percentage.
	  * Percent of the entire amount
	  */
	public BigDecimal getPercentage();

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

    /** Column name ValidFrom */
    public static final String COLUMNNAME_ValidFrom = "ValidFrom";

	/** Set Valid from.
	  * Valid from including this date (first day)
	  */
	public void setValidFrom (Timestamp ValidFrom);

	/** Get Valid from.
	  * Valid from including this date (first day)
	  */
	public Timestamp getValidFrom();

    /** Column name lbr_Formula */
    public static final String COLUMNNAME_lbr_Formula = "lbr_Formula";

	/** Set Formula.
	  * Defines the Tax Formula
	  */
	public void setlbr_Formula (String lbr_Formula);

	/** Get Formula.
	  * Defines the Tax Formula
	  */
	public String getlbr_Formula();

    /** Column name lbr_FormulaNetWorth */
    public static final String COLUMNNAME_lbr_FormulaNetWorth = "lbr_FormulaNetWorth";

	/** Set Formula NetWorth.
	  * Defines the Tax Formula NetWorth
	  */
	public void setlbr_FormulaNetWorth (String lbr_FormulaNetWorth);

	/** Get Formula NetWorth.
	  * Defines the Tax Formula NetWorth
	  */
	public String getlbr_FormulaNetWorth();

    /** Column name lbr_ServiceFactor */
    public static final String COLUMNNAME_lbr_ServiceFactor = "lbr_ServiceFactor";

	/** Set Service Factor.
	  * Define the Service Factor Formula
	  */
	public void setlbr_ServiceFactor (String lbr_ServiceFactor);

	/** Get Service Factor.
	  * Define the Service Factor Formula
	  */
	public String getlbr_ServiceFactor();

    /** Column name lbr_TransactionType */
    public static final String COLUMNNAME_lbr_TransactionType = "lbr_TransactionType";

	/** Set Transaction Type.
	  * Defines the Transaction Type
	  */
	public void setlbr_TransactionType (String lbr_TransactionType);

	/** Get Transaction Type.
	  * Defines the Transaction Type
	  */
	public String getlbr_TransactionType();
}
