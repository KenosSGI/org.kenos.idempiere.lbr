package org.kenos.idempiere.lbr.tax.process;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRTax;
import org.adempierelbr.model.MLBRTaxLine;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.adempierelbr.wrapper.I_W_C_Invoice;
import org.adempierelbr.wrapper.I_W_C_InvoiceLine;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MCashPlan;
import org.compiere.model.MCashPlanLine;
import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MPriceList;
import org.compiere.model.MPriceListVersion;
import org.compiere.model.MProduct;
import org.compiere.model.MProductPrice;
import org.compiere.model.Query;
import org.compiere.process.DocAction;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;
import org.compiere.util.Trx;

/**
 *	Create Invoice From Cash Plan Line
 *	@version $Id: CreateFromCashPlanLine.java, v1.0 2020/12/04 12:05:44, kenos_rfeitosa Exp $
 *	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 */
public class CreateFromCashPlanLine extends SvrProcess
{
	/**	Record_ID	*/
	private int p_Record_ID; 
	
	/**	Record_ID	*/
	private int[] p_Record_IDs;
	
	/** Warehouse				*/
	private int			p_C_DocType_ID = 0;
	
	/** Consolidate				*/
	private boolean		p_ConsolidateDocument = true;
	
	/**	The current Invoice	*/
	private MInvoice 	m_invoice = null;
	
	/** Invoice Document Action	*/
	private String		p_docAction = DocAction.ACTION_Complete;
	
	private int 		p_M_PriceList_ID = 0;
	
