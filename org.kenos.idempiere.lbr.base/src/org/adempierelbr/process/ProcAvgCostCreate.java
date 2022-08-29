/******************************************************************************
 * Product: Compiere ERP & CRM Smart Business Solution                        *
 * Copyright (C) 1999-2006 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.adempierelbr.process;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;

import org.adempierelbr.model.X_LBR_AverageCost;
import org.adempierelbr.model.X_LBR_AverageCostLine;
import org.compiere.model.MPeriod;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.kenos.idempiere.lbr.base.model.MLBRAverageCostLine;

/**
 * 	Average Cost BR
 *	
 *  @author Ricardo Santana
 *  @contributor Mario Grigioni
 *  @version $Id: ProcAvgCostCreate.java, 30/07/2006 00:51:01 ralexsander Exp $
 */
public class ProcAvgCostCreate extends SvrProcess
{

	private int	   p_LBR_AverageCost_ID = 0;
	private String costType = "";
	private boolean productionBased = true;
	private final String  MANUFACTURED = X_LBR_AverageCostLine.LBR_AVGCOSTTYPE_Manufactured;
	private final String  PUCHASED     = X_LBR_AverageCostLine.LBR_AVGCOSTTYPE_Purchased;
	
	public String trxName = null;
	
	/**
	 * 	Prepare
	 */
	protected void prepare ()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals("lbr_AvgCostType"))
				costType = (String) para[i].getParameter();
			else if (name.equals("LBR_ProductionBased"))
				productionBased = para[i].getParameterAsBoolean();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		
		p_LBR_AverageCost_ID = getRecord_ID();
	}	//	prepare

	/**
	 * 	Process
	 *	@return Info
	 *	@throws Exception
	 */
	protected String doIt() throws Exception
	{
		if (p_LBR_AverageCost_ID == 0)
		{
			log.warning("LBR_AverageCost_ID=" + p_LBR_AverageCost_ID);
			return "ERR: No LBR_AverageCost_ID";
		}
		
		X_LBR_AverageCost avgCost = new X_LBR_AverageCost(getCtx(), p_LBR_AverageCost_ID, trxName);				
		MPeriod period = new MPeriod(getCtx(), avgCost.getC_Period_ID(), trxName);
		
		cleanupLines(avgCost.get_ID(),costType);
		
		String sql = "";
		
		//	Comprados
		if (costType.equals(PUCHASED))
		{
			sql = "SELECT DISTINCT p.M_Product_ID, QtyOnDate(p.M_Product_ID, "+DB.TO_DATE(period.getStartDate())+") AS QtyOnDate, " +
						 "c.CurrentCostPrice, " +
						 "SUM(CASE WHEN f.AmtAcctDR-f.AmtAcctCR<>0 THEN f.AmtAcctDR-f.AmtAcctCR ELSE il.PriceEntered*il.QtyEntered END) AS CumulatedAmt, " +
						 "SUM(il.QtyEntered) AS CumulatedQty, " +
						 "COALESCE ((SELECT SUM(lc.Amt) " +
					        "FROM C_LandedCostAllocation lc, C_InvoiceLine zil, C_Invoice zi " +
					        "WHERE zi.C_Invoice_ID=zil.C_Invoice_ID " +
					        "AND zil.C_InvoiceLine_ID=lc.C_InvoiceLine_ID " +
					        "AND lc.M_Product_ID=p.M_Product_ID " +
					        "AND zi.DocStatus IN ('CL', 'CO') " +
					        "AND zi.DateAcct BETWEEN " + DB.TO_DATE(period.getStartDate()) + " AND " + DB.TO_DATE(period.getEndDate()) + "),0) AS LBR_LandedCostAmt, " +
						 "COALESCE ((SELECT SUM(lc.Qty) " +
					        "FROM C_LandedCostAllocation lc, C_InvoiceLine zil, C_Invoice zi " +
					        "WHERE zi.C_Invoice_ID=zil.C_Invoice_ID " +
					        "AND zil.C_InvoiceLine_ID=lc.C_InvoiceLine_ID " +
					        "AND lc.M_Product_ID=p.M_Product_ID " +
					        "AND zi.DocStatus IN ('CL', 'CO') " +
					        "AND zi.DateAcct BETWEEN " + DB.TO_DATE(period.getStartDate()) + " AND " + DB.TO_DATE(period.getEndDate()) + "),0) AS LBR_LandedCostQty " +
					"FROM C_Invoice i " +
						 "INNER JOIN C_InvoiceLine il ON i.C_Invoice_ID = il.C_Invoice_ID " +
						 "INNER JOIN C_DocType dt ON dt.C_DocType_ID=i.C_DocTypeTarget_ID " +
						 "INNER JOIN M_Product p ON p.M_Product_ID = il.M_Product_ID " +
						 "INNER JOIN M_Cost c ON (c.M_Product_ID = il.M_Product_ID AND c.M_CostElement_ID = ?) " +
						 "LEFT JOIN Fact_Acct f ON (f.Line_ID=il.C_InvoiceLine_ID AND f.AD_Table_ID=318 AND il.C_Tax_ID=f.C_Tax_ID) " +
					"WHERE i.DocStatus IN ('CL', 'CO') " +
						 "AND p.ProductType = 'I' " +
						 "AND i.AD_Client_ID = ? " +
						 "AND i.IsSotrx = 'N' " +
						 "AND p.IsPurchased = 'Y' " +
						 "AND PriceEntered > 0 " +
						 "AND dt.DocBaseType = 'API' " +
						 "AND i.DateAcct BETWEEN "+DB.TO_DATE(period.getStartDate())+" AND "+DB.TO_DATE(period.getEndDate())+
					" GROUP BY p.M_Product_ID, c.CurrentCostPrice " +
					"ORDER BY CurrentCostPrice DESC";
		}
		
		//	Fabricados
		else if (costType.equals(MANUFACTURED))
		{
			sql = "SELECT pr.M_Product_ID, QtyOnDate(pr.M_Product_ID, " +
					DB.TO_DATE(period.getStartDate()) + ") AS QtyOnDate, cz.CurrentCostPrice AS CurrentCostPrice, " +
					"SUM(CASE WHEN pl.IsEndProduct='N' THEN pl.QtyUsed*c.CurrentCostPrice ELSE pr.PriceEntered*pr.ProductionQty END) AS CumulatedAmt, " +
					"SUM(CASE WHEN pl.IsEndProduct='Y' THEN pr.ProductionQty ELSE 0 END) AS CumulatedQty, 0 AS LBR_LandedCostAmt, 0 AS LBR_LandedCostQty " +
					"FROM M_Production pr " +
						"INNER JOIN M_ProductionLine pl ON (pl.M_Production_ID=pr.M_Production_ID) " +
						"INNER JOIN M_Cost c ON (c.M_Product_ID=pl.M_Product_ID AND c.M_CostElement_ID=?) " +
						"INNER JOIN M_Cost cz ON (cz.M_Product_ID=pr.M_Product_ID AND cz.M_CostElement_ID=c.M_CostElement_ID) " +
					"WHERE pr.Processed='Y' " +
						"AND pr.AD_Client_ID=? " +
						"AND TRUNC(pr.MovementDate) BETWEEN "+DB.TO_DATE(period.getStartDate())+" AND "+DB.TO_DATE(period.getEndDate())+
					"GROUP BY pr.M_Product_ID, cz.CurrentCostPrice";
		}
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			int i=1;
			pstmt = DB.prepareStatement (sql, trxName);
			pstmt.setInt(i++, avgCost.getM_CostElement_ID());
			pstmt.setInt(i++, avgCost.getAD_Client_ID());
			
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				MLBRAverageCostLine line = new MLBRAverageCostLine (getCtx(), 0, trxName);
				line.setLBR_AverageCost_ID(p_LBR_AverageCost_ID);
				line.setM_Product_ID(rs.getInt("M_Product_ID"));
				line.setCurrentQty(rs.getBigDecimal("QtyOnDate"));
				line.setCurrentCostPrice(rs.getBigDecimal("CurrentCostPrice"));
				line.setCumulatedAmt(rs.getBigDecimal("CumulatedAmt"));
				line.setCumulatedQty(rs.getBigDecimal("CumulatedQty"));
				line.setLBR_LandedCostAmt(rs.getBigDecimal("LBR_LandedCostAmt"));
				line.setLBR_LandedCostQty(rs.getBigDecimal("LBR_LandedCostQty"));
				line.setlbr_AvgCostType(costType);
				
				BigDecimal totCurrent = line.getCurrentCostPrice().multiply(line.getCurrentQty());
				BigDecimal totCumulated = line.getCumulatedAmt();
				BigDecimal total = totCurrent.add(totCumulated);
				BigDecimal sumQty = line.getCurrentQty().add(line.getCumulatedQty());
				BigDecimal landed = Env.ZERO;
				if (sumQty.signum() == 0)
				{
					sumQty = Env.ONE;
					line.setDescription("ERRO NO CALCULO, DIVIDIDO POR ZERO");
				}
				if (line.getLBR_LandedCostQty() != null && line.getLBR_LandedCostQty().signum() == 1)
				{
					landed = line.getLBR_LandedCostAmt().divide(line.getLBR_LandedCostQty(), 12, RoundingMode.HALF_UP);
				}
				line.setFutureCostPrice(total.divide(sumQty, 12, RoundingMode.HALF_UP).add(landed));
				line.save();
			}
			
			/** 
			 * 	Executar varias vezes devido aos niveis da LDM.
			 * 	
			 * 	Pois um produto pode contar na sua estrutura um sub-produto
			 * 		que teve seu custo modificado, no mesmo mês. 
			 **/
			if (costType.equals(MANUFACTURED))
			{
				int j=0;
				BigDecimal oldCost = Env.ZERO;
				Boolean allLevelsOK = false;
				
				String sqlBOM = "UPDATE LBR_AverageCostLine SET CumulatedAmt = CumulatedQty*" +
								" (SELECT SUM(QtyBOM * COALESCE(ccust.FutureCostPrice, ocust.CurrentCostPrice, 0)) " +
									"FROM LBR_AverageCostLine cl " +
									"INNER JOIN RV_BOMLine bom ON (bom.M_Product_ID=cl.M_Product_ID) " +
									"LEFT JOIN LBR_AverageCostLine ccust ON (ccust.M_Product_ID=bom.TM_Product_ID AND cl.LBR_AverageCost_ID=ccust.LBR_AverageCost_ID) " +
									"LEFT JOIN M_Cost ocust ON (ocust.M_Product_ID=bom.TM_Product_ID AND ocust.M_CostElement_ID=?) " +
									"WHERE cl.LBR_AverageCostLine_ID=LBR_AverageCostLine.LBR_AverageCostLine_ID " +
									"AND NOT EXISTS (SELECT '1' FROM M_Product p WHERE p.M_Product_ID = bom.TM_Product_ID AND p.isBOM = 'Y'::BPCHAR) " +
								") WHERE LBR_AverageCost_ID=? AND LBR_AvgCostType='M'";
				
				String sqlProd = "UPDATE LBR_AverageCostLine SET (CumulatedAmt,CumulatedQty) =" +
									" (SELECT AvgCost,ProductionQty " +
										"FROM RV_ProductionCost pc " +
										"WHERE MovementDate=TRUNC((SELECT p.StartDate " +
					 							"FROM C_Period p, LBR_AverageCost c " +
					 							"WHERE c.LBR_AverageCost_ID=LBR_AverageCostLine.LBR_AverageCost_ID " +
					 							"AND c.C_Period_ID=p.C_Period_ID), 'MM') " +
					 					"AND pc.M_CostElement_ID=? " +
					 					"AND pc.M_Product_ID=LBR_AverageCostLine.M_Product_ID) " +
					 				"WHERE LBR_AverageCost_ID=? " +
					 				"AND LBR_AvgCostType='M'";
				
				String sqlCalc = "UPDATE LBR_AverageCostLine SET FutureCostPrice = ((CurrentCostPrice * CurrentQty) + (CumulatedAmt)) / NULLIF((CurrentQty + CumulatedQty),0) " +
								"WHERE LBR_AverageCost_ID=? AND LBR_AvgCostType='M'";
				
				Object[] params = new Object[]{avgCost.getM_CostElement_ID(), avgCost.getLBR_AverageCost_ID()};
				
				while (!allLevelsOK)
				{
					DB.executeUpdateEx (sqlProd, params, trxName);
					
					//	Caclula o custo baseado na BOM
					if (!productionBased)
						DB.executeUpdateEx (sqlBOM, params, trxName);
					
					//	Faz a conta do custo médio ponderado
					DB.executeUpdateEx (sqlCalc, new Object[]{avgCost.getLBR_AverageCost_ID()}, trxName);

					BigDecimal result = DB.getSQLValueBD(avgCost.get_TrxName(), "SELECT SUM(CumulatedAmt) " +
							"FROM LBR_AverageCostLine WHERE LBR_AverageCost_ID=?", avgCost.getLBR_AverageCost_ID());
					
					log.fine ("Try #" + j + " / Calculated: " + result);
					
					if (result.compareTo (oldCost) == 0 || j > 29)
						allLevelsOK = true;
					else
					{
						oldCost = result;
						j++;
					}
				}
			}
			
			//	Produtos Comprados
			if(costType.equals(PUCHASED))
				avgCost.setlbr_AvgStep1(true);
			
			//	Produtos Fabricados
			else
				avgCost.setlbr_AvgStep3(true);
			
			avgCost.save(trxName);
		}
		catch (Exception e)
		{
			log.log (Level.SEVERE, sql, e);
		}
		finally
		{
			DB.close(rs, pstmt);
		}
		
		return Msg.getMsg(Env.getAD_Language(getCtx()), "ProcessOK", true);
	}	//	doIt
	
	/**
	 * 	Apaga as linhas 
	 * 	@param ID
	 * 	@param costType
	 */
	private void cleanupLines (int ID, String costType)
	{
		String sql = "DELETE FROM LBR_AverageCostLine " +
				     "WHERE LBR_AvgCostType=? AND LBR_AverageCost_ID=?";
		//
		DB.executeUpdate(sql, new Object[]{costType,ID}, false, trxName);
	}	//	cleanupLine

}	//ProcAvgCostCreate