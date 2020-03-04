/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.adempierelbr.model;

import java.awt.print.PrinterException;
import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Properties;
import java.util.Vector;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempierelbr.boleto.bank.MBancoBrasil;
import org.adempierelbr.boleto.bank.MBancoReal;
import org.adempierelbr.boleto.bank.MBradesco;
import org.adempierelbr.boleto.bank.MCaixaEconomica;
import org.adempierelbr.boleto.bank.MHsbc;
import org.adempierelbr.boleto.bank.MItau;
import org.adempierelbr.boleto.bank.MSantander_033;
import org.adempierelbr.boleto.bank.MSantander_353;
import org.adempierelbr.boleto.bank.MUnibanco;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MBank;
import org.compiere.model.MBankAccount;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoicePaySchedule;
import org.compiere.model.MLocation;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MPaymentTerm;
import org.compiere.model.MRegion;
import org.compiere.model.MSequence;
import org.compiere.model.MSysConfig;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.jboleto.JBoleto;
import org.jboleto.JBoletoBean;
import org.jboleto.JBoletoPrint;
import org.kenos.idempiere.lbr.base.model.SysConfig;

/**
 * MBoleto
 *
 * Boleto Model Class
 *
 * FR [2974197] Novas Funcionalidades: Form de geração/impressão de boletos na web (ZK)
 *
 * @author Mario Grigioni (Kenos, www.kenos.com.br)
 * @contributor Murilo H. Torquato, muriloht (http://fbeltram.muriloht.com)
 *
 * @version $Id: MBoleto.java, 31/10/2007 10:43:02 mgrigioni
 */
