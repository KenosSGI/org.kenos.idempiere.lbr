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

import static org.adempierelbr.model.MLBRNFLineMA.MATCH_GUN;
import static org.adempierelbr.model.MLBRNFLineMA.MATCH_TRACKING;
import static org.adempierelbr.model.MLBRNFLineMA.MATCH_VEHICLE;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.util.LBRUtils;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.validator.ValidatorBPartner;
import org.adempierelbr.wrapper.I_W_C_InvoiceLine;
import org.adempierelbr.wrapper.I_W_C_OrderLine;
import org.adempierelbr.wrapper.I_W_C_Tax;
import org.adempierelbr.wrapper.I_W_M_Product;
import org.compiere.model.MAcctSchema;
import org.compiere.model.MAttributeSetInstance;
import org.compiere.model.MCharge;
import org.compiere.model.MClient;
import org.compiere.model.MConversionRate;
import org.compiere.model.MCost;
import org.compiere.model.MInOutLine;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MMovement;
import org.compiere.model.MMovementLine;
import org.compiere.model.MOrderLine;
import org.compiere.model.MPeriod;
import org.compiere.model.MProduct;
import org.compiere.model.MSysConfig;
import org.compiere.model.MTable;
import org.compiere.model.MTax;
import org.compiere.model.MUOM;
import org.compiere.model.Query;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.kenos.idempiere.lbr.base.model.MLBRAverageCostLine;
import org.kenos.idempiere.lbr.base.model.MLBRProductionGroup;
import org.kenos.idempiere.lbr.base.model.SysConfig;

/**
 *	MNotaFiscalLine
 *
 *	Model for X_LBR_NotaFiscalLine
 *
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MNotaFiscalLine.java, 08/01/2008 11:01:00 mgrigioni
 *
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRNotaFiscalLine.java, v2.0 2011/10/15 2:52:22 AM, ralexsander Exp $
 */
public class MLBRNotaFiscalLine extends X_LBR_NotaFiscalLine {

	/**
	 *	Serial
	 */
	private static final long serialVersionUID = 1L;

	/** Parent					*/
	private MLBRNotaFiscal			m_parent = null;
	
	/**	Process Message */
	private String		m_processMsg = null;

