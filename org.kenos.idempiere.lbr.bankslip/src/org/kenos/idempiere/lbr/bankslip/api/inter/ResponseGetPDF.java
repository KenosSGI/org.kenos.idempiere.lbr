
package org.kenos.idempiere.lbr.bankslip.api.inter;

import java.util.Base64;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class ResponseGetPDF {

    private String pdf;

    public String getPdf() {
        return pdf;
    }

    public void setPdf(String pdf) {
        this.pdf = pdf;
    }

    public byte[] getPdfFile() {
    	return Base64.getDecoder().decode(pdf);
    }	//	getPdfFile
}	//	ResponseGetPDF
