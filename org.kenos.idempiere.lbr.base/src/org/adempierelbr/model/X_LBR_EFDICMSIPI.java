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
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for LBR_EFDICMSIPI
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_EFDICMSIPI extends PO implements I_LBR_EFDICMSIPI, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20210130L;

    /** Standard Constructor */
    public X_LBR_EFDICMSIPI (Properties ctx, int LBR_EFDICMSIPI_ID, String trxName)
    {
      super (ctx, LBR_EFDICMSIPI_ID, trxName);
      /** if (LBR_EFDICMSIPI_ID == 0)
        {
			setC_Period_ID (0);
			setC_Year_ID (0);
			setIsFixedAsset (true);
// Y
			setLBR_COD_FIN (null);
// 0
			setLBR_EFDICMSIPI_ID (0);
			setLBR_IncludeE (true);
// Y
			setLBR_IncludeH (false);
// N
			setLBR_IncludeK (true);
// Y
			setProcessed (false);
        } */
    }

    /** Load Constructor */
    public X_LBR_EFDICMSIPI (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_EFDICMSIPI[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_Period getC_Period() throws RuntimeException
    {
		return (org.compiere.model.I_C_Period)MTable.get(getCtx(), org.compiere.model.I_C_Period.Table_Name)
			.getPO(getC_Period_ID(), get_TrxName());	}

	/** Set Period.
		@param C_Period_ID 
		Period of the Calendar
	  */
	public void setC_Period_ID (int C_Period_ID)
	{
		if (C_Period_ID < 1) 
			set_Value (COLUMNNAME_C_Period_ID, null);
		else 
			set_Value (COLUMNNAME_C_Period_ID, Integer.valueOf(C_Period_ID));
	}

	/** Get Period.
		@return Period of the Calendar
	  */
	public int getC_Period_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Period_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_Year getC_Year() throws RuntimeException
    {
		return (org.compiere.model.I_C_Year)MTable.get(getCtx(), org.compiere.model.I_C_Year.Table_Name)
			.getPO(getC_Year_ID(), get_TrxName());	}

	/** Set Year.
		@param C_Year_ID 
		Calendar Year
	  */
	public void setC_Year_ID (int C_Year_ID)
	{
		if (C_Year_ID < 1) 
			set_Value (COLUMNNAME_C_Year_ID, null);
		else 
			set_Value (COLUMNNAME_C_Year_ID, Integer.valueOf(C_Year_ID));
	}

	/** Get Year.
		@return Calendar Year
	  */
	public int getC_Year_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Year_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Document Date.
		@param DateDoc 
		Date of the Document
	  */
	public void setDateDoc (Timestamp DateDoc)
	{
		set_Value (COLUMNNAME_DateDoc, DateDoc);
	}

	/** Get Document Date.
		@return Date of the Document
	  */
	public Timestamp getDateDoc () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateDoc);
	}

	/** DocAction AD_Reference_ID=135 */
	public static final int DOCACTION_AD_Reference_ID=135;
	/** Complete = CO */
	public static final String DOCACTION_Complete = "CO";
	/** Approve = AP */
	public static final String DOCACTION_Approve = "AP";
	/** Reject = RJ */
	public static final String DOCACTION_Reject = "RJ";
	/** Post = PO */
	public static final String DOCACTION_Post = "PO";
	/** Void = VO */
	public static final String DOCACTION_Void = "VO";
	/** Close = CL */
	public static final String DOCACTION_Close = "CL";
	/** Reverse - Correct = RC */
	public static final String DOCACTION_Reverse_Correct = "RC";
	/** Reverse - Accrual = RA */
	public static final String DOCACTION_Reverse_Accrual = "RA";
	/** Invalidate = IN */
	public static final String DOCACTION_Invalidate = "IN";
	/** Re-activate = RE */
	public static final String DOCACTION_Re_Activate = "RE";
	/** <None> = -- */
	public static final String DOCACTION_None = "--";
	/** Prepare = PR */
	public static final String DOCACTION_Prepare = "PR";
	/** Unlock = XL */
	public static final String DOCACTION_Unlock = "XL";
	/** Wait Complete = WC */
	public static final String DOCACTION_WaitComplete = "WC";
	/** Set Document Action.
		@param DocAction 
		The targeted status of the document
	  */
	public void setDocAction (String DocAction)
	{

		set_Value (COLUMNNAME_DocAction, DocAction);
	}

	/** Get Document Action.
		@return The targeted status of the document
	  */
	public String getDocAction () 
	{
		return (String)get_Value(COLUMNNAME_DocAction);
	}

	/** DocStatus AD_Reference_ID=131 */
	public static final int DOCSTATUS_AD_Reference_ID=131;
	/** Drafted = DR */
	public static final String DOCSTATUS_Drafted = "DR";
	/** Completed = CO */
	public static final String DOCSTATUS_Completed = "CO";
	/** Approved = AP */
	public static final String DOCSTATUS_Approved = "AP";
	/** Not Approved = NA */
	public static final String DOCSTATUS_NotApproved = "NA";
	/** Voided = VO */
	public static final String DOCSTATUS_Voided = "VO";
	/** Invalid = IN */
	public static final String DOCSTATUS_Invalid = "IN";
	/** Reversed = RE */
	public static final String DOCSTATUS_Reversed = "RE";
	/** Closed = CL */
	public static final String DOCSTATUS_Closed = "CL";
	/** Unknown = ?? */
	public static final String DOCSTATUS_Unknown = "??";
	/** In Progress = IP */
	public static final String DOCSTATUS_InProgress = "IP";
	/** Waiting Payment = WP */
	public static final String DOCSTATUS_WaitingPayment = "WP";
	/** Waiting Confirmation = WC */
	public static final String DOCSTATUS_WaitingConfirmation = "WC";
	/** Set Document Status.
		@param DocStatus 
		The current status of the document
	  */
	public void setDocStatus (String DocStatus)
	{

		set_Value (COLUMNNAME_DocStatus, DocStatus);
	}

	/** Get Document Status.
		@return The current status of the document
	  */
	public String getDocStatus () 
	{
		return (String)get_Value(COLUMNNAME_DocStatus);
	}

	/** Set IsFixedAsset.
		@param IsFixedAsset IsFixedAsset	  */
	public void setIsFixedAsset (boolean IsFixedAsset)
	{
		set_Value (COLUMNNAME_IsFixedAsset, Boolean.valueOf(IsFixedAsset));
	}

	/** Get IsFixedAsset.
		@return IsFixedAsset	  */
	public boolean isFixedAsset () 
	{
		Object oo = get_Value(COLUMNNAME_IsFixedAsset);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	public org.compiere.model.I_C_BPartner getLBR_BP_Accountant() throws RuntimeException
    {
		return (org.compiere.model.I_C_BPartner)MTable.get(getCtx(), org.compiere.model.I_C_BPartner.Table_Name)
			.getPO(getLBR_BP_Accountant_ID(), get_TrxName());	}

	/** Set Accountant.
		@param LBR_BP_Accountant_ID Accountant	  */
	public void setLBR_BP_Accountant_ID (int LBR_BP_Accountant_ID)
	{
		if (LBR_BP_Accountant_ID < 1) 
			set_Value (COLUMNNAME_LBR_BP_Accountant_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_BP_Accountant_ID, Integer.valueOf(LBR_BP_Accountant_ID));
	}

	/** Get Accountant.
		@return Accountant	  */
	public int getLBR_BP_Accountant_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BP_Accountant_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Original = 0 */
	public static final String LBR_COD_FIN_Original = "0";
	/** Retificado = 1 */
	public static final String LBR_COD_FIN_Retificado = "1";
	/** Set Finalidade do Arquivo.
		@param LBR_COD_FIN 
		Finalidade do Arquivo SPED
	  */
	public void setLBR_COD_FIN (String LBR_COD_FIN)
	{

		set_Value (COLUMNNAME_LBR_COD_FIN, LBR_COD_FIN);
	}

	/** Get Finalidade do Arquivo.
		@return Finalidade do Arquivo SPED
	  */
	public String getLBR_COD_FIN () 
	{
		return (String)get_Value(COLUMNNAME_LBR_COD_FIN);
	}

	/** Set Versão do arquivo.
		@param LBR_COD_VER 
		Código da versão do leiaute do Arquivo SPED
	  */
	public void setLBR_COD_VER (String LBR_COD_VER)
	{
		set_Value (COLUMNNAME_LBR_COD_VER, LBR_COD_VER);
	}

	/** Get Versão do arquivo.
		@return Código da versão do leiaute do Arquivo SPED
	  */
	public String getLBR_COD_VER () 
	{
		return (String)get_Value(COLUMNNAME_LBR_COD_VER);
	}

	/** Set EFD ICMS/IPI.
		@param LBR_EFDICMSIPI_ID EFD ICMS/IPI	  */
	public void setLBR_EFDICMSIPI_ID (int LBR_EFDICMSIPI_ID)
	{
		if (LBR_EFDICMSIPI_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_EFDICMSIPI_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_EFDICMSIPI_ID, Integer.valueOf(LBR_EFDICMSIPI_ID));
	}

	/** Get EFD ICMS/IPI.
		@return EFD ICMS/IPI	  */
	public int getLBR_EFDICMSIPI_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_EFDICMSIPI_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_EFDICMSIPI_UU.
		@param LBR_EFDICMSIPI_UU LBR_EFDICMSIPI_UU	  */
	public void setLBR_EFDICMSIPI_UU (String LBR_EFDICMSIPI_UU)
	{
		set_Value (COLUMNNAME_LBR_EFDICMSIPI_UU, LBR_EFDICMSIPI_UU);
	}

	/** Get LBR_EFDICMSIPI_UU.
		@return LBR_EFDICMSIPI_UU	  */
	public String getLBR_EFDICMSIPI_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_EFDICMSIPI_UU);
	}

	/** Set Block E.
		@param LBR_IncludeE Block E	  */
	public void setLBR_IncludeE (boolean LBR_IncludeE)
	{
		set_Value (COLUMNNAME_LBR_IncludeE, Boolean.valueOf(LBR_IncludeE));
	}

	/** Get Block E.
		@return Block E	  */
	public boolean isLBR_IncludeE () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_IncludeE);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Block H.
		@param LBR_IncludeH Block H	  */
	public void setLBR_IncludeH (boolean LBR_IncludeH)
	{
		set_Value (COLUMNNAME_LBR_IncludeH, Boolean.valueOf(LBR_IncludeH));
	}

	/** Get Block H.
		@return Block H	  */
	public boolean isLBR_IncludeH () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_IncludeH);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Block K.
		@param LBR_IncludeK Block K	  */
	public void setLBR_IncludeK (boolean LBR_IncludeK)
	{
		set_Value (COLUMNNAME_LBR_IncludeK, Boolean.valueOf(LBR_IncludeK));
	}

	/** Get Block K.
		@return Block K	  */
	public boolean isLBR_IncludeK () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_IncludeK);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Perfil A = A */
	public static final String LBR_INDPERFIL_PerfilA = "A";
	/** Perfil B = B */
	public static final String LBR_INDPERFIL_PerfilB = "B";
	/** Perfil C = C */
	public static final String LBR_INDPERFIL_PerfilC = "C";
	/** Set Perfil de Apresentação.
		@param LBR_IndPerfil 
		Perfil de Apresentação do arquivo fiscal
	  */
	public void setLBR_IndPerfil (String LBR_IndPerfil)
	{

		set_Value (COLUMNNAME_LBR_IndPerfil, LBR_IndPerfil);
	}

	/** Get Perfil de Apresentação.
		@return Perfil de Apresentação do arquivo fiscal
	  */
	public String getLBR_IndPerfil () 
	{
		return (String)get_Value(COLUMNNAME_LBR_IndPerfil);
	}

	/** Set Processed.
		@param Processed 
		The document has been processed
	  */
	public void setProcessed (boolean Processed)
	{
		set_Value (COLUMNNAME_Processed, Boolean.valueOf(Processed));
	}

	/** Get Processed.
		@return The document has been processed
	  */
	public boolean isProcessed () 
	{
		Object oo = get_Value(COLUMNNAME_Processed);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Process Now.
		@param Processing Process Now	  */
	public void setProcessing (boolean Processing)
	{
		set_Value (COLUMNNAME_Processing, Boolean.valueOf(Processing));
	}

	/** Get Process Now.
		@return Process Now	  */
	public boolean isProcessing () 
	{
		Object oo = get_Value(COLUMNNAME_Processing);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Industrial ou equiparado a industrial = 0 */
	public static final String LBR_INDATIVIDADE_IndustrialOuEquiparadoAIndustrial = "0";
	/** Outros = 1 */
	public static final String LBR_INDATIVIDADE_Outros = "1";
	/** Set Tipo de atividade.
		@param lbr_IndAtividade 
		Tipo de atividade
	  */
	public void setlbr_IndAtividade (String lbr_IndAtividade)
	{

		set_Value (COLUMNNAME_lbr_IndAtividade, lbr_IndAtividade);
	}

	/** Get Tipo de atividade.
		@return Tipo de atividade
	  */
	public String getlbr_IndAtividade () 
	{
		return (String)get_Value(COLUMNNAME_lbr_IndAtividade);
	}
}