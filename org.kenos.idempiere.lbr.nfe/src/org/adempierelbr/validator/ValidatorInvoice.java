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
package org.adempierelbr.validator;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.Timestamp;
import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRCFOP;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.model.MLBRTax;
import org.adempierelbr.model.MPaymentTerm;
import org.adempierelbr.process.PrintFromXML;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_ClientInfo;
import org.adempierelbr.wrapper.I_W_C_DocType;
import org.adempierelbr.wrapper.I_W_C_Invoice;
import org.adempierelbr.wrapper.I_W_C_InvoiceLine;
import org.adempierelbr.wrapper.I_W_C_Order;
import org.adempierelbr.wrapper.I_W_C_OrderLine;
import org.adempierelbr.wrapper.I_W_M_InOut;
import org.compiere.model.MAllocationHdr;
import org.compiere.model.MAllocationLine;
import org.compiere.model.MClient;
import org.compiere.model.MClientInfo;
import org.compiere.model.MDocType;
import org.compiere.model.MInOut;
import org.compiere.model.MInOutLine;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MInvoicePaySchedule;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MPInstance;
import org.compiere.model.MRMA;
import org.compiere.model.MStorageOnHand;
import org.compiere.model.MSysConfig;
import org.compiere.model.MTax;
import org.compiere.model.MWarehouse;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.process.DocAction;
import org.compiere.process.ProcessInfo;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.kenos.idempiere.lbr.base.model.MLBRTaxHold;
import org.kenos.idempiere.lbr.base.model.SysConfig;

/**
 * ValidatorInvoice
 *
 * Validate Invoice (Tax Calculation)
 *
 * [ 1967069 ] LBR_Tax não é excluído quando excluí uma linha, mgrigioni
 * [ 2200626 ] Lista de Preço Brasil, mgrigioni
 *
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *		
 * 	@author Mario Grigioni (Kenos, www.kenos.com.br)
 * 	@contributor Fernando Lucktemberg (Faire, www.faire.com.br)
 * 	@version $Id: ValidatorInvoice.java, 04/01/2008 15:56:00 mgrigioni
 *          BF: 1928906 - amontenegro
 */
public class ValidatorInvoice implements ModelValidator
{
	/** Logger */
	private static CLogger	log				= CLogger.getCLogger(ValidatorInvoice.class);
	/** Client */
	private int				m_AD_Client_ID	= -1;

	/**
	 *	Initialize Validation
	 *	@param engine validation engine
	 *	@param client client
	 */
	public void initialize (ModelValidationEngine engine, MClient client)
	{
		if (client != null) 
		{
			m_AD_Client_ID = client.getAD_Client_ID();
			log.info(client.toString());
		}
		else  
			log.info("Initializing global validator: "+this.toString());
		
		engine.addModelChange(MInvoice.Table_Name, this);
		engine.addModelChange(MInvoiceLine.Table_Name, this);

		engine.addDocValidate(MInvoice.Table_Name, this);
	}	//	initialize

	/**
	 * Get Client to be monitored
	 *
	 * @return AD_Client_ID client
	 */
	public int getAD_Client_ID()
	{
		return m_AD_Client_ID;
	} 	// 	getAD_Client_ID

	/**
	 * User Login. Called when preferences are set
	 *
	 * @param AD_Org_ID
	 *            org
	 * @param AD_Role_ID
	 *            role
	 * @param AD_User_ID
	 *            user
	 * @return error message or null
	 */
	public String login (int AD_Org_ID, int AD_Role_ID, int AD_User_ID)
	{
		log.info ("AD_User_ID=" + AD_User_ID);
		return null;
	} 	// 	login

	/**
	 * Model Change of a monitored Table. Called after
	 * PO.beforeSave/PO.beforeDelete when you called addModelChange for the
	 * table
	 *
	 * @param po
	 *            persistent object
	 * @param type
	 *            TYPE_
	 * @return error message or null
	 * @exception Exception
	 *                if the recipient wishes the change to be not accept.
	 */
	public String modelChange (PO po, int type) throws Exception
	{
		log.info(po.get_TableName() + " Type: "+type);

		/**
		 * 	Copia as informações do pedido
		 */
		if (po.get_TableName().equals(MInvoice.Table_Name))
			return modelChange((MInvoice) po, type);

		/**
		 * 	Apaga os registros dos impostos quando a linha é apagada
		 */
		else if (po.get_TableName().equals(MInvoiceLine.Table_Name))
			return modelChange ((MInvoiceLine) po, type);

		return null;
	} 	// 	modelChange

