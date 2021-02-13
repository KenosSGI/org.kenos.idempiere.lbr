/******************************************************************************
 * Copyright (C) 2013 Kenos Assessoria e Consultoria de Sistemas Ltda         *
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
package org.adempierelbr.sped.bean;

import java.sql.Timestamp;

/**
 * 		Interface Produto
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: I_R0200.java, v1.0 2013/02/07 16:40:57 PM, ralexsander Exp $
 */
public interface I_R0500
{
	public String getCOD_CTA();
	public String getCOD_NAT_CC();
	public String getIND_CTA();
	public String getNOME_CTA();
	public Timestamp getDT_ALT();
	public void setCOD_CTA(String cOD_CTA);
	public void setCOD_NAT_CC(String cOD_NAT_CC);
	public void setDT_ALT(Timestamp dT_ALT);
	public void setIND_CTA(String iND_CTA);
	public void setNIVEL(int nIVEL);
	public void setNOME_CTA(String nOME_CTA);
}	//	I_R0150