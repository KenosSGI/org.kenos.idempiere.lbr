/******************************************************************************
 * Copyright (C) 2016 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2016 Ricardo Santana                                         *
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
package org.kenos.idempiere.lbr.nfe.zk.form;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.webui.apps.AEnv;
import org.adempiere.webui.component.WListbox;
import org.adempiere.webui.panel.ADForm;
import org.adempierelbr.model.MLBRCFOP;
import org.adempierelbr.model.MLBRNFLineTax;
import org.adempierelbr.model.MLBRNFTax;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalDocRef;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.compiere.model.MInOut;
import org.compiere.model.MInvoice;
import org.compiere.model.MOrder;
import org.compiere.model.MQuery;
import org.compiere.model.MRole;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Trx;

/**
 * 		Generate Additional Nota Fiscal controller class
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 * 	@version $Id: NotaFiscalAdditional.java, v1.0 2019/06/03 17:02:16, kenos_rfeitosa Exp $
 */
public class NotaFiscalAdditional extends ADForm
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger (NotaFiscalAdditional.class);
	
	/** Nota Fiscal	*/
	protected Object m_LBR_NotaFiscal_ID = -1;
	
	/** Order	*/
	protected Object m_C_Order_ID = -1;
	
	/** InOut	*/
	protected Object m_M_InOut_ID = -1;
	
	/** Nota Fiscal Addicional Type */
	protected final String TYPE_NOTAFISCAL_ADDITIONAL_COMPLEMENTAR = "C";
	protected final String TYPE_NOTAFISCAL_ADDITIONAL_ENTREGAFUTURA = "F";
	protected final String TYPE_NOTAFISCAL_ADDITIONAL_TRIANGULAR = "T";
	protected final String TYPE_NOTAFISCAL_ADDITIONAL_ANULACAOVALORES = "A";
	
	/**	Result Table	*/
	protected WListbox miniTableNF = new WListbox();

	protected void initForm()
	{

	}
	
	/**
	 * 
	 * @return
	 */
	protected int generateNFComplementar()
	{
		String trxName = Trx.createTrxName();
		
		try
		{	
			//	Nota Fiscal Atual
			MLBRNotaFiscal nf = new MLBRNotaFiscal (Env.getCtx(), (Integer)m_LBR_NotaFiscal_ID, trxName);
			
			//	Nota Fiscal Complementar
			MLBRNotaFiscal nfCompl = new MLBRNotaFiscal(Env.getCtx(), 0, trxName);
			
			// Gerando NF Complementar a partir da Fatura
			nfCompl.generateNF((MInvoice)nf.getC_Invoice(), nf.isSOTrx());
			
			//	Recém Criada
			nfCompl.m_justCreated = true;
			
			// Marcar como manual para Evitar Reprocessamento
			nfCompl.setIsManual(true);
			
			// Adicionar Data Atual
			nfCompl.setDateDoc(Env.getContextAsDate(Env.getCtx(), "Date"));		
			
			// Alterando Finalidade para NFe Complementar
			nfCompl.setlbr_FinNFe(MLBRNotaFiscal.LBR_FINNFE_NFeComplementar);
			
			nfCompl.setlbr_CFOPNote("NOTA FISCAL COMPLEMENTAR");
			
			// Adicionando NF Referenciada
			MLBRNotaFiscalDocRef nfDocRef = new MLBRNotaFiscalDocRef(Env.getCtx(), 0, nfCompl.get_TrxName());
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
			
			//	Zerar Nota Fiscal
			clearNF(nfCompl);
			
			//	Preencher Nota Fiscal com os dados do Formulário
			miniTableDataToNF(nfCompl);
			
			//	Commit
			Trx.get(trxName, false).commit();
			
			log.warning("Nota Fiscal Complementar: " + nfCompl.getDocumentNo() + " - Organização: " + nfCompl.getlbr_OrgName());
			
			return nfCompl.getLBR_NotaFiscal_ID();

		}
		catch (Exception e)
		{
			Trx.get(trxName, false).rollback();
			throw new AdempiereException(e.getMessage());
		}		
	}
	
	/**
	 * Gerar Nota Fiscal Trinagular
	 * @param nf de Remessa
	 * @return
	 */
	public int generateNFTrinagular()
	{
		String trxName = Trx.createTrxName();
		
		try
		{
			// Criando Nota Trinagular
			MLBRNotaFiscal nfTri = new MLBRNotaFiscal(Env.getCtx(), 0, trxName);
			
			//	Remessa
			MInOut io = new MInOut (Env.getCtx(), (Integer)m_M_InOut_ID, trxName);
			
			// Gerando NF Triangular a partir da Remessa
			if (io != null && io.getM_InOut_ID() > 0)
				nfTri.generateNF(io, io.isSOTrx());
			else
				throw new AdempiereException("Erro ao Gerar NF-e Triangular de Remessa. Remessa invalido");	
			
			// Evitar Reprocessamento
			nfTri.m_justCreated = true;
			
			// Adicionar Data Atual
			nfTri.setDateDoc(Env.getContextAsDate(Env.getCtx(), "Date"));
			
			//	Zerar Nota Fiscal
			clearNF(nfTri);
			
			//	Preencher Nota Fiscal com os dados do Formulário
			miniTableDataToNF(nfTri);
			
			/*// Zerando os Impostos das Linhas
			for (MLBRNotaFiscalLine nfLine : nfTri.getLines())
			{				
				//	CFOP da NF de Cobrança
				MLBRCFOP cfop = new MLBRCFOP(Env.getCtx(), nfLine.getLBR_CFOP_ID(), null);
				
				// CFOP da NF de Remessa
				MLBRCFOP cfopShipment = null;
				
				//	FIXME: Não Usar HardCode
				// Dentro do Estado: Se CFOP for 5.118 (ID 2000256) alterar para 5.923 (ID 2000363)
				if (cfop.getLBR_CFOP_ID() == 2000256)
				{
					nfLine.setLBR_CFOP_ID(2000363);
					cfopShipment = new MLBRCFOP(Env.getCtx(), 2000363, null);
				}	
				// Fora do Estado: Se CFOP for 6.118 (ID 2000391) alterar para 6.923 (ID 2000363)
				else if (cfop.getLBR_CFOP_ID() == 2000391)
				{
					nfLine.setLBR_CFOP_ID(2000495);
					cfopShipment = new MLBRCFOP(Env.getCtx(), 2000363, null);
				}
				
				nfLine.save();
				
				// Adicionado Natureza da Operação
				if (cfopShipment != null)
					nfTri.setlbr_CFOPNote(cfopShipment.getDescription());
				
				// Salvar
				nfTri.save();
			}*/
			
			// Preparar a NF
			nfTri.prepareIt();
			
			//	Commit
			Trx.get(trxName, false).commit();
			
			log.warning("Nota Fiscal Triangular de Remessa - NF-e: " + nfTri.getDocumentNo() + " - ID: " + nfTri.getLBR_NotaFiscal_ID());
			
			return nfTri.getLBR_NotaFiscal_ID();
		}
		catch (Exception e)
		{
			Trx.get(trxName, false).rollback();
			throw new AdempiereException(e.getMessage());
		}		
	}
	
	/**
	 * Gerar Nota Fiscal de Entregas Futuras
	 * @param nf
	 * @return
	 */
	public int generateNFEntregaFutura()
	{
		String trxName = Trx.createTrxName();
		
		try
		{
			// Criando Nota de Entregas Futuras
			MLBRNotaFiscal nfEntFut = new MLBRNotaFiscal(Env.getCtx(), 0, null);
			
			MInOut io = new MInOut (Env.getCtx(), (Integer)m_M_InOut_ID, trxName);
			
			// Gerando NF Entrega a partir da Remessa
			if (io != null && io.getM_InOut_ID() > 0)
				nfEntFut.generateNF(io, io.isSOTrx());		
			else
				throw new AdempiereException("Erro ao Gerar NF-e de Entregas Futuras. Remessa invalido");	
			
			// Marcar como manual para Evitar Reprocessamento
			nfEntFut.setIsManual(true);
			
			// Adicionar Data Atual
			nfEntFut.setDateDoc(Env.getContextAsDate(Env.getCtx(), "Date"));
			
			//	Zerar Nota Fiscal
			clearNF(nfEntFut);
			
			//	Preencher Nota Fiscal com os dados do Formulário
			miniTableDataToNF(nfEntFut);
	
			//	Commit
			Trx.get(trxName, false).commit();
			
			log.warning("Nota Fiscal de Entrega Futura - NF-e: " + nfEntFut.getDocumentNo() + " - ID: " + nfEntFut.getLBR_NotaFiscal_ID());
			
			return nfEntFut.getLBR_NotaFiscal_ID();
		}
		catch (Exception e)
		{
			Trx.get(trxName, false).rollback();
			throw new AdempiereException(e.getMessage());
		}
	}
	
	/**
	 * 
	 * @return
	 */
	protected int generateNFAnulacao()
	{
		String trxName = Trx.createTrxName();
		
		try
		{	
			//	Nota Fiscal Atual
			MLBRNotaFiscal nf = new MLBRNotaFiscal (Env.getCtx(), (Integer)m_LBR_NotaFiscal_ID, trxName);
			
			//	Nota Fiscal de Anulação de Valores
			MLBRNotaFiscal nfAnul = new MLBRNotaFiscal(Env.getCtx(), 0, trxName);
			
			// Gerando NF de Anulação de Valores a partir da Fatura
			nfAnul.generateNF((MInvoice)nf.getC_Invoice(), nf.isSOTrx());
			
			//	Recém Criada
			nfAnul.m_justCreated = true;
			
			// Marcar como manual para Evitar Reprocessamento
			nfAnul.setIsManual(true);
			
			// Adicionar Data Atual
			nfAnul.setDateDoc(Env.getContextAsDate(Env.getCtx(), "Date"));		
			
			// Alterando Finalidade para NFe de Anulação de Valores
			nfAnul.setlbr_FinNFe(MLBRNotaFiscal.LBR_FINNFE_NFeDeAjuste);
			
			// Adicionando NF Referenciada
			MLBRNotaFiscalDocRef nfDocRef = new MLBRNotaFiscalDocRef(Env.getCtx(), 0, nfAnul.get_TrxName());
			nfDocRef.setAD_Org_ID(nfAnul.getAD_Org_ID());
			nfDocRef.setLBR_NotaFiscal_ID(nfAnul.getLBR_NotaFiscal_ID());
			nfDocRef.setLBR_NFeReferenced_ID(nf.getLBR_NotaFiscal_ID());
			nfDocRef.setlbr_NFeID(nf.getlbr_NFeID());
			
			//	Verificando Modelo da NF
			if (MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalEletrônica.equals(nfAnul.getlbr_NFModel()))
				nfDocRef.setLBR_FiscalDocRefType(MLBRNotaFiscalDocRef.LBR_FISCALDOCREFTYPE_NF_E);
			else if (MLBRNotaFiscal.LBR_NFMODEL_CupomFiscalEmitidoPorECF.equals(nfAnul.getlbr_NFModel()))
				nfDocRef.setLBR_FiscalDocRefType(MLBRNotaFiscalDocRef.LBR_FISCALDOCREFTYPE_CT_E);	
			
			nfDocRef.save();
			
			//	Zerar Nota Fiscal
			clearNF(nfAnul);
			
			//	Preencher Nota Fiscal com os dados do Formulário
			miniTableDataToNF(nfAnul);
			
			//	Commit
			Trx.get(trxName, false).commit();
			
			log.warning("Nota Fiscal de Anulação de Valores: " + nfAnul.getDocumentNo() + " - Organização: " + nfAnul.getlbr_OrgName());
			
			return nfAnul.getLBR_NotaFiscal_ID();

		}
		catch (Exception e)
		{
			Trx.get(trxName, false).rollback();
			throw new AdempiereException(e.getMessage());
		}		
	}
	
	/**
	 * 
	 * @param nfAdd
	 */
	protected void clearNF(MLBRNotaFiscal nfAdd)
	{
		// Zerando os Impostos do Cabeçalho
		List<MLBRNFTax> nfTaxes = new Query(Env.getCtx(), MLBRNFTax.Table_Name, "LBR_NotaFiscal_ID=?", nfAdd.get_TrxName())
				.setParameters(nfAdd.getLBR_NotaFiscal_ID())
				.list();
		
		//	Zerando Impostos
		for (MLBRNFTax nfTax : nfTaxes)
		{
			nfTax.setlbr_TaxAmt(BigDecimal.ZERO);
			nfTax.setlbr_TaxBaseAmt(BigDecimal.ZERO);
			nfTax.save();
		}
		
		// Zerando Quantidade, Valor e Impostos das Linhas
		for (MLBRNotaFiscalLine nfLine : nfAdd.getLines())
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
		
		//	Totais
		nfAdd.setGrandTotal(BigDecimal.ZERO);
		nfAdd.setTotalLines(BigDecimal.ZERO);
		nfAdd.setFreightAmt(BigDecimal.ZERO);
		nfAdd.setLBR_OtherChargesAmt(BigDecimal.ZERO);
		nfAdd.setlbr_InsuranceAmt(BigDecimal.ZERO);
		nfAdd.setDiscountAmt(BigDecimal.ZERO);
		nfAdd.setlbr_ServiceTotalAmt(BigDecimal.ZERO);
		nfAdd.setlbr_vTotTrib(BigDecimal.ZERO);
		
		// Salvar
		nfAdd.save();
	}
	
	/**
	 * 
	 * @param nfAdd
	 */
	protected void miniTableDataToNF(MLBRNotaFiscal nfAdd)
	{
		// Zerando os Impostos do Cabeçalho
		List<MLBRNFTax> nfTaxes = new Query(Env.getCtx(), MLBRNFTax.Table_Name, "LBR_NotaFiscal_ID=?", nfAdd.get_TrxName())
				.setParameters(nfAdd.getLBR_NotaFiscal_ID())
				.list();
				
		//	Total ICMS
		MLBRNFTax nfTaxICMS = null;
			
		//	Zerando Impostos
		for (MLBRNFTax nfTax : nfTaxes)
		{
			//	ICMS
			if (nfTax.getLBR_TaxGroup_ID() == 1120000)
				nfTaxICMS = nfTax;
		}
		
		int i = 0;
		
		BigDecimal taxBaseAmtTotal = BigDecimal.ZERO;
		BigDecimal taxAmtTotal = BigDecimal.ZERO;
		BigDecimal grandTotal = BigDecimal.ZERO;
		
		//	Incluíndo dados do Formulário na Nota Fiscal
		for (MLBRNotaFiscalLine nfl : nfAdd.getLines())
		{
			if (((Boolean)miniTableNF.getValueAt(i, 0)).booleanValue())
			{	
				KeyNamePair knp = (KeyNamePair) miniTableNF.getValueAt(i, 1);
				
				if (knp.getName().equals(nfl.getLine() + "") && miniTableNF.getValueAt(i, 2).equals(nfl.getM_Product().getName()))
				{
					
					String CFOPValue = (String)miniTableNF.getValueAt(i, 3);
					
					MLBRCFOP cfop = MLBRCFOP.getCFOP(Env.getCtx(), CFOPValue, nfAdd.get_TrxName());
					
					if (cfop != null && cfop.getLBR_CFOP_ID() != nfl.getLBR_CFOP_ID())
					{	
						nfl.setLBR_CFOP_ID(cfop.getLBR_CFOP_ID());
						nfl.saveEx();
					}	
					
					BigDecimal taxBaseAmt = (BigDecimal) miniTableNF.getValueAt(i, 7);
					BigDecimal taxRate = (BigDecimal) miniTableNF.getValueAt(i, 8);
					BigDecimal taxAmt = (BigDecimal) miniTableNF.getValueAt(i, 9);
					
					MLBRNFLineTax nflTax = new Query(Env.getCtx(), MLBRNFLineTax.Table_Name, "LBR_NotaFiscalLine_ID = ? AND LBR_TaxGroup_ID=1120000", nfAdd.get_TrxName())
											.setParameters(nfl.getLBR_NotaFiscalLine_ID())
											.first();
					
					nflTax.setlbr_TaxBaseAmt(taxBaseAmt);
					nflTax.setlbr_TaxRate(taxRate);
					nflTax.setlbr_TaxAmt(taxAmt);
					
					taxBaseAmtTotal = taxBaseAmtTotal.add(taxBaseAmt);
					taxAmtTotal = taxAmtTotal.add(taxAmt);
					
					nflTax.save();
				}	
			}
			else
			{
				KeyNamePair knp = (KeyNamePair) miniTableNF.getValueAt(i, 1);
				
				if (knp.getName().equals(nfl.getLine() + "") && miniTableNF.getValueAt(i, 2).equals(nfl.getM_Product().getName()))
					nfl.delete(false);
			}
			
			// Total Geral
			grandTotal = grandTotal.add(nfl.getLineTotalAmt());
			
			i++;
		}
		
		//	Tax ICMS
		if (nfTaxICMS == null)
		{
			nfTaxICMS = new MLBRNFTax(Env.getCtx(), 0, nfAdd.get_TrxName());
			nfTaxICMS.setLBR_TaxGroup_ID(1120000); // Grupo ICMS
		}
		
		nfTaxICMS.setlbr_TaxBaseAmt(taxBaseAmtTotal);
		nfTaxICMS.setlbr_TaxAmt(taxAmtTotal);
		nfTaxICMS.saveEx();
		
		nfAdd.setGrandTotal(grandTotal);
		nfAdd.saveEx();
	}
	
	/**
	 * 	Retrieve the data
	 * 	@return
	 */
	protected Vector<Vector<Object>> getNFLineData ()
	{
		if (m_LBR_NotaFiscal_ID == null || (Integer)m_LBR_NotaFiscal_ID <= 0)
			throw new AdempiereException("Preencher Nota Fiscal");
		
		Vector<Vector<Object>> data = new Vector<Vector<Object>>();
		StringBuilder sql = new StringBuilder("SELECT bp.Name, p.Name AS ProductName, nfl.LBR_NotaFiscalLine_ID, nfl.Line, nfl.Qty, nfl.Price, ");
		sql.append("nfl.LineTotalAmt, nf.GrandTotal, nf.LBR_NotaFiscal_ID, nf.DocumentNo, nf.DocStatus, ");
		sql.append("nft_icms.lbr_TaxBaseAmt, nft_icms.lbr_TaxRate, lbr_TaxAmt, cfop.Value AS CFOP ");
		sql.append("FROM LBR_NotaFiscal nf ");
		sql.append("LEFT JOIN C_BPartner bp ON bp.C_BPartner_ID = nf.C_BPartner_ID ");
		sql.append("INNER JOIN LBR_NotaFiscalLine nfl ON nf.LBR_NotaFiscal_ID = nfl.LBR_NotaFiscal_ID ");
		sql.append("LEFT JOIN M_Product p ON p.M_Product_ID = nfl.m_Product_ID ");
		sql.append("LEFT JOIN LBR_NFLineTax nft_icms ON nft_icms.LBR_NotaFiscalLine_ID = nfl.LBR_NotaFiscalLine_ID AND LBR_TaxGroup_ID=1120000 ");
		sql.append("LEFT JOIN LBR_CFOP cfop ON cfop.LBR_CFOP_ID = nfl.LBR_CFOP_ID ");
		sql.append("WHERE nf.LBR_NotaFiscal_ID = ?");
				
		if (log.isLoggable(Level.FINE)) log.fine("InvSQL=" + sql.toString());
		
		// role security
		sql = new StringBuilder( MRole.getDefault(Env.getCtx(), false).addAccessSQL(sql.toString(), "nf", MRole.SQL_FULLYQUALIFIED, MRole.SQL_RO ));
		sql.append(" ORDER BY nfl.Line ");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setInt(1, (Integer)m_LBR_NotaFiscal_ID);
			
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				Vector<Object> line = new Vector<Object>();
				line.add(Boolean.valueOf(false));					//  0-Selection
				KeyNamePair knp = new KeyNamePair(rs.getInt("LBR_NotaFiscalLine_ID"), rs.getString("Line"));
				//
				line.add(knp);									//  1-DocumentNo
				line.add(rs.getString("ProductName"));	//  4-Production Qty
				line.add(rs.getString("cfop"));	//  5-Production Qty
				line.add(rs.getBigDecimal("Qty"));		//  6-Movement Qty
				line.add(rs.getBigDecimal("Price"));		//  7-Price Entered
				line.add(rs.getBigDecimal("GrandTotal"));		//  8-Grand Total
				line.add(rs.getBigDecimal("lbr_TaxBaseAmt"));		//  9-Grand Total
				line.add(rs.getBigDecimal("lbr_TaxRate"));		//  9-Grand Total
				line.add(rs.getBigDecimal("lbr_TaxAmt"));		//  9-Grand Total
				String status = rs.getString("DocStatus");		//  10-Document Status
				line.add(status);
				data.add(line);		
				
			}
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally
		{
			DB.close(rs, pstmt);
		}
		
		return data;
	}	//	getProductionData
	
	/**
	 * 	Retrieve the data
	 * 	@return
	 */
	protected Vector<Vector<Object>> getOrderLineData ()
	{
		if (m_C_Order_ID == null || (Integer)m_C_Order_ID <= 0)
			throw new AdempiereException("Preencher Pedido");
		
		Vector<Vector<Object>> data = new Vector<Vector<Object>>();
		StringBuilder sql = new StringBuilder("SELECT bp.Name, p.Name AS ProductName, ol.C_OrderLine_ID, ol.Line, ol.QtyEntered, ol.PriceEntered, ");
		sql.append("ol.LineNetAmt, o.GrandTotal, o.C_Order_ID, o.DocumentNo, o.DocStatus, ");
		sql.append("order_icms.lbr_TaxBaseAmt, order_icms.lbr_TaxRate, order_icms.lbr_TaxAmt, cfop.Value AS CFOP ");
		sql.append("FROM C_Order o ");
		sql.append("LEFT JOIN C_BPartner bp ON bp.C_BPartner_ID = o.C_BPartner_ID ");
		sql.append("INNER JOIN C_OrderLine ol ON ol.C_Order_ID = o.C_Order_ID ");
		sql.append("LEFT JOIN M_Product p ON p.M_Product_ID = ol.m_Product_ID ");
		sql.append("LEFT JOIN LBR_TaxLine order_icms ON order_icms.LBR_Tax_ID = ol.LBR_Tax_ID AND LBR_TaxName_ID=1106000 ");
		sql.append("LEFT JOIN LBR_CFOP cfop ON cfop.LBR_CFOP_ID = ol.LBR_CFOP_ID ");
		sql.append("WHERE o.C_Order_ID = ?");
				
		if (log.isLoggable(Level.FINE)) log.fine("InvSQL=" + sql.toString());
		
		// role security
		sql = new StringBuilder( MRole.getDefault(Env.getCtx(), false).addAccessSQL(sql.toString(), "p", MRole.SQL_FULLYQUALIFIED, MRole.SQL_RO ));
		sql.append(" ORDER BY ol.Line ");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setInt(1, (Integer)m_C_Order_ID);
			
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				Vector<Object> line = new Vector<Object>();
				line.add(Boolean.valueOf(false));					//  0-Selection
				KeyNamePair knp = new KeyNamePair(rs.getInt("C_OrderLine_ID"), rs.getString("Line"));
				//
				line.add(knp);									//  1-DocumentNo
				line.add(rs.getString("ProductName"));	//  4-Production Qty
				line.add(rs.getString("cfop"));	//  5-Production Qty
				line.add(rs.getBigDecimal("QtyEntered"));		//  6-Movement Qty
				line.add(rs.getBigDecimal("PriceEntered"));		//  7-Price Entered
				line.add(rs.getBigDecimal("GrandTotal"));		//  8-Grand Total
				line.add(rs.getBigDecimal("lbr_TaxBaseAmt"));	//  9-Grand Total
				line.add(rs.getBigDecimal("lbr_TaxRate"));		//  9-Grand Total
				line.add(rs.getBigDecimal("lbr_TaxAmt"));		//  9-Grand Total
				String status = rs.getString("DocStatus");		//  10-Document Status
				line.add(status);
				data.add(line);		
				
			}
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally
		{
			DB.close(rs, pstmt);
		}
		
		return data;
	}	//	getProductionData
	
	/**
	 * 	Retrieve the data
	 * 	@return
	 */
	protected Vector<Vector<Object>> getInOutLineData ()
	{
		
		if (m_M_InOut_ID == null || (Integer)m_M_InOut_ID <= 0)
			throw new AdempiereException("Preencher Remessa");
			
		Vector<Vector<Object>> data = new Vector<Vector<Object>>();
		StringBuilder sql = new StringBuilder("SELECT bp.Name, p.Name AS ProductName, il.M_InOutLine_ID, il.Line, il.MovementQty, ol.PriceEntered, ");
		sql.append("(il.MovementQty * ol.PriceEntered) AS TotalLines, o.GrandTotal, i.M_InOut_ID, i.DocumentNo, i.DocStatus, ");
		sql.append("order_icms.lbr_TaxBaseAmt, order_icms.lbr_TaxRate, order_icms.lbr_TaxAmt, cfop.Value AS CFOP ");
		sql.append("FROM M_InOut i ");
		sql.append("LEFT JOIN C_BPartner bp ON bp.C_BPartner_ID = i.C_BPartner_ID ");
		sql.append("INNER JOIN M_InOutLine il ON il.M_InOut_ID = i.M_InOut_ID ");
		sql.append("INNER JOIN C_OrderLine ol ON ol.C_OrderLine_ID = il.C_OrderLine_ID ");
		sql.append("INNER JOIN C_Order o ON ol.C_Order_ID = o.C_Order_ID ");
		sql.append("LEFT JOIN M_Product p ON p.M_Product_ID = ol.m_Product_ID ");
		sql.append("LEFT JOIN LBR_TaxLine order_icms ON order_icms.LBR_Tax_ID = ol.LBR_Tax_ID AND LBR_TaxName_ID=1106000 ");
		sql.append("LEFT JOIN LBR_CFOP cfop ON cfop.LBR_CFOP_ID = ol.LBR_CFOP_ID ");
		sql.append("WHERE i.M_InOut_ID = ?");
				
		if (log.isLoggable(Level.FINE)) log.fine("InvSQL=" + sql.toString());
		
		// role security
		sql = new StringBuilder( MRole.getDefault(Env.getCtx(), false).addAccessSQL(sql.toString(), "i", MRole.SQL_FULLYQUALIFIED, MRole.SQL_RO ));
		sql.append(" ORDER BY il.Line ");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setInt(1, (Integer)m_M_InOut_ID);
			
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				Vector<Object> line = new Vector<Object>();
				line.add(Boolean.valueOf(false));					//  0-Selection
				KeyNamePair knp = new KeyNamePair(rs.getInt("M_InOutLine_ID"), rs.getString("Line"));
				//
				line.add(knp);									//  1-DocumentNo
				line.add(rs.getString("ProductName"));	//  4-Production Qty
				line.add(rs.getString("cfop"));	//  5-Production Qty
				line.add(rs.getBigDecimal("MovementQty"));		//  6-Movement Qty
				line.add(rs.getBigDecimal("PriceEntered"));		//  7-Price Entered
				line.add(rs.getBigDecimal("GrandTotal"));		//  8-Grand Total
				line.add(rs.getBigDecimal("lbr_TaxBaseAmt"));	//  9-Grand Total
				line.add(rs.getBigDecimal("lbr_TaxRate"));		//  9-Grand Total
				line.add(rs.getBigDecimal("lbr_TaxAmt"));		//  9-Grand Total
				String status = rs.getString("DocStatus");		//  10-Document Status
				line.add(status);
				data.add(line);		
				
			}
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally
		{
			DB.close(rs, pstmt);
		}
		
		return data;
	}	//	getProductionData	
	
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
	
	/**
	 * 
	 * @param LBR_NotaFiscal_ID
	 * @param IsSoTrx
	 */
	public void openNFAdditional(int LBR_NotaFiscal_ID)
	{
		MLBRNotaFiscal nf = new MLBRNotaFiscal(Env.getCtx(), LBR_NotaFiscal_ID, null);
		String where = "LBR_NotaFiscal_ID = " + LBR_NotaFiscal_ID;
		int window = 0;
		
		// Janela Nota Fiscal
		if (nf.isSOTrx())
			window = 1000015;	//	Nota Fiscal de Saída
		else
			window = 1000019;	//	Nota Fiscal de Entrada
		
		//		Query
		MQuery query = new MQuery(MLBRNotaFiscal.Table_Name);
		query.addRestriction(where);
		
		AEnv.zoom (window, query);
	}
	
	
}	//	NotaFiscal