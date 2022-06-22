package org.kenos.idempiere.lbr.bankslip.cnab400.bean;

import java.sql.Timestamp;

import org.adempiere.model.POWrapper;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.adempierelbr.wrapper.I_W_C_Bank;
import org.compiere.model.MBank;
import org.compiere.model.MOrgInfo;
import org.kenos.idempiere.lbr.bankslip.model.MLBRCNABFile;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Fields;
import com.ancientprogramming.fixedformat4j.annotation.Record;
import com.ancientprogramming.fixedformat4j.format.impl.DateFormatter;

@Record  
public class Record0Header extends RecordBase {

	public Record0Header() {
		super (0);	//	0 - Header
	}
	
	public Record0Header(MLBRCNABFile cnabFile) {
		this ();
		//
		setAgencia(cnabFile.getAgencyNoAsInt());
		setConta(cnabFile.getAccountNoAsInt());
		setDac(cnabFile.getAccountVDAsInt());
		//
		I_W_AD_OrgInfo oi = POWrapper.create(MOrgInfo.get(cnabFile.getCtx(), cnabFile.getLBR_BankSlipContract().getC_BankAccount().getAD_Org_ID(), null), I_W_AD_OrgInfo.class);
		setNomeDaEmpresa(oi.getlbr_LegalEntity());
		setCodDoBanco(cnabFile.getRoutingNoAsInt());
		
		MBank bank = (MBank) cnabFile.getLBR_BankSlipContract().getC_BankAccount().getC_Bank();
		I_W_C_Bank bankW = POWrapper.create(bank, I_W_C_Bank.class);

		setNomeDoBanco(bankW.getName());
		setDataDeGeracao(cnabFile.getDateDoc());
	}

	protected final Integer operacao 		= 1;  
	protected final String remessa 			= "REMESSA";  
	protected final Integer codServ 		= 1;
	protected final String nomeServ 		= "COBRANCA";
	protected Integer agencia;
	protected Integer conta;
	protected Integer dac;
	protected String nomeDaEmpresa;
	protected Integer codDoBanco;
	protected String nomeDoBanco;
	protected Timestamp dataDeGeracao;
	
	@Field( offset = 2, length = 1, paddingChar = '0' , align = Align.RIGHT )
	public Integer getOperacao() {
		return operacao;
	}

	@Field( offset = 3, length = 7 )
	public String getRemessa() {
		return remessa;
	}

	@Field( offset = 10, length = 2, paddingChar = '0' , align = Align.RIGHT )
	public Integer getCodServ() {
		return codServ;
	}

	@Field( offset = 12, length = 15 )
	public String getNomeServ() {
		return nomeServ;
	}

	@Field( offset = 27, length = 4, paddingChar = '0' , align = Align.RIGHT )
	public Integer getAgencia() {
		return agencia;
	}

	public void setAgencia(Integer agencia) {
		this.agencia = agencia;
	}

	@Field( offset = 33, length = 5, paddingChar = '0' , align = Align.RIGHT )
	public Integer getConta() {
		return conta;
	}

	public void setConta(Integer conta) {
		this.conta = conta;
	}

	@Field( offset = 38, length = 1, paddingChar = '0' , align = Align.RIGHT )
	public Integer getDac() {
		return dac;
	}

	public void setDac(Integer dac) {
		this.dac = dac;
	}

	@Field( offset = 47, length = 30 )
	public String getNomeDaEmpresa() {
		return nomeDaEmpresa;
	}

	public void setNomeDaEmpresa(String nomeDaEmpresa) {
		this.nomeDaEmpresa = TextUtil.retiraEspecial (nomeDaEmpresa).toUpperCase();
	}

	@Field( offset = 77, length = 3, paddingChar = '0' , align = Align.RIGHT )
	public Integer getCodDoBanco() {
		return codDoBanco;
	}

	public void setCodDoBanco(Integer codDoBanco) {
		this.codDoBanco = codDoBanco;
	}

	@Field( offset = 80, length = 15 )
	public String getNomeDoBanco() {
		return nomeDoBanco;
	}

	public void setNomeDoBanco(String nomeDoBanco) {
		this.nomeDoBanco = TextUtil.retiraEspecial (nomeDoBanco).toUpperCase();
	}

	@Field( offset = 95, length = 6, paddingChar = '0' , align = Align.RIGHT, formatter = DateFormatter.class )
	public Timestamp getDataDeGeracao() {
		return dataDeGeracao;
	}

	public void setDataDeGeracao(Timestamp dataDeGeracao) {
		this.dataDeGeracao = dataDeGeracao;
	}

	@Fields( value = { 
			@Field ( offset = 31, length = 2, paddingChar = '0' , align = Align.RIGHT ) ,
			@Field ( offset = 39, length = 8 ) ,
			@Field ( offset = 101, length = 294 ) 
			} )
	public String getEmpty() { return ""; }
}	//	Record0Header