	/**
	 * 	Copia as informações do pedido
	 * 
	 * @param invoice
	 * @return
	 * @throws Exception
	 */
	public String modelChange (MInvoice invoice, int type) throws Exception
	{
		//	Validar a conta bancária
		if (type == TYPE_BEFORE_NEW || (type == TYPE_BEFORE_CHANGE 
				&& invoice.is_ValueChanged (I_W_C_Invoice.COLUMNNAME_C_BankAccount_ID)))
		{
			I_W_C_Invoice iW = POWrapper.create(invoice, I_W_C_Invoice.class);
			//
			if (iW.getC_BankAccount_ID() > 0 
					&& iW.getC_BankAccount().getAD_Org_ID() > 0
					&& iW.getC_BankAccount().getAD_Org_ID() != iW.getAD_Org_ID())
			{
				//	Não permitir conta bancária para organização diferente
				invoice.set_ValueOfColumn(I_W_C_Invoice.COLUMNNAME_C_BankAccount_ID, null);
			}
		}
			
		int C_Order_ID = invoice.getC_Order_ID();
		int M_RMA_ID = invoice.getM_RMA_ID()
				;
		if ((C_Order_ID <= 0 && M_RMA_ID <=0) || (type != TYPE_BEFORE_NEW && type != TYPE_BEFORE_CHANGE))
			return null;

		//	Se o campo Pedido for alterado, atualizar a Fatura com base no pedido.
		//	Esse campo é somente leitura e só pode ser alterado pelo processo criar linhas a partir de.
		if (invoice.is_ValueChanged(MInvoice.COLUMNNAME_C_Order_ID))
		{	
			MOrder order = new MOrder(invoice.getCtx(), C_Order_ID, invoice.get_TrxName());
			I_W_C_Order wOrder = POWrapper.create (order, I_W_C_Order.class);
			I_W_C_Invoice wInvoice = POWrapper.create (invoice, I_W_C_Invoice.class);
			
			//	Transaction Type
			wInvoice.setlbr_TransactionType(wOrder.getlbr_TransactionType());
			
			//	Freight Cost
			wInvoice.setLBR_FreightCostRule(wOrder.getLBR_FreightCostRule());
			
			//	Payment Rule
			wInvoice.setlbr_PaymentRule(wOrder.getlbr_PaymentRule());
			
			//	NF de Entrada
			if (wOrder.getlbr_NFEntrada() != null && !wOrder.getlbr_NFEntrada().isEmpty())
				wInvoice.setlbr_NFEntrada(wOrder.getlbr_NFEntrada());
			
			//	Bill Note
			wInvoice.setlbr_BillNote(wOrder.getlbr_BillNote());
			
			//	Shipment Note
			wInvoice.setlbr_ShipNote(wOrder.getlbr_ShipNote());
			
			//	Billing Bank Account
			if (wOrder.getC_BankAccount_ID() > 0)
				wInvoice.setC_BankAccount_ID(wOrder.getC_BankAccount_ID());
			
			//	Indication of presence of the customer at sales point
			wInvoice.setLBR_IndPres(wOrder.getLBR_IndPres());
				
			//	Has tax Withhold
			wInvoice.setLBR_HasWithhold(wOrder.isLBR_HasWithhold());
		}
		else if (invoice.is_ValueChanged(MInvoice.COLUMNNAME_M_RMA_ID) || type == TYPE_BEFORE_NEW)
		{
			I_W_C_Invoice invoiceW = POWrapper.create(invoice, I_W_C_Invoice.class);
			
			//	If Transaction Type is Null get From the Origin Order
			if (invoiceW.getlbr_TransactionType() == null)
			{
				MRMA rma = (MRMA) invoice.getM_RMA();
				
				MOrder originalOrder = (MOrder) rma.getInOut().getC_Order();
				I_W_C_Order originalOrderW = POWrapper.create(originalOrder, I_W_C_Order.class);
				
				invoiceW.setlbr_TransactionType(originalOrderW.getlbr_TransactionType());
			}
		}

		return null;
	}	//	modelChange

