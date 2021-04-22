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
import org.adempierelbr.sped.bean.I_R0500;
import org.adempierelbr.sped.bean.I_RX001;

/**
 * 	REGISTRO 0001:
 * 		ABERTURA DO BLOCO 0
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: R0001.java, v1.0 2013/02/02 11:39:22 AM, rfeitosa Exp $
 */
public class R0001 extends RegSped implements I_RX001
{
	@XMLFieldProperties(minSize=1, maxSize=1, id="IND_MOV")
	private String IND_MOV;
	
	@XMLFieldProperties(id = "R0100")
	private R0100 r0100;
	
	@XMLFieldProperties(id = "R0110")
	private R0110 r0110;
	
	@XMLFieldProperties(id = "R0140")
	private Map<Integer,R0140> r0140 = new HashMap<Integer,R0140>();
	
	@XMLFieldProperties(id = "R0500")
	private Set<I_R0500> r0500;

	public String getIND_MOV()
	{
		return IND_MOV;
	}

	public void setIND_MOV(String iND_MOV)
	{
		IND_MOV = iND_MOV;
	}
	
	public R0100 getR0100()
	{
		return r0100;
	}
	
	public void setR0100(R0100 r0100)
	{
		this.r0100 = r0100;
	}
	
	public R0110 getR0110()
	{
		return r0110;
	}
	
	public void setR0110(R0110 r0110)
	{
		this.r0110 = r0110;
	}
	
	public Set<R0140> getR0140()
	{
		return new SPEDSet<R0140>(r0140.values());
	}

	public R0140 getR0140(int AD_Org_ID)
	{
		return r0140.get(AD_Org_ID);
	}
	
	public void addR0140(int AD_Org_ID, R0140 r0140)
	{
		this.r0140.put(AD_Org_ID, r0140);
	}
	
	public Set<I_R0500> getR0500()
	{
		return r0500;
	}
	
	public void setR0500(Set<I_R0500> r0500)
	{
		this.r0500 = r0500;
	}
}	//	R0001
