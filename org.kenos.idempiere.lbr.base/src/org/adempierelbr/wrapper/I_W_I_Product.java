/******************************************************************************
 * Product: Kenos iDempiere ERP & CRM Smart Business Solution                 *
 * Copyright (C) 1999-2022 Kenos, Ltda. All Rights Reserved.                  *
 * Copyright (C) 1999-2022 Ricardo Santana. All Rights Reserved.              *
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

import org.compiere.model.*;

/** Generated Interface for I_Product
 *  @author Ricardo Santana
 *  @version Release 6.2
 */
public interface I_W_I_Product extends I_I_Product 
{


    /** Column name IsBOM */
    public static final String COLUMNNAME_IsBOM = "IsBOM";

	/** IsBOM AD_Reference_ID=319 */
	public static final int ISBOM_AD_Reference_ID=319;

	/** Yes = Y */
	public static final String ISBOM_Yes = "Y";

	/** No = N */
	public static final String ISBOM_No = "N";


	/** Set Bill of Materials.
	  * Bill of Materials
	  */
	public void setIsBOM (String IsBOM);

	/** Get Bill of Materials.
	  * Bill of Materials
	  */
	public String getIsBOM();

    /** Column name IsPurchased */
    public static final String COLUMNNAME_IsPurchased = "IsPurchased";

	/** IsPurchased AD_Reference_ID=319 */
	public static final int ISPURCHASED_AD_Reference_ID=319;

	/** Yes = Y */
	public static final String ISPURCHASED_Yes = "Y";

	/** No = N */
	public static final String ISPURCHASED_No = "N";


	/** Set Purchased.
	  * Organization purchases this product
	  */
	public void setIsPurchased (String IsPurchased);

	/** Get Purchased.
	  * Organization purchases this product
	  */
	public String getIsPurchased();

    /** Column name IsSold */
    public static final String COLUMNNAME_IsSold = "IsSold";

	/** IsSold AD_Reference_ID=319 */
	public static final int ISSOLD_AD_Reference_ID=319;

	/** Yes = Y */
	public static final String ISSOLD_Yes = "Y";

	/** No = N */
	public static final String ISSOLD_No = "N";


	/** Set Sold.
	  * Organization sells this product
	  */
	public void setIsSold (String IsSold);

	/** Get Sold.
	  * Organization sells this product
	  */
	public String getIsSold();

    /** Column name IsStocked */
    public static final String COLUMNNAME_IsStocked = "IsStocked";

	/** IsStocked AD_Reference_ID=319 */
	public static final int ISSTOCKED_AD_Reference_ID=319;

	/** Yes = Y */
	public static final String ISSTOCKED_Yes = "Y";

	/** No = N */
	public static final String ISSTOCKED_No = "N";


	/** Set Stocked.
	  * Organization stocks this product
	  */
	public void setIsStocked (String IsStocked);

	/** Get Stocked.
	  * Organization stocks this product
	  */
	public String getIsStocked();

    /** Column name LBR_CESTName */
    public static final String COLUMNNAME_LBR_CESTName = "LBR_CESTName";

	/** Set CEST Name	  */
	public void setLBR_CESTName (String LBR_CESTName);

	/** Get CEST Name	  */
	public String getLBR_CESTName();

    /** Column name ProductAttribute */
    public static final String COLUMNNAME_ProductAttribute = "ProductAttribute";

	/** Set Product Attribute.
	  * Product Attribute Instance Description
	  */
	public void setProductAttribute (String ProductAttribute);

	/** Get Product Attribute.
	  * Product Attribute Instance Description
	  */
	public String getProductAttribute();

    /** Column name ShelfLifeDays */
    public static final String COLUMNNAME_ShelfLifeDays = "ShelfLifeDays";

	/** Set Shelf Life Days.
	  * Shelf Life in days based on Product Instance Guarantee Date
	  */
	public void setShelfLifeDays (int ShelfLifeDays);

	/** Get Shelf Life Days.
	  * Shelf Life in days based on Product Instance Guarantee Date
	  */
	public int getShelfLifeDays();

    /** Column name lbr_IsManufactured */
    public static final String COLUMNNAME_lbr_IsManufactured = "lbr_IsManufactured";

	/** lbr_IsManufactured AD_Reference_ID=1000027 */
	public static final int LBR_ISMANUFACTURED_AD_Reference_ID=1000027;

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

    /** Column name lbr_NCMName */
    public static final String COLUMNNAME_lbr_NCMName = "lbr_NCMName";

	/** Set NCM Name.
	  * Defines the NCM Name
	  */
	public void setlbr_NCMName (String lbr_NCMName);

	/** Get NCM Name.
	  * Defines the NCM Name
	  */
	public String getlbr_NCMName();
}
