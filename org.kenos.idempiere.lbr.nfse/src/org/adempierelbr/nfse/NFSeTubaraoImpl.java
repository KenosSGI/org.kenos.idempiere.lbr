package org.adempierelbr.nfse;

import java.io.File;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.List;
import java.util.Locale;
import java.util.Properties;

import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.model.Query;
import org.compiere.model.X_C_City;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *		NFS-e para a Cidade de Tubarão / SC
 *
 * 		@author Rogério Feitosa (Kenos, www.kenos.com.br)
 * 		@version $Id: NFSeTubaraoImpl.java, v1.0 2016/06/27 14:48:30, kenos_rfeitosa Exp $
 *
 */
public class NFSeTubaraoImpl implements INFSe
{

	/** Log				*/
	private static CLogger log = CLogger.getCLogger(NFSeTubaraoImpl.class);
	
	public static final Integer C_City_ID = 1004630;

	/**
	 * 	Get NFSe Type
	 * 	1 = Synchronous
	 * 	2 = Asynchronous
	 * 	@return
	 */
	public String getType()
	{
		return TYPE_ASYNCHRONOUS;
	}

	/**
	 * 	Get the NFe representation as XML file
	 * 	@param nf
	 * 	@return
	 * 	@throws Exception
	 */
	public byte[] getXML(MLBRNotaFiscal nf) throws Exception
	{
		return null;
	}

