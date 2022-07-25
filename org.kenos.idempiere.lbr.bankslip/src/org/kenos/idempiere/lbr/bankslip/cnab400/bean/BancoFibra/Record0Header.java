package org.kenos.idempiere.lbr.bankslip.cnab400.bean.BancoFibra;

import org.adempiere.model.POWrapper;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.adempierelbr.wrapper.I_W_C_Bank;
import org.compiere.model.MBank;
import org.compiere.model.MOrgInfo;
import org.kenos.idempiere.lbr.bankslip.model.MLBRCNABFile;

import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Fields;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record  
public class Record0Header extends org.kenos.idempiere.lbr.bankslip.cnab400.bean.Record0Header {
	
	public Record0Header() {
		super ();	//	0 - Header
	}
	
	public Record0Header(MLBRCNABFile cnabFile) {
		this ();
		
		//setAgencia(cnabFile.getAgencyNoAsInt());
		//
		I_W_AD_OrgInfo oi = POWrapper.create(MOrgInfo.get(cnabFile.getCtx(), cnabFile.getLBR_BankSlipContract().getC_BankAccount().getAD_Org_ID(), null), I_W_AD_OrgInfo.class);
		setNomeDaEmpresa(oi.getlbr_LegalEntity());
		setCodDoBanco(cnabFile.getRoutingNoAsInt());
		
		MBank bank = (MBank) cnabFile.getLBR_BankSlipContract().getC_BankAccount().getC_Bank();
		I_W_C_Bank bankW = POWrapper.create(bank, I_W_C_Bank.class);

		setCodigoEmpresa(cnabFile.getLBR_BankSlipContract().getLBR_AccordNo());
		setNomeDoBanco(bankW.getName());
		setDataDeGeracao(cnabFile.getDateDoc());
		
	}	
	
	protected String codigoEmpresa;
	
	@Field( offset = 27, length = 20)
	public String getCodigoEmpresa() {
		return codigoEmpresa;
	}

	public void setCodigoEmpresa(String codigoEmpresa) {
		this.codigoEmpresa = codigoEmpresa;
	}
	
	@Fields( value = { 
			@Field ( offset = 104, length = 294 ) 
			} )
	public String getEmpty() { return ""; }		//	Dummy, fill the blanks


	public void setEmpty(String dummy) {}		//	Dummy, needed by FixedFormat4J	
}	//	Record0Header
