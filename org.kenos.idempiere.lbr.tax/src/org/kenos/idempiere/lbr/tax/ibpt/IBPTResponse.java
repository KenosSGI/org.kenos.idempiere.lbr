package org.kenos.idempiere.lbr.tax.ibpt;

import java.math.BigDecimal;

/**
 * 		IBPTResponse Interface
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: IBPTResponse.java, v1.0 2017/05/19 4:46:36 PM, ralexsander Exp $
 */
public interface IBPTResponse
{
	public BigDecimal getEstadual();
	public BigDecimal getImportado();
	public BigDecimal getMunicipal();
	public BigDecimal getNacional();
	public String getChave();
	public String getDesc();
	public String getEx();
	public String getFonte();
	public String getTipo();
	public String getUf();
	public String getVersao();
	public String getVigenciaFim();
	public String getVigenciaInicio();
	public void setChave(String chave);
	public void setCodigo(String codigo);
	public void setDesc(String desc);
	public void setEstadual(BigDecimal estadual);
	public void setEx(String ex);
	public void setFonte(String fonte);
	public void setImportado(BigDecimal importado);
	public void setMunicipal(BigDecimal municipal);
	public void setNacional(BigDecimal nacional);
	public void setTipo(String tipo);
	public void setUf(String uf);
	public void setVersao(String versao);
	public void setVigenciaFim(String vigenciaFim);
	public void setVigenciaInicio(String vigenciaInicio);
	public String getCodigo();
}	//	IBPTResponse
