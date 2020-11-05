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

import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.text.MessageFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.exceptions.FillMandatoryException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.exceptions.NotaFiscalNotFoundException;
import org.adempierelbr.nfe.NFeXMLGenerator;
import org.adempierelbr.nfse.INFSe;
import org.adempierelbr.nfse.NFSeUtil;
import org.adempierelbr.process.ConsultNFe;
import org.adempierelbr.process.PrintFromXML;
import org.adempierelbr.process.ProcEMailNFe;
import org.adempierelbr.process.ProcInutNF;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.LBRUtils;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.validator.VLBROrder;
import org.adempierelbr.wrapper.I_W_AD_ClientInfo;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.adempierelbr.wrapper.I_W_C_Country;
import org.adempierelbr.wrapper.I_W_C_DocType;
import org.adempierelbr.wrapper.I_W_C_Invoice;
import org.adempierelbr.wrapper.I_W_C_Order;
import org.adempierelbr.wrapper.I_W_C_Tax;
import org.adempierelbr.wrapper.I_W_M_InOut;
import org.adempierelbr.wrapper.I_W_M_Shipper;
import org.apache.xmlbeans.XmlException;
import org.compiere.model.MAcctSchema;
import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MClient;
import org.compiere.model.MClientInfo;
import org.compiere.model.MColumn;
import org.compiere.model.MConversionRate;
import org.compiere.model.MCost;
import org.compiere.model.MCountry;
import org.compiere.model.MDocType;
import org.compiere.model.MInOut;
import org.compiere.model.MInOutLine;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MInvoicePaySchedule;
import org.compiere.model.MInvoiceTax;
import org.compiere.model.MLocation;
import org.compiere.model.MMovement;
import org.compiere.model.MMovementLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrderPaySchedule;
import org.compiere.model.MOrderTax;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MPInstance;
import org.compiere.model.MPInstancePara;
import org.compiere.model.MPeriod;
import org.compiere.model.MProduct;
import org.compiere.model.MProduction;
import org.compiere.model.MProductionLine;
import org.compiere.model.MRMA;
import org.compiere.model.MRefList;
import org.compiere.model.MRegion;
import org.compiere.model.MRole;
import org.compiere.model.MShipper;
import org.compiere.model.MSysConfig;
import org.compiere.model.MTable;
import org.compiere.model.MTax;
import org.compiere.model.MUser;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.process.DocAction;
import org.compiere.process.DocOptions;
import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.TimeUtil;
import org.compiere.util.Trx;
import org.compiere.util.Util;
import org.kenos.idempiere.lbr.base.Constants;
import org.kenos.idempiere.lbr.base.model.MLBRAverageCostLine;
import org.kenos.idempiere.lbr.base.model.MLBRProductionGroup;
import org.kenos.idempiere.lbr.base.model.SysConfig;

import br.inf.portalfiscal.nfe.v400.NFeDocument;
import br.inf.portalfiscal.nfe.v400.NfeProcDocument;
import br.inf.portalfiscal.nfe.v400.TNFe.InfNFe.Ide;
import br.inf.portalfiscal.nfe.v400.TNFe.InfNFe.Ide.IdDest.Enum;
import br.inf.portalfiscal.nfe.v400.TNfeProc;
import br.inf.portalfiscal.nfe.v400.TProtNFe;
import br.inf.portalfiscal.nfe.v400.TProtNFe.InfProt;
import br.inf.portalfiscal.nfe.v400.TRetInutNFe;
import bsh.EvalError;
import bsh.Interpreter;

/**
 *		Nota Fiscal Model
 *
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRNotaFiscal.java, v2.0 2011/10/18 7:06:39 PM, ralexsander Exp $
 *
 *		Old Version:
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRNotaFiscal.java, 08/01/2008 10:56:00 mgrigioni
 */
public class MLBRNotaFiscal extends X_LBR_NotaFiscal implements DocAction, DocOptions
{
	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	/** REFERENCE */
	@Deprecated
	public Map<String,String> m_refNCM  = new HashMap<String, String>(); //Referência NCM
	@Deprecated
	public Map<String,String> m_refCFOP = new HashMap<String, String>(); //Referência CFOP
	@Deprecated
	public ArrayList<Integer> m_refLegalMessage = new ArrayList<Integer>(); //Referência Mensagem Legal

	/** STRING */
	@Deprecated
	String m_NCMReference  = "";
	@Deprecated
	String m_CFOPNote      = "";
	@Deprecated
	String m_CFOPReference = "";
	@Deprecated
	String m_LegalMessage  = "";

	/** CONSTANT */
	public final static int BRAZIL = 139;
	
	/**	RPS sem número do documento	*/
	public static final String RPS_TEMP = "RPS-TEMP";
	
	/**
	 * 		Identificador de local de destino da operação
	 * 
	 * 	1=Operação interna;	
	 * 	2=Operação interestadual;
	 * 	3=Operação com exterior.
	 */
	private Enum idDest = null;
	
	public static final int CURRENCY_BRL = 297;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNotaFiscal (Properties ctx, int ID, String trxName)
	{
		super (ctx, ID, trxName);
		//
		MClientInfo cInfo = MClientInfo.get (ctx, Env.getAD_Client_ID (ctx));
		cInfoW = POWrapper.create (cInfo, I_W_AD_ClientInfo.class);
	}	//	MLBRNotaFiscal

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNotaFiscal (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
		//
		MClientInfo cInfo = MClientInfo.get (ctx, Env.getAD_Client_ID (ctx));
		cInfoW = POWrapper.create (cInfo, I_W_AD_ClientInfo.class);
	}	//	MLBRNotaFiscal

	/**
	 * Retorna as Notas Fiscais por período (compra e venda)
	 * @param dateFrom
	 * @param dateTo
	 * @return MNotaFiscal[]
	 */
	public static MLBRNotaFiscal[] get (Timestamp dateFrom, Timestamp dateTo, String trxName)
	{
		return get (dateFrom, dateTo,null,trxName);
	}	//	get

	/**
	 * Retorna as Notas Fiscais por período (compra, venda ou ambos)
	 * @param dateFrom
	 * @param dateTo
	 * @param isSOTrx: true = venda, false = compra, null = ambos
	 * @return MNotaFiscal[]
	 */
	public static MLBRNotaFiscal[] get (Timestamp dateFrom, Timestamp dateTo, Boolean isSOTrx, String trxName)
	{
		String whereClause = "AD_Client_ID=? AND " +
							 "(CASE WHEN IsSOTrx='Y' THEN TRUNC(DateDoc) " +
							 "ELSE TRUNC(NVL(lbr_DateInOut, DateDoc)) END) BETWEEN ? AND ?";

		String orderBy = "(CASE WHEN IsSOTrx='Y' THEN TRUNC(DateDoc) ELSE TRUNC(NVL(lbr_DateInOut, DateDoc)) END)";
		//
		if (isSOTrx != null)
			whereClause += " AND IsSOTrx='" + (isSOTrx ? "Y" : "N") + "'";

		MTable table = MTable.get(Env.getCtx(), MLBRNotaFiscal.Table_Name);
		Query q =  new Query(Env.getCtx(), table, whereClause.toString(), trxName);
	          q.setOrderBy(orderBy);
		      q.setParameters(new Object[]{Env.getAD_Client_ID(Env.getCtx()),dateFrom,dateTo});

	    List<MLBRNotaFiscal> list = q.list();
	    MLBRNotaFiscal[] nfs = new MLBRNotaFiscal[list.size()];
	    return list.toArray(nfs);
	}	//	get

	/**
	 * Retorna as Notas Fiscais por Fatura ou por Remessa/Recebimento
	 * @param ctx
	 * @param C_Invoice_ID
	 * @param M_InOut_ID
	 * @param trxName
	 * @return MNotaFiscal[]
	 */
	public static MLBRNotaFiscal[] get (Properties ctx, int C_Invoice_ID, int M_InOut_ID, String trxName)
	{
		String whereClause = "";
		int id = 0;
		
		if (C_Invoice_ID > 0)
		{
			whereClause = "C_Invoice_ID=?";
			id = C_Invoice_ID;
		}
		else if (M_InOut_ID > 0)
		{
			whereClause = "M_InOut_ID=?";
			id = M_InOut_ID;
		}
		
		String orderBy = "DocumentNo";

		MTable table = MTable.get(ctx, MLBRNotaFiscal.Table_Name);
		Query q =  new Query(ctx, table, whereClause.toString(), trxName);
	          q.setOrderBy(orderBy);
		      q.setParameters(new Object[]{id});

	    List<MLBRNotaFiscal> list = q.list();
	    MLBRNotaFiscal[] nfs = new MLBRNotaFiscal[list.size()];
	    return list.toArray(nfs);
	}	//	get
	
	/**
	 * Retorna as Notas Fiscais por Fatura
	 * @param ctx
	 * @param C_Invoice_ID
	 * @param trxName
	 * @return MNotaFiscal[]
	 */
	public static MLBRNotaFiscal[] get (Properties ctx, int C_Invoice_ID, String trxName)
	{
	    return get(ctx, C_Invoice_ID, 0, trxName);
	}	//	get

	/**
	 * Retorna o NCM ou a Referência do NCM
	 * 	de acordo com a configuração do sistema.
	 *
	 * @param LBR_NCM_ID
	 * @return
	 */
	@Deprecated
	public String getNCM (Integer LBR_NCM_ID)
	{
		if (LBR_NCM_ID == null || LBR_NCM_ID.intValue() == 0)
			return null;

		X_LBR_NCM ncm = new X_LBR_NCM(getCtx(),LBR_NCM_ID,get_TrxName());
		String ncmName = ncm.getValue();

		if (!(ncmName == null || ncmName.equals("")))
		{
			//	Retorna a Ref. do NCM
			if (m_refNCM.containsKey(ncmName))
			{
				//	Retorna o NCM
				if (!MSysConfig.getBooleanValue(SysConfig.LBR_REF_NCM, false, Env.getAD_Client_ID(Env.getCtx())))
					return ncmName;
				//	Retorna a Chave
				else
					return m_refNCM.get(ncmName).toString();	//	NCM
			}
			else
			{
				String cl = TextUtil.ALFAB[m_refNCM.size()];
				m_refNCM.put(ncmName, cl);
				setNCMReference(ncmName,cl,true);
				//	Retorna o NCM
				if (!MSysConfig.getBooleanValue(SysConfig.LBR_REF_NCM, false, Env.getAD_Client_ID(Env.getCtx())))
					return ncmName;
				//	Retorna a Chave
				else
					return cl;
			}
		}
		//
		return null;
	}	//	getNCM

