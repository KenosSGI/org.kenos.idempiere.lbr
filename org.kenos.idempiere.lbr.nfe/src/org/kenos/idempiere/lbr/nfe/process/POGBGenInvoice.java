package org.kenos.idempiere.lbr.nfe.process;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRNFLineTax;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.model.MLBRTax;
import org.adempierelbr.model.MLBRTaxLine;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.adempierelbr.wrapper.I_W_C_Tax;
import org.compiere.model.MAcctSchema;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MClient;
import org.compiere.model.MCost;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.model.MProduction;
import org.compiere.model.MProductionLine;
import org.compiere.model.MSysConfig;
import org.compiere.model.MTax;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.base.model.MLBRProductionGroup;

/**
 * 		Generate NF
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: POGBGenInvoice.java, v1.0 2017/12/21 7:30:37 PM, ralexsander Exp $
 */
public class POGBGenInvoice extends SvrProcess
{
	private int p_LBR_ProductionGroup_ID;
	
	@Override
	protected void prepare()
	{
		p_LBR_ProductionGroup_ID = getRecord_ID();
	}	//	prepare

	@Override
	protected String doIt() throws Exception
	{
		List<MProduction> lines = new ArrayList<MProduction>();
		MLBRProductionGroup pg = new MLBRProductionGroup (getCtx(), p_LBR_ProductionGroup_ID, null);
		for (MProduction p : pg.getProduction())
		{
			if (p.get_ValueAsInt(MLBRNotaFiscal.COLUMNNAME_LBR_NotaFiscal_ID) > 0 || !MProduction.DOCSTATUS_Completed.equals(p.getDocStatus()))
				continue;
			lines.add (p);
		}
		
		if (lines.isEmpty())
			return "@Error@ sem linhas para lançar";
		
		
		
		
		MLBRNotaFiscal nf = new MLBRNotaFiscal (getCtx(), 0, get_TrxName());
		BigDecimal totalItem = Env.ZERO, totalService = Env.ZERO;
		//
		Boolean isSOTrx = false;
		int lineNo = 1;
		
		//	Dados mestre
		nf.setDateDoc(pg.getDatePromised());
		nf.setIsSOTrx(isSOTrx);
		nf.setlbr_IsOwnDocument(false);
		
		//	Dados da Organização
		nf.setOrgInfo(POWrapper.create(MOrgInfo.get(getCtx(), pg.getAD_Org_ID(), get_TrxName()), I_W_AD_OrgInfo.class));
		
		//	Transaction Type
		nf.setlbr_TransactionType (MLBRNotaFiscal.LBR_TRANSACTIONTYPE_Manufacturing);
		
		//	Dados do Parceiro
		MBPartnerLocation bpLocation = new MBPartnerLocation (getCtx(), pg.getC_BPartner_Location_ID(), get_TrxName());
		nf.setBPartner(bpLocation);
		
		//	Parceiro da Fatura
		nf.setInvoiceBPartner(bpLocation);
		
		//	Tipo de Documento
		nf.setC_DocTypeTarget_ID();
		
		// Imprime Descontos
		nf.setIsDiscountPrinted(false);
		
		//	Entrega
//		setShipmentBPartner(invoice);
		
		//  Description
		nf.setDescription();
		
		//	Se não estiver salva
		if (nf.get_ID() < 1)
			nf.save ();
		
		//	Impostos
//		setTaxes(invoice);
		
//		I_W_C_DocType dt = POWrapper.create(new MDocType (getCtx(), nf.getC_DocType_ID(), get_TrxName()), I_W_C_DocType.class);
//		String serie = "";
		
		nf.setlbr_NFModel(MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalEletrônica);
		
		//	Documents
		int p_LBR_CFOP_ID	 	= pg.getLBR_CFOP_ID();
		int p_LBR_Tax_ID 		= pg.getLBR_Tax_ID();
		int p_M_CostElement_ID 	= 100;
		
		//	Linhas
		for (MProduction prd : lines)
		{
			for (MProductionLine line : prd.getLines())
			{
				MLBRNotaFiscalLine nfLine = new MLBRNotaFiscalLine (nf);
				nfLine.setAD_Org_ID(line.getAD_Org_ID());
				nfLine.save();
				//
				nfLine.setLine(lineNo++);
				
				
				MProduct p = new MProduct (getCtx(), line.getM_Product_ID(), null);
				
	//			Product
				nfLine.setProduct (p);
				
				//  Seguro
				nfLine.setlbr_InsuranceAmt(Env.ZERO);
				
				//	Frete
				nfLine.setFreightAmt(Env.ZERO);
				
				//  Outras Despesas Acessórias
				nfLine.setLBR_OtherChargesAmt(Env.ZERO);
				
				nfLine.setC_UOM_ID (p.getC_UOM_ID());
				nfLine.setLBR_CFOP_ID (p_LBR_CFOP_ID);
				
				//	Número de Série
				if (line.getM_AttributeSetInstance_ID()>0 
						&& line.getM_AttributeSetInstance().getSerNo() != null
						&& (MSysConfig.getBooleanValue("LBR_PRINT_SERIALNUMBER_NF", true, getAD_Client_ID())))
					nfLine.appendDescription("Núm. de Série: " + line.getM_AttributeSetInstance().getSerNo());
				
				//	Impostos
				if (p_LBR_Tax_ID > 0)
				{
					MLBRTax tax = new MLBRTax (getCtx(), p_LBR_Tax_ID, get_TrxName());
					for (MLBRTaxLine tl : tax.getLines())
					{
						int Child_Tax_ID = tl.getChild_Tax_ID (0);
						//
						if (!tl.islbr_PostTax() || Child_Tax_ID < 1)
							continue;
						
						I_W_C_Tax taxAD = POWrapper.create(new MTax (getCtx(), Child_Tax_ID, get_TrxName()), I_W_C_Tax.class);
						
						if (taxAD.getLBR_TaxGroup_ID() < 1)
							continue;
						
						MLBRNFLineTax nfLineTax = new MLBRNFLineTax (nfLine);
						nfLineTax.setTaxes (tl);
						nfLineTax.setLBR_TaxGroup_ID(taxAD.getLBR_TaxGroup_ID());
						nfLineTax.save();
					}
				}
				
				//	Valores
				nfLine.setQty (line.getMovementQty());
				
				//	Cost
				MAcctSchema as = MClient.get (line.getCtx ()).getAcctSchema();
				MCost mCost = MCost.get (p, line.getM_AttributeSetInstance_ID(), as, line.getAD_Org_ID(), p_M_CostElement_ID, line.get_TrxName());
				BigDecimal costPrice = Env.ZERO;
				
				if (mCost != null)
					costPrice = mCost.getCurrentCostPrice();
				
				//	Cost Price
				nfLine.setPrice(MLBRNotaFiscal.CURRENCY_BRL, costPrice, costPrice , false, false);
				
				
				
				
				
				
				
				nfLine.save();
				//
				totalItem = totalItem.add(nfLine.getLineTotalAmt());
				//
				if (nfLine.getLBR_CFOP_ID() > 0 
						&& (nf.getlbr_CFOPNote() == null || nf.getlbr_CFOPNote().length() < 1))
					nf.setlbr_CFOPNote(nfLine.getLBR_CFOP().getDescription());
			}
			
			prd.set_ValueOfColumn(MLBRNotaFiscal.COLUMNNAME_LBR_NotaFiscal_ID, nf.getLBR_NotaFiscal_ID());
			prd.save(nf.get_TrxName());
		}
		
		//	Valores
		nf.setTotalLines(totalItem);
		nf.setlbr_ServiceTotalAmt(totalService);
		nf.setDiscountAmt(Env.ZERO);
		
		//	Nota do Documento (Mensagens Legais) e Descrição
		nf.setLBR_FiscalObs ();
		nf.setDescription ();
		
		//	O peso normalemnte vem da expedição, porém alguns casos a NF é feita com base no pedido
		//		ou na fatura, portanto é necessário recalcular o peso
		if (Env.ZERO.compareTo (nf.getlbr_GrossWeight()) == 0)
			nf.calculateWeight();
		
		
		
		
		return "@Success@";
	}	//	doIt
}	//	POGBGenInvoice
