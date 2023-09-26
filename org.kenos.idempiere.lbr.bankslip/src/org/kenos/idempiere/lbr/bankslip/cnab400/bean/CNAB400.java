package org.kenos.idempiere.lbr.bankslip.cnab400.bean;

import static org.kenos.idempiere.lbr.bankslip.ICNABGenerator.CR;
import static org.kenos.idempiere.lbr.bankslip.ICNABGenerator.LF;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

import org.apache.commons.lang.StringUtils;

public class CNAB400 {
	public CNAB400() {
		listaRegistros = new ArrayList<RecordBase>();
	}
	
	private AtomicInteger seq = new AtomicInteger (1);
	private List<RecordBase> listaRegistros;
    static FixedFormatManager manager = new FixedFormatManager();
	
    public void addRegistro (RecordBase reg) {
    	reg.setNumeroSequencial(seq.getAndIncrement());
    	listaRegistros.add(reg);
    }	//	addRegistro
    
	public StringBuilder exportTxt() {
	    StringBuilder result = new StringBuilder("");
	    for ( RecordBase record : listaRegistros ) {
	    	result.append(StringUtils.rightPad(manager.export(record), 400)).append(CR).append(LF);
		}
		return result;
	}	//	toString	
}	//	CNAB400
