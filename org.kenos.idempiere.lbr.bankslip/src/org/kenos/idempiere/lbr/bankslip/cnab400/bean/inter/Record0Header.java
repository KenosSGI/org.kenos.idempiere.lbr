package org.kenos.idempiere.lbr.bankslip.cnab400.bean.inter;

import org.adempiere.model.POWrapper;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.adempierelbr.wrapper.I_W_C_Bank;
import org.compiere.model.MBank;
import org.compiere.model.MOrgInfo;
import org.kenos.idempiere.lbr.bankslip.model.MLBRCNABFile;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record  
public class Record0Header extends org.kenos.idempiere.lbr.bankslip.cnab400.bean.Record0Header {
	
	public Record0Header() {
		super ();	//	0 - Header
	}
	
	public Record0Header(MLBRCNABFile cnabFile) {
		this ();
		//
		I_W_AD_OrgInfo oi = POWrapper.create(MOrgInfo.get(cnabFile.getCtx(), cnabFile.getLBR_BankSlipContract().getC_BankAccount().getAD_Org_ID(), null), I_W_AD_OrgInfo.class);
		setNomeDaEmpresa(oi.getlbr_LegalEntity());
		setCodDoBanco(cnabFile.getRoutingNoAsInt());
		
		MBank bank = (MBank) cnabFile.getLBR_BankSlipContract().getC_BankAccount().getC_Bank();
		I_W_C_Bank bankW = POWrapper.create(bank, I_W_C_Bank.class);

		setNomeDoBanco(bankW.getName());
		setDataDeGeracao(cnabFile.getDateDoc());
	}
	protected Integer sequenciaRemessa;

	@Field( offset = 111, length = 7, paddingChar = '0' , align = Align.RIGHT )
	public Integer getSequenciaRemessa() {
		return sequenciaRemessa;
	}

	public void setSequenciaRemessa(Integer sequenciaRemessa) {
		this.sequenciaRemessa = sequenciaRemessa;
	}
}	//	Record0Header