	/**
	 * 	Convert NF to RPS
	 * @param nfs
	 * @return
	 * @throws Exception
	 */
	public StringBuilder getRPS(List<MLBRNotaFiscal> nfs) throws Exception
	{
		log.fine("Start Generate RPS");
		
		// Variável
		StringBuilder rps = new StringBuilder();
		String erro = "";
		
		for (MLBRNotaFiscal nf : nfs)
		{
			//	Organização da NF
			MOrgInfo org = MOrgInfo.get(Env.getCtx(), nf.getAD_Org_ID(), null);
			
			//	Status NF e RPS 1 - Normal 2 -Cancelada
			String status = "1";			
			if (nf.isCancelled())
				status = "2";
			
			// Identificação da Atividade Envolvida
			String serviceCode = "0";
			
			//	Buscar Service Code no Servidor da NF
			for (MLBRNotaFiscalLine nfl : nf.getLines())
			{	
				MProduct p = (MProduct) nfl.getM_Product();
				
				//	Se for um Serviço pegar o Service code e sair do For
				if (MProduct.PRODUCTTYPE_Service.equals(p.getProductType()))
				{
					serviceCode = p.get_ValueAsString("lbr_ServiceCode");
					break;
				}
			}
			
			if (serviceCode.isEmpty())
				erro = erro + "Identificação da Atividade obrigatório;";			
			
			//	NFS-E General
			rps.append(TextUtil.lPad("0", '0', 15));														// Número da NF
			rps.append(TextUtil.lPad(status, '0', 1));														// Status da NF (1 - Normal / 2 - Cancelada)
			rps.append(TextUtil.lPad(TextUtil.timeToString(nf.getDateDoc(), "dd/MM/yyyy hh:mm:ss"), ' ', 19));	// Data de Emissão
			rps.append(TextUtil.lPad(TextUtil.timeToString(nf.getDateDoc(), "yyyyMM"), ' ', 6));			// Ano e Mês da Prestação de Serviço
			rps.append(TextUtil.lPad("0", '0', 15));														// Número da NF Substituta
			rps.append(TextUtil.lPad("01", '0', 2));														// Natureza da Operação
			rps.append(TextUtil.lPad(nf.getDocumentNo(), '0', 15));											// Número do RPS
			rps.append(TextUtil.lPad(nf.getlbr_NFSerie(), '0', 5));											// Número de Série do RPS
			rps.append(TextUtil.lPad("1", '0', 1));															// Tipo do RPS
			rps.append(TextUtil.lPad(TextUtil.timeToString(nf.getDateDoc(), "dd/MM/yyyy"), ' ', 10));		// Data de Emissão do RPS
			rps.append(TextUtil.lPad(status, '0', 1));														// Status da RPS
			rps.append(TextUtil.lPad("0", '0', 15));														// Número do RPS Substituido
			rps.append(TextUtil.lPad("0", '0', 5));															// Número de Série do RPS Substituido
			rps.append(TextUtil.lPad(Format(nf.getlbr_ServiceTotalAmt()), '0', 16));						// Valor do Serviço
			rps.append(TextUtil.lPad(TextUtil.retiraEspecial(org.get_ValueAsString("lbr_CNAE")), ' ', 7));	// Número CNAE
			rps.append(TextUtil.lPad(serviceCode, '0', 15));												// Identificação da Atividade Envolvida
			
			//	Total de ISS		
			String v_ISS 	= Format (nf.getTaxAmt("ISS"));
			String a_ISS 	= Format (nf.getTaxRate("ISS"));
			String b_ISS 	= Format (nf.getTaxBaseAmt("ISS"));
			
			rps.append(TextUtil.lPad(b_ISS, '0', 16));														// Valor da Base de Calculo
			rps.append(TextUtil.lPad(a_ISS, '0', 16));														// Valor da Alíquota
			rps.append(TextUtil.lPad(v_ISS, '0', 16));														// Valor do ISS
			rps.append(TextUtil.lPad("2", '0', 1));															// Status do ISS Retido
			
			BigDecimal QtyTotal = Env.ZERO;
			BigDecimal PriceTotal = Env.ZERO;
			
			//	Recebe o tamanho da String referente aos Itens da NF.
			int i = 0;
			
			//	Itens da NF
			String itens = "";
			
			//	Linhas
			for (MLBRNotaFiscalLine nfl : nf.getLines())
			{
				String separator = "~";
				String item = separator;
				String end = "@@";
				
				//	UOM				
				item = item + nfl.getC_UOM().getUOMSymbol() + separator;
				
				//	Quantidade				
				item = item + nfl.getQty() + separator;
				QtyTotal = QtyTotal.add(nfl.getQty());
				
				//	Descrição do Serviço				
				item = item + nfl.getProductName() + separator;
				
				//	Valor Unitário 				
				item = item + nfl.getPrice().setScale(2, BigDecimal.ROUND_HALF_UP) + separator;
				PriceTotal = PriceTotal.add(nfl.getPrice().setScale(2, BigDecimal.ROUND_HALF_UP));
				
				//	Valor Total				
				item = item + nfl.getLineTotalAmt().setScale(2, BigDecimal.ROUND_HALF_UP) + separator;
				
				//	Indicador de Fim da Linha				
				item = item + end;
				
				//	Tamanho da String
				i = item.length();
				
				//	NFS-e Line
				itens = itens + TextUtil.rPad(item, ' ', i);				//	Discriminação dos Serviço				
			}
			
			//	NFS-e Line
			rps.append(TextUtil.rPad(itens, ' ', 2000));				//	Add Itens do Serviço
			
			X_C_City cityprestador = getCity(null, nf.getlbr_OrgRegion(), nf.getlbr_OrgCity());
			
			if (cityprestador.get_ValueAsString("lbr_CityCode2").isEmpty())
				erro = erro + "Código do Município do Prestador de Serviço obrigatório;";	
			
			//	NFS-E Header
			rps.append(TextUtil.lPad(cityprestador.get_ValueAsString("lbr_CityCode2"), '0', 15));	// Código do Município
			
			//	NFS-e Line
			rps.append(TextUtil.lPad(QtyTotal.toString(), '0', 15));							// Quantidade de Serviço Prestado
			rps.append(TextUtil.lPad(Format (PriceTotal), '0', 16));							// Valor Unitário do Serviço Prestado
			
			//NFS-e Empresa Prestadora de Serviço
			rps.append(TextUtil.lPad(TextUtil.retiraEspecial(nf.getlbr_OrgCCM()), '0', 15));	// CMC da Empresa
			rps.append(TextUtil.lPad(nf.getlbr_OrgName(), ' ', 115));							// Nome Razão Socical da Prestadora de Serviço
			rps.append(TextUtil.lPad(nf.getlbr_OrgName(), ' ', 60));							// Nome Fantasia do Prestador de Serviço
			rps.append(TextUtil.lPad(TextUtil.retiraEspecial(nf.getlbr_CNPJ()), '0', 14));		// CNPJ do Prestador de Serviço
			rps.append(TextUtil.lPad(nf.getlbr_OrgAddress1(), ' ', 125));						// Endereço do Prestador de Serviço
			rps.append(TextUtil.lPad(nf.getlbr_OrgAddress2(), '0', 10));						// Ńúmero do Endereço do Prestador de Serviço
			rps.append(TextUtil.lPad(nf.getlbr_OrgAddress4(), ' ', 60));						// Complemento do Endereço do Prestador de Serviço
			rps.append(TextUtil.lPad(nf.getlbr_OrgAddress3(), ' ', 60));						// Nome do Bairro do Prestador de Serviço
						
			rps.append(TextUtil.lPad(cityprestador.get_ValueAsString("lbr_CityCode2"), '0', 15)); // Código do Município do Prestador de Serviço
			rps.append(TextUtil.lPad(nf.getlbr_OrgRegion(), ' ', 2));		// Unidade Federativa do Prestador de Serviço
			rps.append(TextUtil.lPad(TextUtil.retiraEspecial(nf.getlbr_OrgPostal()), '0', 8));		// CEP do Prestador de Serviço
			rps.append(TextUtil.lPad("", ' ', 80));							// Email do Prestador de Serviço
			rps.append(TextUtil.lPad(TextUtil.retiraEspecial(nf.getlbr_OrgPhone()), '0', 11));		// Número do Telefone do Prestador de Serviço
							
			//NFS-e Empresa Tomadora do Serviço
			rps.append(TextUtil.lPad(TextUtil.retiraEspecial(nf.getlbr_BPCNPJ()), '0', 14));			// CPF ou CNPJ do Tomador
			
			String tipoTomador = (MLBRNotaFiscal.LBR_BPTYPEBR_PJ_LegalEntity.equals(nf.getlbr_BPTypeBR()) ? "2" : "1");
			
			rps.append(TextUtil.lPad(tipoTomador, '0', 2));					// Tipo de Pessoa Tomadora do Serviço
			rps.append(TextUtil.lPad(nf.getBPName(), ' ', 115));			// Razão Socical / Nome do Tomador de Serviço
			rps.append(TextUtil.lPad(nf.getlbr_BPAddress1(), ' ', 125));	// Endereço do Tomador de Serviço
			rps.append(TextUtil.lPad(nf.getlbr_BPAddress2(), '0', 10));		// Ńúmero do Endereço do Tomador de Serviço
			rps.append(TextUtil.lPad(nf.getlbr_BPAddress4(), ' ', 60));		// Complemento do Endereço do Tomador de Serviço
			rps.append(TextUtil.lPad(nf.getlbr_BPAddress3(), ' ', 60));		// Nome do Bairro do Tomador de Serviço
			
			//Get City Code 2
			X_C_City citytomador = getCity(nf.getlbr_BPCityCode()+"", nf.getlbr_BPRegion(), nf.getlbr_BPCity());
			
			if (citytomador.get_ValueAsString("lbr_CityCode2").isEmpty())
				erro = erro + "Código do Município do Tomador de Serviço obrigatório;";	
			
			//citytomador.get_ValueAsString("LBR_CityCode2")
			rps.append(TextUtil.lPad(citytomador.get_ValueAsString("lbr_CityCode2"), '0', 15));												// Código do Município do Tomador de Serviço
			rps.append(TextUtil.lPad(nf.getlbr_BPRegion(), ' ', 2));								// Unidade Federativa do Tomador de Serviço
			rps.append(TextUtil.lPad(TextUtil.retiraEspecial(nf.getlbr_BPPostal()), '0', 8));		// CEP do Tomador de Serviço
			rps.append(TextUtil.lPad("", ' ', 80));													// Email do Tomador de Serviço
			rps.append(TextUtil.lPad(TextUtil.retiraEspecial(nf.getlbr_BPPhone()), '0', 11));		// Número do Telefone do Tomador de Serviço
			
			rps.append(TextUtil.lPad(TextUtil.timeToString(nf.getDateDoc(), "dd/MM/yyyy"), ' ', 10));	// Data de Cancelamento do RPS ou NFS-e
			rps.append(TextUtil.lPad("1", ' ', 1));													// Status de Sincronização				
			
			//	Total de Imposto		
			String v_PIS 	= "0";
			String v_COFINS = "0";
			String v_INSS 	= "0";
			String v_IR 	= "0";
			String v_CSLL 	= "0";
			
			// Verificar os Impostos que serão deduzidos
			if (nf.getTaxAmt("PIS").signum() == 1 && hasWithHold(nf, "PIS"))
				v_PIS = Format (nf.getTaxAmt("PIS"));
			
			if (nf.getTaxAmt("COFINS").signum() == 1 && hasWithHold(nf, "COFINS"))
				v_COFINS = Format (nf.getTaxAmt("COFINS"));
			
			if (nf.getTaxAmt("INSS").signum() == 1 && hasWithHold(nf, "INSS"))
				v_INSS = Format (nf.getTaxAmt("INSS"));
			
			if (nf.getTaxAmt("IR").signum() == 1 && hasWithHold(nf, "IR"))
				v_IR = Format (nf.getTaxAmt("IR"));
			
			if (nf.getTaxAmt("CSLL").signum() == 1 && hasWithHold(nf, "CSLL"))
				v_CSLL = Format (nf.getTaxAmt("CSLL"));

			rps.append(TextUtil.lPad("0,00", '0', 16));		// Valor das Deduções
			rps.append(TextUtil.lPad(v_PIS, '0', 16));		// Valor do PIS
			rps.append(TextUtil.lPad(v_COFINS, '0', 16));	// Valor do COFINS
			rps.append(TextUtil.lPad(v_INSS, '0', 16));		// Valor do INSS
			rps.append(TextUtil.lPad(v_IR, '0', 16));		// Valor do IR
			rps.append(TextUtil.lPad(v_CSLL, '0', 16));		// Valor do CSLL
			rps.append(TextUtil.lPad("0,00", '0', 16));		// Valor de Outras Deduções
			
			if (!erro.isEmpty())
				log.warning("NF " + nf.getDocumentNo() + " Erro " + erro + "\n");
			
			erro = "";
			
			rps.append(TextUtil.EOL_WIN32);
		}
		
		return rps;
	}

