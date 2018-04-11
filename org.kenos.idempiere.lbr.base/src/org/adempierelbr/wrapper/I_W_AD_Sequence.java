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

/** Generated Interface for AD_Sequence
 *  @author iDempiere (generated) 
 *  @version Release 4.1
 */
@SuppressWarnings("all")
public interface I_W_AD_Sequence extends I_AD_Sequence 
{

    /** TableName=AD_Sequence */
    public static final String Table_Name = "AD_Sequence";

    /** AD_Table_ID=115 */
    public static final int Table_ID = 115;


    /** Column name IsRange */
    public static final String COLUMNNAME_IsRange = "IsRange";

	/** Set Range.
	  * The parameter is a range of values
	  */
	public void setIsRange (boolean IsRange);

	/** Get Range.
	  * The parameter is a range of values
	  */
	public boolean isRange();

    /** Column name ValueMax */
    public static final String COLUMNNAME_ValueMax = "ValueMax";

	/** Set Max. Value.
	  * Maximum Value for a field
	  */
	public void setValueMax (int ValueMax);

	/** Get Max. Value.
	  * Maximum Value for a field
	  */
	public int getValueMax();

    /** Column name ValueMin */
    public static final String COLUMNNAME_ValueMin = "ValueMin";

	/** Set Min. Value.
	  * Minimum Value for a field
	  */
	public void setValueMin (int ValueMin);

	/** Get Min. Value.
	  * Minimum Value for a field
	  */
	public int getValueMin();
}
