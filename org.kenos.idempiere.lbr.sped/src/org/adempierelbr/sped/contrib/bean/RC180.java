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
public class RC180 extends RegSped
{
	@XMLFieldProperties(minSize=2, maxSize = 2, id = "COD_MOD", isNumber=true)
	private String COD_MOD;
	
	@XMLFieldProperties(id = "DT_DOC_INI")
	private Timestamp DT_DOC_INI;
	
	@XMLFieldProperties(id = "DT_DOC_FIN")
	private Timestamp DT_DOC_FIN;
	
	@XMLFieldProperties(id = "COD_ITEM")
	private String COD_ITEM;
	
	@XMLFieldProperties(id = "COD_NCM", isMandatory=false)
	private String COD_NCM;
	
	@XMLFieldProperties(id = "EX_IPI", isMandatory=false)
	private String EX_IPI;
	
	@XMLFieldProperties(id = "VL_TOT_ITEM", scale=2)
	private BigDecimal VL_TOT_ITEM;
	
	@XMLFieldProperties (id = "RC181")
	private Set<RC181> _RC181 = new SPEDSet<RC181>();
	
	@XMLFieldProperties (id = "RC185")
	private Set<RC185> _RC185 = new SPEDSet<RC185>();

	public String getCOD_MOD() {
		return COD_MOD;
	}

	public void setCOD_MOD(String cOD_MOD) {
		COD_MOD = cOD_MOD;
	}

	public Timestamp getDT_DOC_INI() {
		return DT_DOC_INI;
	}

	public void setDT_DOC_INI(Timestamp dT_DOC_INI) {
		DT_DOC_INI = dT_DOC_INI;
	}

	public Timestamp getDT_DOC_FIN() {
		return DT_DOC_FIN;
	}

	public void setDT_DOC_FIN(Timestamp dT_DOC_FIN) {
		DT_DOC_FIN = dT_DOC_FIN;
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

	public Set<RC181> get_RC181() {
		return _RC181;
	}

	public void set_RC181(Set<RC181> _RC181) {
		this._RC181 = _RC181;
	}

	public Set<RC185> get_RC185() {
		return _RC185;
	}

	public void set_RC185(Set<RC185> _RC185) {
		this._RC185 = _RC185;
	}

//	public RC181 get_RC181(String regIdentifier) {
//		_RC181.stream().filter(r -> {
////			r.get
//		})
//	}
}	//	RC170
