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
package org.kenos.idempiere.lbr.model;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for LBR_CNAB
 *  @author iDempiere (generated) 
 *  @version Release 4.1 - $Id$ */
public class X_LBR_CNAB extends PO implements I_LBR_CNAB, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20161221L;

    /** Standard Constructor */
    public X_LBR_CNAB (Properties ctx, int LBR_CNAB_ID, String trxName)
    {
      super (ctx, LBR_CNAB_ID, trxName);
      /** if (LBR_CNAB_ID == 0)
        {
			setIsRegistered (false);
// 'N'
			setIsSelected (false);
// N
			setLBR_CNAB_ID (0);
			setLBR_DocDate (new Timestamp( System.currentTimeMillis() ));
			setLBR_IsCancelled (false);
// 'N'
			setRoutingNo (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_CNAB (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_CNAB[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_BankAccount getC_BankAccount() throws RuntimeException
    {
		return (org.compiere.model.I_C_BankAccount)MTable.get(getCtx(), org.compiere.model.I_C_BankAccount.Table_Name)
			.getPO(getC_BankAccount_ID(), get_TrxName());	}

	/** Set Bank Account.
		@param C_BankAccount_ID 
		Account at the Bank
	  */
	public void setC_BankAccount_ID (int C_BankAccount_ID)
	{
		if (C_BankAccount_ID < 1) 
			set_Value (COLUMNNAME_C_BankAccount_ID, null);
		else 
			set_Value (COLUMNNAME_C_BankAccount_ID, Integer.valueOf(C_BankAccount_ID));
	}

	/** Get Bank Account.
		@return Account at the Bank
	  */
	public int getC_BankAccount_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BankAccount_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Registered.
		@param IsRegistered 
		The application is registered.
	  */
	public void setIsRegistered (boolean IsRegistered)
	{
		set_Value (COLUMNNAME_IsRegistered, Boolean.valueOf(IsRegistered));
	}

	/** Get Registered.
		@return The application is registered.
	  */
	public boolean isRegistered () 
	{
		Object oo = get_Value(COLUMNNAME_IsRegistered);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Selected.
		@param IsSelected Selected	  */
	public void setIsSelected (boolean IsSelected)
	{
		set_Value (COLUMNNAME_IsSelected, Boolean.valueOf(IsSelected));
	}

	/** Get Selected.
		@return Selected	  */
	public boolean isSelected () 
	{
		Object oo = get_Value(COLUMNNAME_IsSelected);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	public org.kenos.idempiere.lbr.model.I_LBR_Boleto getLBR_Boleto() throws RuntimeException
    {
		return (org.kenos.idempiere.lbr.model.I_LBR_Boleto)MTable.get(getCtx(), org.kenos.idempiere.lbr.model.I_LBR_Boleto.Table_Name)
			.getPO(getLBR_Boleto_ID(), get_TrxName());	}

	/** Set Boleto.
		@param LBR_Boleto_ID 
		Primary Key table LBR_Boleto
	  */
	public void setLBR_Boleto_ID (int LBR_Boleto_ID)
	{
		if (LBR_Boleto_ID < 1) 
			set_Value (COLUMNNAME_LBR_Boleto_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_Boleto_ID, Integer.valueOf(LBR_Boleto_ID));
	}

	/** Get Boleto.
		@return Primary Key table LBR_Boleto
	  */
	public int getLBR_Boleto_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Boleto_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set CNAB Field1.
		@param LBR_CNABField1 
		CNAB Field1
	  */
	public void setLBR_CNABField1 (String LBR_CNABField1)
	{
		set_Value (COLUMNNAME_LBR_CNABField1, LBR_CNABField1);
	}

	/** Get CNAB Field1.
		@return CNAB Field1
	  */
	public String getLBR_CNABField1 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField1);
	}

	/** Set CNAB Field10.
		@param LBR_CNABField10 
		CNAB Field10
	  */
	public void setLBR_CNABField10 (String LBR_CNABField10)
	{
		set_Value (COLUMNNAME_LBR_CNABField10, LBR_CNABField10);
	}

	/** Get CNAB Field10.
		@return CNAB Field10
	  */
	public String getLBR_CNABField10 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField10);
	}

	/** Set CNAB Field11.
		@param LBR_CNABField11 
		CNAB Field11
	  */
	public void setLBR_CNABField11 (String LBR_CNABField11)
	{
		set_Value (COLUMNNAME_LBR_CNABField11, LBR_CNABField11);
	}

	/** Get CNAB Field11.
		@return CNAB Field11
	  */
	public String getLBR_CNABField11 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField11);
	}

	/** Set CNAB Field12.
		@param LBR_CNABField12 
		CNAB Field12
	  */
	public void setLBR_CNABField12 (String LBR_CNABField12)
	{
		set_Value (COLUMNNAME_LBR_CNABField12, LBR_CNABField12);
	}

	/** Get CNAB Field12.
		@return CNAB Field12
	  */
	public String getLBR_CNABField12 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField12);
	}

	/** Set CNAB Field13.
		@param LBR_CNABField13 
		CNAB Field13
	  */
	public void setLBR_CNABField13 (String LBR_CNABField13)
	{
		set_Value (COLUMNNAME_LBR_CNABField13, LBR_CNABField13);
	}

	/** Get CNAB Field13.
		@return CNAB Field13
	  */
	public String getLBR_CNABField13 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField13);
	}

	/** Set CNAB Field14.
		@param LBR_CNABField14 
		CNAB Field14
	  */
	public void setLBR_CNABField14 (String LBR_CNABField14)
	{
		set_Value (COLUMNNAME_LBR_CNABField14, LBR_CNABField14);
	}

	/** Get CNAB Field14.
		@return CNAB Field14
	  */
	public String getLBR_CNABField14 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField14);
	}

	/** Set CNAB Field15.
		@param LBR_CNABField15 
		CNAB Field15
	  */
	public void setLBR_CNABField15 (String LBR_CNABField15)
	{
		set_Value (COLUMNNAME_LBR_CNABField15, LBR_CNABField15);
	}

	/** Get CNAB Field15.
		@return CNAB Field15
	  */
	public String getLBR_CNABField15 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField15);
	}

	/** Set CNAB Field16.
		@param LBR_CNABField16 
		CNAB Field16
	  */
	public void setLBR_CNABField16 (String LBR_CNABField16)
	{
		set_Value (COLUMNNAME_LBR_CNABField16, LBR_CNABField16);
	}

	/** Get CNAB Field16.
		@return CNAB Field16
	  */
	public String getLBR_CNABField16 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField16);
	}

	/** Set CNAB Field17.
		@param LBR_CNABField17 
		CNAB Field17
	  */
	public void setLBR_CNABField17 (String LBR_CNABField17)
	{
		set_Value (COLUMNNAME_LBR_CNABField17, LBR_CNABField17);
	}

	/** Get CNAB Field17.
		@return CNAB Field17
	  */
	public String getLBR_CNABField17 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField17);
	}

	/** Set CNAB Field18.
		@param LBR_CNABField18 
		CNAB Field18
	  */
	public void setLBR_CNABField18 (String LBR_CNABField18)
	{
		set_Value (COLUMNNAME_LBR_CNABField18, LBR_CNABField18);
	}

	/** Get CNAB Field18.
		@return CNAB Field18
	  */
	public String getLBR_CNABField18 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField18);
	}

	/** Set CNAB Field19.
		@param LBR_CNABField19 
		CNAB Field19
	  */
	public void setLBR_CNABField19 (String LBR_CNABField19)
	{
		set_Value (COLUMNNAME_LBR_CNABField19, LBR_CNABField19);
	}

	/** Get CNAB Field19.
		@return CNAB Field19
	  */
	public String getLBR_CNABField19 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField19);
	}

	/** Set CNAB Field2.
		@param LBR_CNABField2 
		CNAB Field2
	  */
	public void setLBR_CNABField2 (String LBR_CNABField2)
	{
		set_Value (COLUMNNAME_LBR_CNABField2, LBR_CNABField2);
	}

	/** Get CNAB Field2.
		@return CNAB Field2
	  */
	public String getLBR_CNABField2 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField2);
	}

	/** Set CNAB Field20.
		@param LBR_CNABField20 
		CNAB Field20
	  */
	public void setLBR_CNABField20 (String LBR_CNABField20)
	{
		set_Value (COLUMNNAME_LBR_CNABField20, LBR_CNABField20);
	}

	/** Get CNAB Field20.
		@return CNAB Field20
	  */
	public String getLBR_CNABField20 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField20);
	}

	/** Set CNAB Field21.
		@param LBR_CNABField21 
		CNAB Field21
	  */
	public void setLBR_CNABField21 (String LBR_CNABField21)
	{
		set_Value (COLUMNNAME_LBR_CNABField21, LBR_CNABField21);
	}

	/** Get CNAB Field21.
		@return CNAB Field21
	  */
	public String getLBR_CNABField21 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField21);
	}

	/** Set CNAB Field22.
		@param LBR_CNABField22 
		CNAB Field22
	  */
	public void setLBR_CNABField22 (String LBR_CNABField22)
	{
		set_Value (COLUMNNAME_LBR_CNABField22, LBR_CNABField22);
	}

	/** Get CNAB Field22.
		@return CNAB Field22
	  */
	public String getLBR_CNABField22 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField22);
	}

	/** Set CNAB Field23.
		@param LBR_CNABField23 
		CNAB Field23
	  */
	public void setLBR_CNABField23 (String LBR_CNABField23)
	{
		set_Value (COLUMNNAME_LBR_CNABField23, LBR_CNABField23);
	}

	/** Get CNAB Field23.
		@return CNAB Field23
	  */
	public String getLBR_CNABField23 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField23);
	}

	/** Set CNAB Field24.
		@param LBR_CNABField24 
		CNAB Field24
	  */
	public void setLBR_CNABField24 (String LBR_CNABField24)
	{
		set_Value (COLUMNNAME_LBR_CNABField24, LBR_CNABField24);
	}

	/** Get CNAB Field24.
		@return CNAB Field24
	  */
	public String getLBR_CNABField24 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField24);
	}

	/** Set CNAB Field25.
		@param LBR_CNABField25 
		CNAB Field25
	  */
	public void setLBR_CNABField25 (String LBR_CNABField25)
	{
		set_Value (COLUMNNAME_LBR_CNABField25, LBR_CNABField25);
	}

	/** Get CNAB Field25.
		@return CNAB Field25
	  */
	public String getLBR_CNABField25 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField25);
	}

	/** Set CNAB Field26.
		@param LBR_CNABField26 
		CNAB Field26
	  */
	public void setLBR_CNABField26 (String LBR_CNABField26)
	{
		set_Value (COLUMNNAME_LBR_CNABField26, LBR_CNABField26);
	}

	/** Get CNAB Field26.
		@return CNAB Field26
	  */
	public String getLBR_CNABField26 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField26);
	}

	/** Set CNAB Field27.
		@param LBR_CNABField27 
		CNAB Field27
	  */
	public void setLBR_CNABField27 (String LBR_CNABField27)
	{
		set_Value (COLUMNNAME_LBR_CNABField27, LBR_CNABField27);
	}

	/** Get CNAB Field27.
		@return CNAB Field27
	  */
	public String getLBR_CNABField27 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField27);
	}

	/** Set CNAB Field28.
		@param LBR_CNABField28 
		CNAB Field28
	  */
	public void setLBR_CNABField28 (String LBR_CNABField28)
	{
		set_Value (COLUMNNAME_LBR_CNABField28, LBR_CNABField28);
	}

	/** Get CNAB Field28.
		@return CNAB Field28
	  */
	public String getLBR_CNABField28 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField28);
	}

	/** Set CNAB Field29.
		@param LBR_CNABField29 
		CNAB Field29
	  */
	public void setLBR_CNABField29 (String LBR_CNABField29)
	{
		set_Value (COLUMNNAME_LBR_CNABField29, LBR_CNABField29);
	}

	/** Get CNAB Field29.
		@return CNAB Field29
	  */
	public String getLBR_CNABField29 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField29);
	}

	/** Set CNAB Field3.
		@param LBR_CNABField3 
		CNAB Field3
	  */
	public void setLBR_CNABField3 (String LBR_CNABField3)
	{
		set_Value (COLUMNNAME_LBR_CNABField3, LBR_CNABField3);
	}

	/** Get CNAB Field3.
		@return CNAB Field3
	  */
	public String getLBR_CNABField3 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField3);
	}

	/** Set CNAB Field30.
		@param LBR_CNABField30 
		CNAB Field30
	  */
	public void setLBR_CNABField30 (String LBR_CNABField30)
	{
		set_Value (COLUMNNAME_LBR_CNABField30, LBR_CNABField30);
	}

	/** Get CNAB Field30.
		@return CNAB Field30
	  */
	public String getLBR_CNABField30 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField30);
	}

	/** Set CNAB Field31.
		@param LBR_CNABField31 
		CNAB Field31
	  */
	public void setLBR_CNABField31 (String LBR_CNABField31)
	{
		set_Value (COLUMNNAME_LBR_CNABField31, LBR_CNABField31);
	}

	/** Get CNAB Field31.
		@return CNAB Field31
	  */
	public String getLBR_CNABField31 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField31);
	}

	/** Set CNAB Field32.
		@param LBR_CNABField32 
		CNAB Field32
	  */
	public void setLBR_CNABField32 (String LBR_CNABField32)
	{
		set_Value (COLUMNNAME_LBR_CNABField32, LBR_CNABField32);
	}

	/** Get CNAB Field32.
		@return CNAB Field32
	  */
	public String getLBR_CNABField32 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField32);
	}

	/** Set CNAB Field33.
		@param LBR_CNABField33 
		CNAB Field33
	  */
	public void setLBR_CNABField33 (String LBR_CNABField33)
	{
		set_Value (COLUMNNAME_LBR_CNABField33, LBR_CNABField33);
	}

	/** Get CNAB Field33.
		@return CNAB Field33
	  */
	public String getLBR_CNABField33 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField33);
	}

	/** Set CNAB Field34.
		@param LBR_CNABField34 
		CNAB Field34
	  */
	public void setLBR_CNABField34 (String LBR_CNABField34)
	{
		set_Value (COLUMNNAME_LBR_CNABField34, LBR_CNABField34);
	}

	/** Get CNAB Field34.
		@return CNAB Field34
	  */
	public String getLBR_CNABField34 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField34);
	}

	/** Set CNAB Field35.
		@param LBR_CNABField35 
		CNAB Field35
	  */
	public void setLBR_CNABField35 (String LBR_CNABField35)
	{
		set_Value (COLUMNNAME_LBR_CNABField35, LBR_CNABField35);
	}

	/** Get CNAB Field35.
		@return CNAB Field35
	  */
	public String getLBR_CNABField35 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField35);
	}

	/** Set CNAB Field36.
		@param LBR_CNABField36 
		CNAB Field36
	  */
	public void setLBR_CNABField36 (String LBR_CNABField36)
	{
		set_Value (COLUMNNAME_LBR_CNABField36, LBR_CNABField36);
	}

	/** Get CNAB Field36.
		@return CNAB Field36
	  */
	public String getLBR_CNABField36 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField36);
	}

	/** Set CNAB Field37.
		@param LBR_CNABField37 
		CNAB Field37
	  */
	public void setLBR_CNABField37 (String LBR_CNABField37)
	{
		set_Value (COLUMNNAME_LBR_CNABField37, LBR_CNABField37);
	}

	/** Get CNAB Field37.
		@return CNAB Field37
	  */
	public String getLBR_CNABField37 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField37);
	}

	/** Set CNAB Field38.
		@param LBR_CNABField38 
		CNAB Field38
	  */
	public void setLBR_CNABField38 (String LBR_CNABField38)
	{
		set_Value (COLUMNNAME_LBR_CNABField38, LBR_CNABField38);
	}

	/** Get CNAB Field38.
		@return CNAB Field38
	  */
	public String getLBR_CNABField38 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField38);
	}

	/** Set CNAB Field39.
		@param LBR_CNABField39 
		CNAB Field39
	  */
	public void setLBR_CNABField39 (String LBR_CNABField39)
	{
		set_Value (COLUMNNAME_LBR_CNABField39, LBR_CNABField39);
	}

	/** Get CNAB Field39.
		@return CNAB Field39
	  */
	public String getLBR_CNABField39 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField39);
	}

	/** Set CNAB Field4.
		@param LBR_CNABField4 
		CNAB Field4
	  */
	public void setLBR_CNABField4 (String LBR_CNABField4)
	{
		set_Value (COLUMNNAME_LBR_CNABField4, LBR_CNABField4);
	}

	/** Get CNAB Field4.
		@return CNAB Field4
	  */
	public String getLBR_CNABField4 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField4);
	}

	/** Set CNAB Field40.
		@param LBR_CNABField40 
		CNAB Field40
	  */
	public void setLBR_CNABField40 (String LBR_CNABField40)
	{
		set_Value (COLUMNNAME_LBR_CNABField40, LBR_CNABField40);
	}

	/** Get CNAB Field40.
		@return CNAB Field40
	  */
	public String getLBR_CNABField40 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField40);
	}

	/** Set CNAB Field41.
		@param LBR_CNABField41 
		CNAB Field41
	  */
	public void setLBR_CNABField41 (String LBR_CNABField41)
	{
		set_Value (COLUMNNAME_LBR_CNABField41, LBR_CNABField41);
	}

	/** Get CNAB Field41.
		@return CNAB Field41
	  */
	public String getLBR_CNABField41 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField41);
	}

	/** Set CNAB Field42.
		@param LBR_CNABField42 
		CNAB Field42
	  */
	public void setLBR_CNABField42 (String LBR_CNABField42)
	{
		set_Value (COLUMNNAME_LBR_CNABField42, LBR_CNABField42);
	}

	/** Get CNAB Field42.
		@return CNAB Field42
	  */
	public String getLBR_CNABField42 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField42);
	}

	/** Set CNAB Field43.
		@param LBR_CNABField43 
		CNAB Field43
	  */
	public void setLBR_CNABField43 (String LBR_CNABField43)
	{
		set_Value (COLUMNNAME_LBR_CNABField43, LBR_CNABField43);
	}

	/** Get CNAB Field43.
		@return CNAB Field43
	  */
	public String getLBR_CNABField43 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField43);
	}

	/** Set CNAB Field44.
		@param LBR_CNABField44 
		CNAB Field44
	  */
	public void setLBR_CNABField44 (String LBR_CNABField44)
	{
		set_Value (COLUMNNAME_LBR_CNABField44, LBR_CNABField44);
	}

	/** Get CNAB Field44.
		@return CNAB Field44
	  */
	public String getLBR_CNABField44 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField44);
	}

	/** Set CNAB Field45.
		@param LBR_CNABField45 
		CNAB Field45
	  */
	public void setLBR_CNABField45 (String LBR_CNABField45)
	{
		set_Value (COLUMNNAME_LBR_CNABField45, LBR_CNABField45);
	}

	/** Get CNAB Field45.
		@return CNAB Field45
	  */
	public String getLBR_CNABField45 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField45);
	}

	/** Set CNAB Field46.
		@param LBR_CNABField46 
		CNAB Field46
	  */
	public void setLBR_CNABField46 (String LBR_CNABField46)
	{
		set_Value (COLUMNNAME_LBR_CNABField46, LBR_CNABField46);
	}

	/** Get CNAB Field46.
		@return CNAB Field46
	  */
	public String getLBR_CNABField46 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField46);
	}

	/** Set CNAB Field47.
		@param LBR_CNABField47 
		CNAB Field47
	  */
	public void setLBR_CNABField47 (String LBR_CNABField47)
	{
		set_Value (COLUMNNAME_LBR_CNABField47, LBR_CNABField47);
	}

	/** Get CNAB Field47.
		@return CNAB Field47
	  */
	public String getLBR_CNABField47 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField47);
	}

	/** Set CNAB Field48.
		@param LBR_CNABField48 
		CNAB Field48
	  */
	public void setLBR_CNABField48 (String LBR_CNABField48)
	{
		set_Value (COLUMNNAME_LBR_CNABField48, LBR_CNABField48);
	}

	/** Get CNAB Field48.
		@return CNAB Field48
	  */
	public String getLBR_CNABField48 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField48);
	}

	/** Set CNAB Field49.
		@param LBR_CNABField49 
		CNAB Field49
	  */
	public void setLBR_CNABField49 (String LBR_CNABField49)
	{
		set_Value (COLUMNNAME_LBR_CNABField49, LBR_CNABField49);
	}

	/** Get CNAB Field49.
		@return CNAB Field49
	  */
	public String getLBR_CNABField49 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField49);
	}

	/** Set CNAB Field5.
		@param LBR_CNABField5 
		CNAB Field5
	  */
	public void setLBR_CNABField5 (String LBR_CNABField5)
	{
		set_Value (COLUMNNAME_LBR_CNABField5, LBR_CNABField5);
	}

	/** Get CNAB Field5.
		@return CNAB Field5
	  */
	public String getLBR_CNABField5 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField5);
	}

	/** Set CNAB Field50.
		@param LBR_CNABField50 
		CNAB Field50
	  */
	public void setLBR_CNABField50 (String LBR_CNABField50)
	{
		set_Value (COLUMNNAME_LBR_CNABField50, LBR_CNABField50);
	}

	/** Get CNAB Field50.
		@return CNAB Field50
	  */
	public String getLBR_CNABField50 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField50);
	}

	/** Set CNAB Field51.
		@param LBR_CNABField51 
		CNAB Field51
	  */
	public void setLBR_CNABField51 (String LBR_CNABField51)
	{
		set_Value (COLUMNNAME_LBR_CNABField51, LBR_CNABField51);
	}

	/** Get CNAB Field51.
		@return CNAB Field51
	  */
	public String getLBR_CNABField51 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField51);
	}

	/** Set CNAB Field52.
		@param LBR_CNABField52 
		CNAB Field52
	  */
	public void setLBR_CNABField52 (String LBR_CNABField52)
	{
		set_Value (COLUMNNAME_LBR_CNABField52, LBR_CNABField52);
	}

	/** Get CNAB Field52.
		@return CNAB Field52
	  */
	public String getLBR_CNABField52 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField52);
	}

	/** Set CNAB Field53.
		@param LBR_CNABField53 
		CNAB Field53
	  */
	public void setLBR_CNABField53 (String LBR_CNABField53)
	{
		set_Value (COLUMNNAME_LBR_CNABField53, LBR_CNABField53);
	}

	/** Get CNAB Field53.
		@return CNAB Field53
	  */
	public String getLBR_CNABField53 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField53);
	}

	/** Set CNAB Field6.
		@param LBR_CNABField6 
		CNAB Field6
	  */
	public void setLBR_CNABField6 (String LBR_CNABField6)
	{
		set_Value (COLUMNNAME_LBR_CNABField6, LBR_CNABField6);
	}

	/** Get CNAB Field6.
		@return CNAB Field6
	  */
	public String getLBR_CNABField6 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField6);
	}

	/** Set CNAB Field7.
		@param LBR_CNABField7 
		CNAB Field7
	  */
	public void setLBR_CNABField7 (String LBR_CNABField7)
	{
		set_Value (COLUMNNAME_LBR_CNABField7, LBR_CNABField7);
	}

	/** Get CNAB Field7.
		@return CNAB Field7
	  */
	public String getLBR_CNABField7 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField7);
	}

	/** Set CNAB Field8.
		@param LBR_CNABField8 
		CNAB Field8
	  */
	public void setLBR_CNABField8 (String LBR_CNABField8)
	{
		set_Value (COLUMNNAME_LBR_CNABField8, LBR_CNABField8);
	}

	/** Get CNAB Field8.
		@return CNAB Field8
	  */
	public String getLBR_CNABField8 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField8);
	}

	/** Set CNAB Field9.
		@param LBR_CNABField9 
		CNAB Field9
	  */
	public void setLBR_CNABField9 (String LBR_CNABField9)
	{
		set_Value (COLUMNNAME_LBR_CNABField9, LBR_CNABField9);
	}

	/** Get CNAB Field9.
		@return CNAB Field9
	  */
	public String getLBR_CNABField9 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABField9);
	}

	/** Set CNAB.
		@param LBR_CNAB_ID 
		Primary Key table LBR_CNAB
	  */
	public void setLBR_CNAB_ID (int LBR_CNAB_ID)
	{
		if (LBR_CNAB_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_CNAB_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_CNAB_ID, Integer.valueOf(LBR_CNAB_ID));
	}

	/** Get CNAB.
		@return Primary Key table LBR_CNAB
	  */
	public int getLBR_CNAB_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CNAB_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Document Date.
		@param LBR_DocDate 
		Identifies the Document Date
	  */
	public void setLBR_DocDate (Timestamp LBR_DocDate)
	{
		set_Value (COLUMNNAME_LBR_DocDate, LBR_DocDate);
	}

	/** Get Document Date.
		@return Identifies the Document Date
	  */
	public Timestamp getLBR_DocDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_DocDate);
	}

	/** Set IsCancelled.
		@param LBR_IsCancelled 
		Defines if the Document IsCancelled
	  */
	public void setLBR_IsCancelled (boolean LBR_IsCancelled)
	{
		set_Value (COLUMNNAME_LBR_IsCancelled, Boolean.valueOf(LBR_IsCancelled));
	}

	/** Get IsCancelled.
		@return Defines if the Document IsCancelled
	  */
	public boolean isLBR_IsCancelled () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_IsCancelled);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Routing No.
		@param RoutingNo 
		Bank Routing Number
	  */
	public void setRoutingNo (String RoutingNo)
	{
		set_Value (COLUMNNAME_RoutingNo, RoutingNo);
	}

	/** Get Routing No.
		@return Bank Routing Number
	  */
	public String getRoutingNo () 
	{
		return (String)get_Value(COLUMNNAME_RoutingNo);
	}
}