	public String getProcessMsg() {

		if (m_processMsg == null)
			m_processMsg = "";

		return m_processMsg;
	}

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNotaFiscalLine (Properties ctx, int ID, String trx)
	{
		super(ctx, ID, trx);
	}	//	MLBRNotaFiscalLine

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNotaFiscalLine (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//	MLBRNotaFiscalLine
	
	/**
	 *  Constructor
	 *  @param nf Nota Fiscal
	 */
	public MLBRNotaFiscalLine (MLBRNotaFiscal nf)
	{
		super(nf.getCtx(), 0, nf.get_TrxName());
		setLBR_NotaFiscal_ID(nf.getLBR_NotaFiscal_ID());
		//
		m_parent = nf;
	}	//	MLBRNotaFiscalLine

	/**************************************************************************
	 *  selbr_ServiceTaxes
	 *  Geração de String com Impostos da Linha (Serviço)
	 */
	public void setlbr_ServiceTaxes(){

		X_LBR_NFLineTax[] taxes = getTaxes();
		String serviceString = "IMPOSTOS: ";
		for(int i=0;i<taxes.length;i++){
			X_LBR_TaxGroup taxGroup = new X_LBR_TaxGroup(getCtx(),taxes[i].getLBR_TaxGroup_ID(),get_TrxName());
			serviceString += taxGroup.getName() + ":" +
							 taxes[i].getlbr_TaxRate() + "% R$" +
							 taxes[i].getlbr_TaxAmt() + ", ";
		}

		serviceString = TextUtil.retiraPontoFinal(serviceString);

		if (taxes.length > 0)
			setlbr_ServiceTaxes("\n" + serviceString);
		else
			setlbr_ServiceTaxes("");

	} //setlbr_ServiceTaxes

	

	@Deprecated
	public BigDecimal getFreightAmt(BigDecimal totalLinesAmt, BigDecimal totalFreightAmt){

//		BigDecimal lineAmt = getLineTotalAmt();
//		BigDecimal freightAmt = lineAmt.divide(totalLinesAmt, TaxBR.MCROUND);
//		           freightAmt = totalFreightAmt.multiply(freightAmt);

		
		//	FIXME: O valor deve ser gravado em um campo criado na janela de NF
		if (getC_InvoiceLine_ID() > 0)
		{
			I_W_C_InvoiceLine ilW = POWrapper.create(new MInvoiceLine (Env.getCtx(), getC_InvoiceLine_ID(), get_TrxName()), I_W_C_InvoiceLine.class);
			
			if (ilW.getFreightAmt() != null)
				return ilW.getFreightAmt();
		}
		return Env.ZERO;// freightAmt.setScale(TaxBR.SCALE, TaxBR.ROUND);
	} //getFreightAmt

	@Deprecated
	public BigDecimal getInsuranceAmt(BigDecimal totalLinesAmt, BigDecimal totalInsuranceAmt){

//		BigDecimal lineAmt = getLineTotalAmt();
//		BigDecimal insuranceAmt = lineAmt.divide(totalLinesAmt, TaxBR.MCROUND);
//		           insuranceAmt = totalInsuranceAmt.multiply(insuranceAmt);

//		FIXME: O valor deve ser gravado em um campo criado na janela de NF
			if (getC_InvoiceLine_ID() > 0)
			{
				I_W_C_InvoiceLine ilW = POWrapper.create(new MInvoiceLine (Env.getCtx(), getC_InvoiceLine_ID(), get_TrxName()), I_W_C_InvoiceLine.class);
				
				if (ilW.getlbr_InsuranceAmt() != null)
					return ilW.getlbr_InsuranceAmt();
			}
		return Env.ZERO;//insuranceAmt.setScale(TaxBR.SCALE, TaxBR.ROUND);
	} //getInsuranceAmt


	/**
	 * Retorna o valor do Imposto
	 *
	 * @return BigDecimal amt
	 */
	public BigDecimal getTaxAmt(String taxIndicator){

		if (taxIndicator == null)
			return Env.ZERO;

		String sql = "SELECT SUM(lbr_TaxAmt) FROM LBR_NFLineTax " +
		             "WHERE LBR_NotaFiscalLine_ID = ? AND LBR_TaxGroup_ID IN " +
		             "(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";
		//
		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscalLine_ID(),taxIndicator.toUpperCase()});
		return result == null ? Env.ZERO : result;
	} //getTaxAmt

	/**
	 * Retorna a Base de Cálculo do Imposto
	 *
	 * @return BigDecimal amt
	 */
	public BigDecimal getTaxBaseAmt(String taxIndicator){

		if (taxIndicator == null)
			return Env.ZERO;

		String sql = "SELECT SUM(lbr_TaxBaseAmt) FROM LBR_NFLineTax " +
		             "WHERE LBR_NotaFiscalLine_ID = ? AND LBR_TaxGroup_ID IN " +
		             "(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";
		//
		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscalLine_ID(),taxIndicator.toUpperCase()});
		return result == null ? Env.ZERO : result;
	} //getTaxBase

	/**
	 * Retorna a redução da Base de Cálculo
	 *
	 * @return BigDecimal amt
	 */
	public BigDecimal getTaxBaseReduction(String taxIndicator){

		if (taxIndicator == null)
			return Env.ZERO;

		String sql = "SELECT AVG(lbr_TaxBase) FROM LBR_NFLineTax " +
		             "WHERE LBR_NotaFiscalLine_ID = ? AND LBR_TaxGroup_ID IN " +
		             "(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";
		//
		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscalLine_ID(),taxIndicator.toUpperCase()});
		return result == null ? Env.ZERO : result;
	} //getTaxBaseReduction

	/**
	 * Retorna a Alíquota do Imposto
	 *
	 * @return BigDecimal amt
	 */
	public BigDecimal getTaxRate(String taxIndicator){

		if (taxIndicator == null)
			return Env.ZERO;

		String sql = "SELECT AVG(lbr_TaxRate) FROM LBR_NFLineTax " +
		             "WHERE LBR_NotaFiscalLine_ID = ? AND LBR_TaxGroup_ID IN " +
		             "(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";
		//

		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscalLine_ID(),taxIndicator.toUpperCase()});
		return result == null ? Env.ZERO : result;
	} //getTaxRate

	/**
	 *  Retorno a LBR_NFLineTax
	 *
	 *  @return	LBR_NFLineTax
	 */
	public X_LBR_NFLineTax getTax(String taxIndicator)
	{

		if (taxIndicator == null)
			return null;

		String whereClause = "LBR_NotaFiscalLine_ID = ? AND LBR_TaxGroup_ID IN " +
				             "(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";

		MTable table = MTable.get(getCtx(), X_LBR_NFLineTax.Table_Name);
		Query query =  new Query(getCtx(), table, whereClause, get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_NotaFiscalLine_ID(),taxIndicator.toUpperCase()});

		List<X_LBR_NFLineTax> list = query.list();
		if (list.size() == 1)
			return (list.toArray(new X_LBR_NFLineTax[list.size()]))[0];

		return null;
	}	//	getICMSTax


	/**
	 *  Retorno o valor da Base de ICMSST
	 *
	 *  @return	BigDecimal	Base ICMSST
	 */
	public BigDecimal getICMSSTBase()
	{
		return getTaxBaseAmt("ICMSST");
	}	//	getICMSSTBase
	

	/**
	 *  Retorno a LBR_NFLineTax do ICMS
	 *
	 *  @return	LBR_NFLineTax
	 */
	public X_LBR_NFLineTax getICMSTax()
	{
		return getTax("ICMS");
	}	//	getICMSTax
	
	/**
	 *  Retorno a LBR_NFLineTax do ICMS
	 *
	 *  @return	LBR_NFLineTax
	 */
	public X_LBR_NFLineTax getICMSSTTax()
	{
		return getTax("ICMSST");
	}	//	getICMSTax
	
	/**
	 *  Retorno a LBR_NFLineTax do ICMS ST DEST
	 *
	 *  @return	LBR_NFLineTax
	 */
	public X_LBR_NFLineTax getICMSSTDESTTax()
	{
		return getTax("ICMSSTDEST");
	}	//	getICMSSTDESTTax
	
	/**
	 *  Retorno a LBR_NFLineTax do ICMS ST REMET
	 *
	 *  @return	LBR_NFLineTax
	 */
	public X_LBR_NFLineTax getICMSSTREMETTax()
	{
		return getTax("ICMSSTREMET");
	}	//	getICMSSTREMETTax

	/**
	 *  Retorno o valor do ICMS
	 *
	 *  @return	BigDecimal	Valor ICMS
	 */
	public BigDecimal getICMSAmt()
	{
		return getTaxAmt("ICMS");
	}	//	getICMSAmt

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
	 *  Retorno o valor da Redução da Base de ICMS
	 *
	 *  @return	BigDecimal	Redução da Base de ICMS
	 */
	public BigDecimal getICMSBaseReduction()
	{
		return getTaxBaseReduction("ICMS");
	}	//	getICMSBaseReduction

	/**
	 *  Retorno a alíquota de ICMS
	 *
	 *  @return	BigDecimal	Alíquota ICMS
	 */
	public BigDecimal getICMSRate()
	{
		return getTaxRate("ICMS");
	}	//	getICMSRate
	
	/**
	 *  Retorno o valor do ICMS EFETIVO
	 *
	 *  @return	BigDecimal	Valor ICMS EFETIVO
	 */
	public BigDecimal getICMSEfetAmt()
	{
		return getTaxAmt("ICMSEFET");
	}	//	getICMSAmt

	/**
	 *  Retorno o valor da Base de ICMS EFETIVO
	 *
	 *  @return	BigDecimal	Base ICMS EFETIVO
	 */
	public BigDecimal getICMSEfetBase()
	{
		return getTaxBaseAmt("ICMSEFET");
	}	//	getICMSBase

	/**
	 *  Retorno o valor da Redução da Base de ICMS EFETIVO
	 *
	 *  @return	BigDecimal	Redução da Base de ICMS EFETIVO
	 */
	public BigDecimal getICMSEfetBaseReduction()
	{
		return getTaxBaseReduction("ICMSEFET");
	}	//	getICMSBaseReduction

	/**
	 *  Retorno a alíquota de ICMS EFETIVO
	 *
	 *  @return	BigDecimal	Alíquota ICMS EFETIVO
	 */
	public BigDecimal getICMSEfetRate()
	{
		return getTaxRate("ICMSEFET");
	}	//	getICMSRate
	
	/**
	 *  Retorno a LBR_NFLineTax do ICMS EFETIVO
	 *
	 *  @return	LBR_NFLineTax
	 */
	public X_LBR_NFLineTax getICMSEfetTax()
	{
		return getTax("ICMSEFET");
	}	//	getICMSTax
	
	/**
	 *  Retorno a LBR_NFLineTax do FCP
	 *
	 *  @return	LBR_NFLineTax
	 */
	public X_LBR_NFLineTax getFCPTaxST()
	{
		return getTax("FCPST");
	}	//	getFCPTax
	
	/**
	 *  Retorno a LBR_NFLineTax do FCP
	 *
	 *  @return	LBR_NFLineTax
	 */
	public X_LBR_NFLineTax getFCPTax()
	{
		return getTax("FCP");
	}	//	getFCPTax
	
	/**
	 *  Retorno o valor da Base de FCP
	 *
	 *  @return	BigDecimal	Base FCP
	 */
	public BigDecimal getFCPBase()
	{
		return getTaxBaseAmt("FCP");
	}	//	getFCPBase

	/**
	 *  Retorno o valor do FCP
	 *
	 *  @return	BigDecimal	Valor FCP
	 */
	public BigDecimal getFCPAmt()
	{
		return getTaxAmt("FCP");
	}	//	getFCPAmt


	/**
	 *  Retorno o valor da Redução da Base de FCP
	 *
	 *  @return	BigDecimal	Redução da Base de FCP
	 */
	public BigDecimal getFCPBaseReduction()
	{
		return getTaxBaseReduction("FCP");
	}	//	getFCPBaseReduction

	/**
	 *  Retorno a alíquota de FCP
	 *
	 *  @return	BigDecimal	Alíquota FCP
	 */
	public BigDecimal getFCPRate()
	{
		return getTaxRate("FCP");
	}	//	getFCPRate
	
	/**
	 *  Retorno a LBR_NFLineTax do IPI
	 *
	 *  @return	LBR_NFLineTax
	 */
	public X_LBR_NFLineTax getIPITax()
	{
		return getTax("IPI");
	}	//	getIPITax

	/**
	 *  Retorno a LBR_NFLineTax do II
	 *
	 *  @return	LBR_NFLineTax
	 */
	public X_LBR_NFLineTax getIITax()
	{
		return getTax("II");
	}	//	getIITax

	/**
	 *  Retorno a LBR_NFLineTax do PIS
	 *
	 *  @return	LBR_NFLineTax
	 */
	public X_LBR_NFLineTax getPISTax()
	{
		return getTax("PIS");
	}	//	getPISTax

	/**
	 *  Retorno a LBR_NFLineTax do COFINS
	 *
	 *  @return	LBR_NFLineTax
	 */
	public X_LBR_NFLineTax getCOFINSTax()
	{
		return getTax("COFINS");
	}	//	getCOFINSTax

	/**
	 *  Retorno o valor do IPI
	 *
	 *  @return	BigDecimal	Valor IPI
	 */
	public BigDecimal getIPIAmt()
	{
		return getTaxAmt("IPI");
	}	//	getIPIAmt

	/**
	 *  Retorno o valor da Base de IPI
	 *
	 *  @return	BigDecimal	Base IPI
	 */
	public BigDecimal getIPIBase()
	{
		return getTaxBaseAmt("IPI");
	}	//	getIPIBase

	/**
	 *  Retorno a alíquota de IPI
	 *
	 *  @return	BigDecimal	Alíquota IPI
	 */
	public BigDecimal getIPIRate()
	{
		return getTaxRate("IPI");
	}	//	getIPIRate
	
	/**
	 *  Retorno a LBR_NFLineTax do ISS
	 *
	 *  @return	LBR_NFLineTax
	 */
	public X_LBR_NFLineTax getISSTax()
	{
		return getTax("ISS");
	}	//	getCOFINSTax
	
	/**
	 *  Retorno o valor do ISS
	 *
	 *  @return	BigDecimal	Valor ISS
	 */
	public BigDecimal getISSAmt()
	{
		return getTaxAmt("ISS");
	}	//	getIPIAmt
	
	/**
	 *  Retorno o valor da Base de ISS
	 *
	 *  @return	BigDecimal	Base ISS
	 */
	public BigDecimal getISSBase()
	{
		return getTaxBaseAmt("ISS");
	}	//	getIPIBase

	/**
	 *  Retorno a alíquota de ISS
	 *
	 *  @return	BigDecimal	Alíquota ISS
	 */
	public BigDecimal getISSRate()
	{
		return getTaxRate("ISS");
	}	//	getIPIRate
	
	/**
	 *  Retorno a LBR_NFLineTax do PISSERV
	 *
	 *  @return	LBR_NFLineTax
	 */
	public X_LBR_NFLineTax getPISSERVTax()
	{
		return getTax("PISSERV");
	}	//	getCOFINSTax
	
	/**
	 *  Retorno o valor do ISS
	 *
	 *  @return	BigDecimal	Valor PISSERV
	 */
	public BigDecimal getPISSERVAmt()
	{
		return getTaxAmt("PISSERV");
	}	//	getIPIAmt
	
	/**
	 *  Retorno o valor da Base de PISSERV
	 *
	 *  @return	BigDecimal	Base PISSERV
	 */
	public BigDecimal getPISSERVBase()
	{
		return getTaxBaseAmt("PISSERV");
	}	//	getIPIBase

	/**
	 *  Retorno a alíquota de PISSERV
	 *
	 *  @return	BigDecimal	Alíquota PISSERV
	 */
	public BigDecimal getPISSERVRate()
	{
		return getTaxRate("PISSERV");
	}	//	getIPIRate
	
	/**
	 *  Retorno a LBR_NFLineTax do COFINSSERV
	 *
	 *  @return	LBR_NFLineTax
	 */
	public X_LBR_NFLineTax getCOFINSSERVTax()
	{
		return getTax("COFINSSERV");
	}	//	getCOFINSTax
	
	/**
	 *  Retorno o valor do COFINSSERV
	 *
	 *  @return	BigDecimal	Valor COFINSSERV
	 */
	public BigDecimal getCOFINSSERVAmt()
	{
		return getTaxAmt("COFINSSERV");
	}	//	getIPIAmt
	
	/**
	 *  Retorno o valor da Base de COFINSSERV
	 *
	 *  @return	BigDecimal	Base COFINSSERV
	 */
	public BigDecimal getCOFINSSERVBase()
	{
		return getTaxBaseAmt("COFINSSERV");
	}	//	getIPIBase

	/**
	 *  Retorno a alíquota de COFINSSERV
	 *
	 *  @return	BigDecimal	Alíquota COFINSSERV
	 */
	public BigDecimal getCOFINSSERVRate()
	{
		return getTaxRate("COFINSSERV");
	}	//	getIPIRate
	
	
	
	/***	New Class	***/
	
	
	/**
	 * 		Define os valores referentes a Linha da Fatura
	 * 	
	 * 	@param iLine
	 */
	public void setInvoiceLine (MInvoiceLine iLine)
	{
		I_W_C_InvoiceLine iLineW = POWrapper.create (iLine, I_W_C_InvoiceLine.class);
		
		//	IDs
		setC_InvoiceLine_ID(iLine.getC_InvoiceLine_ID());
		if (iLine.getC_Charge_ID()>0)
			setProduct ((MCharge)iLine.getC_Charge());
		else
		{
			MProduct product = iLine.getProduct();
			setProduct (product);
			
			Map<Integer, BigDecimal> attributes = new  HashMap<Integer, BigDecimal>();
			if (iLine.getM_AttributeSetInstance_ID() > 0)
				attributes.put(iLine.getM_AttributeSetInstance_ID(), iLine.getQtyInvoiced());
			
			//	Set Attibutes
			setAttributes(product, attributes);
		}
		
		//  Seguro
		setlbr_InsuranceAmt(iLineW.getlbr_InsuranceAmt());
		
		//	Frete
		setFreightAmt(iLineW.getFreightAmt());
		
		//  Outras Despesas Acessórias
		setLBR_OtherChargesAmt(iLineW.getLBR_OtherChargesAmt());
		
		if (iLineW.getLBR_ADILine_ID() > 0)
		{
			MLBRADILine adil = new MLBRADILine (getCtx(), iLineW.getLBR_ADILine_ID(), get_TrxName());
			MLBRDI di = adil.getParent().getParent();
			//
			X_LBR_NFDI nfdi = new Query (getCtx(), X_LBR_NFDI.Table_Name, "LBR_NotaFiscal_ID=? AND LBR_DI=?", get_TrxName())
				.setParameters(getLBR_NotaFiscal_ID(), TextUtil.toNumeric(di.getDocumentNo())).first();
			
			if (nfdi == null)
			{
				nfdi = new X_LBR_NFDI (getCtx(), 0, get_TrxName());
				nfdi.setLBR_NotaFiscal_ID(getLBR_NotaFiscal_ID());
				nfdi.setlbr_DI(TextUtil.toNumeric (di.getDocumentNo()));
				nfdi.setDateTrx(di.getDateTrx());
				nfdi.setlbr_DataDesemb(di.getDateDoc());
				nfdi.setlbr_LocDesemb(di.getlbr_CustomSite());
				if (di.getC_Region_ID() > 0)
					nfdi.setlbr_BPRegion(di.getC_Region().getName());
				nfdi.setlbr_CodExportador(di.getBPartnerValue());
				nfdi.save();
			}
			setLBR_NFDI_ID(nfdi.getLBR_NFDI_ID());
			setManufacturer(di.getBPartnerValue());
			setlbr_NumAdicao(adil.getParent().getSeqNo());
			setlbr_NumSeqItem(adil.getSeqNo());
		}
		
		setC_UOM_ID(iLine.getC_UOM_ID());
		setLBR_CFOP_ID(iLineW.getLBR_CFOP_ID());
		
		//	Impressão dos Atributos
		if (iLine.getM_AttributeSetInstance_ID()>0)
		{
			String serNo = iLine.getM_AttributeSetInstance().getSerNo();
			String lot = iLine.getM_AttributeSetInstance().getLot();
			Timestamp guaranteeDate = iLine.getM_AttributeSetInstance().getGuaranteeDate();

			//	Número de Série
			if (serNo != null
					&& MSysConfig.getBooleanValue(SysConfig.LBR_PRINT_SERIALNUMBER_NF, true, getAD_Client_ID()))
				appendDescription("Núm. de Série: " + serNo);
		
			//	Lote
			if (lot != null
					&& MSysConfig.getBooleanValue(SysConfig.LBR_PRINT_LOT_NF, false, getAD_Client_ID()))
				appendDescription("Lote: " + lot);
			
			//	Vencimento
			if (guaranteeDate != null
					&& MSysConfig.getBooleanValue(SysConfig.LBR_PRINT_EXPIRE_NF, false, getAD_Client_ID()))
				appendDescription ("Vencto: " + TextUtil.timeToString (guaranteeDate, "dd/MM/yyyy"));
		}
		
		//	Impressão do Pedido de Referencia e Item (xPed e nItemPed)
		if (MSysConfig.getBooleanValue(SysConfig.LBR_PRINT_XPED_NF, true, getAD_Client_ID()))
		{
			//	Linha do Pedido
			MOrderLine oLine = (MOrderLine) iLine.getC_OrderLine();
			
			String description = "";
			
			//	Pedido de Referência
			if (!oLine.get_ValueAsString("POReference").isEmpty())
				description = description + "Pedido de Referência: " + oLine.get_ValueAsString("POReference");

			//	Item do Pedido
			if (!oLine.get_ValueAsString("LBR_PORef_Item").isEmpty())
				description = description + " - Item: " + oLine.get_ValueAsString("LBR_PORef_Item");	
			
			appendDescription(description);
		}
		
		//	Impostos
		MLBRTax tax = new MLBRTax (getCtx(), iLineW.getLBR_Tax_ID(), get_TrxName());
				
		for (MLBRTaxLine tl : tax.getLines())
		{
			int Child_Tax_ID = tl.getChild_Tax_ID (iLineW.getC_Tax_ID());
			
			//	MVA - Margem de Valor Agregado
			if (MLBRTax.TAX_MVA == tl.getLBR_TaxName_ID())
				setLBR_VAM (tl.getlbr_TaxRate());
			
			if (Child_Tax_ID < 1)
				continue;
			
			if (!tl.islbr_PostTax())
			{
				// Devido ao calculo do ICMS Substituto, ICMSST com a Tag Contabilidade Desmarcada, Tag Preço Inclui Imposto Marcada
				// e o Status for 60 ou 70 e o ICMS Substituto for diferente de Zero, adicionar o ICMSST na Linha
				String status = new MLBRTaxStatus (Env.getCtx(), tl.getLBR_TaxStatus_ID(), null).getTaxStatus(isSOTrx());
				if (MLBRTaxName.TAX_ICMSST != tl.getLBR_TaxName_ID() && !isSOTrx()
						&& !"60".equals(status) && !"70".equals(status) && !tl.isTaxIncluded()
						&& BigDecimal.ZERO.compareTo(tl.getLBR_ICMSSubstituto()) == 0)
					continue;
				else
				{
					if (MLBRTaxName.TAX_ICMSST == tl.getLBR_TaxName_ID()
							&& MSysConfig.getBooleanValue(SysConfig.LBR_PRINT_ICMS_SUBSTITUTE_NF, true, getAD_Client_ID()))
					{
						if (BigDecimal.ZERO.compareTo(tl.getlbr_TaxBaseAmt()) != 0)
							appendDescription("BC ST: R$" + tl.getlbr_TaxBaseAmt().setScale(2, RoundingMode.HALF_UP));
						
						if (BigDecimal.ZERO.compareTo(tl.getlbr_TaxAmt()) != 0)
							appendDescription("ICMSST: R$" + tl.getlbr_TaxAmt().setScale(2, RoundingMode.HALF_UP));
						
						if (BigDecimal.ZERO.compareTo(tl.getLBR_ICMSSubstituto()) != 0)
							appendDescription("ICMS Substituto: R$" + tl.getLBR_ICMSSubstituto().setScale(2, RoundingMode.HALF_UP));
					}
				}
			}
			
			I_W_C_Tax taxAD = POWrapper.create(new MTax (getCtx(), Child_Tax_ID, get_TrxName()), I_W_C_Tax.class);
			
			if (taxAD.getLBR_TaxGroup_ID() < 1)
				continue;
			
			MLBRNFLineTax nfLineTax = new MLBRNFLineTax (this);
			nfLineTax.setTaxes (tl);
			nfLineTax.setLBR_TaxGroup_ID(taxAD.getLBR_TaxGroup_ID());
			nfLineTax.save();
		}
		
		//	Valores
		setQty(iLine.getQtyEntered());
		
		//	References
		if (iLine.getC_OrderLine_ID() > 0)
			setPOReference (POWrapper.create (new MOrderLine (iLine.getCtx(), iLine.getC_OrderLine_ID(), get_TrxName()), I_W_C_OrderLine.class));
		
		boolean includeDIFAL = MSysConfig.getBooleanValue(SysConfig.LBR_ADD_DIFAL_PROD, true, getAD_Client_ID(), getAD_Org_ID());
		boolean isFOB = getParent().getC_Invoice_ID() > 0 ? !getParent().getC_Invoice().isTaxIncluded() : false;
		setPrice(iLine.getParent().getC_Currency_ID(), iLine.getPriceEntered(), iLine.getPriceList(), includeDIFAL, isFOB);
	}	//	setInvoiceLine
	
	/**
	 * 		Define os valores referentes a Linha da Movimentação de Estoque
	 * 	
	 * 	@param line
	 */
	public void setMovementLine (MMovementLine line, int p_LBR_CFOP_ID, int p_LBR_Tax_ID, int p_M_CostElement_ID)
	{
		//	Product
		MProduct product = line.getProduct();
		setProduct (product);
		
		MMovement mov = (MMovement) line.getM_Movement();
		MLBRProductionGroup pg = new MLBRProductionGroup (Env.getCtx(), mov.get_ValueAsInt("LBR_ProductionGroup_ID"), line.get_TrxName());
		
		Timestamp dateOrdered = null;
		
		if (pg != null && pg.getLBR_ProductionGroup_ID() > 0)
			dateOrdered = pg.getDateOrdered();
		else
			dateOrdered = mov.getMovementDate();
		
		Map<Integer, BigDecimal> attributes = new  HashMap<Integer, BigDecimal>();
		if (line.getM_AttributeSetInstance_ID() > 0)
			attributes.put(line.getM_AttributeSetInstance_ID(), line.getMovementQty());
		
		//	Set Attibutes
		setAttributes(product, attributes);
		
		//  Seguro
		setlbr_InsuranceAmt(Env.ZERO);
		
		//	Frete
		setFreightAmt(Env.ZERO);
		
		//  Outras Despesas Acessórias
		setLBR_OtherChargesAmt(Env.ZERO);
		
		setC_UOM_ID (line.getProduct().getC_UOM_ID());
		setLBR_CFOP_ID (p_LBR_CFOP_ID);
		
		//	Número de Série
		if (line.getM_AttributeSetInstance_ID()>0 
				&& line.getM_AttributeSetInstance().getSerNo() != null
				&& (MSysConfig.getBooleanValue(SysConfig.LBR_PRINT_SERIALNUMBER_NF, true, getAD_Client_ID())))
			appendDescription("Núm. de Série: " + line.getM_AttributeSetInstance().getSerNo());
		
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
				
				MLBRNFLineTax nfLineTax = new MLBRNFLineTax (this);
				nfLineTax.setTaxes (tl);
				nfLineTax.setLBR_TaxGroup_ID(taxAD.getLBR_TaxGroup_ID());
				nfLineTax.save();
			}
		}
		
		//	Valores
		setQty (line.getMovementQty());
		
		//	Cost
		MAcctSchema as = MClient.get (line.getCtx ()).getAcctSchema();
		MCost mCost = null;
		BigDecimal costPrice = Env.ZERO;
		
		String where = " M_Product_ID=? AND LBR_AverageCost_ID IN " + 
				"(SELECT LBR_AverageCost_ID FROM LBR_AverageCost WHERE C_Period_ID=?)";
		
		//	Buscar Custo do Período
		MLBRAverageCostLine acl = new Query (Env.getCtx(), MLBRAverageCostLine.Table_Name, where, get_TrxName())
									.setParameters(product.getM_Product_ID(), MPeriod.get(Env.getCtx(), dateOrdered, getAD_Org_ID(), get_TrxName()).getC_Period_ID())
									.first();
		
		if (acl != null && acl.getCurrentCostPrice().compareTo(BigDecimal.ZERO) > 0)
		{
			costPrice = acl.getCurrentCostPrice();
		}
		else
		{
			// Se Custo do Período não identificado, buscar custo Atual.		
			mCost = MCost.get (line.getProduct(), line.getM_AttributeSetInstance_ID(), as, line.getAD_Org_ID(), p_M_CostElement_ID, line.get_TrxName());
			
			if (mCost != null && mCost.getCurrentCostPrice().compareTo(BigDecimal.ZERO) > 0)
				costPrice = mCost.getCurrentCostPrice();
			else
			{
				//	Buscar da Organização * se não houver Custo na Organização
				mCost = MCost.get (line.getProduct(), line.getM_AttributeSetInstance_ID(), as, 0, p_M_CostElement_ID, line.get_TrxName());
				costPrice = mCost.getCurrentCostPrice();
			}
		}			
		
		//	Cost Price
		setPrice(MLBRNotaFiscal.CURRENCY_BRL, costPrice, costPrice , false, false);
	}	//	setMovementLine
	
	/**
	 * 		Define os valores referentes a Linha da Fatura
	 * 	
	 * 	@param oLine
	 */
	public void setOrderLine (MOrderLine oLine, boolean isDescription)
	{
		I_W_C_OrderLine oLineW = POWrapper.create (oLine, I_W_C_OrderLine.class);
		
		if (oLine.getC_Charge_ID()>0)
			setProduct ((MCharge)oLine.getC_Charge());
		else
		{
			MProduct product = oLine.getProduct();
			setProduct (product);
			
			Map<Integer, BigDecimal> attributes = new  HashMap<Integer, BigDecimal>();
			if (oLine.getM_AttributeSetInstance_ID() > 0)
				attributes.put(oLine.getM_AttributeSetInstance_ID(), oLine.getQtyInvoiced());
			
			//	Set Attibutes
			setAttributes(product, attributes);
		}
		
		if (!isDescription)
		{
			setC_UOM_ID(oLine.getC_UOM_ID());
			setLBR_CFOP_ID(oLineW.getLBR_CFOP_ID());
			
			//  Seguro
			setlbr_InsuranceAmt(oLineW.getlbr_InsuranceAmt());
			
			//	Frete
			setFreightAmt(oLineW.getFreightAmt());
			
		    //  Outras Despesas Acessórias
			setLBR_OtherChargesAmt(oLineW.getLBR_OtherChargesAmt());
			
			if (oLineW.getLBR_ADILine_ID() > 0)
			{
				MLBRADILine adil = new MLBRADILine (getCtx(), oLineW.getLBR_ADILine_ID(), get_TrxName());
				MLBRDI di = adil.getParent().getParent();
				//
				X_LBR_NFDI nfdi = new Query (getCtx(), X_LBR_NFDI.Table_Name, "LBR_NotaFiscal_ID=? AND LBR_DI=?", get_TrxName())
					.setParameters(getLBR_NotaFiscal_ID(), di.getDocumentNo()).first();
				
				if (nfdi == null)
				{
					nfdi = new X_LBR_NFDI (getCtx(), 0, get_TrxName());
					nfdi.setLBR_NotaFiscal_ID(getLBR_NotaFiscal_ID());
					nfdi.setlbr_DI(di.getDocumentNo());
					nfdi.setDateTrx(di.getDateTrx());
					nfdi.setlbr_DataDesemb(di.getDateDoc());
					nfdi.setlbr_LocDesemb(di.getlbr_CustomSite());
					if (di.getC_Region_ID() > 0)
						nfdi.setlbr_BPRegion(di.getC_Region().getName());
					nfdi.setlbr_CodExportador(di.getBPartnerValue());
					nfdi.save();
				}
				setLBR_NFDI_ID(nfdi.getLBR_NFDI_ID());
				setManufacturer(di.getBPartnerValue());
				setlbr_NumAdicao(adil.getParent().getSeqNo());
				setlbr_NumSeqItem(adil.getSeqNo());
			}
			
			//	FCI
			if (getlbr_CFOPName() != null && getlbr_CFOPName().length() > 1
					//	2 - Entrada de fora do Estado
					//	3 - Entrada Estrangeira
					//	6 - Saída para fora do Estado
					//	7 - Saída para o Estrageiro
					&& "2367".indexOf (getlbr_CFOPName().substring (0, 1)) != -1
					//	3 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 40% e inferior ou igual a 70%
					//	5 - Nacional, mercadoria ou bem com Conteúdo de Importação inferior ou igual a 40%
					//	8 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 70%
					&& "358".indexOf (getlbr_ProductSource()) != -1)
				setFCI();
			
			//	Número de Série
			if (oLine.getM_AttributeSetInstance_ID()>0 
					&& oLine.getM_AttributeSetInstance().getSerNo() != null
					&& (MSysConfig.getBooleanValue(SysConfig.LBR_PRINT_SERIALNUMBER_NF, true, getAD_Client_ID())))
				appendDescription("Núm. de Série: " + oLine.getM_AttributeSetInstance().getSerNo());
			
			//		Impostos
			MLBRTax tax = new MLBRTax (getCtx(), oLineW.getLBR_Tax_ID(), get_TrxName());
					
			for (MLBRTaxLine tl : tax.getLines())
			{
				int Child_Tax_ID = tl.getChild_Tax_ID (oLineW.getC_Tax_ID());
				//
				if (!tl.islbr_PostTax() || Child_Tax_ID < 1)
					continue;
				
				I_W_C_Tax taxAD = POWrapper.create(new MTax (getCtx(), Child_Tax_ID, get_TrxName()), I_W_C_Tax.class);
				
				if (taxAD.getLBR_TaxGroup_ID() < 1)
					continue;
				
				MLBRNFLineTax nfLineTax = new MLBRNFLineTax (this);
				nfLineTax.setTaxes (tl);
				nfLineTax.setLBR_TaxGroup_ID(taxAD.getLBR_TaxGroup_ID());
				nfLineTax.save();
			}
			
			//	References
			setPOReference (oLineW);
			
			//	Valores
			setQty(oLine.getQtyEntered());
			boolean includeDIFAL = MSysConfig.getBooleanValue(SysConfig.LBR_ADD_DIFAL_PROD, true, getAD_Client_ID(), getAD_Org_ID());
			boolean isFOB = getParent().getC_Invoice_ID() > 0 ? !getParent().getC_Invoice().isTaxIncluded() : false;
			setPrice(oLine.getParent().getC_Currency_ID(), oLine.getPriceEntered(), oLine.getPriceList(), includeDIFAL, isFOB);
		}
	}	//	setOrderLine
	
	/**
	 * 		Define os valores referentes a Linha da Remessa
	 * 	
	 * 	@param oLine
	 */
	public void setInOutLine (MInOutLine iLine, boolean isDescription)
	{
		I_W_C_OrderLine oLineW = POWrapper.create (new MOrderLine(Env.getCtx(), iLine.getC_OrderLine_ID(), get_TrxName()), I_W_C_OrderLine.class);
		
		if (iLine.getC_Charge_ID()>0)
			setProduct ((MCharge)iLine.getC_Charge());
		else
		{
			MProduct product = iLine.getProduct();
			setProduct (product);
			
			Map<Integer, BigDecimal> attributes = new  HashMap<Integer, BigDecimal>();
			if (iLine.getM_AttributeSetInstance_ID() > 0)
				attributes.put(iLine.getM_AttributeSetInstance_ID(), iLine.getMovementQty());
			
			//	Set Attibutes
			setAttributes(product, attributes);
		}
		
		if (!isDescription)
		{
			setC_UOM_ID(iLine.getC_UOM_ID());
			setLBR_CFOP_ID(oLineW.getLBR_CFOP_ID());
			
			//	Impressão dos Atributos
			if (iLine.getM_AttributeSetInstance_ID()>0)
			{
				String serNo = iLine.getM_AttributeSetInstance().getSerNo();
				String lot = iLine.getM_AttributeSetInstance().getLot();
				Timestamp guaranteeDate = iLine.getM_AttributeSetInstance().getGuaranteeDate();

				//	Número de Série
				if (serNo != null
						&& MSysConfig.getBooleanValue(SysConfig.LBR_PRINT_SERIALNUMBER_NF, true, getAD_Client_ID()))
					appendDescription("Núm. de Série: " + serNo);
			
				//	Lote
				if (lot != null
						&& MSysConfig.getBooleanValue(SysConfig.LBR_PRINT_LOT_NF, false, getAD_Client_ID()))
					appendDescription("Lote: " + lot);
				
				//	Vencimento
				if (guaranteeDate != null
						&& MSysConfig.getBooleanValue(SysConfig.LBR_PRINT_EXPIRE_NF, false, getAD_Client_ID()))
					appendDescription ("Vencto: " + TextUtil.timeToString (guaranteeDate, "dd/MM/yyyy"));
			}
			
			//	Impressão do Pedido de Referencia e Item (xPed e nItemPed)
			if (MSysConfig.getBooleanValue(SysConfig.LBR_PRINT_XPED_NF, true, getAD_Client_ID()))
			{
				//	Linha do Pedido
				MOrderLine oLine = (MOrderLine) iLine.getC_OrderLine();
				
				String description = "";
				
				//	Pedido de Referência
				if (!oLine.get_ValueAsString("POReference").isEmpty())
					description = description + "Pedido de Referência: " + oLine.get_ValueAsString("POReference");

				//	Item do Pedido
				if (!oLine.get_ValueAsString("LBR_PORef_Item").isEmpty())
					description = description + " - Item: " + oLine.get_ValueAsString("LBR_PORef_Item");	
				
				appendDescription(description);
			}
			
			//		Impostos
			MLBRTax tax = new MLBRTax (getCtx(), oLineW.getLBR_Tax_ID(), get_TrxName());
					
			for (MLBRTaxLine tl : tax.getLines())
			{
				int Child_Tax_ID = tl.getChild_Tax_ID (oLineW.getC_Tax_ID());
				//
				if (!tl.islbr_PostTax() || Child_Tax_ID < 1)
					continue;
				
				I_W_C_Tax taxAD = POWrapper.create(new MTax (getCtx(), Child_Tax_ID, get_TrxName()), I_W_C_Tax.class);
				
				if (taxAD.getLBR_TaxGroup_ID() < 1)
					continue;
				
				MLBRNFLineTax nfLineTax = new MLBRNFLineTax (this);
				nfLineTax.setTaxes (tl);
				nfLineTax.setLBR_TaxGroup_ID(taxAD.getLBR_TaxGroup_ID());
				nfLineTax.save();
			}
			
			//	Valores
			setQty(iLine.getQtyEntered());
			boolean includeDIFAL = MSysConfig.getBooleanValue(SysConfig.LBR_ADD_DIFAL_PROD, true, getAD_Client_ID(), getAD_Org_ID());
			boolean isFOB = getParent().getC_Invoice_ID() > 0 ? !getParent().getC_Invoice().isTaxIncluded() : false;
			setPrice(iLine.getParent().getC_Currency_ID(), oLineW.getPriceEntered(), oLineW.getPriceList(), includeDIFAL, isFOB);
		}
	}	//	setInOutLine
	
	/**
	 * 	Set PO References
	 * 	@param ol
	 */
	private void setPOReference (I_W_C_OrderLine ol)
	{
		if (ol == null)
			return;
		
		//	Referência do Cabeçalho
		if (ol.getPOReference() == null)
			setPOReference(ol.getC_Order().getPOReference());
		
		//	Referência da Linha
		else
			setPOReference(ol.getPOReference());
		
		//	Referência do Item
		setLBR_PORef_Item(ol.getLBR_PORef_Item());
	}	//	setPOReference

	/**
	 * 		Define os preços
	 * 		Define o valor do Desconto
	 * 
	 * 	@param 	Price
	 * 	@param	Price List
	 */
	public void setPrice (int C_Currency_ID, BigDecimal price, BigDecimal priceList)
	{
		setPrice (C_Currency_ID, price, priceList, false, false);
	}	//	setPrice
	
	/**
	 * 		Define os preços
	 * 		Define o valor do Desconto
	 * 
	 * 	@param 	Price
	 * 	@param	Price List
	 * 	@param  Include DIFAL
	 */
	public void setPrice (int C_Currency_ID, BigDecimal price, BigDecimal priceList, boolean includeDIFAL, boolean isFOB)
	{
		//	Conversão
		if (C_Currency_ID != MLBRNotaFiscal.CURRENCY_BRL)
		{
			price = MConversionRate.convert(Env.getCtx(), price, 
					C_Currency_ID, MLBRNotaFiscal.CURRENCY_BRL, getAD_Client_ID(), getAD_Org_ID());
			priceList = MConversionRate.convert(Env.getCtx(), priceList, 
					C_Currency_ID, MLBRNotaFiscal.CURRENCY_BRL, getAD_Client_ID(), getAD_Org_ID());
		}

		//	Incluí o ICMS do Diferencial da Alíquota na NF
		BigDecimal amtDIFAL = Env.ZERO;
		if (includeDIFAL)
			amtDIFAL = getTaxAmt("ICMSDIFAL").add(getTaxAmt("ICMSDIFALORIG")).add(getTaxAmt("FCP")).divide(getQty(), 2, RoundingMode.HALF_UP);
		
		//	Verifica o preço após a conversão para BRL
		if (price == null || priceList == null)
			throw new AdempiereException ("Impossível converter o valor fatura para Real (BRL) na geração da NF");
		
		//	Ajuste do FOB para NF de Importação
		if (MLBRNotaFiscal.LBR_TRANSACTIONTYPE_Import.equals(getParent().getlbr_TransactionType())
				&& !getParent().isSOTrx() && isFOB)
		{
			//	Freight
			BigDecimal freightAmt = getFreightAmt();
			if (freightAmt == null)
				freightAmt = Env.ZERO;
			else
				freightAmt = freightAmt.divide(getQty(), 17, RoundingMode.HALF_UP);
			
			//	Imposto de Importação
			BigDecimal iiAmt = getTaxAmt("II");
			if (iiAmt == null)
				iiAmt = Env.ZERO;
			else
				iiAmt = iiAmt.divide(getQty(), 17, RoundingMode.HALF_UP);
			
			//	Ajusta o preço unitário
			price = iiAmt.add(freightAmt).add(price);
			
			//	Ajusta o preço de lista
			priceList = iiAmt.add(freightAmt).add(priceList);
		}
		
		super.setPriceListAmt(amtDIFAL.add(priceList));
		
		if (getParent().isDiscountPrinted() && priceList.compareTo(price)==1)
		{
		    //  Desconto por Linha
			setDiscount(amtDIFAL.add(price), amtDIFAL.add(priceList));
			super.setPrice(amtDIFAL.add(priceList));	
		}
		else
			super.setPrice(amtDIFAL.add(price));
		//
		super.setLineTotalAmt(getPrice().multiply(getQty()));
	}	//	setPrice
	
	/**
	 * 	Define o desconto por Linha da Nota Fiscal
	 */
	private void setDiscount(BigDecimal price, BigDecimal priceList)
	{	
		if (getParent().isDiscountPrinted())
			setDiscountAmt(priceList.subtract(price).multiply(getQty()));
		else
			setDiscountAmt(Env.ZERO);
	}	//	setDiscount
	
	/**
	 * 		Define os atributos do produto
	 * 	@param Product
	 */
	public void setAttributes (MProduct product, Map<Integer, BigDecimal> attributes)
	{
		//	Nothing to do
		if (product == null || product.getM_Product_ID() < 1)
			return;
		
		I_W_M_Product productW = POWrapper.create (product, I_W_M_Product.class);
		
		//	Attributes
		String attributeType = productW.getLBR_AttributeType();
		if (attributeType == null || attributeType.isEmpty())
			return;
		
		//	Product static attributes
		MAttributeSetInstance asiProd = null;
		if (product.getM_AttributeSetInstance_ID() > 0)
			asiProd = new MAttributeSetInstance (getCtx(), product.getM_AttributeSetInstance_ID(), get_TrxName());
		
		//	Intances attributes found
		if (!attributes.isEmpty())
		{
			boolean firstMA = true;
			
			//	Scan all Attributes
			for (Integer M_AttributeSetInstance_ID : attributes.keySet())
			{
				MAttributeSetInstance asi = new MAttributeSetInstance (getCtx(), M_AttributeSetInstance_ID, get_TrxName());
				
				//	Create 
				BigDecimal qty = attributes.get (M_AttributeSetInstance_ID);
				createMA (attributeType, asi, asiProd, qty);
				
				if (firstMA)
				{
					firstMA = false;
					
					//	Guns can have multiple records, all other that doesn't request tracking should have only one record
					if (!attributeType.endsWith (MATCH_GUN) 
							&& !attributeType.startsWith(MATCH_TRACKING))
						break;
					
					//	
					if (!attributeType.endsWith(MATCH_GUN) 
							&& !attributeType.endsWith(MATCH_VEHICLE))
					{
						attributeType = LBR_ATTRIBUTETYPE_Tracking;
						//
						createMA (attributeType, asi, asiProd, qty);
					}
				}
				
			}
		}
		
		//	Empty instance attributes
		else if (asiProd != null)
			createMA (attributeType, null, asiProd, null);
	}	//	setProduct
	
	/**
	 * 	Create Material Attributes
	 * 
	 * @param attributeType
	 * @param asi
	 * @param asiProd
	 * @return
	 */
	private boolean createMA (String attributeType, MAttributeSetInstance asi, MAttributeSetInstance asiProd, BigDecimal qty)
	{
		MLBRNFLineMA ma = new MLBRNFLineMA (getCtx(), 0, get_TrxName());
		ma.setLBR_NotaFiscalLine_ID(getLBR_NotaFiscalLine_ID());
		ma.setLBR_AttributeType(attributeType);
		if (qty != null)
			ma.setQty(qty);
		if (asiProd != null)
			ma.setASI(asiProd, false);
		if (asi != null)
		{
			ma.setASI(asi, true);
			ma.setM_AttributeSetInstance_ID(asi.getM_AttributeSetInstance_ID());
		}
		return ma.save();
	}	//	createMA
	
	/**
	 * 		Define qual é o produto
	 * 	@param Product
	 */
	public void setProduct (MProduct product)
	{
		if (product == null)
		{
			setlbr_IsService(true);
			return;
		}
		//
		I_W_M_Product productW = POWrapper.create(product, I_W_M_Product.class);
		//
		setM_Product_ID (product.getM_Product_ID());
		
		if (productW.getLBR_LegalProductDescription()!=null)
			setProductName (productW.getLBR_LegalProductDescription());
		else
			setProductName (product.getName());
		
		setProductValue (product.getValue());
		String vendorProductNo = LBRUtils.getVendorProductNo (product, getParent().getC_BPartner_ID());
		setVendorProductNo(vendorProductNo);
		
		if (vendorProductNo != null
				&& !vendorProductNo.isEmpty()
				&& (MSysConfig.getBooleanValue(SysConfig.LBR_PRINT_BP_PRODUCT_NO_NF, true, getAD_Client_ID())))
		{
			appendDescription ("Código Interno: " + vendorProductNo);
		}
		
		if (MProduct.PRODUCTTYPE_Service.equals(productW.getProductType())
				|| MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalDeServiçosEletrônicaRPS.equals(getParent().getlbr_NFModel()))
			setlbr_IsService(true);
		//
		setLBR_NCM_ID(productW.getLBR_NCM_ID());
		setLBR_CEST_ID(productW.getLBR_CEST_ID());
		//
		setlbr_ProductSource(productW.getlbr_ProductSource());
		setLBR_AttributeType(productW.getLBR_AttributeType());
		
		//	NT2017.001 - v1.20
		String upc = TextUtil.toNumeric (product.getUPC ());
		if (!upc.isEmpty ())
			setUPC (upc);
		else
			setUPC ("SEM GTIN");
	}	//	setProduct

	public void appendDescription (String text)
	{
		String desc = getDescription();
		if (desc == null)
			desc = "";
		else if (!desc.trim().isEmpty())
			desc += ". ";
		setDescription(desc + text);
	}
	
	public void setProduct(MCharge charge)
	{
		
		setlbr_IsService(true);
		//
		setProductName (charge.getName());
		setProductValue (charge.getName());
	}	//	setProduct
	
	/**	
	 * 	Ajusta a Unidade de Medida
	 */
	public void setC_UOM_ID (int C_UOM_ID)
	{
		if (C_UOM_ID > 0)
		{
			MUOM uom = MUOM.get(getCtx(), C_UOM_ID);
			setlbr_UOMName(uom.get_Translation(MUOM.COLUMNNAME_UOMSymbol));
		}
		else
			setlbr_UOMName(null);
		//
		super.setC_UOM_ID(C_UOM_ID);
	}	//	setC_UOM_ID
	
	/**	
	 * 	Ajusta a NCM
	 */
	public void setLBR_NCM_ID (int LBR_NCM_ID)
	{
		if (LBR_NCM_ID > 0)
		{
			MLBRNCM ncm = new MLBRNCM (getCtx(), LBR_NCM_ID, get_TrxName());
			setlbr_NCMName(ncm.getValue());
		}
		else
			setlbr_NCMName(null);
		//
		super.setLBR_NCM_ID(LBR_NCM_ID);
	}	//	setLBR_NCM_ID
	
	/**	
	 * 	Ajusta o CFOP
	 */
	public void setLBR_CFOP_ID (int LBR_CFOP_ID)
	{
		if (LBR_CFOP_ID > 0)
		{
			MLBRCFOP cfop = new MLBRCFOP (getCtx(), LBR_CFOP_ID, get_TrxName());
			setlbr_CFOPName(cfop.getValue());
		}
		else
			setlbr_CFOPName(null);
		//
		super.setLBR_CFOP_ID(LBR_CFOP_ID);
	}	//	setLBR_CFOP_ID
	
	/**
	 * 	Ajusta o valor do CEST
	 */
	@Override
	public void setLBR_CEST_ID (int LBR_CEST_ID)
	{
		if (LBR_CEST_ID > 0)
		{
			X_LBR_CEST cest = new X_LBR_CEST (getCtx(), LBR_CEST_ID, get_TrxName());
			setLBR_CESTName(cest.getValue());
		}
		else
			setLBR_CESTName(null);
		//
		super.setLBR_CEST_ID(LBR_CEST_ID);
	}	//	setLBR_CEST_ID
	
	/**
	 * 	Necessário para ajustar a precisão
	 * 		de casas decimais
	 */
	public void setPrice (BigDecimal Price)
	{
		if (Price == null)
			Price = Env.ZERO;
		//
		super.setPrice(Price.setScale(10, RoundingMode.HALF_UP));
	}	//	setPrice
	
	/**
	 * 	Necessário para ajustar a precisão
	 * 		de casas decimais
	 */
	public void setQty (BigDecimal Qty)
	{
		if (Qty == null)
			Qty = Env.ZERO;
		//
		super.setQty(Qty.setScale(4, RoundingMode.HALF_UP));
	}	//	setQty
	
	/**
	 * 	Executed before Delete operation.
	 *	@return true if record can be deleted
	 */
	protected boolean beforeDelete()
	{
		for (MLBRNFLineTax nflt : getTaxes())
		{
			nflt.deleteEx(true);
		}
		return true;
	}	//	beforeDelete
	
	/**
	 * 	Called before Save for Pre-Save Operation
	 * 	@param newRecord new record
	 *	@return true if record can be saved
	 */
	@Override
	protected boolean beforeSave(boolean newRecord)
	{
		//	Ajusta o valor do CFOP
		if ((newRecord || is_ValueChanged(COLUMNNAME_LBR_CFOP_ID)))
			setlbr_CFOPName(getLBR_CFOP_ID() > 0 ? getLBR_CFOP().getValue() : null);
		
		//	Ajusta o valor do NCM
		if ((newRecord || is_ValueChanged(COLUMNNAME_LBR_NCM_ID)))
			setlbr_NCMName(getLBR_NCM_ID() > 0 ? getLBR_NCM().getValue() : null);
		
		//	Ajusta o valor do CEST
		if ((newRecord || is_ValueChanged(COLUMNNAME_LBR_CEST_ID)))
			setLBR_CESTName(getLBR_CEST_ID() > 0 ? getLBR_CEST().getValue() : null);
		
		//	Ajusta o valor da UDM
		if ((newRecord || is_ValueChanged(COLUMNNAME_C_UOM_ID)))
		{
			if (getC_UOM_ID() > 0)
			{
				MUOM uom = MUOM.get(getCtx(), getC_UOM_ID());
				setlbr_UOMName(uom.get_Translation(MUOM.COLUMNNAME_UOMSymbol));
			}
			else
				setlbr_UOMName(null);
		}

		//	Valida o Tipo de Atributo
		if (!newRecord && is_ValueChanged (COLUMNNAME_LBR_AttributeType))	
		{
			String oldAttribute = (String) get_ValueOld (COLUMNNAME_LBR_AttributeType);
			String newAttribute = getLBR_AttributeType();

			//	Valor antigo atributo já estava preenchido
			if (oldAttribute != null && 
					//	Novo atributo ficou em branco
					(newAttribute == null || newAttribute.isEmpty() 
					//	ou o atributo é de uma categoria diferente
					|| !oldAttribute.endsWith (newAttribute.substring (1))))
			{
				//	Deve validar se já tem algum atributo preenchido
				int count = DB.getSQLValue (get_TrxName(), "SELECT COUNT(*) FROM LBR_NFLineMA WHERE LBR_NotaFiscalLine_ID=?", getLBR_NotaFiscalLine_ID());
				if (count > 0)
				{
					log.saveError ("Error", "Não é possível alterar o campo de Atributos, remova os atributos cadastrados primeiramente");
					return false;
				}
			}
			//	Update atributes
			for (MLBRNFLineMA att : getAttributes ())
			{
				att.setLBR_AttributeType (newAttribute);
				att.save();
			}
		}
		
		String description = getDescription();
		if (description != null)
			setDescription (description.trim());
		
		//	Valida o CNPJ do Fabricante
		String cnpjManuf = TextUtil.toNumeric (getLBR_CNPJManufacturer ());
		if (!cnpjManuf.isEmpty() && (cnpjManuf.length() != 14 || !ValidatorBPartner.validaCNPJ (cnpjManuf)))
		{
			log.saveError ("Error", Msg.parseTranslation (getCtx(), "@Invalid@ @LBR_CNPJManufacturer@"));
			return false;
		}
		
		//	Valida o código de benefício fiscal
		String benefitCode = getLBR_TaxBenefitCode();
		if (benefitCode != null
				&& !benefitCode.isEmpty()
				&& benefitCode.trim().length() != 10)
		{
			log.saveError ("Error", Msg.parseTranslation (getCtx(), "@Invalid@ @LBR_TaxBenefitCode@, o código precisa ter 10 dígitos"));
			return false;
		}
		
		return true;
	}	//	beforeSave
	
	/**
	 * 	Get NF Line Taxes
	 * 	@return MLBRNFLineTax[]
	 */
	public MLBRNFLineTax[] getTaxes()
	{
		MTable table = MTable.get(getCtx(), MLBRNFLineTax.Table_Name);
		Query query =  new Query(getCtx(), table, "LBR_NotaFiscalLine_ID=?", get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_NotaFiscalLine_ID()});

		List<MLBRNFLineTax> list = query.list();

		return list.toArray(new MLBRNFLineTax[list.size()]);
	}	//	getTaxes
	
	/**
	 * 	Is Sales Transaction
	 * 	@return
	 */
	public boolean isSOTrx ()
	{
		if (getParent() != null)
			return getParent().isSOTrx();
		//
		return true;
	}	//	isSOTrx
	
	/**
	 * 	Set FCI if exists
	 */
	public void setFCI ()
	{
		MLBRProductFCI fci = MLBRProductFCI.getActual (getM_Product_ID(), getAD_Org_ID(), getParent().getDateDoc(), get_TrxName());
		if (fci != null)
			setLBR_FCIValue (fci.getValue().toUpperCase());
	}	//	setFCI
	
	/**
	 * 	Get Parent
	 *	@return parent
	 */
	public MLBRNotaFiscal getParent()
	{
		if (m_parent == null)
			m_parent = new MLBRNotaFiscal (getCtx(), getLBR_NotaFiscal_ID(), get_TrxName());
		return m_parent;
	}	//	getParent
	
	/**
	 * 	Line has tracking information
	 * 	@return
	 */
	public boolean hasTracking ()
	{
		if (getLBR_AttributeType() != null && getLBR_AttributeType().startsWith("R"))
			return true;
		return false;
	}	//	hasTracking
	
	/**
	 * 	Get Tracking Records
	 * @return
	 */
	public List<MLBRNFLineMA> getTracking ()
	{
		String whereClause = COLUMNNAME_LBR_AttributeType+"=? AND "+COLUMNNAME_LBR_NotaFiscalLine_ID+"=?";
		List<MLBRNFLineMA> result = new Query (getCtx(), MLBRNFLineMA.Table_Name, whereClause, get_TrxName())
			.setParameters(LBR_ATTRIBUTETYPE_Tracking, getLBR_NotaFiscalLine_ID())
			.list();
		return result;
	}	//	getTracking
	
	/**
	 * 	Get Tracking Records
	 * @return
	 * @throws Exception 
	 */
	public MLBRNFLineMA getAttribute () throws Exception
	{
		List<MLBRNFLineMA> attributes = getAttributes();
		if (attributes.size() == 1)
			return attributes.get (0);
		if (attributes.size() > 1)
			throw new Exception ("Mais de um atributo encontrado para a linha da NF " + getLine());
		return null;
	}	//	getAttribute
	
	/**
	 * 	Get Tracking Records
	 * @return
	 */
	public List<MLBRNFLineMA> getAttributes ()
	{
		String attributeType = getLBR_AttributeType();
		if (attributeType == null || attributeType.length() != 3)
			return Collections.emptyList();
		
		//	Should match both X and R records
		attributeType = "_" + attributeType.substring (1);
		
		return getAttributes(attributeType);
	}
	
	/**
	 * 	Get Tracking Records
	 * @return
	 */
	public List<MLBRNFLineMA> getAttributes (String attributeType)
	{
		List<Object> params = new ArrayList<Object>();
		params.add(getLBR_NotaFiscalLine_ID());
		//
		String whereClause = COLUMNNAME_LBR_NotaFiscalLine_ID+"=?";
		//
		if (attributeType != null)
		{
			whereClause += " AND "+COLUMNNAME_LBR_AttributeType+" LIKE ?";
			params.add (attributeType);
		}
			
		List<MLBRNFLineMA> result = new Query (getCtx(), MLBRNFLineMA.Table_Name, whereClause, get_TrxName())
			.setParameters(params)
			.list();
		return result;
	}	//	getAttributes
}	//	MLBRNotaFiscalLine
