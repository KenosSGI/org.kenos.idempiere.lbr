/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 1 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 01111-1307 USA.                     *
 *****************************************************************************/
package org.adempierelbr.sped.efd.bean;

import org.adempierelbr.annotation.XMLFieldProperties;
import org.adempierelbr.sped.RegSped;

/**
 * REGISTRO 1010: REGISTROS DO BLOCO 1
 * 
 * @author Priscila Pinheiro, ppinheiro Kenos
 * @version $Id: R1010.java, 05/01/1013, 11:03:00, ppinheiro
 */
public class R1010 extends RegSped 
{	
	
	@XMLFieldProperties(id = "IND_EXP", maxSize = 1, minSize = 1)
	private String IND_EXP;
	
	@XMLFieldProperties(id = "IND_CCRF", maxSize = 1, minSize = 1)
	private String IND_CCRF;
	
	@XMLFieldProperties(id = "IND_COMB", maxSize = 1, minSize = 1)
	private String IND_COMB;
	
	@XMLFieldProperties(id = "IND_USINA", maxSize = 1, minSize = 1)
	private String IND_USINA;
	
	@XMLFieldProperties(id = "IND_VA", maxSize = 1, minSize = 1)
	private String IND_VA;
	
	@XMLFieldProperties(id = "IND_EE", maxSize = 1, minSize = 1)
	private String IND_EE;
	
	@XMLFieldProperties(id = "IND_CART", maxSize = 1, minSize = 1)
	private String IND_CART;
	
	@XMLFieldProperties(id = "IND_FORM", maxSize = 1, minSize = 1)
	private String IND_FORM;
	
	@XMLFieldProperties(id = "IND_AER", maxSize = 1, minSize = 1)
	private String IND_AER;
	
	@XMLFieldProperties(id = "IND_GIAF1", maxSize = 1, minSize = 1)
	private String IND_GIAF1;
	
	@XMLFieldProperties(id = "IND_GIAF3", maxSize = 1, minSize = 1)
	private String IND_GIAF3;
	
	@XMLFieldProperties(id = "IND_GIAF4", maxSize = 1, minSize = 1)
	private String IND_GIAF4;	
	
	@XMLFieldProperties(id = "IND_REST_RESSARC_COMPL_ICMS", maxSize = 1, minSize = 1)
	private String IND_REST_RESSARC_COMPL_ICMS;	

	/**
	 * Constructor
	 */
	public R1010() {
		super();
	}
	
	public String getREG() {
		return REG;
	}

	public void setREG(String rEG) {
		REG = rEG;
	}
	
	public String getIND_EXP() {
		return IND_EXP;
	}

	public void setIND_EXP(String iND_EXP) {
		IND_EXP = iND_EXP;
	}
	
	public String getIND_CCRF() {
		return IND_CCRF;
	}

	public void setIND_CCRF(String iND_CCRF) {
		IND_CCRF = iND_CCRF;
	}
	
	public String getIND_COMB() {
		return IND_COMB;
	}

	public void setIND_COMB(String iND_COMB) {
		IND_COMB = iND_COMB;
	}
	
	public String getIND_USINA() {
		return IND_USINA;
	}

	public void setIND_USINA(String iND_USINA) {
		IND_USINA = iND_USINA;
	}
	
	public String getIND_VA() {
		return IND_VA;
	}

	public void setIND_VA(String iND_VA) {
		IND_VA = iND_VA;
	}
	
	public String getIND_EE() {
		return IND_EE;
	}

	public void setIND_EE(String iND_EE) {
		IND_EE = iND_EE;
	}
	
	public String getIND_CART() {
		return IND_CART;
	}

	public void setIND_CART(String iND_CART) {
		IND_CART = iND_CART;
	}
	
	public String getIND_FORM() {
		return IND_FORM;
	}

	public void setIND_FORM(String iND_FORM) {
		IND_FORM = iND_FORM;
	}
	
	public String getIND_AER() {
		return IND_AER;
	}

	public void setIND_AER(String iND_AER) {
		IND_AER = iND_AER;
	}
	
	public String getIND_GIAF1()
	{
		return IND_GIAF1;
	}

	public void setIND_GIAF1(String iND_GIAF1)
	{
		IND_GIAF1 = iND_GIAF1;
	}

	public String getIND_GIAF3()
	{
		return IND_GIAF3;
	}

	public void setIND_GIAF3(String iND_GIAF3)
	{
		IND_GIAF3 = iND_GIAF3;
	}

	public String getIND_GIAF4()
	{
		return IND_GIAF4;
	}

	public void setIND_GIAF4(String iND_GIAF4)
	{
		IND_GIAF4 = iND_GIAF4;
	}


	public String getIND_REST_RESSARC_COMPL_ICMS() {
		return IND_REST_RESSARC_COMPL_ICMS;
	}

	public void setIND_REST_RESSARC_COMPL_ICMS(String iND_REST_RESSARC_COMPL_ICMS) {
		IND_REST_RESSARC_COMPL_ICMS = iND_REST_RESSARC_COMPL_ICMS;
	}

	@Override
	public int compareTo(Object arg0) {
		// TODO Auto-generated method stub
		return 0;
	}

} // R1001