public class MLBRBoleto extends X_LBR_Boleto
{

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MLBRBoleto.class);

	private static final String dateFormat = "dd/MM/yyyy";

	public MLBRBoleto(Properties ctx, int LBR_Boleto_ID, String trx){
		super(ctx,LBR_Boleto_ID,trx);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRBoleto (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}
	
	/** Get Parcela da Fatura
	 * @param documentNo Número de Controle da Empresa
	 * @return LBR_PayScheduleNo */
	public static String getLBR_PayScheduleNo (String documentNo)
	{
		//	Ocorrência para cobranças não registradas
		if (documentNo == null || documentNo.length() <= 0)
			return  "";
		
		int index = 0;
		
		// Nova regra de registro do Id Da Fatura, Número do Documento e Parcela no Arquivo CNAB.
		if (documentNo.contains("P"))
			index = documentNo.indexOf("P") + 1;
		else
			index = documentNo.indexOf("/") + 1;
		
		String LBR_PayScheduleNo = documentNo.substring(index, index + 2).trim();
		
		return LBR_PayScheduleNo;
	}	//	getLBR_PayScheduleNo
	
	/** Atualizar o DocumentNo do Boleto (Somente para casos onde o Banco gera o NossoNumero)
	 * @param LBR_Boleto_ID Boleto
	 * @param NewDocumentNo
	 * @param trx Transação
	 * @return int com número de linhas atualizadas */
	public static int uptadeDocumentNo(int LBR_Boleto_ID, String NewDocumentNo, String trx)
	{
		int retorno = 0;
		String sql = " UPDATE LBR_Boleto " +
				     " SET DocumentNo = '" + NewDocumentNo.trim() + "'" +
				     " WHERE LBR_Boleto_ID = " + LBR_Boleto_ID;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			
			pstmt = DB.prepareStatement(sql , trx);
			retorno = pstmt.executeUpdate();
			
			if(retorno <= 0)
				log.info("MBoleto.uptadeDocumentNo - Nenhuma boleto atualizado!");
				
			
		} catch (Exception e) {
			log.log(Level.SEVERE, "", e);
		} finally {
		    DB.close(rs, pstmt);
		}
		
		return retorno;
	}
	
	/**
	 *  Get LBR_Bolerto_ID - Três tentativas de busca, pelo número da Fatura + Vencimento, 
	 *  pelo nosso número e pelo nosso número sem zeros a esquerda
	 * @param DocumentNo com o número do Documento
	 * @param LBR_PayScheduleNo com o número da Parcela
	 * @param C_Invoice_ID com a Fatura
	 * @param trx com a Transaçao
	 * @return LBR_Boleto_ID 
	 */
	@SuppressWarnings("resource")
	public static int getLBR_Boleto_ID(String DocumentNo, String LBR_PayScheduleNo, int C_Invoice_ID, String trx)
	{
		int LBR_Boleto_ID = -1;
		
		String sql 					= "";
		String whereDocNo 			= "";
		String whereInvPaySchedNo 	= "";
		String orderBy 				= "";
		
		sql = " SELECT LBR_Boleto_ID 				" +
			  "   FROM LBR_Boleto 					" +
			  "  WHERE LBR_IsCancelled = 'N'		" +
			  "    AND AD_Client_ID = ? 			";
		
		
		// By Invoice e Pay Schedule No
		if (C_Invoice_ID > 0 && LBR_PayScheduleNo != null && !LBR_PayScheduleNo.isEmpty()) 
			whereInvPaySchedNo += " AND LBR_PayScheduleNo = ? AND C_Invoice_ID = ? ";


		// By DocumentNo
		if (DocumentNo != null && !DocumentNo.isEmpty()) 
			whereDocNo += " AND DocumentNo = ? ";
		
		
		// Order By
		orderBy += " ORDER BY LBR_Boleto_ID DESC ";		
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
	
		
			// PRIMEIRA BUSCA - POR FATURA E PARCELA 
			if (C_Invoice_ID > 0 && LBR_PayScheduleNo != null && !LBR_PayScheduleNo.isEmpty()){

				// ADD INVOICE E PAY SCHEDULE NA PESQUISA
				pstmt = DB.prepareStatement(sql + whereInvPaySchedNo + orderBy, trx);
				pstmt.setInt(1, Env.getAD_Client_ID(Env.getCtx()));
				pstmt.setString(2, LBR_PayScheduleNo);		// SCHED
				pstmt.setInt(3, C_Invoice_ID);				// INVOICE
								
				rs = pstmt.executeQuery();				
				if (rs.next())
					 LBR_Boleto_ID = rs.getInt(1);				

			}			
			
			
			/** 
			 * ESSES MÉTODOS ABAIXO SÃO PARA CASOS EM QUA NÃO ENCONTRE A FATURA + NUMERO DA PARCELA
			 * DIFICILMENTE SERAO ACIONADOS, POIS DE ACORDO COM A ESTRUTURA DE RETORNO ATUAL, SEMPRE DEVERÁ ACHAR COM O MÉTODO ACIMA,
			 * PORÉM SE NÃO ENCONTRAR, FAZ AS TENTATIVAS PELO NOSSO NUMERO
			 */
			
			if(LBR_Boleto_ID <= 0 && DocumentNo != null && !DocumentNo.isEmpty()) {
				
			
				// add DocumentNo na Pesquisa
				sql += whereDocNo;
				sql += orderBy;
				
				pstmt = DB.prepareStatement(sql, trx);
				pstmt.setInt(1, Env.getAD_Client_ID(Env.getCtx()));		// CLIENT
				pstmt.setString(2, DocumentNo);							// DOCUMENTNO
				
				// Executa Query
				rs = pstmt.executeQuery();
				if (rs.next())
					 LBR_Boleto_ID = rs.getInt(1);
			}

			
			// NÃO ENCONTROU, REMOVER ZEROS DA ESQUERDA DO NUMERO DO BOLETO E TENTAR NOVAMENTE
			if (LBR_Boleto_ID <= 0 && DocumentNo != null && !DocumentNo.isEmpty() && TextUtil.isNumber(DocumentNo))
			{

				pstmt = DB.prepareStatement(sql, trx);
				pstmt.setInt(1, Env.getAD_Client_ID(Env.getCtx()));			// CLIENT
				pstmt.setString(2, new BigDecimal(DocumentNo).toString());	// DOCUMENTNO
				
				// Executa Query
				rs = pstmt.executeQuery();
				if (rs.next())
					 LBR_Boleto_ID = rs.getInt(1);

			}
			
						
		}
		catch (Exception e) {
			
			log.log(Level.SEVERE, "", e);
			
		} finally {
			
		    DB.close(rs, pstmt);
		    
		}
		
		return LBR_Boleto_ID;
	}	


	public static int getLBR_Boleto_ID(Integer C_Invoice_ID, Integer C_InvoicePaySchedule_ID, String trx)
	{
		int LBR_Boleto_ID = -1;
		int index = 1;
		int aux = 0;

		if (C_Invoice_ID == null)
			C_Invoice_ID = -1;

		if (C_InvoicePaySchedule_ID == null)
			C_InvoicePaySchedule_ID = -1;

		String sql = "SELECT LBR_Boleto_ID " +
				     "FROM LBR_Boleto " +
				     "WHERE C_Invoice_ID = ? ";

		if (C_InvoicePaySchedule_ID > 0){
			sql += "AND C_InvoicePaySchedule_ID = ? ";
			index++;
		}

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, trx);
			pstmt.setInt(1, C_Invoice_ID);
			if (index > 1){
				pstmt.setInt(2, C_InvoicePaySchedule_ID);
			}
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				 LBR_Boleto_ID = rs.getInt(1);
				 aux++;
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}

		if (aux > 1)
			LBR_Boleto_ID = -1;

		return LBR_Boleto_ID;
	}	//	getLBR_Boleto_ID

	public static MLBRBoleto[] getBoleto(Properties ctx, int C_Invoice_ID, String trx){

		String whereClause = "C_Invoice_ID = ? AND IsCancelled = 'N'";

		MTable table = MTable.get(ctx, MLBRBoleto.Table_Name);
		Query query =  new Query(ctx, table, whereClause, trx);
	 		  query.setParameters(new Object[]{C_Invoice_ID});

		List<MLBRBoleto> list = query.list();

		return list.toArray(new MLBRBoleto[list.size()]);
	}

	/**
	 *  getlbr_AgencyNo
	 *
	 *  Return AgencyNo without the Digit
	 *
	 *  @return String AgencyNo
	 */
	public String getlbr_AgencyNo(){

		String lbr_AgencyNo = super.getlbr_AgencyNo();

		int index = lbr_AgencyNo.indexOf('-');

		if (index == -1) return lbr_AgencyNo;

		String AgencyNo = lbr_AgencyNo.substring(0, index);

		return AgencyNo;
	}

	/**
	 *  getAgencyDigit
	 *
	 *  Return AgencyNo Digit
	 *
	 *  @return String AgencyDigit
	 */
	public String getAgencyDigit(){

		String lbr_AgencyNo = super.getlbr_AgencyNo();

		int index = lbr_AgencyNo.indexOf('-');

		if (index == -1) return null;

		String AgencyDigit = lbr_AgencyNo.substring(index+1);

		return AgencyDigit;
	}

	/**
	 *  getlbr_BillFoldDigit
	 *
	 *  Return BillFoldNo without Digit
	 *
	 *  @return String BillFoldDigit
	 */
	public static String getlbr_BillFoldDigit(String BillFoldNo){

		int index = BillFoldNo.indexOf('-');

		if (index == -1) return null;

		String BillFoldDigit = BillFoldNo.substring(index+1);

		return BillFoldDigit;
	}

	/**
	 *  getlbr_BillFoldDigit
	 *
	 *  Return BillFoldNo Digit
	 *
	 *  @return String BillFoldDigit
	 */
	public static String getlbr_BillFoldNo(String BillFoldNo){

		int index = BillFoldNo.indexOf('-');

		if (index == -1) return BillFoldNo;

		BillFoldNo = BillFoldNo.substring(0, index);

		return BillFoldNo;
	}

	/**
	 *  getAccountNo
	 *
	 *  Return AccountNo without the Digit
	 *
	 *  @return String AccountNo
	 */
	public String getAccountNo(){

		String AccountNo = super.getAccountNo();

		int index = AccountNo.indexOf('-');

		if (index == -1) return AccountNo;

		AccountNo = AccountNo.substring(0, index);

		return AccountNo;
	}

	/**
	 *  getAccountDigit
	 *
	 *  Return AccountNo Digit
	 *
	 *  @return String AccountDigit
	 */
	public String getAccountDigit(){

		String AccountNo = super.getAccountNo();

		int index = AccountNo.indexOf('-');

		if (index == -1) return null;

		String AccountDigit = AccountNo.substring(index+1);

		return AccountDigit;
	}

	/**
	 *  Get the address for CNAB
	 *
	 *  @return String Address
	 */
	public String getAddress ()
	{
		return getAddress (true);
	}	//	getAddress
	
	/**
	 * 	Get valid address (Street name and Street number)
	 * 	@return address
	 */
	public String getAddress (boolean includeCompl)
	{
		String address = "";
		//
		if (getAddress1() != null)
			address += TextUtil.retiraEspecial (getAddress1()) + ", ";
		if (getAddress2() != null)
			address += TextUtil.retiraEspecial (getAddress2());
		if (includeCompl && getAddress4() != null)
		{
			if (!address.isEmpty() && !address.endsWith(", "))
				address += " - ";
			address += TextUtil.retiraEspecial (getAddress4());
		}
		if (address.endsWith(", "))
			address = address.substring (0, address.length()-2);
		return address.trim().toUpperCase();
	}	//	getAddress

	/**
	 *  getPayScheduleNo
	 *
	 *  Return the PayScheduleNo
	 *
	 *  @return String PayScheduleNo
	 */
	public String getPayScheduleNo(int C_Invoice_ID,int C_InvoicePaySchedule_ID){

		HashMap<Integer,Integer> numParcela = new HashMap<Integer,Integer>();

		String sql = "SELECT C_InvoicePaySchedule_ID " +
                     "FROM C_InvoicePaySchedule " +
                     "WHERE C_Invoice_ID = ? " +
                     "ORDER BY C_InvoicePaySchedule_ID"; //1

		int PayScheduleNo = 1;

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, C_Invoice_ID);
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				 numParcela.put(rs.getInt(1), PayScheduleNo);
				 PayScheduleNo++;
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		//

		if (PayScheduleNo != 1)
			PayScheduleNo = numParcela.get(C_InvoicePaySchedule_ID);


		return MLBRCNAB.CNABFormat(((Integer)PayScheduleNo).toString(), 2);
	}

	private String getSequence(MBankAccount BankA){

		String DocumentNo = "";

		MSequence Sequence = new MSequence(getCtx(),(Integer)BankA.get_Value("AD_Sequence_ID"),get_TrxName());
		if (Sequence.getPrefix() != null) DocumentNo += Sequence.getPrefix();
		DocumentNo += ((Integer)Sequence.getNextID()).toString();
		if (Sequence.getSuffix() != null) DocumentNo += Sequence.getSuffix();

		Sequence.save();

		return DocumentNo;
	}

    public void generateCNAB(int bank){

		switch(bank){
			case MLBRCNAB.BANCO_DO_BRASIL  : new MBancoBrasil().generateCNAB(this); break;
			case MLBRCNAB.BRADESCO         : new MBradesco().generateCNAB(this); break;
			case MLBRCNAB.ITAU				: new MItau().generateCNAB(this); break;
			case MLBRCNAB.BANCO_REAL		: new MBancoReal().generateCNAB(this); break;
			case MLBRCNAB.CAIXA_ECONOMICA  : new MCaixaEconomica().generateCNAB(this); break;
			case MLBRCNAB.UNIBANCO			: new MUnibanco().generateCNAB(this); break;
			case MLBRCNAB.HSBC				: new MHsbc().generateCNAB(this); break;
			case MLBRCNAB.SANTANDER_033	: new MSantander_033().generateCNAB(this); break;
			case MLBRCNAB.SANTANDER_353	: new MSantander_353().generateCNAB(this); break;
		}

    } //generateCNAB


    public static List<File> generateBoleto(Properties ctx, int C_Invoice_ID, Integer C_BankAccount_ID, String trx) throws IOException, PrinterException{
    	return generateBoleto(ctx,C_Invoice_ID,C_BankAccount_ID,null,null,trx);
    }

	public static List<File> generateBoleto(Properties ctx, int C_Invoice_ID, Integer C_BankAccount_ID, String FilePath, String PrinterName, String trx) throws IOException, PrinterException{

		if (C_Invoice_ID == 0){
			log.log(Level.SEVERE, "C_Invoice_ID == 0");
			throw new IllegalArgumentException("C_Invoice_ID == 0");
		}

		List<File> pdfList      = new ArrayList<File>();
		ArrayList<MLBRBoleto> list = new ArrayList<MLBRBoleto>();

		//REIMPRESSÃO DE BOLETOS
		MLBRBoleto[] boletos = MLBRBoleto.getBoleto(ctx, C_Invoice_ID, trx);
		if (boletos.length > 0){
			for (int i=0;i<boletos.length; i++){
				File boletoPDF = boletos[i].print(FilePath, PrinterName);
				if (boletoPDF != null)
					pdfList.add(boletoPDF);
			}
		}
		//GERAÇÃO E IMPRESSÃO DE BOLETOS
		else{
			MInvoice invoice = MInvoice.get(ctx, C_Invoice_ID);

			//Verifica se não tem uma conta definida na Fatura
			Integer invBank = (Integer)invoice.get_Value("C_BankAccount_ID");
			if (invBank != null && invBank.intValue() != 0){ //Conta <> 0
				String paymentRule = invoice.get_ValueAsString("lbr_PaymentRule");
				if (paymentRule.equalsIgnoreCase("B")){ //Forma de Pagamento = Boleto
					C_BankAccount_ID = invBank;
				}
			}

			MBPartner BPartner = MBPartner.get(ctx, invoice.getC_BPartner_ID());
			MOrg Org = new MOrg(ctx,invoice.getAD_Org_ID(),trx);

			if (C_BankAccount_ID == null || C_BankAccount_ID.intValue() == 0){
				log.log(Level.SEVERE, "C_BankAccount_ID == 0");
				throw new IllegalArgumentException("C_BankAccount_ID == 0");
			}
			MBankAccount BankA = new MBankAccount(ctx,C_BankAccount_ID,trx);
			MBank Bank = new MBank(ctx,BankA.getC_Bank_ID(),trx);

			if (!BankA.get_ValueAsBoolean("lbr_IsBillPrinted")){
				log.log(Level.SEVERE, "Conta não está marcada para Geração de Boletos");
				throw new IllegalArgumentException("Conta não está marcada para Geração de Boletos");
			}

			boolean isRegistered = BankA.get_ValueAsBoolean("IsRegistered");

			X_LBR_Bank lbrBank = new X_LBR_Bank(ctx, Bank.get_ValueAsInt("LBR_Bank_ID"),trx);

			MBPartnerLocation BPLocation = null;
			MLocation Location = null;
			MRegion Region = null;

			BPLocation = BPartner.getLocation(invoice.getC_BPartner_Location_ID());			
			
			if (!BPLocation.isPayFrom())
			{
				// Procurar um Endereço de Cobrança
				MBPartnerLocation LocationPayFrom = new Query(Env.getCtx(), MBPartnerLocation.Table_Name,
						"AD_Client_ID = ? AND C_BPartner_ID = ? AND IsPayFrom = 'Y' AND IsActive = 'Y'", invoice.get_TrxName())
						.setParameters(invoice.getAD_Client_ID(), invoice.getC_BPartner_ID())
						.first();
				
				// Se Encontrar um Endereço de Cobrança substituir a localização
				if (LocationPayFrom != null)
					BPLocation = LocationPayFrom;
				
			}
			
			Location = MLocation.get(ctx, BPLocation.getC_Location_ID(), trx);
			Region = new MRegion(ctx, Location.getC_Region_ID(),trx);

			MLBROpenItem[] oi = null;

			oi = MLBROpenItem.getOpenItem(C_Invoice_ID, trx);

			/*
			 * Generate Boleto
			 */
			for (MLBROpenItem op : oi){

				try{

					int jBoletoNo = Integer.parseInt(lbrBank.getlbr_jBoletoNo());

					MLBRBoleto newBoleto = new MLBRBoleto(ctx,0,trx);
					newBoleto.setRoutingNo(Bank.getRoutingNo()); //Número Banco
					newBoleto.setlbr_jBoletoNo(lbrBank.getlbr_jBoletoNo()); //Número jBoleto
					newBoleto.setDateDoc(invoice.getDateInvoiced()); //Data do Documento
					newBoleto.setC_BankAccount_ID(BankA.getC_BankAccount_ID()); //Conta Bancária
					newBoleto.setAD_Org_ID(BankA.getAD_Org_ID());
					// Buscar nome da Empresa do campo Razão Social na Janela
					// Organização Aba Informações da Organização
					MOrgInfo orginf = MOrgInfo.get(Env.getCtx(), Org.getAD_Org_ID(), trx);
					newBoleto.setlbr_Cessionary(orginf.get_ValueAsString("lbr_LegalEntity")); //Nome do Cedente (Descrição da Empresa)
					//
					newBoleto.setlbr_ReceiverName(BPartner.getName()); //Nome do Sacado
					newBoleto.setAddress1(Location.getAddress1()); //Endereço
					newBoleto.setAddress2(Location.getAddress2()); //Número
					newBoleto.setAddress3(Location.getAddress3()); //Bairro
					newBoleto.setAddress4(Location.getAddress4()); //Complemento
					newBoleto.setCity(Location.getCity()); //Cidade
					newBoleto.setRegionName(Region.getName()); //Estado
					newBoleto.setPostal(Location.getPostal()); //CEP
					newBoleto.setC_BPartner_ID(BPartner.getC_BPartner_ID()); /*C_BPARTNER_ID*/
					newBoleto.setC_Invoice_ID(invoice.getC_Invoice_ID()); /*C_INVOICE_ID*/
					newBoleto.setlbr_BPTypeBR(BPartner.get_ValueAsString("lbr_BPTypeBR")); //Tipo de Pessoa
					newBoleto.setlbr_AgencyNo(BankA.get_ValueAsString("lbr_AgencyNo")); //Número Agência + DV
					newBoleto.setlbr_BillFold(BankA.get_ValueAsString("lbr_BillFold")); //Carteira
					newBoleto.setAccountNo(BankA.getAccountNo()); //Número da Conta + DV
					newBoleto.setlbr_PaymentLocation1(lbrBank.getlbr_PaymentLocation1());
					newBoleto.setlbr_PaymentLocation2(lbrBank.getlbr_PaymentLocation2());
					newBoleto.setlbr_BillKind(BankA.get_ValueAsString("lbr_BillKind"));
					newBoleto.setlbr_ClientCode(BankA.get_ValueAsString("lbr_ClientCode"));
					newBoleto.setlbr_PayScheduleNo(newBoleto.getPayScheduleNo(C_Invoice_ID,op.getC_InvoicePaySchedule_ID()));
					newBoleto.setGrandTotal(op.getGrandTotal());
					newBoleto.setDueDate(op.getDueDate());
					newBoleto.setDiscountAmt(op.getDiscountAmt());
					newBoleto.setDiscountDate(op.getDiscountDate());

					int C_PaymentTerm_ID = op.getC_PaymentTerm_ID();
					MPaymentTerm paymentTerm = new MPaymentTerm(ctx,C_PaymentTerm_ID,trx);

					//Juros
					if (paymentTerm.get_ValueAsBoolean("lbr_HasInterest")){
						newBoleto.setlbr_Interest(op.getInterestAmt());
						newBoleto.setlbr_Instruction1("COBRAR MORA DIÁRIA DE R$ " + op.getInterestAmt());
					}
					else{
						newBoleto.setlbr_Interest(Env.ZERO);
					}

			        //      Instrução 2 - Desconto e Protesto
					String inst2 = "";
					if (op.getDiscountAmt() != null && op.getDiscountAmt().signum() == 1
						&& op.getDiscountDate() != null){

						inst2 = "ATÉ O DIA " + TextUtil.timeToString(op.getDiscountDate(), "dd/MM/yyyy")
                              + " CONCEDER DESCONTO DE R$ " + op.getDiscountAmt().setScale(2, RoundingMode.HALF_UP).toString().replace('.', ',') + ". ";
					 }

					//Protesto
					Integer sueDays = (Integer)paymentTerm.get_Value("lbr_SueDays");
					if (paymentTerm.get_ValueAsBoolean("lbr_HasSue") && sueDays.intValue() >= 3){
						newBoleto.setlbr_SueDays(sueDays);
						newBoleto.setlbr_HasSue(true);
						inst2 += ("PROTESTO AUTOMATICO NO " + sueDays.intValue() + " DIA APOS O VENCIMENTO");
					}
					else{
						newBoleto.setlbr_SueDays(0);
						newBoleto.setlbr_HasSue(false);
					}

					if (inst2 != null && inst2.length() > 0){
						newBoleto.setlbr_Instruction2(inst2);
					}

					//	Nota Fiscal
					MLBRNotaFiscal[] nfs = MLBRNotaFiscal.get(invoice.getCtx(), invoice.getC_Invoice_ID(), invoice.get_TrxName());
					if (MSysConfig.getBooleanValue(SysConfig.LBR_PRINTNFENOONBILLING, true) && nfs.length > 0)
					{
						String type = "NOTA FISCAL: ";
						String docNo = nfs[0].getDocumentNo();
						
						//	Imprime o número da NF de serviço
						if (MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalDeServiçosEletrônicaRPS.equals(nfs[0].getlbr_NFModel()))
							if (nfs[0].getlbr_NFENo() != null)
								docNo = nfs[0].getlbr_NFENo();
							else
								type = "RPS: ";
						//
						newBoleto.setlbr_Instruction3(type + docNo);
					}

					//	Observação Boleto
					if (op.getC_InvoicePaySchedule_ID() != 0){ //Parcelado
						MInvoicePaySchedule ips = new MInvoicePaySchedule(ctx,op.getC_InvoicePaySchedule_ID(),trx);
						newBoleto.setComments(ips.get_ValueAsString("lbr_BoletoComments"));
					}
					else{
						newBoleto.setComments(invoice.get_ValueAsString("lbr_BoletoComments"));
					}

					String DocumentNo = newBoleto.getSequence(BankA);
					DocumentNo = TextUtil.pad(DocumentNo, '0', JBoleto.getQtdDigitos(jBoletoNo), true);

					newBoleto.setDocumentNo(DocumentNo.trim());

					if(!newBoleto.save(trx)){
						log.log(Level.SEVERE, "Erro ao salvar o boleto", newBoleto);
						throw new AdempiereException("Erro ao salvar o boleto");
					}

					//Verifica se o boleto é registrado (CNAB)
					if (isRegistered){
						newBoleto.generateCNAB(Integer.parseInt(lbrBank.getlbr_jBoletoNo()));
					}

					invoice.set_ValueOfColumn("lbr_PaymentRule", "15"); //Forma de Pagamento
					invoice.set_ValueOfColumn("C_BankAccount_ID", C_BankAccount_ID);
					invoice.set_ValueOfColumn("lbr_IsBillPrinted", true);
					invoice.save(trx);

					list.add(newBoleto);
				}
				catch(Exception e){
					log.log(Level.SEVERE, "Erro ao salvar o boleto", e);
				}

			} //end for

			boletos = new MLBRBoleto[list.size()];
			list.toArray(boletos);
			for (int j=0;j<boletos.length; j++){
				File boletoPDF = boletos[j].print(FilePath, PrinterName);
				if (boletoPDF != null)
					pdfList.add(boletoPDF);
			}
		}

		return pdfList;
	}

	private File print(String filePath, String PrinterName){

		JBoletoBean jBoletoBean = new JBoletoBean();

		MInvoice invoice         = new MInvoice(getCtx(),getC_Invoice_ID(),get_TrxName());
		MPaymentTerm paymentTerm = new MPaymentTerm(getCtx(),invoice.getC_PaymentTerm_ID(),get_TrxName());
		MBPartner bpartner       = new MBPartner(getCtx(),getC_BPartner_ID(),get_TrxName());

		int bank = Integer.parseInt(getlbr_jBoletoNo());

		jBoletoBean.setDataDocumento(TextUtil.timeToString(getDateDoc(),dateFormat));
	    jBoletoBean.setDataProcessamento(TextUtil.timeToString(getDateDoc(),dateFormat));
	    jBoletoBean.setCedente(getlbr_Cessionary());
	    jBoletoBean.setNomeSacado(getlbr_ReceiverName());
	    jBoletoBean.setEnderecoSacado(getAddress());

	    String Address3 = getAddress3();
	    if (Address3 == null) Address3 = "";
	    jBoletoBean.setBairroSacado(Address3.trim());

	    String City = getCity();
	    if (City == null) City = "";
	    jBoletoBean.setCidadeSacado(City.trim());

	    String RegionName = getRegionName();
	    if (RegionName == null) RegionName = "";
	    jBoletoBean.setUfSacado(RegionName);

	    String Postal = getPostal();
	    if (Postal == null) Postal = "";
	    jBoletoBean.setCepSacado(Postal);

	    if (getlbr_BPTypeBR().equalsIgnoreCase("PF"))
	     	jBoletoBean.setCpfSacado(bpartner.get_ValueAsString("lbr_CPF"));
	    else
	      	jBoletoBean.setCpfSacado(bpartner.get_ValueAsString("lbr_CNPJ"));

	    jBoletoBean.setCarteira(getlbr_BillFoldNo(getlbr_BillFold()));

	    String PaymentLocation1 = getlbr_PaymentLocation1();
	    if (PaymentLocation1 == null) PaymentLocation1 = "";
	    jBoletoBean.setLocalPagamento(PaymentLocation1);

	    String PaymentLocation2 = getlbr_PaymentLocation2();
	    if (PaymentLocation2 == null) PaymentLocation2 = "";
	    jBoletoBean.setLocalPagamento2(PaymentLocation2);

	    String Instruction1 = getlbr_Instruction1();
	    if (Instruction1 == null) Instruction1 = "";
	    jBoletoBean.setInstrucao1(Instruction1);

	    String Instruction2 = getlbr_Instruction2();
	    if (Instruction2 == null) Instruction2 = "";
	    jBoletoBean.setInstrucao2(Instruction2);

	    String Instruction3 = getlbr_Instruction3();
	    if (Instruction3 == null) Instruction3 = "";
	    jBoletoBean.setInstrucao3(Instruction3);

	    //Observação Boleto
	    String comments = getComments();
	    if (comments == null) comments = "";
	    jBoletoBean.setInstrucao5(comments);

	    jBoletoBean.setAgencia(getlbr_AgencyNo());

        Vector<String> descricoes = new Vector<String>();
        descricoes.add("FATURA: " + invoice.getDocumentNo() + "/" + getlbr_PayScheduleNo());
        descricoes.add(Instruction3);
        descricoes.add("CONDIÇÃO DE PAGAMENTO: " + paymentTerm.getName());
        jBoletoBean.setDescricoes(descricoes);

	    String AgencyDigit = getAgencyDigit();
	    if (AgencyDigit != null) jBoletoBean.setDvAgencia(AgencyDigit);

	    jBoletoBean.setContaCorrente(getAccountNo());

	    String AccountDigit = getAccountDigit();
	    if (AccountDigit != null) jBoletoBean.setDvContaCorrente(AccountDigit);

	    String ClientCode = getlbr_ClientCode();
	    if (ClientCode != null){
	    	if (bank == 0) //Banco do Brasil
	    		jBoletoBean.setNumConvenio(ClientCode);
	    	else
	    		jBoletoBean.setCodCliente(ClientCode);
	    }

	    if (getlbr_BillKind() != null && !getlbr_BillKind().isEmpty())
	    	jBoletoBean.setEspecieDocumento(getlbr_BillKind());
	    jBoletoBean.setNoDocumento(invoice.getDocumentNo() + "/" + getlbr_PayScheduleNo());
	    jBoletoBean.setNossoNumero(getDocumentNo(),JBoleto.getQtdDigitos(bank));
	    jBoletoBean.setValorBoleto(String.valueOf(getGrandTotal()));
	    jBoletoBean.setDataVencimento(TextUtil.timeToString(getDueDate(),dateFormat));
	    JBoleto jBoleto = new JBoleto();
	    jBoleto.addBoleto(jBoletoBean,bank);

	    String fileName = invoice.getDocumentNo() + "_" + getlbr_PayScheduleNo() + ".pdf";

	    if (filePath == null) 
	    	filePath = System.getProperty("user.dir");

	    if (!(filePath.endsWith(File.separator)))
	    	filePath += File.separator;

	    fileName = filePath + fileName;

	    log.log(Level.INFO, "SALVANDO ARQUIVO: " + fileName);
	    jBoleto.writeToFile(fileName);

	    if (PrinterName != null){
	    	log.log(Level.INFO, "ENVIANDO ARQUIVO PARA IMPRESSORA: " + PrinterName);
	    	try {
				JBoletoPrint.print(fileName,PrinterName);
			} catch (IOException e) {
				log.log(Level.SEVERE, "Erro ao salvar o documento", e);
			} catch (PrinterException e)
			{
				log.log(Level.SEVERE, "Erro ao imprimir o documento", e);
			}
	    	TextUtil.deleteFile(fileName);
	    	return null;
	    }

	    return new File(fileName);
	}

	public static void cancelBoleto(Properties ctx, int C_Invoice_ID, String trx){

		if (C_Invoice_ID <= 0)
			return;

		MLBRBoleto[] boletos = MLBRBoleto.getBoleto(ctx, C_Invoice_ID, trx);
		for(MLBRBoleto boleto : boletos){

			boleto.setIsCancelled(true);
			boleto.save(trx);

			int LBR_CNAB_ID = MLBRCNAB.getLBR_CNAB_ID(boleto.getLBR_Boleto_ID(), trx);
			if (LBR_CNAB_ID > 0){
				MLBRCNAB cnab = new MLBRCNAB(ctx,LBR_CNAB_ID,trx);
				cnab.setIsCancelled(true);
				if (!cnab.save(trx)){
					log.log(Level.SEVERE, "Erro ao cancelar o cnab", cnab);
				}
			}

		}

		//Atualiza Fatura
		MInvoice invoice = new MInvoice(ctx,C_Invoice_ID,trx);
		invoice.set_ValueOfColumn("C_BankAccount_ID", null);
		invoice.set_ValueOfColumn("lbr_IsBillPrinted", false);
		if (!invoice.save(trx)){
			log.log(Level.SEVERE, null, invoice);
		}
	}
	
	/**
	 * 		Check if this Boleto has a valid Discount configuration.
	 * 		To be valid the discount date has to be before the due date, also
	 * 	the amount of discount has to be positive and less than grand total.
	 * 	@return true if valid discount, false other else
	 */
	public boolean hasValidDiscount ()
	{
		if (getDiscountAmt() != null 
				&& getDiscountAmt().signum() == 1
				&& getDiscountAmt().compareTo(getGrandTotal()) == -1
				&& getDiscountDate() != null
				&& getDiscountDate().before(getDueDate()))
			return true;
		return false;
	}	//	hasValidDiscount
	
	/**
	 * 	Get discount amount only when the discount is valid.
	 *  Case the discount is not valid, zero is returned
	 * 	@return zero or discount amount
	 */
	public BigDecimal getValidDiscountAmt ()
	{
		if (!hasValidDiscount())
			return Env.ZERO;
		return getDiscountAmt();
	}	//	getValidDiscountAmt
	
	/**
	 * 	Get discount date only when the discount is valid.
	 *  Case the discount is not valid, null is returned
	 * 	@return null or discount date
	 */
	public Timestamp getValidDiscountDate ()
	{
		if (!hasValidDiscount())
			return null;
		return getDiscountDate();
	}	//	getValidDiscountDate
	
	/**
	 * 	Get valid address district (bairro)
	 * 	@return address
	 */
	public String getDistrict ()
	{
		if (getAddress3() == null)
			return "";
		return TextUtil.retiraEspecial (getAddress3().toUpperCase());
	}	//	getValidDistrict
	
	/**
	 * 	Get valid address complement (complemento)
	 * 	@return address
	 */
	public String getCompl ()
	{
		if (getAddress4() == null)
			return "";
		return TextUtil.retiraEspecial (getAddress4().toUpperCase());
	}	//	getValidCompl
	
	/**
	 * 	Get valid city
	 * 	@return address
	 */
	public String getValidCity ()
	{
		if (getCity() == null)
			return "";
		return TextUtil.retiraEspecial (getCity().toUpperCase());
	}	//	getValidCity
	
	/**
	 * 	Get valid postal (cep) with 8 digits
	 * 	@return address
	 */
	public String getValidPostal ()
	{
		if (getPostal() == null)
			return TextUtil.lPad (0, 8);
		//
		String numeric = TextUtil.toNumeric (getPostal());
		if (numeric == null || numeric.length() != 8)
			return TextUtil.lPad (0, 8);
		//
		return numeric;
	}	//	getValidCity
	
	/**
	 * 	Get begin of postal (cep) with 5 digits
	 * 	@return postal begin
	 */
	public String getPostalBegin ()
	{
		return getValidPostal ().substring (0, 5);
	}	//	getValidPostalBegin
	
	/**
	 * 	Get end of postal (cep) with 3 digits
	 * 	@return postal end
	 */
	public String getPostalEnd ()
	{
		return getValidPostal ().substring (3);
	}	//	getValidPostalEnd
	
	/**
	 * 	Get the valid Receiver Name
	 * 	@return
	 */
	public String getReceiverName()
	{
		return TextUtil.retiraEspecial (super.getlbr_ReceiverName ());
	}	//	getReceiverName
}	//	MLBRBoleto
