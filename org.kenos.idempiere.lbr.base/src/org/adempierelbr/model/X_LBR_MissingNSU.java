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
/** Generated Model - DO NOT CHANGE */
package org.adempierelbr.model;

import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for LBR_MissingNSU
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_MissingNSU extends PO implements I_LBR_MissingNSU, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20200810L;

    /** Standard Constructor */
    public X_LBR_MissingNSU (Properties ctx, int LBR_MissingNSU_ID, String trxName)
    {
      super (ctx, LBR_MissingNSU_ID, trxName);
      /** if (LBR_MissingNSU_ID == 0)
        {
        } */
    }

    /** Load Constructor */
    public X_LBR_MissingNSU (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 3 - Client - Org 
      */
    protected int get_AccessLevel()
    {
      return accessLevel.intValue();
    }

    /** Load Meta Data */
    protected POInfo initPO (Properties ctx)
    {
      POInfo poi = POInfo.getPOInfo (ctx, Table_ID, get_TrxName());
      return poi;
    }

    public String toString()
    {
      StringBuffer sb = new StringBuffer ("X_LBR_MissingNSU[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Fix Missing NSU.
		@param LBR_FixMissingNSU Fix Missing NSU	  */
	public void setLBR_FixMissingNSU (String LBR_FixMissingNSU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_FixMissingNSU, LBR_FixMissingNSU);
	}

	/** Get Fix Missing NSU.
		@return Fix Missing NSU	  */
	public String getLBR_FixMissingNSU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_FixMissingNSU);
	}

	/** Set NSU.
		@param LBR_NSU 
		Unic Sequencial Number used on Manifest of Fiscal Documento
	  */
	public void setLBR_NSU (String LBR_NSU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_NSU, LBR_NSU);
	}

	/** Get NSU.
		@return Unic Sequencial Number used on Manifest of Fiscal Documento
	  */
	public String getLBR_NSU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NSU);
	}
}