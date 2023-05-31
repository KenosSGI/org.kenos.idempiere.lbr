package org.kenos.idempiere.lbr.bankslip.cnab240.bean.safra422;

import org.kenos.idempiere.lbr.bankslip.cnab240.bean.CNABSegmentPRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class SafraCNABSegmentP extends CNABSegmentPRecord {
	
	private Integer usoLivre;
	
	public SafraCNABSegmentP() {

	}
	
	@Field( offset=240 , length=1, paddingChar='0' , align = Align.RIGHT)
	public int getUsoLivre() {
		return usoLivre;
	}

	public void setUsoLivre(int usoLivre) {
		this.usoLivre = usoLivre;
	}
	
	
}
