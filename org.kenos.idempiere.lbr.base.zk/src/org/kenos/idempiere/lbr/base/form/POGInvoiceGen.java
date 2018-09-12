package org.kenos.idempiere.lbr.base.form;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempiere.webui.panel.ADForm;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.model.MLBRTax;
import org.adempierelbr.model.MLBRTaxLine;
import org.adempierelbr.wrapper.I_W_C_Invoice;
import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MPriceList;
import org.compiere.model.MProduct;
import org.compiere.model.MProduction;
import org.compiere.model.MProductionLine;
import org.compiere.model.MSysConfig;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Trx;
import org.kenos.idempiere.lbr.base.model.MLBRProductionGroup;
import org.kenos.idempiere.lbr.base.zk.form.WPOGInvoiceGen;

public class POGInvoiceGen extends ADForm 
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger (WPOGInvoiceGen.class);
	
	protected void initForm()
	{
		log.info("");
	}
	
	/**
	 * Process Generate to Create Invoice and / or Nota Fiscal
	 * @param productions
	 * @param materials
	 * @param lbr_NFEntrada
	 * @return
	 * @throws Exception
	 */
	public static String processGenerate(List<MProduction> productions, List<MProductionLine> materials, String lbr_NFEntrada, Timestamp movementDate) throws Exception
	{
		//	Create Trasaction to controll the process. If there is an error, it's necessary to force a Rollback. It will avoid problem on Storage
		String trxName = Trx.createTrxName();
				
		//	Should Create Invoice
		Boolean createInvoice = false;
		
		//	If Empty
		if (productions.isEmpty())
			return null;
		
		//	Production Group
		MLBRProductionGroup pg = new MLBRProductionGroup (Env.getCtx(), productions.get(0).get_ValueAsInt("LBR_ProductionGroup_ID"), trxName);
		
		//	Production Line
		List<MProductionLine> lines = new ArrayList<MProductionLine>();
		
		//	Add End Product to the List
		for (MProduction production : productions)
		{
			if (MProduction.DOCSTATUS_Drafted.equals(production.getDocStatus()))
			{				
				try
				{
					production.set_TrxName(trxName);
					production.setMovementDate(movementDate);				
					production.setDocStatus(production.completeIt());
					production.save();
				}
				catch (Exception e)
				{
					Trx.get (trxName, false).rollback ();
					throw new AdempiereException(e.getMessage());
				}
					
			}
			
			if (MProduction.DOCSTATUS_Completed.equals(production.getDocStatus()))
			{
				for (MProductionLine linesEndProduct : production.getLines())
				{
					if (linesEndProduct.get_ValueAsInt("LBR_NotaFiscalLine_ID") == 0 && linesEndProduct.isEndProduct())
						lines.add(linesEndProduct);
				}
			}
		}
		
		// Check if Thera are End Products available to create Invoice
		if (!lines.isEmpty())
			createInvoice = true;
		
		//	Add Material
		for (MProductionLine linesMaterial : materials)
		{
			//	Material Line must be in the same Trx
			linesMaterial.set_TrxName(trxName);
			
			if (linesMaterial.get_ValueAsInt("LBR_NotaFiscalLine_ID") == 0 && !linesMaterial.isEndProduct()
					&& MProduction.DOCSTATUS_Completed.equals(linesMaterial.getM_Production().getDocStatus()))
				lines.add(linesMaterial);
		}
		
		// Verify if exists production waiting to Generate Return's Nota Fiscal
		if (lines.isEmpty())
			return "Sem linhas para lançar";
		
		//	Create Nota Fiscal
		MLBRNotaFiscal nf = new MLBRNotaFiscal (Env.getCtx(), 0, pg.get_TrxName());
		//	Gerar Nota Fiscal a Partir das Produções Completadas
		nf.generateNF(pg, lines, false, lbr_NFEntrada);
		
		nf.saveEx();
		
		//	Create Invoice
		if (createInvoice)
			InvoiceGenerate(pg, lines, lbr_NFEntrada);
		
		try
		{
			Trx.get (trxName, false).commit();
		}
		catch (Exception e) {
			throw new AdempiereException(e.getMessage());
		}		
		
		return null;
		
	}	//	processGenerate
	
	/**
	 * Invoice Generate from Production Line
	 * @param pg
	 * @param lines
	 * @param lbr_NFEntrada
	 */
	public static void InvoiceGenerate(MLBRProductionGroup pg, List<MProductionLine> lines, String lbr_NFEntrada)
	{		
		BigDecimal totalItem = Env.ZERO;
		//
		Boolean isSOTrx = false;
		int lineNo = 1;
		
		//	Documents
		int p_LBR_Tax_ID 		= pg.getLBR_Tax_ID();
		
		MOrgInfo oi = MOrgInfo.get(Env.getCtx(), pg.getAD_Org_ID());
		
		//	Invoice
		MInvoice invoice = new MInvoice (Env.getCtx(), 0 , pg.get_TrxName());
		
		I_W_C_Invoice wInvoice = POWrapper.create(invoice, I_W_C_Invoice.class);
		
		// Invoice Doc Type
		MDocType doctype = new MDocType (Env.getCtx(), pg.getC_DocTypeTarget_ID(), invoice.get_TrxName());
		
		wInvoice.setAD_Org_ID(pg.getAD_Org_ID());
		wInvoice.setIsSOTrx(isSOTrx);
		wInvoice.setC_BPartner_ID(pg.getC_BPartner_ID());
		
		//	Date Invoice is Movement Date from Production
		wInvoice.setDateInvoiced (lines.get(0).getM_Production().getMovementDate());
		wInvoice.setM_PriceList_ID(MPriceList.getDefault(Env.getCtx(), isSOTrx).getM_PriceList_ID());
		wInvoice.setIsSOTrx(isSOTrx);
		wInvoice.setlbr_NFEntrada(lbr_NFEntrada);
		
		// Document Type doens't crate Nota Fiscal
		wInvoice.setC_DocTypeTarget_ID(doctype.getC_DocTypeInvoice_ID());

		//	Transaction Type
		wInvoice.setlbr_TransactionType (MLBRNotaFiscal.LBR_TRANSACTIONTYPE_Manufacturing);
			
		//	Business Partner Informations
		wInvoice.setC_BPartner_Location_ID(pg.getC_BPartner_Location_ID());			
		
		//
		invoice.save();
		
		//	Production Line
		for (MProductionLine line : lines)
		{
			//	Invoice only End Product
			if (!line.isEndProduct())
				continue;
			
			// Add Product
			MProduct p = new MProduct (Env.getCtx(), line.getM_Product_ID(), invoice.get_TrxName());
			
			MInvoiceLine iLine = new MInvoiceLine (invoice);
			iLine.setProduct(p);
			iLine.setC_UOM_ID (p.getC_UOM_ID());
			
			int p_LBR_CFOP_ID = line.get_ValueAsInt("LBR_CFOP_ID");
			
			iLine.set_ValueOfColumn("LBR_CFOP_ID", p_LBR_CFOP_ID);
			
			iLine.setLine(lineNo++);			
			
			//	Tax
			if (p_LBR_Tax_ID > 0)
			{
				MLBRTax tax = new MLBRTax (Env.getCtx(), p_LBR_Tax_ID, invoice.get_TrxName());
				MLBRTax newTax = tax.copyTo();
				//
				iLine.set_ValueOfColumn("LBR_Tax_ID", newTax.getLBR_Tax_ID());
				
				MLBRTax taxOrg = new MLBRTax(Env.getCtx(), oi.get_ValueAsInt("LBR_Tax_ID"), invoice.get_TrxName());
				
				for (MLBRTaxLine taxLine : taxOrg.getLines())
				{
					for (MLBRTaxLine newTaxLine : newTax.getLines())
					{
						if (taxLine.getLBR_TaxName().equals(newTaxLine.getLBR_TaxName()))
						{
							newTaxLine.delete(true);
							MLBRTaxLine txl = taxLine.copy ();
							txl.set_TrxName(invoice.get_TrxName());
							txl.setLBR_Tax_ID(newTax.getLBR_Tax_ID());
							txl.saveEx();
						}
					}
				}
			}
			
			//	Qty can not be negative
			iLine.setQty ((line.getMovementQty().signum() > 0 ? line.getMovementQty() : line.getMovementQty().negate()));
			
			if (!iLine.save())
				throw new IllegalStateException("Could not create Invoice Line (o)");
			if (log.isLoggable(Level.FINE)) log.fine(line.toString());
		
			//	Production
			MProduction production = (MProduction) line.getM_Production();
			
			//	Cost Price
			iLine.setPrice((BigDecimal)production.get_Value("PriceEntered"));				
			
			iLine.saveEx();
			//
			totalItem = totalItem.add(iLine.getLineTotalAmt());
			
			MProductionLine pLine = new MProductionLine (Env.getCtx(), line.getM_ProductionLine_ID(), iLine.get_TrxName());

			//	Add Invoice Line on Nota Fiscal Line
			if (pLine.get_ValueAsInt("LBR_NotaFiscalLine_ID") > 0)
			{
				MLBRNotaFiscalLine nfl = new MLBRNotaFiscalLine (Env.getCtx(), pLine.get_ValueAsInt("LBR_NotaFiscalLine_ID"), pLine.get_TrxName());
				nfl.setC_InvoiceLine_ID(iLine.getC_InvoiceLine_ID());
				nfl.save();
			}
			
		}
		
		//
		invoice.setTotalLines(totalItem);
		invoice.setGrandTotal(totalItem);
		
		//
		invoice.save();
		
		//	Complete Invoice
		if (MSysConfig.getBooleanValue("LBR_POG_INVOICE_COMPLETE", false, invoice.getAD_Client_ID()))
		{
			invoice.setDocStatus(invoice.completeIt());		
			invoice.save();
		}
	}	//	InvoiceGenerate

}
