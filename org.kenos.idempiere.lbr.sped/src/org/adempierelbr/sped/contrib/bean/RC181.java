/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
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
package org.adempierelbr.sped.contrib.bean;

import java.math.BigDecimal;

import org.adempierelbr.annotation.XMLFieldProperties;
import org.adempierelbr.model.MLBRFactFiscal;
import org.adempierelbr.sped.RegSped;
import org.compiere.util.Env;

/**
 * 	REGISTRO C180:
 */
public class RC181 extends RegSped
{
	@XMLFieldProperties(minSize=2, maxSize = 2, id = "CST_PIS", isNumber=true)
	private String CST_PIS;
	
	@XMLFieldProperties(minSize=4, maxSize = 4, id = "CFOP", isNumber=true)
	private String CFOP;
	
	@XMLFieldProperties(id = "VL_ITEM", scale=2)
	private BigDecimal VL_ITEM;
	
	@XMLFieldProperties(id = "VL_DESC", scale=2)
	private BigDecimal VL_DESC;
	
	@XMLFieldProperties(id = "VL_BC_PIS", scale=2)
	private BigDecimal VL_BC_PIS;
	
	@XMLFieldProperties(id = "ALIQ_PIS", scale=2)
	private BigDecimal ALIQ_PIS;
	
	@XMLFieldProperties(id = "QUANT_BC_PIS", scale=2)
	private BigDecimal QUANT_BC_PIS;
	
	@XMLFieldProperties(id = "ALIQ_PIS_QUANT", scale=2)
	private BigDecimal ALIQ_PIS_QUANT;
	
	@XMLFieldProperties(id = "VL_PIS", scale=2)
	private BigDecimal VL_PIS;
	
	@XMLFieldProperties(minSize=4, maxSize = 255, id = "COD_CTA", isNumber=true)
	private String COD_CTA;

	private String identifier = "";
	
	public RC181 (String identifier, MLBRFactFiscal fact) 
	{
		setIdentifier(identifier);
		setCST_PIS(fact.getPIS_TaxStatus());
		setCFOP(fact.getlbr_CFOPName());
		//
		setVL_ITEM(Env.ZERO);
		setVL_DESC(Env.ZERO);
		setVL_BC_PIS(Env.ZERO);
		setALIQ_PIS(fact.getPIS_TaxRate());
		setVL_PIS(Env.ZERO);
	}	//	RC181

	public String getCST_PIS() {
		return CST_PIS;
	}

	public void setCST_PIS(String cST_PIS) {
		CST_PIS = cST_PIS;
	}

	public String getCFOP() {
		return CFOP;
	}

	public void setCFOP(String cFOP) {
		CFOP = cFOP;
	}

	public BigDecimal getVL_ITEM() {
		return VL_ITEM;
	}

	public void setVL_ITEM(BigDecimal vL_ITEM) {
		VL_ITEM = vL_ITEM;
	}

	public BigDecimal getVL_DESC() {
		return VL_DESC;
	}

	public void setVL_DESC(BigDecimal vL_DESC) {
		VL_DESC = vL_DESC;
	}

	public BigDecimal getVL_BC_PIS() {
		return VL_BC_PIS;
	}

	public void setVL_BC_PIS(BigDecimal vL_BC_PIS) {
		VL_BC_PIS = vL_BC_PIS;
	}

	public BigDecimal getALIQ_PIS() {
		return ALIQ_PIS;
	}

	public void setALIQ_PIS(BigDecimal aLIQ_PIS) {
		ALIQ_PIS = aLIQ_PIS;
	}

	public BigDecimal getQUANT_BC_PIS() {
		return QUANT_BC_PIS;
	}

	public void setQUANT_BC_PIS(BigDecimal qUANT_BC_PIS) {
		QUANT_BC_PIS = qUANT_BC_PIS;
	}

	public BigDecimal getALIQ_PIS_QUANT() {
		return ALIQ_PIS_QUANT;
	}

	public void setALIQ_PIS_QUANT(BigDecimal aLIQ_PIS_QUANT) {
		ALIQ_PIS_QUANT = aLIQ_PIS_QUANT;
	}

	public BigDecimal getVL_PIS() {
		return VL_PIS;
	}

	public void setVL_PIS(BigDecimal vL_PIS) {
		VL_PIS = vL_PIS;
	}

	public String getCOD_CTA() {
		return COD_CTA;
	}

	public void setCOD_CTA(String cOD_CTA) {
		COD_CTA = cOD_CTA;
	}

	public String getIdentifier() {
		return identifier;
	}

	public void setIdentifier(String identifier) {
		this.identifier = identifier;
	}

	public void add(MLBRFactFiscal fact) {
		setVL_ITEM(getVL_ITEM().add(fact.getPIS_TaxBase()));
		setVL_BC_PIS(getVL_BC_PIS().add(fact.getPIS_TaxBase()));
		setVL_PIS(getVL_PIS().add(fact.getPIS_TaxAmt()));
	}
}	//	RC170
