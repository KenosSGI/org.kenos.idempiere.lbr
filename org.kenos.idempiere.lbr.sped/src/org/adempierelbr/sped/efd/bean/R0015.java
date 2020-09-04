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

import java.math.BigDecimal;

import org.adempierelbr.annotation.XMLFieldProperties;
import org.adempierelbr.sped.RegSped;

/**
 * 	REGISTRO 0015: DADOS DO CONTRIBUINTE SUBSTITUTO OU RESPONSÁVEL PELO ICMS DESTINO
 * 
 * @author Rogério Feitosa
 */
public class R0015 extends RegSped
{
	@XMLFieldProperties(id = "UF_ST")
	private String UF_ST;
	
	@XMLFieldProperties(id = "IE_ST")
	private String IE_ST;
	
	/**
	 * 	Constructor
	 */
	public R0015(String UF_ST, String IE_ST) 
	{
		super();
		setUF_ST(UF_ST);
		setIE_ST(IE_ST);
	}	//	R0015

	public String getUF_ST() {
		return UF_ST;
	}

	public void setUF_ST(String uF_ST) {
		UF_ST = uF_ST;
	}

	public String getIE_ST() {
		return IE_ST;
	}

	public void setIE_ST(String iE_ST) {
		IE_ST = iE_ST;
	}
	
	
}	//	R0015