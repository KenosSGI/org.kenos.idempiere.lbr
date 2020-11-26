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
import java.sql.Timestamp;
import java.util.Set;

import org.adempierelbr.annotation.XMLFieldProperties;
import org.adempierelbr.sped.RegSped;
import org.adempierelbr.sped.SPEDSet;

/**
 * 	REGISTRO C180:
 */
public class RC190 extends RegSped
{
	@XMLFieldProperties(minSize=2, maxSize = 2, id = "COD_MOD", isNumber=true)
	private String COD_MOD;
	
	@XMLFieldProperties(id = "DT_REF_INI")
	private Timestamp DT_REF_INI;
	
	@XMLFieldProperties(id = "DT_REF_FIN")
	private Timestamp DT_REF_FIN;
	
	@XMLFieldProperties(id = "COD_ITEM")
	private String COD_ITEM;
	
	@XMLFieldProperties(id = "COD_NCM", isMandatory=false)
	private String COD_NCM;
	
	@XMLFieldProperties(id = "EX_IPI", isMandatory=false)
	private String EX_IPI;
	
	@XMLFieldProperties(id = "VL_TOT_ITEM", scale=2)
	private BigDecimal VL_TOT_ITEM;
	
	@XMLFieldProperties (id = "RC191")
	private Set<RC191> _RC191 = new SPEDSet<RC191>();
	
	@XMLFieldProperties (id = "RC195")
	private Set<RC195> _RC195 = new SPEDSet<RC195>();

	public String getCOD_MOD() {
		return COD_MOD;
	}

	public void setCOD_MOD(String cOD_MOD) {
		COD_MOD = cOD_MOD;
	}

	public Timestamp getDT_REF_INI() {
		return DT_REF_INI;
	}

	public void setDT_REF_INI(Timestamp dT_REF_INI) {
		DT_REF_INI = dT_REF_INI;
	}

	public Timestamp getDT_REF_FIN() {
		return DT_REF_FIN;
	}

	public void setDT_REF_FIN(Timestamp dT_REF_FIN) {
		DT_REF_FIN = dT_REF_FIN;
	}

	public String getCOD_ITEM() {
		return COD_ITEM;
	}

	public void setCOD_ITEM(String cOD_ITEM) {
		COD_ITEM = cOD_ITEM;
	}

	public String getCOD_NCM() {
		return COD_NCM;
	}

	public void setCOD_NCM(String cOD_NCM) {
		COD_NCM = cOD_NCM;
	}

	public String getEX_IPI() {
		return EX_IPI;
	}

	public void setEX_IPI(String eX_IPI) {
		EX_IPI = eX_IPI;
	}

	public BigDecimal getVL_TOT_ITEM() {
		return VL_TOT_ITEM;
	}

	public void setVL_TOT_ITEM(BigDecimal vL_TOT_ITEM) {
		VL_TOT_ITEM = vL_TOT_ITEM;
	}
}	//	RC170
