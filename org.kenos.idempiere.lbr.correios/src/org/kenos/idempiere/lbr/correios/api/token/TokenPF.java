package org.kenos.idempiere.lbr.correios.api.token;

import java.io.Serializable;
import java.sql.Timestamp;

public class TokenPF implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -3920935037020449462L;
	private String ambiente;
    private String id;
    private String[] ip;
    private String perfil;
    private String cpf;
    private Timestamp emissao;
    private Timestamp expiraEm;
    private String zoneOffset;
    private String token;
    
	public String getAmbiente() {
		return ambiente;
	}
	public void setAmbiente(String ambiente) {
		this.ambiente = ambiente;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String[] getIp() {
		return ip;
	}
	public void setIp(String[] ip) {
		this.ip = ip;
	}
	public String getPerfil() {
		return perfil;
	}
	public void setPerfil(String perfil) {
		this.perfil = perfil;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public Timestamp getEmissao() {
		return emissao;
	}
	public void setEmissao(Timestamp emissao) {
		this.emissao = emissao;
	}
	public Timestamp getExpiraEm() {
		return expiraEm;
	}
	public void setExpiraEm(Timestamp expiraEm) {
		this.expiraEm = expiraEm;
	}
	public String getZoneOffset() {
		return zoneOffset;
	}
	public void setZoneOffset(String zoneOffset) {
		this.zoneOffset = zoneOffset;
	}
	public String getToken() {
		return token;
	}
	public void setToken(String token) {
		this.token = token;
	}
}
