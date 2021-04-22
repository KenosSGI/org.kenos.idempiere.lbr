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

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import org.adempierelbr.annotation.XMLFieldProperties;
import org.adempierelbr.sped.RegSped;
import org.adempierelbr.sped.SPEDSet;
import org.adempierelbr.sped.bean.I_RC100;
import org.adempierelbr.sped.bean.I_RC500;

/**
 * 	REGISTRO C010:
 * 		IDENTIFICAÇÃO DO ESTABELECIMENTO
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: RC010.java, v1.0 2013/02/02 11:39:22 AM, rfeitosa Exp $
 */
public class RC010 extends RegSped
{
	@XMLFieldProperties(minSize=14, maxSize = 14, id = "CNPJ", isNumber=true)
	private String CNPJ;
	
	@XMLFieldProperties(minSize=1, maxSize = 1, id = "IND_ESCRI", isMandatory=false)
	private String IND_ESCRI;
	
	@XMLFieldProperties (id = "RC100")
	private Set<I_RC100> rC100 = new SPEDSet<I_RC100>();
	
	@XMLFieldProperties (id = "RC180")
	private Map<String,RC180> rC180 = new HashMap<String, RC180>();
	
	@XMLFieldProperties (id = "RC190")
	private Map<String,RC190> rC190 = new HashMap<String, RC190>();
	
	@XMLFieldProperties (id = "RC500")
	private Set<I_RC500> rC500 = new SPEDSet<I_RC500>();

	public Set<I_RC100> getRC100()
	{
		return rC100;
	}

	public void setRC100(Set<I_RC100> rC100)
	{
		this.rC100 = rC100;
	}

	public Set<RC180> getRC180()
	{
		return new SPEDSet<RC180>(rC180.values());
	}

	public RC180 getRC180(String identifier)
	{
		return rC180.get(identifier);
	}

	public void addRC180(String identifier, RC180 rC180)
	{
		this.rC180.put(identifier, rC180);
	}

	public Set<RC190> getRC190()
	{
		return new SPEDSet<RC190>(rC190.values());
	}
	
	public RC190 getRC190(String identifier)
	{
		return rC190.get(identifier);
	}

	public void addRC190(String identifier, RC190 rC190)
	{
		this.rC190.put(identifier, rC190);
	}

	public Set<I_RC500> getRC500()
	{
		return rC500;
	}

	public void setRC500(Set<I_RC500> rC500)
	{
		this.rC500 = rC500;
	}

	public String getCNPJ()
	{
		return CNPJ;
	}

	public void setCNPJ(String cNPJ)
	{
		CNPJ = cNPJ;
	}

	public String getIND_ESCRI()
	{
		return IND_ESCRI;
	}

	public void setIND_ESCRI(String iND_ESCRI)
	{
		IND_ESCRI = iND_ESCRI;
	}
}	//	RC010
