package org.kenos.idempiere.lbr.bankslip.api.bb;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonInclude(Include.NON_NULL)
@JsonIgnoreProperties(ignoreUnknown = true)
public class RespostaToken {

	@JsonProperty("access_token")
	private String accessToken = null;
	@JsonProperty("token_type")
	private String tokenType = null;
	@JsonProperty("expires_in")
	private String expiresIn = null;

	public RespostaToken accessToken(String accessToken) {
		this.accessToken = accessToken;
		return this;
	}

	public String getAccessToken() {
		return accessToken;
	}

	public void setAccessToken(String accessToken) {
		this.accessToken = accessToken;
	}

	public RespostaToken tokenType(String tokenType) {
		this.tokenType = tokenType;
		return this;
	}

	public String getTokenType() {
		return tokenType;
	}

	public void setTokenType(String tokenType) {
		this.tokenType = tokenType;
	}

	public RespostaToken expiresIn(String expiresIn) {
		this.expiresIn = expiresIn;
		return this;
	}

	public String getExpiresIn() {
		return expiresIn;
	}

	public void setExpiresIn(String expiresIn) {
		this.expiresIn = expiresIn;
	}

}