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
package org.adempierelbr.process;

import java.io.StringReader;
import java.util.List;
import java.util.UUID;
import java.util.logging.Level;

import javax.xml.stream.XMLInputFactory;

import org.adempiere.base.Service;
import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.model.MLBRNFConfig;
import org.adempierelbr.model.MLBRNFeWebService;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.nfe.api.NFeStatusServico4Stub;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.apache.axiom.om.OMElement;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MRefList;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.base.event.IDocFiscalHandler;
import org.kenos.idempiere.lbr.base.event.IDocFiscalHandlerFactory;

import br.inf.portalfiscal.nfe.v400.ConsStatServDocument;
import br.inf.portalfiscal.nfe.v400.RetConsStatServDocument;
import br.inf.portalfiscal.nfe.v400.TAmb;
import br.inf.portalfiscal.nfe.v400.TCodUfIBGE;
import br.inf.portalfiscal.nfe.v400.TConsStatServ;
import br.inf.portalfiscal.nfe.v400.TConsStatServ.XServ;
import br.inf.portalfiscal.nfe.v400.TRetConsStatServ;
import br.inf.portalfiscal.www.nfe.wsdl.nfestatusservico4.NfeDadosMsg;

/**
 * 	Processo para consultar o Status do Serviço
 *
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *		<li> Tornar compatível com a NF-e 3.10
 *
 *	@author Mario Grigioni
 *	@version $Id: ProcStatusServico.java, 08/04/2010 15:35:00 mgrigioni
 */