	/**
	 * 	Transmit the NFe
	 * @param nf
	 * @return
	 * @throws Exception
	 */
	public boolean transmit(MLBRNotaFiscal nf) throws Exception
	{
		return false;
	}

	/**
	 * 	Transmit a batch of NFe
	 * @param ctx
	 * @param AD_Org_ID
	 * @param trxName
	 * @param nfs
	 * @return
	 * @throws Exception
	 */
	public boolean transmit(Properties ctx, int AD_Org_ID, String trxName,
			List<MLBRNotaFiscal> nfs) throws Exception
	{
		return false;
	}

	/**
	 * 	Check if transmitted NFe was processed (asynchronous process)
	 * @param nf
	 * @return
	 * @throws Exception
	 */
	public boolean consult(MLBRNotaFiscal nf) throws Exception
	{
		return false;
	}

	/**
	 * 	Check if transmitted NFe was processed (asynchronous process)
	 * 	Batch
	 * @param ctx
	 * @param AD_Org_ID
	 * @param trxName
	 * @param nfs
	 * @return
	 * @throws Exception
	 */
	public boolean consult(Properties ctx, int AD_Org_ID, String trxName,
			List<MLBRNotaFiscal> nfs) throws Exception
	{
		return false;
	}

	/**
	 * 	Print or shows preview of NFSe
	 * @param nf
	 * @return
	 */
	public String printNFSe(MLBRNotaFiscal nf)
	{
		return null;
	}