	/**
	 *		- Apaga os registros dos impostos quando a linha é apagada
	 *		- Copia as informações do pedido
	 *
	 * @param 	iLine 	MInvoiceLine
	 * @param 	type	Timing
	 * @return	null or error msg
	 * @throws Exception
	 */
	public String modelChange (MInvoiceLine iLine, int type) throws Exception
	{
		I_W_C_InvoiceLine iLineW = POWrapper.create(iLine, I_W_C_InvoiceLine.class);
		
		/**
		 * 	Apaga os registros dos impostos quando a linha é apagada
		 */
		if (type == TYPE_BEFORE_DELETE)
		{
			if (iLineW.getLBR_Tax_ID() > 0)
			{
				MLBRTax lbrTax = new MLBRTax(iLine.getCtx(), iLineW.getLBR_Tax_ID() , iLine.get_TrxName());
				lbrTax.delete(true, iLine.get_TrxName());
			}
		}
		
		/**
		 * 	Copia as informações do pedido
		 */
		else if (type == TYPE_BEFORE_NEW && iLineW.getLBR_Tax_ID() == 0)
		{
			int C_OrderLine_ID = iLine.getC_OrderLine_ID();
			if (C_OrderLine_ID != 0)
			{
				MOrderLine oLine = new MOrderLine(Env.getCtx(), C_OrderLine_ID, iLine.get_TrxName());
				I_W_C_OrderLine wOLine = POWrapper.create (oLine, I_W_C_OrderLine.class);
				
				// CFOP, Sit. Tributária, Mensagem Legal
				if (iLineW.getLBR_CFOP_ID() <= 0 && wOLine.getLBR_CFOP_ID() > 0)
					iLineW.setLBR_CFOP_ID (wOLine.getLBR_CFOP_ID());

				if (iLineW.getLBR_LegalMessage_ID() <= 0 && wOLine.getLBR_LegalMessage_ID() > 0)
					iLineW.setLBR_LegalMessage_ID (wOLine.getLBR_LegalMessage_ID());

				if (iLineW.getlbr_TaxStatus() == null || iLineW.getlbr_TaxStatus().isEmpty())
					iLineW.setlbr_TaxStatus (wOLine.getlbr_TaxStatus());

				if (iLineW.getDescription() == null || iLineW.getDescription().isEmpty())
					iLineW.setDescription(wOLine.getDescription());

				if (iLineW.getLBR_DI_ID() <= 0 && wOLine.getLBR_DI_ID() > 0)
					iLineW.setLBR_DI_ID(wOLine.getLBR_DI_ID());
				
				if (iLineW.getLBR_ADILine_ID() <= 0 && wOLine.getLBR_ADILine_ID() > 0)
					iLineW.setLBR_ADILine_ID(wOLine.getLBR_ADILine_ID());
				
				//
				int LBR_Tax_ID = wOLine.getLBR_Tax_ID();
				if (LBR_Tax_ID != 0)
				{
					MLBRTax oTax = new MLBRTax (Env.getCtx(), LBR_Tax_ID, iLine.get_TrxName());
					MLBRTax newTax = oTax.copyTo();
					//
					iLineW.setLBR_Tax_ID (newTax.getLBR_Tax_ID());
				}
			}
			
			int M_InOutLine_ID = iLine.getM_InOutLine_ID();
			if (M_InOutLine_ID > 0)
			{
				MInOutLine iol = new MInOutLine(Env.getCtx(), M_InOutLine_ID, iLine.get_TrxName());
				MInOut io = (MInOut)iol.getM_InOut();
				
				I_W_M_InOut wInOut = POWrapper.create (io, I_W_M_InOut.class);
				if (wInOut.getlbr_NFEntrada() != null && !wInOut.getlbr_NFEntrada().isEmpty())
				{
					MInvoice invoice = (MInvoice)iLine.getC_Invoice();
					I_W_C_Invoice invoiceW = POWrapper.create(invoice, I_W_C_Invoice.class);
					if (invoiceW.getlbr_NFEntrada() == null ||
							invoiceW.getlbr_NFEntrada().isEmpty())
					{
						invoiceW.setlbr_NFEntrada(wInOut.getlbr_NFEntrada());
						invoice.saveEx();
					}					
				}
			}
			
			// Adicionar Taxa Padrão (BR) na Linha do Tipo Descrição
			if (iLine.isDescription() && iLineW.getC_Tax_ID() == 0)
			{
				MTax tax = (MTax) new Query(Env.getCtx(), MTax.Table_Name, "AD_Client_ID=? AND IsDefault='Y'", iLine.get_TrxName())
							.setParameters(iLineW.getAD_Client_ID())
							.first();
				
				iLineW.setC_Tax_ID(tax.getC_Tax_ID());
			}
			
		}	//	new	
		
		//	Invoice Created from RMA using process Create From, don't fill M_RMA_ID on the Invoice's Header
		else if (type == TYPE_BEFORE_NEW && iLineW.getM_RMALine_ID() > 0)
		{
			MInvoice invoice = (MInvoice) iLineW.getC_Invoice();
			I_W_C_Invoice invoiceW = POWrapper.create(invoice, I_W_C_Invoice.class);
			
			//	If RMA is Null fill it
			if (invoiceW.getM_RMA_ID() == 0)
			{
				invoiceW.setM_RMA_ID( iLineW.getM_RMALine().getM_RMA_ID());
				invoice.save();
			}
			
			try
            {
            	 // Freight
                BigDecimal freightamt = iLineW.getM_RMALine().getM_InOutLine().getC_OrderLine().getFreightAmt();
                
                if (BigDecimal.ZERO.compareTo(freightamt) < 0)
                	iLineW.setFreightAmt(freightamt);
            }
            catch(Exception e)
            {
            	log.fine("Erro to set Freight on Invoice " + iLineW.getC_Invoice_ID());
            }
		}
		//
		return null;
	} 	//	modelChange

