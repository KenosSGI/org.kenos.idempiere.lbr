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
package org.kenos.idempiere.lbr.wrapper;

import java.math.BigDecimal;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for M_Warehouse
 *  @author iDempiere (generated) 
 *  @version Release 4.1
 */
@SuppressWarnings("all")
public interface I_W_M_Warehouse 
{

    /** TableName=M_Warehouse */
    public static final String Table_Name = "M_Warehouse";

    /** AD_Table_ID=190 */
    public static final int Table_ID = 190;


    /** Column name LBR_IsThirdParty */
    public static final String COLUMNNAME_LBR_IsThirdParty = "LBR_IsThirdParty";

	/** Set Is Third Party .
	  * Indicates if this warehouse holds third party locators
	  */
	public void setLBR_IsThirdParty (boolean LBR_IsThirdParty);

	/** Get Is Third Party .
	  * Indicates if this warehouse holds third party locators
	  */
	public boolean isLBR_IsThirdParty();

    /** Column name LBR_WarehouseType */
    public static final String COLUMNNAME_LBR_WarehouseType = "LBR_WarehouseType";

	/** Próprio = OWN */
	public static final String LBR_WAREHOUSETYPE_Próprio = "OWN";

	/** Terceiros em Nosso Poder = 3RD */
	public static final String LBR_WAREHOUSETYPE_TerceirosEmNossoPoder = "3RD";

	/** Nosso em Poder de Terceiros = 3WN */
	public static final String LBR_WAREHOUSETYPE_NossoEmPoderDeTerceiros = "3WN";


	/** Set Warehouse Type.
	  * Defines the Warehouse Type
	  */
	public void setLBR_WarehouseType (String LBR_WarehouseType);

	/** Get Warehouse Type.
	  * Defines the Warehouse Type
	  */
	public String getLBR_WarehouseType();
}
