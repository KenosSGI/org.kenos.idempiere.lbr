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
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for C_CommissionLine
 *  @author iDempiere (generated) 
 *  @version Release 4.1
 */
@SuppressWarnings("all")
public interface I_W_C_CommissionLine extends I_C_CommissionLine 
{

    /** TableName=C_CommissionLine */
    public static final String Table_Name = "C_CommissionLine";

    /** AD_Table_ID=431 */
    public static final int Table_ID = 431;


    /** Column name IsDropShip */
    public static final String COLUMNNAME_IsDropShip = "IsDropShip";

	/** Yes = Y */
	public static final String ISDROPSHIP_Yes = "Y";

	/** No = N */
	public static final String ISDROPSHIP_No = "N";

	/** Both = B */
	public static final String ISDROPSHIP_Both = "B";


	/** Set Drop Shipment.
	  * Drop Shipments are sent from the Vendor directly to the Customer
	  */
	public void setIsDropShip (String IsDropShip);

	/** Get Drop Shipment.
	  * Drop Shipments are sent from the Vendor directly to the Customer
	  */
	public String getIsDropShip();

    /** Column name LBR_FiscalGroup_Product_ID */
    public static final String COLUMNNAME_LBR_FiscalGroup_Product_ID = "LBR_FiscalGroup_Product_ID";

	/** Set Fiscal Group - Product.
	  * Primary key table LBR_FiscalGroup_Product
	  */
	public void setLBR_FiscalGroup_Product_ID (int LBR_FiscalGroup_Product_ID);

	/** Get Fiscal Group - Product.
	  * Primary key table LBR_FiscalGroup_Product
	  */
	public int getLBR_FiscalGroup_Product_ID();

    /** Column name LBR_Formula_ID */
    public static final String COLUMNNAME_LBR_Formula_ID = "LBR_Formula_ID";

	/** Set Formula (BR)	  */
	public void setLBR_Formula_ID (int LBR_Formula_ID);

	/** Get Formula (BR)	  */
	public int getLBR_Formula_ID();

    /** Column name ProductType */
    public static final String COLUMNNAME_ProductType = "ProductType";

	/** ProductType AD_Reference_ID=270 */
	public static final int PRODUCTTYPE_AD_Reference_ID=270;

	/** Item = I */
	public static final String PRODUCTTYPE_Item = "I";

	/** Service = S */
	public static final String PRODUCTTYPE_Service = "S";

	/** Resource = R */
	public static final String PRODUCTTYPE_Resource = "R";

	/** Expense type = E */
	public static final String PRODUCTTYPE_ExpenseType = "E";

	/** Online = O */
	public static final String PRODUCTTYPE_Online = "O";

	/** Asset = A */
	public static final String PRODUCTTYPE_Asset = "A";


	/** Set Product Type.
	  * Type of product
	  */
	public void setProductType (String ProductType);

	/** Get Product Type.
	  * Type of product
	  */
	public String getProductType();

    /** Column name lbr_IsManufactured */
    public static final String COLUMNNAME_lbr_IsManufactured = "lbr_IsManufactured";

	/** Yes = Y */
	public static final String LBR_ISMANUFACTURED_Yes = "Y";

	/** No = N */
	public static final String LBR_ISMANUFACTURED_No = "N";

	/** Both = B */
	public static final String LBR_ISMANUFACTURED_Both = "B";


	/** Set Is Manufactured.
	  * Defines if the Product is Manufactured
	  */
	public void setlbr_IsManufactured (String lbr_IsManufactured);

	/** Get Is Manufactured.
	  * Defines if the Product is Manufactured
	  */
	public String getlbr_IsManufactured();
}