	/**
	 * Validate Document. Called as first step of DocAction.prepareIt when you
	 * called addDocValidate for the table. Note that totals, etc. may not be
	 * correct.
	 *
	 * @param po
	 *            persistent object
	 * @param timing
	 *            see TIMING_ constants
	 * @return error message or null
	 */
	public String docValidate (PO po, int timing)
	{
		if (MInvoice.Table_Name.equals(po.get_TableName()))
			return docValidate ((MInvoice) po, timing);
		//
		return null;
	}	//	docValidate
	
	/**
	 * Validate Document. Called as first step of DocAction.prepareIt when you
	 * called addDocValidate for the table. Note that totals, etc. may not be
	 * correct.
	 *
	 * @param po
	 *            persistent object
	 * @param timing
	 *            see TIMING_ constants
	 * @return error message or null
	 */
	public String docValidate (MInvoice invoice, int timing)
	{
		Properties ctx 		= invoice.getCtx();
		String     trxName 	= invoice.get_TrxName();

		I_W_C_Invoice wInvoice = POWrapper.create (invoice, I_W_C_Invoice.class);
		I_W_C_DocType wDocType = POWrapper.create (new MDocType(ctx, invoice.getC_DocTypeTarget_ID(), trxName), I_W_C_DocType.class);
		
		/**
		 * 	Antes de Preparar:
		 * 		Se Total Geral do Pedido for Diferente do Total Geral da Fatura
		 * 		Programação de Pagamento possívelmente irá apresentar erro
		 * 		Nessa situação, deletar a programação de pagamento para ser Re-criada no Preparar da Fatura
		 */
		if (timing == TIMING_BEFORE_PREPARE)
		{			
			MOrder order = (MOrder) invoice.getC_Order();
			
			if ((order != null && order.getC_Order_ID() > 0 &&
					!order.getGrandTotal().equals(invoice.getGrandTotal())) ||
					(! (MInvoice.PAYMENTRULE_OnCredit.equals(invoice.getPaymentRule()) 
							|| MInvoice.PAYMENTRULE_DirectDebit.equals(invoice.getPaymentRule()))))
			{
				MInvoicePaySchedule[] schedule = MInvoicePaySchedule.getInvoicePaySchedule
						(invoice.getCtx(), invoice.getC_Invoice_ID(), 0, invoice.get_TrxName());
						
						for (MInvoicePaySchedule s : schedule)
						{
							s.deleteEx(true);
						}
			}
		}
			
		/**
		 * 	Após preparar executa:
		 * 		Validação do número da Nota Fiscal de Entrada
		 */
		else if (timing == TIMING_BEFORE_COMPLETE)
		{
			/**
			 * 	Quando gera documento fiscal de terceiros E
			 * 		o campo de NF de Entrada está vazio E
			 * 		não é uma fatura de estorno
			 */
			String reference = wInvoice.getlbr_NFEntrada();
			//
			if (wDocType.islbr_HasFiscalDocument() 
					&& MLBRNotaFiscal.LBR_ISOWNDOCUMENT_IssuedBy3rdParty.equals(wDocType.getlbr_IsOwnDocument())
					&& (reference == null || reference.trim().isEmpty() || !reference.trim().matches("^\\d{1,9}-\\d{1,3}$"))
					&& !invoice.isReversal())
			{
				return "@FillMandatory@ @lbr_NFEntrada@. Deve seguir o formato Número-Série (123456789-123), ex: 1010-9 indica NF 1010 da série 9. Caso a NF não possua série, preencher com 0";
			}
		}	//	AFTER PREPARE

		/**
		 * 	Após completar executa:
		 * 		1 - Validação da Condição de Pagamento
		 * 		2 - Alocação de Faturas que não geram itens em aberto
		 * 		3 - Gera o registro para a janela de NF
		 * 		4 - Ajusta o Product Filler (Verificar se vai ser mantido)
		 * 		5 - Validação da Quantidade Faturada contra Quantidade Entregue
		 */
		else if (timing == TIMING_AFTER_COMPLETE)
		{
			/**
			 * 	1 - Validação da Condição de Pagamento
			 */
			if (!invoice.validatePaySchedule() ||
					(! (MInvoice.PAYMENTRULE_OnCredit.equals(invoice.getPaymentRule()) 
							|| MInvoice.PAYMENTRULE_DirectDebit.equals(invoice.getPaymentRule()))))
			{
				MPaymentTerm pt = new MPaymentTerm(invoice.getCtx(), invoice.getC_PaymentTerm_ID(), null);
				log.fine(pt.toString());
				pt.apply(invoice);
				
				//	Salva para que os processos futuros tenham acesso a condição de pagamento aplicada
				invoice.save();
			}
			/**
			 * 	2 - Alocação de Faturas que não geram itens em aberto
			 */
			if (!wDocType.islbr_HasOpenItems() && !invoice.isReversal())
			{
				invoice.setC_Payment_ID(0);
				invoice.setIsPaid(true);

				//	Create Allocation
				MAllocationHdr alloc = new MAllocationHdr (ctx, false, invoice.getDateAcct(), invoice.getC_Currency_ID(), Msg.translate(ctx, "C_Invoice_ID") + ": " + invoice.getDocumentNo() + "/", trxName);
				alloc.setAD_Org_ID(invoice.getAD_Org_ID());
				if (alloc.save())
				{
					// Amount
					BigDecimal gt = invoice.getGrandTotal(true);
					if (!invoice.isSOTrx())
						gt = gt.negate();
					// Orig Line
					MAllocationLine aLine = new MAllocationLine(alloc, gt, Env.ZERO, Env.ZERO, Env.ZERO);
					aLine.setC_Invoice_ID(invoice.getC_Invoice_ID());
					aLine.save();
					// Process It
					if (alloc.processIt(DocAction.ACTION_Complete))
						alloc.save();
				}
			} 	//	create automatically allocation

			/**
			 * 	3 - Gera o registro para a janela de NF
			 */
			if (wDocType.islbr_HasFiscalDocument() && !invoice.isReversal()) 
			{
				//	Força o Documento Próprio para as Faturas de Saída ou para Memorando de Crédito de Entrada
				boolean isOwnDocument = (wDocType.getDocBaseType().equals(MDocType.DOCBASETYPE_APCreditMemo) || wDocType.getDocBaseType().equals(MDocType.DOCBASETYPE_ARInvoice)) 
						? Boolean.TRUE : MLBRNotaFiscal.LBR_ISOWNDOCUMENT_IssuedByUsOwnDocument.equals(wDocType.getlbr_IsOwnDocument());

				//	Cria e processa as informações para a tabela de NF
				MLBRNotaFiscal nf = new MLBRNotaFiscal (Env.getCtx(), 0, invoice.get_TrxName());
				nf.generateNF(invoice, isOwnDocument);
				nf.m_justCreated = true;
				nf.save();
				
				//	Gera o XML da NF-e efetuando a ação Preparar na NF
				try
				{
					nf.prepareIt();
					nf.setDocStatus(MLBRNotaFiscal.DOCSTATUS_InProgress);
					nf.setDocAction(MLBRNotaFiscal.DOCACTION_Complete);
					nf.saveEx();
					
					//	Verificar se o campo Completar NF Automaticamente está marcado no Tipo de Documento da Fatura
					//	Se marcado, Todas as Notas geradas através  da fatura serão completadas automaticamente
					Boolean generateNFAut = wDocType.islbr_IsAutomaticNF();					
					
					if (!generateNFAut)
					{
						//	Se não estiver definido no Tipo de Documento da fatura, 
						//	verificar se o campo está marcado no Tipo de Documento da Nota Fiscal
						//	Se estiver, apenas as NFs da Organização do Tipo de Documento serão completadas automaticamente.
						I_W_C_DocType wDocTypeNF = POWrapper.create (new MDocType(ctx, nf.getC_DocTypeTarget_ID(), trxName), I_W_C_DocType.class);
						generateNFAut = wDocTypeNF.islbr_IsAutomaticNF();
					}
					
					//	Completa a NFe automaticamente
					if (generateNFAut)
					{
						String status = null;
						
						try
						{
							status = nf.completeIt();
							nf.saveEx();
						}
						catch (Exception e)
						{
							log.warning("Falha na geração/validação da NF automaticamente");
						}
						
						//	Se completado corretamente, iniciar impressão
						if (MLBRNotaFiscal.DOCSTATUS_Completed.equals(status))
						{
							MPInstance instance = new MPInstance (ctx, 1120040, nf.getLBR_NotaFiscal_ID());
							instance.save();
							
							ProcessInfo pInfo = new ProcessInfo("Impressão da NF-e e NFC-e", 1120040);
							pInfo.setRecord_ID(nf.getLBR_NotaFiscal_ID());
							pInfo.setTable_ID(MLBRNotaFiscal.Table_ID);
							pInfo.setAD_Process_ID(1120040);
							pInfo.setAD_PInstance_ID(instance.get_ID());
							
							Trx.get (nf.get_TrxName(), false).commit();
							new PrintFromXML().startProcess(ctx, pInfo, null);
						}
					}
				}
				catch (Exception e) 
				{
					log.warning ("Erro ao preparar a NF");
				}
			}	//	geração de Documento Fiscal
			
			/**
			 * 	4 - Validação da Quantidade Faturada contra Quantidade Entregue
			 */
			if (!invoice.isReversal())
			{
				for (MInvoiceLine iLine : invoice.getLines())
				{
					// Calcular ICMS Substituto. ICMS Substituto contém o ICMS do Parceiro de Negócio que emitiu uma Nota Fiscal com ICMSST, ou seja,
					// cobrando antecipadamente o ICMS do consumidor final na revenda.
					// Deve ser informado quando houver ICMSST, Situação Tributária 60
					holdTax (iLine);
					
					//	Somente para faturamento baseado nas entregas
					if (iLine.getM_InOutLine_ID() <= 0)
						continue;
					//
					MInOutLine ioLine = new MInOutLine (ctx, iLine.getM_InOutLine_ID(), trxName);
					
					if (iLine.getQtyEntered().compareTo (ioLine.getQtyEntered()) != 0)
						return "A quantidade da Linha "+iLine.getLine()+" deve ser igual a quantidade entregue.";
				}
			}
			
			/**
			 * Generate Receipt automatically
			 */
			if (!invoice.isReversal())
			{
				String     trx = invoice.get_TrxName();
				
				//InOut Document Type
				MDocType dt = MDocType.get (ctx, invoice.getC_DocType_ID());
				I_W_C_DocType dtW = POWrapper.create(dt, I_W_C_DocType.class);
				
				if (dtW.islbr_IsAutomaticShipment())
				{				
					// Base Type from InOut Document Type
					String DocBaseType = dt.getDocBaseType();
					
					//	Order
					MOrder order = null;
					
					// RMA
					MRMA rma = null;
					
					// Document Type from Order or RMA
					MDocType dtOrderRma = null;
					I_W_C_DocType dtOrderRmaW = null;
					
					// If order
					if ( invoice.getC_Order_ID() > 0)
					{
						order   = (MOrder) invoice.getC_Order();
						dtOrderRma = MDocType.get (ctx, order.getC_DocTypeTarget_ID());
						dtOrderRmaW = POWrapper.create(dtOrderRma, I_W_C_DocType.class);
					} // Else RMA
					else if (invoice.getM_RMA_ID() > 0)
					{
						rma = (MRMA) invoice.getM_RMA();
						dtOrderRma = MDocType.get (ctx, rma.getC_DocType_ID());
						dtOrderRmaW = POWrapper.create(dtOrderRma, I_W_C_DocType.class);
					}
					
					//	O Tipo de Documento do Pedido ou ARM relacionado a Tipo de Documento da Fatura não deve estar marcado para gerar Remessa automática
					//	Utilizado nas Faturas
					if (dtOrderRma != null && !dtOrderRmaW.islbr_IsAutomaticInvoice() && DocBaseType != null && (DocBaseType.equals(MDocType.DOCBASETYPE_APInvoice)))
					{
						MInOut shipment = null;
	
						//	Invoice
						if (dtW.islbr_IsAutomaticShipment())
							// Apenas Regra de Entrega Pedido Completo ou Forçar podem gerar Expedição Automatica
							// Forçar Pedido Completo se a Regra for Invalida para Geração Automática
							if (!MOrder.DELIVERYRULE_CompleteOrder.equals(order.getDeliveryRule())
								&& !MOrder.DELIVERYRULE_Force.equals(order.getDeliveryRule()))
								order.setDeliveryRule(MOrder.DELIVERYRULE_CompleteOrder);
							
							shipment = createShipment(invoice, order.getDateOrdered());
	
						//	Complete
						if (shipment != null)
						{
							String status = shipment.completeIt();
							shipment.setDocStatus(status);
							shipment.save(trx);
							if (!MOrder.DOCSTATUS_Completed.equals(status))
								return shipment.getProcessMsg();
						}
					}
				}
			}	//	After Complete
		}	//	TIMING_AFTER_COMPLETE

		/**
		 * 	Antes de reativar, anular, fechar ou estornar executa:
		 * 		Valida os vínculos de Retenção, antes de liberar a reativação
		 */
		else if ((timing == TIMING_BEFORE_REACTIVATE || timing == TIMING_BEFORE_VOID || timing == TIMING_BEFORE_CLOSE || timing == TIMING_BEFORE_REVERSECORRECT))
		{
			int whInvoice = wInvoice.getLBR_Withhold_Invoice_ID();
			//
			if (whInvoice != 0 && whInvoice != invoice.getC_Invoice_ID())
				return "Não é possível re-abrir uma Fatura que tem Retenções de outra Fatura.";
			
			//	Não Permite Estornar Fatura ligada a uma Nota Fiscal Válida
			if (!MSysConfig.getBooleanValue(SysConfig.LBR_ALLOW_REVERSE_INVOICE_WITH_NF, false, wInvoice.getAD_Client_ID()))
			{
				for (MLBRNotaFiscal nf : MLBRNotaFiscal.get(invoice.getCtx(), invoice.getC_Invoice_ID(), trxName))
					if (!nf.allowReverseDocs())
						return "Não é possível estornar uma Fatura, cancele as Notas Fiscais vinculadas primeiro.";
			}
		}

		return null;
	}	//	docValidate
	
