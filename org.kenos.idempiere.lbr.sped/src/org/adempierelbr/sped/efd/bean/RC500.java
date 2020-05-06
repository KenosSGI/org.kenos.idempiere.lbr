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
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.adempierelbr.annotation.XMLFieldProperties;
import org.adempierelbr.sped.RegSped;

/**
 * REGISTRO C500: NOTA FISCAL/CONTA DE ENERGIA ELÉTRICA (CÓDIGO 06), NOTA
 * FISCAL/CONTA DE FORNECIMENTO D'ÁGUA CANALIZADA (CÓDIGO 29) E NOTA FISCAL
 * CONSUMO FORNECIMENTO DE GÁS (CÓDIGO 28).
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC500.java, 10/02/2011, 14:21:00, mgrigioni
 */
public class RC500 extends RegSped implements Comparable<Object> {
	@XMLFieldProperties(id = "IND_OPER", minSize = 1, maxSize = 1)
	private String IND_OPER;
	
	@XMLFieldProperties(id = "IND_EMIT", minSize = 1, maxSize = 1)
	private String IND_EMIT;
	
	@XMLFieldProperties(id = "COD_PART", maxSize = 60)
	private String COD_PART;
	
	@XMLFieldProperties(id = "COD_MOD", minSize = 2, maxSize = 2)
	private String COD_MOD;
	
	@XMLFieldProperties(id = "COD_SIT", minSize = 2, maxSize = 2)
	private String COD_SIT;
	
	@XMLFieldProperties(id = "COD_SIT", isMandatory = false, maxSize = 4)
	private String SER;
	
	@XMLFieldProperties(id = "SUB", isMandatory = false, maxSize = 3)
	private String SUB;
	
	@XMLFieldProperties(id = "COD_CONS", isMandatory = false, minSize = 2, maxSize = 2)
	private String COD_CONS;
	
	@XMLFieldProperties(id = "NUM_DOC", maxSize = 9)
	private String NUM_DOC;
	
	@XMLFieldProperties(id = "DT_DOC", minSize = 8, maxSize =8, isNumber = true)
	private Timestamp DT_DOC;
	
	@XMLFieldProperties(id = "DT_E_S", minSize = 8, maxSize =8, isNumber = true)
	private Timestamp DT_E_S;
	
	@XMLFieldProperties(id = "VL_DOC")
	private BigDecimal VL_DOC;
	
	@XMLFieldProperties(id = "VL_DESC", isMandatory = false)
	private BigDecimal VL_DESC;
	
	@XMLFieldProperties(id = "VL_FORN", isMandatory = false)
	private BigDecimal VL_FORN;
	
	@XMLFieldProperties(id = "VL_SERV_NT", isMandatory = false)
	private BigDecimal VL_SERV_NT;
	
	@XMLFieldProperties(id = "VL_TERC", isMandatory = false)
	private BigDecimal VL_TERC;
	
	@XMLFieldProperties(id = "VL_DA", isMandatory = false)
	private BigDecimal VL_DA;
	
	@XMLFieldProperties(id = "VL_BC_ICMS", isMandatory = false)
	private BigDecimal VL_BC_ICMS;
	
	@XMLFieldProperties(id = "VL_ICMS", isMandatory = false)
	private BigDecimal VL_ICMS;
	
	@XMLFieldProperties(id = "VL_ICMS", isMandatory = false)
	private BigDecimal VL_BC_ICMS_ST;
	
	@XMLFieldProperties(id = "VL_ICMS_ST", isMandatory = false)
	private BigDecimal VL_ICMS_ST;
	
	@XMLFieldProperties(id = "COD_INF", isMandatory = false, maxSize = 6)
	private String COD_INF;
	
	@XMLFieldProperties(id = "VL_PIS", isMandatory = false)
	private BigDecimal VL_PIS;
	
	@XMLFieldProperties(id = "VL_COFINS", isMandatory = false)
	private BigDecimal VL_COFINS;
	
	@XMLFieldProperties(id = "TP_LIGACAO", isMandatory = false, maxSize = 1)
	private String TP_LIGACAO;
	
	@XMLFieldProperties(id = "COD_GRUPO_TENSAO", isMandatory = false, maxSize = 2)
	private String COD_GRUPO_TENSAO;
	
	@XMLFieldProperties(id = "CHV_DOCe", isMandatory = false, maxSize = 44)
	private String CHV_DOCe;
	
	@XMLFieldProperties(id = "FIN_DOCe", isMandatory = false, maxSize = 1)
	private String FIN_DOCe;
	
	@XMLFieldProperties(id = "CHV_DOCe_REF", isMandatory = false, maxSize = 44)
	private String CHV_DOCe_REF;
	
	@XMLFieldProperties(id = "IND_DEST", isMandatory = false, maxSize = 1)
	private String IND_DEST;
	
