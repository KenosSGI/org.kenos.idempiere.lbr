package org.kenos.idempiere.lbr.bankslip.model;

import java.awt.Image;
import java.io.File;
import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Properties;

import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBROpenItem;
import org.adempierelbr.model.X_LBR_BankSlip;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.adempierelbr.wrapper.I_W_C_Bank;
import org.adempierelbr.wrapper.I_W_C_BankAccount;
import org.adempierelbr.wrapper.I_W_C_Invoice;
import org.compiere.model.I_C_Location;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MBank;
import org.compiere.model.MBankAccount;
import org.compiere.model.MDocType;
import org.compiere.model.MFactAcct;
import org.compiere.model.MImage;
import org.compiere.model.MInvoice;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MSequence;
import org.compiere.model.MSysConfig;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.Query;
import org.compiere.process.DocAction;
import org.compiere.process.DocOptions;
import org.compiere.process.DocumentEngine;
import org.compiere.util.CCache;
import org.compiere.util.DB;
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
import org.kenos.idempiere.lbr.base.model.SysConfig;

/**
 * 	Bank Slip (Boleto) model
 * 	@author Ricardo Santana
 */
public class MLBRBankSlip extends X_LBR_BankSlip implements DocAction, DocOptions
{
	/**	Cache					*/
	static private CCache<Integer,Image> s_BankCache = new CCache<Integer,Image>(MLBRBank.Table_Name, 10, 120);
	
	/**	Document Type of Bank Slip	*/
	static private final String DOCBASETYPE_BANKSLIP = "BSB";
	
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = -975551832184870560L;

	private MLBRBankSlipInfo bsi = null;

