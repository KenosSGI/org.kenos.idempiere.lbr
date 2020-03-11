package org.kenos.idempiere.lbr.bankslip.model;

import java.io.File;
import java.math.BigDecimal;
import java.util.Date;

import org.jrimum.bopepo.BancosSuportados;
import org.jrimum.bopepo.Boleto;
import org.jrimum.bopepo.view.BoletoViewer;
import org.jrimum.domkee.comum.pessoa.endereco.CEP;
import org.jrimum.domkee.comum.pessoa.endereco.Endereco;
import org.jrimum.domkee.comum.pessoa.endereco.UnidadeFederativa;
import org.jrimum.domkee.financeiro.banco.febraban.Agencia;
import org.jrimum.domkee.financeiro.banco.febraban.Banco;
import org.jrimum.domkee.financeiro.banco.febraban.Carteira;
import org.jrimum.domkee.financeiro.banco.febraban.Cedente;
import org.jrimum.domkee.financeiro.banco.febraban.ContaBancaria;
import org.jrimum.domkee.financeiro.banco.febraban.NumeroDaConta;
import org.jrimum.domkee.financeiro.banco.febraban.Sacado;
import org.jrimum.domkee.financeiro.banco.febraban.TipoDeTitulo;
import org.jrimum.domkee.financeiro.banco.febraban.Titulo;
import org.jrimum.domkee.financeiro.banco.febraban.Titulo.Aceite;

/**
 * 
 * 	@author Ricardo Santana
 */
public class MLBRBankSlip
{
	public static void main (String[] args)
	{
		MLBRBankSlip bs = new MLBRBankSlip();
		bs.createPDF ();
	}
	
	public File createPDF ()
	{
		Cedente cedente = new Cedente("Kenos Assessoria e Consultoria de Sistema Ltda", "08.816.304/0001-33");
		// LBR_OrgName
		// LBR_CNPJ
		

		Endereco enderecoBen = new Endereco();
		enderecoBen.setUF(UnidadeFederativa.valueOf("SP")); // LBR_
		enderecoBen.setLocalidade("São Paulo");
		enderecoBen.setCep(new CEP("02017-002"));
		enderecoBen.setBairro("Santana");
		enderecoBen.setLogradouro("Rua Alfredo Pujol");
		enderecoBen.setNumero("1008");
		cedente.addEndereco(enderecoBen);
		
		Sacado sacado = new Sacado("Ricardo Alexsander de Santana Silva", "318.689.118-37");
		//	BPName
		//	LBR_BPCNPJ
		
		// Informando o endereço do sacado.
		Endereco enderecoSac = new Endereco();
		enderecoSac.setUF(UnidadeFederativa.valueOf("SP")); // LBR_
		enderecoSac.setLocalidade("São Paulo");
		enderecoSac.setCep(new CEP("08030-410"));
		enderecoSac.setBairro("Vila Curuçá");
		enderecoSac.setLogradouro("Rua Garopá");
		enderecoSac.setNumero("199");
		enderecoSac.setComplemento("Apartamento 144 Torre 1");
		sacado.addEndereco(enderecoSac);
		//	LBR_BPRegion
		//	LBR_BPCity
		//	LBR_BPPostal 
		//	LBR_BPAddress3
		//	LBR_BPAddress1 
		//	LBR_BPAddress2 
		//	LBR_BPAddress4 

		
		// Informando dados sobre a conta bancária do título.
		Banco banco = BancosSuportados.BANCO_ITAU.create();
//		banco.setImgLogo(logo);
		
		ContaBancaria contaBancaria = new ContaBancaria(banco);
		contaBancaria.setNumeroDaConta(new NumeroDaConta(55102, "8"));
		contaBancaria.setCarteira(new Carteira(109));
		contaBancaria.setAgencia(new Agencia(1024));
		//	AccountNo
		//	LBR_BankAccountVD
		//	LBR_BankSlipFoldName
		//	LBR_AgencyNo
		//	LBR_AgencyVD
		
		Titulo titulo = new Titulo(contaBancaria, sacado, cedente);
		titulo.setNumeroDoDocumento("123456-1");
		titulo.setNossoNumero("12345678");
		titulo.setDigitoDoNossoNumero("5");
		titulo.setValor(BigDecimal.valueOf(2.23));
		titulo.setDataDoDocumento(new Date());
		titulo.setDataDoVencimento(new Date());
		titulo.setTipoDeDocumento(TipoDeTitulo.DM_DUPLICATA_MERCANTIL);
		titulo.setAceite(Aceite.N);
		titulo.setDesconto(new BigDecimal(0.01));
		titulo.setDeducao(new BigDecimal(0.02));
		titulo.setMora(new BigDecimal(0.03));
		titulo.setAcrecimo(new BigDecimal(0.04));
		titulo.setValorCobrado(new BigDecimal(0.05));
		//	LBR_NumberInOrg
		//	LBR_NumberInBank
		//	-
		//	GrandTotal
		//	DateDoc
		//	DueDate
		//	LBR_BankSlipKindCode
		//	LBR_IsAccepted
		//	-
		//	-
		//	-
		//	-
		//	GrandTotal
		
	
		Boleto boleto = new Boleto(titulo);
		
		System.out.println("LD: " + boleto.getLinhaDigitavel().write());
		System.out.println("CB: " + boleto.getCodigoDeBarras().write());
		
		boleto.setLocalPagamento("Pagável preferencialmente na Rede X ou em " +
		                "qualquer Banco até o Vencimento.");
		boleto.setInstrucaoAoSacado("Senhor sacado, sabemos sim que o valor " +
		                "cobrado não é o esperado, aproveite o DESCONTÃO!");
		boleto.setInstrucao1("PARA PAGAMENTO 1 até Hoje não cobrar nada!");
		boleto.setInstrucao2("PARA PAGAMENTO 2 até Amanhã Não cobre!");
		boleto.setInstrucao3("PARA PAGAMENTO 3 até Depois de amanhã, OK, não cobre.");
		boleto.setInstrucao4("12345678901234567890123456789012345678901234567890123456789012345678901234567890");
		boleto.setInstrucao4("OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO"); // 60
		boleto.setInstrucao5("PARA PAGAMENTO 5 até 05/xx/xxxx COBRAR O VALOR DE: R$ 02,00");
		boleto.setInstrucao6("PARA PAGAMENTO 6 até 06/xx/xxxx COBRAR O VALOR DE: R$ 03,00");
		boleto.setInstrucao7("PARA PAGAMENTO 7 até xx/xx/xxxx COBRAR O VALOR QUE VOCÊ QUISER!");
		boleto.setInstrucao8("APÓS o Vencimento, Pagável Somente na Rede X.");
		//	LBR_PaymentLocation1
		//	LBR_InstructionBP
		//	LBR_Instruction1
		//	LBR_Instruction2
		//	LBR_Instruction3
		//	LBR_Instruction4
		//	LBR_Instruction5
		//	LBR_Instruction6
		//	LBR_Instruction7
		//	LBR_Instruction8
		
		BoletoViewer boletoViewer = new BoletoViewer(boleto);

		return boletoViewer.getPdfAsFile("/tmp/MeuPrimeiroBoleto.pdf");
	}	//	createPDF
}	//	MLBRBankSlip