	@XMLFieldProperties(id = "COD_MUN_DEST", isMandatory = false, maxSize = 7)
	private String COD_MUN_DEST;
	
	@XMLFieldProperties(id = "COD_CTA", isMandatory = false)
	private String COD_CTA;
	
	@XMLFieldProperties(needsValidation = true, id = "RC590", isSPEDField = false)
	private List<RC590> rC590 = new ArrayList<RC590>();

	
	public void addrC590(RC590 rC590) {
		// add linha
		this.rC590.add(rC590);
	}

	/**
	 * Constructor
	 */
	public RC500() {
		super();
	}
	
	public List<RC590> getrC590() {
		return rC590;
	}

	public void setrC590(List<RC590> rC590) {
		this.rC590 = rC590;
	}
	
	public String getIND_OPER() {
		return IND_OPER;
	}

	public void setIND_OPER(String iND_OPER) {
		IND_OPER = iND_OPER;
	}

	public String getIND_EMIT() {
		return IND_EMIT;
	}

	public void setIND_EMIT(String iND_EMIT) {
		IND_EMIT = iND_EMIT;
	}

	public String getCOD_PART() {
		return COD_PART;
	}

	public void setCOD_PART(String cOD_PART) {
		COD_PART = cOD_PART;
	}

	public String getCOD_MOD() {
		return COD_MOD;
	}

	public void setCOD_MOD(String cOD_MOD) {
		COD_MOD = cOD_MOD;
	}

	public String getCOD_SIT() {
		return COD_SIT;
	}

	public void setCOD_SIT(String cOD_SIT) {
		COD_SIT = cOD_SIT;
	}

	public String getSER() {
		return SER;
	}

	public void setSER(String sER) {
		SER = sER;
	}

	public String getSUB() {
		return SUB;
	}

	public void setSUB(String sUB) {
		SUB = sUB;
	}

	public String getCOD_CONS() {
		return COD_CONS;
	}

	public void setCOD_CONS(String cOD_CONS) {
		COD_CONS = cOD_CONS;
	}

	public String getNUM_DOC() {
		return NUM_DOC;
	}

	public void setNUM_DOC(String nUM_DOC) {
		NUM_DOC = nUM_DOC;
	}

	public Timestamp getDT_DOC() {
		return DT_DOC;
	}

	public void setDT_DOC(Timestamp dT_DOC) {
		DT_DOC = dT_DOC;
	}

	public Timestamp getDT_E_S() {
		return DT_E_S;
	}

	public void setDT_E_S(Timestamp dT_E_S) {
		DT_E_S = dT_E_S;
	}

	public BigDecimal getVL_DOC() {
		return VL_DOC;
	}

	public void setVL_DOC(BigDecimal vL_DOC) {
		VL_DOC = vL_DOC;
	}

	public BigDecimal getVL_DESC() {
		return VL_DESC;
	}

	public void setVL_DESC(BigDecimal vL_DESC) {
		VL_DESC = vL_DESC;
	}

	public BigDecimal getVL_FORN() {
		return VL_FORN;
	}

	public void setVL_FORN(BigDecimal vL_FORN) {
		VL_FORN = vL_FORN;
	}

	public BigDecimal getVL_SERV_NT() {
		return VL_SERV_NT;
	}

	public void setVL_SERV_NT(BigDecimal vL_SERV_NT) {
		VL_SERV_NT = vL_SERV_NT;
	}

	public BigDecimal getVL_TERC() {
		return VL_TERC;
	}

	public void setVL_TERC(BigDecimal vL_TERC) {
		VL_TERC = vL_TERC;
	}

	public BigDecimal getVL_DA() {
		return VL_DA;
	}

	public void setVL_DA(BigDecimal vL_DA) {
		VL_DA = vL_DA;
	}

	public BigDecimal getVL_BC_ICMS() {
		return VL_BC_ICMS;
	}

	public void setVL_BC_ICMS(BigDecimal vL_BC_ICMS) {
		VL_BC_ICMS = vL_BC_ICMS;
	}

	public BigDecimal getVL_ICMS() {
		return VL_ICMS;
	}

	public void setVL_ICMS(BigDecimal vL_ICMS) {
		VL_ICMS = vL_ICMS;
	}

	public BigDecimal getVL_BC_ICMS_ST() {
		return VL_BC_ICMS_ST;
	}

	public void setVL_BC_ICMS_ST(BigDecimal vL_BC_ICMS_ST) {
		VL_BC_ICMS_ST = vL_BC_ICMS_ST;
	}

	public BigDecimal getVL_ICMS_ST() {
		return VL_ICMS_ST;
	}

	public void setVL_ICMS_ST(BigDecimal vL_ICMS_ST) {
		VL_ICMS_ST = vL_ICMS_ST;
	}

	public String getCOD_INF() {
		return COD_INF;
	}

	public void setCOD_INF(String cOD_INF) {
		COD_INF = cOD_INF;
	}