	/**
	 * Calcular ICMS Substituto tanto para Entrada como para Saída
	 * 
	 * Calcular ICMS Substituto. ICMS Substituto contém o ICMS do Parceiro de Negócio que emitiu uma Nota Fiscal com ICMSST, ou seja,
	 * cobrando antecipadamente o ICMS do consumidor final na revenda.
	 * Deve ser informado quando houver ICMSST, Situação Tributária 60
	 * @param iLine
	 */
	public void holdTax (MInvoiceLine iLine)
	{
		MInvoice invoice = (MInvoice) iLine.getC_Invoice();
		if (invoice.isReversal())
			return;
		
		I_W_C_InvoiceLine wil = POWrapper.create(iLine, I_W_C_InvoiceLine.class);
		MLBRTax tax = new MLBRTax(Env.getCtx(), wil.getLBR_Tax_ID(), iLine.get_TrxName());
		
		//	Do not consider reversal values of ICMS
		if (invoice.isReversal())
			return;

		//	Quantidade Faturada
		BigDecimal qtyInvoiced = iLine.getQtyInvoiced();
		if (qtyInvoiced.signum() != 1)
			return;
		
		//	NF In
		if (!invoice.isSOTrx() && wil.getLBR_CFOP_ID() > 0 && TextUtil.match(tax.getICMSSTTaxCST(), "10", "60", "70"))
		{
			//	CFOPs de Substituição
			MLBRCFOP cfop = new MLBRCFOP (Env.getCtx(), wil.getLBR_CFOP_ID(), null);
			if (!cfop.getValue().trim().matches("[12]\\.4\\d{2}"))
				return;
			
			MLBRTaxHold hold = new MLBRTaxHold (Env.getCtx(), 0, null);
			hold.setAD_Org_ID(iLine.getAD_Org_ID());
			hold.setM_Product_ID(iLine.getM_Product_ID());
			hold.setValidFrom(invoice.getDateAcct());
			hold.setQty(qtyInvoiced);
			
			//	ICMS ST
			hold.setICMSST_TaxBaseAmt(tax.getICMSSTTaxBaseAmt().divide(qtyInvoiced, 17, RoundingMode.HALF_UP));
			hold.setICMSST_TaxAmt(tax.getICMSSTTaxAmt().divide(qtyInvoiced, 17, RoundingMode.HALF_UP));
			hold.setICMSST_TaxRate(tax.getICMSSTTaxRate());
			
			//	ICMS
			hold.setICMS_TaxBaseAmt(tax.getICMSTaxBaseAmt().divide(qtyInvoiced, 17, RoundingMode.HALF_UP));
			hold.setICMS_TaxAmt(tax.getICMSTaxAmt().divide(qtyInvoiced, 17, RoundingMode.HALF_UP));
			hold.setICMS_TaxRate(tax.getICMSTaxRate());
			
			//	FCP
			hold.setFCP_TaxBaseAmt(tax.getFCPTaxBaseAmt().divide(qtyInvoiced, 17, RoundingMode.HALF_UP));
			hold.setFCP_TaxAmt(tax.getFCPTaxAmt().divide(qtyInvoiced, 17, RoundingMode.HALF_UP));
			hold.setFCP_TaxRate(tax.getFCPTaxRate());
			
			//	Reference
			hold.setC_InvoiceLine_ID(iLine.getC_InvoiceLine_ID());
			
			MLBRNotaFiscalLine nfl = new Query (Env.getCtx(), MLBRNotaFiscalLine.Table_Name, MLBRNotaFiscalLine.COLUMNNAME_C_InvoiceLine_ID+"=?", iLine.get_TrxName())
				.setParameters(iLine.getC_InvoiceLine_ID())
				.list()
				.stream()
				.map(MLBRNotaFiscalLine.class::cast)
				.filter(l -> TextUtil.match(l.getLBR_NotaFiscal().getDocStatus(), MLBRNotaFiscal.DOCSTATUS_Completed))
				.findFirst()
				.orElse(new MLBRNotaFiscalLine (Env.getCtx(), 0, null));	//	Not Null allowed
			//
			if (nfl.get_ID() > 0)
			{
				hold.setlbr_NFeID(nfl.getLBR_NotaFiscal().getlbr_NFeID());
				hold.setReferenceNo(String.valueOf(nfl.getLine()));
			}
			
			hold.saveEx();
		}
	}	//	holdTax
	
