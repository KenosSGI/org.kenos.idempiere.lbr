package org.kenos.idempiere.lbr.bankslip.model;

import java.io.File;
import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Arrays;
import java.util.Properties;

import org.adempiere.model.POWrapper;
import org.adempierelbr.model.X_LBR_BankSlip;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.adempierelbr.wrapper.I_W_C_BankAccount;
import org.compiere.model.MBPartner;
import org.compiere.model.MBankAccount;
import org.compiere.model.MFactAcct;
import org.compiere.model.MLocation;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.process.DocAction;
import org.compiere.process.DocOptions;
import org.compiere.process.DocumentEngine;
import org.compiere.util.Msg;
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
	public MLBRBankSlip (Properties ctx, int LBR_BankSlip_ID, String trxName)
	{
		super (ctx, LBR_BankSlip_ID, trxName);
		//
		if (LBR_BankSlip_ID > 0)
			bsi = MLBRBankSlipInfo.get (getCtx(), getLBR_BankSlip_ID(), trxName);
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
	
	/**
	 * 	Create the PDF file of bank slip
	 */
	@Override
	public File createPDF ()
	{
		if (!BancosSuportados.isSuportado(bsi.getRoutingNo()))
			return null;
		//
		BoletoViewer boletoViewer = new BoletoViewer (getBankSlip ());
		return boletoViewer.getPdfAsFile (System.clearProperty("java.io.tmpdir") + File.pathSeparator + getDocumentNo() + ".pdf");
	}	//	createPDF

	/**
	 * 	Generate the bank slip
	 * 	@return boleto
	 */
	private Boleto getBankSlip ()
	{
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
		Banco banco = Arrays.asList(BancosSuportados.values())
				.stream().filter(b -> bsi.getRoutingNo().equals(b.getCodigoDeCompensacao()))
				.findFirst().get().create();
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
		titulo.setAceite(MLBRBankSlip.LBR_ISACCEPTED_IsAccepted.equals(getLBR_IsAccepted()) ? Titulo.Aceite.A : Titulo.Aceite.N);
	
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
		
		return boleto;
	}	//	getBankSlip
	
	/**
	 * 	Parse Bank Slip Kind from iDempiere format to Bopepo format
	 * 	@return bopepo bank slip kind
	 */
	private TipoDeTitulo parseBankSlipKind ()
	{
		switch (Integer.valueOf (bsi.getLBR_BankSlipKindCode()))
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
	
	/**
	 * 	Called before Save for Pre-Save Operation
	 * 	@param newRecord new record
	 *	@return true if record can be saved
	 */
	@Override
	protected boolean beforeSave(boolean newRecord)
	{
		if (getGrandTotal().signum() < 1)
		{
			log.saveError("FillMandatory", Msg.getElement(getCtx(), "GrandTotal"));
			return false;
		}
		//
		return true;
	}	//	beforeSave
	
	/**
	 * 	Called after Save for Post-Save Operation
	 * 	@param newRecord new record
	 *	@param success true if save operation was success
	 *	@return if save was a success
	 */
	@Override
	protected boolean afterSave (boolean newRecord, boolean success)
	{
		//	Only proceed for success cases
		if (!success)
			return false;
		
		boolean changed = false;
		
		if (newRecord)
		{
			//	Info
			bsi = new MLBRBankSlipInfo (this);
			changed = true;
		}
		
		if (newRecord || is_ValueChanged(COLUMNNAME_C_BankAccount_ID))
		{
			I_W_C_BankAccount ba = POWrapper.create (new MBankAccount(getCtx(), getC_BankAccount_ID(), get_TrxName()), I_W_C_BankAccount.class);
			String baNo = null;
			String baVD = null;
			String agencyNo = null;
			String agencyVD = null;
			
			//	Split the account number and digit
			if (ba.getAccountNo() != null)
			{
				if (ba.getAccountNo().indexOf("-") > 0)
				{
					String[] splitted = ba.getAccountNo().split("-");
					baNo = TextUtil.toNumeric (splitted[0]);
					baVD = TextUtil.toNumeric (splitted[1]);
				}
				else
					baNo = TextUtil.toNumeric (ba.getAccountNo());
			}
			
			//	Split the agency number and digit
			if (ba.getlbr_AgencyNo() != null)
			{
				if (ba.getlbr_AgencyNo().indexOf("-") > 0)
				{
					String[] splitted = ba.getlbr_AgencyNo().split("-");
					agencyNo = TextUtil.toNumeric (splitted[0]);
					agencyVD = TextUtil.toNumeric (splitted[1]);
				}
				else
					agencyNo = TextUtil.toNumeric (ba.getlbr_AgencyNo());
			}
			//
			bsi.setRoutingNo(getC_BankAccount().getC_Bank().getRoutingNo());
			bsi.setAccountNo(baNo);
			bsi.setLBR_BankAccountVD(baVD);
			bsi.setlbr_AgencyNo(agencyNo);
			bsi.setLBR_BankAgencyVD(agencyVD);
			//
			changed = true;
		}
		
		//	Fold
		if (newRecord || is_ValueChanged(COLUMNNAME_LBR_BankSlipFold_ID))
		{
			bsi.setLBR_BankSlipFoldCode (String.valueOf (getLBR_BankSlipFold().getValueNumber()));
			bsi.setLBR_BankSlipFoldValue (getLBR_BankSlipFold().getValue());
			//
			changed = true;
		}
		
		//	Kind
		if (newRecord || is_ValueChanged(COLUMNNAME_LBR_BankSlipKind_ID))
		{
			bsi.setLBR_BankSlipKindCode (String.valueOf (getLBR_BankSlipKind().getValueNumber()));
			bsi.setLBR_BankSlipKindValue (getLBR_BankSlipKind().getValue());
			//
			changed = true;
		}
		
		//	BPartner
		if (newRecord || is_ValueChanged(COLUMNNAME_C_BPartner_Location_ID))
		{
			I_W_C_BPartner bp = POWrapper.create(new MBPartner (getCtx(), getC_BPartner_ID(), get_TrxName()), I_W_C_BPartner.class);
			MLocation location = new MLocation (getCtx(), getC_BPartner_Location().getC_Location_ID(), get_TrxName());
			//
			String cnpjf = null;
			String bpType = bp.getlbr_BPTypeBR();
			//
			if (MLBRBankSlipInfo.LBR_BPTYPEBR_PJ_LegalEntity.equals(bpType))
				cnpjf = bp.getlbr_CNPJ();
			else if (MLBRBankSlipInfo.LBR_BPTYPEBR_PF_Individual.equals(bpType))
				cnpjf = bp.getlbr_CPF();
			//
			bsi.setBPName(bp.getName());
			bsi.setlbr_BPTypeBR(bpType);
			bsi.setlbr_BPCNPJ(cnpjf);
			bsi.setlbr_BPAddress1(location.getAddress1());
			bsi.setlbr_BPAddress2(location.getAddress2());
			bsi.setlbr_BPAddress3(location.getAddress3());
			bsi.setlbr_BPAddress4(location.getAddress4());
			bsi.setlbr_BPCity(location.getCity());
			bsi.setlbr_BPRegion(location.getRegionName());
			bsi.setlbr_BPPostal(location.getPostal());
			//
			changed = true;
		}
		
		//	Guarantor - not mandatory
		if (getGuarantorBP_Location_ID() > 0 && (is_ValueChanged(COLUMNNAME_GuarantorBP_Location_ID) || newRecord))
		{
			I_W_C_BPartner bp = POWrapper.create(new MBPartner (getCtx(), getGuarantorBP_ID(), get_TrxName()), I_W_C_BPartner.class);
			MLocation location = new MLocation (getCtx(), getGuarantorBP_Location().getC_Location_ID(), get_TrxName());
			//
			String cnpjf = null;
			String bpType = bp.getlbr_BPTypeBR();
			//
			if (MLBRBankSlipInfo.LBR_BPTYPEBR_PJ_LegalEntity.equals(bpType))
				cnpjf = bp.getlbr_CNPJ();
			else if (MLBRBankSlipInfo.LBR_BPTYPEBR_PF_Individual.equals(bpType))
				cnpjf = bp.getlbr_CPF();
			//
			bsi.setLBR_GuarantorBPName(bp.getName());
			bsi.setLBR_GuarantorCNPJ(cnpjf);
			bsi.setLBR_GuarantorAddress1(location.getAddress1());
			bsi.setLBR_GuarantorAddress2(location.getAddress2());
			bsi.setLBR_GuarantorAddress3(location.getAddress3());
			bsi.setLBR_GuarantorAddress4(location.getAddress4());
			bsi.setLBR_GuarantorCity(location.getCity());
			bsi.setLBR_GuarantorRegion(location.getRegionName());
			bsi.setLBR_GuarantorPostal(location.getPostal());
			//
			changed = true;
		}
		
		if (is_ValueChanged(COLUMNNAME_DateDoc) || is_ValueChanged(COLUMNNAME_DueDate) 
				|| is_ValueChanged(COLUMNNAME_LBR_NumberInBank) || is_ValueChanged(COLUMNNAME_LBR_NumberInOrg) 
				|| is_ValueChanged(COLUMNNAME_LBR_IsAccepted) || is_ValueChanged(COLUMNNAME_LBR_IssueType) 
				|| is_ValueChanged(COLUMNNAME_GrandTotal) || is_ValueChanged(COLUMNNAME_DiscountAmt))
			changed = true;
		
		//	Something was changed
		if (changed)
			bsi.saveEx();
		
		return true;
	}	//	afterSave

	@Override
	public int customizeValidActions(String docStatus, Object processing, 
			String orderType, String isSOTrx, int AD_Table_ID, String[] docAction,
			String[] options, int index)
	{
		options[0] = null;
		options[1] = null;
		options[2] = null;
		options[3] = null;
		options[4] = null;
		
		if (DOCSTATUS_Invalid.equals(docStatus))
		{
			options[0] = DOCACTION_Prepare;
			options[1] = DOCACTION_Void;
			index=2;
		}
		else if (DOCSTATUS_InProgress.equals(docStatus))
		{
			options[0] = DOCACTION_Complete;
			options[1] = DOCACTION_Void;
			index=2;
		}
		else if (DOCSTATUS_Drafted.equals(docStatus))
		{
			options[0] = DOCACTION_Prepare;
			options[1] = DOCACTION_Complete;
			index=2;
		}
		else if (DOCSTATUS_Completed.equals(docStatus))
		{
			options[0] = DOCACTION_Void;
			options[1] = DOCACTION_Re_Activate;
			index=2;
		}
		//
		return index;
	}

	@Override
	public boolean processIt(String processAction) throws Exception
	{
		m_processMsg = null;
		DocumentEngine engine = new DocumentEngine (this, getDocStatus());
		return engine.processIt (processAction, getDocAction());
	}	//	processIt
	
	/**	Process Message 			*/
	private String		m_processMsg = null;

	@Override
	public boolean unlockIt()
	{
		return false;
	}	//	unlockIt

	@Override
	public boolean invalidateIt()
	{
		return false;
	}	//	invalidateIt

	@Override
	public String prepareIt()
	{
		//	Model Validator
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		
		MLBRBankSlipInfo bsi = MLBRBankSlipInfo.get (p_ctx, getLBR_BankSlip_ID(), get_TrxName());

		if (LBR_ISSUEDBY_Organization.equals(getLBR_IssuedBy()))
		{
			//	Check if bank is supported
			if (!BancosSuportados.isSuportado(bsi.getRoutingNo()))
			{
				m_processMsg = "Banco não suportado para emissão de boleto";
				return DocAction.STATUS_Invalid;
			}
			
			if (getLBR_NumberInBank() == null || getLBR_NumberInBank().isBlank())
			{
				m_processMsg = "@FillMandatory@ @LBR_NumberInBank@";
				return DocAction.STATUS_Invalid;
			}
		}
		
		//	Validates the Business Partner
		if (bsi.getlbr_OrgAddress1() == null 		|| bsi.getlbr_OrgAddress1().isBlank() ||
				bsi.getlbr_OrgAddress2() == null 	|| bsi.getlbr_OrgAddress2().isBlank() ||
				bsi.getlbr_OrgAddress3() == null 	|| bsi.getlbr_OrgAddress3().isBlank() ||
				bsi.getlbr_OrgCity() == null 		|| bsi.getlbr_OrgCity().isBlank() ||
				bsi.getlbr_OrgRegion() == null 		|| bsi.getlbr_OrgRegion().isBlank() ||
				bsi.getlbr_OrgName() == null 		|| bsi.getlbr_OrgName().isBlank() ||
				bsi.getlbr_OrgPostal() == null 		|| bsi.getlbr_OrgPostal().isBlank() ||
				bsi.getlbr_CNPJ() == null 			|| bsi.getlbr_CNPJ().isBlank() ||
				bsi.getLBR_OrgBPType() == null 		|| bsi.getLBR_OrgBPType().isBlank())
		{
			m_processMsg = "Dados da Parceiro/Pagador incompletos";
			return DocAction.STATUS_Invalid;
		}
		
		//	Validates the Organization
		if (bsi.getlbr_BPAddress1() == null 		|| bsi.getlbr_BPAddress1().isBlank() ||
				bsi.getlbr_BPAddress2() == null 	|| bsi.getlbr_BPAddress2().isBlank() ||
				bsi.getlbr_BPAddress3() == null 	|| bsi.getlbr_BPAddress3().isBlank() ||
				bsi.getlbr_BPCity() == null 		|| bsi.getlbr_BPCity().isBlank() ||
				bsi.getlbr_BPRegion() == null 		|| bsi.getlbr_BPRegion().isBlank() ||
				bsi.getBPName() == null 			|| bsi.getBPName().isBlank() ||
				bsi.getlbr_BPPostal() == null 		|| bsi.getlbr_BPPostal().isBlank() ||
				bsi.getlbr_BPCNPJ() == null 		|| bsi.getlbr_BPCNPJ().isBlank() ||
				bsi.getlbr_BPTypeBR() == null 		|| bsi.getlbr_BPTypeBR().isBlank())
		{
			m_processMsg = "Dados da Organização/Beneficiário incompletos";
			return DocAction.STATUS_Invalid;
		}
		
		//	Validates the Guarantor
		if (getGuarantorBP_Location_ID() > 0 && 
				(bsi.getLBR_GuarantorAddress1() == null 	|| bsi.getLBR_GuarantorAddress1().isBlank() ||
				bsi.getLBR_GuarantorAddress2() == null 		|| bsi.getLBR_GuarantorAddress2().isBlank() ||
				bsi.getLBR_GuarantorAddress3() == null 		|| bsi.getLBR_GuarantorAddress3().isBlank() ||
				bsi.getLBR_GuarantorCity() == null 			|| bsi.getLBR_GuarantorCity().isBlank() ||
				bsi.getLBR_GuarantorRegion() == null 		|| bsi.getLBR_GuarantorRegion().isBlank() ||
				bsi.getLBR_GuarantorBPName() == null 		|| bsi.getLBR_GuarantorBPName().isBlank() ||
				bsi.getLBR_GuarantorPostal() == null 		|| bsi.getLBR_GuarantorPostal().isBlank() ||
				bsi.getLBR_GuarantorCNPJ() == null 			|| bsi.getLBR_GuarantorCNPJ().isBlank()))
		{
			m_processMsg = "Dados do Avalista incompletos";
			return DocAction.STATUS_Invalid;
		}
		
		if (bsi.getAccountNo() == null || bsi.getAccountNo().isBlank())
		{
			m_processMsg = "Dados da Conta Bancária inválidos";
			return DocAction.STATUS_Invalid;
		}
		
		if (bsi.getLBR_BankSlipFoldCode() == null || bsi.getLBR_BankSlipFoldCode().isBlank())
		{
			m_processMsg = "Dados da Carteira inválidos";
			return DocAction.STATUS_Invalid;
		}
		
		//	Model Validator
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		
		return DocAction.STATUS_InProgress;
	}	//	prepareIt

	@Override
	public boolean approveIt()
	{
		return false;
	}	//	approveIt

	@Override
	public boolean rejectIt()
	{
		return false;
	}	//	rejectIt

	@Override
	public String completeIt()
	{
		//	Model Validator
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_COMPLETE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		
		if (LBR_ISSUEDBY_Organization.equals(getLBR_IssuedBy()))
		{
			Boleto boleto = getBankSlip();
			bsi.setLBR_ManualInput(boleto.getLinhaDigitavel().write());
			bsi.setLBR_Barcode(boleto.getCodigoDeBarras().write());
			bsi.saveEx();
		}
		
		setDocStatus(DOCSTATUS_Completed);
		setDocAction(DOCACTION_None);
		setProcessed(true);
		
		//	Model Validator
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_COMPLETE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		
		return DocAction.STATUS_Completed;
	}	//	completeIt

	@Override
	public boolean voidIt()
	{
		return false;
	}	//	voidIt

	@Override
	public boolean closeIt()
	{
		return false;
	}	//	closeIt

	@Override
	public boolean reverseCorrectIt()
	{
		return false;
	}	//	reverseCorrectIt

	@Override
	public boolean reverseAccrualIt()
	{
		return false;
	}	//	reverseAccrualIt

	@Override
	public boolean reActivateIt()
	{
		//	Validar se não existe movimentação
		setProcessed(false);
		
		//	Re-post facts
		MFactAcct.deleteEx(MLBRBankSlip.Table_ID, getLBR_BankSlip_ID(), get_TrxName());
		setPosted(false);
		
		return true;
	}	//	reActivateIt

	@Override
	public String getSummary()
	{
		return null;
	}	//	getSummary

	@Override
	public String getDocumentInfo()
	{
		return null;
	}	//	getDocumentInfo

	@Override
	public String getProcessMsg()
	{
		return m_processMsg;
	}	//	getProcessMsg

	@Override
	public int getDoc_User_ID()
	{
		return 0;
	}	//	getDoc_User_ID

	@Override
	public int getC_Currency_ID()
	{
		return 297;
	}	//	getC_Currency_ID

	@Override
	public BigDecimal getApprovalAmt()
	{
		return getGrandTotal();
	}	//	getApprovalAmt
}	//	MLBRBankSlip
