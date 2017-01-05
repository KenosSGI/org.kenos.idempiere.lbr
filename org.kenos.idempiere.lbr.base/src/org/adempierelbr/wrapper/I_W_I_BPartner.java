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

/** Generated Interface for I_BPartner
 *  @author iDempiere (generated) 
 *  @version Release 4.1
 */
@SuppressWarnings("all")
public interface I_W_I_BPartner 
{

    /** TableName=I_BPartner */
    public static final String Table_Name = "I_BPartner";

    /** AD_Table_ID=533 */
    public static final int Table_ID = 533;


    /** Column name AD_Language */
    public static final String COLUMNNAME_AD_Language = "AD_Language";

	/** AD_Language AD_Reference_ID=327 */
	public static final int AD_LANGUAGE_AD_Reference_ID=327;


	/** Set Language.
	  * Language for this entity
	  */
	public void setAD_Language (String AD_Language);

	/** Get Language.
	  * Language for this entity
	  */
	public String getAD_Language();

    /** Column name IsSalesRep */
    public static final String COLUMNNAME_IsSalesRep = "IsSalesRep";

	/** Set Sales Representative.
	  * Indicates if  the business partner is a sales representative or company agent
	  */
	public void setIsSalesRep (boolean IsSalesRep);

	/** Get Sales Representative.
	  * Indicates if  the business partner is a sales representative or company agent
	  */
	public boolean isSalesRep();

    /** Column name LBR_BPTypeBR */
    public static final String COLUMNNAME_LBR_BPTypeBR = "LBR_BPTypeBR";

	/** PJ - Legal Entity = PJ */
	public static final String LBR_BPTYPEBR_PJ_LegalEntity = "PJ";

	/** PF - Individual = PF */
	public static final String LBR_BPTYPEBR_PF_Individual = "PF";

	/** PM - Individual Minor = PM */
	public static final String LBR_BPTYPEBR_PM_IndividualMinor = "PM";

	/** XX - Foreigner = XX */
	public static final String LBR_BPTYPEBR_XX_Foreigner = "XX";


	/** Set Brazilian BP Type.
	  * Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)
	  */
	public void setLBR_BPTypeBR (String LBR_BPTypeBR);

	/** Get Brazilian BP Type.
	  * Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)
	  */
	public String getLBR_BPTypeBR();

    /** Column name LBR_CCM */
    public static final String COLUMNNAME_LBR_CCM = "LBR_CCM";

	/** Set CCM.
	  * City Identification Code used in Brazil (City Tax ID)
	  */
	public void setLBR_CCM (String LBR_CCM);

	/** Get CCM.
	  * City Identification Code used in Brazil (City Tax ID)
	  */
	public String getLBR_CCM();

    /** Column name LBR_CNPJ */
    public static final String COLUMNNAME_LBR_CNPJ = "LBR_CNPJ";

	/** Set CNPJ.
	  * Used to identify Legal Entities in Brazil
	  */
	public void setLBR_CNPJ (String LBR_CNPJ);

	/** Get CNPJ.
	  * Used to identify Legal Entities in Brazil
	  */
	public String getLBR_CNPJ();

    /** Column name LBR_CPF */
    public static final String COLUMNNAME_LBR_CPF = "LBR_CPF";

	/** Set CPF.
	  * Used to identify individuals in Brazil
	  */
	public void setLBR_CPF (String LBR_CPF);

	/** Get CPF.
	  * Used to identify individuals in Brazil
	  */
	public String getLBR_CPF();

    /** Column name LBR_IE */
    public static final String COLUMNNAME_LBR_IE = "LBR_IE";

	/** Set IE.
	  * Used to Identify the IE (State Tax ID)
	  */
	public void setLBR_IE (String LBR_IE);

	/** Get IE.
	  * Used to Identify the IE (State Tax ID)
	  */
	public String getLBR_IE();

    /** Column name LBR_RG */
    public static final String COLUMNNAME_LBR_RG = "LBR_RG";

	/** Set RG.
	  * Used to identify individuals in Brazil
	  */
	public void setLBR_RG (String LBR_RG);

	/** Get RG.
	  * Used to identify individuals in Brazil
	  */
	public String getLBR_RG();
}