	/**
	 * 	Get PDF File
	 * 	@param nf
	 * 	@return PDF
	 */
	public File getPDF(MLBRNotaFiscal nf)
	{
		return null;
	}
	
	/**
	 * Format
	 * @param value
	 * @return
	 */
	public String Format(BigDecimal value)
	{
		if (value == null)
			return Env.ZERO.toString();
		
		/** Formatação de Números    */
		String nFormat = "###0.00";
	    DecimalFormat decimalFormat = new DecimalFormat(nFormat,
	    		new DecimalFormatSymbols(Locale.getDefault()));
	    
	    return decimalFormat.format(value);	    
	}
	
	/**
	 * Get City
	 * @param citycode
	 * @param regionname
	 * @param cityname
	 * @return
	 */
	public X_C_City getCity (String citycode, String regionname, String cityname)
	{
		//	Validate Variavel citycode
		if (citycode != null && !"0".equals(citycode))
		{	
			//	Get City Source by City Code
			X_C_City city = new Query(Env.getCtx(), X_C_City.Table_Name, "LBR_CityCode = ?", null)
			.setParameters(citycode)
			.first();
			
			// Return City
			if (city != null)
				return city;
		}
		
		//	Validate Variavel regionname e cityname
		if (regionname == null || cityname == null)
			return null;

		//	Get List of city
		List <X_C_City> citys = new Query(Env.getCtx(), X_C_City.Table_Name, "Name = ?", null)
				.setParameters(cityname)
				.list();
		
		//	Cities
		for (X_C_City c : citys)
		{
			//	Return the City after validate the Region Name
			if (c.getC_Region().getName().equals(regionname))
				return c;
		}
		
		return null;
			
	}
	
