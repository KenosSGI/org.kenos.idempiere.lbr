package org.kenos.idempiere.lbr.nfe.process;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.List;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRCFOP;
import org.adempierelbr.model.MLBRNFLineTax;
import org.adempierelbr.model.MLBRNFTax;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalDocRef;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.compiere.model.MInOut;
import org.compiere.model.MInvoice;
import org.compiere.model.MOrder;
import org.compiere.model.MOrg;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

/**
 * Processo para Criar NF-e Adicionais como:
 *  - Nota Fiscal Complementar
 *  - Nota Fiscal Trinagular
 *  - Nota Fiscal de Entregas Futuras
 *  
 * @author Rogério Feitosa (Kenos, www.kenos.com.br)
 * @version $Id: ProcAdditionalNFe.java, v1.0 2017/08/04 16:07:41, kenos_rfeitosa Exp $
 *
 */
public class ProcAdditionalNFe extends SvrProcess 
{
	
	/** Tipo de NF-e Adicional			*/
	private String p_LBR_AdditionalNFeType;
	
	private final String LBR_AdditionalNFeType_NFComplementar = "C";	
	private final String LBR_AdditionalNFeType_NFTrinagular = "T";	
	private final String LBR_AdditionalNFeType_NFEntregasFuturas = "F";
	

	/** Pedido			*/
	private  BigDecimal p_C_Order_ID;
	
	/** Expedição			*/
	private BigDecimal p_M_InOut_ID;
	
	/** Nota Fiscal			*/
	private BigDecimal p_LBR_NotaFiscal_ID;
	
	
	/**	Logger				*/
	private static CLogger log = CLogger.getCLogger(ProcAdditionalNFe.class);

