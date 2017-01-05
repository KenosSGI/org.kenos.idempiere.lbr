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

/** Generated Interface for C_BPartner_Location
 *  @author iDempiere (generated) 
 *  @version Release 4.1
 */
@SuppressWarnings("all")
public interface I_W_C_BPartner_Location 
{

    /** TableName=C_BPartner_Location */
    public static final String Table_Name = "C_BPartner_Location";

    /** AD_Table_ID=293 */
    public static final int Table_ID = 293;


    /** Column name LBR_BPTypeBRIsValid */
    public static final String COLUMNNAME_LBR_BPTypeBRIsValid = "LBR_BPTypeBRIsValid";

	/** Set Brazilian BP Valid.
	  * Brazilian BP is Valid
	  */
	public void setLBR_BPTypeBRIsValid (boolean LBR_BPTypeBRIsValid);

	/** Get Brazilian BP Valid.
	  * Brazilian BP is Valid
	  */
	public boolean isLBR_BPTypeBRIsValid();

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

    /** Column name LBR_IndIEDest */
    public static final String COLUMNNAME_LBR_IndIEDest = "LBR_IndIEDest";

	/** 1 - Contribuinte de ICMS = 1 */
	public static final String LBR_INDIEDEST_1_ContribuinteDeICMS = "1";

	/** 2 - Contribuinte de ICMS - Isento = 2 */
	public static final String LBR_INDIEDEST_2_ContribuinteDeICMS_Isento = "2";

	/** 9 - Não Contribuinte de ICMS = 9 */
	public static final String LBR_INDIEDEST_9_NãoContribuinteDeICMS = "9";


	/** Set Indicador da IE.
	  * Indicador da IE do Destinatário
	  */
	public void setLBR_IndIEDest (String LBR_IndIEDest);

	/** Get Indicador da IE.
	  * Indicador da IE do Destinatário
	  */
	public String getLBR_IndIEDest();
}
