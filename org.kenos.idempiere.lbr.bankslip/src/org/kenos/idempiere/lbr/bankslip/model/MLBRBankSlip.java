package org.kenos.idempiere.lbr.bankslip.model;

import java.io.File;
import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Properties;

import org.adempierelbr.model.X_LBR_BankSlip;
import org.compiere.model.MOrgInfo;
import org.compiere.process.DocAction;
import org.compiere.process.DocOptions;
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

/**
 * 	Bank Slip (Boleto) model
 * 	@author Ricardo Santana
 */
public class MLBRBankSlip extends X_LBR_BankSlip implements DocAction, DocOptions
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = -975551832184870560L;

	private MLBRBankSlipInfo bsi = null;
	
	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRBankSlip (Properties ctx, int LBR_BankSlip_ID, String trx)
	{
		super (ctx, LBR_BankSlip_ID, trx);
		//
		if (LBR_BankSlip_ID > 0)
			bsi = MLBRBankSlipInfo.get (getCtx(), getLBR_BankSlip_ID(), get_TrxName());
	}	//	MLBRBankSlip

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRBankSlip (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRBankSlip
	
	@Override
	public File createPDF ()
	{
		
		if (!BancosSuportados.isSuportado(bsi.getRoutingNo()))
			return null;
		
		Cedente beneficiario = new Cedente (bsi.getlbr_OrgName(), bsi.getlbr_CNPJ());

		Endereco enderecoBen = new Endereco();
		enderecoBen.setUF(UnidadeFederativa.valueOf(bsi.getlbr_OrgRegion()));
		enderecoBen.setLocalidade(bsi.getlbr_OrgCity());
		enderecoBen.setCep(new CEP(bsi.getlbr_OrgPostal()));
		enderecoBen.setBairro(bsi.getlbr_OrgAddress3());
		enderecoBen.setLogradouro(bsi.getlbr_OrgAddress1());
		enderecoBen.setNumero(bsi.getlbr_OrgAddress1());
		beneficiario.addEndereco(enderecoBen);
		
		Sacado sacado = new Sacado(bsi.getBPName(), bsi.getlbr_BPCNPJ());
		
		// Informando o endereço do sacado.
		Endereco enderecoSac = new Endereco();
		enderecoSac.setUF(UnidadeFederativa.valueOf(bsi.getlbr_BPRegion()));
		enderecoSac.setLocalidade(bsi.getlbr_BPCity());
		enderecoSac.setCep(new CEP(bsi.getlbr_BPPostal()));
		enderecoSac.setBairro(bsi.getlbr_BPAddress3());
		enderecoSac.setLogradouro(bsi.getlbr_BPAddress1());
		enderecoSac.setNumero(bsi.getlbr_BPAddress2());
		enderecoSac.setComplemento(bsi.getlbr_BPAddress4());
		sacado.addEndereco(enderecoSac);
		
		// Informando dados sobre a conta bancária do título.
		Banco banco = BancosSuportados.valueOf(bsi.getRoutingNo()).create();
//		banco.setImgLogo(logo);
		
		ContaBancaria contaBancaria = new ContaBancaria(banco);
		contaBancaria.setNumeroDaConta(new NumeroDaConta(Integer.valueOf (bsi.getAccountNo()), bsi.getLBR_BankAccountVD()));
		contaBancaria.setCarteira(new Carteira(Integer.valueOf(bsi.getLBR_BankSlipFoldCode())));
		contaBancaria.setAgencia(new Agencia(Integer.valueOf(bsi.getlbr_AgencyNo())));
		
		Titulo titulo = new Titulo(contaBancaria, sacado, beneficiario);
		titulo.setNumeroDoDocumento(getLBR_NumberInOrg());
		titulo.setNossoNumero(getLBR_NumberInBank());
//		titulo.setDigitoDoNossoNumero("5");
		titulo.setValor(getGrandTotal());
		titulo.setDataDoDocumento(getDateDoc());
		titulo.setDataDoVencimento(getDueDate());
		titulo.setTipoDeDocumento(parseBankSlipKind());
		titulo.setAceite(MLBRBankSlipInfo.LBR_ISACCEPTED_IsAccepted.equals(bsi.getLBR_IsAccepted()) ? Titulo.Aceite.A : Titulo.Aceite.N);
	
		Boleto boleto = new Boleto(titulo);
		
		boleto.setLocalPagamento(bsi.getlbr_PaymentLocation1());
		boleto.setInstrucaoAoSacado(bsi.getLBR_InstructionBP());
		boleto.setInstrucao1(bsi.getlbr_Instruction1());
		boleto.setInstrucao2(bsi.getlbr_Instruction2());
		boleto.setInstrucao3(bsi.getlbr_Instruction3());
		boleto.setInstrucao4(bsi.getLBR_Instruction4());
		boleto.setInstrucao5(bsi.getLBR_Instruction5());
		boleto.setInstrucao6(bsi.getLBR_Instruction6());
		boleto.setInstrucao7(bsi.getLBR_Instruction7());
		
		BoletoViewer boletoViewer = new BoletoViewer(boleto);
		return boletoViewer.getPdfAsFile (System.clearProperty("java.io.tmpdir") + File.pathSeparator + getDocumentNo() + ".pdf");
	}	//	createPDF

	/**
	 * 	Parse Bank Slip Kind from iDempiere format to Bopepo format
	 * 	@return bopepo bank slip kind
	 */
	private TipoDeTitulo parseBankSlipKind ()
	{
		switch (Integer.valueOf (getLBR_BankSlipKind().getValueNumber().toString()))
		{
			case 1:
				return TipoDeTitulo.AP_APOLICE_DE_SEGURO;
				
			case 2:
//				return TipoDeTitulo.BOLETO_DE_PROPOSTA;
				return null;
				
			case 3:
//				return TipoDeTitulo.CARTAO_DE_CREDITO;
				return null;
				
			case 4:
				return TipoDeTitulo.CEDULA_DE_PRODUTO_RURAL;
				
			case 5:
				return TipoDeTitulo.CH_CHEQUE;
				
			case 6:
//				return TipoDeTitulo.COBRANCA_SERIADA;
				return null;
				
			case 7:
//				return TipoDeTitulo.CONTA_DE_PRESTACAO_DE_SERVICO;
				return null;
				
			case 8:
//				return TipoDeTitulo.CONTRATO;
				return null;
				
			case 9:
//				return TipoDeTitulo.COSEGURO;
				return null;
				
			case 10:
				return TipoDeTitulo.DIVIDA_ATIVA_DA_UNIAO;
				
			case 11:
				return TipoDeTitulo.DIVIDA_ATIVA_DE_ESTADO;
				
			case 12:
				return TipoDeTitulo.DIVIDA_ATIVA_DE_MUNICIPIO;
				
			case 13:
				return TipoDeTitulo.DD_DOCUMENTO_DE_DIVIDA;
				
			case 14:
				return TipoDeTitulo.DS_DUPLICATA_DE_SERVICO;
				
			case 15:
				return TipoDeTitulo.DSI_DUPLICATA_DE_SERVICO_PARA_INDICACAO;
				
			case 16:
				return TipoDeTitulo.DM_DUPLICATA_MERCANTIL;
				
			case 17:
				return TipoDeTitulo.DMI_DUPLICATA_MERCANTIL_PARA_INDICACAO;
				
			case 18:
				return TipoDeTitulo.DR_DUPLICATA_RURAL;
				
			case 19:
				return TipoDeTitulo.COTA_CONDOMINIAL;
				
			case 20:
				return TipoDeTitulo.FAT_FATURA;
				
			case 21:
				return TipoDeTitulo.LC_LETRA_DE_CAMBIO;
				
			case 22:
				return TipoDeTitulo.ME_MENSALIDADE_ESCOLAR;
				
			case 23:
				return TipoDeTitulo.NCC_NOTA_DE_CREDITO_COMERCIAL;
				
			case 24:
				return TipoDeTitulo.NCI_NOTA_DE_CREDITO_INDUSTRIAL;
				
			case 25:
				return TipoDeTitulo.NCE_NOTA_DE_CREDITO_A_EXPORTACAO;
				
			case 26:
				return TipoDeTitulo.NCR_NOTA_DE_CREDITO_RURAL;
				
			case 27:
				return TipoDeTitulo.ND_NOTA_DE_DEBITO;
				
			case 28:
				return TipoDeTitulo.NS_NOTA_DE_SEGURO;
				
			case 29:
				return TipoDeTitulo.NF_NOTA_FISCAL;
				
			case 30:
				return TipoDeTitulo.NP_NOTA_PROMISSORIA;
				
			case 31:
				return TipoDeTitulo.NPR_NOTA_PROMISSORIA_RURAL;
				
			case 32:
				return TipoDeTitulo.PC_PARCELA_DE_CONSORCIO;
				
			case 33:
				return TipoDeTitulo.RC_RECIBO;
				
			case 34:
				return TipoDeTitulo.TS_TRIPLICATA_DE_SERVICO;
				
			case 35:
				return TipoDeTitulo.TM_TRIPLICATA_MERCANTIL;
				
			case 36:
				return TipoDeTitulo.WARRANT;

			default:
				return TipoDeTitulo.DM_DUPLICATA_MERCANTIL;
		}
	}	//	parseBankSlipKind
	
	
	@Override
	protected boolean afterSave (boolean newRecord, boolean success)
	{
		if (newRecord)
		{
			//	Info
			bsi = new MLBRBankSlipInfo (this);
			bsi.saveEx();
		}
		return true;
	}	//	afterSave

	@Override
	public int customizeValidActions(String docStatus, Object processing, 
			String orderType, String isSOTrx, int AD_Table_ID, String[] docAction,
			String[] options, int index)
	{
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean processIt(String action) throws Exception
	{
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean unlockIt()
	{
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean invalidateIt()
	{
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String prepareIt()
	{
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean approveIt()
	{
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean rejectIt()
	{
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String completeIt()
	{
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean voidIt()
	{
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean closeIt()
	{
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean reverseCorrectIt()
	{
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean reverseAccrualIt()
	{
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean reActivateIt()
	{
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String getSummary()
	{
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getDocumentInfo()
	{
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getProcessMsg()
	{
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getDoc_User_ID()
	{
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getC_Currency_ID()
	{
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public BigDecimal getApprovalAmt()
	{
		// TODO Auto-generated method stub
		return null;
	}
}	//	MLBRBankSlip
