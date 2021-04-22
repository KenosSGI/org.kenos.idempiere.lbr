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

import java.util.Set;

import org.adempierelbr.annotation.XMLFieldProperties;
import org.adempierelbr.sped.RegSped;
import org.adempierelbr.sped.SPEDSet;
import org.adempierelbr.sped.bean.I_R0150;
import org.adempierelbr.sped.bean.I_R0190;
import org.adempierelbr.sped.bean.I_R0200;

/**
 * 	REGISTRO 0140:
 * 		TABELA DE CADASTRO DE ESTABELECIMENTO
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: R0140.java, v1.0 2013/02/02 11:39:22 AM, rfeitosa Exp $
 */
public class R0140 extends RegSped
{
	@XMLFieldProperties(maxSize=60, id="COD_EST", isMandatory=false)
	private String COD_EST;
	
	@XMLFieldProperties(minSize=1, maxSize=100, id="NOME")
	private String NOME;
	
	@XMLFieldProperties(minSize=14, maxSize=14, id="CNPJ", isNumber=true)
	private String CNPJ;
	
	@XMLFieldProperties(minSize=2, maxSize=2, id="UF")
	private String UF;
	
	@XMLFieldProperties(maxSize=14, id="IE", isMandatory=false)
	private String IE;
	
	@XMLFieldProperties(minSize=2, maxSize=7, id="COD_MUN")
	private String COD_MUN;
	
	@XMLFieldProperties(id="IM", isMandatory=false)
	private String IM;
	
	@XMLFieldProperties(minSize=9, maxSize=9, id="SUFRAMA", isMandatory=false)
	private String SUFRAMA;
	
	@XMLFieldProperties(id = "R0150")
	private Set<I_R0150> r0150 = new SPEDSet<I_R0150>();
	
	@XMLFieldProperties(id = "R0190")
	private Set<I_R0190> r0190 = new SPEDSet<I_R0190>();
	
	@XMLFieldProperties(id = "R0200")
	private Set<I_R0200> r0200 = new SPEDSet<I_R0200>();

	public String getCOD_EST()
	{
		return COD_EST;
	}

	public void setCOD_EST(String cOD_EST)
	{
		COD_EST = cOD_EST;
	}

	public String getNOME()
	{
		return NOME;
	}

	public void setNOME(String nOME)
	{
		NOME = nOME;
	}

	public String getCNPJ()
	{
		return CNPJ;
	}

	public void setCNPJ(String cNPJ)
	{
		CNPJ = cNPJ;
	}

	public String getUF()
	{
		return UF;
	}

	public void setUF(String uF)
	{
		UF = uF;
	}

	public String getIE()
	{
		return IE;
	}

	public void setIE(String iE)
	{
		IE = iE;
	}

	public String getCOD_MUN()
	{
		return COD_MUN;
	}

	public void setCOD_MUN(String cOD_MUN)
	{
		COD_MUN = cOD_MUN;
	}

	public String getIM()
	{
		return IM;
	}

	public void setIM(String iM)
	{
		IM = iM;
	}

	public String getSUFRAMA()
	{
		return SUFRAMA;
	}

	public void setSUFRAMA(String sUFRAMA)
	{
		SUFRAMA = sUFRAMA;
	}
	
	public Set<I_R0150> getR0150()
	{
		return r0150;
	}
	
	public void setR0150(Set<I_R0150> r0150)
	{
		this.r0150 = r0150;
	}
	
	public Set<I_R0190> getR0190()
	{
		return r0190;
	}
	
	public void setR0190(Set<I_R0190> r0190)
	{
		this.r0190 = r0190;
	}
	
	public Set<I_R0200> getR0200()
	{
		return r0200;
	}
	
	public void setR0200(Set<I_R0200> r0200)
	{
		this.r0200 = r0200;
	}
}	//	R0140
