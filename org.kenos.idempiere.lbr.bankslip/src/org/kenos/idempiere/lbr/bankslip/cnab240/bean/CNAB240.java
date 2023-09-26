package org.kenos.idempiere.lbr.bankslip.cnab240.bean;

import static org.kenos.idempiere.lbr.bankslip.ICNABGenerator.CR;
import static org.kenos.idempiere.lbr.bankslip.ICNABGenerator.LF;

import java.util.ArrayList;
import java.util.List;
//import java.util.concurrent.atomic.AtomicInteger;

import org.apache.commons.lang.StringUtils;
import org.kenos.idempiere.lbr.bankslip.cnab400.bean.FixedFormatManager;

public class CNAB240 {
	public CNAB240() {
		listaRegistros = new ArrayList<CNABBaseRecord>();
	}
	
	private List<CNABBaseRecord> listaRegistros;
    static FixedFormatManager manager = new FixedFormatManager();
	
    public void addRegistro (CNABBaseRecord reg) {
    	listaRegistros.add(reg);
    }	//	addRegistro
    
	public StringBuilder exportTxt() {
	    StringBuilder result = new StringBuilder("");
	    for ( CNABBaseRecord record : listaRegistros ) {
	    	result.append(StringUtils.rightPad(manager.export(record), 240)).append(CR).append(LF);
		}
		return result;
	}	//	toString	
}	//	CNAB400
