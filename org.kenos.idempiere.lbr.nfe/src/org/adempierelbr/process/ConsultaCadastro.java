package org.adempierelbr.process;

import java.io.StringReader;
import java.util.List;
import java.util.UUID;
import java.util.logging.Level;

import javax.xml.stream.FactoryConfigurationError;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamReader;

import org.adempiere.base.Service;
import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.model.MLBRNFConfig;
import org.adempierelbr.model.MLBRNFeWebService;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.nfe.api.CadConsultaCadastro4Stub;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.adempierelbr.wrapper.I_W_C_City;
import org.apache.axiom.om.OMElement;
import org.apache.xmlbeans.XmlException;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MCity;
import org.compiere.model.MClientInfo;
import org.compiere.model.MLocation;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MPriceListVersion;
import org.compiere.model.MRegion;
import org.compiere.model.MSysConfig;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.base.event.IDocFiscalHandler;
import org.kenos.idempiere.lbr.base.event.IDocFiscalHandlerFactory;
import org.kenos.idempiere.lbr.base.model.SysConfig;

import br.inf.portalfiscal.nfe.v6v.ConsCadDocument;
import br.inf.portalfiscal.nfe.v6v.RetConsCadDocument;
import br.inf.portalfiscal.nfe.v6v.TConsCad;
import br.inf.portalfiscal.nfe.v6v.TConsCad.InfCons;
import br.inf.portalfiscal.nfe.v6v.TEndereco;
import br.inf.portalfiscal.nfe.v6v.TRetConsCad;
import br.inf.portalfiscal.nfe.v6v.TRetConsCad.InfCons.InfCad;
import br.inf.portalfiscal.nfe.v6v.TUfCons;
import br.inf.portalfiscal.www.nfe.wsdl.cadconsultacadastro4.NfeDadosMsg;

/**
 * 		Consulta de Cadastro
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ConsultaCadastro.java, v1.0 2013/MM/DD 4:08:49 PM, ralexsander Exp $
 */
public class ConsultaCadastro extends SvrProcess
{
	/**	Organization				*/
	private int p_AD_Org_ID = -1;
	
	/**	Business Partner			*/
	private int p_C_BPartner_ID = -1;

	/**	Business Partner Location 	*/
	private int p_C_BPartner_Location_ID = -1;

	/**	Region					 	*/
	private int p_C_Region_ID = -1;
	
	/**	CPF							*/
	public String p_CPF = null;
	
	/**	CNPJ						*/
	public String p_CNPJ = null;
	
	/**	IE							*/
	public String p_IE = null;
	
	/**	Create New BPartner			*/
	public boolean p_CreateNew = false;
	
	/** Log							*/
	private static CLogger log = CLogger.getCLogger (ConsultaCadastro.class);
	
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare ()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;

			else if (MOrg.COLUMNNAME_AD_Org_ID.equals (name))
				p_AD_Org_ID = para[i].getParameterAsInt();
			
			else if (MBPartner.COLUMNNAME_C_BPartner_ID.equals (name))
				p_C_BPartner_ID = para[i].getParameterAsInt();
			
			else if (MBPartnerLocation.COLUMNNAME_C_BPartner_Location_ID.equals (name))
				p_C_BPartner_Location_ID = para[i].getParameterAsInt();

			else if (I_W_C_BPartner.COLUMNNAME_lbr_CNPJ.equals (name))
				p_CNPJ = (String) para[i].getParameter();
		
			else if (I_W_C_BPartner.COLUMNNAME_lbr_CPF.equals (name))
				p_CPF = (String) para[i].getParameter();
			
			else if (I_W_C_BPartner.COLUMNNAME_lbr_IE.equals (name))
				p_IE = (String) para[i].getParameter();
			
			else if (MRegion.COLUMNNAME_C_Region_ID.equals (name))
				p_C_Region_ID = para[i].getParameterAsInt();
			
