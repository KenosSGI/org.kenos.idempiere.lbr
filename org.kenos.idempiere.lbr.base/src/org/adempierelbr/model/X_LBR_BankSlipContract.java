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

/** Generated Model for LBR_BankSlipContract
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_BankSlipContract extends PO implements I_LBR_BankSlipContract, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20200316L;

    /** Standard Constructor */
    public X_LBR_BankSlipContract (Properties ctx, int LBR_BankSlipContract_ID, String trxName)
    {
      super (ctx, LBR_BankSlipContract_ID, trxName);
      /** if (LBR_BankSlipContract_ID == 0)
        {
			setC_BankAccount_ID (0);
			setLBR_BankSlipContract_ID (0);
			setLBR_BankSlipFold_ID (0);
			setLBR_BankSlipKind_ID (0);
			setLBR_BankSlipLayout_ID (0);
			setLBR_RegisterType (null);
			setName (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_BankSlipContract (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_BankSlipContract[")
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
			set_ValueNoCheck (COLUMNNAME_C_BankAccount_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_BankAccount_ID, Integer.valueOf(C_BankAccount_ID));
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

	/** Set Description.
		@param Description 
		Optional short description of the record
	  */
	public void setDescription (String Description)
	{
		set_Value (COLUMNNAME_Description, Description);
	}

	/** Get Description.
		@return Optional short description of the record
	  */
	public String getDescription () 
	{
		return (String)get_Value(COLUMNNAME_Description);
	}

	/** Set Accord.
		@param LBR_AccordNo Accord	  */
	public void setLBR_AccordNo (String LBR_AccordNo)
	{
		set_Value (COLUMNNAME_LBR_AccordNo, LBR_AccordNo);
	}

	/** Get Accord.
		@return Accord	  */
	public String getLBR_AccordNo () 
	{
		return (String)get_Value(COLUMNNAME_LBR_AccordNo);
	}

	public org.adempierelbr.model.I_LBR_BankSlipConfig getLBR_BankSlipConfig() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_BankSlipConfig)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_BankSlipConfig.Table_Name)
			.getPO(getLBR_BankSlipConfig_ID(), get_TrxName());	}

	/** Set Bank Slip Config.
		@param LBR_BankSlipConfig_ID Bank Slip Config	  */
	public void setLBR_BankSlipConfig_ID (int LBR_BankSlipConfig_ID)
	{
		if (LBR_BankSlipConfig_ID < 1) 
			set_Value (COLUMNNAME_LBR_BankSlipConfig_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_BankSlipConfig_ID, Integer.valueOf(LBR_BankSlipConfig_ID));
	}

	/** Get Bank Slip Config.
		@return Bank Slip Config	  */
	public int getLBR_BankSlipConfig_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BankSlipConfig_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Bank Slip Contract.
		@param LBR_BankSlipContract_ID Bank Slip Contract	  */
	public void setLBR_BankSlipContract_ID (int LBR_BankSlipContract_ID)
	{
		if (LBR_BankSlipContract_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_BankSlipContract_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_BankSlipContract_ID, Integer.valueOf(LBR_BankSlipContract_ID));
	}

	/** Get Bank Slip Contract.
		@return Bank Slip Contract	  */
	public int getLBR_BankSlipContract_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BankSlipContract_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_BankSlipContract_UU.
		@param LBR_BankSlipContract_UU LBR_BankSlipContract_UU	  */
	public void setLBR_BankSlipContract_UU (String LBR_BankSlipContract_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_BankSlipContract_UU, LBR_BankSlipContract_UU);
	}

	/** Get LBR_BankSlipContract_UU.
		@return LBR_BankSlipContract_UU	  */
	public String getLBR_BankSlipContract_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BankSlipContract_UU);
	}

	public org.adempierelbr.model.I_LBR_BankSlipFold getLBR_BankSlipFold() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_BankSlipFold)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_BankSlipFold.Table_Name)
			.getPO(getLBR_BankSlipFold_ID(), get_TrxName());	}

	/** Set Fold.
		@param LBR_BankSlipFold_ID Fold	  */
	public void setLBR_BankSlipFold_ID (int LBR_BankSlipFold_ID)
	{
		if (LBR_BankSlipFold_ID < 1) 
			set_Value (COLUMNNAME_LBR_BankSlipFold_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_BankSlipFold_ID, Integer.valueOf(LBR_BankSlipFold_ID));
	}

	/** Get Fold.
		@return Fold	  */
	public int getLBR_BankSlipFold_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BankSlipFold_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_BankSlipKind getLBR_BankSlipKind() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_BankSlipKind)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_BankSlipKind.Table_Name)
			.getPO(getLBR_BankSlipKind_ID(), get_TrxName());	}

	/** Set Bank Slip Kind.
		@param LBR_BankSlipKind_ID Bank Slip Kind	  */
	public void setLBR_BankSlipKind_ID (int LBR_BankSlipKind_ID)
	{
		if (LBR_BankSlipKind_ID < 1) 
			set_Value (COLUMNNAME_LBR_BankSlipKind_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_BankSlipKind_ID, Integer.valueOf(LBR_BankSlipKind_ID));
	}

	/** Get Bank Slip Kind.
		@return Bank Slip Kind	  */
	public int getLBR_BankSlipKind_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BankSlipKind_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_BankSlipLayout getLBR_BankSlipLayout() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_BankSlipLayout)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_BankSlipLayout.Table_Name)
			.getPO(getLBR_BankSlipLayout_ID(), get_TrxName());	}

	/** Set Bank Slip Layout.
		@param LBR_BankSlipLayout_ID Bank Slip Layout	  */
	public void setLBR_BankSlipLayout_ID (int LBR_BankSlipLayout_ID)
	{
		if (LBR_BankSlipLayout_ID < 1) 
			set_Value (COLUMNNAME_LBR_BankSlipLayout_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_BankSlipLayout_ID, Integer.valueOf(LBR_BankSlipLayout_ID));
	}

	/** Get Bank Slip Layout.
		@return Bank Slip Layout	  */
	public int getLBR_BankSlipLayout_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BankSlipLayout_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_AD_Sequence getLBR_CNABFileSeq() throws RuntimeException
    {
		return (org.compiere.model.I_AD_Sequence)MTable.get(getCtx(), org.compiere.model.I_AD_Sequence.Table_Name)
			.getPO(getLBR_CNABFileSeq_ID(), get_TrxName());	}

	/** Set CNAB File Sequence.
		@param LBR_CNABFileSeq_ID CNAB File Sequence	  */
	public void setLBR_CNABFileSeq_ID (int LBR_CNABFileSeq_ID)
	{
		if (LBR_CNABFileSeq_ID < 1) 
			set_Value (COLUMNNAME_LBR_CNABFileSeq_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_CNABFileSeq_ID, Integer.valueOf(LBR_CNABFileSeq_ID));
	}

	/** Get CNAB File Sequence.
		@return CNAB File Sequence	  */
	public int getLBR_CNABFileSeq_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CNABFileSeq_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_AD_Sequence getLBR_CNABLotSeq() throws RuntimeException
    {
		return (org.compiere.model.I_AD_Sequence)MTable.get(getCtx(), org.compiere.model.I_AD_Sequence.Table_Name)
			.getPO(getLBR_CNABLotSeq_ID(), get_TrxName());	}

	/** Set CNAB Lot Sequence.
		@param LBR_CNABLotSeq_ID CNAB Lot Sequence	  */
	public void setLBR_CNABLotSeq_ID (int LBR_CNABLotSeq_ID)
	{
		if (LBR_CNABLotSeq_ID < 1) 
			set_Value (COLUMNNAME_LBR_CNABLotSeq_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_CNABLotSeq_ID, Integer.valueOf(LBR_CNABLotSeq_ID));
	}

	/** Get CNAB Lot Sequence.
		@return CNAB Lot Sequence	  */
	public int getLBR_CNABLotSeq_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CNABLotSeq_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_AD_Sequence getLBR_NumberInBankSeq() throws RuntimeException
    {
		return (org.compiere.model.I_AD_Sequence)MTable.get(getCtx(), org.compiere.model.I_AD_Sequence.Table_Name)
			.getPO(getLBR_NumberInBankSeq_ID(), get_TrxName());	}

	/** Set NIB Sequence.
		@param LBR_NumberInBankSeq_ID NIB Sequence	  */
	public void setLBR_NumberInBankSeq_ID (int LBR_NumberInBankSeq_ID)
	{
		if (LBR_NumberInBankSeq_ID < 1) 
			set_Value (COLUMNNAME_LBR_NumberInBankSeq_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_NumberInBankSeq_ID, Integer.valueOf(LBR_NumberInBankSeq_ID));
	}

	/** Get NIB Sequence.
		@return NIB Sequence	  */
	public int getLBR_NumberInBankSeq_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NumberInBankSeq_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Parameter 1.
		@param LBR_Param1 Parameter 1	  */
	public void setLBR_Param1 (String LBR_Param1)
	{
		set_Value (COLUMNNAME_LBR_Param1, LBR_Param1);
	}

	/** Get Parameter 1.
		@return Parameter 1	  */
	public String getLBR_Param1 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Param1);
	}

	/** Set Parameter 2.
		@param LBR_Param2 Parameter 2	  */
	public void setLBR_Param2 (String LBR_Param2)
	{
		set_Value (COLUMNNAME_LBR_Param2, LBR_Param2);
	}

	/** Get Parameter 2.
		@return Parameter 2	  */
	public String getLBR_Param2 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Param2);
	}

	/** Registered = 1 */
	public static final String LBR_REGISTERTYPE_Registered = "1";
	/** Not Registered = 2 */
	public static final String LBR_REGISTERTYPE_NotRegistered = "2";
	/** Set Register Type.
		@param LBR_RegisterType Register Type	  */
	public void setLBR_RegisterType (String LBR_RegisterType)
	{

		set_Value (COLUMNNAME_LBR_RegisterType, LBR_RegisterType);
	}

	/** Get Register Type.
		@return Register Type	  */
	public String getLBR_RegisterType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_RegisterType);
	}

	/** Set Name.
		@param Name 
		Alphanumeric identifier of the entity
	  */
	public void setName (String Name)
	{
		set_Value (COLUMNNAME_Name, Name);
	}

	/** Get Name.
		@return Alphanumeric identifier of the entity
	  */
	public String getName () 
	{
		return (String)get_Value(COLUMNNAME_Name);
	}
}