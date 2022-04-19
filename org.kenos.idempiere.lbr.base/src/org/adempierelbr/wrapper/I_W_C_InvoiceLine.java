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

import java.math.BigDecimal;
import org.compiere.model.*;

/** Generated Interface for C_InvoiceLine
 *  @author Ricardo Santana
 *  @version Release 6.2
 */
public interface I_W_C_InvoiceLine extends I_C_InvoiceLine 
{


    /** Column name C_BPartner_Location_ID */
    public static final String COLUMNNAME_C_BPartner_Location_ID = "C_BPartner_Location_ID";

	/** Set Partner Location.
	  * Identifies the (ship to) address for this Business Partner
	  */
	public void setC_BPartner_Location_ID (int C_BPartner_Location_ID);

	/** Get Partner Location.
	  * Identifies the (ship to) address for this Business Partner
	  */
	public int getC_BPartner_Location_ID();

	public I_C_BPartner_Location getC_BPartner_Location() throws RuntimeException;

    /** Column name FreightAmt */
    public static final String COLUMNNAME_FreightAmt = "FreightAmt";

	/** Set Freight Amount.
	  * Freight Amount 
	  */
	public void setFreightAmt (BigDecimal FreightAmt);

	/** Get Freight Amount.
	  * Freight Amount 
	  */
	public BigDecimal getFreightAmt();

    /** Column name LBR_ADILine_ID */
    public static final String COLUMNNAME_LBR_ADILine_ID = "LBR_ADILine_ID";

	/** Set Linhas da Adição	  */
	public void setLBR_ADILine_ID (int LBR_ADILine_ID);

	/** Get Linhas da Adição	  */
	public int getLBR_ADILine_ID();

    /** Column name LBR_CFOP_ID */
    public static final String COLUMNNAME_LBR_CFOP_ID = "LBR_CFOP_ID";

	/** Set CFOP.
	  * Primary key table LBR_CFOP
	  */
	public void setLBR_CFOP_ID (int LBR_CFOP_ID);

	/** Get CFOP.
	  * Primary key table LBR_CFOP
	  */
	public int getLBR_CFOP_ID();

    /** Column name LBR_DI_ID */
    public static final String COLUMNNAME_LBR_DI_ID = "LBR_DI_ID";

	/** Set Declaracao de Importacao	  */
	public void setLBR_DI_ID (int LBR_DI_ID);

	/** Get Declaracao de Importacao	  */
	public int getLBR_DI_ID();

    /** Column name LBR_LegalMessage_ID */
    public static final String COLUMNNAME_LBR_LegalMessage_ID = "LBR_LegalMessage_ID";

	/** Set Legal Message.
	  * Defines the Legal Message
	  */
	public void setLBR_LegalMessage_ID (int LBR_LegalMessage_ID);

	/** Get Legal Message.
	  * Defines the Legal Message
	  */
	public int getLBR_LegalMessage_ID();

    /** Column name LBR_OtherChargesAmt */
    public static final String COLUMNNAME_LBR_OtherChargesAmt = "LBR_OtherChargesAmt";

	/** Set Other Charges Amount	  */
	public void setLBR_OtherChargesAmt (BigDecimal LBR_OtherChargesAmt);

	/** Get Other Charges Amount	  */
	public BigDecimal getLBR_OtherChargesAmt();

    /** Column name LBR_Tax_ID */
    public static final String COLUMNNAME_LBR_Tax_ID = "LBR_Tax_ID";

	/** Set Brazilian Tax.
	  * Primary key table LBR_Tax
	  */
	public void setLBR_Tax_ID (int LBR_Tax_ID);

	/** Get Brazilian Tax.
	  * Primary key table LBR_Tax
	  */
	public int getLBR_Tax_ID();

    /** Column name lbr_InsuranceAmt */
    public static final String COLUMNNAME_lbr_InsuranceAmt = "lbr_InsuranceAmt";

	/** Set Insurance Amt.
	  * Defines the Insurance Amt
	  */
	public void setlbr_InsuranceAmt (BigDecimal lbr_InsuranceAmt);

	/** Get Insurance Amt.
	  * Defines the Insurance Amt
	  */
	public BigDecimal getlbr_InsuranceAmt();

    /** Column name lbr_RecalculateTax */
    public static final String COLUMNNAME_lbr_RecalculateTax = "lbr_RecalculateTax";

	/** Set Recalculate Tax	  */
	public void setlbr_RecalculateTax (boolean lbr_RecalculateTax);

	/** Get Recalculate Tax	  */
	public boolean islbr_RecalculateTax();

    /** Column name lbr_SISCOMEXAmt */
    public static final String COLUMNNAME_lbr_SISCOMEXAmt = "lbr_SISCOMEXAmt";

	/** Set SISCOMEX Amt	  */
	public void setlbr_SISCOMEXAmt (BigDecimal lbr_SISCOMEXAmt);

	/** Get SISCOMEX Amt	  */
	public BigDecimal getlbr_SISCOMEXAmt();

    /** Column name lbr_TaxStatus */
    public static final String COLUMNNAME_lbr_TaxStatus = "lbr_TaxStatus";

	/** Set Tax Status.
	  * Defines the Tax Status
	  */
	public void setlbr_TaxStatus (String lbr_TaxStatus);

	/** Get Tax Status.
	  * Defines the Tax Status
	  */
	public String getlbr_TaxStatus();
}
