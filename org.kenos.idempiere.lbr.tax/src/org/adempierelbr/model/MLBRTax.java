/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2011 Ricardo Santana                                         *
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

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import org.adempiere.model.POWrapper;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.adempierelbr.wrapper.I_W_C_Invoice;
import org.adempierelbr.wrapper.I_W_C_InvoiceLine;
import org.adempierelbr.wrapper.I_W_C_Order;
import org.adempierelbr.wrapper.I_W_C_OrderLine;
import org.adempierelbr.wrapper.I_W_M_Product;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.compiere.model.MOrder;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.model.MSysConfig;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.base.model.MLBRProductConfig;
import org.kenos.idempiere.lbr.base.model.SysConfig;

import bsh.EvalError;
import bsh.Interpreter;

/**
 * 		Model for MLBRTax
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 * 			<li> Sponsored by Soliton, www.soliton.com.br
 *	@version $Id: MLBRTax.java, v1.0 2011/05/05 8:19:03 PM, ralexsander Exp $
 *		
 *		Old Version:
 *	@contributor Mario Grigioni
 *  @contributor Fernando Lucktemberg (Faire, www.faire.com.br)
 */
public class MLBRTax extends X_LBR_Tax 
{
	/** Serial			*/
	private static final long serialVersionUID = 1932340299220283663L;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MLBRTax.class);

	/**	Numereals		*/
	private static final BigDecimal ONE 		= Env.ONE.setScale(17, RoundingMode.HALF_UP);
	private static final BigDecimal ONEHUNDRED 	= Env.ONEHUNDRED.setScale(17, RoundingMode.HALF_UP);
	
	/**	SISCOMEX		*/
	public static final String SISCOMEX 		= "SISCOMEX";
	
	/**	Freight			*/
	public static final String FREIGHT 		= "FREIGHT";
	
	/**	OTHERCHARGES		*/
	public static final String OTHERCHARGES 	= "OTHERCHARGES";
	
	/**	Insurance		*/
	public static final String INSURANCE 	= "INSURANCE";
	
	/**	Amount			*/
	public static final String AMT 			= "AMT";
	
	/**	Qty			*/
	public static final String QTY 			= "QTY";
	
	/**	Calculation Type	*/
	public static final int TYPE_RATE_OR_IVA 	= 100;
	public static final int TYPE_TARIFF 		= 101;
	public static final int TYPE_LIST_MAX 		= 102;
	public static final int TYPE_AMOUNT 		= 103;
	public static final int TYPE_LIST_POSITIVE 	= 104;
	public static final int TYPE_LIST_NEUTRAL 	= 105;
	public static final int TYPE_LIST_NEGATIVE 	= 106;
	
	/**	Taxes				*/
	public static final int	TAX_PIS			= 1106001;
	public static final int	TAX_COFINS		= 1106002;
	public static final int	TAX_ICMS		= 1106000;
	public static final int	TAX_ICMSST		= 1106012;
	public static final int	TAX_IPI			= 1106003;
	public static final int	TAX_MVA			= 1106013;
	public static final int	TAX_FCP			= 1120000;
	
	/**	Included Taxes	*/
	private List<Integer> includedTaxes = new ArrayList<Integer>();

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int LBR_Tax_ID (0 create new)
	 *  @param String trx
	 */
	public MLBRTax (Properties ctx, int LBR_Tax_ID, String trx)
	{
		super (ctx, LBR_Tax_ID, trx);
	}	//	MLBRTax

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRTax (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRTax
	
	/**
	 * 	Calculate taxes
	 * @param amt
	 * @param isTaxIncludedPriceList
	 * @param trxType
	 */
	public void calculate (boolean isTaxIncludedPriceList, Timestamp dateDoc, Map<String, BigDecimal> params, String trxType)
	{
		calculate (isTaxIncludedPriceList, dateDoc, params, trxType, null);
	}	//	calculate
	
	/**
	 * 	Calculate taxes
	 * @param amt
	 * @param isTaxIncludedPriceList
	 * @param trxType
	 */
	public void calculate (boolean isTaxIncludedPriceList, Timestamp dateDoc, Map<String, BigDecimal> params, String trxType, Boolean isSOTrx)
	{
		MLBRTaxLine[] taxLines = getLines();
		
		/**
		 * 	Os impostos de ST devem ser calculados por último
		 */
		Arrays.sort (taxLines, new Comparator<MLBRTaxLine>()
		{
			public int compare (MLBRTaxLine tl1, MLBRTaxLine tl2)
			{
				if (MLBRTaxName.LBR_TAXTYPE_Substitution.equals(tl1.getLBR_TaxName().getlbr_TaxType()))
					return 1;
				return -1;
			}	//	compare
		});
		
		/**
		 * 	Faz o cálculo para todos os impostos
		 */
		for (MLBRTaxLine taxLine : taxLines)
		{
			MLBRTaxName taxName = new MLBRTaxName (Env.getCtx(), taxLine.getLBR_TaxName_ID(), null);
			MLBRTaxFormula taxFormula = taxName.getFormula (trxType, dateDoc, isSOTrx);
			//
			log.fine("[MLBRTaxName=" + taxName.getName() + ", MLBRTaxFormula=" + taxFormula + "]");
			//
			BigDecimal taxBase		= Env.ZERO;
			BigDecimal taxBaseAdd 	= Env.ZERO;
			BigDecimal taxAmt		= Env.ZERO;
			BigDecimal amountBase 	= Env.ZERO;
			BigDecimal factor 		= Env.ONE;
			int calculationType 	= getCalculationType(taxLine);
			MLBRTaxLine taxSubDiff  = null;
			
			//	Encontra o imposto substituido para cálculo do ST
			if ((MLBRTaxName.LBR_TAXTYPE_Substitution.equals(taxName.getlbr_TaxType())
					|| MLBRTaxName.LBR_TAXTYPE_Differential.equals(taxName.getlbr_TaxType()))
					&& taxName.getLBR_TaxSubstitution_ID() > 0)
			{
				for (MLBRTaxLine taxLineSubs : taxLines)
				{
					//	Calcula a diferença do imposto
					if (taxLineSubs.getLBR_TaxName_ID() == taxName.getLBR_TaxSubstitution_ID())
					{
						taxSubDiff = taxLineSubs;
						break;
					}
				}
			}
			
			/**
			 * 		Valor da Operação
			 * 	Apenas o valor dos produtos, sem cálculos adicionais
			 */
			if (calculationType == TYPE_AMOUNT)
			{
				taxBase = params.get(AMT).setScale(17, RoundingMode.HALF_UP);
				taxAmt = getTaxAmt (taxBase, taxLine.getlbr_TaxRate(), false);
			}
			
			/**
			 * 		Valor de Pauta
			 * 	Valor do imposto definido, multiplicado pela quantidade. Ex. Sêlo do IPI
			 */
			else if (calculationType == TYPE_TARIFF)
			{
				taxLine.setQty(params.get(QTY));
				//
//				taxBase = params.get(AMT).setScale(17, RoundingMode.HALF_UP);
				taxAmt = getTaxAmt (taxLine.getLBR_TaxListAmt(), params.get(QTY), true);
			}
			
			/**
			 * 		Valor de Lista ou Máximo
			 * 	Valor da BC definida, multiplicado pela quantidade, multiplicado pela alíquota. Ex. Substiruição por Valor Fixo
			 */
			else if (calculationType == TYPE_LIST_MAX)
			{
				taxLine.setQty(params.get(QTY));
				//
				taxBase = taxLine.getLBR_TaxListAmt().multiply(params.get(QTY)).add(getIncludedAmt(taxLines).add(params.get(FREIGHT)));
				taxAmt = getTaxAmt (taxBase, taxLine.getlbr_TaxRate(), false);
			}
			
			/**
			 * 		Cálculo por Alíquota ou Margem de Valor Agregado
			 */
			else if (calculationType == TYPE_RATE_OR_IVA)
			{
				//	Calcular por fórmula
				if (taxFormula != null)
				{
					//	Fator do imposto
					factor 		= evalFormula (taxFormula.getFormula(isTaxIncludedPriceList), params);
					
					//	Valores adicionais para a BC
					if (taxFormula.getLBR_FormulaAdd_ID() > 0)
						taxBaseAdd = evalFormula (taxFormula.getLBR_FormulaAdd().getlbr_Formula(), params).setScale(17, RoundingMode.HALF_UP);
					
					//	Valor base para ínicio do cálculo
					if (taxFormula.getLBR_FormulaBase_ID() > 0)
						amountBase = evalFormula (taxFormula.getLBR_FormulaBase().getlbr_Formula(), params).setScale(17, RoundingMode.HALF_UP);
					
					//	Caso não tenha sido parametrizado, utilizar apenas o valor do documento
					else
						amountBase = params.get(AMT).setScale(17, RoundingMode.HALF_UP);
					
					//	Marca se o imposto está incluso no preço
					taxLine.setIsTaxIncluded(taxFormula.isTaxIncluded());
				}
				
				//	Caso não tenha uma fórmula atribuida, considerar o flag da Lista de Preços
				else
					taxLine.setIsTaxIncluded(isTaxIncludedPriceList);
				
				/****************************************
				 *  	 	 Adicional x Fator			*
				 *   Base = -------------------			*
				 *  		1 - (Red. BC / 100)			*
				 ***************************************/
				taxBase = taxBaseAdd.add(factor.multiply(amountBase))
						.multiply(ONE.subtract(taxLine.getlbr_TaxBase().setScale(17, RoundingMode.HALF_UP).divide(ONEHUNDRED, 17, RoundingMode.HALF_UP))).setScale(2, RoundingMode.HALF_UP);
				
				//	Alíquota de Imposto
				BigDecimal taxRate = taxLine.getlbr_TaxRate();
				
				//	Calcula a Substituição por Alíquota
				if (taxSubDiff != null 
						&& MLBRTaxName.LBR_TAXTYPE_Differential.equals(taxName.getlbr_TaxType())
						&& taxRate.compareTo(taxSubDiff.getlbr_TaxRate()) == 1)
					taxRate = taxRate.subtract(taxSubDiff.getlbr_TaxRate());
				//
				taxAmt = getTaxAmt (taxBase, taxRate, false);
			}
			
			//	Imposto ST
			if (taxSubDiff != null 
					&& MLBRTaxName.LBR_TAXTYPE_Substitution.equals(taxName.getlbr_TaxType()))
			{
				//	Calcula a diferença do imposto por valor
				taxAmt = taxAmt.subtract (taxSubDiff.getlbr_TaxAmt());
			}
			
			//	Percentage of tax that will be used
			if (taxFormula != null 
					&& taxFormula.get_ColumnIndex(MLBRTaxFormula.COLUMNNAME_Percentage) > 0		//	Compatibility Legacy 
					&& Env.ONEHUNDRED.compareTo (taxFormula.getPercentage()) != 0)
				taxAmt = taxAmt.multiply (taxFormula.getPercentage().divide (Env.ONEHUNDRED, 17, RoundingMode.HALF_UP)).setScale(2, RoundingMode.HALF_UP);
			
			//	Inverte o valor dos impostos para os casos de retenção
			if (MLBRTaxName.LBR_TAXTYPE_Service.equals(taxName.getlbr_TaxType())
					&& taxName.isLBR_HasWithhold()
					
					//	Compatibilidade com o sistema antigo
					//		a partir do novo sistema de retenção, os valores
					//		são retidos na linha do pedido/fatura
					&& (taxName.getLBR_WithholdType() == null 
						|| taxName.getLBR_WithholdType().equals(MLBRTaxName.LBR_WITHHOLDTYPE_PaidAmountSum)))
				taxAmt = taxAmt.negate();
			//
			taxLine.setlbr_TaxBaseAmt(taxBase);
			taxLine.setlbr_TaxAmt(taxAmt);
			taxLine.save();
		}
	}	//	calculate

	/**
	 * 	Calculate Tax Amount
	 * 
	 * 	@param taxBase
	 * 	@param taxRate
	 * 	@return
	 */
	private BigDecimal getIncludedAmt (MLBRTaxLine[] taxLines)
	{
		BigDecimal included = Env.ZERO;
		//
		for (MLBRTaxLine taxLineSubs : taxLines)
		{
			//	Calcula a diferença do imposto
			if (includedTaxes.contains(taxLineSubs.getLBR_TaxName_ID()))
			{
				included = included.add (taxLineSubs.getlbr_TaxAmt());
				break;
			}
		}
		//
		return included;
	}	//	getTaxAmt
	
	/**
	 * 	Calculate Tax Amount
	 * 
	 * 	@param taxBase
	 * 	@param taxRate
	 * 	@return
	 */
	private BigDecimal getTaxAmt (BigDecimal taxBase, BigDecimal taxRateOrQty, boolean isQty)
	{
		if (taxBase == null || taxBase.signum() == 0 || taxRateOrQty == null || taxRateOrQty.signum() == 0)
			return Env.ZERO;
		//
		BigDecimal result = Env.ZERO;

		//	Quantity Based
		if (isQty)
			result = taxBase.multiply(taxRateOrQty.setScale(17, RoundingMode.HALF_UP));
		
		//	Tax Rate
		else
			result = taxBase.multiply(taxRateOrQty.setScale(17, RoundingMode.HALF_UP)).divide(ONEHUNDRED, 17, RoundingMode.HALF_UP);
		
		return result.setScale(2, RoundingMode.HALF_UP);
	}	//	getTaxAmt

	/**
	 * 	Get tax factor
	 * @param formula
	 * @return factor
	 */
	public BigDecimal evalFormula (String formula)
	{
		return evalFormula (formula, null);
	}	//	evalFormula
	
	/**
	 * 	Get tax factor
	 * @param formula
	 * @param params
	 * @return factor
	 */
	public BigDecimal evalFormula (String formula, Map<String, BigDecimal> params)
	{
		if (formula == null || formula.length() == 0)
			return Env.ONE;
		//
		Interpreter bsh = new Interpreter ();
		BigDecimal result = Env.ZERO;
		//
		try
		{
			log.finer ("Formula=" + formula);
			
			/**
			 * 	Permite recursividade nas fórmulas
			 */
			formula = MLBRFormula.parseFormulas (formula);
			
			/**
			 * 	Assim o erro de divisão por ZERO é evitado
			 * 		então não implica em ter que criar uma fórmula nova
			 * 		para casos onde alguma alíquota específica é zero.
			 */
			for (MLBRTaxName txName : MLBRTaxName.getTaxNames())
				if (formula.indexOf(txName.getName().trim()) > 0)
				{
					log.finer ("Fill to ZERO, TaxName=" + txName.getName().trim() + "=0");
					bsh.set(txName.getName().trim(), 1/Math.pow (10, 17));
				}
			
			//	Ajusta o MVA automaticamente	// FIXME: Remover a retro-compatibilidade futuramente
			boolean adjustIVA = MSysConfig.getBooleanValue(SysConfig.LBR_AUTOMATIC_ADJUST_MVA, MSysConfig.getBooleanValue(SysConfig.LBR_AUTOMATIC_ADJUST_IVA, true, getAD_Client_ID()), getAD_Client_ID());
				
			//	Ajusta as alíquotas
			for (MLBRTaxLine tLine : getLines())
			{
				Double amt = tLine.getlbr_TaxRate().setScale(17, RoundingMode.HALF_UP)
						.divide(Env.ONEHUNDRED, RoundingMode.HALF_UP).doubleValue();
				//
				log.finer ("Set Tax Rate, TaxName=" + tLine.getLBR_TaxName().getName().trim() + "=" + amt);
				bsh.set(tLine.getLBR_TaxName().getName().trim(), amt);
				
				//	Caso ICMS seja zero, não ajustar o MVA
				if (MLBRTax.TAX_ICMS == tLine.getLBR_TaxName_ID() && amt == 0.0)
					adjustIVA = false;
			}
			//	Ajusta os parâmetros opcionais (ex. Frete, SISCOMEX)
			if (params != null) for (String key : params.keySet())
			{			
				log.finer ("Set Parameters, Parameter=" + key + "=" + params.get(key).doubleValue());
				bsh.set(key, params.get(key).doubleValue());
			}
			//	Ajusta do MVA
			bsh.set ("FIXMVA", adjustIVA ? 1.0 : 0.0);
			//
			result = new BigDecimal ((Double) bsh.eval(formula));
		}
		catch (EvalError e)
		{
			e.printStackTrace();
		}
		
		return result;
	}	//	evalFormula
	
	/**
	 * 		Eval the Script to find out the calculation type
	 * 	@param line
	 * 	@return
	 */
	private int getCalculationType (MLBRTaxLine line)
	{
		if (line == null || line.getLBR_TaxBaseType_ID() < 1)
			return TYPE_RATE_OR_IVA;	//	Default Value
		
		String script = line.getLBR_TaxBaseType().getScript();
		
		if (script == null)
			return TYPE_RATE_OR_IVA;
		
		Interpreter bsh = new Interpreter ();
		
		try
		{
			includedTaxes.clear();
			bsh.set("includedTaxes", includedTaxes);
			Object calcType = bsh.eval (script);
			//
			if (calcType != null && calcType instanceof Integer)
				return (Integer) calcType;
		}
		catch (EvalError e)
		{
			log.warning("Invalid script");
			return TYPE_RATE_OR_IVA;
		}
		
		return TYPE_RATE_OR_IVA;
	}	//	getCalculationType

	/**
	 * 	Set Description
	 */
	public void setDescription ()
	{
		String description = "";
		X_LBR_TaxLine[] lines = getLines();
		
		for (X_LBR_TaxLine line : lines)
		{
			MLBRTaxName tax = new MLBRTaxName (getCtx(), line.getLBR_TaxName_ID(), null);
			String name = tax.getName().trim();
			String rate = String.format("%,.2f", line.getlbr_TaxRate());
			description += ", " + name + "-" + rate;
		}

		if (description.startsWith(", ")) 
			description = description.substring(2);
		
		if (description.equals("")) 
			description = null;

		setDescription(description);
	}	//	setDescription

	/**
	 *  Copy the current MTax and return a new copy of the Object
	 *  
	 *  @return MTax newTax
	 */
	public MLBRTax copyTo ()
	{
		MLBRTax newTax = new MLBRTax(getCtx(), 0, get_TrxName());
		newTax.setDescription(getDescription());
		newTax.save(get_TrxName());
		copyLinesTo(newTax);
		//
		return newTax;
	}	//	copyTo

	/**
	 *  Copy lines from the current MTax to the newTax param
	 *  
	 * 	@param MLBRTax newTax
	 */
	public void copyLinesTo (MLBRTax newTax)
	{
		//	Delete old lines
		newTax.deleteLines();

		MLBRTaxLine[] lines = getLines();
		for (int i=0; i<lines.length; i++)
		{
			MLBRTaxLine newLine = new MLBRTaxLine (getCtx(), 0, get_TrxName());
			newLine.setLBR_Tax_ID(newTax.getLBR_Tax_ID());
			newLine.setLBR_TaxName_ID(lines[i].getLBR_TaxName_ID());
			newLine.setlbr_TaxRate(lines[i].getlbr_TaxRate());
			newLine.setlbr_TaxBase(lines[i].getlbr_TaxBase());
			newLine.setlbr_TaxBaseAmt(lines[i].getlbr_TaxBaseAmt());
			newLine.setlbr_TaxAmt(lines[i].getlbr_TaxAmt());
			newLine.setlbr_PostTax(lines[i].islbr_PostTax());
			newLine.setIsTaxIncluded(lines[i].isTaxIncluded());
			newLine.setLBR_LegalMessage_ID(lines[i].getLBR_LegalMessage_ID());
			newLine.setLBR_TaxStatus_ID(lines[i].getLBR_TaxStatus_ID());
			newLine.setQty(lines[i].getQty());
			newLine.setLBR_TaxBaseType_ID(lines[i].getLBR_TaxBaseType_ID());
			newLine.setLBR_TaxListAmt(lines[i].getLBR_TaxListAmt());
			newLine.save(get_TrxName());
		}

		newTax.setDescription();
		newTax.save();
	} 	//	copyLinesTo

	/**
	 *  Copy lines from the current MTax to the newTax param
	 * 	
	 * 	@param LBR_Tax_ID
	 */
	public void copyLinesTo (int LBR_Tax_ID)
	{
		if (LBR_Tax_ID == 0)
			return;

		MLBRTax newTax = new MLBRTax(getCtx(), LBR_Tax_ID, get_TrxName());
		copyLinesTo (newTax);
	} 	//	copyLinesTo

	/**
	 *  	Get Lines
	 *  
	 *  @return MLBRTaxLine[] lines
	 */
	public MLBRTaxLine[] getLines ()
	{
		String whereClause = "LBR_Tax_ID = ?";

		MTable table = MTable.get(getCtx(), X_LBR_TaxLine.Table_Name);
		Query q =  new Query(getCtx(), table, whereClause, get_TrxName());
		q.setParameters(new Object[]{getLBR_Tax_ID()}).setOrderBy(MLBRTaxLine.COLUMNNAME_LBR_TaxName_ID);

		List<MLBRTaxLine> list = q.list();
		MLBRTaxLine[] lines = new MLBRTaxLine[list.size()];
		return list.toArray(lines);
	} 	//	getLines

	/**
	 * 	Apaga as linhas
	 */
	public void deleteLines ()
	{
		String sql = "DELETE FROM LBR_TaxLine " +
        	         "WHERE LBR_Tax_ID=" + getLBR_Tax_ID();
		DB.executeUpdate(sql, get_TrxName());
	}	//	deleteLines

	/**
	 * 	Apaga as Linhas antes de apagar o registro
	 */
	public boolean delete (boolean force, String trxName)
	{
		deleteLines ();
		return super.delete (force, trxName);
	}	//	delete
	
	/**
	 * 		Retorna o registro do imposto baseado na pesquisa
	 * 
	 * 		Não usar este método em Callouts, pois a Callout pode acioná=lo antes que 
	 * 			a linha tenha sido salva.
	 * 
	 * 	@param Order Line
	 * 	@return Object Array (Taxes, Legal Msg, CFOP and CST) 
	 */
	public static Object[] getTaxes (I_W_C_OrderLine ol)
	{
		return getTaxes (ol, null);
	}	//	getTaxes
	
	/**
	 * 		Retorna o registro do imposto baseado na pesquisa
	 * 
	 * 		Não usar este método em Callouts, pois a Callout pode acioná=lo antes que 
	 * 			a linha tenha sido salva.
	 * 
	 * 	@param Order Line
	 * 	@param Trx Name
	 * 	@return Object Array (Taxes, Legal Msg, CFOP and CST) 
	 */
	public static Object[] getTaxes (I_W_C_OrderLine ol, String trxName)
	{
		//	Wrong transaction, do not continue
		if (DB.getSQLValue(trxName, "SELECT COUNT(*) FROM C_Order WHERE C_Order_ID=?", ol.getC_Order_ID()) != 1)
			return null;
		//
		I_W_C_Order o = POWrapper.create(new MOrder (Env.getCtx(), ol.getC_Order_ID(), trxName), I_W_C_Order.class);
		I_W_M_Product p = POWrapper.create(new MProduct (Env.getCtx(), ol.getM_Product_ID(), trxName), I_W_M_Product.class);
		I_W_AD_OrgInfo oi = POWrapper.create(MOrgInfo.get(Env.getCtx(), o.getAD_Org_ID(), trxName), I_W_AD_OrgInfo.class);
		I_W_C_BPartner bp = POWrapper.create(new MBPartner (Env.getCtx(), o.getC_BPartner_ID(), trxName), I_W_C_BPartner.class);
		MBPartnerLocation bpLoc = new MBPartnerLocation (Env.getCtx(), o.getBill_Location_ID(), trxName); 
		//
		return getTaxes (o.getC_DocTypeTarget_ID(), o.isSOTrx(), o.getlbr_TransactionType(), p, oi, bp, bpLoc, o.getDateAcct());
	}	//	getTaxes
	
	/**
	 * Retorna o registro do imposto baseado na pesquisa
	 * 
	 * Não usar este método em Callouts, pois a Callout pode acioná=lo antes que 
	 * a linha tenha sido salva.
	 * 
	 * 	@param Invoice Line
	 * 	@return Object Array (Taxes, Legal Msg, CFOP and CST) 
	 */
	public static Object[] getTaxes (I_W_C_InvoiceLine il, String trxName)
	{
		//	Wrong transaction, do not continue
		if (DB.getSQLValue(trxName, "SELECT COUNT(*) FROM C_Invoice WHERE C_Invoice_ID=?", il.getC_Invoice_ID()) != 1)
			return null;
		//
		I_W_C_Invoice i = POWrapper.create(new MInvoice (Env.getCtx(), il.getC_Invoice_ID(), trxName), I_W_C_Invoice.class);
		I_W_M_Product p = POWrapper.create(new MProduct (Env.getCtx(), il.getM_Product_ID(), trxName), I_W_M_Product.class);
		I_W_AD_OrgInfo oi = POWrapper.create(MOrgInfo.get(Env.getCtx(), i.getAD_Org_ID(), trxName), I_W_AD_OrgInfo.class);
		I_W_C_BPartner bp = POWrapper.create(new MBPartner (Env.getCtx(), i.getC_BPartner_ID(), trxName), I_W_C_BPartner.class);
		MBPartnerLocation bpLoc = new MBPartnerLocation (Env.getCtx(), i.getC_BPartner_Location_ID(), trxName); 
		//
		return getTaxes (i.getC_DocTypeTarget_ID(), i.isSOTrx(), i.getlbr_TransactionType(), p, oi, bp, bpLoc, i.getDateAcct());
	}	//	getTaxes
	
	/**
	 * 		Retorna o registro do imposto baseado na pesquisa
	 * 
	 * @param Order
	 * @param Order Line
	 * @param Product
	 * @param Organization Info
	 * @param Business Partner
	 * @param Date Acct
	 * @return Object Array (Taxes, Legal Msg, CFOP and CST) 
	 */
	public static Object[] getTaxes (int C_DocTypeTarget_ID, boolean isSOTrx, String lbr_TransactionType, I_W_M_Product p, 
			I_W_AD_OrgInfo oi, I_W_C_BPartner bp, MBPartnerLocation bpLoc, Timestamp dateAcct)
	{
		Properties ctx = Env.getCtx();
		//
		Map<Integer, MLBRTaxLine> taxes = new HashMap<Integer, MLBRTaxLine>();
		//
		int bp_C_Region_ID 			= bpLoc != null ? bpLoc.getC_Location().getC_Region_ID() : -1;
		int LBR_LegalMessage_ID 	= 0;
		int LBR_CFOP_ID				= 0;
		String lbr_TaxStatus 		= "";
		boolean hasSubstitution		= false;
		String lbr_TaxRegime		= oi.getLBR_TaxRegime();
		
		/**
		 * 	Organization
		 */
		if (!MProduct.PRODUCTTYPE_Service.equals(p.getProductType()))
		{
			log.finer ("######## Processing Tax for Organization: " + oi + ", Taxes: " + new MLBRTax(ctx, oi.getLBR_Tax_ID(), null));
			processTaxes(taxes, (!isSOTrx && oi.getLBR_POTax_ID() > 0) ? oi.getLBR_POTax_ID() : oi.getLBR_Tax_ID());
		}
		
		/**
		 * 	Matriz de ICMS
		 */
		MLBRICMSMatrix mICMS = null;
		
		if (isSOTrx)
			mICMS = MLBRICMSMatrix.get (ctx, oi.getAD_Org_ID(), (oi.getC_Location_ID() < 1 ? -1 : oi.getC_Location().getC_Region_ID()), bp_C_Region_ID, dateAcct, null);
		else
			mICMS = MLBRICMSMatrix.get (ctx, oi.getAD_Org_ID(), bp_C_Region_ID, (oi.getC_Location_ID() < 1 ? -1 : oi.getC_Location().getC_Region_ID()), dateAcct, null);
		
		//
		if (mICMS != null && mICMS.getLBR_Tax_ID() > 0 && !MProduct.PRODUCTTYPE_Service.equals(p.getProductType()))
		{
			log.finer ("######## Processing Tax for ICMS Matrix: " + mICMS + ", Taxes: " + new MLBRTax(ctx, mICMS.getLBR_Tax_ID(), null));
			processTaxes(taxes, mICMS.getLBR_Tax_ID());
			
			//	Puxa a alíquota interna para cálculo do ICMSST
			if (hasSubstitution)
			{
				//	ICMS ST específico
				if (mICMS.getLBR_STTax_ID() > 0)
				{
					log.finer ("######## Processing Tax for ICMS ST Matrix: " + mICMS + ", Taxes: " + new MLBRTax(ctx, mICMS.getLBR_STTax_ID(), null));
					processTaxes(taxes, mICMS.getLBR_STTax_ID());
				}
				
				//	Pesquisa a alíquota interna
				else 
				{
					MLBRICMSMatrix mICMSST = MLBRICMSMatrix.get (ctx, oi.getAD_Org_ID(), bp_C_Region_ID, bp_C_Region_ID, dateAcct, null);
					//
					if (mICMSST != null && mICMSST.getLBR_STTax_ID() > 0)
					{
						log.finer ("######## Processing Tax for ICMS ST Matrix: " + mICMSST + ", Taxes: " + new MLBRTax(ctx, mICMSST.getLBR_STTax_ID(), null));
						processTaxes(taxes, mICMSST.getLBR_STTax_ID());
					}
				}
			}
		}
		
		/**
		 * 	Matriz de ISS
		 */
		MLBRISSMatrix mISS = MLBRISSMatrix.get (ctx, oi.getAD_Org_ID(), bp_C_Region_ID, 
				(bpLoc != null ? bpLoc.getC_Location().getC_City_ID() : 0), p.getM_Product_ID(), dateAcct, null);
		//
		if (MProduct.PRODUCTTYPE_Service.equals(p.getProductType()) && mISS != null && mISS.getLBR_Tax_ID() > 0)
		{
			log.finer ("######## Processing Tax for ISS Matrix: " + mISS + ", Taxes: " + new MLBRTax(ctx, mISS.getLBR_Tax_ID(), null));
			processTaxes(taxes, mISS.getLBR_Tax_ID());
		}
		
		/**
		 * 	NCM
		 */
		if (p.getM_Product_ID() > 0 && p.getLBR_NCM_ID() > 0)
		{
			MLBRNCM ncm = new MLBRNCM (Env.getCtx(), p.getLBR_NCM_ID(), null);
			
			hasSubstitution = ncm.islbr_HasSubstitution();
			log.finer ("######## Processing Tax for NCM: " + ncm + ", Taxes: " + new MLBRTax(ctx, ncm.getLBR_Tax_ID(), null));
			processTaxes(taxes, ncm.getLBR_Tax_ID());
			
			List<MLBRNCMTax> ncmTaxes = ncm.getAll (oi.getAD_Org_ID(), bp_C_Region_ID, dateAcct);
			//
			for (MLBRNCMTax ncmTax : ncmTaxes)
			{
				hasSubstitution = ncmTax.islbr_HasSubstitution();
				log.finer ("######## Processing Tax for NCM Line: " + ncmTax + ", Taxes: " + new MLBRTax(ctx, ncmTax.getLBR_Tax_ID(), null));
				processTaxes(taxes, ncmTax.getLBR_Tax_ID());
			}
		}
		
		/**
		 * 	CFOP
		 */
		String lbr_DestionationType = null;
		
		/**
		 * 	No caso de SUFRAMA, definir como Zona Franca - FIXME
		 */
		if (bp.getlbr_Suframa() != null && bp.getlbr_Suframa().length() > 0)
			lbr_DestionationType = X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_ZonaFranca;
		
		/**
		 * 	Importação ou Exportação
		 */
		else if (bpLoc != null && (oi.getC_Location_ID() < 1 || bpLoc.getC_Location().getC_Country_ID() != oi.getC_Location().getC_Country_ID()))
			lbr_DestionationType = X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_Estrangeiro;
		
		/**
		 * 	Dentro do Estado
		 */
		else if (bpLoc != null && bp_C_Region_ID == oi.getC_Location().getC_Region_ID())
			lbr_DestionationType = X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_EstadosIdenticos;
		
		/**
		 * 	Fora do Estado
		 */
		else 
			lbr_DestionationType = X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_EstadosDiferentes;
		
		//	Check if it's manufactured
		boolean isManufactured = p.getM_Product_ID() > 0 ? p.isManufactured() : false;
		MLBRProductConfig config = MLBRProductConfig.getProductConfig(Env.getCtx(), oi.getAD_Org_ID(), p.getM_Product_ID());
		if (config != null)
			isManufactured = "Y".equals(config.getIsManufactured());
		
		MLBRCFOPLine cFOPLine = MLBRCFOP.chooseCFOP (oi.getAD_Org_ID(), C_DocTypeTarget_ID, p.getLBR_ProductCategory_ID(), 
				(isSOTrx ? bp.getLBR_CustomerCategory_ID() : bp.getLBR_VendorCategory_ID()), 
				lbr_TransactionType, lbr_DestionationType, hasSubstitution, isManufactured, lbr_TaxRegime, null);
		//
		if (cFOPLine != null)
		{
			log.finer ("######## Processing Tax for CFOP Line: " + cFOPLine + ", Taxes: " + new MLBRTax(ctx, cFOPLine.getLBR_Tax_ID(), null));
			processTaxes (taxes, cFOPLine.getLBR_Tax_ID());
			//
			if (cFOPLine.getLBR_LegalMessage_ID() > 0)
				LBR_LegalMessage_ID =  cFOPLine.getLBR_LegalMessage_ID();
			//
			if (cFOPLine.getlbr_TaxStatus() != null && cFOPLine.getlbr_TaxStatus().length() > 0)
				lbr_TaxStatus = cFOPLine.getlbr_TaxStatus();
			//
			LBR_CFOP_ID = cFOPLine.getLBR_CFOP_ID();
		}
		
		int RegionFrom_ID = (oi.getC_Location_ID() < 1 ? -1 : oi.getC_Location().getC_Region_ID());
		int BPCategory_ID = (isSOTrx ? bp.getLBR_CustomerCategory_ID() : bp.getLBR_VendorCategory_ID());
		int BPFiscalGroup_ID = (isSOTrx ? bp.getLBR_FiscalGroup_Customer_ID() : bp.getLBR_FiscalGroup_Vendor_ID());
		//
		Map<String,Object> params = new HashMap<String,Object>();
		if (oi.getAD_Org_ID() > 0)
			params.put(MLBRTaxDefinition.COLUMNNAME_AD_Org_ID, oi.getAD_Org_ID());
		if (bp.getC_BPartner_ID() > 0)
			params.put(MLBRTaxDefinition.COLUMNNAME_C_BPartner_ID, bp.getC_BPartner_ID());
		if (C_DocTypeTarget_ID > 0)
		{
			MDocType docType = new MDocType (Env.getCtx(), C_DocTypeTarget_ID, null);
			String docBase = docType.get_ValueAsString(MLBRTaxDefinition.COLUMNNAME_lbr_DocBaseType);
			if (docBase != null && !docBase.isBlank())
				params.put(MLBRTaxDefinition.COLUMNNAME_lbr_DocBaseType, docBase);
			//
			params.put(MLBRTaxDefinition.COLUMNNAME_C_DocType_ID, C_DocTypeTarget_ID);
		}
		if (RegionFrom_ID > 0)
			params.put(MLBRTaxDefinition.COLUMNNAME_C_Region_ID, RegionFrom_ID);
		if (bpLoc != null)
			params.put(MLBRTaxDefinition.COLUMNNAME_To_Region_ID, bp_C_Region_ID);
		if (BPCategory_ID > 0)
			params.put(MLBRTaxDefinition.COLUMNNAME_LBR_BPartnerCategory_ID, BPCategory_ID);
		if (BPFiscalGroup_ID > 0)
			params.put(MLBRTaxDefinition.COLUMNNAME_LBR_FiscalGroup_BPartner_ID, BPFiscalGroup_ID);
		if (bp.getLBR_IndIEDest() != null)
			params.put(MLBRTaxDefinition.COLUMNNAME_LBR_IndIEDest, bp.getLBR_IndIEDest());
		if (p.getLBR_FiscalGroup_Product_ID() > 0)
			params.put(MLBRTaxDefinition.COLUMNNAME_LBR_FiscalGroup_Product_ID, p.getLBR_FiscalGroup_Product_ID());
		if (p.getLBR_NCM_ID() > 0)
			params.put(MLBRTaxDefinition.COLUMNNAME_LBR_NCM_ID, p.getLBR_NCM_ID());
		if (p.getLBR_ProductCategory_ID() > 0)
			params.put(MLBRTaxDefinition.COLUMNNAME_LBR_ProductCategory_ID, p.getLBR_ProductCategory_ID());
		if (lbr_TransactionType != null)
			params.put(MLBRTaxDefinition.COLUMNNAME_lbr_TransactionType, lbr_TransactionType);
		if (dateAcct != null)
			params.put(MLBRTaxDefinition.COLUMNNAME_ValidFrom, dateAcct);
		if (p.getlbr_ProductSource() != null)
			params.put(MLBRTaxDefinition.COLUMNNAME_lbr_ProductSource, p.getlbr_ProductSource());
		if (lbr_DestionationType != null)
			params.put(MLBRTaxDefinition.COLUMNNAME_lbr_DestionationType, lbr_DestionationType);
		if (lbr_TaxRegime != null)
			params.put(MLBRTaxDefinition.COLUMNNAME_LBR_TaxRegime, lbr_TaxRegime);
		if (p.getM_Product_ID() > 0)
			params.put(MLBRTaxDefinition.COLUMNNAME_M_Product_ID, p.getM_Product_ID());
		if (p.getM_Product_Category_ID() > 0)
			params.put(MLBRTaxDefinition.COLUMNNAME_M_Product_Category_ID, p.getM_Product_Category_ID());			
		//		
		params.put(MLBRTaxDefinition.COLUMNNAME_IsManufactured, isManufactured);		
		params.put(MLBRTaxDefinition.COLUMNNAME_lbr_IsSubTributaria, hasSubstitution);
		params.put(MLBRTaxDefinition.COLUMNNAME_IsSOTrx, isSOTrx);
		
		//	Tax Definition
		MLBRTaxDefinition[] taxesDef = MLBRTaxDefinition.get (params);
		//
		for (MLBRTaxDefinition td : taxesDef)
		{
			log.finer ("######## Processing Tax for Tax Definition: " + td + ", Taxes: " + new MLBRTax(ctx, td.getLBR_Tax_ID(), null));
			processTaxes (taxes, td.getLBR_Tax_ID());
			
			//	CFOP
			if (td.getLBR_CFOP_ID() > 0)
				LBR_CFOP_ID = td.getLBR_CFOP_ID();
		}
		
		if (MSysConfig.getBooleanValue(SysConfig.LBR_FIX_TAXES_INCONSISTENCIES, true))
		{
			MLBRTaxLine icms = taxes.get (MLBRTax.TAX_ICMS);
			MLBRTaxLine icmsst = taxes.get (MLBRTax.TAX_ICMSST);
			//
			fixCST (icms, icmsst);
		}
		
		return new Object[]{taxes, LBR_LegalMessage_ID, LBR_CFOP_ID, lbr_TaxStatus};
	}	//	getTaxes

	/**
	 * 	Ajusta os impostos
	 * 	@param taxes
	 * 	@param tcpg
	 */
	public static void processTaxes (Map<Integer, MLBRTaxLine> taxes, int LBR_Tax_ID)
	{
		if (LBR_Tax_ID < 1 || taxes == null)
			return;
		//
		MLBRTax tax = new MLBRTax (Env.getCtx(), LBR_Tax_ID, null);
		//
		for (MLBRTaxLine tl : tax.getLines())
		{
			if (taxes.containsKey(tl.getLBR_TaxName_ID()))
				taxes.remove(tl.getLBR_TaxName_ID());

			//	Não incluir impostos zerados na configuração
			if (tl.getlbr_TaxRate().signum() == 0 && tl.getLBR_TaxStatus_ID() <= 0)
				continue;
			taxes.put (tl.getLBR_TaxName_ID(), tl.copy());
		}
	}	//	processTaxes
	
	/**
	 * 	To String
	 */
	public String toString ()
	{
		return "MLBRTax [ID=" + get_ID() + ", Taxes=" + (getDescription() == null ? "" : getDescription()) + "]";
	}	//	toString
	
	@Override
	public boolean equals (Object cmp)
	{
		if (cmp == null || !(cmp instanceof MLBRTax))
			return false;
		//
		MLBRTaxLine[] lines1 = getLines();
		MLBRTaxLine[] lines2 = ((MLBRTax)cmp).getLines();
		//
		if (lines1.length != lines2.length)
			return false;
		
		for (int current = 0; current < lines1.length; current++)
		{
			if (lines1[current].getLBR_TaxName_ID() != lines2[current].getLBR_TaxName_ID())
				return false;
			if (lines1[current].getLBR_TaxStatus_ID() != lines2[current].getLBR_TaxStatus_ID())
				return false;
			if (lines1[current].getLBR_LegalMessage_ID() != lines2[current].getLBR_LegalMessage_ID())
				return false;
			if (!lines1[current].getlbr_TaxRate().stripTrailingZeros().equals(lines2[current].getlbr_TaxRate().stripTrailingZeros()))
				return false;
			if (!lines1[current].getlbr_TaxBase().stripTrailingZeros().equals(lines2[current].getlbr_TaxBase().stripTrailingZeros()))
				return false;
		}
		
		return true;
	}	//	equals

	/**
	 * Get Validation
	 * @param productSource
	 * @param destinationType
	 * @return
	 */
	public String getValidation()
	{
		return getValidation (true, true, null, null);
	}	//	getValidation

	/**
	 * Get Validation
	 * @param productSource
	 * @param destinationType
	 * @return
	 */
	public String getValidation(String productSource, String destinationType)
	{
		return getValidation(false, true, productSource, destinationType);
	}	//	getValidation
	
	/**
	 * Get Validation
	 * @param isProduct
	 * @param productSource
	 * @param destinationType
	 * @return
	 */
	public String getValidation(boolean simple, boolean isProduct, String productSource, String destinationType)
	{
		String result = "";
		
		String desc = getDescription();
		if (desc == null)
			return "Sem Imposto";
		
		if (!simple && isProduct && desc.indexOf("ICMS") == -1)
			result += "Sem ICMS, ";
		
		if (!simple && isProduct && desc.indexOf("IPI") == -1)
			result += "Sem IPI, ";
		
		if (!simple && desc.indexOf("PIS") == -1)
			result += "Sem PIS, ";
		
		if (!simple && desc.indexOf("COFINS") == -1)
			result += "Sem COFINS, ";
		
		if (!simple && !isProduct && desc.indexOf("CSLL") == -1)
			result += "Sem CSLL, ";
		
		if (!simple && !isProduct && desc.indexOf("IR") == -1)
			result += "Sem IR, ";
		
		if (!simple && !isProduct && desc.indexOf("ISS") == -1)
			result += "Sem ISS, ";
		
		/**
		 * 	Caso a NF de Serviço tenha apenas ISS, deixar como válida, 
		 * pois em alguns casos (ex. conserto) só há incidência de ISS
		 */
		if (result.equals("Sem PIS, Sem COFINS, Sem CSLL, Sem IR, "))
			result = "";
		
		boolean hasReduction = false;
		if (isProduct)
			for (MLBRTaxLine tl : getLines())
			{
				if (TextUtil.match (tl.getLBR_TaxName_ID(), 
						TAX_PIS, 
						TAX_COFINS, 
						TAX_ICMS, 
						TAX_ICMSST, 
						TAX_IPI))
				{
					if (tl.getLBR_TaxStatus_ID() <= 0)
					{
						result += "Sem Situação Tributária para o imposto " + tl.getLBR_TaxName().getName() + ", ";
						continue;
					}
					
					String cst = tl.getLBR_TaxStatus().getName();
					double rate = tl.getlbr_TaxRate().doubleValue();
					double reduction = tl.getlbr_TaxBase().doubleValue();
					
					if (TextUtil.match (tl.getLBR_TaxName_ID(), 
							TAX_PIS, 
							TAX_COFINS))
					{
						//		Alíquota Básica
						if ("01".equals(cst))
						{
							if (tl.getLBR_TaxName_ID() == TAX_PIS
									&& rate != 0.65
									&& rate != 1.65)
							{
								result += "Alíquota do PIS de " + rate + "% não é uma alíquota padrão para o CST 01, ";
							}
							
							if (tl.getLBR_TaxName_ID() == TAX_COFINS
									&& rate != 3.0
									&& rate != 7.6)
							{
								result += "Alíquota do COFINS de " + rate + "% não é uma alíquota padrão para o CST 01, ";
							}
						}
						
						//	Alíquotas zero
						if (TextUtil.match (cst, "06", "07", "08", "09", "71", "72", "73", "74")
								&& rate != 0.0)
						{
							result += "Alíquota do PIS/COFINS de " + rate + "% não é uma alíquota padrão para o CST " + cst + ", ";
						}
					}
					
					if (tl.getLBR_TaxName_ID() == TAX_ICMS)
					{
						//	Tributado Integralmente
						if (cst.equals("00"))
						{
							if (rate == 0)
							{
								result += "Alíquota do ICMS de " + rate + "% não é uma alíquota padrão para o CST " + cst + ", ";
							}
							
							if (reduction != 0)
							{
								result += "Redução na base de cáclulo do ICMS não é uma alíquota padrão para o CST " + cst + ", ";
							}
						}
						
						//	Redução da Base de Cálculo
						if (cst.equals("20"))
						{
							if (rate == 0)
							{
								result += "Alíquota do ICMS de " + rate + "% não é uma alíquota padrão para o CST " + cst + ", ";
							}
							
							if (reduction <= 0)
							{
								result += "Redução na base de cáclulo do ICMS é obrigatória para o CST " + cst + ", ";
							}
							
							hasReduction = true;
						}
						
						//	Alíquotas zero
						if (TextUtil.match (cst, "30", "40", "41", "50")
								&& rate != 0.0)
						{
							result += "Alíquota do ICMS de " + rate + "% não é uma alíquota padrão para o CST " + cst + ", ";
						}
						
						//	Validar Alíquota X Origem do Produto em Operação Interestadual
						//	Exceção CST 40, 41, 103, 300, 400
						if (X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_EstadosDiferentes.equals(destinationType)
								&& !TextUtil.match(cst, "40", "41", "103", "300", "400"))
						{
							//	Produtos com Origem 1, 2, 3 e 8 devem ter Alíquota de 4%
							if (TextUtil.match (productSource, "1" ,"2","3","8") &&
									rate != 4.0)
							{
								result += "Alíquota do ICMS de " + rate + "% não é permitida para operação interestadual " +
										"com origem do produto igual a " + productSource + ", ";
							}
							//	Produtos com Origem 0, 4, 5, 6 e 7 devem ter Alíquota de 7% ou  12%
							else if (TextUtil.match (productSource, "0","4","5","6","7") &&
									(rate != 7.0 && rate != 12.0))
							{
								result += "Alíquota do ICMS de " + rate + "% não é permitida para operação interestadual " +
											"com origem do produto igual a " + productSource + ", ";
							}
						}
					}
					
					if (tl.getLBR_TaxName_ID() == TAX_ICMSST)
					{
						if (!TextUtil.match (cst, "10", "60", "70", "90"))
						{
							result += "CST do ICMSST inválida " + cst + " - Corretos: 10, 60, 70 ou 90, ";
						}
						
						if (rate == 0)
						{
							result += "Alíquota do ICMSST de " + rate + "% não é uma alíquota padrão, ";
						}
						
						if (hasReduction && !TextUtil.match (cst, "70", "90"))
						{
							result += "CST do ICMSST=" + cst + " não deve ser usado quando há redução na BC do ICMS, use: 70 ou 90, ";
						}
					}
					
					if (tl.getLBR_TaxName_ID() == TAX_IPI)
					{
						//	Tributado Integralmente
						if (cst.equals("50") && rate == 0)
						{
							result += "Alíquota do IPI de " + rate + "% não é permitida para o CST " + cst + ", ";
						}
						
						//	Alíquotas zero
						if (TextUtil.match (cst, "51", "52", "53", "54", "55")
								&& rate != 0.0)
						{
							result += "Alíquota do IPI de " + rate + "% não é permitida para o CST " + cst + ", ";
						}
					}
				}
			}
		
		return result;
	}	//	getValidation
	
	/**
	 * Check if ICMS/ST has Base Reduction with inconsistent CST and fix it.
	 * 
	 * @param icms
	 * @param icmsst
	 */
	public static void fixCST (MLBRTaxLine icms, MLBRTaxLine icmsst)
	{
		if (icms == null)
			return;
		
		if (icms.getlbr_TaxBase() != null 
				&& icms.getlbr_TaxBase().signum() == 1 
				&& (icms.getLBR_TaxStatus_ID() < 1 
						|| icms.getLBR_TaxStatus().getName().length() == 2
						&& !icms.getLBR_TaxStatus().getName().equals("20")
						&& !icms.getLBR_TaxStatus().getName().equals("90")))
		{
			int LBR_TaxStatus_ID = MLBRTaxStatus.get (icms.getLBR_TaxName_ID(), "20");
			if (LBR_TaxStatus_ID > 0)
				icms.setLBR_TaxStatus_ID(LBR_TaxStatus_ID);
		}
		
		if (icmsst != null
				&& icms.getlbr_TaxBase() != null 
				&& icms.getlbr_TaxBase().signum() == 1 
				&& (icmsst.getLBR_TaxStatus_ID() < 1 
						||  icms.getLBR_TaxStatus().getName().length() == 2
						&& !icms.getLBR_TaxStatus().getName().equals("70")
						&& !icms.getLBR_TaxStatus().getName().equals("90")))
		{
			int LBR_TaxStatus_ID = MLBRTaxStatus.get (icmsst.getLBR_TaxName_ID(), "70");
			if (LBR_TaxStatus_ID > 0)
				icmsst.setLBR_TaxStatus_ID(LBR_TaxStatus_ID);
		
		}
	}	//	fixCST
	
	private BigDecimal getTaxBaseAmt (int LBR_TaxName_ID)
	{
		BigDecimal result = Arrays.asList(getLines()).stream()
			.filter(l -> l.getLBR_TaxName_ID() == LBR_TaxName_ID)
			.map(MLBRTaxLine::getlbr_TaxBaseAmt)
			.findFirst().orElse(Env.ZERO);
		return result;
	}	//	getTaxBaseAmt
	
	private BigDecimal getTaxBase (int LBR_TaxName_ID)
	{
		BigDecimal result = Arrays.asList(getLines()).stream()
			.filter(l -> l.getLBR_TaxName_ID() == LBR_TaxName_ID)
			.map(MLBRTaxLine::getlbr_TaxBase)
			.findFirst().orElse(Env.ZERO);
		return result;
	}	//	getTaxBase
	
	private BigDecimal getTaxAmt (int LBR_TaxName_ID)
	{
		BigDecimal result = Arrays.asList(getLines()).stream()
			.filter(l -> l.getLBR_TaxName_ID() == LBR_TaxName_ID)
			.map(MLBRTaxLine::getlbr_TaxAmt)
			.findFirst().orElse(Env.ZERO);
		return result;
	}	//	getTaxAmt
	
	private BigDecimal getTaxRate (int LBR_TaxName_ID)
	{
		BigDecimal result = Arrays.asList(getLines()).stream()
			.filter(l -> l.getLBR_TaxName_ID() == LBR_TaxName_ID)
			.map(MLBRTaxLine::getlbr_TaxRate)
			.findFirst().orElse(Env.ZERO);
		return result;
	}	//	getTaxRate
	
	private String getTaxCST (int LBR_TaxName_ID)
	{
		String result = Arrays.asList(getLines()).stream()
			.filter(l -> l.getLBR_TaxName_ID() == LBR_TaxName_ID && l.getLBR_TaxStatus_ID() > 0)
			.map(MLBRTaxLine::getLBR_TaxStatus)
			.map(I_LBR_TaxStatus::getName)
			.findFirst().orElse("");
		return result;
	}	//	getCST
	
	public BigDecimal getICMSTaxBaseAmt ()
	{
		return getTaxBaseAmt(TAX_ICMS);
	}	//	getICMSTaxBaseAmt
	
	public BigDecimal getICMSTaxBase ()
	{
		return getTaxBase(TAX_ICMS);
	}	//	getICMSTaxBase
	
	public BigDecimal getICMSTaxAmt ()
	{
		return getTaxAmt(TAX_ICMS);
	}	//	getICMSTaxAmt
	
	public BigDecimal getICMSTaxRate ()
	{
		return getTaxRate(TAX_ICMS);
	}	//	getICMSTaxRate
	
	public String getICMSTaxCST ()
	{
		return getTaxCST(TAX_ICMS);
	}	//	getICMSCST
	
	public BigDecimal getICMSSTTaxBaseAmt ()
	{
		return getTaxBaseAmt(TAX_ICMSST);
	}	//	getICMSSTTaxBaseAmt
	
	public BigDecimal getICMSSTTaxBase ()
	{
		return getTaxBase(TAX_ICMSST);
	}	//	getICMSSTTaxBase
	
	public BigDecimal getICMSSTTaxAmt ()
	{
		return getTaxAmt(TAX_ICMSST);
	}	//	getICMSSTTaxAmt
	
	public BigDecimal getICMSSTTaxRate ()
	{
		return getTaxRate(TAX_ICMSST);
	}	//	getICMSSTTaxRate
	
	public String getICMSSTTaxCST ()
	{
		return getTaxCST(TAX_ICMSST);
	}	//	getICMSCST
	
	public BigDecimal getFCPTaxBaseAmt ()
	{
		return getTaxBaseAmt(TAX_FCP);
	}	//	getFCPTaxBaseAmt
	
	public BigDecimal getFCPTaxBase ()
	{
		return getTaxBase(TAX_FCP);
	}	//	getFCPTaxBase
	
	public BigDecimal getFCPTaxAmt ()
	{
		return getTaxAmt(TAX_FCP);
	}	//	getFCPTaxAmt
	
	public BigDecimal getFCPTaxRate ()
	{
		return getTaxRate(TAX_FCP);
	}	//	getFCPTaxRate
	
	public String getFCPTaxCST ()
	{
		return getTaxCST(TAX_FCP);
	}	//	getICMSCST
	
	public BigDecimal getPISProdTaxBaseAmt ()
	{
		return getTaxBaseAmt(TAX_PIS);
	}	//	getPISProdTaxBaseAmt
	
	public BigDecimal getPISProdTaxBase ()
	{
		return getTaxBase(TAX_PIS);
	}	//	getPISProdTaxBase
	
	public BigDecimal getPISProdTaxAmt ()
	{
		return getTaxAmt(TAX_PIS);
	}	//	getPISProdTaxAmt
	
	public BigDecimal getPISProdTaxRate ()
	{
		return getTaxRate(TAX_PIS);
	}	//	getPISProdTaxRate
	
	public String getPISProdaxCST ()
	{
		return getTaxCST(TAX_PIS);
	}	//	getICMSCST
	
	public BigDecimal getCOFINSProdTaxBaseAmt ()
	{
		return getTaxBaseAmt(TAX_COFINS);
	}	//	getCOFINSProdTaxBaseAmt
	
	public BigDecimal getCOFINSProdTaxBase ()
	{
		return getTaxBase(TAX_COFINS);
	}	//	getCOFINSProdTaxBase
	
	public BigDecimal getCOFINSProdTaxAmt ()
	{
		return getTaxAmt(TAX_COFINS);
	}	//	getCOFINSProdTaxAmt
	
	public BigDecimal getCOFINSProdTaxRate ()
	{
		return getTaxRate(TAX_COFINS);
	}	//	getCOFINSProdTaxRate
	
	public String getCOFINSProdTaxCST ()
	{
		return getTaxCST(TAX_COFINS);
	}	//	getICMSCST
}	//	MLBRTax
