/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.adempierelbr.sped.efd.bean;

import org.adempierelbr.annotation.XMLFieldProperties;
import org.adempierelbr.sped.RegSped;

/**
 * 	REGISTRO 0002: CLASSIFICAÇÃO DO ESTABELECIMENTO INDUSTRIAL OU EQUIPARADO A INDUSTRIAL
 * 
 * @author Ricardo Santana
 */
public class R0002 extends RegSped
{
	@XMLFieldProperties(id = "CLAS_ESTAB_IND")
	private String CLAS_ESTAB_IND;
	
	/**
	 * 	Constructor
	 */
	@SuppressWarnings("deprecation")
	public R0002(String CLAS_ESTAB_IND) 
	{
		super();
		setCLAS_ESTAB_IND (CLAS_ESTAB_IND);
	}	//	R0002

	public String getCLAS_ESTAB_IND ()
	{
		return CLAS_ESTAB_IND;
	}	//	getCLAS_ESTAB_IND
	
	public void setCLAS_ESTAB_IND (String CLAS_ESTAB_IND)
	{
		this.CLAS_ESTAB_IND = CLAS_ESTAB_IND;
	}	//	setCLAS_ESTAB_IND
}	//	R0002