	/**
	 * 
	 */
	protected void prepare()
	{		
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals("LBR_AdditionalNFeType"))
				p_LBR_AdditionalNFeType = (String) para[i].getParameter();
			else if (name.equals(MOrder.COLUMNNAME_C_Order_ID))
				p_C_Order_ID = (BigDecimal) para[i].getParameter();
			else if (name.equals(MInOut.COLUMNNAME_M_InOut_ID))
				p_M_InOut_ID = (BigDecimal) para[i].getParameter();
			else if (name.equals(MLBRNotaFiscal.COLUMNNAME_LBR_NotaFiscal_ID))
				p_LBR_NotaFiscal_ID = (BigDecimal) para[i].getParameter();
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
	}

	/**
	 * 
	 */
	protected String doIt() throws Exception
	{
		
		MOrder order = null;
		MInOut inout = null;
		MLBRNotaFiscal nf = null;
		
		String msgReturn = null;
		
		//	Validando Parametros
		if (p_C_Order_ID != null && !p_C_Order_ID.equals(BigDecimal.ZERO))
			order = new MOrder(Env.getCtx(), p_C_Order_ID.intValue(), null);
		
		if (p_M_InOut_ID != null && !p_M_InOut_ID.equals(BigDecimal.ZERO))
			inout = new MInOut(Env.getCtx(), p_M_InOut_ID.intValue(), null);
		
		if (p_LBR_NotaFiscal_ID != null && !p_LBR_NotaFiscal_ID.equals(BigDecimal.ZERO))
			nf = new MLBRNotaFiscal(Env.getCtx(), p_LBR_NotaFiscal_ID.intValue(), null);
		
		//	Gerar NF Adicional
		if (LBR_AdditionalNFeType_NFComplementar.equals(p_LBR_AdditionalNFeType))
			msgReturn = NFeComplementar(nf);
		/*else if (LBR_AdditionalNFeType_NFTrinagular.equals(p_LBR_AdditionalNFeType))
			msgReturn = NFeTrinagular(nf, inout);
		else if (LBR_AdditionalNFeType_NFEntregasFuturas.equals(p_LBR_AdditionalNFeType))
			msgReturn = NFeEntregaFutura(inout);*/
		
		return msgReturn;
	}
	
	/**
	 * Gerar Nota Fiscal Complementar
	 * @param nf
	 * @return
	 */
	public String NFeComplementar(MLBRNotaFiscal nf)
	{		
		// Criando Nota Complementar
		MLBRNotaFiscal nfCompl = new MLBRNotaFiscal(Env.getCtx(), 0, null);
		
		// Gerando NF Complementar a partir da Fatura
		nfCompl.generateNF((MInvoice)nf.getC_Invoice(), nf.isSOTrx());
		nfCompl.m_justCreated = true;
		
		// Organização
		MOrg org = new MOrg (Env.getCtx(), nf.getC_Invoice().getAD_Org_ID(), null);
		
		// Marcar como manual para Evitar Reprocessamento
		nfCompl.setIsManual(true);
		
		// Adicionar Data Atual
		nfCompl.setDateDoc(Env.getContextAsDate(Env.getCtx(), "Date"));		
		
		// Alterando Finalidade para NFe Complementar
		nfCompl.setlbr_FinNFe(MLBRNotaFiscal.LBR_FINNFE_NFeComplementar);
		
		// Adicionando NF Referenciada
		MLBRNotaFiscalDocRef nfDocRef = new MLBRNotaFiscalDocRef(Env.getCtx(), 0, null);
		nfDocRef.setAD_Org_ID(nfCompl.getAD_Org_ID());
		nfDocRef.setLBR_NotaFiscal_ID(nfCompl.getLBR_NotaFiscal_ID());
		nfDocRef.setLBR_NFeReferenced_ID(nf.getLBR_NotaFiscal_ID());
		nfDocRef.setlbr_NFeID(nf.getlbr_NFeID());
		
		//	Verificando Modelo da NF
		if (MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalEletrônica.equals(nfCompl.getlbr_NFModel()))
			nfDocRef.setLBR_FiscalDocRefType(MLBRNotaFiscalDocRef.LBR_FISCALDOCREFTYPE_NF_E);
		else if (MLBRNotaFiscal.LBR_NFMODEL_CupomFiscalEmitidoPorECF.equals(nfCompl.getlbr_NFModel()))
			nfDocRef.setLBR_FiscalDocRefType(MLBRNotaFiscalDocRef.LBR_FISCALDOCREFTYPE_CT_E);	
		
		nfDocRef.save();
		
		// Zerando os Impostos do Cabeçalho
		List<MLBRNFTax> nfTaxes = new Query(Env.getCtx(), MLBRNFTax.Table_Name, "LBR_NotaFiscal_ID=?", null)
				.setParameters(nfCompl.getLBR_NotaFiscal_ID())
				.list();
		
		for (MLBRNFTax nfTax : nfTaxes)
		{
			nfTax.setlbr_TaxAmt(BigDecimal.ZERO);
			nfTax.setlbr_TaxBaseAmt(BigDecimal.ZERO);
			nfTax.save();
		}
		
		// Zerando Quantidade, Valor e Impostos das Linhas
		for (MLBRNotaFiscalLine nfLine : nfCompl.getLines())
		{
			// Zerando Valores Linhas
			nfLine.setQty(BigDecimal.ZERO);
			nfLine.setPrice(BigDecimal.ZERO);
			nfLine.setLineTotalAmt(BigDecimal.ZERO);
			nfLine.setDiscountAmt(BigDecimal.ZERO);;
			nfLine.setLBR_OtherChargesAmt(BigDecimal.ZERO);
			nfLine.setFreightAmt(BigDecimal.ZERO);
			nfLine.setlbr_InsuranceAmt(BigDecimal.ZERO);
			nfLine.save();
			
			//	Zerando Impostos Linhas
			for (MLBRNFLineTax nflTax : nfLine.getTaxes())
			{
				nflTax.setlbr_TaxAmt(BigDecimal.ZERO);
				nflTax.setlbr_TaxBaseAmt(BigDecimal.ZERO);
				nflTax.setlbr_TaxRate(BigDecimal.ZERO);
				nflTax.save();
			}			
		}
		
		nfCompl.setGrandTotal(BigDecimal.ZERO);
		nfCompl.setTotalLines(BigDecimal.ZERO);
		nfCompl.setFreightAmt(BigDecimal.ZERO);
		nfCompl.setLBR_OtherChargesAmt(BigDecimal.ZERO);
		nfCompl.setlbr_InsuranceAmt(BigDecimal.ZERO);
		nfCompl.setDiscountAmt(BigDecimal.ZERO);
		nfCompl.setlbr_ServiceTotalAmt(BigDecimal.ZERO);
		nfCompl.setlbr_vTotTrib(BigDecimal.ZERO);
		
		// Salvar
		nfCompl.save();		
		
		return "<br><br>Nota Fiscal Complementar: " + nfCompl.getDocumentNo() + " <br><br>Organização: " + org.getName() + " <br><br>@Success@";
	}
	
	/**
	 * Gerar Nota Fiscal Trinagular
	 * @param nf
	 * @return
	 */
	public String NFeTrinagular(MLBRNotaFiscal nf, MInOut io)
	{		
		// Criando Nota Trinagular
		MLBRNotaFiscal nfTri = new MLBRNotaFiscal(Env.getCtx(), 0, null);
		
		// Gerando NF Triangular a partir da Remessa
		if (io != null)
			nfTri.generateNF(io, nf.isSOTrx());
		else if (nf != null)
			nfTri.generateNF((MInOut)nf.getM_InOut(), nf.isSOTrx());
		else
			return "Erro ao Gerar NF-e Triangular de Remessa. NF-e / Remessa invalido";	
		
		// Marcar como manual para Evitar Reprocessamento
		nfTri.setIsManual(true);
		
		// Adicionar Data Atual
		nfTri.setDateDoc(Env.getContextAsDate(Env.getCtx(), "Date"));
		
		
		// Zerando os Impostos do Cabeçalho
		List<MLBRNFTax> nfTaxes = new Query(Env.getCtx(), MLBRNFTax.Table_Name, "LBR_NotaFiscal_ID=?", null)
				.setParameters(nfTri.getLBR_NotaFiscal_ID())
				.list();
		
		for (MLBRNFTax nfTax : nfTaxes)
		{
			nfTax.setlbr_TaxAmt(BigDecimal.ZERO);
			nfTax.setlbr_TaxBaseAmt(BigDecimal.ZERO);
			nfTax.save();
		}
		
		// Zerando os Impostos das Linhas
		for (MLBRNotaFiscalLine nfLine : nfTri.getLines())
		{
			for (MLBRNFLineTax nflTax : nfLine.getTaxes())
			{
				nflTax.setlbr_TaxAmt(BigDecimal.ZERO);
				nflTax.setlbr_TaxBaseAmt(BigDecimal.ZERO);
				nflTax.setlbr_TaxRate(BigDecimal.ZERO);
				nflTax.save();
			}
			
			//	CFOP da NF de Cobrança
			MLBRCFOP cfop = new MLBRCFOP(Env.getCtx(), nfLine.getLBR_CFOP_ID(), null);
			
			// CFOP da NF de Remessa
			MLBRCFOP cfopShipment = null;
			
			//	FIXME: Não Usar HardCode
			// Dentro do Estado: Se CFOP for 5.118 (ID 2000256) alterar para 5.923 (ID 2000363)
			/*if (cfop.getLBR_CFOP_ID() == 2000256)
			{
				nfLine.setLBR_CFOP_ID(2000363);
				cfopShipment = new MLBRCFOP(Env.getCtx(), 2000363, null);
			}	
			// Fora do Estado: Se CFOP for 6.118 (ID 2000391) alterar para 6.923 (ID 2000363)
			else if (cfop.getLBR_CFOP_ID() == 2000391)
			{
				nfLine.setLBR_CFOP_ID(2000495);
				cfopShipment = new MLBRCFOP(Env.getCtx(), 2000363, null);
			}*/
			
			nfLine.save();
			
			// Adicionado Natureza da Operação
			if (cfopShipment != null)
				nfTri.setlbr_CFOPNote(cfopShipment.getDescription());
			
			// Salvar
			nfTri.save();
		}
		
		// Preparar a NF
		nfTri.prepareIt();		
		
		return "#Nota Fiscal Triangular de Remessa - NF-e: " + nfTri.getDocumentNo() + " - ID: " + nfTri.getLBR_NotaFiscal_ID();
	}
	
	/**
	 * Gerar Nota Fiscal de Entregas Futuras
	 * @param nf
	 * @return
	 */
	public String NFeEntregaFutura(MInOut io)
	{		
		// Criando Nota Trinagular
		MLBRNotaFiscal nfTri = new MLBRNotaFiscal(Env.getCtx(), 0, null);
		
		// Gerando NF Triangular a partir da Remessa
		if (io != null)
			nfTri.generateNF(io, io.isSOTrx());		
		else
			return "Erro ao Gerar NF-e de Entregas Futuras. Remessa invalido";	
		
		// Marcar como manual para Evitar Reprocessamento
		nfTri.setIsManual(true);
		
		// Adicionar Data Atual
		nfTri.setDateDoc(Env.getContextAsDate(Env.getCtx(), "Date"));
		
		
		// Zerando os Impostos do Cabeçalho
		List<MLBRNFTax> nfTaxes = new Query(Env.getCtx(), MLBRNFTax.Table_Name, "LBR_NotaFiscal_ID=?", null)
				.setParameters(nfTri.getLBR_NotaFiscal_ID())
				.list();
		
		MLBRNFTax nfTaxICMS = null;
		
		for (MLBRNFTax nfTax : nfTaxes)
		{
			if (nfTax.getLBR_TaxGroup_ID() != 1120000)
			{
				nfTax.setlbr_TaxAmt(BigDecimal.ZERO);
				nfTax.setlbr_TaxBaseAmt(BigDecimal.ZERO);
				nfTax.save();
			}
			else
				nfTaxICMS = nfTax;
		}
		
		BigDecimal taxAmtTotal = BigDecimal.ZERO;
		BigDecimal taxBaseAmtTotal = BigDecimal.ZERO;
		BigDecimal grandTotal = BigDecimal.ZERO;
		
		// Zerando os Impostos das Linhas
		for (MLBRNotaFiscalLine nfLine : nfTri.getLines())
		{			
			for (MLBRNFLineTax nflTax : nfLine.getTaxes())
			{
				if (nflTax.getLBR_TaxGroup_ID() != 1120000)
				{
					nflTax.setlbr_TaxAmt(BigDecimal.ZERO);
					nflTax.setlbr_TaxBaseAmt(BigDecimal.ZERO);
					nflTax.setlbr_TaxRate(BigDecimal.ZERO);
					nflTax.save();
				}
				else
				{
					BigDecimal taxAmt = BigDecimal.ZERO;
					BigDecimal taxBaseAmt = nfLine.getQty().multiply(nfLine.getPrice());
					BigDecimal rate = nflTax.getlbr_TaxRate();
					
					taxAmt = taxBaseAmt.multiply(rate.setScale(17, RoundingMode.HALF_UP)).divide(new BigDecimal(100), 17, RoundingMode.HALF_UP);
					
					nflTax.setlbr_TaxAmt(taxAmt);
					nflTax.setlbr_TaxBaseAmt(taxBaseAmt);
					nflTax.save();
					
					taxAmtTotal = taxAmtTotal.add(taxAmt);
					taxBaseAmtTotal = taxBaseAmtTotal.add(taxBaseAmt);
				}
			}
			
			// Total Geral
			grandTotal = grandTotal.add(nfLine.getLineTotalAmt());
			
			//	CFOP da NF de Cobrança
			MLBRCFOP cfop = new MLBRCFOP(Env.getCtx(), nfLine.getLBR_CFOP_ID(), null);
			
			// CFOP da NF de Remessa
			MLBRCFOP cfopShipment = null;
			
			//	FIXME: Não Usar HardCode
			// Dentro do Estado: Se CFOP for 5.118 (ID 2000256) alterar para 5.923 (ID 2000363)
			/*if (cfop.getLBR_CFOP_ID() == 2000256)
			{
				nfLine.setLBR_CFOP_ID(2000363);
				cfopShipment = new MLBRCFOP(Env.getCtx(), 2000363, null);
			}	
			// Fora do Estado: Se CFOP for 6.118 (ID 2000391) alterar para 6.923 (ID 2000363)
			else if (cfop.getLBR_CFOP_ID() == 2000391)
			{
				nfLine.setLBR_CFOP_ID(2000495);
				cfopShipment = new MLBRCFOP(Env.getCtx(), 2000363, null);
			}*/
			
			nfLine.save();
			
			// Adicionado Natureza da Operação
			if (cfopShipment != null)
				nfTri.setlbr_CFOPNote(cfopShipment.getDescription());			
		}
		
		nfTaxICMS.setlbr_TaxAmt(taxAmtTotal);
		nfTaxICMS.setlbr_TaxBaseAmt(taxBaseAmtTotal);
		nfTaxICMS.save();
		
		nfTri.setGrandTotal(grandTotal);
		
		// Salvar
		nfTri.save();	
		
		return "#Nota Fiscal Triangular de Remessa - NF-e: " + nfTri.getDocumentNo() + " - ID: " + nfTri.getLBR_NotaFiscal_ID();
	}
	
	/**
	 * 
	 * @param order
	 */
	public void setTaxes (MOrder order)
	{
		if (order == null)
			return;
		
		/*for (MOrderTax ot : order.getTaxes(true))
		{
			I_W_C_Tax taxAD = POWrapper.create(new MTax (getCtx(), ot.getC_Tax_ID(), get_TrxName()), I_W_C_Tax.class);
			//
			if (taxAD.getLBR_TaxGroup_ID() < 1)
				continue;
			
			MLBRNFTax nfTax = new MLBRNFTax (this);
			nfTax.setTaxes (ot);
			nfTax.setLBR_TaxGroup_ID(taxAD.getLBR_TaxGroup_ID());
			nfTax.save();
		}*/
	}

}
