package org.kenos.idempiere.lbr.bankslip.api.inter;

public class Cancelar {

    private String motivoCancelamento;

    public static final String MOTIVO_ACERTOS 				= "ACERTOS";
    public static final String MOTIVO_APEDIDODOCLIENTE 		= "APEDIDODOCLIENTE";
    public static final String MOTIVO_PAGODIRETOAOCLIENTE 	= "PAGODIRETOAOCLIENTE";
    public static final String MOTIVO_SUBSTITUICAO 			= "SUBSTITUICAO";
    
	public Cancelar(String motivoCancelamento) {
		this.motivoCancelamento = motivoCancelamento;
	}

	public String getMotivoCancelamento() {
		return motivoCancelamento;
	}

	public void setMotivoCancelamento(String motivoCancelamento) {
		this.motivoCancelamento = motivoCancelamento;
	}
}