	/**
	 * Retorna o valor do Imposto
	 *
	 * @return BigDecimal amt
	 */
	public BigDecimal getTaxAmt (String taxIndicator)
	{
		if (taxIndicator == null)
			return Env.ZERO;

		String sql = "SELECT SUM(lbr_TaxAmt) FROM LBR_NFTax " +
		             "WHERE LBR_NotaFiscal_ID = ? AND IsActive='Y' AND LBR_TaxGroup_ID IN " +
		             "(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";
		//
		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscal_ID(),taxIndicator.toUpperCase()});
		return result == null ? Env.ZERO : result;
	} 	//	getTaxAmt

	/**
	 * Retorna a Base de Cálculo do Imposto
	 *
	 * @return BigDecimal amt
	 */
	public BigDecimal getTaxBaseAmt(String taxIndicator)
	{
		if (taxIndicator == null)
			return Env.ZERO;

		String sql = "SELECT SUM(lbr_TaxBaseAmt) FROM LBR_NFTax " +
		             "WHERE LBR_NotaFiscal_ID = ? AND IsActive='Y' AND LBR_TaxGroup_ID IN " +
		             "(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";
		//
		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscal_ID(),taxIndicator.toUpperCase()});
		return result == null ? Env.ZERO : result;
	} 	//	getTaxAmt

	/**
	 * Retorna a Alíquota do Imposto
	 *
	 * @return BigDecimal amt
	 */
	public BigDecimal getTaxRate(String taxIndicator)
	{
		if (taxIndicator == null)
			return Env.ZERO;

		String sql = "SELECT AVG(lbr_TaxRate) FROM LBR_NFLineTax " +
		             "WHERE LBR_NotaFiscalLine_ID IN " +
		             "(SELECT LBR_NotaFiscalLine_ID FROM LBR_NotaFiscalLine WHERE LBR_NotaFiscal_ID = ?) " +
		             "AND LBR_TaxGroup_ID IN (SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?) " +
		             "AND IsActive='Y'";
		//

		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscal_ID(),taxIndicator.toUpperCase()});
		return result == null ? Env.ZERO : result;
	} 	//	getTaxRate

	public BigDecimal getCost(int C_AcctSchema_ID, int C_CostElement_ID){

		BigDecimal currentCost = Env.ZERO;

		MLBRNotaFiscalLine[] lines = getLines("line");
		for(MLBRNotaFiscalLine line : lines){
			int M_Product_ID = line.getM_Product_ID();
			if (M_Product_ID == 0)
				continue;

			MProduct product = new MProduct(getCtx(),M_Product_ID,get_TrxName());
			MAcctSchema as   = MAcctSchema.get(getCtx(), C_AcctSchema_ID);

			MCost cost = MCost.get(product,0,as,0,C_CostElement_ID,get_TrxName());
			if (cost != null)
				currentCost = currentCost.add(cost.getCurrentCostPrice().multiply(line.getQty()));
		}

		return currentCost.setScale(2, RoundingMode.HALF_UP);
	} //getCost

	/**
	 *  Retorno o valor da Base de ICMS
	 *
	 *  @return	BigDecimal	Base ICMS
	 */
	public BigDecimal getICMSBase()
	{
		return getTaxBaseAmt("ICMS");
	}	//	getICMSBase

	/**
	 *  Retorno o valor da Base de ICMSST
	 *
	 *  @return	BigDecimal	Base ICMSST
	 */
	public BigDecimal getICMSSTBase()
	{
		return getTaxBaseAmt("ICMSST");
	}	//	getICMSBaseST

	/**
	 *  Retorno o valor do ICMS
	 *
	 *  @return	BigDecimal	ICMS
	 */
	public BigDecimal getICMSAmt()
	{
		return getTaxAmt("ICMS");
	}	//	getICMSAmt

	public BigDecimal getICMSDebAmt(){

		String sql = "SELECT SUM(ValorICMS) FROM lbr_SitICMS_V " +
                     "WHERE LBR_NotaFiscal_ID = ?";
        //
		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscal_ID()});
		return result == null ? Env.ZERO : result;
	} // getICMSDebAmt

	/**
	 *  Retorno a média das alíquotas do ICMS
	 *
	 *  @return	BigDecimal	ICMS Rate
	 */
	public BigDecimal getICMSRate()
	{
		return getTaxRate("ICMS");
	}	//	getICMSRate

	/**
	 * Retorno o valor do ICMS
	 * @param ctx
	 * @param LBR_NotaFiscal_ID
	 * @param trx
	 * @return BigDecimal ICMS
	 * @deprecated
	 */
	public static BigDecimal getICMSAmt(Properties ctx, int LBR_NotaFiscal_ID, String trx){
		MLBRNotaFiscal nf = new MLBRNotaFiscal(ctx,LBR_NotaFiscal_ID,trx);
		return nf.getICMSAmt();
	} //getICMSAMt

	/**
	 *  Retorno o valor do ICMSST
	 *
	 *  @return	BigDecimal	ICMSST
	 */
	public BigDecimal getICMSSTAmt()
	{
		return getTaxAmt("ICMSST");
	}	//	getICMSAmtST
	
	/**
	 * @author Icaro Caetano
	 *  Retorno o valor do FCP
	 *
	 *  @return	BigDecimal	FCP
	 */
	public BigDecimal getFCPAmt()
	{
		return getTaxAmt("FCP");
	}	//	getICMSAmt
	
	/**
	 *  Retorno o valor do FCP por Substituição Tributária
	 *
	 *  @return	BigDecimal	FCPST
	 */
	public BigDecimal getFCPSTAmt()
	{
		return getTaxAmt("FCPST");
	}	//	getICMSAmt

	/**
	 *  Retorno o valor do IPI
	 *
	 *  @return	BigDecimal	IPI
	 */
	public BigDecimal getIPIAmt()
	{
		return getTaxAmt("IPI");
	}	//	getIPIAmt

	/**
	 *  Retorno o valor do PIS
	 *
	 *  @return	BigDecimal	PIS
	 */
	public BigDecimal getPISAmt()
	{
		return getTaxAmt("PIS");
	}	//	getPISAmt

	/**
	 *  Retorno o valor do COFINS
	 *
	 *  @return	BigDecimal	COFINS
	 */
	public BigDecimal getCOFINSAmt()
	{
		return getTaxAmt("COFINS");
	}	//	getCOFINSAmt

	/**
	 *  Retorno o valor do II
	 *
	 *  @return	BigDecimal	II
	 */
	public BigDecimal getIIAmt()
	{
		return getTaxAmt("II");
	}	//	getIIAmt

	/**
	 * 
	 * @param AD_Org_ID
	 * @param p_DocumentNo
	 * @param p_IsSOTrx
	 * @param modelNF
	 * @param trxName
	 * @return LBR_NotaFiscal_ID
	 */
	public static int getLBR_NotaFiscal_ID (int p_AD_Org_ID, String p_DocumentNo, boolean p_IsSOTrx, String modelNF, String trxName)
	{
		//	SQL
		String sql = "SELECT LBR_NotaFiscal_ID " +
					   "FROM LBR_NotaFiscal " +
				      "WHERE (DocumentNo=? OR DocumentNo=?) " +
					    "AND AD_Org_ID=? " +
				        "AND IsSOTrx=? ";
		
		//	Parameters
		Object[] params = null;
		if (modelNF != null)
		{
			sql += "AND LBR_NFModel=? ";
			params = new Object[]{p_DocumentNo, TextUtil.lPad (p_DocumentNo, 12), p_AD_Org_ID, p_IsSOTrx, modelNF};
		}
		else
			params = new Object[]{p_DocumentNo, TextUtil.lPad (p_DocumentNo, 12), p_AD_Org_ID, p_IsSOTrx};
		
	    sql += "ORDER BY LBR_NotaFiscal_ID DESC";

		Integer LBR_NotaFiscal_ID = DB.getSQLValue (trxName, sql, params);
		
		return LBR_NotaFiscal_ID;
	}	//	getLBR_NotaFiscal_ID

	/**
	 * 	Retorna o CFOP das linhas, no caso de mais de 1 CFOP,
	 * 		retorna o ref. ao Maior Valor
	 *
	 * @return CFOP
	 */
	public String getCFOP ()
	{
		String sql = "SELECT lbr_CFOPName " +
					 "FROM LBR_NotaFiscalLine " +
					 "WHERE LBR_NotaFiscal_ID=? ORDER BY LineTotalAmt DESC";

		return DB.getSQLValueString(get_TrxName(), sql, getLBR_NotaFiscal_ID());
	}	//	getCFOP

	/**
	 * Retorna o CFOP ou a Referência do CFOP
	 * 	de acordo com a configuração do sistema.
	 *
	 * @param LBR_CFOP_ID
	 * @return CFOP ou Ref. do CFOP
	 */
	@Deprecated
	public String getCFOP(Integer LBR_CFOP_ID)
	{
		if (LBR_CFOP_ID == null || LBR_CFOP_ID.intValue() == 0)
			return null;
		//
		X_LBR_CFOP cfop = new X_LBR_CFOP(getCtx(),LBR_CFOP_ID,get_TrxName());
		String cfopName = cfop.getValue();
		//
		if (!(cfopName == null || cfopName.equals("")))
		{
			//	Retorna a Ref. do CFOP
			if (m_refCFOP.containsKey(cfopName))
			{
				//	Retorna o CFOP
				if (!MSysConfig.getBooleanValue(SysConfig.LBR_REF_CFOP, false, Env.getAD_Client_ID(Env.getCtx())))
					return cfopName;
				//	Retorna a Chave
				else
					return m_refCFOP.get(cfopName).toString();	//	CFOP
			}
			else
			{
				String cl = TextUtil.ALFAB[m_refCFOP.size()];
				m_refCFOP.put(cfopName, cl);
				setCFOPNote(cfop.getDescription() + ", ",true);
				setCFOPReference(cfopName,cl);
				//	Retorna o CFOP
				if (!MSysConfig.getBooleanValue(SysConfig.LBR_REF_CFOP, false, Env.getAD_Client_ID(Env.getCtx())))
					return cfopName;
				//	Retorna a Chave
				else
					return cl;
			}
		}
		//
		return null;
	}	//	getCFOP

	@Deprecated
	public void setLegalMessage(Integer LBR_LegalMessage_ID){

		if (LBR_LegalMessage_ID == null || LBR_LegalMessage_ID.intValue() == 0)
			return;

		X_LBR_LegalMessage lMessage = new X_LBR_LegalMessage(getCtx(),LBR_LegalMessage_ID,get_TrxName());

		if (!m_refLegalMessage.contains(LBR_LegalMessage_ID)){

			m_refLegalMessage.add(LBR_LegalMessage_ID);
			setLegalMessage(lMessage.getTextMsg() + ", ",true);
		}
	} //setLegalMessage

	@Deprecated
	public String getNCMReference()
	{
		return TextUtil.retiraPontoFinal(m_NCMReference);
	}

	/**
	 * 	Set NCM Reference
	 *
	 * 	A-0000.00.00, B-9999.99.99
	 *
	 * @param ncmName
	 * @param cl
	 * @param concat
	 */
	@Deprecated
	private void setNCMReference(String ncmName, String cl, boolean concat)
	{
		if (concat)
		{
			if (m_NCMReference.equals(""))
				m_NCMReference += "Classif: ";
			//
			m_NCMReference += cl + "-" + ncmName + ", ";
		}
		else
			m_NCMReference = ncmName;
	}

	@Deprecated
	public String getCFOPNote() {
		return TextUtil.retiraPontoFinal(m_CFOPNote);
	}

	@Deprecated
	private void setCFOPNote(String cfopNote, boolean concat) {

		if (concat){
			m_CFOPNote += cfopNote;
		}
		else{
			m_CFOPNote = cfopNote;
		}
	}

	@Deprecated
	public String getCFOPReference() {
		return TextUtil.retiraPontoFinal(m_CFOPReference);
	}

	/**
	 * 	Set CFOP Reference.
	 *
	 * 	A-5.101, B-5.102
	 *
	 * @param cfopName
	 * @param cl
	 * @param concat
	 */
	@Deprecated
	private void setCFOPReference(String cfopName, String cl)
	{
		if (m_CFOPReference == null
				|| m_CFOPReference.equals(""))
		{
			if (MSysConfig.getBooleanValue(SysConfig.LBR_REF_CFOP, false, Env.getAD_Client_ID(Env.getCtx())))
				m_CFOPReference = cl + "-" + cfopName;
			else
				m_CFOPReference = cfopName;
		}
		else
		{
			if (MSysConfig.getBooleanValue(SysConfig.LBR_REF_CFOP, false, Env.getAD_Client_ID(Env.getCtx())))
				m_CFOPReference += ", " + cl + "-" + cfopName;
			else
				m_CFOPReference += ", " + cfopName;
		}
	}

	@Deprecated
	public String getLegalMessage() {
		return TextUtil.retiraPontoFinal(m_LegalMessage);
	}

	@Deprecated
	private void setLegalMessage(String legalMessage, boolean concat) {
		if (concat){
			m_LegalMessage += legalMessage;
		}
		else{
			m_LegalMessage = legalMessage;
		}
	}

	/**************************************************************************
	 *  getDIs
	 *  @return X_LBR_NFDI[] taxes
	 */
	public X_LBR_NFDI[] getDIs(){

		String whereClause = "LBR_NotaFiscal_ID = ?";

		MTable table = MTable.get(getCtx(), X_LBR_NFDI.Table_Name);
		Query query =  new Query(getCtx(), table, whereClause, get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_NotaFiscal_ID()});

		List<X_LBR_NFDI> list = query.list();

		return list.toArray(new X_LBR_NFDI[list.size()]);
	}	//	getDIs

	/**
	 * Atualiza autorização NF-e e XML de distribuicao
	 *
	 * return null (success) or error message
	 * @throws Exception
	 */
	public static void authorizeNFe (TProtNFe protNFe, String trxName) throws Exception
	{		
		if (protNFe == null || protNFe.getInfProt() == null)
			throw new Exception ("Protocolo inválido");

		Boolean sendMail = false;
		
		InfProt infProt = protNFe.getInfProt();
			
		String chNFe	= infProt.getChNFe();
		String digVal 	= null;
		String dhRecbto = infProt.getDhRecbto().toString();
		String cStat 	= infProt.getCStat();
		String nProt 	= infProt.getNProt();
		String cMsg		= infProt.getCMsg();
		
		if (infProt.getDigVal() != null)
			digVal = infProt.xgetDigVal().getStringValue();
		//
		MLBRNotaFiscal nf = getNFe (chNFe, trxName);
		if (nf == null)
			throw new NotaFiscalNotFoundException ("NF não encontrada: " + chNFe);

		if (nf.getlbr_NFeStatus() != null && nf.getlbr_NFeStatus().equals (MLBRNotaFiscal.LBR_NFESTATUS_100_AutorizadoOUsoDaNF_E))
			throw new Exception ("NF já processada. " + nf.getDocumentNo());

        Timestamp ts = NFeUtil.stringToTime (dhRecbto);
        //
        nf.setlbr_DigestValue(digVal);
    	nf.setlbr_NFeStatus(cStat);
    	nf.save();
        
        nf.setlbr_NFeProt(nProt);
        nf.setDateTrx(ts);
        nf.setProcessed(true);

		//	Estados Finais
		if (TextUtil.match (cStat, LBR_NFESTATUS_100_AutorizadoOUsoDaNF_E,
				LBR_NFESTATUS_101_CancelamentoDeNF_EHomologado,
				LBR_NFESTATUS_135_EventoRegistradoEVinculadoANF_E,
				LBR_NFESTATUS_302_RejeiçãoIrregularidadeFiscalDoDestinatário,
				LBR_NFESTATUS_999_RejeiçãoErroNãoCatalogado))
		{
			nf.setDocStatus(DOCSTATUS_Completed);
			nf.setDocAction(DOCACTION_VoidInvalidate);
			nf.setProcessed(true);
			//
			if (TextUtil.match (cStat, LBR_NFESTATUS_101_CancelamentoDeNF_EHomologado,
				LBR_NFESTATUS_135_EventoRegistradoEVinculadoANF_E))
				nf.setIsCancelled(true);
			
			/**	
			 * 	Gera o arquivo de distribuição
			 */
			MAttachment attachment = nf.getAttachment(true);
			
			//	Anexo não encontrado
			if (attachment == null || attachment.getEntryCount() == 0)
				throw new Exception ("Arquivo XML não encontrado na NF");
			
			//	Entries
			String xml = null;
			
			// 	Procura o XML nos registros
			for (MAttachmentEntry entry : attachment.getEntries())
			{
				if ((nf.getlbr_NFeID() + "-nfe.xml").equals(entry.getName()))
				{
					xml = new String (entry.getData(), NFeUtil.NFE_ENCODING);
					attachment.deleteEntry(entry.getIndex());
					break;
				}
			}
			
			//	Falha, não encontrado
			if (xml == null)
				throw new Exception ("Arquivo XML não encontrado na NF");
			
			//	Converte em objeto
			NFeDocument nfe = NFeDocument.Factory.parse(xml);
			
			//	Cria um novo arquivo de distribuição
			NfeProcDocument nfeProcDoc = NfeProcDocument.Factory.newInstance();
			TNfeProc nfeProc = nfeProcDoc.addNewNfeProc();
			nfeProc.setVersao(NFeUtil.VERSAO_LAYOUT);
			nfeProc.setNFe(nfe.getNFe());
			nfeProc.setProtNFe(protNFe);
			
			//	Inclusão de Name Space
			String xmlText = nfeProcDoc.xmlText (NFeUtil.getXmlOpt());
			List<String> config = Arrays.asList (MSysConfig.getValue (SysConfig.LBR_INCLUDE_XMLNS_NFE, "NONE", nf.getAD_Client_ID()).split(","));
			if (config.contains("ALL") || config.contains(nf.getlbr_BPCNPJ()))
				xmlText = xmlText.replaceAll ("<NFe>", "<NFe xmlns=\"http://www.portalfiscal.inf.br/nfe\">");
			
			//	Atualiza o anexo
			attachment.addEntry(nf.getlbr_NFeID() + "-dst.xml", xmlText.getBytes(NFeUtil.NFE_ENCODING));
			if (attachment.save())
				sendMail = true;
		}
		
		//	Notas Fiscais Denegadas
		else if (TextUtil.match (cStat,LBR_NFESTATUS_110_UsoDenegado,
					LBR_NFESTATUS_301_UsoDenegadoIrregularidadeFiscalDoEmitente,
					LBR_NFESTATUS_302_RejeiçãoIrregularidadeFiscalDoDestinatário,
					LBR_NFESTATUS_303_UsoDenegadoDestinatárioNãoHabilitadoAOperarNaUF))
		{
			nf.setDocStatus(DOCSTATUS_Voided);
			nf.setDocAction(DOCACTION_None);
			nf.setIsCancelled(true);
			nf.setProcessed(true);
		}
		
		//	Reativar o documento para correção
		else
		{
			nf.setErrorMsg(protNFe.getInfProt().getXMotivo());			
			nf.setDocStatus(DOCSTATUS_Invalid);
			nf.setDocAction(DOCACTION_Complete);
			nf.setProcessed(false);
		}
		
		//	Save changes
		nf.setProcessing(false);
		nf.save();
		
		//	Mensagem de Aviso do Interesse do SEFAZ ao Emitente
		try
        {
			if (cMsg != null)
			{	
	        	nf.setLBR_MsgIntSEFAZ(cMsg);;
	        	nf.save();
			}	
        }
		catch (Exception e) {}
		
		//	Send mail
		if (sendMail)
		{
			//	Envia o e-mail para o cliente
			//	em caso de erro o try/catch evita que o processamento não seja commitado
			try
			{
				ProcEMailNFe.sendEmailNFeThread (nf, false);
			}
			catch (Exception e) {}
		}
	}	//	authorizeNFe

	/**
	 * 	Encontra a NF pelo número da NF, série e Organização
	 *
	 * @param AD_Org_ID
	 * @param DocumentNo 	Número da NF
	 * @param serie 		Série da NF
	 * @param trxName 		Transação
	 * @return
	 */
	public static MLBRNotaFiscal getNFe (Properties ctx, String LBR_CNPJ, String LBR_NFModel, String documentNo, String serie, String trxName)
	{
		String sql = "LBR_CNPJ=? AND LBR_NFModel=? AND DocumentNo=? AND LBR_NFSerie=?";
		
		try
		{
			serie = String.valueOf (Integer.valueOf (serie));
			documentNo = String.valueOf (Integer.valueOf (documentNo));
			LBR_CNPJ = TextUtil.toNumeric (LBR_CNPJ).replaceAll ("([\\d]{2})([\\d]{3})([\\d]{3})([\\d]{4})([\\d]{2})", "$1.$2.$3/$4-$5");
		}
		catch (Exception e){}
		//
		MLBRNotaFiscal nf = new Query (ctx, Table_Name, sql, trxName).setParameters(LBR_CNPJ, LBR_NFModel, documentNo, serie).firstOnly();
		return nf;
	}	//	getNFe

	/**
	 * 	Encontra a NF pelo ID de NF-e
	 *
	 * @param NFeID
	 * @return
	 */
	public static MLBRNotaFiscal getNFe (String NFeID, String trxName)
	{
		String sql =  "SELECT LBR_NotaFiscal_ID FROM LBR_NotaFiscal " +
					   "WHERE lbr_NFeID=? AND AD_Client_ID=?";

		int LBR_NotaFiscal_ID = DB.getSQLValue(trxName, sql,
				new Object[]{NFeID, Env.getAD_Client_ID(Env.getCtx())});

		if (LBR_NotaFiscal_ID > 0)
			return new MLBRNotaFiscal (Env.getCtx(), LBR_NotaFiscal_ID, trxName);
		else
		{
//			log.warning("NFe " + NFeID);
			return null;
		}
	}	//	get

	/**
	 * 	Verifica se existe NF registrada com este número para Cliente/Fornecedor
	 *
	 * @param String DocumentNo
	 * @param int C_BPartner_ID
	 * @return true if exists or false if not
	 */
	public static boolean ifExists (String documentno, int C_BPartner_ID, boolean isSOTrx)
	{

		String sql =  "SELECT LBR_NotaFiscal_ID FROM LBR_NotaFiscal " +
					  "WHERE DocumentNo = ? AND C_BPartner_ID = ? " +
					  "AND AD_Client_ID = ? AND IsSOTrx = ?";

		int LBR_NotaFiscal_ID = DB.getSQLValue(null, sql,
				new Object[]{documentno, C_BPartner_ID,
				Env.getAD_Client_ID(Env.getCtx()), isSOTrx});

		return LBR_NotaFiscal_ID == -1 ? false : true;
	}//ifExists

	/**
	 * Extrai o número da NF
	 *
	 * @param	String	No da NF com a Série
	 * @return	String	No da NF sem a Série
	 */
	public static String getDocNo(String documentNo)
	{
		if (documentNo == null || documentNo.startsWith("-"))
			return "";
		//
		if (documentNo.indexOf('-') == -1)
			return documentNo;
		//
		return documentNo.substring(0, documentNo.indexOf('-'));
	}//getdocNo

	public String getDocNo(){
		return getDocNo(getDocumentNo());
	}
	
	/**
	 * 	Captura o e-mail de recebimento de XML/NFe do Parceiro de Negócios
	 * 
	 * 	TODO: Replicar o campo email para a Nota Fiscal.
	 * 
	 * @return Email
	 */
	public String getLBR_EMailNFe ()
	{
		if (getC_BPartner_ID() > 0)
		{
			I_W_C_BPartner bp = POWrapper.create (new MBPartner (getCtx(), getC_BPartner_ID(), get_TrxName()), I_W_C_BPartner.class);
			if (LBR_NFMODEL_NotaFiscalDeServiçosEletrônicaRPS.equals(getlbr_NFModel()) && bp.getLBR_EMailNFSe() != null)
				return bp.getLBR_EMailNFSe();
			else if (bp.getLBR_EMailNFe() != null)
				return bp.getLBR_EMailNFe();
		}
		//
		return "";
	}	//	getLBR_EMailNFe
	
	/**
	 * Captura o e-mail do contato da Fatura
	 * @deprecated Use the method {@link MLBRNotaFiscal#getLBR_EMailNFe()}
	 * @return Email
	 */
	@Deprecated
	public String getInvoiceContactEMail()
	{
		if (getC_Invoice_ID() > 0)
		{
			MInvoice i = new MInvoice (Env.getCtx(), getC_Invoice_ID(), get_TrxName());
			if (i.getAD_User_ID() > 0)
			{
				MUser u = new MUser (Env.getCtx(), i.getAD_User_ID(), null);
				//
				if (u.getEMail() != null)
					return u.getEMail();
			}
		}
		//
		return "";
	}	//	getEMail

	/**
	 * Extrai a Série da NF
	 *
	 * @param	String	No da NF com a Série
	 * @return	String	Série da NF
	 */
	@Deprecated
	public static String getSerieNo(String documentNo)
	{
		if (documentNo == null || documentNo.indexOf('-') == -1 ||
			documentNo.endsWith("-"))
			return "";
		//

		return documentNo.substring(1+documentNo.indexOf('-'), documentNo.length());
	}//getserieNo

	@Deprecated
	public String getSerieNo(){
		return getSerieNo(getDocumentNo());
	}
	
	/**
	 * 	Preenche o campo descrição com toda a discriminação dos serviços
	 */
	public void setlbr_ServiceTaxes()
	{
		if (getC_DocType_ID() > 0)
		{
			MDocType dtNF = new MDocType (getCtx(), getC_DocType_ID(), get_TrxName());
			String model = dtNF.get_ValueAsString("lbr_NFModel");
			
			if (model != null && model.startsWith("RPS"))
			{
				String serviceDescription = "";
				MLBRNotaFiscalLine[] lines = getLines();
				//
				for (MLBRNotaFiscalLine line : lines)
				{
					if (line.getLBR_NotaFiscalLine_ID() <= 0
							|| line.getQty().compareTo(Env.ZERO) <= 0)
						continue;
					//
					serviceDescription += line.getQty() + " " + line.getlbr_UOMName() + "\t";
					serviceDescription += line.getProductName();
					//
					if (line.getDescription() != null 
							&& !line.getDescription().equals(""))
					{
						if (line.getProductName() != null && !"".equals(line.getProductName()))
							serviceDescription += ", " + line.getDescription();
						else
							serviceDescription += line.getDescription();
					}
					
					if (line.getQty().compareTo(Env.ONE) == 1)
						serviceDescription += ", Valor Unitário R$ " + line.getPrice().setScale(2, RoundingMode.HALF_UP).toString().replace('.', ',');
					
					serviceDescription += ", Valor Total R$ " + line.getLineTotalAmt().setScale(2, RoundingMode.HALF_UP).toString().replace('.', ',') + ".";
					//
					serviceDescription += "\n";
				}
			
				//
				X_LBR_NFTax[] taxes = getTaxes();
				String header = "";
				String content = "";
				String footer = "";
				Boolean printTaxes = false;
				//
				if (taxes == null)
					;
				else
				{
					header += "\n" + TextUtil.rPad("Valor Bruto:", 15);
					header += "- R$ ";
					header += TextUtil.lPad(getlbr_ServiceTotalAmt().setScale(2, RoundingMode.HALF_UP).toString().replace('.', ','), ' ', 13);
					header += "\n\n";
					//
					if (taxes.length == 1)
						header += "Retenção:\n";
					else if (taxes.length > 1)
						header += "Retenções:\n";
					//
					for (X_LBR_NFTax tax : taxes)
					{
						X_LBR_TaxGroup tg = new X_LBR_TaxGroup (Env.getCtx(), tax.getLBR_TaxGroup_ID(), null);
						if (tg.getName() == null || tg.getName().equals("ISS"))	//	ISS ja e destacado normalmente
							continue;
						//
						printTaxes = true;
						//
						content += TextUtil.rPad(tg.getName(), 15);
						content += "- R$ ";
						content += TextUtil.lPad(tax.getlbr_TaxAmt().abs().setScale(2, RoundingMode.HALF_UP).toString().replace('.', ','), ' ', 13);
						content += "\n";
					}
					footer += "\n" + TextUtil.rPad("Valor Líquido:", 15);
					footer += "- R$ ";
					footer += TextUtil.lPad(getGrandTotal().setScale(2, RoundingMode.HALF_UP).toString().replace('.', ','), ' ', 13);
					footer += "\n";
				}
			
				//
				if (printTaxes)
					serviceDescription += header + content + footer;
				//
				MLBROpenItem[] ois = MLBROpenItem.getOpenItem(getC_Invoice_ID(), get_TrxName());
				if (ois == null)
					;
				else if (ois.length == 1)
					serviceDescription += "\nVencimento em " + TextUtil.timeToString(ois[0].getDueDate(), "dd/MM/yyyy");
				else if (ois.length > 1)
				{
					serviceDescription += "\nVencimentos:\n";
					//
					for (MLBROpenItem oi : ois)
					{
						serviceDescription += TextUtil.timeToString(oi.getDueDate(), "dd/MM/yyyy");
						serviceDescription += "     - R$ ";
						serviceDescription += TextUtil.lPad(oi.getGrandTotal().setScale(2, RoundingMode.HALF_UP).toString().replace('.', ','), ' ', 13);
						serviceDescription += "\n";
					}
				}
				//	FIXME: Verificar como resolver o problema do POReference
		//		if (getPOReference() != null 
		//				&& !getPOReference().trim().equals(""))
		//			serviceDescription += "\nReferência: " + getPOReference() + "\n";
				//
				if (getC_DocTypeTarget_ID() > 0)
				{
					MDocType dt = new MDocType (Env.getCtx(), getC_DocTypeTarget_ID(), null);
					//
					if (dt.getDocumentNote() != null && !dt.getDocumentNote().trim().equals(""))
						serviceDescription += "\n" + dt.getDocumentNote();
				}
				//
				setDescription(serviceDescription.trim());
			}
		}
	}	//	setlbr_ServiceTaxes
	
	
	
	/***	New Class	***/
	
	/**
	 * 	Gera a NF
	 */
	public boolean generateNF (MInvoice invoice, Boolean IsOwnDocument)
	{
		BigDecimal totalItem = Env.ZERO, totalService = Env.ZERO;
		//
		MDocType dtInvoice = new MDocType(getCtx(), invoice.getC_DocTypeTarget_ID(), get_TrxName());
		Boolean isSOTrx = true;
		int lineNo = 1;
		
		/**
		 * 	Limpa os valores antigos
		 */
		clear();

		/**
		 * 	AR Invoice = Saida do Estabelecimento para Cliente
		 * 	AP Credit = Saida (Devolução) para um Fornecedor
		 */
		if (dtInvoice.getDocBaseType().equals(MDocType.DOCBASETYPE_APCreditMemo) ||
			dtInvoice.getDocBaseType().equals(MDocType.DOCBASETYPE_ARInvoice))
			isSOTrx = true;

		/**
		 * 	AP Invoice = Entrada (Compra) - Para Importação pode ser Documento Próprio
		 * 	AR Credit = Entrada (Devolção de Cliente)
		 */
		else if (dtInvoice.getDocBaseType().equals(MDocType.DOCBASETYPE_APInvoice) ||
				 dtInvoice.getDocBaseType().equals(MDocType.DOCBASETYPE_ARCreditMemo))
		{
			isSOTrx = false;
			//
			if (LBR_TRANSACTIONTYPE_Import.equals(POWrapper.create(invoice, I_W_C_Invoice.class).getlbr_TransactionType()))
				IsOwnDocument = true;
		}
		
		//	Dados mestre
		setDateDoc(invoice.getDateAcct());
		setIsSOTrx(isSOTrx);
		setlbr_IsOwnDocument(IsOwnDocument);
		
		//	Preenche a data de saida da NF
		if (!MSysConfig.getBooleanValue(SysConfig.LBR_DATEINOUT_NF, true, getAD_Client_ID()))
			setlbr_DateInOut(invoice.getDateAcct());
		
		//	Dados da Organização
		setOrgInfo(POWrapper.create(MOrgInfo.get(getCtx(), invoice.getAD_Org_ID(), get_TrxName()), I_W_AD_OrgInfo.class));
		
		//	Dados da Fatura
		setInvoice(POWrapper.create(invoice, I_W_C_Invoice.class));
		
		//	Parceiro da Fatura
		setInvoiceBPartner(new MBPartnerLocation(getCtx(), invoice.getC_BPartner_Location_ID(), get_TrxName()));
		
		//	Tipo de Documento
		setC_DocTypeTarget_ID();
		
		// Imprime Descontos
		if (LBR_NFMODEL_NotaFiscalDeServiçosEletrônicaRPS.equals(getNFModel()))
			setIsDiscountPrinted(false);
		else
			setIsDiscountPrinted(invoice.isDiscountPrinted());
		
		//	Entrega
		setShipmentBPartner(invoice);
		
		//	Nota da Fatura: Dados do Vencimento
		setBillNote(invoice);
		
		//  Description
		setDescription();
		
		//	Se não estiver salva
		if (get_ID() < 1)
			save ();
		
		//	Impostos
		setTaxes(invoice);
		
		// Programação de Pagamento
		setPaySchedule(POWrapper.create(invoice, I_W_C_Invoice.class));
		
		I_W_C_DocType dt = POWrapper.create(new MDocType (getCtx(), getC_DocType_ID(), get_TrxName()), I_W_C_DocType.class);
		String serie = "";
		String model = "";
		
		if (dt.getlbr_NFSerie() != null && !dt.getlbr_NFSerie().isEmpty())
			serie = dt.getlbr_NFSerie();
		
		//	Não permitir a NF sem série
		else
			serie = "1";
		
		if (getlbr_NFSerie() == null && IsOwnDocument)
			setlbr_NFSerie(serie);
		
		if (!dtInvoice.get_ValueAsString("lbr_NFModel").isEmpty())
			model = dtInvoice.get_ValueAsString("lbr_NFModel");
		else	
			model = dt.getlbr_NFModel();

		if (model == null || model.isEmpty())
			setlbr_NFModel(null);
		else
			setlbr_NFModel(model);
		
		//	Fatura gerada a partir do RMA a Finalidade da NF deve ser Devolução/Retorno de Mercadoria
		//	Adicionar NF Referenciada
		if (invoice.getM_RMA_ID() != 0)
		{
			// Altera a Finalidade para Devolução/Retorno de Mercadoria
			setlbr_FinNFe(LBR_FINNFE_DevoluçãoRetornoDeMercadoria);
			
			// RMA
			MRMA rma = (MRMA) invoice.getM_RMA();
			// Nota Fiscal indicada na RMA
			MLBRNotaFiscal nfrma = new MLBRNotaFiscal (Env.getCtx(), rma.get_ValueAsInt("LBR_NotaFiscal_ID"), null);
			
			// Verifica se a NF Indicada no RMA é uma NF-e
			if (nfrma.getLBR_NotaFiscal_ID() > 0 && 
					nfrma.getlbr_NFModel().equals(MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalEletrônica))
			{
				// Adiciona NF Referênciada
				MLBRNotaFiscalDocRef nfref = new MLBRNotaFiscalDocRef (Env.getCtx(), 0, get_TrxName());
				nfref.setLBR_FiscalDocRefType(MLBRNotaFiscalDocRef.LBR_FISCALDOCREFTYPE_NF_E);
				nfref.setLBR_NotaFiscal_ID(getLBR_NotaFiscal_ID());
				nfref.setLBR_NFeReferenced_ID(nfrma.getLBR_NotaFiscal_ID());
				nfref.setlbr_NFeID(nfrma.getlbr_NFeID());				
				nfref.save();
			}
			
		}
		
		//	Description para Nota de Serviço
		if (getC_DocType_ID() > 0)
		{
			dt = POWrapper.create(new MDocType (getCtx(), getC_DocType_ID(), get_TrxName()), I_W_C_DocType.class);
			model = dt.getlbr_NFModel();
			
			if (model != null && model.startsWith("RPS"))
			{
				setlbr_RPSStatus(MLBRNotaFiscal.LBR_RPSSTATUS_OperacaoNormal);
				setlbr_ServiceTaxes();
			}
		}
		
		//	Natureza da Operação do Tipo de Documento do Pedido
		if (getC_Order_ID()>0)
		{
			// Tipo de Documento do Pedido
			MDocType dtorder = new MDocType(getCtx(),getC_Order().getC_DocType_ID(),get_TrxName());
			
			// Se o campo estiver preenchido adicionar na Natureza da Operação
			if (dtorder.get_ValueAsString("lbr_CFOPNote") != null &&
					!dtorder.get_ValueAsString("lbr_CFOPNote").isEmpty())
				setlbr_CFOPNote(dtorder.get_ValueAsString("lbr_CFOPNote"));			
		}
		
		//	Linhas
		for (MInvoiceLine iLine : invoice.getLines())
		{
			//	Ignorar as Linhas de Descrição da Fatura
			if (iLine.isDescription())
				continue;
			
			//	Despesas Adicionais
			MClientInfo cInfo = MClientInfo.get (invoice.getCtx(), invoice.getAD_Client_ID());
			I_W_AD_ClientInfo cInfoW = POWrapper.create(cInfo, I_W_AD_ClientInfo.class);
			
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
			
			MLBRNotaFiscalLine nfLine = new MLBRNotaFiscalLine (this);
			nfLine.setAD_Org_ID(getAD_Org_ID());
			nfLine.save();
			//
			nfLine.setLine(lineNo++);
			nfLine.setInvoiceLine(iLine);
			nfLine.save();
			nfLine.setDiscount(MLBRNFLineTax.getTaxesDiscount(nfLine));
			nfLine.save();
			//
			if (nfLine.islbr_IsService())
				totalService = totalService.add(nfLine.getLineTotalAmt());
			else
				totalItem = totalItem.add(nfLine.getLineTotalAmt());
			//
			if (nfLine.getLBR_CFOP_ID() > 0 
					&& (getlbr_CFOPNote() == null || getlbr_CFOPNote().length() < 1))
				setlbr_CFOPNote(nfLine.getLBR_CFOP().getDescription());
		}
		
		//	Valores
		setTotalLines(totalItem);
		setlbr_ServiceTotalAmt(totalService);
		setDiscountAmt(getDiscount());
		
		//	Nota do Documento (Mensagens Legais) e Descrição
		setLBR_FiscalObs ();
		setDescription ();
		
		// IBPTax - LBR-81
		// Somente para consumidor final e for NF-e de Saída
		if ((LBR_TRANSACTIONTYPE_EndUser.equals(getlbr_TransactionType())
				|| LBR_TRANSACTIONTYPE_EndUserDoubleBase.equals(getlbr_TransactionType())) && isSOTrx())
			setAproxTaxIBPT();
		
		//	Descrição para Nota de Serviço
		setlbr_ServiceTaxes();
		
		//	O peso normalemnte vem da expedição, porém alguns casos a NF é feita com base no pedido
		//		ou na fatura, portanto é necessário recalcular o peso
		if (Env.ZERO.compareTo (getlbr_GrossWeight()) == 0)
			calculateWeight();
				
		return true;
	}	//	generateNF
	
	/**
	 * 	Gera a NF
	 */
	public boolean generateNF (MMovement move, Boolean isOwnDocument, int p_C_DocType_ID)
	{
		MDocType doctype = MDocType.get(getCtx(), p_C_DocType_ID);
		
		BigDecimal totalItem = Env.ZERO, totalService = Env.ZERO;
		//
		Boolean isSOTrx = doctype.isSOTrx();
		int lineNo = 1;
		
		/**
		 * 	Limpa os valores antigos
		 */
		clear();
		
		//	Dados mestre
		setDateDoc(getCreated());
		setIsSOTrx(isSOTrx);
		setlbr_IsOwnDocument(isOwnDocument);
		
		//	Dados da Organização
		setOrgInfo(POWrapper.create(MOrgInfo.get(getCtx(), move.getAD_Org_ID(), get_TrxName()), I_W_AD_OrgInfo.class));
		
		// Adicionar Movimentação
		setM_Movement_ID(move.getM_Movement_ID());
		
		//	Transaction Type
		setlbr_TransactionType (LBR_TRANSACTIONTYPE_Manufacturing);
		
		//	Dados do Parceiro
		MBPartnerLocation bpLocation = new MBPartnerLocation (getCtx(), move.getC_BPartner_Location_ID(), get_TrxName());
		setBPartner(bpLocation);
		
		//	Parceiro da Fatura
		setInvoiceBPartner(bpLocation);
		
		//	Tipo de Documento
		if (p_C_DocType_ID > 0)
			setC_DocTypeTarget_ID(p_C_DocType_ID);
		else
			setC_DocTypeTarget_ID();
		
		// Imprime Descontos
		setIsDiscountPrinted(false);
		
		//	Entrega
		MLocation location = new MLocation (getCtx(), bpLocation.getC_Location_ID(), get_TrxName());
		MCountry country = new MCountry (getCtx(), location.getC_Country_ID(), get_TrxName());

		//	Endereço de Entrega
		setlbr_BPDeliveryCNPJ(BPartnerUtil.getCNPJ_CPF (bpLocation));	//	CNPJ
		setlbr_BPDeliveryIE(BPartnerUtil.getIE (bpLocation));   		//	IE
		//
		setlbr_BPDeliveryAddress1(location.getAddress1());	//	Rua
		setlbr_BPDeliveryAddress2(location.getAddress2());	//	Número
		setlbr_BPDeliveryAddress3(location.getAddress3());	//	Bairro
		setlbr_BPDeliveryAddress4(location.getAddress4());	//	Complemento
		setlbr_BPDeliveryCity(location.getCity());			//	Cidade
		setlbr_BPDeliveryPostal(location.getPostal());		//	CEP
		setlbr_BPDeliveryCountry(country.getCountryCode());	//	País
		
		// NT 2018.005
		setLBR_BPDeliveryName(bpLocation.getC_BPartner().getName());
		setLBR_BPDeliveryPhone(bpLocation.getPhone());
		
		setDeliveryViaRule(MLBRNotaFiscal.DELIVERYVIARULE_Delivery);
		
		//  Description
		setDescription();
		
		//	Se não estiver salva
		if (get_ID() < 1)
			save ();
		
		//	Impostos
//		setTaxes(invoice);
		
		I_W_C_DocType dt = POWrapper.create(new MDocType (getCtx(), getC_DocType_ID(), get_TrxName()), I_W_C_DocType.class);
		String serie = "";
		
		if (dt.getlbr_NFSerie() != null && !dt.getlbr_NFSerie().isEmpty())
			serie = dt.getlbr_NFSerie();
		
		//	Não permitir a NF sem série
		else
			serie = "1";
		
		if (getlbr_NFSerie() == null && isOwnDocument)
			setlbr_NFSerie(serie);
		
		setlbr_NFModel(LBR_NFMODEL_NotaFiscalEletrônica);
		
		//	Documents
		int p_LBR_CFOP_ID	 	= 0;
		int p_LBR_Tax_ID 		= 0;
		int p_M_CostElement_ID 	= 2000000;
		
		int p_POG_ID = move.get_ValueAsInt(MLBRProductionGroup.COLUMNNAME_LBR_ProductionGroup_ID);
		if (p_POG_ID > 0)
		{
			MLBRProductionGroup pog = new MLBRProductionGroup (Env.getCtx(), p_POG_ID, get_TrxName());
			p_LBR_CFOP_ID = pog.getLBR_CFOP_ID();
			p_LBR_Tax_ID = pog.getLBR_Tax_ID();
		}
		
		//	Linhas
		for (MMovementLine line : move.getLines (true))
		{
			//	Se for NF de Entrada, buscar CFOP da Movimentação
			if (!isSOTrx())
				p_LBR_CFOP_ID = line.get_ValueAsInt("LBR_CFOP_ID");
			
			MLBRNotaFiscalLine nfLine = new MLBRNotaFiscalLine (this);
			nfLine.setAD_Org_ID(line.getAD_Org_ID());
			nfLine.save();
			//
			nfLine.setLine(lineNo++);
			nfLine.setMovementLine(line, p_LBR_CFOP_ID, p_LBR_Tax_ID, p_M_CostElement_ID);
			nfLine.save();
			//
			totalItem = totalItem.add(nfLine.getLineTotalAmt());
			//
			if (nfLine.getLBR_CFOP_ID() > 0 
					&& (getlbr_CFOPNote() == null || getlbr_CFOPNote().length() < 1))
				setlbr_CFOPNote(nfLine.getLBR_CFOP().getDescription());
		}
		
		//	Valores
		setTotalLines(totalItem);
		setGrandTotal(totalItem);
		setlbr_ServiceTotalAmt(totalService);
		setDiscountAmt(getDiscount());
		
		//	Nota do Documento (Mensagens Legais) e Descrição
		setLBR_FiscalObs ();
		setDescription ();
		
		//	O peso normalemnte vem da expedição, porém alguns casos a NF é feita com base no pedido
		//		ou na fatura, portanto é necessário recalcular o peso
		if (Env.ZERO.compareTo (getlbr_GrossWeight()) == 0)
			calculateWeight();
				
		return true;
	}	//	generateNF
	
	/**
	 * 	Gera a NF
	 */
	public boolean generateNF (MLBRProductionGroup pg, List<MProductionLine> lines, Boolean isOwnDocument, String lbr_NFeEntrada)
	{		
		BigDecimal totalItem = Env.ZERO, totalService = Env.ZERO;
		//
		Boolean isSOTrx = false;
		int lineNo = 1;
		
		//	Dados mestre
		if (lbr_NFeEntrada != null && !lbr_NFeEntrada.isEmpty())
			setDocumentNo(lbr_NFeEntrada);
		
		//	Date Document is Movement Date from Production
		setDateDoc(lines.get(0).getM_Production().getMovementDate());
		setIsSOTrx(isSOTrx);
		setlbr_IsOwnDocument(isOwnDocument);
		
		//	Dados da Organização
		setOrgInfo(POWrapper.create(MOrgInfo.get(getCtx(), pg.getAD_Org_ID(), get_TrxName()), I_W_AD_OrgInfo.class));
		
		//	Transaction Type
		setlbr_TransactionType (MLBRNotaFiscal.LBR_TRANSACTIONTYPE_Manufacturing);
		
		//	Dados do Parceiro
		MBPartnerLocation bpLocation = new MBPartnerLocation (getCtx(), pg.getC_BPartner_Location_ID(), get_TrxName());
		setBPartner(bpLocation);
		
		//	Parceiro da Fatura
		setInvoiceBPartner(bpLocation);
		
		//	Tipo de Documento
		setC_DocTypeTarget_ID(MDocType.getDocType("NFB"));
		
		// Imprime Descontos
		setIsDiscountPrinted(false);
		
		//	Entrega
		MLocation location = new MLocation (getCtx(), bpLocation.getC_Location_ID(), get_TrxName());
		MCountry country = new MCountry (getCtx(), location.getC_Country_ID(), get_TrxName());

		//	Endereço de Entrega
		setlbr_BPDeliveryCNPJ(BPartnerUtil.getCNPJ_CPF (bpLocation));	//	CNPJ
		setlbr_BPDeliveryIE(BPartnerUtil.getIE (bpLocation));   		//	IE
		//
		setlbr_BPDeliveryAddress1(location.getAddress1());	//	Rua
		setlbr_BPDeliveryAddress2(location.getAddress2());	//	Número
		setlbr_BPDeliveryAddress3(location.getAddress3());	//	Bairro
		setlbr_BPDeliveryAddress4(location.getAddress4());	//	Complemento
		setlbr_BPDeliveryCity(location.getCity());			//	Cidade
		setlbr_BPDeliveryPostal(location.getPostal());		//	CEP
		setlbr_BPDeliveryCountry(country.getCountryCode());	//	País
		
		// NT 2018.005
		setLBR_BPDeliveryName(bpLocation.getC_BPartner().getName());
		setLBR_BPDeliveryPhone(bpLocation.getPhone());
		
		//  Description
		setDescription();
		
		//	Se não estiver salva
		if (get_ID() < 1)
			save ();
		
		//	Impostos
//		setTaxes(invoice);
		
//		I_W_C_DocType dt = POWrapper.create(new MDocType (getCtx(), getC_DocType_ID(), get_TrxName()), I_W_C_DocType.class);
//		String serie = "";
		
		setlbr_NFModel(MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalEletrônica);
		
		//	Documents
		int p_LBR_Tax_ID 		= pg.getLBR_Tax_ID();
		int p_M_CostElement_ID 	= 2000000;
		
		//	Linhas
		for (MProductionLine line : lines)
		{
			MLBRNotaFiscalLine nfLine = new MLBRNotaFiscalLine (this);
			nfLine.setAD_Org_ID(line.getAD_Org_ID());
			nfLine.save();
			//
			nfLine.setLine(lineNo++);
			
			
			MProduct p = new MProduct (getCtx(), line.getM_Product_ID(), get_TrxName());
			
//			Product
			nfLine.setProduct (p);
			
			//  Seguro
			nfLine.setlbr_InsuranceAmt(Env.ZERO);
			
			//	Frete
			nfLine.setFreightAmt(Env.ZERO);
			
			//  Outras Despesas Acessórias
			nfLine.setLBR_OtherChargesAmt(Env.ZERO);
			
			nfLine.setC_UOM_ID (p.getC_UOM_ID());
			
			int p_LBR_CFOP_ID = line.get_ValueAsInt("LBR_CFOP_ID");
			
			nfLine.setLBR_CFOP_ID (p_LBR_CFOP_ID);
			
			//	Número de Série
			if (line.getM_AttributeSetInstance_ID()>0 
					&& line.getM_AttributeSetInstance().getSerNo() != null
					&& (MSysConfig.getBooleanValue(SysConfig.LBR_PRINT_SERIALNUMBER_NF, true, getAD_Client_ID())))
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
			
			//	Quantidade não pode ser negativa
			nfLine.setQty ((line.getMovementQty().signum() > 0 ? line.getMovementQty() : line.getMovementQty().negate()));
			
			//	Cost
			MAcctSchema as = MClient.get (line.getCtx ()).getAcctSchema();
			MCost mCost = null;
			BigDecimal costPrice = Env.ZERO;
			
			String where = " M_Product_ID=? AND LBR_AverageCost_ID IN " + 
					"(SELECT LBR_AverageCost_ID FROM LBR_AverageCost WHERE C_Period_ID=?)";
			
			//	Buscar Custo do Período
			MLBRAverageCostLine acl = new Query (Env.getCtx(), MLBRAverageCostLine.Table_Name, where, get_TrxName())
										.setParameters(p.getM_Product_ID(), MPeriod.get(Env.getCtx(), pg.getDateOrdered(), pg.getAD_Org_ID(), get_TrxName()).getC_Period_ID())
										.first();
			
			if (acl != null && acl.getCurrentCostPrice().compareTo(BigDecimal.ZERO) > 0)
			{
				costPrice = acl.getCurrentCostPrice();
			}
			else
			{
				// Se Custo do Período não identificado, buscar custo Atual.
				mCost = MCost.get (p, line.getM_AttributeSetInstance_ID(), as, line.getAD_Org_ID(), p_M_CostElement_ID, line.get_TrxName());
				
				if (mCost != null && mCost.getCurrentCostPrice().compareTo(BigDecimal.ZERO) > 0)
					costPrice = mCost.getCurrentCostPrice();
				else
				{
					//	Buscar da Organização * se não houver Custo na Organização
					mCost = MCost.get (p, line.getM_AttributeSetInstance_ID(), as, 0, p_M_CostElement_ID, line.get_TrxName());
					costPrice = mCost.getCurrentCostPrice();
				}
			}
			
			//	If End Product get Price from Production
			if (line.isEndProduct())
			{
				//	Production
				MProduction production = (MProduction) line.getM_Production();
				
				//	Price Entered from Production
				BigDecimal priceEntered = (BigDecimal)production.get_Value("PriceEntered");
				
				//	Price
				nfLine.setPrice(MLBRNotaFiscal.CURRENCY_BRL, priceEntered, priceEntered , false, false);				
			}
			else
			{
				//	Cost Price
				nfLine.setPrice(MLBRNotaFiscal.CURRENCY_BRL, costPrice, costPrice , false, false);
			}
			
			nfLine.saveEx();
			//
			totalItem = totalItem.add(nfLine.getLineTotalAmt());
			//
			if (nfLine.getLBR_CFOP_ID() > 0 
					&& (getlbr_CFOPNote() == null || getlbr_CFOPNote().length() < 1))
				setlbr_CFOPNote(nfLine.getLBR_CFOP().getDescription());
			
			//	Add NF Line To Production Line
			//  Isntance in the Same Transaction
			MProductionLine pLine = new MProductionLine (Env.getCtx(), line.getM_ProductionLine_ID(), nfLine.get_TrxName());
			pLine.set_ValueNoCheck(MLBRNotaFiscalLine.COLUMNNAME_LBR_NotaFiscalLine_ID, nfLine.getLBR_NotaFiscalLine_ID());
			pLine.save();
		}
		
		//	Valores
		setTotalLines(totalItem);
		setGrandTotal(totalItem);
		setlbr_ServiceTotalAmt(totalService);
		setDiscountAmt(Env.ZERO);
		
		//	Nota do Documento (Mensagens Legais) e Descrição
		setLBR_FiscalObs ();
		setDescription ();
		
		StringBuffer description = new StringBuffer();
		
		description.append(getDescription().toString());
		
		if (description.length() > 0)
			description.append("\n");
		
		description.append("Pedido de Industrialização: " + pg.getDocumentNo());
		
		setDescription(description.toString());
		
		//	O peso normalemnte vem da expedição, porém alguns casos a NF é feita com base no pedido
		//		ou na fatura, portanto é necessário recalcular o peso
		if (Env.ZERO.compareTo (getlbr_GrossWeight()) == 0)
			calculateWeight();
		
				
		return true;
	}	//	generateNF
	
	/**
	 * 	Gera a NF
	 */
	public boolean generateNF (MOrder order, Boolean IsOwnDocument)
	{
		BigDecimal totalItem = Env.ZERO, totalService = Env.ZERO;
		//
		Boolean isSOTrx = true;
		int lineNo = 1;
		
		if (get_ID() < 1 && !save())
		{
			m_processMsg = "Could not save the Nota Fiscal (New Record)";
			log.log(Level.SEVERE, m_processMsg);
			return false;
		}
		
		/**
		 * 	Limpa os valores antigos
		 */
		clear();
				
		//	Dados mestre
		setDateDoc(order.getDateAcct());
		setIsSOTrx(isSOTrx);
		setlbr_IsOwnDocument(IsOwnDocument);
		if (!MSysConfig.getBooleanValue(SysConfig.LBR_DATEINOUT_NF, true, getAD_Client_ID()))
			setlbr_DateInOut(order.getDateAcct());
		
		//	Dados da Organização
		setOrgInfo(POWrapper.create(MOrgInfo.get(getCtx(), order.getAD_Org_ID(), get_TrxName()), I_W_AD_OrgInfo.class));
		
		//	Dados da Fatura
		setOrder(POWrapper.create(order, I_W_C_Order.class));
		//	Parceiro da Fatura
		setInvoiceBPartner(new MBPartnerLocation(getCtx(), order.getC_BPartner_Location_ID(), get_TrxName()));
		
		//	Tipo de Documento
		setC_DocTypeTarget_ID();
		
		// Imprime Descontos
		if (LBR_NFMODEL_NotaFiscalDeServiçosEletrônicaRPS.equals(getNFModel()))
			setIsDiscountPrinted(false);
		else
			setIsDiscountPrinted(order.isDiscountPrinted());
		
		//	Entrega
		setShipmentBPartner (null, null, order);
		
		if (get_ID() < 1)
			save ();	
		
		//	Impostos
		setTaxes(order);
		
		// Programação de Pagamento
		setPaySchedule(POWrapper.create(order, I_W_C_Order.class));
		
		//	Natureza da Operação do Tipo de Documento do Pedido		
		MDocType dtorder = new MDocType(getCtx(),getC_Order().getC_DocType_ID(),get_TrxName());
		
		// Se o campo estiver preenchido adicionar na Natureza da Operação
		if (dtorder.get_ValueAsString("lbr_CFOPNote") != null &&
				!dtorder.get_ValueAsString("lbr_CFOPNote").isEmpty())
			setlbr_CFOPNote(dtorder.get_ValueAsString("lbr_CFOPNote"));			
		
		//	Linhas
		for (MOrderLine oLine : order.getLines())
		{
			//	Ignorar as Linhas de Descrição da Fatura
			if (oLine.isDescription())
				continue;
			
			/**
			 * 	Estes valores já foram ajustado no nível do cabeçalho,
			 * 		portanto devem ser ignorados
			 */
			if (oLine.getM_Product_ID() > 0
					&& (oLine.getM_Product_ID() == cInfoW.getM_ProductFreight_ID()
					|| oLine.getM_Product_ID() == cInfoW.getLBR_ProductInsurance_ID()
					|| oLine.getM_Product_ID() == cInfoW.getLBR_ProductOtherCharges_ID()
					|| oLine.getM_Product_ID() == cInfoW.getLBR_ProductSISCOMEX_ID()
					|| oLine.getM_Product_ID() == cInfoW.getLBR_ProductWithhold_ID()))
				continue;
			
			MLBRNotaFiscalLine nfLine = new MLBRNotaFiscalLine (this);
			nfLine.setAD_Org_ID(getAD_Org_ID());
			nfLine.save();
			//
			nfLine.setLine(lineNo++);
			nfLine.setOrderLine(oLine, false);
			nfLine.save();
			//
			if (nfLine.islbr_IsService())
				totalService = totalService.add(nfLine.getLineTotalAmt());
			else
				totalItem = totalItem.add(nfLine.getLineTotalAmt());
			
			if (nfLine.getLBR_CFOP_ID() > 0 
					&& (getlbr_CFOPNote() == null || getlbr_CFOPNote().length() < 1))
				setlbr_CFOPNote(nfLine.getLBR_CFOP().getDescription());
		}
		
		//	Valores
		setTotalLines(totalItem);
		setlbr_ServiceTotalAmt(totalService);
		
		//	Nota do Documento (Mensagens Legais) e Descrição
		setLBR_FiscalObs ();
		setDescription ();
		
		// IBPTax - LBR-81
		// Somente para consumidor final e for NF-e de Saída
		if ((LBR_TRANSACTIONTYPE_EndUser.equals(getlbr_TransactionType())
				|| LBR_TRANSACTIONTYPE_EndUserDoubleBase.equals(getlbr_TransactionType())) && isSOTrx())
			setAproxTaxIBPT();
		
		//	Descrição para Nota de Serviço
		setlbr_ServiceTaxes();
		
		//	O peso normalemnte vem da expedição, porém alguns casos a NF é feita com base no pedido
		//		ou na fatura, portanto é necessário recalcular o peso
		if (Env.ZERO.compareTo (getlbr_GrossWeight()) == 0)
			calculateWeight();
		
		return true;
	}	//	generateNF
	
	/**
	 * 	Gera a NF
	 */
	public boolean generateNF (MInOut inout, Boolean IsOwnDocument)
	{
		BigDecimal totalItem = Env.ZERO, totalService = Env.ZERO;
		//
		Boolean isSOTrx = inout.isSOTrx();
		int lineNo = 1;		
		
		/**
		 * 	Limpa os valores antigos
		 */
		clear();
				
		//	Dados mestre
		setDateDoc(inout.getDateAcct());
		setIsSOTrx(isSOTrx);
		setlbr_IsOwnDocument(IsOwnDocument);
		if (!MSysConfig.getBooleanValue(SysConfig.LBR_DATEINOUT_NF, true, getAD_Client_ID()))
			setlbr_DateInOut(inout.getDateAcct());
		
		MOrder order = new MOrder(Env.getCtx(), inout.getC_Order_ID(), get_TrxName());
		
		//	Dados da Organização
		setOrgInfo(POWrapper.create(MOrgInfo.get(getCtx(), inout.getAD_Org_ID(), get_TrxName()), I_W_AD_OrgInfo.class));
		
		//	Dados da Remessa e Pedido
		setInOut(POWrapper.create(inout, I_W_M_InOut.class));
		
		//	Parceiro da Fatura
		//setInvoiceBPartner(new MBPartnerLocation(getCtx(), order.getC_BPartner_Location_ID(), get_TrxName()));
		
		//	Tipo de Documento
		setC_DocTypeTarget_ID();
		
		MDocType dt = new MDocType (Env.getCtx(), getC_DocTypeTarget_ID(), get_TrxName());
		
		if (dt != null)
		{
			String nfModel = dt.get_ValueAsString("lbr_NFModel");
			
			if (nfModel != null && !nfModel.isEmpty())
				setlbr_NFModel(nfModel);
		}
		
		// Imprime Descontos
		if (LBR_NFMODEL_NotaFiscalDeServiçosEletrônicaRPS.equals(getNFModel()))
			setIsDiscountPrinted(false);
		else
			setIsDiscountPrinted(order.isDiscountPrinted());
		
		//	Entrega
		setShipmentBPartner (inout, null, null);		
		
		//	Natureza da Operação do Tipo de Documento do Pedido		
		MDocType dtorder = new MDocType(getCtx(),getC_Order().getC_DocType_ID(),get_TrxName());
		
		// Se o campo estiver preenchido adicionar na Natureza da Operação
		if (dtorder.get_ValueAsString("lbr_CFOPNote") != null &&
				!dtorder.get_ValueAsString("lbr_CFOPNote").isEmpty())
			setlbr_CFOPNote(dtorder.get_ValueAsString("lbr_CFOPNote"));
		
		if (get_ID() < 1 && !save())
		{
			m_processMsg = "Could not save the Nota Fiscal (New Record)";
			log.log(Level.SEVERE, m_processMsg);
			return false;
		}
		
		//		Impostos
		setTaxes(order);
		
		//	Linhas
		for (MInOutLine iLine : inout.getLines())
		{
			//	Ignorar as Linhas de Descrição da Fatura
			if (iLine.isDescription())
				continue;
			
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
			
			MLBRNotaFiscalLine nfLine = new MLBRNotaFiscalLine (this);
			nfLine.setAD_Org_ID(getAD_Org_ID());
			nfLine.save();
			//
			nfLine.setLine(lineNo++);
			nfLine.setInOutLine(iLine, false);
			nfLine.save();
			//
			if (nfLine.islbr_IsService())
				totalService = totalService.add(nfLine.getLineTotalAmt());
			else
				totalItem = totalItem.add(nfLine.getLineTotalAmt());
			
			if (nfLine.getLBR_CFOP_ID() > 0 
					&& (getlbr_CFOPNote() == null || getlbr_CFOPNote().length() < 1))
				setlbr_CFOPNote(nfLine.getLBR_CFOP().getDescription());
		}
		
		//	Valores
		setTotalLines(totalItem);
		setlbr_ServiceTotalAmt(totalService);
		
		//	Nota do Documento (Mensagens Legais) e Descrição
		setLBR_FiscalObs ();
		setDescription ();
		
		// IBPTax - LBR-81
		// Somente para consumidor final e for NF-e de Saída
		if ((LBR_TRANSACTIONTYPE_EndUser.equals(getlbr_TransactionType())
				|| LBR_TRANSACTIONTYPE_EndUserDoubleBase.equals(getlbr_TransactionType())) && isSOTrx())
			setAproxTaxIBPT();
		
		//	O peso normalemnte vem da expedição, porém alguns casos a NF é feita com base no pedido
		//		ou na fatura, portanto é necessário recalcular o peso
		if (Env.ZERO.compareTo (getlbr_GrossWeight()) == 0)
			calculateWeight();
		
		return true;
	}	//	generateNF
	
	@Deprecated
	public void GenerateXMLAutomatic()
	{
		// Gerar XML automaticamente
		try
		{
			if (getC_DocType_ID() > 0)
			{
				MDocType dt = new MDocType(getCtx(), getC_DocTypeTarget_ID(), get_TrxName());
				String model = dt.get_ValueAsString("lbr_NFModel");
				//
				if (model == null)
					log.log(Level.INFO, "Tipo de NF não definido.");
				else if (model.startsWith("RPS"))
				{
					setlbr_ServiceTaxes();
					save(get_TrxName());
				}
				//
				else if (model.equals("55") && 
						MSysConfig.getBooleanValue(SysConfig.LBR_AUTO_GENERATE_XML, false, getAD_Client_ID()))
					NFeXMLGenerator.generate (getCtx(), getLBR_NotaFiscal_ID(), get_TrxName());
			}
		} 
		catch(Exception ex) 
		{
			log.log(Level.WARNING,"Falha ao gerar automaticamente o XML da Nota Fiscal " + getDocumentNo());
		}
	}	//	GenerateXMLAutomatic
	
	/**
	 * Colocar no campo de descrição os valor aproximados 
	 * de impostos de acordo com o manual do IBPT
	 * 
	 * Obs.: Ticket JIRA - LBR-81
	 */
	public void setAproxTaxIBPT()
	{
		List<String> sources = new ArrayList<String>();
		List<String> keys = new ArrayList<String>();
		
		//	Origem e Versão das informações
		String source = "";
		String key = "";
		
		BigDecimal taxAmtFed 	= Env.ZERO;
		BigDecimal taxAmtReg = Env.ZERO;
		BigDecimal taxAmtCity 	= Env.ZERO;
		BigDecimal taxAmtGrandTotal 	= Env.ZERO;
		
		MLBRNFConfig nfConfig = MLBRNFConfig.get(getAD_Org_ID());
		
		if (nfConfig == null)
			return;
	
		if (MLBRNFConfig.LBR_IBPTCONFIGURATION_RealTaxValue.equals(nfConfig.getLBR_IBPTConfiguration()))
		{
			source = "-";
			key = "-";
			
			sources.add(source);

			if (key != null && !keys.contains(key.trim()))
				keys.add(key.trim());
			
			for (MLBRNotaFiscalLine line : getLines())
			{
				// Tributos Federal, Regional e Municipal
				BigDecimal amtFed = Env.ZERO;
				BigDecimal amtReg = Env.ZERO;
				BigDecimal amtCity = Env.ZERO;
				
				//	Total Tributos Federal, Regional e Municipal
				BigDecimal taxAmtTotal 	= Env.ZERO;
				
				X_LBR_NFLineTax[] taxes = line.getTaxes();

				for (X_LBR_NFLineTax nflt : taxes)
				{					
					//	Impostos Federeais: II, IPI, IR, PIS, COFINS, CSLL, INSS
					
					if ("II".equals(nflt.getLBR_TaxGroup().getName()) ||
							"IPI".equals(nflt.getLBR_TaxGroup().getName()) ||
							"IR".equals(nflt.getLBR_TaxGroup().getName()) ||
							"PIS".equals(nflt.getLBR_TaxGroup().getName()) ||
							"COFINS".equals(nflt.getLBR_TaxGroup().getName()) ||
							"CSLL".equals(nflt.getLBR_TaxGroup().getName()) ||
							"INSS".equals(nflt.getLBR_TaxGroup().getName()))
						amtFed = amtFed.add(nflt.getlbr_TaxAmt());
					
					//	Impostos Regionais: ICMS
					
					if ("ICMS".equals(nflt.getLBR_TaxGroup().getName()))
						amtReg = amtReg.add(nflt.getlbr_TaxAmt());
					
					//	Impostos Cidade: ISS
					if ("ISS".equals(nflt.getLBR_TaxGroup().getName()))
						amtCity = amtCity.add(nflt.getlbr_TaxAmt());							
				}
				
				// total do imposto
				taxAmtFed 	= taxAmtFed.add (amtFed);
				taxAmtReg 	= taxAmtReg.add (amtReg);
				taxAmtCity 	= taxAmtCity.add (amtCity);
				
				//	Soma do Total dos Impostos
				taxAmtTotal = taxAmtTotal.add(amtFed).add(amtReg).add(amtCity);
				
				//	Adiciona Valor Total de Tributos na Linha
				line.setlbr_vTotTrib(taxAmtTotal.setScale(2, RoundingMode.HALF_UP));
				line.save();
				
				//	Total de Tributos de Todas as Linhas
				taxAmtGrandTotal = taxAmtGrandTotal.add(taxAmtTotal.setScale(2, RoundingMode.HALF_UP));
			}
		}
		else
		{
			// para cada linha, somar calcular o valor aproximado dos impostos
			for (MLBRNotaFiscalLine line : getLines())
			{
				MProduct product = (MProduct) line.getM_Product();
				
				// Verificar se é um Serviço
				Boolean isservice = MProduct.PRODUCTTYPE_Service.equals(product.getProductType());
				
				// somente linhas que tenham NCM
				if (line.getLBR_NCM_ID() <= 0 || !line.getLBR_CFOP().isLBR_IsShowIBPT()
						&& !isservice)
					continue;
				
				// origem pra definir se é importado ou nacional
				String productSource = line.getlbr_ProductSource() != null ? 
						line.getlbr_ProductSource() : MLBRNotaFiscalLine.LBR_PRODUCTSOURCE_0_Domestic;
	
				//	IBPT		
				MLBRIBPTax ibpt = null;
				
				// NF de Produto (NCM)
				if (!isservice)
				{
					ibpt = MLBRIBPTax.getByNCM (getCtx(), getOrg_Location().getC_Region_ID(), 
							line.getLBR_NCM_ID(), getDateDoc(), line.get_TrxName());
					
					if (ibpt == null)
					{
						log.warning("No IBPT Tax found for NCM: " + line.getlbr_NCMName());
						continue;
					}
				}
				// NF de Serviço (NBS)
				else
				{
					// somente Serviços que tenham NBS
					if (product.get_ValueAsInt("LBR_NBS_ID") <= 0)
						continue;
					
					ibpt = MLBRIBPTax.getByNBS (getCtx(), getOrg_Location().getC_Region_ID(), 
							product.get_ValueAsInt("LBR_NBS_ID"), getDateDoc(), line.get_TrxName());
					
					if (ibpt == null)
					{
						log.warning("No IBPT Tax found for NBS: " + product.get_ValueAsInt("LBR_NBS_ID"));
						continue;
					}
				}				
	
				//	Origem e Versão das informações
				source = ibpt.getLBR_Source();
				key = ibpt.getValue();
				
				if (source != null && !sources.contains(source.trim()))
					sources.add(source.trim());
	
				if (key != null && !keys.contains(key.trim()))
					keys.add(key.trim());
				
				//		Importado?
				//	1 - Importado
				//	2 - Importado, adquirido no mercado nacional
				//	6 - Importado, sem similar nacional
				//	7 - Importado, sem similar nacional, adquirido no mercado nacional
				boolean imported = "1267".indexOf(productSource) != -1;
	
				// % rate
				BigDecimal taxRate 		= ibpt.getlbr_TaxRate(imported);
				BigDecimal taxRateReg 	= ibpt.getLBR_TaxRateRegion();
				BigDecimal taxRateCity 	= ibpt.getLBR_TaxRateCity();
				
				// Tributos Federal, Regional e Municipal
				BigDecimal amtFed = Env.ZERO;
				BigDecimal amtReg = Env.ZERO;
				BigDecimal amtCity = Env.ZERO;
				
				//	Total Tributos Federal, Regional e Municipal
				BigDecimal taxAmtTotal 	= Env.ZERO;
	
				//	check for inconsistenses
				if (taxRate == null || taxRate.signum() != 1)
					taxRate 	= Env.ZERO;
				
				if (taxRateReg == null || taxRateReg.signum() != 1)
					taxRateReg 	= Env.ZERO;
				
				if (taxRateCity == null || taxRateCity.signum() != 1)
					taxRateCity = Env.ZERO;
				
				//	Impostos
				amtFed = line.getLineTotalAmt().multiply (taxRate.divide(Env.ONEHUNDRED, 17, RoundingMode.HALF_UP));
				amtReg = line.getLineTotalAmt().multiply (taxRateReg.divide(Env.ONEHUNDRED, 17, RoundingMode.HALF_UP));
				amtCity = line.getLineTotalAmt().multiply (taxRateCity.divide(Env.ONEHUNDRED, 17, RoundingMode.HALF_UP));
	
				// total do imposto
				taxAmtFed 	= taxAmtFed.add (amtFed);
				taxAmtReg 	= taxAmtReg.add (amtReg);
				taxAmtCity 	= taxAmtCity.add (amtCity);
				
				//	Soma do Total dos Impostos
				taxAmtTotal = taxAmtTotal.add(amtFed).add(amtReg).add(amtCity);
				
				//	Adiciona Valor Total de Tributos na Linha
				line.setlbr_vTotTrib(taxAmtTotal.setScale(2, RoundingMode.HALF_UP));
				line.save();
				
				//	Total de Tributos de Todas as Linhas
				taxAmtGrandTotal = taxAmtGrandTotal.add(taxAmtTotal.setScale(2, RoundingMode.HALF_UP));
			}
		}
		
		//	Valor Total de Tributos da NF
		setlbr_vTotTrib(taxAmtGrandTotal.setScale(2, RoundingMode.HALF_UP));
		
		
		// se teve total de impostos, definir no fim da descrição
		if (taxAmtFed.signum() == 1 || taxAmtReg.signum() == 1)
		{
			// aliquota geral = valor do imposto dividido pelo valor total da NF - fonte: Manual IBPT
			BigDecimal taxRateFedTotal = taxAmtFed.divide(getGrandTotal(), 17, RoundingMode.HALF_UP);
			BigDecimal taxRateRegTotal = taxAmtReg.divide(getGrandTotal(), 17, RoundingMode.HALF_UP);
			
			//	Check inconsistences
			if (sources.size() == 0)
				sources.add("IBPT");
			if (keys.size() == 0)
				keys.add("0");
			
			//	Prepare output message
			String message = Msg.getMsg (Env.getAD_Language(getCtx()), "LBR_NFIBPT");
			
			if (message == null)
				message = "Trib Aprox R$ {0,number,#,##0.00} ({1,number,#,##0.00}%) Federal e R$ {2,number,#,##0.00} ({3,number,#,##0.00}%) Estadual, Fonte(s): {4} {5}";
			
			MessageFormat mf = null;
			try
			{
				mf = new MessageFormat (message);
			}
			catch (Exception e)
			{
				log.log (Level.SEVERE, "Error parsing IBPT message. " + e.getMessage());
				return;
			}
			
			//	Argumentos
			Object[] arguments = new Object[6];
			
			//	Amount Federal
			arguments[0] = taxAmtFed.doubleValue();
			
			//	% Federal (Optional)
			arguments[1] = taxRateFedTotal.multiply(Env.ONEHUNDRED).setScale(2, RoundingMode.HALF_UP);
			
			//	Amount Region
			arguments[2] = taxAmtReg.doubleValue();
			
			//	% Region (Optional)
			arguments[3] = taxRateRegTotal.multiply(Env.ONEHUNDRED).setScale(2, RoundingMode.HALF_UP);
			
			//	Source
			arguments[4] = TextUtil.join (",", sources);
			
			//	Key
			arguments[5] = TextUtil.join (",", keys);

			//	preffix
			String description = getDescription();
			if (description != null && !description.trim().isEmpty() && !description.endsWith("\n"))
				description += ". ";
			else
				description = "";
			
			//	monta a string
			description += mf.format (arguments);

			// definir na NF
			setDescription(description); 
		}
	}	//	setAproxTaxIBPT
	
	/**
	 * 		Bill Note
	 */
	public void setBillNote (MInvoice invoice)
	{
		if (invoice == null)
			return;
		//
		MLBROpenItem[] ois = MLBROpenItem.getOpenItem(invoice.getC_Invoice_ID(), invoice.get_TrxName());
		String billNote= "";
		
		if (ois == null || ois.length <= 0)
			;
		else if (ois.length == 1)
			billNote += "Vencimento em ";
		else if (ois.length > 1)
			billNote += "Vencimentos: ";
		//
		for (MLBROpenItem oi : ois)
		{
			billNote += TextUtil.timeToString(oi.getDueDate(), "dd/MM/yyyy");
			
			//	Melhor legibilidade
			if (ois.length == 1)
				billNote += " no valor de R$ ";
			else
				billNote += " R$ ";
			//
			billNote += oi.getGrandTotal().setScale(2, RoundingMode.HALF_UP).toString().replace('.', ',');
			
			billNote += " | ";
		}
		if (billNote.endsWith(", ") && billNote.length() > 3)
			billNote = billNote.substring(0, billNote.length() - 2);
		//
		setlbr_BillNote(billNote);
	}	//	setBillNote
	
	/**
	 * 		Set Taxes
	 */
	public void setTaxes (MInvoice invoice)
	{
		if (invoice == null)
			return;
		
		for (MInvoiceTax it : invoice.getTaxes(true))
		{
			I_W_C_Tax taxAD = POWrapper.create(new MTax (getCtx(), it.getC_Tax_ID(), get_TrxName()), I_W_C_Tax.class);
			//
			if (taxAD.getLBR_TaxGroup_ID() < 1)
				continue;
			
			MLBRNFTax nfTax = new MLBRNFTax (this);
			nfTax.setTaxes (it);
			nfTax.setLBR_TaxGroup_ID(taxAD.getLBR_TaxGroup_ID());
			nfTax.save();
		}
	}	//	setTaxes
	
	/**
	 * 		Set Taxes
	 */
	public void setTaxes (MOrder order)
	{
		if (order == null)
			return;
		
		for (MOrderTax ot : order.getTaxes(true))
		{
			I_W_C_Tax taxAD = POWrapper.create(new MTax (getCtx(), ot.getC_Tax_ID(), get_TrxName()), I_W_C_Tax.class);
			//
			if (taxAD.getLBR_TaxGroup_ID() < 1)
				continue;
			
			MLBRNFTax nfTax = new MLBRNFTax (this);
			nfTax.setTaxes (ot);
			nfTax.setLBR_TaxGroup_ID(taxAD.getLBR_TaxGroup_ID());
			nfTax.save();
		}
	}	//	setTaxes
	
	/**
	 * 	Ajusta o Tipo de Documento correto para a NF
	 * 		de acordo com a Organização ou pela Fatura
	 */
	public void setC_DocTypeTarget_ID ()
	{
		
		I_W_C_Invoice invoice = POWrapper.create(new MInvoice(getCtx(), getC_Invoice_ID(), get_TrxName()), I_W_C_Invoice.class);
		I_W_C_DocType docType = POWrapper.create(new MDocType(getCtx(), getC_Invoice().getC_DocTypeTarget_ID(), get_TrxName()), I_W_C_DocType.class);
		
		//	Procura o Tipo de Documento pela Fatura
		if (getC_Invoice_ID() > 0)
		{			
			if (docType.getLBR_DocTypeNF_ID() > 0 &&
					(docType.getAD_Org_ID() == 0 || docType.getAD_Org_ID() == getAD_Org_ID()))
			{
				setC_DocTypeTarget_ID(docType.getLBR_DocTypeNF_ID());
				setC_DocType_ID(getC_DocTypeTarget_ID());
			}
			
			//	Se é uma NF de Entrada
			if (!islbr_IsOwnDocument())
			{
				if (invoice.getlbr_NFEntrada() != null && invoice.getlbr_NFEntrada().trim().length() > 0)
						setDocumentNo(invoice.getlbr_NFEntrada());

				else if (getDocumentNo() == null || getDocumentNo().trim().length() == 0)
				{
					log.warning ("Número da NF de Entrada Inválido");
					return;
				}
				//
				setIsPrinted(true);
			}
		}

		//	Procura o Tipo de Documento por pesquisa
		if (getC_DocType_ID() < 1)
		{
			String sql = "SELECT C_DocType_ID FROM C_DocType " +
				      	  "WHERE DocBaseType='NFB' " +
				      	    "AND AD_Client_ID=? AND AD_Org_ID IN (0,?) " +
				      	    "AND IsSOTrx=? ";
			
			//	Se o Modelo da NF estiver preenchido na Fatura
			if (!"".equals(docType.getlbr_NFModel()) && docType.getlbr_NFModel() != null)
				sql = sql + "AND lbr_NFModel = '" + docType.getlbr_NFModel() + "' ";
			
			//	Ordenar por Organização e Tipo de Documento
			sql = sql + "ORDER BY AD_Org_ID DESC, C_DocType_ID";
			
			//
			setC_DocTypeTarget_ID (DB.getSQLValue (get_TrxName(), sql,
					new Object[]{getAD_Client_ID(), getAD_Org_ID(), isSOTrx()}));
			setC_DocType_ID(getC_DocTypeTarget_ID());
		}
	}	//	setC_DocTypeTarget_ID

	/**
	 * 		Invoice Info
	 * 	@param wOrgInfo
	 */
	public void setInvoice (I_W_C_Invoice wInvoice)
	{
		setC_Invoice_ID(wInvoice.getC_Invoice_ID());
		setAD_Org_ID(wInvoice.getAD_Org_ID());
		setC_Order_ID(wInvoice.getC_Order_ID());
		setM_RMA_ID(wInvoice.getM_RMA_ID());
		//
		setlbr_TransactionType (wInvoice.getlbr_TransactionType());
		setLBR_IndPres(wInvoice.getLBR_IndPres());
		setC_PaymentTerm_ID(wInvoice.getC_PaymentTerm_ID());
		setLBR_FreightCostRule(wInvoice.getLBR_FreightCostRule());
		//		Regra de Pagamento
		setlbr_PaymentRule(wInvoice.getlbr_PaymentRule());
		
		//	Total da Fatura
		if (wInvoice.getC_Currency_ID() != CURRENCY_BRL)
		{
			BigDecimal grandTotal = MConversionRate.convert(Env.getCtx(), wInvoice.getGrandTotal(), 
					wInvoice.getC_Currency_ID(), CURRENCY_BRL, getAD_Client_ID(), getAD_Org_ID());
			setGrandTotal(grandTotal);
		}
		else
			setGrandTotal(wInvoice.getGrandTotal());
		
		//	Valores Totais
		setLBR_OtherChargesAmt(VLBROrder.getChargeAmt(POWrapper.getPO(wInvoice), VLBROrder.OTHERCHARGES));
		setlbr_InsuranceAmt(VLBROrder.getChargeAmt(POWrapper.getPO(wInvoice), VLBROrder.INSURANCE));
		setFreightAmt(VLBROrder.getChargeAmt(POWrapper.getPO(wInvoice), VLBROrder.FREIGHT));
		setlbr_TotalSISCOMEX(VLBROrder.getChargeAmt(POWrapper.getPO(wInvoice), VLBROrder.SISCOMEX));
		
		//	Número da NF-Fornecedor
		if (!islbr_IsOwnDocument() && getC_Invoice_ID() > 0)
		{
			setDocumentNo(wInvoice.getlbr_NFEntrada());
		}
		
		//	Dados do Parceiro
		setBPartner(new MBPartnerLocation (getCtx(), wInvoice.getC_BPartner_Location_ID(), get_TrxName()));
	}	//	setInvoice
	
	/**
	 * 		Order Info
	 * 	@param wOrgInfo
	 */
	public void setOrder (I_W_C_Order wOrder)
	{
		setAD_Org_ID(wOrder.getAD_Org_ID());
		setC_Order_ID(wOrder.getC_Order_ID());
		//
		setlbr_TransactionType (wOrder.getlbr_TransactionType());
		setLBR_IndPres(wOrder.getLBR_IndPres());
		setC_PaymentTerm_ID(wOrder.getC_PaymentTerm_ID());
		setLBR_FreightCostRule(wOrder.getLBR_FreightCostRule());
		//		Regra de Pagamento
		setlbr_PaymentRule(wOrder.getlbr_PaymentRule());
		
		//	Total da Fatura
		if (wOrder.getC_Currency_ID() != CURRENCY_BRL)
		{
			BigDecimal grandTotal = MConversionRate.convert(Env.getCtx(), wOrder.getGrandTotal(), 
					wOrder.getC_Currency_ID(), CURRENCY_BRL, getAD_Client_ID(), getAD_Org_ID());
			setGrandTotal(grandTotal);
		}
		else
			setGrandTotal(wOrder.getGrandTotal());
		
		//	Valores Totais
		setLBR_OtherChargesAmt(VLBROrder.getChargeAmt(POWrapper.getPO(wOrder), VLBROrder.OTHERCHARGES));
		setlbr_InsuranceAmt(VLBROrder.getChargeAmt(POWrapper.getPO(wOrder), VLBROrder.INSURANCE));
		setFreightAmt(VLBROrder.getChargeAmt(POWrapper.getPO(wOrder), VLBROrder.FREIGHT));
		setlbr_TotalSISCOMEX(VLBROrder.getChargeAmt(POWrapper.getPO(wOrder), VLBROrder.SISCOMEX));
		
		//	Dados do Parceiro
		setBPartner(new MBPartnerLocation (getCtx(), wOrder.getC_BPartner_Location_ID(), get_TrxName()));
	}	//	Invoice
	
	/**
	 * 		Shipment Info
	 * 	@param wOrgInfo
	 */
	public void setInOut (I_W_M_InOut wInOut)
	{
		setAD_Org_ID(wInOut.getAD_Org_ID());
		setC_Order_ID(wInOut.getC_Order_ID());
		setM_InOut_ID(wInOut.getM_InOut_ID());
		
		MOrder order = new MOrder(Env.getCtx(), wInOut.getC_Order_ID(), get_TrxName());
		I_W_C_Order wOrder = POWrapper.create(order, I_W_C_Order.class);
		//
		setlbr_TransactionType (wOrder.getlbr_TransactionType());
		setLBR_IndPres(wOrder.getLBR_IndPres());
		setC_PaymentTerm_ID(wOrder.getC_PaymentTerm_ID());
		
		//	Total do Pedido
		if (wOrder.getC_Currency_ID() != CURRENCY_BRL)
		{
			BigDecimal grandTotal = MConversionRate.convert(Env.getCtx(), wOrder.getGrandTotal(), 
					wOrder.getC_Currency_ID(), CURRENCY_BRL, getAD_Client_ID(), getAD_Org_ID());
			setGrandTotal(grandTotal);
		}
		else
			setGrandTotal(wOrder.getGrandTotal());
		
		//	Dados do Parceiro
		setBPartner(new MBPartnerLocation (getCtx(), wInOut.getC_BPartner_Location_ID(), get_TrxName()));
	}	//	setInOut
	
	/**
	 * Nota Fiscal PaySchedule from Invoice
	 * @param wInvoice
	 */
	public void setPaySchedule (I_W_C_Invoice wInvoice)
	{
		MInvoicePaySchedule[] ipss = MInvoicePaySchedule.getInvoicePaySchedule(getCtx(), wInvoice.getC_Invoice_ID(), 0, get_TrxName());
		for (MInvoicePaySchedule ips : ipss)
		{
			MLBRNFPaySchedule nfps = new MLBRNFPaySchedule(getCtx(), 0, get_TrxName());
			PO.copyValues(nfps,ips);
			nfps.setLBR_NotaFiscal_ID(getLBR_NotaFiscal_ID());
			nfps.setAD_Org_ID(ips.getAD_Org_ID());
			nfps.setProcessing(ips.isProcessing());
			nfps.setIsActive(ips.isActive());
			nfps.setDueAmt(ips.getDueAmt());
			nfps.setDiscountAmt(ips.getDiscountAmt());
			nfps.setDueDate(ips.getDueDate());
			nfps.setDiscountDate(ips.getDiscountDate());
			nfps.setC_PaySchedule_ID(ips.getC_PaySchedule_ID());
			nfps.setIsValid(ips.isValid());
			nfps.save();
		}
	}
	
	/**
	 * Nota Fiscal PaySchedule from 
	 * @param wOrder
	 */
	public void setPaySchedule (I_W_C_Order wOrder)
	{
		MOrderPaySchedule[] opss = MOrderPaySchedule.getOrderPaySchedule(getCtx(), wOrder.getC_Order_ID(), 0, get_TrxName());
		for (MOrderPaySchedule ops : opss)
		{
			MLBRNFPaySchedule nfps = new MLBRNFPaySchedule(getCtx(), 0, get_TrxName());
			nfps.setLBR_NotaFiscal_ID(getLBR_NotaFiscal_ID());
			nfps.setAD_Org_ID(ops.getAD_Org_ID());
			nfps.setProcessing(ops.isProcessing());
			nfps.setIsActive(ops.isActive());
			nfps.setDueAmt(ops.getDueAmt());
			nfps.setDiscountAmt(ops.getDiscountAmt());
			nfps.setDueDate(ops.getDueDate());
			nfps.setDiscountDate(ops.getDiscountDate());
			nfps.setC_PaySchedule_ID(ops.getC_PaySchedule_ID());
			nfps.setIsValid(ops.isValid());
			nfps.save();
		}
	}
	
	/**
	 * 		Organization Info
	 * 	@param wOrgInfo
	 */
	public void setOrgInfo (I_W_AD_OrgInfo wOrgInfo)
	{
		MLocation orgLoc = new MLocation(getCtx(), wOrgInfo.getC_Location_ID(), get_TrxName());
		MCountry orgCountry = new MCountry(getCtx(),orgLoc.getC_Country_ID(),get_TrxName());

		//	Dados da Organização
		setAD_Org_ID(wOrgInfo.getAD_Org_ID());
		setlbr_OrgName(wOrgInfo.getlbr_LegalEntity());
		setlbr_Fantasia(wOrgInfo.getlbr_Fantasia());
		setlbr_OrgCCM(wOrgInfo.getlbr_CCM());
		setlbr_CNPJ(wOrgInfo.getlbr_CNPJ());
		setlbr_IE(wOrgInfo.getlbr_IE());
		setlbr_OrgPhone(wOrgInfo.getPhone());
		setlbr_CNAE(wOrgInfo.getlbr_CNAE());
		setLBR_TaxRegime(wOrgInfo.getLBR_TaxRegime());
		
		//	Endereço
		setOrg_Location_ID(orgLoc.getC_Location_ID());
		setlbr_OrgAddress1(orgLoc.getAddress1());
		setlbr_OrgAddress2(orgLoc.getAddress2());
		setlbr_OrgAddress3(orgLoc.getAddress3());
		setlbr_OrgAddress4(orgLoc.getAddress4());
		setlbr_OrgCity(orgLoc.getCity());
		setlbr_OrgPostal(orgLoc.getPostal());
		setlbr_OrgCountry(orgCountry.getCountryCode());
		setlbr_OrgRegion(orgLoc.getRegionName(true));
	}	//	setOrgInfo
	
	/**
	 * 		Dados do Parceiro de Negócios / Destinatário
	 * 	
	 * 	@param bpartner
	 * 	@param bpLocation
	 */
	public void setBPartner(MBPartnerLocation bpLocation)
	{
		if (bpLocation == null)
			return;

		I_W_C_BPartner bp = POWrapper.create(new MBPartner (bpLocation.getCtx(), bpLocation.getC_BPartner_ID(), bpLocation.get_TrxName()), I_W_C_BPartner.class);
		
		//	Check POS
		int POS_BPartner_ID = Env.getContextAsInt(p_ctx, "#POS_BPartner_ID");
		if (POS_BPartner_ID == bp.getC_BPartner_ID())
			return;
		
		setC_BPartner_ID(bpLocation.getC_BPartner_ID());
		setC_BPartner_Location_ID(bpLocation.getC_BPartner_Location_ID());
		
		//	Dados Principais
		setBPName(bpLocation.getC_BPartner().getName());   		//	Nome
		setlbr_BPPhone(bpLocation.getPhone());   				//	Telefone
		setlbr_BPCNPJ(BPartnerUtil.getCNPJ_CPF(bpLocation));	//	CNPJ
		setlbr_BPIE(BPartnerUtil.getIE(bpLocation));			//	IE
		String indIE = BPartnerUtil.getIndIE(bpLocation);
		if (indIE != null)
			setLBR_IndIEDest(indIE);							//	Ind IE (ICMS, Isento, Não Contribuinte)
		setlbr_BPSuframa(BPartnerUtil.getSUFRAMA(bpLocation)); 	//	Suframa
		String BPTypeBR = bp.getlbr_BPTypeBR();
		if (BPTypeBR != null && !BPTypeBR.isEmpty())
			setlbr_BPTypeBR(BPTypeBR);
		
		if (bp.getTaxID() != null && !bp.getTaxID().isEmpty())
			setTaxID(bp.getTaxID());
		
		MLocation location = new MLocation(getCtx(),bpLocation.getC_Location_ID(),get_TrxName());
		MCountry country = new MCountry(getCtx(),location.getC_Country_ID(),get_TrxName());
		I_W_C_Country wcountry = POWrapper.create(country, I_W_C_Country.class);

		//	Endereço do Destinatário
		setlbr_BPAddress1(location.getAddress1());	//	Rua
		setlbr_BPAddress2(location.getAddress2());	//	Número
		setlbr_BPAddress3(location.getAddress3());	//	Bairro
		setlbr_BPAddress4(location.getAddress4());	//	Complemento
		setlbr_BPCity(location.getCity());   		//	Cidade
		setlbr_BPPostal(location.getPostal());   	//	CEP
		setlbr_BPCountry(country.getCountryCode());	//	País
		setlbr_CountryCode(wcountry.getlbr_CountryCode());

		if (country.get_ID() != BRAZIL)
			setlbr_BPRegion("EX");
		else
		{
			MRegion region = new MRegion(getCtx(), location.getC_Region_ID(), get_TrxName());
			setlbr_BPRegion(region.getName());		//	Estado
		}
	}	//	setBPartner
	
	/**
	 * 		Ajusta os valores referentes a Fatura
	 * 
	 *	@param bpLocation
	 */
	public void setInvoiceBPartner (MBPartnerLocation bpLocation)
	{
		if (bpLocation == null)
			return;

		setBill_Location_ID (bpLocation.getC_BPartner_Location_ID());

		MLocation         location   = new MLocation (getCtx(), bpLocation.getC_Location_ID(), get_TrxName());
		MCountry country = new MCountry(getCtx(),location.getC_Country_ID(),get_TrxName());

		setlbr_BPInvoiceCNPJ(BPartnerUtil.getCNPJ_CPF (bpLocation));	//	CNPJ
		setlbr_BPInvoiceIE(BPartnerUtil.getIE (bpLocation));   			//	IE
		setTaxID(bpLocation.getC_BPartner().getTaxID());				//	Tax ID - Estrangeiro
		//
		setlbr_BPInvoiceAddress1(location.getAddress1());	//	Rua
		setlbr_BPInvoiceAddress2(location.getAddress2());	//	Número
		setlbr_BPInvoiceAddress3(location.getAddress3());	//	Bairro
		setlbr_BPInvoiceAddress4(location.getAddress4());	//	Complemento
		setlbr_BPInvoiceCity(location.getCity());			//	Cidade
		setlbr_BPInvoicePostal(location.getPostal());		//	CEP
		setlbr_BPInvoiceCountry(country.getCountryCode());	//	País

		//	Importação / Exportação
		if (country.get_ID() != BRAZIL)
			setlbr_BPInvoiceRegion("EX");
		else
		{
			MRegion region = new MRegion(getCtx(),location.getC_Region_ID(),get_TrxName());
			setlbr_BPInvoiceRegion(region.getName());   	//	Estado
		}
	}	//	setInvoiceBPartner
	
	/**
	 * 		Ajusta os valores referentes a Expedição
	 * 			selecionando a expedição automáticamente, pela fatura
	 * 	
	 * 	@param io Expedição ou Recebimento
	 * 	@param invoice Fatura
	 */
	public void setShipmentBPartner (MInvoice invoice)
	{
		// Todas a Expedições relacionadas a Fatura
		Integer M_InOut_ID [] = LBRUtils.getInOutsFromInvoice (invoice);
		
		//		
		if (M_InOut_ID.length > 0)
		{	
			for (int i = 0; i < M_InOut_ID.length; i++)
			{	
				setShipmentBPartner(new MInOut (Env.getCtx(), M_InOut_ID[i], get_TrxName()), invoice, null);
			}
		}	
		else
			setShipmentBPartner(null, invoice, null);
	}	//	setShipmentBPartner
	
	/**
	 * 		Ajusta os valores referentes a Expedição
	 * 	
	 * 	@param io Expedição ou Recebimento
	 * 	@param invoice Fatura
	 */
	public void setShipmentBPartner (MInOut io, MInvoice invoice, MOrder order)
	{
		MBPartnerLocation bpLocation = null;

		int M_Shipper_ID = 0;
		
		/**
		 * 	Pega os dados da Expedição / Recebimento
		 */
		if (io != null && io.getM_InOut_ID() != 0)
		{
			if (getM_InOut_ID() == 0)
			{
				bpLocation = new MBPartnerLocation (getCtx(), io.getC_BPartner_Location_ID(), get_TrxName());
	
				//	Número de volumes definido na expedição
				int noPackages = io.getNoPackages();
				if (noPackages <= 0)
					noPackages = 1;
				
				//	Dados exclusivos da Expedição/Recebimento
				setM_InOut_ID(io.getM_InOut_ID());
				setFreightCostRule (io.getFreightCostRule());
				setlbr_GrossWeight(io.getWeight());
				setlbr_NetWeight(io.getWeight());
				setNoPackages(noPackages);
				setDeliveryViaRule(io.getDeliveryViaRule());
				
				String licensePlate = io.get_ValueAsString("lbr_BPShipperLicensePlate");
				if (licensePlate != null && !licensePlate.trim().isEmpty())
					setlbr_BPShipperLicensePlate(licensePlate);
	
				M_Shipper_ID = io.getM_Shipper_ID();
				
				I_W_M_InOut wio = POWrapper.create(io, I_W_M_InOut.class);
				
				if (wio.getlbr_PackingType() != null && !wio.getlbr_PackingType().isEmpty())
					setlbr_PackingType (wio.getlbr_PackingType());
				else if (MSysConfig.getValue(SysConfig.LBR_NFESPECIE,  getAD_Client_ID()) != null )
					setlbr_PackingType(MSysConfig.getValue(SysConfig.LBR_NFESPECIE, getAD_Client_ID()));
				else
					setlbr_PackingType(MSysConfig.getValue("VOLUME"));
				
				int LBR_MDFeVehicle_ID = io.get_ValueAsInt("LBR_MDFeVehicle_ID");
				if (LBR_MDFeVehicle_ID > 0)
				{
					X_LBR_MDFeVehicle vehicle = new X_LBR_MDFeVehicle(getCtx(), LBR_MDFeVehicle_ID, get_TrxName());
					setLBR_RNTRC(vehicle.getLBR_RNTRC());
				}
			}
			else
			{
				//	Se já exitir uma expedição ligada a Nota e a expedição informada for diferente
				//	Somar Volume e Peso
				if (getM_InOut_ID() != io.getM_InOut_ID())
				{
					//	Número de volumes definido na expedição
					int noPackages = io.getNoPackages();
					if (noPackages <= 0)
						noPackages = 1;
					
					//	Volume
					if (getNoPackages() > 0)
						setNoPackages(getNoPackages() + noPackages);
					else
						setNoPackages(noPackages);
					
					//	Peso
					if (getlbr_GrossWeight().intValue() > 0)
						setlbr_GrossWeight(getlbr_GrossWeight().add(io.getWeight()));
					else
						setlbr_GrossWeight(io.getWeight());
					
					if (getlbr_NetWeight().intValue() > 0)
						setlbr_NetWeight(getlbr_NetWeight().add(io.getWeight()));
					else
						setlbr_NetWeight(io.getWeight());
				}
				
				//	Se já houver uma expedição ligada a fatura, sair sem prosseguir
				return;
				
			}
		}
		
		/**
		 * 	Caso não haja uma Expedição / Recebimento
		 * 		usa os dados da própria Fatura
		 */
		else if (invoice != null && invoice.getC_Invoice_ID() > 0)
		{
			bpLocation = new MBPartnerLocation(getCtx(), invoice.getC_BPartner_Location_ID(),get_TrxName());
			
			//	Dado obrigatório, não encontrado na Expedição/Recebimento
			if (invoice.getC_Order_ID() > 0)
			{
				//	Para casos de local de entrega diferente do local de fatura, priorizar o endereço do pedido
				bpLocation = new MBPartnerLocation(getCtx(), invoice.getC_Order().getC_BPartner_Location_ID(),get_TrxName());
				
				M_Shipper_ID = invoice.getC_Order().getM_Shipper_ID();
				setFreightCostRule(invoice.getC_Order().getFreightCostRule());

				//	Entrega somente na venda
				if (isSOTrx())
					setDeliveryViaRule(invoice.getC_Order().getDeliveryViaRule());
				else
					setDeliveryViaRule(null);
			}
		}
		
		/**
		 * 	Caso seja baseado em um pedido
		 */
		else if (order != null && order.getC_Order_ID() > 0)
		{
			//	Transportadora
			setDeliveryViaRule(order.getDeliveryViaRule());
			M_Shipper_ID = order.getM_Shipper_ID();
			
			//	Drop shipment
			if (order.isDropShip() && order.getDropShip_BPartner_ID() > 0)
				bpLocation = new MBPartnerLocation(getCtx(), order.getDropShip_Location_ID(), get_TrxName());
			
			//	NF Comum
			else
				bpLocation = new MBPartnerLocation(getCtx(), order.getC_BPartner_Location_ID(), get_TrxName());
			
			//	Dado obrigatório, não encontrado na Expedição/Recebimento
			setFreightCostRule(order.getFreightCostRule());
		}
		
		//	Nothing to do
		else 
			return;
		
		//	Transportadora
		if (MInOut.DELIVERYVIARULE_Shipper.equals(getDeliveryViaRule())
				&& M_Shipper_ID > 0)
			setShipper(new MShipper (Env.getCtx(), M_Shipper_ID, get_TrxName()));
		
		if (getDeliveryViaRule() != null && !MInOut.DELIVERYVIARULE_Pickup.equals(getDeliveryViaRule()))
		{
			MLocation location = new MLocation (getCtx(), bpLocation.getC_Location_ID(), get_TrxName());
			MCountry country = new MCountry (getCtx(), location.getC_Country_ID(), get_TrxName());

			//	Endereço de Entrega
			setlbr_BPDeliveryCNPJ(BPartnerUtil.getCNPJ_CPF (bpLocation));	//	CNPJ
			setlbr_BPDeliveryIE(BPartnerUtil.getIE (bpLocation));   		//	IE
			//
			setlbr_BPDeliveryAddress1(location.getAddress1());	//	Rua
			setlbr_BPDeliveryAddress2(location.getAddress2());	//	Número
			setlbr_BPDeliveryAddress3(location.getAddress3());	//	Bairro
			setlbr_BPDeliveryAddress4(location.getAddress4());	//	Complemento
			setlbr_BPDeliveryCity(location.getCity());			//	Cidade
			setlbr_BPDeliveryPostal(location.getPostal());		//	CEP
			setlbr_BPDeliveryCountry(country.getCountryCode());	//	País
			
			// NT 2018.005
			setLBR_BPDeliveryName(bpLocation.getC_BPartner().getName());
			setLBR_BPDeliveryPhone(bpLocation.getPhone());

			//	Importação / Exportação
			if (country.get_ID() != BRAZIL)
				setlbr_BPDeliveryRegion("EX");
			else
			{
				MRegion region = new MRegion (getCtx(), location.getC_Region_ID(), get_TrxName());
				setlbr_BPDeliveryRegion (region.getName());		//	Estado
			}
		}
	}	//	setShipmentBPartner
	
	/**
	 * 	Dados da Transportadora
	 * 	@param shipper
	 */
	public void setShipper (MShipper shipper)
	{
		if (shipper == null)
			return;

		setM_Shipper_ID(shipper.getM_Shipper_ID());
		setlbr_BPShipperName(shipper.getName());

		MBPartner transp = new MBPartner(getCtx(), shipper.getC_BPartner_ID(), get_TrxName());

		//	Localização Transportadora
		MBPartnerLocation transpLocation = null;
		
		//	Procura o endereço no cadastro da transportadora
		if (shipper.get_ColumnIndex(I_W_M_Shipper.COLUMNNAME_C_BPartner_Location_ID) > 0
				&& shipper.get_ValueAsInt(I_W_M_Shipper.COLUMNNAME_C_BPartner_Location_ID) > 0)
		{
			transpLocation = new MBPartnerLocation (shipper.getCtx(), shipper.get_ValueAsInt(I_W_M_Shipper.COLUMNNAME_C_BPartner_Location_ID), get_TrxName());
		}
		
		//	Caso não esteja cadastrado, faz a pesquisa e seleciona o primeiro endereço
		if (transpLocation == null)
		{
			MBPartnerLocation[] transpLocations = transp.getLocations (false);
			if (transpLocations.length > 0)
				transpLocation = transpLocations[0];
		}
		
		// Sem endereço
		if (transpLocation == null)
		{
			log.warning("Transportadora sem endereço cadastrado: " + shipper.getName());
			return;
		}
		
		MLocation location = new MLocation(getCtx(), transpLocation.getC_Location_ID(), get_TrxName());
		MCountry country = new MCountry(getCtx(),location.getC_Country_ID(),get_TrxName());

		setlbr_BPShipperCNPJ(BPartnerUtil.getCNPJ_CPF(transpLocation));	//	CNPJ
		setlbr_BPShipperIE(BPartnerUtil.getIE(transpLocation));   		//	IE
		
		//	Concatenar o Endereço em uma unica variável
		String address = (location.getAddress1() == null ? "" : location.getAddress1()) + 
						 (location.getAddress2() == null ? "" : ", "  + location.getAddress2()) + 
						 (location.getAddress3() == null ? "" : " - " + location.getAddress3()) + 
						 (location.getAddress4() == null ? "" : " - " + location.getAddress4());
		
		// Rua, Número, Bairro e Complemento e um único campo
		setlbr_BPShipperAddress(address);			
		setlbr_BPShipperCity(location.getCity());			//	Cidade
		setlbr_BPShipperPostal(location.getPostal());		//	CEP
		setlbr_BPShipperCountry(country.getCountryCode());	//	País

		if (country.get_ID() != BRAZIL)
			setlbr_BPShipperRegion("EX");
		else
		{
			MRegion region = new MRegion(getCtx(),location.getC_Region_ID(),get_TrxName());
			setlbr_BPShipperRegion(region.getName());		//	Estado
		}
	}	//	setShipper
	
	/**
	 * 	Código de Barras da NF Modelo 1 ou 1A
	 * 		impressa a Laser
	 * 	@deprecated Método para NF 1 e 1A, não é usado mais atualmente
	 */
	@Deprecated
	private void setBarCodeModel1A ()
	{
		StringBuilder barcode1 = new StringBuilder();
		barcode1.append("1");
		barcode1.append(TextUtil.lPad(getDocumentNo(), 6));
		barcode1.append(TextUtil.lPad(getlbr_CNPJ(), 14));
		barcode1.append(getlbr_OrgRegion());
		barcode1.append(TextUtil.timeToString(getDateDoc(), "yyyyMMdd"));
		barcode1.append("2");
		//
		StringBuilder barcode2 = new StringBuilder();
		barcode2.append("2");
		barcode2.append(TextUtil.lPad(getlbr_BPCNPJ(), 14));
		barcode2.append(getlbr_BPRegion());
		barcode2.append(TextUtil.lPad(getGrandTotal(), 10));
		barcode2.append(TextUtil.lPad(getICMSAmt(), 10));
		//
		setlbr_Barcode1(barcode1.toString());
		setlbr_Barcode2(barcode2.toString());
	}	//	setBarCodeModel1A
	
	/**
	 * 	Limpa os valores, pois em alguns casos ao recriar a NF
	 * 		o sistema usa valores históricos
	 */
	private void clear ()
	{
		//	Totais
		setGrandTotal(Env.ZERO);
		setTotalLines(Env.ZERO);
		setlbr_TotalCIF(Env.ZERO);
		setlbr_TotalSISCOMEX(Env.ZERO);
		setLBR_OtherChargesAmt(Env.ZERO);
		setlbr_InsuranceAmt(Env.ZERO);
		setlbr_NetWeight(Env.ZERO);
		setlbr_GrossWeight(Env.ZERO);
		setNoPackages(0);
		
		//	Transportadora
		setlbr_BPShipperName(null);
		setlbr_BPShipperAddress(null);
		setlbr_BPShipperAddress3(null);		
		setlbr_BPShipperPostal(null);
		setlbr_BPShipperCity(null);
		setlbr_BPShipperRegion(null);
		setlbr_BPShipperCNPJ(null);
		setlbr_BPShipperIE(null);
		setlbr_BPShipperLicensePlate(null);
		setlbr_BPShipperCountry(null);
		
		//	Local de Entrega
		setLBR_BPDeliveryName(null);
		setlbr_BPDeliveryAddress1(null);
		setlbr_BPDeliveryAddress2(null);
		setlbr_BPDeliveryAddress3(null);		
		setlbr_BPDeliveryAddress4(null);		
		setlbr_BPDeliveryPostal(null);
		setlbr_BPDeliveryCity(null);
		setlbr_BPDeliveryRegion(null);
		setlbr_BPDeliveryCNPJ(null);
		setlbr_BPDeliveryIE(null);
		setlbr_BPDeliveryCountry(null);
		setLBR_BPDeliveryPhone(null);

		//	Apaga as Linhas e Impostos
		for (MLBRNFTax nft : getTaxes())
		{
			nft.deleteEx(true);
		}
		for (MLBRNotaFiscalLine nfl : getLines())
		{
			nfl.deleteEx(true);
		}
		DB.executeUpdate ("DELETE LBR_NFDI WHERE LBR_NotaFiscal_ID=" + getLBR_NotaFiscal_ID(), get_TrxName());
		DB.executeUpdate ("DELETE LBR_NotaFiscalDocRef WHERE LBR_NotaFiscal_ID=" + getLBR_NotaFiscal_ID(), get_TrxName());
		DB.executeUpdate ("DELETE LBR_NFPaySchedule WHERE LBR_NotaFiscal_ID=" + getLBR_NotaFiscal_ID(), get_TrxName());
	}	//	clearAmounts
	
	/**
	 * 	Necessário para ajustar a precisão
	 * 		de casas decimais
	 */
	public void setGrandTotal (BigDecimal GrandTotal)
	{
		if (GrandTotal == null)
			GrandTotal = Env.ZERO;
		
		//	Manual de Integração 4.01 - página 152
		super.setGrandTotal(GrandTotal.setScale(2, RoundingMode.HALF_UP));
	}	//	setGrandTotal
	
	/**
	 * 	Necessário para ajustar a precisão
	 * 		de casas decimais
	 */
	public void setTotalLines (BigDecimal TotalLines)
	{
		if (TotalLines == null)
			TotalLines = Env.ZERO;
		
		//	Manual de Integração 4.01 - página 152
		super.setTotalLines(TotalLines.setScale(2, RoundingMode.HALF_UP));
	}	//	setTotalLines
	
	/**
	 * 	Ajusta a descrição baseada no Tipo de Documento
	 * 		e também nas mensagens legais
	 */
	public void setLBR_FiscalObs ()
	{
		StringBuffer description = new StringBuffer("");
		List<Integer> legalMsg = new ArrayList<Integer>();
		
		//	Adicionar DI na Descrição da NF
		for (X_LBR_NFDI di : getDIs())
		{
			if (description.length() > 0)
				description.append("\n");			
			description.append(parse("DI: " + di.getlbr_DI() + "".trim()));	
			description.append(parse(" - Data: " + TextUtil.timeToString(di.getDateTrx(), "dd/MM/yyyy") + "".trim()));	
			description.append(parse(" - Taxa Siscomex: " + getlbr_TotalSISCOMEX() + "".trim()));
			description.append(parse(" - PIS: " + TextUtil.bigdecimalToString (getPISAmt()) + "".trim()));
			description.append(parse(" - COFINS: " + TextUtil.bigdecimalToString (getCOFINSAmt()) + "".trim()));
			description.append(parse(" - II: " + TextUtil.bigdecimalToString (getIIAmt()) + "".trim()));	
		}
		
		//	Mensagens Legais Linha
		for (MLBRNotaFiscalLine nfl : getLines())
		{
			// Por Imposto
			for (MLBRNFLineTax nflt : nfl.getTaxes())
			{
				if (nflt.getLBR_LegalMessage_ID() <= 0 
						|| legalMsg.contains(nflt.getLBR_LegalMessage_ID()))
					continue;
				else
					legalMsg.add(nflt.getLBR_LegalMessage_ID());
				//
				if (description.length() > 0 && !description.toString().endsWith(" - "))
					description.append(" - ");
				//
				description.append(nflt.getLBR_LegalMessage().getTextMsg());
			}
			
		    // Por Linha de NF
			if (nfl.getLBR_LegalMessage_ID() <= 0 
					|| legalMsg.contains(nfl.getLBR_LegalMessage_ID()))
				continue;
			else
				legalMsg.add(nfl.getLBR_LegalMessage_ID());
			//
			if (description.length() > 0 && !description.toString().endsWith(" - "))
				description.append(" - ");
			//
			description.append(parse (nfl.getLBR_LegalMessage().getTextMsg(), nfl));
		}
		//
		setlbr_FiscalOBS(description.toString());
	}	//	setDocumentNote
	
	/**
	 * 	Ajusta as variáveis da mensagem legal
	 * 
	 * 	@param documentNote
	 */
	@Override
	public void setlbr_FiscalOBS(String lbr_FiscalOBS)
	{
		super.setlbr_FiscalOBS(parse(lbr_FiscalOBS));
	}
	
	/**
	 * 	Ajusta a descrição de acordo com o Tipo de Documento
	 */
	public void setDescription ()
	{
		StringBuffer description = new StringBuffer();
		
		//	Tipo de Documento
		if (getC_DocTypeTarget_ID() > 0 && getC_DocTypeTarget().getDocumentNote() != null)
			description.append(parse (getC_DocTypeTarget().getDocumentNote().trim()));
		
		if (getC_Order_ID()>0)
		{
			MOrder order = new MOrder(getCtx(),getC_Order_ID(),get_TrxName());
			if (order.get_Value("lbr_NFDescription")!=null)
			{
				if (description.length() > 0)
					description.append("\n");
				description.append(parse(order.get_Value("lbr_NFDescription").toString().trim()));
			}
		}
		else if (getM_RMA_ID() > 0)
		{
			// RMA
			MRMA rma = (MRMA) getM_RMA();
			
			// Nota Fiscal indicada na RMA
			MLBRNotaFiscal nfrma = new MLBRNotaFiscal (Env.getCtx(), rma.get_ValueAsInt("LBR_NotaFiscal_ID"), null);
			
			// Verifica se a NF Indicada no RMA é uma NF-e
			if (nfrma.getLBR_NotaFiscal_ID() > 0)
			{
				if (description.length() > 0)
					description.append("\n");
				description.append(parse("Devolução referente a NF " + nfrma.getDocumentNo() + " Emitida em " + TextUtil.timeToString(nfrma.getDateTrx(), "dd/MM/yyyy") + " no Valor de R$ " + TextUtil.toNumeric(nfrma.getGrandTotal()) + "".trim()));	
			}
		}
		else if (getM_Movement_ID() > 0)
		{
			MMovement mov = (MMovement) getM_Movement();
			
			if (mov.get_ValueAsInt("LBR_ProductionGroup_ID") > 0)
			{
				MLBRProductionGroup pg = new MLBRProductionGroup (Env.getCtx(), mov.get_ValueAsInt("LBR_ProductionGroup_ID"), get_TrxName());
				if (description.length() > 0)
					description.append("\n");
				description.append("Pedido de Industrialização: " + pg.getDocumentNo());
			}
		}
		
		if (getM_InOut_ID() > 0)
		{
			MInOut io = new MInOut (getCtx(), getM_InOut_ID(), get_TrxName());
			if (io.get_ValueAsInt("LBR_MDFeDriver_ID") > 0)
			{
				X_LBR_MDFeDriver driver = new X_LBR_MDFeDriver (getCtx(), io.get_ValueAsInt("LBR_MDFeDriver_ID"), null);
				description.append("\nMotorista: ").append(driver.getName());
				
				if (driver.getlbr_CPF() != null)
					description.append("/CPF: ").append(driver.getlbr_CPF());
			}
		}
		
		// Descrição NF Referênciada
		for (MLBRNotaFiscalDocRef nfref : MLBRNotaFiscalDocRef.get(getLBR_NotaFiscal_ID(), get_TrxName()))
		{
			if (description.length() > 0)
				description.append("\n");			
			description.append(parse("Chave de Acesso da NF-e Referenciada: " + nfref.getlbr_NFeID() + "".trim()));	
		}
		
		setDescription(parse (description.toString()).replace("\n\n\n", "\n\n"));
	}	//	setDescription
	
	/**************************************************************************
	 * 	Before Save
	 *	@param newRecord
	 *	@return true if it can be sabed
	 */
	protected boolean beforeSave (boolean newRecord)
	{
		if (getC_DocTypeTarget_ID () == 0
				|| !"NFB".equals (getC_DocTypeTarget().getDocBaseType()))
			throw new FillMandatoryException (COLUMNNAME_C_DocTypeTarget_ID);
		
		if (getC_DocType_ID() != getC_DocTypeTarget_ID())
			setC_DocType_ID(getC_DocTypeTarget_ID()); 	//	Define que o C_DocType_ID = C_DocTypeTarget_ID
		
		//	Tenta sempre preencher a Organização com base nos documentos vinculados
		if (getAD_Org_ID() < 1)
		{
			//	Tenta pela fatura
			if (getC_Invoice_ID() > 0)
				setAD_Org_ID (getC_Invoice().getAD_Org_ID());
			
			//	Pela remessa
			else if (getM_InOut_ID() > 0)
				setAD_Org_ID (getM_InOut().getAD_Org_ID());
			
			//	Pelo pedido
			else if (getC_Order_ID() > 0)
				setAD_Org_ID (getC_Order().getAD_Org_ID());
		}
		
		//	Sempre deixar a NF aberta para correção em caso de erro
		if (DOCSTATUS_Invalid.equals(getDocStatus()))
			setProcessed(false);
			
		//	Opcionalmente pode gerar o RPS apenas na hora da transmissão
		if (newRecord)
		{
			if (getLBR_IndIEDest() == null)
				setLBR_IndIEDest(LBR_INDIEDEST_9_NãoContribuinteDeICMS);
			
			Integer vC_DocTypeTarget_ID = getC_DocTypeTarget_ID();
			//
			if (vC_DocTypeTarget_ID != null
					&& vC_DocTypeTarget_ID.intValue() > 0)
			{
				MDocType dt = new MDocType (Env.getCtx(), vC_DocTypeTarget_ID, null);
				String nfModel = dt.get_ValueAsString("lbr_NFModel");
				//
				if (nfModel != null && nfModel.startsWith("RPS"))
				{
					if (!MSysConfig.getBooleanValue(SysConfig.LBR_REALTIME_RPS_NUMBER, true, getAD_Client_ID()))
						setDocumentNo(RPS_TEMP);
				}
				
				//	Série da NF-e
				if (getlbr_NFSerie() == null)
					setlbr_NFSerie(dt.get_ValueAsString("lbr_NFSerie"));
			}
			
			MLBRNFConfig config = MLBRNFConfig.get(getAD_Org_ID(), getNFModel());
			if (config != null)
			{
				//	Preenche o ambiente da NF caso esteja em branco
				if (getlbr_NFeEnv() == null)
					setlbr_NFeEnv (config.getlbr_NFeEnv());
				
				//	Formato da DANFE
				if (getlbr_DANFEFormat() == null)
					setlbr_DANFEFormat(config.getlbr_DANFEFormat());

				//	Definir Valor Padrão do campo Estornar Fatura da NF.
				setLBR_ReverseInvoice(config.isLBR_ReverseInvoice());
				
				//	Definir Valor Padrão do campo Estornar Remessa da NF.
				setLBR_ReverseInOut(config.isLBR_ReverseInOut());
				
				//	Verificar se existe alguma contingência agendada
				MLBRNFConfigSVC svc = MLBRNFConfigSVC.get (getAD_Org_ID(), new Timestamp(System.currentTimeMillis()));
				
				//	Contingência tem prioridade sobre a configuração normal
				if (svc != null)
				{
					setLBR_TPEmis(svc.getLBR_TPEmis());
					setlbr_DateScan(svc.getlbr_DateScan());
					setlbr_MotivoScan(svc.getlbr_MotivoScan());
				}
				
				//	configuração padrão
				else
				{
					//	Força o tipo de emissão para seguir a configuração 
					String tipoEmis = config.getLBR_TPEmis();
					setLBR_TPEmis(tipoEmis);
					
					if (!MLBRNFConfig.LBR_TPEMIS_EmissãoNormal.equals(tipoEmis))
					{
						setlbr_DateScan(config.getlbr_DateScan());
						setlbr_MotivoScan(config.getlbr_MotivoScan());
					}
				}
			}

			//	Set Org details
			I_W_AD_OrgInfo orgInfo = POWrapper.create (MOrgInfo.get (getCtx(), getAD_Org_ID(), null), I_W_AD_OrgInfo.class);
			setOrgInfo(orgInfo);
		}
		
		//	Configura o código de Barras
		if (newRecord 
				|| is_ValueChanged(COLUMNNAME_lbr_BPRegion)
				|| is_ValueChanged(COLUMNNAME_lbr_OrgRegion)
				|| is_ValueChanged(COLUMNNAME_lbr_BPCNPJ)
				|| is_ValueChanged(COLUMNNAME_lbr_CNPJ)
				|| is_ValueChanged(COLUMNNAME_GrandTotal))
			setBarCodeModel1A();
		
		//	Preenche o campo séria pela chave da NFe
		if (!islbr_IsOwnDocument() 
				&& getlbr_NFeID() != null 
				&& getlbr_NFeID().length() == 44
				&& getlbr_NFSerie() == null)
		{
			setlbr_NFSerie(getlbr_NFeID().substring(22, 25));
		}
		
		//	NFC-e details
		if (LBR_NFMODEL_NotaFiscalDeConsumidorEletrônica.equals(getlbr_NFModel()))
		{
			//	Mandatory End User
			setlbr_TransactionType(LBR_TRANSACTIONTYPE_EndUser);
			
			//	Force Presence
			if (!TextUtil.match (getLBR_IndPres(), LBR_INDPRES_OperaçãoPresencial, LBR_INDPRES_NFC_EEmOperaçãoComEntregaEmDomicílio))
				setLBR_IndPres (LBR_INDPRES_OperaçãoPresencial);
		}
		
		//	Region must be upper case
		if (getlbr_BPShipperRegion() != null && !getlbr_BPShipperRegion().isEmpty())
			setlbr_BPShipperRegion(getlbr_BPShipperRegion().toUpperCase());
		
		//		Mark as processing because the automatic fix will be triggered in afterSave method
		//	users can't make changes if the document is processing
		if (is_ValueChanged (I_LBR_NotaFiscal.COLUMNNAME_lbr_NFeStatus)
				&& TextUtil.match(getlbr_NFeStatus(), LBR_NFESTATUS_204_DuplicidadeDeNF_E, LBR_NFESTATUS_539_DuplicidadeDeNF_EComDiferençaNaChaveDeAcesso))
		{
			setProcessing (true);
		}
		
		// Mark as Cancelled when status is voided
		if (MLBRNotaFiscal.DOCSTATUS_Voided.equals(getDocStatus()) && !isCancelled())
			setIsCancelled(true);
				
		return true;
	}	//	beforeSave

	/**
	 * 	Called after Save for Post-Save Operation
	 * 	@param newRecord new record
	 *	@param success true if save operation was success
	 *	@return if save was a success
	 */
	protected boolean afterSave (boolean newRecord, boolean success)
	{
		if (success)
		{
			//	Valida automaticamente os casos de duplicidade de NF
			if (is_ValueChanged (I_LBR_NotaFiscal.COLUMNNAME_lbr_NFeStatus))
			{
				if (TextUtil.match(getlbr_NFeStatus(), LBR_NFESTATUS_204_DuplicidadeDeNF_E, LBR_NFESTATUS_539_DuplicidadeDeNF_EComDiferençaNaChaveDeAcesso))
				{
					//	Access inside thread
					final MLBRNotaFiscal nf = new MLBRNotaFiscal (getCtx(), getLBR_NotaFiscal_ID(), get_TrxName());
					
					new Thread ("Fix Duplicated Error") 
					{
						public void run ()
						{
							Properties ctx = nf.getCtx();
							
							//	Can't access process, do nothing
							if (!MRole.get (ctx, Env.getAD_Role_ID (ctx)).getProcessAccess (1120192))
								return;
							
							try
							{
								int counterLimit = 0;
								Thread.sleep (2*1000);	//	2 secs waiting time, then 5 secs
								
								//	Wait until the transaction is closed by other processes
								//	max of 60 interactions, resulting in a 5 minutes total
								while (counterLimit < 60)
								{
									Trx trx = Trx.get (nf.get_TrxName(), false);
									
									//	Transaction closed or inactive, abort
									if (trx == null || !trx.isActive ())
										counterLimit = 999;
									
									else
									{
										counterLimit++;
										Thread.sleep (5*1000);	//	5 secs waiting time
									}
								} 
								
								int AD_Process_ID = 1120192;
								MPInstance instance = new MPInstance(ctx, AD_Process_ID, nf.getLBR_NotaFiscal_ID());
								instance.save();
								
								ProcessInfo pi = new ProcessInfo ("", AD_Process_ID);
								pi.setAD_PInstance_ID (instance.getAD_PInstance_ID());
								pi.setAD_Client_ID(nf.getAD_Client_ID());
								pi.setRecord_ID(nf.getLBR_NotaFiscal_ID());
								
								String trxName = Trx.createTrxName ("FixDuplNFe");
								Trx trx = Trx.get (trxName, false);
								SvrProcess proc = new ConsultNFe();
					    			proc.startProcess (ctx, pi, trx);
								//
								if (trx.isActive())
								{
									trx.commit();
									trx.close();
								}
							}
							catch (Exception e)
							{
								e.printStackTrace();
							}
						}
					}.start();
				}
			}
			
			//	Continuar apenas se houver alteração no campo DocStatus
			if (!is_ValueChanged (I_LBR_NotaFiscal.COLUMNNAME_DocStatus))
				return success;
			
			//	Fatura da NF
			MInvoice invoice  = new MInvoice(Env.getCtx(), getC_Invoice_ID(), get_TrxName());
			
			//	Remessa / Recebimento da NF
			MInOut inout = new MInOut (Env.getCtx(), getM_InOut_ID(), get_TrxName());
			
			//	Ao Anular uma NF Estornar a Fatura e Remessa / Recebimento
			if (getDocStatus().equals(DocAction.ACTION_Void))
			{
				//	Se a Fatura for Válida, Estiver Completada e o Estorno Estiver Marcado
			   	if (invoice != null && invoice.getDocStatus().equals(DocAction.ACTION_Complete)
			   			&& isLBR_ReverseInvoice())
				{
			   		try
			   		{
				   		//	Estonar Fatura
						if (invoice.reverseCorrectIt())
						{
							invoice.setDocStatus(MInvoice.DOCSTATUS_Reversed);
							invoice.setDocAction(MInvoice.DOCACTION_None);
							invoice.save();
						}
			   		}
			   		catch (Exception e)
			   		{
			   			log.warning("Erro ao Estornar. Tentando Estornar Provisão");
			   			//	Estonar Fatura
						if (invoice.reverseAccrualIt())
						{
							invoice.setDocStatus(MInvoice.DOCSTATUS_Reversed);
							invoice.setDocAction(MInvoice.DOCACTION_None);
							invoice.save();
						}
			   		}
					
				}
			   	
			   	// Se a Remessa for Válida, Estiver Completada e o Estorno Estiver Marcado
			   	if (inout != null && inout.getDocStatus().equals(DocAction.ACTION_Complete)
			   			&& isLBR_ReverseInOut())
				{
			   		try
			   		{
				   		//	Estornar Remessa
						if (inout.reverseCorrectIt())
						{
							inout.setDocStatus(MInvoice.DOCSTATUS_Reversed);
							inout.setDocAction(MInvoice.DOCACTION_None);
							inout.save();
						}
			   		}
			   		catch (Exception e)
			   		{
			   			log.warning("Erro ao Estornar. Tentando Estornar Provisão");
			   			
			   			//	Estornar Remessa
						if (inout.reverseAccrualIt())
						{
							inout.setDocStatus(MInvoice.DOCSTATUS_Reversed);
							inout.setDocAction(MInvoice.DOCACTION_None);
							inout.save();
						}
			   		}
					
				}
			}
		}
		
		return success;
	}	//	afterSave
	
	/**
	 * 	Executed before Delete operation.
	 *	@return true if record can be deleted
	 */
	protected boolean beforeDelete()
	{
		for (MLBRNFTax nft : getTaxes())
		{
			nft.deleteEx(true);
		}
		for (MLBRNotaFiscalLine nfl : getLines())
		{
			nfl.deleteEx(true);
		}
		for (MLBRNFPaySchedule nfps : MLBRNFPaySchedule.getNFPaySchedule(getCtx(), getLBR_NotaFiscal_ID(), 0, get_TrxName()))
		{
			nfps.deleteEx(true);
		}
		return true;
	}	//	beforeDelete
	
	/**
	 *  getLines
	 *  @param String orderBy or null
	 *  @return MNotaFiscalLine[] lines
	 */
	public MLBRNotaFiscalLine[] getLines()
	{
		MTable table = MTable.get (getCtx(), MLBRNotaFiscalLine.Table_Name);
		Query query =  new Query(getCtx(), table, "LBR_NotaFiscal_ID=?", get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_NotaFiscal_ID()}).setOrderBy("Line");
	 	//
	 	List<MLBRNotaFiscalLine> list = query.list();
	 	return list.toArray(new MLBRNotaFiscalLine[list.size()]);
	}	//	getLines
	
	/**
	 *  getLines
	 *  @param String orderBy or null
	 *  @return MNotaFiscalLine[] lines
	 */
	@Deprecated public MLBRNotaFiscalLine[] getLines(String orderBy)
	{
		String   whereClause = "LBR_NotaFiscal_ID=?";
		Object[] parameters  = new Object[]{getLBR_NotaFiscal_ID()};

		return getLines(parameters,whereClause,orderBy);
	}	//	getLines

	/**
	 * getLines
	 * @param Object[] parameters
	 * @param String whereClause
	 * @param String orderBy
	 * @return MNotaFiscalLine[] lines
	 */
	@Deprecated public MLBRNotaFiscalLine[] getLines (Object[] parameters, String whereClause, String orderBy)
	{
		MTable table = MTable.get(getCtx(), MLBRNotaFiscalLine.Table_Name);
		Query query =  new Query(getCtx(), table, whereClause, get_TrxName());
	 		  query.setParameters(parameters);

	 	orderBy = TextUtil.checkOrderBy(orderBy);
	 	if (orderBy != null)
	 		  query.setOrderBy(orderBy);

	 	List<MLBRNotaFiscalLine> list = query.list();
	 	return list.toArray(new MLBRNotaFiscalLine[list.size()]);
	}	//	getLines
	
	/**
	 * 	Parse text
	 *	@param text text
	 *	@return parsed text
	 */
	private String parse (String text)
	{
		return parse (text, this);
	}	//	parse
	
	/**
	 * 	Parse text
	 *	@param text text
	 *	@param po object
	 *	@return parsed text
	 */
	private String parse (String text, PO doc)
	{
		if (text.indexOf('@') == -1)
			return text;
		
		String inStr = text;
		String token;
		StringBuffer outStr = new StringBuffer();

		int i = inStr.indexOf('@');
		while (i != -1)
		{
			outStr.append(inStr.substring(0, i));			// up to @
			inStr = inStr.substring(i+1, inStr.length());	// from first @

			int j = inStr.indexOf('@');						// next @
			if (j < 0)										// no second tag
			{
				inStr = "@" + inStr;
				break;
			}

			token = inStr.substring(0, j);
			outStr.append(parseVariable(token, doc));			// replace context

			inStr = inStr.substring(j+1, inStr.length());	// from second @
			i = inStr.indexOf('@');
		}

		outStr.append(inStr);           					//	add remainder
		return outStr.toString();
	}	//	parse
	
	/**
	 * 	Parse Variable
	 *	@param variable variable
	 *	@return translated variable or if not found the original tag
	 */
	private String parseVariable (String variable, PO doc)
	{
		MessageFormat mf = new MessageFormat("{0,number,#,##0.00}", Env.getLanguage(getCtx()).getLocale());
		//
		if (variable == null)
			return "";
		else if (variable.startsWith("NF_VAR|"))
		{
			/**
			 * 	Impostos, por exemplo:
			 * 		@NF_VAR|ICMS<lbr_TaxAmt>@ - Traz o valor do ICMS da NF
			 * 		@NF_VAR|IPI<lbr_TaxAmt>@  - Traz o valor do IPI da NF
			 */
			if (variable.endsWith("<lbr_TaxAmt>"))
			{
				BigDecimal tax = getTaxAmt(variable.substring(1+variable.indexOf('|'), variable.indexOf('<')));
				//
				if (tax == null)
					tax = Env.ZERO;
				//
				return mf.format (new Object[]{tax});
			}
			
			/**
			 * 	Alíquotas de Impostos, por exemplo:
			 * 		@NF_VAR|ICMS<lbr_TaxRate>@ - Traz o valor da alíquota de ICMS da NF
			 * 		@NF_VAR|IPI<lbr_TaxRate>@  - Traz o valor da alíqupta de IPI da NF
			 */
			else if (variable.endsWith("<lbr_TaxRate>"))
			{
				BigDecimal tax = getTaxRate(variable.substring(1+variable.indexOf('|'), variable.indexOf('<')));
				//
				if (tax == null)
					tax = Env.ZERO;
				//
				return mf.format (new Object[]{tax});
			}
			
			/**
			 * 	Itens da NF, por exemplo @NF_VAR|ITEMS@:
			 * 		4 H Hora técnica de especialista, Valor Unitário R$ 220,00, Valor Total R$ 880,00.
			 */
			else if (variable.endsWith("ITEMS"))
			{
				String serviceDescription = "";
				//
				for (MLBRNotaFiscalLine line : getLines())
				{
					if (line.getLBR_NotaFiscalLine_ID() <= 0
							|| line.getQty().compareTo(Env.ZERO) <= 0)
						continue;
					//
					serviceDescription += mf.format (new Object[]{line.getQty()}) + " " + line.getlbr_UOMName() + "\t";
					serviceDescription += line.getProductName();
					//
					if (line.getDescription() != null 
							&& !line.getDescription().equals(""))
					{
						if (line.getProductName() != null && !"".equals(line.getProductName()))
							serviceDescription += ", " + line.getDescription();
						else
							serviceDescription += line.getDescription();
					}
					
					if (line.getQty().compareTo(Env.ONE) == 1)
						serviceDescription += ", Valor Unitário R$ " + mf.format(new Object[]{line.getPrice()});
					
					serviceDescription += ", Valor Total R$ " + mf.format(new Object[]{line.getLineTotalAmt()}) + ".";
					//
					serviceDescription += "\n";
				}
				//
				return serviceDescription;
			}
			
			/**
			 * 	Valores, por exemplo @NF_VAR|AMOUNTS@:
			 * 
			 * 		Valor Bruto    - R$       4135,48
			 *		Retenção Total - R$         62,03
			 *		Valor Liquido  - R$       4073,45
			 */
			else if (variable.endsWith("AMOUNTS"))
			{
				BigDecimal withholdAmt = getWithholdAmt();
				String result = "";
				Boolean printTaxes = false;
				//
				if (withholdAmt == null || withholdAmt.signum() == 0)
					;
				else
				{
					printTaxes = true;
					//
					result += "\n" + TextUtil.rPad("Valor Bruto", 15);
					result += "- R$ ";
					result += TextUtil.lPad (mf.format (new Object[]{getlbr_ServiceTotalAmt()}), ' ', 13);
					result += "\n";
					result += "Retenção Total - R$ ";
					result += TextUtil.lPad (mf.format (new Object[]{withholdAmt.abs()}), ' ', 13);
					result += "\n" + TextUtil.rPad("Valor Líquido", 15);
					result += "- R$ ";
					result += TextUtil.lPad (mf.format (new Object[]{getGrandTotal()}), ' ', 13);
					result += "\n";
				}
				//
				if (printTaxes)
					return result;
				else
					return "";
			}
			else if (variable.endsWith("DUEDATE"))
			{
				String serviceDescription = "";
				//
				MLBROpenItem[] ois = MLBROpenItem.getOpenItem(getC_Invoice_ID(), get_TrxName());
				if (ois == null)
					;
				else if (ois.length == 1)
				{
					serviceDescription += "\nVencimento em " + TextUtil.timeToString(ois[0].getDueDate(), "dd/MM/yyyy") 
							+ " no valor de " + mf.format (new Object[]{ois[0].getGrandTotal()});
				}
				else if (ois.length > 1)
				{
					serviceDescription += "\nVencimentos:\n";
					//
					for (MLBROpenItem oi : ois)
					{
						serviceDescription += TextUtil.timeToString(oi.getDueDate(), "dd/MM/yyyy");
						serviceDescription += "     - R$ ";
						serviceDescription += TextUtil.lPad (mf.format (new Object[]{oi.getGrandTotal()}), ' ', 13);
						serviceDescription += "\n";
					}
				}
				//
				return serviceDescription;
			}
			else if (variable.contains("EVAL_BD"))
			{
				Interpreter bsh = new Interpreter ();
				String script = variable.substring(variable.indexOf("<")+1, variable.length()-1);
				
				try 
				{
					bsh.set("GrandTotal", getGrandTotal().doubleValue());
					Double result = (Double) bsh.eval(script);
					
					MessageFormat mfs = new MessageFormat("{0,number,#,##0.00}");
					return mfs.format(new Object[]{result}).toString();
				} 
				catch (EvalError e) 
				{
					e.printStackTrace();
				}
			}
			else 
			{
				log.warning("Not implemented yet");
				return "";
			}
		}
		//
		return parseVariable ("@" + variable + "@", doc, get_TrxName(), false);
	}	//	parseVariable
	
	/**
	 * 	Get NF Taxes
	 * 	@return MLBRNFTax[]
	 */
	public MLBRNFTax[] getTaxes()
	{
		MTable table = MTable.get(getCtx(), MLBRNFTax.Table_Name);
		Query query =  new Query(getCtx(), table, "LBR_NotaFiscal_ID=?", get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_NotaFiscal_ID()});

		List<MLBRNFTax> list = query.list();

		return list.toArray(new MLBRNFTax[list.size()]);
	}	//	getTaxes
	
	/**
	 * 	
	 * 	@return
	 */
	public BigDecimal getWithholdAmt ()
	{
		String sql = "SELECT SUM (LineNetAmt) "
				+ "FROM C_InvoiceLine il "
				+ "WHERE C_Invoice_ID=? AND M_Product_ID=?";
		//
		BigDecimal amount = DB.getSQLValueBD (get_TrxName(), sql, getC_Invoice_ID(), cInfoW.getLBR_ProductWithhold_ID());
		//
		if (amount == null)
			return Env.ZERO;
		return amount;
	}	//	getWithholdAmt
	
	/**
	 * 	Get Business Partner
	 *	@return partner or null
	 */
	public MBPartner getBPartner()
	{
		return new MBPartner (getCtx(), getC_BPartner_ID(), get_TrxName());
	}	//	getBPartner
	
	/**
	 * 	Retorna o total de desconto da Nota Fiscal
	 * @return
	 */
	public BigDecimal getDiscount()
	{
		BigDecimal discount = Env.ZERO;
		//
		for (MLBRNotaFiscalLine nfl : getLines())
		{
			discount = discount.add(nfl.getDiscountAmt());
		}
		//
		if (discount.signum() == 1)
			return discount;
		return null;
	}
	
	/**
	 * 	Identificador de local de destino da operação
	 * 
	 * 	O local é pesquisado com base no CFOP das linhas
	 * 
	 * 	@return idDest code
	 */
	public Ide.IdDest.Enum getIdDestinoOp () throws AdempiereException
	{
		if (idDest == null)
		{
			for (MLBRNotaFiscalLine line : getLines())
			{
				if (line.getlbr_CFOPName() == null)
					continue;
				
				else if (line.getlbr_CFOPName().startsWith("1")		//	Entrada Interna
						|| line.getlbr_CFOPName().startsWith("5"))	//	Saida Interna
				{
					idDest = NFeXMLGenerator.ID_DEST_INTERNA;
					break;
				}
				else if (line.getlbr_CFOPName().startsWith("2")		//	Entrada Outro Estado Brasileiro
						|| line.getlbr_CFOPName().startsWith("6"))	//	Saída Outro Estado Brasileiro
				{
					idDest = NFeXMLGenerator.ID_DEST_INTERESTADUAL;
					break;
				}
				else if (line.getlbr_CFOPName().startsWith("3")		//	Entrada Outro País
						|| line.getlbr_CFOPName().startsWith("7"))	//	Saída Outro País
				{
					idDest = NFeXMLGenerator.ID_DEST_EXTERIOR;
					break;
				}
			}
		}
		if (idDest == null)
			throw new AdempiereException ("CFOP Inválido, não foi possível determinar o Identificador de local de destino da operação (Ref. B11a)");
		
		return idDest;
	}	//	getIdDest

	/**
	 * 	Is Same Pickup Address as Org Address
	 * 	@return
	 */
	public boolean isSamePickUpAddr()
	{
		String orgAddr 		= TextUtil.toNumeric (getlbr_OrgPostal()) + 			//	CEP
				TextUtil.itrim (getlbr_OrgAddress2()).trim() + 						//	Número
				TextUtil.itrim (getlbr_OrgAddress4()).trim();						//	Complemento
		
		String pickUpAddr 	= TextUtil.toNumeric (getlbr_BPDeliveryPostal()) + 		//	CEP
				TextUtil.itrim (getlbr_BPDeliveryAddress2()).trim() + 				//	Número
				TextUtil.itrim (getlbr_BPDeliveryAddress4()).trim();				//	Complemento
		
		//	One address is empty, so its not the same
		if (orgAddr.isEmpty() || pickUpAddr.isEmpty())		//	Check if its empty
			return true;
		
		//	Same Address
		if (orgAddr.toUpperCase().equals(pickUpAddr.toUpperCase()))
			return true;
		
		//	Different Address
		return false;
	}	//	isSamePickUpAddr
	

	/**
	 * 	Is Same Delivery Address as Businnes Partner Address
	 * 	@return
	 */
	public boolean isSameDeliveryAddr()
	{
		String bpAddr 		= TextUtil.toNumeric (getlbr_BPPostal()) + 				//	CEP
				TextUtil.itrim (getlbr_BPAddress2()).trim() + 						//	Número
				TextUtil.itrim (getlbr_BPAddress4()).trim();						//	Complemento
		
		String deliveryAddr = TextUtil.toNumeric (getlbr_BPDeliveryPostal()) + 		//	CEP
				TextUtil.itrim (getlbr_BPDeliveryAddress2()).trim() + 				//	Número
				TextUtil.itrim (getlbr_BPDeliveryAddress4()).trim();				//	Complemento
		
		//	One address is empty, so its not the same
		if (bpAddr.isEmpty() || deliveryAddr.isEmpty())
			return true;
		
		//	Same Address
		if (bpAddr.trim().toUpperCase().equals(deliveryAddr.trim().toUpperCase()))
			return true;
		
		//	Different Address
		return false;
	}	//	isSamePickUpAddr

	
	/**			DocAction		*/
	
	/**
	 * 	Get Document Info
	 *	@return document info (untranslated)
	 */
	public String getDocumentInfo()
	{
		MDocType dt = MDocType.get(getCtx(), 0);
		return dt.getName() + " " + getDocumentNo();
	}	//	getDocumentInfo

	/**
	 * 	Create PDF
	 *	@return File or null
	 */
	public File createPDF ()
	{
		try
		{
			String name = "";
			
			if (LBR_NFMODEL_NotaFiscalEletrônica.equals(getlbr_NFModel()))
				name = "NFe";
			else if (LBR_NFMODEL_NotaFiscalEletrônica.equals(getlbr_NFModel()))
				name = "NFCe";
			
			File temp = File.createTempFile (name + getDocumentNo() + "-", ".pdf");
			return createPDF (temp);
		}
		catch (Exception e)
		{
			log.severe("Could not create PDF - " + e.getMessage());
		}
		return null;
	}	//	getPDF

	/**
	 * 	Create PDF file
	 *	@param file output file
	 *	@return file if success
	 */
	public File createPDF (File file)
	{
		//	PrintFromXML Process
		int AD_Process_ID=1120040;
		
		MPInstance instance = new MPInstance(Env.getCtx(), AD_Process_ID, getLBR_NotaFiscal_ID());
		if (!instance.save())
		{
			log.log (Level.SEVERE, Msg.getMsg(Env.getCtx(), "ProcessNoInstance"));
			return null;
		}

		//	Add Parameters
		MPInstancePara para = new MPInstancePara(instance, 10);
		para.setParameter("FileName", file.getAbsolutePath());
		if (!para.save())
		{
			String msg = "No FileName parameter for PDF generation";  //  not translated
			log.log(Level.SEVERE, msg);
			return null;
		}
		
		//	Create a new Transaction
		String trxName = get_TrxName();
		if (trxName == null)
			trxName = Trx.createTrxName("DANFE");
		
		//	Process Info Parameter
		ProcessInfoParameter pip = new ProcessInfoParameter("FileName", file.getAbsolutePath(), null, null, null);
		
		//	Process Info
		ProcessInfo pi = new ProcessInfo ("", AD_Process_ID);
		pi.setAD_PInstance_ID (instance.getAD_PInstance_ID());
		pi.setRecord_ID(instance.getRecord_ID());
		pi.setTable_ID(Table_ID);
		pi.setParameter(new ProcessInfoParameter[]{pip});
		pi.setTransactionName(trxName);
    	
    		try
		{
	    		Trx trx = Trx.get(trxName, false);
	    		
	    		SvrProcess proc = new PrintFromXML ();
	    		proc.startProcess (getCtx(), pi, trx);
	    		
	    		if (get_TrxName() == null && trx.isActive())
	    		{
	    			trx.commit();
	    			trx.close();
	    		}
		}
		catch (Exception e)
		{
			log.log (Level.SEVERE, "Unable to start the process for PDF creation", e);
		}
		return file;
	}	//	createPDF

	/**************************************************************************
	 * 	Process document
	 *	@param processAction document action
	 *	@return true if performed
	 */
	public boolean processIt (String processAction)
	{
		m_processMsg = null;
		DocumentEngine engine = new DocumentEngine (this, getDocStatus());
		return engine.processIt (processAction, getDocAction());
	}	//	processIt
	
	/**	Process Message 			*/
	private String		m_processMsg = null;
	/**	Just Prepared Flag			*/
	private boolean		m_justPrepared = false;
	/** Just Created				*/
	public boolean		m_justCreated = false;

	private I_W_AD_ClientInfo cInfoW;
	
	/**
	 * 	Unlock Document.
	 * 	@return true if success 
	 */
	public boolean unlockIt()
	{
		log.info("unlockIt - " + toString());
		return reActivateIt();
	}	//	unlockIt
	
	/**
	 * 	Invalidate Document
	 * 	@return true if success 
	 */
	public boolean invalidateIt()
	{
		log.info("invalidateIt - " + toString());
		return true;
	}	//	invalidateIt
	
	/**
	 *	Prepare Document
	 * 	@return new status (In Progress or Invalid) 
	 */
	public String prepareIt()
	{
		log.info(toString());
		
		if (m_justPrepared || !islbr_IsOwnDocument() || TextUtil.match (getDocAction(), DOCACTION_Unlock, DOCACTION_Unlock, DOCACTION_VoidInvalidate))
			return DOCSTATUS_InProgress;
		
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		
		if (TextUtil.match (getDocStatus(), DOCSTATUS_Drafted, DOCSTATUS_InProgress, DOCSTATUS_Invalid))
		{
			//	Valida a Org do Tipo de Documento vs Org da NF
			if (getC_DocTypeTarget().getAD_Org_ID() > 0 
					&& getAD_Org_ID() != getC_DocTypeTarget().getAD_Org_ID())
			{
				m_processMsg = "Organização do Tipo de Documento não confere com a da Nota Fiscal";
				return DocAction.STATUS_Invalid;
			}
			
			//	Prepara a NF de forma automática
			if (!isManual() && !m_justCreated)
			{
				//	Gera a NF a partir da Fatura
				if (getC_Invoice_ID() > 0)
					generateNF (new MInvoice (getCtx(), getC_Invoice_ID(), get_TrxName()), islbr_IsOwnDocument());
				
				//	Gera a NF a parir do Pedido
				else if (getC_Order_ID() > 0)
					generateNF (new MOrder (getCtx(), getC_Order_ID(), get_TrxName()), islbr_IsOwnDocument());
				
				//	Gera a NF a partir da Movimentação
				else if (getM_Movement_ID() > 0)
					generateNF (new MMovement (getCtx(), getM_Movement_ID(), get_TrxName()), islbr_IsOwnDocument(), getC_DocTypeTarget_ID());
				
				else
				{
					m_processMsg = "NF sem Pedido, Fatura ou Movimentação atrelada. Para fazer uma NF Manual, clique no campo Manual.";
					return DocAction.STATUS_Invalid;
				}
				
				//	Save to preserve before save options
				save();
			}
			
			//	Nota Fiscal Eletrônica
			if (TextUtil.match (getlbr_NFModel(), LBR_NFMODEL_NotaFiscalEletrônica, LBR_NFMODEL_NotaFiscalDeConsumidorEletrônica))
			{
				//	Limpa os campos no caso de reenviar uma NF que foi previament rejeitada
				setlbr_NFeStatus (null);
				setlbr_NFeID (null);
				setLBR_NFeLot_ID (0);
				
				//	Ajusta a data/hora de emissão da NFC-e
				if (islbr_IsOwnDocument() && (getC_DocTypeTarget().isOverwriteDateOnComplete() 
								|| LBR_NFMODEL_NotaFiscalDeConsumidorEletrônica.equals(getlbr_NFModel())))
					setDateDoc(new Timestamp (System.currentTimeMillis()));
				try
				{
					//	Gera o XML da NF-e
					NFeXMLGenerator.generate (this);
				}
				catch (Exception e)
				{
					e.printStackTrace();
					//
					m_processMsg = e.getMessage();
					//	Adicionar Erro na Janela NF
					setErrorMsg(m_processMsg);
					//	Alterar Estado da NF para Falha no Schema
					setlbr_NFeStatus(LBR_NFESTATUS_215_RejeiçãoFalhaNoSchemaXML);					
					return DocAction.STATUS_InProgress;
				}
			}
			
			//	NFS-e
			else if (TextUtil.match (getlbr_NFModel(), LBR_NFMODEL_NotaFiscalDeServiçosEletrônicaRPS))
			{
				//	Limpa os campos no caso de reenviar uma NF que foi previament rejeitada
				setlbr_NFeStatus (null);
				setlbr_NFeID (null);
				setLBR_NFeLot_ID (0);
				
				INFSe infSe = NFSeUtil.get (this);
				//
				if (infSe != null)
				{
					try
					{
						if (infSe.getXML (this) != null)
						{
							String xml = new String (infSe.getXML (this), NFeUtil.NFE_ENCODING);
	
							//	Anexa o XML na NF
							if (getAttachment (true) != null)
								getAttachment ().delete (true);
							
							getAttachment(true);	//	FIX
							MAttachment attachNFe = createAttachment();
							attachNFe.addEntry("RPS-" + getDocumentNo() + ".xml", xml.replaceAll("\\&\\#[0-9A-Za-z]*;|\\n", "").getBytes(NFeUtil.NFE_ENCODING));
							attachNFe.save();
						}
						else
							log.warning("XML não existe");
					}
					catch (Exception e)
					{
						e.printStackTrace();
						//
						m_processMsg = e.getMessage();
						return DOCSTATUS_Invalid;
					}
				}
			}
			
			//	Set action
			setProcessed(true);
			
			//	Reset Error Message
			setErrorMsg("");
		}
		
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;

		m_justPrepared = true;
		
		return DocAction.STATUS_InProgress;
	}	//	prepareIt
	
	/**
	 * 	Approve Document
	 * 	@return true if success 
	 */
	public boolean  approveIt()
	{
		log.info("approveIt - " + toString());
		return true;
	}	//	approveIt
	
	/**
	 * 	Reject Approval
	 * 	@return true if success 
	 */
	public boolean rejectIt()
	{
		log.info("rejectIt - " + toString());
		return true;
	}	//	rejectIt
	
	/**
	 * 	Complete Document
	 * 	@return new status (Complete, In Progress, Invalid, Waiting ..)
	 */
	public String completeIt()
	{
		log.info(toString());
		
		//	Previamente completado
		if (DOCSTATUS_Completed.equals(getDocStatus()))
			return getDocStatus();
		
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_COMPLETE);
		
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		
		try
		{
			if (!islbr_IsOwnDocument())
			{
				setDocAction(DOCACTION_None);
				setDocStatus(DOCSTATUS_Completed);
				//
				return DOCSTATUS_Completed;
			}
			//	Nota Fiscal Eletrônica
			if (TextUtil.match (getlbr_NFModel(), LBR_NFMODEL_NotaFiscalEletrônica, LBR_NFMODEL_NotaFiscalDeConsumidorEletrônica))
			{
				//	Aguardando a confirmação da SeFaz
				if (DOCSTATUS_WaitingConfirmation.equals (getDocStatus()))
				{
					//	Verifica se a NF já pertence a um lote
					if (getLBR_NFeLot_ID() > 0)
					{
						MLBRNFeLot lot = new MLBRNFeLot (getCtx(), getLBR_NFeLot_ID(), get_TrxName());
						
						//	Lote já processado
						if (MLBRNFeLot.DOCSTATUS_Completed.equals(lot.getDocStatus()))
							return getDocStatus();
						
						if (!lot.consultaLoteNFe())
							throw new Exception ("Falha na transmissão da NF-e");
						//
						return getDocStatus();
					}
				}
				
				//	XML gerado, pronto para ser adicionado ao lote
				else if (DOCSTATUS_InProgress.equals (getDocStatus()))
				{
					if (getlbr_NFeStatus() != null)
						throw new Exception ("Falha no Schema da NF-e");
					
					//	Cria um novo lote para a transmissão
					MLBRNFeLot lot = new MLBRNFeLot (getCtx(), 0, get_TrxName());
					lot.setName("[Auto] NF: " + getDocumentNo());
					lot.setAD_Org_ID(getAD_Org_ID());
					//
					MLBRNFConfig nfConfig = MLBRNFConfig.get(getAD_Org_ID());					
					if (nfConfig != null && nfConfig.getLBR_NFeLotMethod() != null)
						lot.setLBR_NFeLotMethod(nfConfig.getLBR_NFeLotMethod());
					
					//	Synchronous as deafult
					else
						lot.setLBR_NFeLotMethod(MLBRNFeLot.LBR_NFELOTMETHOD_Synchronous);
					
					lot.setlbr_NFModel(getlbr_NFModel());
					lot.save();
					
					//	Vincula o lote criado a NF-e
					setLBR_NFeLot_ID (lot.getLBR_NFeLot_ID());
					save();
					
					if (!lot.enviaLoteNFe())
						throw new Exception ("Falha na transmissão da NF-e");
					
					if (!lot.islbr_LotSent())
						throw new Exception ("Erro na transmissão da NF-e. " + MRefList.getListName(getCtx(), Constants.LBR_NFESTATUS_AD_Reference_ID, lot.getlbr_NFeStatus()));
					
					try 
					{
						//	Wait 15 secs before check if NF is processed
						//		15 secs is the SeFaz recommended time
						//		only if lot was not received in synchronous operation
						if (!lot.islbr_LotReceived())
							Thread.sleep(MSysConfig.getIntValue(SysConfig.LBR_NFE_WAITING_TIME, 15000, getAD_Client_ID(), getAD_Org_ID()));
					} 
					catch (InterruptedException ex)
					{
					    Thread.currentThread().interrupt();
					}

					//	Lote já processado
					if ((!lot.islbr_LotReceived() 			//	Verifica se o Lote não foi processado de forma síncrona
							&& !lot.consultaLoteNFe())		//	Envia o lote
							|| !lot.islbr_LotReceived())	//	Caso o envio não tenha sido recebido, marca como WC
					{
						//	Set status
						setDocStatus(DOCSTATUS_WaitingConfirmation);
						setDocAction(DOCACTION_Complete);
					}
					
					//	Retorna o próprio status, pois caso tenha ocorrido erro, o processo de retorno de lote
					//		irá marcar o processo como inválido
					return getDocStatus();
				}
			}
			
			//	NF Serviço
			else if (LBR_NFMODEL_NotaFiscalDeServiçosEletrônicaRPS.equals(getlbr_NFModel()))
			{
				INFSe infSe = NFSeUtil.get (this);
				//
				if (infSe != null)
				{
					try
					{
						//	Consultar Estado de NF-e de Serviço já Transmitida de Forma Assincrona
						if (DOCSTATUS_WaitingConfirmation.equals(getDocStatus()))
						{
							if (infSe.consult(this))
							{
								//	Set status
								setDocStatus(DOCSTATUS_Completed);
								setDocAction(DOCACTION_None);
							}
							else
							{
								m_processMsg = "Falha na transmissão do RPS";
								return DOCSTATUS_WaitingConfirmation;
							}
						}
						//	Transmitir NF-e de Serviço
						else if (!DOCSTATUS_Completed.equals (getDocStatus()))
						{
							if (infSe.transmit(this))
							{
								//	Quando a Transmissão da NF-e é de Forma Sincrona	
								if (INFSe.TYPE_SYNCHRONOUS.equals(infSe.getType()))
								{
									//	Set status
									setDocStatus(DOCSTATUS_Completed);
									setDocAction(DOCACTION_None);
								}
								//	Quando a Transmissão da NF-e é de Forma Assincrona
								else
								{
									//	Set status
									setDocStatus(DOCSTATUS_WaitingConfirmation);
									setDocAction(DOCACTION_Complete);
								}
							}
							else
							{
								m_processMsg = "Falha na transmissão da NFS-e";
								return DOCSTATUS_Invalid;
							}
						}
						else
						{
							m_processMsg = "Falha na transmissão do RPS";
							return DOCSTATUS_Invalid;
						}
					}
					catch (Exception e)
					{
						e.printStackTrace();
						//
						m_processMsg = e.getMessage();
						return DOCSTATUS_Invalid;
					}
				}
				else
					log.warning("Emissão da NFS-e - Cidade do Emissor não suportada");
			}			
			//	Outras NF
			else
				setDocStatus(DOCSTATUS_Completed);
		}
		catch (Exception e)
		{
			e.printStackTrace();
			//
			m_processMsg = e.getMessage();
			return getDocStatus();
		}

		return getDocStatus();
	}	//	completeIt

	/**
	 * 	Void Document.
	 * 	Same as Close.
	 * 	@return true if success 
	 */
	public boolean voidIt()
	{
		log.info("voidIt - " + toString());
		// Before Void
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_VOID);
		if (m_processMsg != null)
			return false;
		
		//	Anular a NF
		if (DOCSTATUS_Completed.equals(getDocStatus()))
		{
			if (LBR_NFESTATUS_100_AutorizadoOUsoDaNF_E.equals(getlbr_NFeStatus())
					&& LBR_NFMODEL_NotaFiscalEletrônica.equals(getlbr_NFModel()))
			{
				try
				{
					MLBRNFeEvent.registerEvent(this, MLBRNFeEvent.LBR_EVENTTYPE_Cancelamento, getlbr_MotivoCancel(), 1, false);
					setVoidInfo (false);
					return true;
				}
				catch (Exception e)
				{
					m_processMsg = e.getMessage();
				}
			}
			else
			{
				setProcessed (true);
				setDocAction (DOCACTION_None);
				return true;
			}
		}
		
		//	Inutilizar a numeração
		else if (TextUtil.match(getDocStatus(), DOCSTATUS_Drafted, DOCSTATUS_InProgress, DOCSTATUS_Invalid))
		{
			// Entra no IF se a Nota Fiscal não for um Documento Próprio
			// ou for uma Nota Fiscal de Serviço e Anula a Nota Fiscal
			if (!islbr_IsOwnDocument() || (!LBR_NFMODEL_NotaFiscalEletrônica.equals(getlbr_NFModel()) &&
					!LBR_NFMODEL_NotaFiscalDeConsumidorEletrônica.equals(getlbr_NFModel())))
			{
				setProcessed (true);
				setDocAction (DOCACTION_None);
				return true;
			}
			else
			{
				try
				{
					String regionCode = BPartnerUtil.getRegionCode (new MLocation (p_ctx, getOrg_Location_ID(), null));
					
					//	Date is empty
					Timestamp dateDoc = getDateDoc();
					if (dateDoc == null)
					{
						dateDoc = TimeUtil.getDay(0);
						setDateDoc(dateDoc);
					}
					//
					TRetInutNFe.InfInut ret = ProcInutNF.invalidateNF (p_ctx, getAD_Org_ID(), getlbr_CNPJ(), 
								regionCode, getlbr_NFeEnv(), getlbr_NFModel(), Integer.parseInt(getDocumentNo()), 
								Integer.parseInt(getDocumentNo()), getlbr_NFSerie(), getlbr_MotivoCancel(), dateDoc);
					//
					if (MLBRNotaFiscal.LBR_NFESTATUS_102_InutilizaçãoDeNúmeroHomologado.equals(ret.getCStat())	//	OK
							|| MLBRNotaFiscal.LBR_NFESTATUS_563_RejeiçãoJáExistePedidoDeInutilizaçãoComAMesmaFaixaDeInutilização.equals(ret.getCStat())
							|| MLBRNotaFiscal.LBR_NFESTATUS_206_RejeiçãoNF_EJáEstáInutilizadaNaBaseDeDadosDaSEFAZ.equals(ret.getCStat())
							|| MLBRNotaFiscal.LBR_NFESTATUS_256_RejeiçãoUmaNF_EDaFaixaJáEstáInutilizadaNaBaseDeDadosDaSEFAZ.equals(ret.getCStat()))
					{
						setDocAction (DOCACTION_None);
						setDocStatus (DOCSTATUS_Voided);
						setProcessed(true);
						setIsCancelled(true);
						setlbr_NFeStatus (MLBRNotaFiscal.LBR_NFESTATUS_102_InutilizaçãoDeNúmeroHomologado);
				        return true;
					}
					else
					{
						m_processMsg = ret.getXMotivo();
					}
				}
				catch (Exception e)
				{
					e.printStackTrace();
					m_processMsg = e.getMessage();
				}
			}
		}
		
		else
			m_processMsg = "Estado inválido não é permitido anular o documento neste estado.";
		
		return false;
	}	//	voidIt
	
	/**
	 * 	Close Document.
	 * 	Cancel not delivered Qunatities
	 * 	@return true if success 
	 */
	public boolean closeIt()
	{
		log.info("closeIt - " + toString());
		m_processMsg = "Não é permitido fechar o documento.";
		return false;
	}	//	closeIt
	
	/**
	 * 	Reverse Correction
	 * 	@return true if success 
	 */
	public boolean reverseCorrectIt()
	{
		log.info("reverseCorrectIt - " + toString());
		return false;
	}	//	reverseCorrectionIt
	
	/**
	 * 	Reverse Accrual - none
	 * 	@return true if success 
	 */
	public boolean reverseAccrualIt()
	{
		log.info("reverseAccrualIt - " + toString());
		return false;
	}	//	reverseAccrualIt
	
	/** 
	 * 	Re-activate
	 * 	@return true if success 
	 */
	public boolean reActivateIt()
	{
		log.info("reActivateIt - " + toString());
		
		//	Verifica se a NF está cancelada
		if (isCancelled())
		{
			m_processMsg = "NF Cancelada, impossível reativar";
			return false;
		}
		
		//	Nota Fiscal Eletrônica
		if (TextUtil.match (getlbr_NFModel(), LBR_NFMODEL_NotaFiscalEletrônica))
		{
			//	Valida o Lote da NF-e
			int LBR_NFeLot_ID = getLBR_NFeLot_ID();
			if (LBR_NFeLot_ID > 0)
			{
				MLBRNFeLot lot = new MLBRNFeLot (getCtx(), LBR_NFeLot_ID, get_TrxName());
				
				if (DOCSTATUS_WaitingConfirmation.equals (lot.getDocStatus()))
				{
					m_processMsg = "Lote da NF não processado, impossível reativar";
					return false;
				}
				
				//	Apaga o Lote da NF em questão
				setLBR_NFeLot_ID(0);
			}
		}
		
		//	Marca a NF como Manual
		setIsManual(true);
		
		setDocStatus(DOCSTATUS_Drafted);
		setDocAction(DOCACTION_Prepare);
		setProcessed(false);
		return true;
	}	//	reActivateIt
	
	/*************************************************************************
	 * 	Get Summary
	 *	@return Summary of Document
	 */
	public String getSummary()
	{
		return "";
	}	//	getSummary

	/**
	 * 	Get Process Message
	 *	@return clear text error message
	 */
	public String getProcessMsg()
	{
		if (m_processMsg == null)
			m_processMsg = "";

		return m_processMsg;
	}	//	getProcessMsg
	
	/**
	 * 	Get Document Owner (Responsible)
	 *	@return AD_User_ID
	 */
	public int getDoc_User_ID()
	{
		return 0;
	}	//	getDoc_User_ID

	/**
	 * 	Get Document Approval Amount
	 *	@return amount
	 */
	public BigDecimal getApprovalAmt()
	{
		return null;
	}	//	getApprovalAmt
	
	/**
	 * 	Get Document Currency
	 *	@return C_Currency_ID
	 */
	public int getC_Currency_ID()
	{
		return 0;
	}	//	getC_Currency_ID
	
	/**
	 * 	Status
	 */
	@Override
	public int customizeValidActions (String docStatus, Object processing,
			String orderType, String isSOTrx, int AD_Table_ID, String[] docAction,
			String[] options, int index)
	{
		options[0] = null;
		options[1] = null;
		options[2] = null;
		options[3] = null;
		options[4] = null;
		
		if (DOCSTATUS_Invalid.equals(docStatus))
		{
			options[0] = DOCACTION_Prepare;
			options[1] = DOCACTION_VoidInvalidate;
			index=2;
		}
		else if (DOCSTATUS_InProgress.equals(docStatus))
		{
			options[0] = DOCACTION_Complete;
			options[1] = DOCACTION_Unlock;
			options[2] = DOCACTION_VoidInvalidate;
			index=3;
		}
		else if (DOCSTATUS_Drafted.equals(docStatus))
		{
			options[0] = DOCACTION_Prepare;
			options[1] = DOCACTION_Complete;
			options[2] = DOCACTION_VoidInvalidate;
			index=3;
		}
		else if (DOCSTATUS_WaitingConfirmation.equals(docStatus))
		{
			options[0] = DOCACTION_Complete;
			index=1;
		}
		else if (DOCSTATUS_Completed.equals(docStatus))
		{
			options[0] = DOCACTION_VoidInvalidate;
			index=1;
		}
		//
		return index;
	}	//	docStatus
	
	/**
	 * 	Set void info
	 */
	public void setVoidInfo (boolean docStatus)
	{
		setIsCancelled(true);
		if (docStatus)
			setDocStatus(MLBRNotaFiscal.DOCSTATUS_Voided);
		setDocAction(MLBRNotaFiscal.DOCACTION_None);
		setlbr_NFeStatus(MLBRNotaFiscal.LBR_NFESTATUS_101_CancelamentoDeNF_EHomologado);
	}	//	setVoidInfo
	
	/**
	 * 	Set DocumentNo
	 */
	@Override
	public void setDocumentNo (String docNo)
	{
		if (docNo != null)
		{
			String[] docSerie = docNo.split ("-");
			
			//	Número da NF
			super.setDocumentNo(docSerie[0]);
			
			//	Série
			if (docSerie.length > 1)
				setlbr_NFSerie(TextUtil.toNumeric (docSerie[1]));
		}
		else
			super.setDocumentNo(docNo);
	}	//	setDocumentNo
	
	/**
	 * 	Get NF Model from NF or Document Type
	 * 	@return document number or null if absent
	 */
	private String getNFModel()
	{
		if (getlbr_NFModel() != null)
			return getlbr_NFModel();
		if (getC_DocTypeTarget_ID() > 0)
		{
			I_W_C_DocType dt = POWrapper.create(new MDocType (getCtx(), getC_DocTypeTarget_ID(), get_TrxName()), I_W_C_DocType.class);
			return dt.getlbr_NFModel();
		}
		return null;
	}	//	getNFModel
	
	/**
	 * Return NFe Events
	 * @return
	 */
	public List<MLBRNFeEvent> getNFeEvents()
	{				
		return getNFeEvents(null);
	}	// getNFeEvents
	
	/**
	 * Return NFe Events
	 * @param lbr_eventType
	 * @return
	 */
	public List<MLBRNFeEvent> getNFeEvents(String lbr_eventType)
	{
		String where = "";
		
		if (lbr_eventType != null && !lbr_eventType.isEmpty())
			where = "LBR_EventType = '" + lbr_eventType + "' AND ";
		
		where = where + "LBR_NotaFiscal_ID=?";
		
		List<MLBRNFeEvent> events = new Query(Env.getCtx(), MLBRNFeEvent.Table_Name, where, null)
				.setParameters(getLBR_NotaFiscal_ID())
				.list();
		
		return events;
	}	// getNFeEvents
	
	/**
	 * 	Check if this NF has a XML for NFe or NFCe
	 * 	@return true if the XML is present
	 */
	public boolean hasNFeXML ()
	{
		MAttachment att = getAttachment(true);
		if (att == null)
			return false;
		//
		for (MAttachmentEntry entry : att.getEntries())
		{
			if (entry != null 
					&& entry.getName() != null 
					&& entry.getName().endsWith(NFeXMLGenerator.FILE_EXT))
				return true;
		}
		return false;
	}	//	hasNFeXML
	
	/**
	 * 		Check if the provided digest value 
	 * 	matches the digest value from XML
	 * 
	 * 	@param dv Digest Value to be compared with XML
	 * 	@return true if the Digest Value matches
	 * @throws IOException 
	 * @throws XmlException 
	 */
	public boolean isProtocolValid (String dv) throws XmlException, IOException
	{
		MAttachment att = getAttachment(true);
		if (att == null)
			return false;
		//
		for (MAttachmentEntry entry : att.getEntries())
		{
			//	XML encontrado, conferir Digest Value
			if (entry != null 
					&& entry.getName() != null 
					&& entry.getName().endsWith(NFeXMLGenerator.FILE_EXT))
			{
				NFeDocument nfeDoc = NFeDocument.Factory.parse (entry.getInputStream());
				String digestValue = NFeUtil.extractDigestValue (nfeDoc);
				
				//	Same document
				if (digestValue.equals(dv))
					return true;
			}
		}
		return false;
	}	//	isProtocolValid
	
	/**
	 * 	Calculate the NF weight
	 */
	public void calculateWeight ()
	{
		BigDecimal weight = Env.ZERO;
		for (MLBRNotaFiscalLine nfl : getLines())
		{
			if (nfl.getM_Product_ID() > 0)
				weight = weight.add(nfl.getQty ().multiply (nfl.getM_Product ().getWeight ()));
		}
		
		//	Set both gross and net weight
		setlbr_GrossWeight(weight);
		setlbr_NetWeight(weight);
	}	//	calculateWeight

	/**
	 * Parse expression, replaces global or PO properties @tag@ with actual value. Differente from Env.parseVariable
	 * 	because this allows to perform a Query
	 * 
	 * @param expression
	 * @param po
	 * @param trxName
	 * @return String
	 */
	public static String parseVariable(String expression, PO po, String trxName, boolean keepUnparseable) {
		if (expression == null || expression.length() == 0)
			return "";

		String token;
		String inStr = new String(expression);
		StringBuilder outStr = new StringBuilder();

		int i = inStr.indexOf('@');
		while (i != -1)
		{
			outStr.append(inStr.substring(0, i));			// up to @
			inStr = inStr.substring(i+1, inStr.length());	// from first @

			int j = inStr.indexOf('@');						// next @
			if (j < 0)
			{
				return "";						//	no second tag
			}

			token = inStr.substring(0, j);

			//format string
			String format = "";
			int f = token.indexOf('<');
			if (f > 0 && token.endsWith(">")) {
				format = token.substring(f+1, token.length()-1);
				token = token.substring(0, f);
			}

			Properties ctx = po != null ? po.getCtx() : Env.getCtx();
			if (token.startsWith("#") || token.startsWith("$")) {
				//take from context
				String v = Env.getContext(ctx, token);
				if (v != null && v.length() > 0)
					outStr.append(v);
				else if (keepUnparseable) {
					outStr.append("@").append(token);
					if (!Util.isEmpty(format))
						outStr.append("<").append(format).append(">");
					outStr.append("@");
				}
			} else if (po != null) {
				//take from po
				if (po.get_ColumnIndex(token) >= 0) {
					Object v = po.get_Value(token);
					MColumn colToken = MColumn.get(ctx, po.get_TableName(), token);
					String foreignTable = colToken.getReferenceTableName();
					if (v != null) {
						if (format != null && format.length() > 0) {
							if (v instanceof Integer && (Integer) v > 0 && !Util.isEmpty(foreignTable)) {
								int tblIndex = format.indexOf(".");
								String tableName = null;
								if (tblIndex > 0)
									tableName = format.substring(0, tblIndex);
								else
									tableName = foreignTable;
								MTable table = MTable.get(ctx, tableName);
								if (table != null && tableName.equalsIgnoreCase(foreignTable)) {
									String columnName = tblIndex > 0 ? format.substring(tblIndex + 1) : format;
//									MColumn column = table.getColumn(columnName);
//									if (column != null) {
//										if (column.isSecure()) {
//											outStr.append("********");
//										} else {
											String value = DB.getSQLValueString(trxName,"SELECT " + columnName + " FROM " + tableName + " WHERE " + tableName + "_ID = ?", (Integer)v);
											if (value != null)
												outStr.append(value);
//										}
//									}
								}
							} else if (v instanceof Date) {
								SimpleDateFormat df = new SimpleDateFormat(format);
								outStr.append(df.format((Date)v));
							} else if (v instanceof Number) {
								DecimalFormat df = new DecimalFormat(format);
								outStr.append(df.format(((Number)v).doubleValue()));
							} else {
								MessageFormat mf = new MessageFormat(format);
								outStr.append(mf.format(v));
							}
						} else {
							if (colToken != null && colToken.isSecure()) {
								v = "********";
							}
							outStr.append(v.toString());
						}
					}
				} else if (keepUnparseable) {
					outStr.append("@").append(token);
					if (!Util.isEmpty(format))
						outStr.append("<").append(format).append(">");
					outStr.append("@");
				}
			}
			else if (keepUnparseable)
			{
				outStr.append("@"+token);
				if (format.length() > 0)
					outStr.append("<"+format+">");
				outStr.append("@");
			}
			
			inStr = inStr.substring(j+1, inStr.length());	// from second @
			i = inStr.indexOf('@');
		}
		outStr.append(inStr);						// add the rest of the string

		return outStr.toString();
	}
	
	/**
	 * Allow to Reverse Documents Related to Nota Fiscal
	 * @return
	 */
	public Boolean allowReverseDocs()
	{
		if (MLBRNotaFiscal.DOCSTATUS_Voided.equals(getDocStatus()) || isCancelled() ||
				MLBRNotaFiscal.LBR_NFESTATUS_101_CancelamentoDeNF_EHomologado.equals(getlbr_NFeStatus()) ||
				MLBRNotaFiscal.LBR_NFESTATUS_102_InutilizaçãoDeNúmeroHomologado.equals(getlbr_NFeStatus()) ||
				MLBRNotaFiscal.LBR_NFESTATUS_301_UsoDenegadoIrregularidadeFiscalDoEmitente.equals(getlbr_NFeStatus()) ||
				MLBRNotaFiscal.LBR_NFESTATUS_302_RejeiçãoIrregularidadeFiscalDoDestinatário.equals(getlbr_NFeStatus()) ||
				MLBRNotaFiscal.LBR_NFESTATUS_303_UsoDenegadoDestinatárioNãoHabilitadoAOperarNaUF.equals(getlbr_NFeStatus()) ||
				MLBRNotaFiscal.LBR_NFESTATUS_999_RejeiçãoErroNãoCatalogado.equals(getlbr_NFeStatus())				)
			return true;
		
		return false;		
	}
}	//	MLBRNotaFiscal
