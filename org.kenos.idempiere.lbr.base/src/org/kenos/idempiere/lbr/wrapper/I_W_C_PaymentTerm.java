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

/** Generated Interface for C_PaymentTerm
 *  @author iDempiere (generated) 
 *  @version Release 4.1
 */
@SuppressWarnings("all")
public interface I_W_C_PaymentTerm 
{

    /** TableName=C_PaymentTerm */
    public static final String Table_Name = "C_PaymentTerm";

    /** AD_Table_ID=113 */
    public static final int Table_ID = 113;


    /** Column name LBR_HasInterest */
    public static final String COLUMNNAME_LBR_HasInterest = "LBR_HasInterest";

	/** Set Has Interest.
	  * Define if this document has Interest
	  */
	public void setLBR_HasInterest (boolean LBR_HasInterest);

	/** Get Has Interest.
	  * Define if this document has Interest
	  */
	public boolean isLBR_HasInterest();

    /** Column name LBR_HasSue */
    public static final String COLUMNNAME_LBR_HasSue = "LBR_HasSue";

	/** Set Has Sue.
	  * Define if this Document must be Sue
	  */
	public void setLBR_HasSue (boolean LBR_HasSue);

	/** Get Has Sue.
	  * Define if this Document must be Sue
	  */
	public boolean isLBR_HasSue();

    /** Column name LBR_SueDays */
    public static final String COLUMNNAME_LBR_SueDays = "LBR_SueDays";

	/** Set Sue Days.
	  * Define the Sue Days
	  */
	public void setLBR_SueDays (int LBR_SueDays);

	/** Get Sue Days.
	  * Define the Sue Days
	  */
	public int getLBR_SueDays();
}