	private int 		countInvoices = 0;
	
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals("C_DocType_ID"))
				p_C_DocType_ID = para[i].getParameterAsInt();
			else if (name.equals("ConsolidateDocument"))
				p_ConsolidateDocument = "Y".equals(para[i].getParameter());
			else if (name.equals("DocAction"))
				p_docAction = (String)para[i].getParameter();
			else if (name.equals("M_PriceList_ID"))
				p_M_PriceList_ID = para[i].getParameterAsInt();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
			
			p_Record_ID = getRecord_ID();		
			p_Record_IDs = getRecord_IDs();
		}
	}	//	prepare

	/**
	 * 	Generate Shipments
	 *	@return info
	 *	@throws Exception
	 */
	protected String doIt () throws Exception
	{
		
		if (p_M_PriceList_ID == 0)
			throw new AdempiereException("Lista de Preço Obrigatório");
			
		if (p_C_DocType_ID == 0)
			throw new AdempiereException("Tipo de Documento Obrigatório");
			
		if (p_Record_IDs.length <= 0)
		{	
			p_Record_IDs = new int[1];
			p_Record_IDs[0] =  p_Record_ID;
		}
		
		//	Create Trasaction to controll the process. If there is an error, it's necessary to force a Rollback. It will avoid problem on Storage
		String trxName = Trx.createTrxName();
		
		String where = "C_CashPlanLine_ID IN (" + p_Record_IDs[0];
		
		for (int i = 1; i < p_Record_IDs.length; i++)
			where = where + ", " + p_Record_IDs[i];
		
		where = where + ")";
		
		try
		{
			List<MCashPlanLine> cpls = new Query(Env.getCtx(), MCashPlanLine.Table_Name, where, trxName)
									.setOrderBy("C_BPartner_ID")
									.list();
			
			try
			{
				// Gerar Fatura a partir do Plajenamento de Caixa
				createInvoice (cpls, p_C_DocType_ID, p_M_PriceList_ID, trxName);
			}
			catch (Exception e)
			{
				Trx.get (trxName, false).rollback();
				return "@Error@ - " + e.getMessage();
			}					
			
			//	Salvar	
			Trx.get (trxName, false).commit();
			
			return countInvoices + " fatura(s) gerada(s)";
		}
		catch (Exception e)
		{
			Trx.get (trxName, false).rollback();
			return e.getMessage();
		}
		finally
		{
			Trx.get (trxName, false).close();			
		}
	}	//	doIt
	
	/**
	 * 	Create Invoice
	 *	@param dt order document type
	 *	@param shipment optional shipment
	 *	@param invoiceDate invoice date
	 *	@return invoice or null
	 */
	private MInvoice createInvoice (List<MCashPlanLine> cpls, int p_C_DocType_ID, int p_M_PriceList_ID, String trxName)
	{
		String     trx = trxName;
		MDocType dt = MDocType.get(Env.getCtx(), p_C_DocType_ID);

		//
		int C_BPartner_ID = 0;
		MCashPlan cp = null;
		MPriceList pl = MPriceList.get(Env.getCtx(), p_M_PriceList_ID, trxName);
		int count = 10;
		try
		{	
			for (MCashPlanLine cpl : cpls)
			{
				cp = (MCashPlan) cpl.getC_CashPlan();
				
				int c_org_id = cpl.getAD_Org_ID();
				
				if (cpl.getC_BPartner_ID() > 0)
					C_BPartner_ID = cpl.getC_BPartner_ID();
				else if (cpl.getC_CashPlan().getC_BPartner_ID() > 0)
					C_BPartner_ID = cpl.getC_BPartner_ID();
				else
					throw new AdempiereException("Parceiro de Negócio não identificado");
				
				if (m_invoice != null 
						&& (!p_ConsolidateDocument
						|| m_invoice.getC_BPartner_ID() != C_BPartner_ID))
				{
					if (!DocAction.ACTION_None.equals(p_docAction) && !m_invoice.processIt(p_docAction))
					{
						log.warning("completeInvoice - failed: " + m_invoice);
						addBufferLog(0, null, null,"completeInvoice - failed: " + m_invoice,m_invoice.get_Table_ID(),m_invoice.getC_Invoice_ID()); // Elaine 2008/11/25
						throw new IllegalStateException("Invoice Process Failed: " + m_invoice + " - " + m_invoice.getProcessMsg());
					}
					m_invoice.saveEx();
					m_invoice = null;
				}

				if (m_invoice == null)
				{
					m_invoice = new MInvoice (Env.getCtx(), 0, trxName);
					m_invoice.setAD_Org_ID(c_org_id);
					m_invoice.setC_DocTypeTarget_ID(dt.getC_DocType_ID());
					m_invoice.setDateInvoiced(cpl.getDateTrx());
					m_invoice.setDateAcct(cpl.getDateTrx());
					m_invoice.setIsSOTrx(cp.isSOTrx());
					m_invoice.setC_CashPlanLine_ID(cpl.getC_CashPlanLine_ID());
					MBPartner partner = new MBPartner(Env.getCtx(), cpl.getC_BPartner_ID(), trxName);
					I_W_C_BPartner wPartner = POWrapper.create(partner, I_W_C_BPartner.class);
					m_invoice.setC_BPartner_ID(cpl.getC_BPartner_ID());
					
					if (cp.isSOTrx() && wPartner.getM_PriceList_ID() > 0)
						p_M_PriceList_ID = wPartner.getM_PriceList_ID();
					
					else if (!cp.isSOTrx() && wPartner.getPO_PriceList_ID() > 0)
						p_M_PriceList_ID = wPartner.getPO_PriceList_ID();
					
					m_invoice.setM_PriceList_ID(p_M_PriceList_ID);
					m_invoice.setDescription("Criado a partir do Planejamento de Conta - " + cp.getDocumentNo());
					
					for (MBPartnerLocation loc : MBPartnerLocation.getForBPartner(Env.getCtx(), C_BPartner_ID, trxName))
					{
						if (loc.isBillTo())
						{
							m_invoice.setC_BPartner_Location_ID(loc.getC_BPartner_Location_ID());
							break;
						}
					}
					
					I_W_C_Invoice wInvoice = POWrapper.create(m_invoice, I_W_C_Invoice.class);
					
					if (cp.isSOTrx())
					{
						if (wPartner.getlbr_TransactionType() != null)
							wInvoice.setlbr_TransactionType(wPartner.getlbr_TransactionType());
						if (wPartner.getC_PaymentTerm_ID() > 0)
							wInvoice.setC_PaymentTerm_ID(wPartner.getC_PaymentTerm_ID());
					}
					else
					{
						if (wPartner.getlbr_TransactionTypeVendor() != null)
							wInvoice.setlbr_TransactionType(wPartner.getlbr_TransactionTypeVendor());
						if (wPartner.getPO_PaymentTerm_ID() > 0)
							wInvoice.setC_PaymentTerm_ID(wPartner.getPO_PaymentTerm_ID());
					}
					
					m_invoice.setC_CashPlanLine_ID(cpl.getC_CashPlanLine_ID());
					
					if (!m_invoice.save(trx))
					{
						log.log(Level.SEVERE, "Could not create Invoice " + cpl.getC_CashPlanLine_ID());
						continue;
					}
					countInvoices = countInvoices + 1;
					addLog(m_invoice.getC_Invoice_ID(), m_invoice.getDateInvoiced(), m_invoice.getGrandTotal(), m_invoice.getDocumentNo(), m_invoice.get_Table_ID(), m_invoice.getC_Invoice_ID());
				}
				
				MInvoiceLine iLine = new MInvoiceLine(m_invoice);
				MBPartner bp = new MBPartner(Env.getCtx(), C_BPartner_ID, trxName);
				MProductPrice pp = null;
				
				BigDecimal priceUnit = BigDecimal.ZERO;

				int scale = 2;
				
				if (cpl.getM_Product_ID() > 0)
					scale = cpl.getM_Product().getC_UOM().getStdPrecision();
				
				// Price Unit
				if (cpl.getLineTotalAmt().compareTo(BigDecimal.ZERO) > 0)
					priceUnit = cpl.getLineTotalAmt().divide(cpl.getQtyEntered(), scale, RoundingMode.HALF_EVEN);
				
				//	Qty = Ordered - Invoiced
				iLine.setQty(cpl.getQtyEntered());
				
				//
				iLine.setPrice(priceUnit);
				
				// Product
				if (cpl.getM_Product_ID() > 0)
				{
					MProduct p = (MProduct)cpl.getM_Product();
					//
					iLine.setProduct(p);
					
					// Price List not informed, get from Business Partner
					if (pl == null && bp.getM_PriceList() != null)
						pl = (MPriceList) bp.getM_PriceList();
					
					// Valid Version
					MPriceListVersion version = pl.getPriceListVersion(cpl.getDateTrx());
		
					if (version != null)
					{
						pp = MProductPrice.get(Env.getCtx(), version.getM_PriceList_Version_ID(), cpl.getM_Product_ID(), trxName);					
						
						// PriceUnit is still zero, get from Price List
						if (pp != null && BigDecimal.ZERO.compareTo(priceUnit) >= 0)
							priceUnit = pp.getPriceStd();
					}
				}
				
				// Charge
				iLine.setC_Charge_ID(cpl.getC_Charge_ID());
				
				//
				iLine.setLine(count);				
				count = count + 1;				

				//
				if (!iLine.save())
				{
					log.log(Level.SEVERE, "Could not create Invoice Line from CashPlan Line " + cpl.getC_CashPlanLine_ID());
					continue;
				}
				
				I_W_C_InvoiceLine ilW = POWrapper.create(iLine, I_W_C_InvoiceLine.class);
				
				 //	Buscar apenas o CFOP referente a operação
				Object[] taxation = MLBRTax.getTaxes (ilW, iLine.get_TrxName());
	            
	    		if (taxation == null)
	    			log.warning ("Imposto não encontrado");
	    		else
	    		{
	    			@SuppressWarnings("unchecked")
					Map<Integer, MLBRTaxLine> taxes = (Map<Integer, MLBRTaxLine>) taxation[0];
					
					//	Ajusta os Impostos
					if (ilW.getLBR_Tax_ID() == 0 && taxes != null && taxes.size() > 0)
					{
						MLBRTax tax = new MLBRTax (Env.getCtx(), 0, null);
						tax.save();
						//
						for (Integer key : taxes.keySet())
						{
							MLBRTaxLine tl = taxes.get(key);
							tl.setLBR_Tax_ID(tax.getLBR_Tax_ID());
							tl.save();
						}
						//
						tax.setDescription();
						tax.save();
						//
						ilW.setLBR_Tax_ID(tax.getLBR_Tax_ID());
					}
					
		    		if (((Integer) taxation[2]) > 0)
		    			ilW.setLBR_CFOP_ID (((Integer) taxation[2]));
	    		}
	    		
	    		iLine.save();
			}
			
			if (m_invoice.getLines().length == 0)
			{
				m_invoice.delete(true);
				log.log(Level.SEVERE, "Could not create Invoice Line from CashPlan ");
				countInvoices = countInvoices - 1;
			}
		}
		catch (Exception e)
		{
			throw new AdempiereException(e.getMessage());
		}

		return null;
	}	//	createInvoice
}	//	CreateFromCashPlanLine