public class ProcStatusServico extends SvrProcess
{

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ProcStatusServico.class);

	/**	Organization	*/
	private int p_AD_Org_ID = 0;
	
	/**	Environment		*/
	private String p_LBR_EnvType = null;
	
	/**	Tipo de Emissão		*/
	private String p_LBR_TPEmis = null;
	
	/**	Modelo de NF		*/
	private String p_LBR_NFModel = "55";
	
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (name == null)
				;
			//	Organização
			else if (name.equals(MLBRNFConfig.COLUMNNAME_AD_Org_ID))
				p_AD_Org_ID = para[i].getParameterAsInt();
			
			//	Ambiente da NF
			else if (name.equals(MLBRNFConfig.COLUMNNAME_lbr_NFeEnv))
				p_LBR_EnvType = (String) para[i].getParameter();
			
			//	Tipo de Emissão
			else if (name.equals(MLBRNFConfig.COLUMNNAME_LBR_TPEmis))
				p_LBR_TPEmis = (String) para[i].getParameter();
			
			//	Modelo: NFe ou NFCe
			else if (name.equals(MLBRNFConfig.COLUMNNAME_lbr_NFModel))
				p_LBR_NFModel = (String) para[i].getParameter();
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 * 	DoIt
	 */
	protected String doIt() throws Exception
	{
		if (p_AD_Org_ID == 0)
			p_AD_Org_ID = Env.getAD_Org_ID(getCtx());

		//	Informações da Organização
		MOrgInfo orgInfo = MOrgInfo.get (getCtx(), p_AD_Org_ID, null);
		if (orgInfo == null)
			return "Organização não encontrada";

		MLocation orgLoc = new MLocation (getCtx(), orgInfo.getC_Location_ID(), null);
		
		//	Ambiente da NF
		if (p_LBR_EnvType == null)
		{
			//	Configuração da NF
			MLBRNFConfig nfconfig = MLBRNFConfig.get(p_AD_Org_ID, MLBRNFConfig.LBR_NFMODEL_NotaFiscalEletrônica);
			
			if (nfconfig == null)
				return "Impossível identificar o Ambiente da NF-e.";
			
			p_LBR_EnvType = nfconfig.getlbr_NFeEnv();
		}

		String region = BPartnerUtil.getRegionCode(orgLoc);
		if (region.isEmpty())
			return "UF Inválida";
		
		//	Tipo de Emissão
		if (p_LBR_TPEmis == null)
			p_LBR_TPEmis = MLBRNFConfig.LBR_TPEMIS_EmissãoNormal;
		//
		StringBuilder msg = new StringBuilder ();
				
		try
		{
			//	Status Service Object
			ConsStatServDocument statServDoc = ConsStatServDocument.Factory.newInstance();
			TConsStatServ statServ = statServDoc.addNewConsStatServ();
			statServ.setTpAmb(TAmb.Enum.forString(p_LBR_EnvType));
			statServ.setCUF(TCodUfIBGE.Enum.forString(region));
			statServ.setXServ(XServ.STATUS);
			statServ.setVersao(NFeUtil.VERSAO_LAYOUT);
			
			//	URL
			String serviceType = null;
			if (MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalEletrônica.equals(p_LBR_NFModel))
				serviceType = MLBRNFeWebService.STATUSSERVICO;
			
			else if (MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalDeConsumidorEletrônica.equals(p_LBR_NFModel))
				serviceType = MLBRNFeWebService.NFCE_STATUSSERVICO;
			
			String url = MLBRNFeWebService.getURL (serviceType, p_LBR_EnvType, NFeUtil.VERSAO_LAYOUT, p_LBR_TPEmis, orgLoc.getC_Region_ID());
			
			String xmlText = statServDoc.xmlText(NFeUtil.getXmlOpt());

			//	Save XML consult status
			NFeUtil.saveXML (String.valueOf(orgInfo.getAD_Org_ID()), NFeUtil.KIND_NFE, NFeUtil.MESSAGE_REQ_STATUS, String.valueOf(getAD_PInstance_ID()), xmlText);

			final StringBuilder respStatus = new StringBuilder();
			
			//	Get the valid certificate
			MLBRDigitalCertificate certificate = MLBRDigitalCertificate.getCertificate (getCtx(), p_AD_Org_ID);
			if (certificate == null)
				return "@Error@ Certificado Inválido";
			
			//	Try to find a service for PKCS#11 for transmit
			IDocFiscalHandler handler = null;
			List<IDocFiscalHandlerFactory> list = Service.locator ().list (IDocFiscalHandlerFactory.class).getServices();
			for (IDocFiscalHandlerFactory docFiscal : list)
			{
				handler = docFiscal.getHandler (certificate.getlbr_CertType(), ProcStatusServico.class.getName());
				if (handler != null)
					break;
			}
			
			// 	We have both, the URL for the local app and the Plugin transmitter
			if (handler != null)
			{
				synchronized (respStatus)
				{
					String uuid = UUID.randomUUID().toString();
					handler.transmitDocument(IDocFiscalHandler.DOC_NFE_STATUS, orgInfo.get_ValueAsString(I_W_AD_OrgInfo.COLUMNNAME_lbr_CNPJ), 
							uuid, certificate.getURL(), url, region, xmlText, respStatus);
					
					//	Wait until process is completed, when processing is async
					if (MLBRDigitalCertificate.LBR_CERTTYPE_PKCS11Remote.equals(certificate.getlbr_CertType()))
						respStatus.wait();
					
					//	Error message
					if (respStatus.toString().startsWith("@Error="))
						throw new Exception (respStatus.toString().substring(7));
				}	//	synchronized
			}
			
			//	Local execution
			else
			{
				//	Inicializa o Certificado
				certificate.initialize ();
				
				//	XML
				StringReader xml = new StringReader (NFeUtil.wrapMsg (xmlText));
				
				//	Mensagem
				NfeDadosMsg dadosMsg = NfeDadosMsg.Factory.parse (XMLInputFactory.newInstance().createXMLStreamReader(xml));
				
				NFeStatusServico4Stub stub = new NFeStatusServico4Stub(url);
	
				OMElement nfeStatusServicoNF2 = stub.nfeStatusServicoNF (dadosMsg.getExtraElement());
				respStatus.append(nfeStatusServicoNF2.toString());
			}

			//	Save XML consult status
			NFeUtil.saveXML (String.valueOf(orgInfo.getAD_Org_ID()), NFeUtil.KIND_NFE, NFeUtil.MESSAGE_RET_STATUS, String.valueOf(getAD_PInstance_ID()), respStatus.toString());

			//	Resposta
			RetConsStatServDocument retConsStatServDoc = RetConsStatServDocument.Factory.parse (respStatus.toString());
			TRetConsStatServ ret = retConsStatServDoc.getRetConsStatServ();
			
			msg = new StringBuilder("@Success@<br />");
			msg.append("<br />Ambiente: ").append(ret.getTpAmb()).append(" - ").append(MRefList.getListName (getCtx(), 1100001, ret.getTpAmb().toString()));
			msg.append("<br />Versão: ").append(ret.getVerAplic());
			
			if (MLBRNotaFiscal.LBR_NFESTATUS_107_ServiçoEmOperação.equals(ret.getCStat()))	//	OK
			{
				msg.append("<font color=\"008800\">");
				msg.append("<br />Estado: ").append(ret.getCStat()).append(" - ").append(ret.getXMotivo());
				msg.append("</font>");
			}
			else
			{
				msg.append("<font color=\"880000\">");
				msg.append("<br />Estado: ").append(ret.getCStat()).append(" - ").append(ret.getXMotivo());
				msg.append("</font>");
			}
			msg.append("<br />UF: ").append(ret.getCUF());
			msg.append("<br />Data/Hora: ").append (NFeUtil.formatTime (ret.getDhRecbto().toString()));
			
			if (ret.getTMed() != null)
				msg.append("<br />Tempo Médio de Processamento: ").append(ret.getTMed()).append(" minuto(s)");
			
			if (ret.getDhRetorno() != null)
			{
				msg.append("<font color=\"880000\">");
				msg.append("<br />Previsão de Retorno: ").append(ret.getDhRetorno());
				msg.append("</font>");
			}
			
			if (ret.getXObs() != null)
				msg.append("<br />Obs: ").append(ret.getXObs());
		}
		catch (Throwable e)
		{
			log.severe (e.getLocalizedMessage());
			e.printStackTrace();
			//
			msg = new StringBuilder("@Error@ - Falha na verificação de Status - " + e.getMessage());
		}

		return msg.toString();
	}	//	doIt
}	//	ProcStatusServico