	/**
	 * 	Create Shipment
	 *	@param dt order document type
	 *	@param movementDate optional movement date (default today)
	 *	@return shipment or null
	 */
	private MInOut createShipment (MInvoice invoice, Timestamp movementDate)
	{
		MInOut shipment = null;
		
		try
		{
			Properties ctx = invoice.getCtx();
			String     trx = invoice.get_TrxName();
			MOrder order = (MOrder)invoice.getC_Order();

			if (order.getC_DocTypeTarget().getC_DocTypeShipment_ID() < 1)
				 throw new AdempiereException("Tipo de Documento de Recebimento/Remessa não definido");
						
			I_W_C_DocType docTypeShipW = POWrapper.create((MDocType)order.getC_DocTypeTarget().getC_DocTypeShipment(), I_W_C_DocType.class);
			if (docTypeShipW.islbr_IsAutomaticInvoice())
				throw new AdempiereException("Conflito com Tipo de Documento de Recebimento/Remessa que gera Fatura Automática");
			
			shipment = new MInOut (order, order.getC_DocTypeTarget().getC_DocTypeShipment_ID(), movementDate);
			shipment.set_ValueNoCheck("lbr_NFEntrada", invoice.get_ValueAsString("lbr_NFEntrada"));
		//	shipment.setDateAcct(getDateAcct());
			if (!shipment.save(trx))
			{
				log.log(Level.SEVERE, "Could not create Shipment");
				return null;
			}
			
			//	Despesas Adicionais
			MClientInfo cInfo = MClientInfo.get (invoice.getCtx(), invoice.getAD_Client_ID());
			I_W_AD_ClientInfo cInfoW = POWrapper.create(cInfo, I_W_AD_ClientInfo.class);
			
			//
			MInvoiceLine[] iLines = invoice.getLines();
			for (int i = 0; i < iLines.length; i++)
			{
				MInvoiceLine iLine = iLines[i];
				
				/**
				 * 	Estes valores já foram ajustado no nível do cabeçalho,
				 * 		portanto devem ser ignorados
				 */
				if (iLine.getM_Product_ID() > 0
						&& (iLine.getM_Product_ID() == cInfoW.getM_ProductFreight_ID()
						|| iLine.getM_Product_ID() == cInfoW.getLBR_ProductInsurance_ID()
						|| iLine.getM_Product_ID() == cInfoW.getLBR_ProductOtherCharges_ID()
						|| iLine.getM_Product_ID() == cInfoW.getLBR_ProductSISCOMEX_ID()
						|| iLine.getM_Product_ID() == cInfoW.getLBR_ProductWithhold_ID()))
					continue;
				
				MOrderLine oLine = (MOrderLine)iLine.getC_OrderLine();
				//
				MInOutLine ioLine = new MInOutLine(shipment);
				//	Qty = Ordered - Delivered
				BigDecimal MovementQty = iLine.getQtyInvoiced();						
				if (MovementQty.signum() == 0)
					continue;
	
				//	Location
				Integer M_Locator_ID = (Integer)oLine.get_Value("M_Locator_ID");
				if (M_Locator_ID == null || M_Locator_ID.intValue() == 0){
					M_Locator_ID = MStorageOnHand.getM_Locator_ID (oLine.getM_Warehouse_ID(),
						iLine.getM_Product_ID(), iLine.getM_AttributeSetInstance_ID(),
						MovementQty, trx);
				}
				if (M_Locator_ID == 0)		//	Get default Location
				{
					if (iLine.getM_Product() != null && iLine.getM_Product().getM_Locator_ID() > 0)
						M_Locator_ID = iLine.getM_Product().getM_Locator_ID();
					else
					{
						MWarehouse wh = MWarehouse.get(ctx, oLine.getM_Warehouse_ID());
						M_Locator_ID = wh.getDefaultLocator().getM_Locator_ID();
					}
				}
				//
				ioLine.setOrderLine(oLine, M_Locator_ID, MovementQty);
				ioLine.setQty(MovementQty);
				if (oLine.getQtyEntered().compareTo(oLine.getQtyOrdered()) != 0)
					ioLine.setQtyEntered(MovementQty
						.multiply(oLine.getQtyEntered())
						.divide(oLine.getQtyOrdered(), 6, RoundingMode.HALF_UP));
				if (!ioLine.save(trx))
				{
					log.log(Level.SEVERE, "Could not create Shipment Line");
					return null;
				}
				
				iLine.setM_InOutLine_ID(ioLine.getM_InOutLine_ID());
				iLine.save();
			}
			
			if (shipment.getLines().length == 0)
			{
				shipment.delete(true);
				return null;
			}
			
		}
		catch (Exception e)
		{
			e.printStackTrace();
			throw new AdempiereException(e.getMessage());
		}
		return shipment;
	}	//	createShipment
}	//	ValidatorInvoice
