package org.kenos.idempiere.lbr.nfe.importvalidator;

import java.math.BigDecimal;

import org.adempiere.model.ImportValidator;
import org.adempiere.model.POWrapper;
import org.adempiere.process.ImportProcess;
import org.adempierelbr.model.MLBRCFOP;
import org.adempierelbr.model.MLBRDI;
import org.adempierelbr.model.MLBRTax;
import org.adempierelbr.model.MLBRTaxLine;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.adempierelbr.wrapper.I_W_C_Order;
import org.compiere.model.MBPartner;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.X_I_Order;
import org.compiere.util.Env;

/**
 * 	Import Validator Order
 * 	
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: ImportValidatorOrder.java, v1.0 2017/MM/DD 10:23:17, rfeitosa Exp $
 */
public class ImportValidatorOrder implements ImportValidator
{
	public static final String ImportTableName = X_I_Order.Table_Name;

	/**
	 * Validar e Importar Campos do Pedido
	 */
	public void validate(ImportProcess process, Object importModel, Object targetModel, int timing)
	{
		//	Instancia Importação de Pedido
		X_I_Order impOrder = (X_I_Order) importModel;
				
		//	Após o Parceiro de Negócio ser importado, Adicionar campos do IDempiereLBR
		if (targetModel instanceof MOrder && TIMING_AFTER_IMPORT == timing)
 		{			
			//	Após o Pedido ser importado, Adicionar campos do IDempiereLBR
			if (targetModel instanceof MOrder && TIMING_AFTER_IMPORT == timing)
	 		{			
				//	Pedido criado
	 			MOrder order = (MOrder)targetModel; 			
	 			I_W_C_Order orderw = POWrapper.create(order, I_W_C_Order.class);
	 			
	 			//	Campos IDempiereLBR
				MBPartner bp = new MBPartner (order.getCtx(), order.getC_BPartner_ID(), order.get_TrxName());
				I_W_C_BPartner bpw = POWrapper.create(bp, I_W_C_BPartner.class);
				
				String trxType = bpw.getlbr_TransactionType();
				if (trxType != null && !trxType.isEmpty())
					orderw.setlbr_TransactionType(trxType);
	 		}			
 		}
		//	Após o Pedido ser importado, Adicionar campos do IDempiereLBR
		if (targetModel instanceof MOrderLine && TIMING_AFTER_IMPORT == timing)
 		{			
			//	Pedido criado
 			MOrderLine line = (MOrderLine)targetModel; 			
 			
 			// 			LBR
			addTax (line, "PISPROD", impOrder.get_ValueAsString("LBR_CSTPIS"), (BigDecimal) impOrder.get_Value("LBR_PISRate"));
			addTax (line, "COFINSPROD", impOrder.get_ValueAsString("LBR_CSTCOFINS"), (BigDecimal) impOrder.get_Value("LBR_COFINSRate"));
			addTax (line, "ICMSPROD", impOrder.get_ValueAsString("LBR_CSTICMS"), (BigDecimal) impOrder.get_Value("LBR_ICMSRate"));
			addTax (line, "IPI", impOrder.get_ValueAsString("LBR_CSTIPI"), (BigDecimal) impOrder.get_Value("LBR_IPIRate"));
			addTax (line, "II", null, (BigDecimal) impOrder.get_Value("LBR_IIRate"));
			
			//	SISCOMEX
			setDI (line, impOrder.get_ValueAsString("lbr_DI"), impOrder.get_ValueAsString("LBR_ADI"));
			
			//	Additional charges
			line.set_CustomColumn("lbr_SISCOMEXAmt", impOrder.get_Value("lbr_SISCOMEXAmt"));
			line.set_CustomColumn("lbr_InsuranceAmt", impOrder.get_Value("lbr_InsuranceAmt"));
			line.set_CustomColumn("LBR_OtherChargesAmt", impOrder.get_Value("LBR_OtherChargesAmt"));
			
			//	CFOP
			MLBRCFOP cfop = MLBRCFOP.getCFOP (Env.getCtx(), impOrder.get_ValueAsString("lbr_CFOPName"), line.get_TrxName());
			
			if (cfop != null)
				line.set_CustomColumn("LBR_CFOP_ID", cfop.getLBR_CFOP_ID());
 		}
	}
	
	/**
	 * Adicionar Impostos
	 * @param ol
	 * @param taxIndicator
	 * @param cst
	 * @param rate
	 */
	private static void addTax (MOrderLine ol, String taxIndicator, String cst, BigDecimal rate)
	{
		if (ol == null || taxIndicator == null || rate == null)
			return;
		
		int LBR_Tax_ID = ol.get_ValueAsInt("LBR_Tax_ID");
		
		MLBRTax tax = null;
		
		if (LBR_Tax_ID < 1)
		{
			tax = new MLBRTax (ol.getCtx(), 0, ol.get_TrxName());
			tax.save();
			//
			ol.set_CustomColumn("LBR_Tax_ID", tax.getLBR_Tax_ID());
		}
		else
			tax = new MLBRTax (ol.getCtx(), LBR_Tax_ID, ol.get_TrxName());
		
		MLBRTaxLine tl = new MLBRTaxLine (ol.getCtx(), 0, ol.get_TrxName());
		tl.setTaxInfo (taxIndicator, cst, rate);
		tl.setLBR_Tax_ID(tax.getLBR_Tax_ID());
		tl.save();
		
		//	Tax description
		tax.setDescription();
		tax.save();
	}	//	addTax
	
	/**
	 * Adicionar DI - Declaração de Importação
	 * @param ol
	 * @param noDI
	 * @param noAdi
	 */
	private static void setDI (MOrderLine ol, String noDI, String noAdi)
	{
		if (noDI == null || noAdi == null || noDI.isEmpty() || noAdi.isEmpty())
			return;
		
		MLBRDI di = MLBRDI.get (ol.getCtx(), noDI, ol.get_TrxName());
		
		if (di == null)
		{
			di = new MLBRDI (ol.getCtx(), 0, ol.get_TrxName());
			di.setDocumentNo(noDI);
			di.setC_BPartner_ID(ol.getC_BPartner_ID());
			di.setBPartnerValue(ol.getC_BPartner().getValue());
			di.setDateDoc(ol.getDateOrdered());
			di.setDateTrx(ol.getDateOrdered());
			di.setlbr_SISCOMEXAmt(new BigDecimal (115.67));	//	FIXME
			di.save();
		}
		
		int LBR_ADILine_ID = di.getLBR_ADILine_ID (noAdi, ol.getM_Product_ID());
		
		ol.set_CustomColumn("LBR_DI_ID", di.getLBR_DI_ID());
		ol.set_CustomColumn("LBR_ADILine_ID", LBR_ADILine_ID);
	}	//	setDI
}