	/**
	 *	Identificar se o Imposto possui retenção
	 */
	public Boolean hasWithHold(MLBRNotaFiscal nf, String tax)
	{
		//	Colunas Desejadas
		String selectcolumn = "";
		
		// Concatenar o resultado de várias linhas em uma unica linha. Diferenciar os Bancos Oracle e Postgres
		if (DB.isPostgreSQL())
			selectcolumn = "Array_Agg(a.LBR_WithholdGroup)";
		else			
			selectcolumn = "LISTAGG(a.LBR_WithholdGroup, ',') WITHIN GROUP (ORDER BY a.LBR_WithholdGroup)";
		
		// Withhold Description
		String sql = "SELECT  " + selectcolumn + " FROM " + 
					"   (SELECT  " + 
					"            tn.LBR_WithholdGroup,  " + 
					"            SUM (TaxAmt) AS TaxAmt,  " + 
					"            AVG (LBR_WithholdThreshold) AS LBR_WithholdThreshold " + 
					"    FROM  " + 
					"            C_InvoiceTax it, C_Tax t, LBR_TaxName tn " + 
					"    WHERE  " + 
					"            1=1 " + 
					"            AND it.C_Invoice_ID=?  " + 
					"            AND it.C_Tax_ID=t.C_Tax_ID  " + 
					"            AND t.LBR_TaxName_ID=tn.LBR_TaxName_ID " + 
					"            AND tn.LBR_WithholdType='T' " + 
					"			 AND tn.LBR_HasWithhold='Y' " + 
					"    GROUP BY  " + 
					"            tn.LBR_WithholdGroup) a " + 
					"WHERE " + 
					"        TaxAmt >= LBR_WithholdThreshold"; 
		
		// Resultado
		String description = DB.getSQLValueString (nf.get_TrxName(), sql, nf.getC_Invoice_ID());
		
		//	Verificar se o Imposto é deduzido do Valor da NFS-e
		if (description.contains(tax))
			return true;
		
		return false;
	}
	
}