			else if (MPriceListVersion.COLUMNNAME_ProcCreate.equals (name))
				p_CreateNew = para[i].getParameterAsBoolean();
			
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}		
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message (variables are parsed)
	 *  @throws Exception if not successful e.g.
	 *  throw new AdempiereUserError ("@FillMandatory@  @C_BankAccount_ID@");
	 */
	protected String doIt () throws Exception
	{
		String uf = null;
		
		//	Organization
		if (p_AD_Org_ID <= 0)
			throw new AdempiereUserError ("@FillMandatory@  @AD_Org_ID@");
		
		//	Unified Business Partner
		if (p_C_BPartner_ID <= 0 && p_CNPJ == null && p_CPF == null && p_IE == null)
			throw new AdempiereUserError ("@FillMandatory@  @C_BPartner_ID@ @lbr_CPF@ @lbr_CNPJ@");
		
		else if (MSysConfig.getBooleanValue(SysConfig.LBR_USE_UNIFIED_BP, false) && p_C_BPartner_Location_ID <= 1)
			throw new AdempiereUserError ("@FillMandatory@  @C_BPartner_Location_ID@");
		
		if (p_C_BPartner_ID > 0)
		{
			MBPartner bp = new MBPartner (Env.getCtx(), p_C_BPartner_ID, null);
			I_W_C_BPartner bpW = POWrapper.create (bp, I_W_C_BPartner.class);
			MBPartnerLocation bpl = p_C_BPartner_Location_ID > 0 ? bp.getLocation(p_C_BPartner_Location_ID) : bp.getLocations(false)[0];
			//
			if (MLBRNotaFiscal.LBR_BPTYPEBR_PJ_LegalEntity.equals(bpW.getlbr_BPTypeBR()))
				p_CNPJ = BPartnerUtil.getCNPJ_CPF (bpl);
			
			else if (MLBRNotaFiscal.LBR_BPTYPEBR_PJ_LegalEntity.equals(bpW.getlbr_BPTypeBR()))
				p_CPF = BPartnerUtil.getCNPJ_CPF (bpl);
			
			else
				throw new AdempiereUserError ("Tipo de Parceiro não suportado: " + bpW.getlbr_BPTypeBR());
			
			//	UF from partner
			uf = BPartnerUtil.getUF (bpl);
		}
		
		//	UF from parameter
		if (uf == null && p_C_Region_ID > 0)
			uf = new MRegion (getCtx(), p_C_Region_ID, null).getName();
		
		if (uf == null)
			throw new AdempiereUserError ("@FillMandatory@  @C_Region_ID@");
		
		RetConsCadDocument bpResponse = ConsultaCadastro.doIt (MOrgInfo.get (getCtx(), p_AD_Org_ID, null), p_CNPJ, p_CPF, p_IE, uf);
		
		if (bpResponse == null)
			throw new AdempiereUserError ("Erro ao consultar dados ou a SeFaz não possuí serviço de Consulta de Cadastro.");

		TRetConsCad retConsCad = bpResponse.getRetConsCad();
		br.inf.portalfiscal.nfe.v6v.TRetConsCad.InfCons infCons = retConsCad.getInfCons();
		
		if (infCons.getInfCadArray().length == 0)
			return "@Error@<br /><br /><b>Motivo: </b>" + infCons.getCStat() + " - " + infCons.getXMotivo();
		
		InfCad infCad = infCons.getInfCadArray(0);
		
		String xRegApur = infCad.getXRegApur();
		TEndereco ender = infCad.getEnder();
		//
		StringBuffer result = new StringBuffer ("<br /><br /><b>Razão Social: </b>").append (infCad.getXNome())
				.append ("<br /><b>Nome Fantasia: </b>").append (infCad.getXFant())
				.append ("<br /><br><b><font color=\"").append ((InfCad.CSit.X_1.equals(infCad.getCSit()) ? "00CC66\">H" : "FF0000\">In") + "abilitado</font></b>")
				.append ("<br /><br /><b>Credeciamento NF-e: </b>").append (ConsultaCadastro.translateIndCredNFe (infCad.getIndCredNFe()))
				.append ("<br /><b>Credenciamento CT-e: </b>").append (ConsultaCadastro.translateIndCredCTe (infCad.getIndCredCTe()))
				.append ("<br /><br /><b>Regime de Apuração: </b>").append (xRegApur)
				.append ("<br /><b>CNAE: </b>").append (infCad.getCNAE())
				.append ("<br /><b>IE: </b>").append (infCad.getIE())
				.append ("<br /><b>IE (Única): </b>").append (infCad.getIEUnica())
				.append ("<br /><b>IE (Atual): </b>").append (infCad.getIEAtual())
				.append ("<br /><b>Logradouro: </b>").append (ender.getXLgr())
				.append ("<br /><b>Número: </b>").append (ender.getNro())
				.append ("<br /><b>Complemento: </b>").append (ender.getXCpl())
				.append ("<br /><b>Bairro: </b>").append (ender.getXBairro())
				.append ("<br /><b>Município: </b>").append (ender.getXMun()).append(" (").append(ender.getCMun()).append(")")
				.append ("<br /><b>CEP: </b>").append (ender.getCEP())
				.append ("<br /><b>UF: </b>").append (infCad.getUF());
		
		//	Create business partner
		if (p_C_BPartner_ID <= 0 
				&& p_CreateNew 
				&& InfCad.CSit.X_1.equals(infCad.getCSit()))
		{			
			//	Novo Parceiro de Negócio
			MBPartner bpartner = new MBPartner(Env.getCtx(), 0, null);	
			
			//	Parceiro de Negócio Modelo
			MClientInfo clientinfo = MClientInfo.get(Env.getCtx());
			
			MBPartner bpModel = null;
			
			if (clientinfo.getC_BPartnerCashTrx() != null)
				bpModel = (MBPartner) clientinfo.getC_BPartnerCashTrx();
			else
			{
				log.warning("Preencher Parceiro de Negócio Modelo na Janela Empresa");
				return "@Success@" + result.toString();
			}
			
			//	Copiar Padrão do Parceiro de Negócio Modelo para o Novo Parceiro de Negócio
			PO.copyValues(bpModel, bpartner);
			
			//	Limpar Chave de Busca
			bpartner.setValue("");
			
			bpartner.save();
			
			// Class Wrapper Novo Parceiro de Negócio
			I_W_C_BPartner bpartnerNew = POWrapper.create (bpartner, I_W_C_BPartner.class);			
			
			// Remover Perspectiva
			bpartnerNew.setIsProspect(false);
	
			//	Verificar se é uma Pessoa Jurídica
			if (!p_CNPJ.isEmpty())
			{			
				//	Se o Parceiro de Negócio já existir sair do processo
				if (new Query(Env.getCtx(), MBPartner.Table_Name, "LBR_CNPJ = ?", null)
						.setParameters(p_CNPJ)
						.first() != null)
					return "@Success@" + result.toString() + "<br /><br /><b>Parceiro de Negócio já Cadastrado</b>";
				else
				{	
					// Adicionar CNPJ para Pessoa Juridica
					bpartnerNew.setlbr_BPTypeBR(I_W_C_BPartner.LBR_BPTYPEBR_PJ_LegalEntity);
					bpartnerNew.setlbr_CNPJ(p_CNPJ);
				}	
			}
			//	Verificar se é uma Pessoa Física
			else if (!p_CPF.isEmpty())
			{
				//	Se o Parceiro de Negócio já existir sair do processo
				if (new Query(Env.getCtx(), MBPartner.Table_Name, "LBR_CPF = ?", null)
						.setParameters(p_CPF)
						.first() != null)
					return "@Success@" + result.toString() + "<br /><br /><b>Parceiro de Negócio já Cadastrado</b>";
				else
				{
					// Adicionar CPF para Pessoa Física
					bpartnerNew.setlbr_BPTypeBR(I_W_C_BPartner.LBR_BPTYPEBR_PF_Individual);
					bpartnerNew.setlbr_CPF(p_CPF);
				}
			}
						
			//	Dados do Novo Parceiro de Negócio
			bpartnerNew.setName(infCad.getXNome());
			bpartnerNew.setName2((infCad.getXFant() == null ? infCad.getXNome() : infCad.getXFant()));			
			
			//	Do nothing
			if (xRegApur == null)
				;
			//	Regime Tributário do Parceiro de Negócio
			else if (xRegApur.toUpperCase().startsWith("NORMAL"))
				bpartnerNew.setLBR_TaxRegime(I_W_C_BPartner.LBR_TAXREGIME_Normal);
			
			//	Simples e MEI
			else if (xRegApur.toUpperCase().startsWith("SIMPLES"))
			{
				//	Simples Nacional - MEI
				if (xRegApur.toUpperCase().endsWith("MEI"))
					bpartnerNew.setLBR_TaxRegime(I_W_C_BPartner.LBR_TAXREGIME_SimpleNational_MEI);
				
				//	Simples Nacional
				else
					bpartnerNew.setLBR_TaxRegime(I_W_C_BPartner.LBR_TAXREGIME_SimpleNational);
			}
			
			//	Adicionar Inscrição Estadual.
			if (!infCad.getIE().isEmpty())
			{
				bpartnerNew.setLBR_IndIEDest(I_W_C_BPartner.LBR_INDIEDEST_1_ContribuinteDeICMS);
				bpartnerNew.setlbr_IE(infCad.getIE());
			}
			else
			{
				//	Se não houver Inscrição Estadual, indicar como Não Contribuinte
				bpartnerNew.setLBR_IndIEDest(I_W_C_BPartner.LBR_INDIEDEST_9_NãoContribuinteDeICMS);
				bpartnerNew.setlbr_IE("");
			}
			
			//	Savar Novo Parceiro de Negócio
			bpartner.saveEx();
			
			// Localização do Parceiro de Negócio
			MBPartnerLocation bpartnerLocation = new MBPartnerLocation(bpartner);
			bpartnerLocation.setName(".");
			
			// Estado
			String cityName = ender.getXMun();
			int C_Region_ID = p_C_Region_ID;
			
			//	Identificar ID do Estado
			for (MRegion r : MRegion.getRegions(Env.getCtx(), 139))
			{	
				if (infCad.getUF().toString().equals(r.getName()))
				{	
					C_Region_ID = r.getC_Region_ID();
					
					MCity city = new Query (getCtx(), MCity.Table_Name, MCity.COLUMNNAME_C_Region_ID+"=? AND "+I_W_C_City.COLUMNNAME_lbr_CityCode+"=?", get_TrxName())
						.setParameters(C_Region_ID, ender.getCMun()).first();
					if (city != null)
						cityName = city.getName();
					break;
				}	
			}
			
			// Salvando Localização do Novo Parceiro de Negócio
			MLocation location  = new MLocation(Env.getCtx(), 139, C_Region_ID, cityName, null);			
			location.setAddress1(ender.getXLgr());
			location.setAddress2(ender.getNro());
			location.setAddress3(ender.getXBairro());
			location.setAddress4(ender.getXCpl());			
			location.setPostal(ender.getCEP());
			location.setRegionName(infCad.getUF().toString());
			location.saveEx();
						
			bpartnerLocation.setC_Location_ID(location.getC_Location_ID());		
			bpartnerLocation.saveEx();
		}
		
		else if (p_C_BPartner_ID > 0 && xRegApur != null)
		{
			I_W_C_BPartner bp = POWrapper.create(new MBPartner (getCtx(), p_C_BPartner_ID, get_TrxName()), I_W_C_BPartner.class);
		
			//	Normal
			if (xRegApur.toUpperCase().startsWith("NORMAL"))
				bp.setLBR_TaxRegime(I_W_C_BPartner.LBR_TAXREGIME_Normal);
			
			//	Simples e MEI
			else if (xRegApur.toUpperCase().startsWith("SIMPLES"))
			{
				//	Simples Nacional - MEI
				if (xRegApur.toUpperCase().endsWith("MEI"))
					bp.setLBR_TaxRegime(I_W_C_BPartner.LBR_TAXREGIME_SimpleNational_MEI);
				
				//	Simples Nacional
				else
					bp.setLBR_TaxRegime(I_W_C_BPartner.LBR_TAXREGIME_SimpleNational);
			}
			
			//	Save
			POWrapper.getPO (bp).save();
		}
		
		return "@Success@" + result.toString();
	}	//	doIt
	
	/**
	 * 		Consulta o Parceiro de Negócios na SeFaz
	 * 
	 * 	@param oi Organization Info
	 * 	@param CNPJ or
	 * 	@param UF
	 * 	@return
	 * 	@throws XmlException 
	 */
	public static RetConsCadDocument doIt (MOrgInfo oi, String p_CNPJ, String p_UF) throws XmlException
	{
		return doIt (oi, p_CNPJ, null, null, p_UF);
	}	//	doIt
	
	/**
	 * 		Consulta o Parceiro de Negócios na SeFaz
	 * 
	 * 	@param oi Organization Info
	 * 	@param CNPJ
	 * 	@param CPF
	 * 	@param IE
	 * 	@param UF
	 * 	@return
	 * 	@throws XmlException 
	 */
	public static RetConsCadDocument doIt (MOrgInfo oi, String p_CNPJ, String p_CPF, String p_IE, String p_UF) throws XmlException
	{
		ConsCadDocument consCadDoc = ConsCadDocument.Factory.newInstance();
		TConsCad consCad = consCadDoc.addNewConsCad();
		consCad.setVersao("2.00");
		InfCons infCons = consCad.addNewInfCons();
		
		if (p_CNPJ != null && !p_CNPJ.isEmpty())
			infCons.setCNPJ (TextUtil.toNumeric (p_CNPJ));
		
		else if (p_CPF != null && !p_CPF.isEmpty())
			infCons.setCPF (TextUtil.toNumeric (p_CPF));
		
		else if (p_IE != null && !p_IE.isEmpty())
			infCons.setIE (TextUtil.toNumeric (p_IE));
		
		else	//	Throw Error
			throw new AdempiereException ("Invalid Parameters [CNPJ='" + p_CNPJ + "', CPF='" + p_CPF + "', IE='" + p_IE + "']");
		
		//	UF mandatory
		if (p_UF != null && !p_UF.isEmpty())
			infCons.setUF (TUfCons.Enum.forString (p_UF));
		
		else	//	UF
			throw new AdempiereException ("Invalid Parameters [UF='" + p_UF + "']");
		
		infCons.setXServ(InfCons.XServ.CONS_CAD);
		
		//	Validar XML
		NFeUtil.validate (consCadDoc);
				
		I_W_AD_OrgInfo oiW = POWrapper.create(oi, I_W_AD_OrgInfo.class);
		
		try
		{
			//	Prepara a Transmissão
			MLBRDigitalCertificate.setCertificate (Env.getCtx(), oi.getAD_Org_ID());
			
			//	XML
			StringBuilder xml =  new StringBuilder (consCadDoc.xmlText(NFeUtil.getXmlOpt()));
			
			MLBRNFConfig config = MLBRNFConfig.get(oi.getAD_Org_ID());
			String url = MLBRNFeWebService.getURL (MLBRNFeWebService.CADCONSULTACADASTRO, config.getlbr_NFeEnv(), NFeUtil.VERSAO_LAYOUT, DB.getSQLValue(null, "SELECT C_Region_ID FROM C_Region WHERE Name='"+p_UF+"' AND C_Country_ID=?", 139));

			String remoteURL = MSysConfig.getValue(SysConfig.LBR_REMOTE_PKCS11_URL, oi.getAD_Client_ID(), oi.getAD_Org_ID());
			final StringBuilder respStatus = new StringBuilder();
			
			//	Try to find a service for PKCS#11 for transmit
			IDocFiscalHandler handler = null;
			List<IDocFiscalHandlerFactory> list = Service.locator ().list (IDocFiscalHandlerFactory.class).getServices();
			for (IDocFiscalHandlerFactory docFiscal : list)
			{
				handler = docFiscal.getHandler (ConsultaCadastro.class.getName());
				if (handler != null)
					break;
			}
			
			// 	We have both, the URL for the local app and the Plugin transmitter
			if (remoteURL != null && handler != null)
			{
				synchronized (respStatus)
				{
					String uuid = UUID.randomUUID().toString();
					handler.transmitDocument(IDocFiscalHandler.DOC_NFE_CAD, oiW.getlbr_CNPJ(), 
							uuid, remoteURL, url, "" + NFeUtil.getRegionCode (oi), xml.toString(), respStatus);
					
					//	Wait until process is completed
					respStatus.wait();
					
					//	Error message
					if (respStatus.toString().startsWith("@Error="))
						throw new Exception (respStatus.toString().substring(7));
				}	//	synchronized
			}
			else
			{
				XMLStreamReader dadosXML = XMLInputFactory.newInstance().createXMLStreamReader(new StringReader(NFeUtil.wrapMsg(xml.toString())));
				
				//	Mensagem
				NfeDadosMsg dadosMsg = NfeDadosMsg.Factory.parse (dadosXML);

				CadConsultaCadastro4Stub stub = new CadConsultaCadastro4Stub(url);
				
				OMElement nfeConsulta = stub.consultaCadastro (dadosMsg.getExtraElement());
				respStatus.append(nfeConsulta.toString());
			}

			//	Resposta
			return RetConsCadDocument.Factory.parse (respStatus.toString());
		}
		catch (FactoryConfigurationError | Exception e)
		{
			log.log (Level.SEVERE, consCadDoc.xmlText(), e);
		}
		return null;
	}	//	doIt

	/**
	 * 		Code
	 * 	@param code
	 * 	@return String code
	 */
	public static String translateIndCredNFe (InfCad.IndCredNFe.Enum code)
	{
		if (InfCad.IndCredNFe.X_0.equals(code))
			return "Não credenciado para emissão deste documento eletrônico";
		
		else if (InfCad.IndCredNFe.X_1.equals(code))
			return "Credenciado";
		
		else if (InfCad.IndCredNFe.X_2.equals(code))
			return "Credenciado com obrigatoriedade para todas operações";
		
		else if (InfCad.IndCredNFe.X_3.equals(code))
			return "Credenciado com obrigatoriedade parcial";
		
		else if (InfCad.IndCredNFe.X_4.equals(code))
			return "A SEFAZ não fornece a informação";
		
		else 
			return "Código [" + code + "] não cadastrado ou inválido";
	}	//	getIndCredNFe
	

	/**
	 * 		Code
	 * 	@param code
	 * 	@return String code
	 */
	public static String translateIndCredCTe (InfCad.IndCredCTe.Enum code)
	{
		if (InfCad.IndCredCTe.X_0.equals(code))
			return "Não credenciado para emissão deste documento eletrônico";
		
		else if (InfCad.IndCredCTe.X_1.equals(code))
			return "Credenciado";
		
		else if (InfCad.IndCredCTe.X_2.equals(code))
			return "Credenciado com obrigatoriedade para todas operações";
		
		else if (InfCad.IndCredCTe.X_3.equals(code))
			return "Credenciado com obrigatoriedade parcial";
		
		else if (InfCad.IndCredCTe.X_4.equals(code))
			return "A SEFAZ não fornece a informação";
		
		else 
			return "Código [" + code + "] não cadastrado ou inválido";
	}	//	getIndCredNFe
}	//	ConsultaCadastro
