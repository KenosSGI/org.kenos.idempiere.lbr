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
import org.adempierelbr.sped.RegSped;
import org.adempierelbr.sped.bean.I_RX990;

/**
 * 	REGISTRO A990: 
 * 		ENCERRAMENTO DO BLOCO A
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: RA990.java, v1.0 2013/02/02 11:17:42 AM, ralexsander Exp $
 */
public class RA990 extends RegSped implements I_RX990
{
	@XMLFieldProperties(id = "QTD_LIN_A", scale=0)
	private BigDecimal QTD_LIN_A;

	public BigDecimal getQTD_LIN_A()
	{
		return QTD_LIN_A;
	}

	public void setQTD_LIN_A(BigDecimal qTD_LIN_A)
	{
		QTD_LIN_A = qTD_LIN_A;
	}

	public void setQTD_LIN(BigDecimal qtd)
	{
		setQTD_LIN_A (qtd);
	}
}	//	RA990