	public BigDecimal getVL_PIS() {
		return VL_PIS;
	}

	public void setVL_PIS(BigDecimal vL_PIS) {
		VL_PIS = vL_PIS;
	}

	public BigDecimal getVL_COFINS() {
		return VL_COFINS;
	}

	public void setVL_COFINS(BigDecimal vL_COFINS) {
		VL_COFINS = vL_COFINS;
	}

	public String getTP_LIGACAO() {
		return TP_LIGACAO;
	}

	public void setTP_LIGACAO(String tP_LIGACAO) {
		TP_LIGACAO = tP_LIGACAO;
	}

	public String getCOD_GRUPO_TENSAO() {
		return COD_GRUPO_TENSAO;
	}

	public void setCOD_GRUPO_TENSAO(String cOD_GRUPO_TENSAO) {
		COD_GRUPO_TENSAO = cOD_GRUPO_TENSAO;
	}

	public String getCHV_DOCe() {
		return CHV_DOCe;
	}

	public void setCHV_DOCe(String cHV_DOCe) {
		CHV_DOCe = cHV_DOCe;
	}

	public String getFIN_DOCe() {
		return FIN_DOCe;
	}

	public void setFIN_DOCe(String fIN_DOCe) {
		FIN_DOCe = fIN_DOCe;
	}

	public String getCHV_DOCe_REF() {
		return CHV_DOCe_REF;
	}

	public void setCHV_DOCe_REF(String cHV_DOCe_REF) {
		CHV_DOCe_REF = cHV_DOCe_REF;
	}

	public String getIND_DEST() {
		return IND_DEST;
	}

	public void setIND_DEST(String iND_DEST) {
		IND_DEST = iND_DEST;
	}

	public String getCOD_MUN_DEST() {
		return COD_MUN_DEST;
	}

	public void setCOD_MUN_DEST(String cOD_MUN_DEST) {
		COD_MUN_DEST = cOD_MUN_DEST;
	}

	public String getCOD_CTA() {
		return COD_CTA;
	}

	public void setCOD_CTA(String cOD_CTA) {
		COD_CTA = cOD_CTA;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((COD_MOD == null) ? 0 : COD_MOD.hashCode());
		result = prime * result
				+ ((COD_PART == null) ? 0 : COD_PART.hashCode());
		result = prime * result + ((COD_SIT == null) ? 0 : COD_SIT.hashCode());
		result = prime * result
				+ ((IND_EMIT == null) ? 0 : IND_EMIT.hashCode());
		result = prime * result
				+ ((IND_OPER == null) ? 0 : IND_OPER.hashCode());
		result = prime * result + ((NUM_DOC == null) ? 0 : NUM_DOC.hashCode());
		result = prime * result + ((SER == null) ? 0 : SER.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		RC500 other = (RC500) obj;
		if (COD_MOD == null) {
			if (other.COD_MOD != null)
				return false;
		} else if (!COD_MOD.equals(other.COD_MOD))
			return false;
		if (COD_PART == null) {
			if (other.COD_PART != null)
				return false;
		} else if (!COD_PART.equals(other.COD_PART))
			return false;
		if (COD_SIT == null) {
			if (other.COD_SIT != null)
				return false;
		} else if (!COD_SIT.equals(other.COD_SIT))
			return false;
		if (IND_EMIT == null) {
			if (other.IND_EMIT != null)
				return false;
		} else if (!IND_EMIT.equals(other.IND_EMIT))
			return false;
		if (IND_OPER == null) {
			if (other.IND_OPER != null)
				return false;
		} else if (!IND_OPER.equals(other.IND_OPER))
			return false;
		if (NUM_DOC == null) {
			if (other.NUM_DOC != null)
				return false;
		} else if (!NUM_DOC.equals(other.NUM_DOC))
			return false;
		if (SER == null) {
			if (other.SER != null)
				return false;
		} else if (!SER.equals(other.SER))
			return false;
		return true;
	}

	/**
	 * Comparador para Collection
	 * 
	 * @see java.util.Comparator#compare(java.lang.Object, java.lang.Object)
	 */
	public int compare(Object o1, Object o2) {
		if (o1 == null) // Depois
			return 1;
		else if (o2 == null)
			return -1; // Antes
		else if (o1 instanceof RC500 && o2 instanceof RC500) {
			RC500 e1 = (RC500) o1;
			RC500 e2 = (RC500) o2;
			//
			if (e1.DT_E_S == null) // Depois
				return 1;
			else if (e2.DT_E_S == null) // Antes
				return -1;

			int compare = e1.DT_E_S.compareTo(e2.DT_E_S);

			if (compare == 0)
				return e1.NUM_DOC.compareTo(e2.NUM_DOC); // Comparar
			else
				return compare;
		} else
			return 0; //
	}

	/**
	 * Comparador para Collection
	 */
	public int compareTo(Object o) {
		return compare(this, o);
	}

} // RC500