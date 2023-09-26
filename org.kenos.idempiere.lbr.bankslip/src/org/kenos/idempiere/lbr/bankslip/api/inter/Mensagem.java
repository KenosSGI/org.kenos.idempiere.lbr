
package org.kenos.idempiere.lbr.bankslip.api.inter;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;

@JsonInclude(Include.NON_NULL)
public class Mensagem {

    private String linha1;
    private String linha2;
    private String linha3;
    private String linha4;
    private String linha5;

    public Mensagem(String linha1, String linha2, String linha3, String linha4, String linha5) {
        this.linha1 = linha1;
        this.linha2 = linha2;
        this.linha3 = linha3;
        this.linha4 = linha4;
        this.linha5 = linha5;
    }

    public Mensagem() {
    }

    public String getLinha1() {
        return linha1;
    }

    public void setLinha1(String linha1) {
        this.linha1 = linha1;
    }

    public String getLinha2() {
        return linha2;
    }

    public void setLinha2(String linha2) {
        this.linha2 = linha2;
    }

    public String getLinha3() {
        return linha3;
    }

    public void setLinha3(String linha3) {
        this.linha3 = linha3;
    }

    public String getLinha4() {
        return linha4;
    }

    public void setLinha4(String linha4) {
        this.linha4 = linha4;
    }

    public String getLinha5() {
        return linha5;
    }

    public void setLinha5(String linha5) {
        this.linha5 = linha5;
    }
}