	/** Espécies */
	public static final int ESPECIE_APOLICE_DE_SEGURO 					= 1;
	public static final int ESPECIE_BOLETO_DE_PROPOSTA 					= 2;
	public static final int ESPECIE_CARTAO_DE_CREDITO 					= 3;
	public static final int ESPECIE_CEDULA_DE_PRODUTO_RURAL 			= 4;
	public static final int ESPECIE_CHEQUE 								= 5;
	public static final int ESPECIE_COBRANCA_SERIADA 					= 6;
	public static final int ESPECIE_CONTA_DE_PRESTACAO_DE_SERVICO 		= 7;
	public static final int ESPECIE_CONTRATO 							= 8;
	public static final int ESPECIE_COSSEGURO 							= 9;
	public static final int ESPECIE_DIVIDA_ATIVA_DA_UNIAO 				= 10;
	public static final int ESPECIE_DIVIDA_ATIVA_DE_ESTADO 				= 11;
	public static final int ESPECIE_DIVIDA_ATIVA_DE_MUNICIPIO 			= 12;
	public static final int ESPECIE_DOCUMENTO_DE_DIVIDA 				= 13;
	public static final int ESPECIE_DUPLICATA_DE_SERVICO 				= 14;
	public static final int ESPECIE_DUPLICATA_DE_SERVICO_POR_INDICACAO 	= 15;
	public static final int ESPECIE_DUPLICATA_MERCANTIL 				= 16;
	public static final int ESPECIE_DUPLICATA_MERCANTIL_POR_INDICACAO 	= 17;
	public static final int ESPECIE_DUPLICATA_RURAL 					= 18;
	public static final int ESPECIE_ENCARGOS_CONDOMINIAIS 				= 19;
	public static final int ESPECIE_FATURA 								= 20;
	public static final int ESPECIE_LETRA_DE_CAMBIO 					= 21;
	public static final int ESPECIE_MENSALIDADE_ESCOLAR 				= 22;
	public static final int ESPECIE_NOTA_DE_CREDITO_COMERCIAL 			= 23;
	public static final int ESPECIE_NOTA_DE_CREDITO_INDUSTRIAL 			= 24;
	public static final int ESPECIE_NOTA_DE_CREDITO_PARA_EXPORTACAO 	= 25;
	public static final int ESPECIE_NOTA_DE_CREDITO_RURAL 				= 26;
	public static final int ESPECIE_NOTA_DE_DEBITO 						= 27;
	public static final int ESPECIE_NOTA_DE_SEGURO 						= 28;
	public static final int ESPECIE_NOTA_FISCAL 						= 29;
	public static final int ESPECIE_NOTA_PROMISSORIA 					= 30;
	public static final int ESPECIE_NOTA_PROMISSORIA_RURAL 				= 31;
	public static final int ESPECIE_PARCELA_DE_CONSORCIO 				= 32;
	public static final int ESPECIE_RECIBO 								= 33;
	public static final int ESPECIE_TRIPLICATA_DE_SERVICO 				= 34;
	public static final int ESPECIE_TRIPLICATA_MERCANTIL 				= 35;
	public static final int ESPECIE_WARRANT			 					= 36;
	public static final int ESPECIE_OUTROS 								= 999;
	
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
		//
		bsi = MLBRBankSlipInfo.get (getCtx(), getLBR_BankSlip_ID(), trxName);
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
	public Boleto getBankSlip ()
	{
		Cedente beneficiario = new Cedente (bsi.getlbr_OrgName(), bsi.getlbr_CNPJ());

		Endereco enderecoBen = new Endereco();
		enderecoBen.setUF(UnidadeFederativa.valueOf(bsi.getlbr_OrgRegion()));
		enderecoBen.setLocalidade(bsi.getlbr_OrgCity());
		enderecoBen.setCep(new CEP(bsi.getlbr_OrgPostal()));
		enderecoBen.setBairro(bsi.getlbr_OrgAddress3());
		enderecoBen.setLogradouro(bsi.getlbr_OrgAddress1());
		enderecoBen.setNumero(bsi.getlbr_OrgAddress2());
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
		
		//	Has a brazilian bank model
		Integer LBR_Bank_ID = getLBR_Bank_ID();
		if (LBR_Bank_ID > 0)
		{
			//	Check if there is image on cache
			Image image = s_BankCache.get(LBR_Bank_ID);
			if (image == null)
			{
				MLBRBank bank = new MLBRBank (getCtx(), LBR_Bank_ID, null);
				if (bank.getLogo_ID() > 0)
					image = MImage.get(getCtx(), bank.getLogo_ID()).getImage();
				//
				s_BankCache.put(LBR_Bank_ID, image);
			}
			
			//	Update bank logo
			if (image != null)
				banco.setImgLogo(image);
		}
		
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
	 * 	Get LBR Bank
	 * 	@return
	 */
	private Integer getLBR_Bank_ID()
	{
		MBank b = new MBank (getCtx(), getC_Bank_ID(), null);
		return b.get_ValueAsInt(I_W_C_Bank.COLUMNNAME_LBR_Bank_ID);
	}	//	getLBR_Bank_ID

	/**
	 * 	Parse Bank Slip Kind from iDempiere format to Bopepo format
	 * 	@return bopepo bank slip kind
	 */
	private TipoDeTitulo parseBankSlipKind ()
	{
		switch (Integer.valueOf (bsi.getLBR_BankSlipKindCode()))
		{
			case ESPECIE_APOLICE_DE_SEGURO:
				return TipoDeTitulo.AP_APOLICE_DE_SEGURO;
				
			case ESPECIE_BOLETO_DE_PROPOSTA:
	//			return TipoDeTitulo.BOLETO_DE_PROPOSTA;
				return null;
				
			case ESPECIE_CARTAO_DE_CREDITO:
	//			return TipoDeTitulo.CARTAO_DE_CREDITO;
				return null;
				
			case ESPECIE_CEDULA_DE_PRODUTO_RURAL:
				return TipoDeTitulo.CEDULA_DE_PRODUTO_RURAL;
				
			case ESPECIE_CHEQUE:
				return TipoDeTitulo.CH_CHEQUE;
				
			case ESPECIE_COBRANCA_SERIADA:
	//			return TipoDeTitulo.COBRANCA_SERIADA;
				return null;
				
			case ESPECIE_CONTA_DE_PRESTACAO_DE_SERVICO:
	//			return TipoDeTitulo.CONTA_DE_PRESTACAO_DE_SERVICO;
				return null;
				
			case ESPECIE_CONTRATO:
	//			return TipoDeTitulo.CONTRATO;
				return null;
				
			case ESPECIE_COSSEGURO:
	//			return TipoDeTitulo.COSEGURO;
				return null;
				
			case ESPECIE_DIVIDA_ATIVA_DA_UNIAO:
				return TipoDeTitulo.DIVIDA_ATIVA_DA_UNIAO;
				
			case ESPECIE_DIVIDA_ATIVA_DE_ESTADO:
				return TipoDeTitulo.DIVIDA_ATIVA_DE_ESTADO;
				
			case ESPECIE_DIVIDA_ATIVA_DE_MUNICIPIO:
				return TipoDeTitulo.DIVIDA_ATIVA_DE_MUNICIPIO;
				
			case ESPECIE_DOCUMENTO_DE_DIVIDA:
				return TipoDeTitulo.DD_DOCUMENTO_DE_DIVIDA;
				
			case ESPECIE_DUPLICATA_DE_SERVICO:
				return TipoDeTitulo.DS_DUPLICATA_DE_SERVICO;
				
			case ESPECIE_DUPLICATA_DE_SERVICO_POR_INDICACAO:
				return TipoDeTitulo.DSI_DUPLICATA_DE_SERVICO_PARA_INDICACAO;
				
			case ESPECIE_DUPLICATA_MERCANTIL:
				return TipoDeTitulo.DM_DUPLICATA_MERCANTIL;
				
			case ESPECIE_DUPLICATA_MERCANTIL_POR_INDICACAO:
				return TipoDeTitulo.DMI_DUPLICATA_MERCANTIL_PARA_INDICACAO;
				
			case ESPECIE_DUPLICATA_RURAL:
				return TipoDeTitulo.DR_DUPLICATA_RURAL;
				
			case ESPECIE_ENCARGOS_CONDOMINIAIS:
				return TipoDeTitulo.COTA_CONDOMINIAL;
				
			case ESPECIE_FATURA:
				return TipoDeTitulo.FAT_FATURA;
				
			case ESPECIE_LETRA_DE_CAMBIO:
				return TipoDeTitulo.LC_LETRA_DE_CAMBIO;
				
			case ESPECIE_MENSALIDADE_ESCOLAR:
				return TipoDeTitulo.ME_MENSALIDADE_ESCOLAR;
				
			case ESPECIE_NOTA_DE_CREDITO_COMERCIAL:
				return TipoDeTitulo.NCC_NOTA_DE_CREDITO_COMERCIAL;
				
			case ESPECIE_NOTA_DE_CREDITO_INDUSTRIAL:
				return TipoDeTitulo.NCI_NOTA_DE_CREDITO_INDUSTRIAL;
				
			case ESPECIE_NOTA_DE_CREDITO_PARA_EXPORTACAO:
				return TipoDeTitulo.NCE_NOTA_DE_CREDITO_A_EXPORTACAO;
				
			case ESPECIE_NOTA_DE_CREDITO_RURAL:
				return TipoDeTitulo.NCR_NOTA_DE_CREDITO_RURAL;
				
			case ESPECIE_NOTA_DE_DEBITO:
				return TipoDeTitulo.ND_NOTA_DE_DEBITO;
				
			case ESPECIE_NOTA_DE_SEGURO:
				return TipoDeTitulo.NS_NOTA_DE_SEGURO;
				
			case ESPECIE_NOTA_FISCAL:
				return TipoDeTitulo.NF_NOTA_FISCAL;
				
			case ESPECIE_NOTA_PROMISSORIA:
				return TipoDeTitulo.NP_NOTA_PROMISSORIA;
				
			case ESPECIE_NOTA_PROMISSORIA_RURAL:
				return TipoDeTitulo.NPR_NOTA_PROMISSORIA_RURAL;
				
			case ESPECIE_PARCELA_DE_CONSORCIO:
				return TipoDeTitulo.PC_PARCELA_DE_CONSORCIO;
				
			case ESPECIE_RECIBO:
				return TipoDeTitulo.RC_RECIBO;
				
			case ESPECIE_TRIPLICATA_DE_SERVICO:
				return TipoDeTitulo.TS_TRIPLICATA_DE_SERVICO;
				
			case ESPECIE_TRIPLICATA_MERCANTIL:
				return TipoDeTitulo.TM_TRIPLICATA_MERCANTIL;
				
			case ESPECIE_WARRANT:
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
		
		if (newRecord)
		{
			if (getDocumentNo() == null)
			{
				String value = DB.getDocumentNo(getC_DocType_ID(), get_TrxName(), false, this);
				if (value == null)	//	not overwritten by DocType and not manually entered
					value = DB.getDocumentNo(getAD_Client_ID(), p_info.getTableName(), get_TrxName(), this);
			
				setDocumentNo(value);
			}
			
			//	Local numbering
			if (getLBR_NumberInOrg() == null)
				setLBR_NumberInOrg(getDocumentNo());
		
			//	Number in the bank
			if (getLBR_NumberInBank() == null)
			{
				if (getLBR_BankSlipContract().getLBR_NumberInBankSeq_ID() > 0)
				{
					MSequence seq = new MSequence (getCtx(), getLBR_BankSlipContract().getLBR_NumberInBankSeq_ID(), get_TrxName());
					setLBR_NumberInBank(String.valueOf(seq.getNextID()));
					seq.save();
				}
			}
		}
		//
		return true;
	}	//	beforeSave
	
	/**	
	 * 	Routing No
	 * 	@return
	 */
	private String getRoutingNo ()
	{
		if (bsi != null)
			return bsi.getRoutingNo();
		return null;
	}	//	getRoutingNo
	
	@Override
	public String getLBR_NumberInBank()
	{
		String numberInBank = super.getLBR_NumberInBank();
		
		if ("237".equals(getRoutingNo()))
			return TextUtil.lPad(numberInBank, 11);
		return numberInBank;
	}	//	getLBR_NumberInBank
	
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
		
		//	Recipient
		if (newRecord || is_ValueChanged(COLUMNNAME_LBR_RecipientType) || is_ValueChanged(COLUMNNAME_LBR_Recipient_Location_ID))
		{
			String recipientName 	= null;
			String recipientTaxType = null;
			String recipientTaxID 	= null;
			I_C_Location location 	= null;

			if (LBR_RECIPIENTTYPE_FIDCOr3rdParty.equals(getLBR_RecipientType()))
			{
				MBPartner bp = new MBPartner(getCtx(), getLBR_Recipient_ID(), get_TrxName());
				I_W_C_BPartner bpW 	= POWrapper.create(bp, I_W_C_BPartner.class);
				//
				recipientName 		= bpW.getName();
				recipientTaxType 	= bpW.getlbr_BPTypeBR();
				recipientTaxID		= bpW.getlbr_CNPJ();
				//
				location = new MBPartnerLocation(getCtx(), getLBR_Recipient_Location_ID(), get_TrxName()).getC_Location();
			}
			else
			{
				I_W_AD_OrgInfo org 	= POWrapper.create(MOrgInfo.get(getCtx(), getAD_Org_ID(), get_TrxName()), I_W_AD_OrgInfo.class);
				recipientName 		= org.getlbr_LegalEntity();
				recipientTaxType 	= MLBRBankSlipInfo.LBR_ORGBPTYPE_PJ_LegalEntity;
				recipientTaxID		= org.getlbr_CNPJ();
				//
				location = org.getC_Location();
			}
			//
			bsi.setlbr_OrgName(recipientName);
			bsi.setLBR_OrgBPType(recipientTaxType);
			bsi.setlbr_CNPJ(recipientTaxID);
			bsi.setlbr_OrgAddress1(location.getAddress1());
			bsi.setlbr_OrgAddress2(location.getAddress2());
			bsi.setlbr_OrgAddress3(location.getAddress3());
			bsi.setlbr_OrgAddress4(location.getAddress4());
			bsi.setlbr_OrgCity(location.getCity());
			bsi.setlbr_OrgRegion(location.getRegionName());
			bsi.setlbr_OrgPostal(location.getPostal());	
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
			bsi.setLBR_GuarantorBPType(bpType);
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
		
		//	Creates the registration movement
		if (LBR_REGISTERTYPE_Registered.equals(getLBR_RegisterType()))
		{
			MLBRBankSlipMov mov = createRegisterRequestMov ();
//			mov.setMovementDate(new Timestamp(System.currentTimeMillis()));
			
			if (mov == null || !mov.save())
			{
				m_processMsg = "Impossível criar a movimentação inicial do título para registro junto ao banco";
				return DocAction.STATUS_Invalid;
			}
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

	/**
	 * 	Creates a initial movement to register bank slip in the bank
	 * 	@return null or recently created movement
	 */
	private MLBRBankSlipMov createRegisterRequestMov ()
	{
		MLBRBankSlipLayout layout = new MLBRBankSlipLayout (getCtx(), getLBR_BankSlipLayout_ID(), get_TrxName());
		List<MLBRBankSlipOccur> occurrences = layout.getOccurrences(true);
		//
		for (MLBRBankSlipOccur occur : occurrences)
		{
			//	Register Request found in layout
			if (MLBRBankSlipOccur.TYPE_RegisterRequest.equals(occur.getType()))
			{
				MLBRBankSlipMov mov = new MLBRBankSlipMov (this);
				mov.setOccurrence(occur);
				return mov;
			}
		}
		//	Register Request not found, may bank configuration is invalid
		return null;
	}	//	getRegisterRequestMov

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

	/**
	 * 	Re-activate a bank slip not processed
	 */
	@Override
	public boolean reActivateIt()
	{
		List<MLBRBankSlipMov> bss = new Query (getCtx(), MLBRBankSlipMov.Table_Name, MLBRBankSlipMov.COLUMNNAME_LBR_BankSlip_ID + "=?", get_TrxName()).setParameters(getLBR_BankSlip_ID()).list();
		if (bss.size() > 1)
		{
			m_processMsg = "Não é possível reativar, boleto já possuí movimentos";
			return false;
		}
		if (bss.size() == 1 && bss.get(0).isFileGenerated())
		{
			m_processMsg = "Não é possível reativar, CNAB com o boleto já foi gerado";
			return false;
		}
		
		//	Re-post facts
		MFactAcct.deleteEx(MLBRBankSlip.Table_ID, getLBR_BankSlip_ID(), get_TrxName());
		setProcessed(false);
		setPosted(false);
		
		//	Clear dynamic fields
		bsi.setLBR_ManualInput(null);
		bsi.setLBR_Barcode(null);
		bsi.saveEx();
		
		//	Remove movements
		bss.stream().forEach(bs -> bs.deleteEx(true));
		
		// 	No movements or single register movement, allows to re-activate
		return bss.size() == 0 ? true : (bss.size() == 1 ? bss.get(0).delete(true) : false);
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
	
	/**
	 * 	Generate Bank Slips for an invoice
	 * @param ctx
	 * @param C_Invoice_ID
	 * @param LBR_BankSlipContract_ID
	 * @param trx
	 * @return
	 */
	public static List<File> generateFromInvoice (Properties ctx, int C_Invoice_ID, int C_InvoicePaySchedule_ID, Integer LBR_BankSlipContract_ID, String trxName)
	{
		List<File> files = new ArrayList<File> ();
		
		I_W_C_Invoice invoice = POWrapper.create(new MInvoice (ctx, C_Invoice_ID, trxName), I_W_C_Invoice.class);
		MLBROpenItem[] openItems = MLBROpenItem.getOpenItem (C_Invoice_ID, trxName);
		
		for (MLBROpenItem oi : openItems)
		{
			MLBRBankSlip bs = new MLBRBankSlip (ctx, 0, trxName);
			bs.setAD_Org_ID(invoice.getAD_Org_ID());
			bs.setBankSlipContract(LBR_BankSlipContract_ID);
			bs.setC_Invoice_ID(oi.getC_Invoice_ID());
			bs.setC_InvoicePaySchedule_ID(oi.getC_InvoicePaySchedule_ID());
			bs.setC_BPartner_ID(invoice.getC_BPartner_ID());
			bs.setC_BPartner_Location_ID(invoice.getC_BPartner_Location_ID());
			bs.setDocType();
			bs.setDateDoc(oi.getDateInvoiced());
			bs.setDueDate(oi.getDueDate());
			bs.setDateAcct(oi.getDateInvoiced());
			bs.setGrandTotal(oi.getGrandTotal());
			
			MLBRNotaFiscal[] nfs = MLBRNotaFiscal.get(ctx, invoice.getC_Invoice_ID(), trxName);
			if (MSysConfig.getBooleanValue(SysConfig.LBR_PRINTNFENOONBILLING, true) && nfs.length > 0)
				bs.setLBR_NotaFiscal_ID(nfs[0].getLBR_NotaFiscal_ID());
			
			//	Save new
			bs.save();
			
			//	Process document
			bs.setDocStatus(bs.completeIt());
			bs.save();
			
			//	Add to PDF
			files.add(bs.createPDF());
		}
		
		return files;
	}	//	generateFromInvoice

	/**
	 * 	Set Document Type
	 */
	private void setDocType() 
	{
		if (getC_DocType_ID() > 0)
			return;
		
		int C_DocType_ID = MDocType.getDocType(DOCBASETYPE_BANKSLIP);
		if (C_DocType_ID > 0)
			setC_DocType_ID(C_DocType_ID);
	}	//	setDocType

	/**
	 * 	Set contract information
	 * 	@param LBR_BankSlipContract_ID
	 */
	private void setBankSlipContract(int LBR_BankSlipContract_ID)
	{
		setLBR_BankSlipContract_ID(LBR_BankSlipContract_ID);

		if (LBR_BankSlipContract_ID > 0)
		{
			Properties ctx = getCtx();
			
			MLBRBankSlipContract contract = new MLBRBankSlipContract (ctx, LBR_BankSlipContract_ID, get_TrxName());
			setLBR_BankSlipLayout_ID (contract.getLBR_BankSlipLayout_ID ());
			setLBR_BankSlipFold_ID (contract.getLBR_BankSlipFold_ID ());
			setLBR_BankSlipKind_ID (contract.getLBR_BankSlipKind_ID ());
			setLBR_RegisterType (contract.getLBR_RegisterType ());
			setLBR_RecipientType (contract.getLBR_RecipientType());
			setC_BankAccount_ID(contract.getC_BankAccount_ID());
			setC_Bank_ID(contract.getC_BankAccount().getC_Bank_ID());
			setLBR_BankSlipFold_ID(contract.getLBR_BankSlipFold_ID());
			setLBR_IssueType(contract.getLBR_BankSlipFold().getLBR_IssueType());
			
			if (MLBRBankSlipContract.LBR_RECIPIENTTYPE_FIDCOr3rdParty.equals(contract.getLBR_RecipientType()))
			{
				setLBR_Recipient_ID (contract.getLBR_Recipient_ID());
				setLBR_Recipient_Location_ID (contract.getLBR_Recipient_Location_ID());
			}
			
			if (contract.getLBR_BankSlipConfig_ID() < 1)
				return;
			
			//	Set fields from configuration
			MLBRBankSlipConfig config = new MLBRBankSlipConfig (ctx, contract.getLBR_BankSlipConfig_ID(), null);

			setLBR_IsAccepted (config.getLBR_IsAccepted());
			setLBR_ReturnAction (config.getLBR_ReturnAction());
			setLBR_ReturnDays (config.getLBR_ReturnDays());
			setLBR_DistributedVia (config.getLBR_DistributedVia());
			
			//	Interest
			setLBR_InterestType (config.getLBR_InterestType());
			setLBR_InterestValue (config.getLBR_InterestValue());
			setLBR_InterestDays (config.getLBR_InterestDays());

			//	Penalty
			setLBR_PenaltyType (config.getLBR_PenaltyType());
			setLBR_PenaltyValue (config.getLBR_PenaltyValue());
			setLBR_PenaltyDays (config.getLBR_PenaltyDays());
			
			//	Protest
			setLBR_ProtestType (config.getLBR_ProtestType());
			setLBR_ProtestDays (config.getLBR_ProtestDays());
		}
	}	//	setBankSlipContract
}	//	MLBRBankSlip
