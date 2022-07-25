package org.kenos.idempiere.lbr.bankslip.cnab400.bean.CaixaEconomica;

import org.adempiere.model.POWrapper;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.adempierelbr.wrapper.I_W_C_Bank;
import org.compiere.model.MBank;
import org.compiere.model.MOrgInfo;
import org.kenos.idempiere.lbr.bankslip.model.MLBRCNABFile;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Fields;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record  
public class Record0Header extends org.kenos.idempiere.lbr.bankslip.cnab400.bean.Record0Header {

	private static final Integer LAYOUT_VERSION     = 007;
	private static final Integer ONE = 1;
	
	public Record0Header() {
		super ();	//	0 - Header
	}
	
	public Record0Header(MLBRCNABFile cnabFile) {
		this ();
		
		setAgencia(cnabFile.getAgencyNoAsInt());
		//
		I_W_AD_OrgInfo oi = POWrapper.create(MOrgInfo.get(cnabFile.getCtx(), cnabFile.getLBR_BankSlipContract().getC_BankAccount().getAD_Org_ID(), null), I_W_AD_OrgInfo.class);
		setNomeDaEmpresa(oi.getlbr_LegalEntity());
		setCodDoBanco(cnabFile.getRoutingNoAsInt());
		
		MBank bank = (MBank) cnabFile.getLBR_BankSlipContract().getC_BankAccount().getC_Bank();
		I_W_C_Bank bankW = POWrapper.create(bank, I_W_C_Bank.class);

		setCodigoBeneficiario(cnabFile.getLBR_BankSlipContract().getLBR_AccordNo());
		setNomeDoBanco(bankW.getName());
		setDataDeGeracao(cnabFile.getDateDoc());
		setLayout(LAYOUT_VERSION);
		setNumeroSequencialCaixa(ONE);
	}	
	
	protected Integer layout;
	protected String codigoBeneficiario;
	protected Integer numeroSequencialCaixa;
	protected Integer agencia;
	
	@Field( offset = 27, length = 4, paddingChar = '0' , align = Align.RIGHT )
	public Integer getAgencia() {
		return agencia;
	}

	public void setAgencia(Integer agencia) {
		this.agencia = agencia;
	}
	
	@Field( offset = 31, length = 7, paddingChar = '0' , align = Align.RIGHT )
	public String getCodigoBeneficiario() {
		return codigoBeneficiario;
	}

	public void setCodigoBeneficiario(String codigoBeneficiario) {
		this.codigoBeneficiario = codigoBeneficiario;
	}

	@Field( offset = 101, length = 3, paddingChar = '0' , align = Align.RIGHT )
	public Integer getLayout() {
		return layout;
	}

	public void setLayout(Integer layout) {
		this.layout = layout;
	}

	@Field( offset = 390, length = 5, paddingChar = '0' , align = Align.RIGHT )
	public Integer getNumeroSequencialCaixa() {
		return numeroSequencialCaixa;
	}

	public void setNumeroSequencialCaixa(Integer numeroSequencial) {
		this.numeroSequencialCaixa = numeroSequencial;
	}
	@Fields( value = { 
			@Field ( offset = 38, length = 9 ) ,
			@Field ( offset = 104, length = 286 ) 
			} )
	public String getEmpty() { return ""; }		//	Dummy, fill the blanks
	public void setEmpty(String dummy) {}		//	Dummy, needed by FixedFormat4J	
}	//	Record0Header
