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
package org.adempierelbr.nfse.util;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.UUID;
import java.util.logging.Level;

import org.adempiere.base.Service;
import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.nfse.sp.api.LoteNFeStub;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.SignatureUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MSequence;
import org.compiere.model.MSysConfig;
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

import br.gov.sp.prefeitura.nfe.PedidoEnvioLoteRPSDocument;
import br.gov.sp.prefeitura.nfe.PedidoEnvioLoteRPSDocument.PedidoEnvioLoteRPS;
import br.gov.sp.prefeitura.nfe.PedidoEnvioLoteRPSDocument.PedidoEnvioLoteRPS.Cabecalho;
import br.gov.sp.prefeitura.nfe.RetornoEnvioLoteRPSDocument;
import br.gov.sp.prefeitura.nfe.RetornoEnvioLoteRPSDocument.RetornoEnvioLoteRPS;
import br.gov.sp.prefeitura.nfe.RetornoEnvioRPSDocument;
import br.gov.sp.prefeitura.nfe.RetornoEnvioRPSDocument.RetornoEnvioRPS;
import br.gov.sp.prefeitura.nfe.tipos.TpCPFCNPJ;
import br.gov.sp.prefeitura.nfe.tipos.TpChaveNFeRPS;
import br.gov.sp.prefeitura.nfe.tipos.TpEvento;
import br.gov.sp.prefeitura.nfe.tipos.TpRPS;

/**
 *  Process to get Next NF Number
 *  
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: NFSETransmit.java, v1.0 2013/06/24 4:49:06 PM, ralexsander Exp $
 */
public class NFSETransmit extends SvrProcess
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(NFSETransmit.class);

	/**	Dates			*/
	private Timestamp p_DateFrom 	= null;
	private Timestamp p_DateTo 		= null;

	/**	Organization	*/
	private int p_AD_Org_ID 			= 0;

	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (MLBRNotaFiscal.COLUMNNAME_AD_Org_ID.equals(name))
			{
				p_AD_Org_ID = para[i].getParameterAsInt();
			}
			else if (MLBRNotaFiscal.COLUMNNAME_DateDoc.equals(name))
			{
				p_DateFrom = (Timestamp) para[i].getParameter();
				p_DateTo = (Timestamp) para[i].getParameter_To();
			}
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message
	 *  @throws Exception if not successful
	 */
	protected String doIt() throws Exception
	{
		log.info ("NFSETransmit Process");
		
		if (MLBRNotaFiscal.Table_ID == getTable_ID() && getRecord_ID() > 0)
			p_AD_Org_ID = new MLBRNotaFiscal (getCtx(), getRecord_ID(), get_TrxName()).getAD_Org_ID();
		
		if (p_AD_Org_ID == 0)
			throw new AdempiereUserError ("@FillMandatory@ @AD_Org_ID@");
		
		MOrgInfo oi = MOrgInfo.get (getCtx(), p_AD_Org_ID, null);
		MLBRDigitalCertificate.setCertificate (getCtx(), p_AD_Org_ID);
		
		PedidoEnvioLoteRPSDocument envioLoteRPSDoc = PedidoEnvioLoteRPSDocument.Factory.newInstance();
		PedidoEnvioLoteRPS envioLoteRPS = envioLoteRPSDoc.addNewPedidoEnvioLoteRPS();
		
		Cabecalho cabecalho = envioLoteRPS.addNewCabecalho();
		cabecalho.setVersao(1);
		TpCPFCNPJ tpCPFCNPJ = cabecalho.addNewCPFCNPJRemetente();
		tpCPFCNPJ.setCNPJ(TextUtil.toNumeric(oi.get_ValueAsString("lbr_CNPJ")));
		
		if (getTable_ID() == 0)
		{
			//	Múltiplos RPS			
			final String whereClause = "IsCancelled='N' AND DateDoc BETWEEN " + 
					DB.TO_DATE(p_DateFrom) + " AND " + 
					DB.TO_DATE(p_DateTo) + " AND AD_Org_ID=? AND IsPrinted='N'";
			//
			List<MLBRNotaFiscal> list = new Query (Env.getCtx(), MLBRNotaFiscal.Table_Name, whereClause, get_TrxName())
				.setParameters(new Object[]{p_AD_Org_ID})
				.list();
			//
			List<TpRPS> rps = new ArrayList<TpRPS>();
			
			for (MLBRNotaFiscal nf : list)
			{
				//	Gera a sequência de RPS neste momento
				if (!MSysConfig.getBooleanValue(SysConfig.LBR_REALTIME_RPS_NUMBER, true, nf.getAD_Client_ID())
						&& MLBRNotaFiscal.RPS_TEMP.equals(nf.getDocumentNo()))
				{
					nf.setDocumentNo(MSequence.getDocumentNo(nf.getC_DocTypeTarget_ID(), get_TrxName(), false));
					nf.save();
				}
				rps.add (NFSeXMLGenerator.generateNFSe (nf.getLBR_NotaFiscal_ID(), true, get_TrxName()));
			}
			
			//	Converter em Array
			TpRPS[] tpRPSArray = new TpRPS[rps.size()];
			rps.toArray(tpRPSArray);
			//
			envioLoteRPS.setRPSArray (tpRPSArray);

			Calendar calFrom = new GregorianCalendar ();
			calFrom.setTimeInMillis (p_DateFrom.getTime());
			
			Calendar calTo = new GregorianCalendar ();
			calTo.setTimeInMillis (p_DateTo.getTime());
			
			//	Cabeçalho para o Lote
			cabecalho.setDtInicio (calFrom);
			cabecalho.setDtFim (calTo);
			cabecalho.setQtdRPS (envioLoteRPS.sizeOfRPSArray());
			cabecalho.setValorTotalServicos (getTotalServicos (envioLoteRPS));
		}
		else if (MLBRNotaFiscal.Table_ID == getTable_ID())
		{
			TpRPS rps = NFSeXMLGenerator.generateNFSe (getRecord_ID(), true, get_TrxName());
			envioLoteRPS.setRPSArray(new TpRPS[]{rps});
			//
			if (MSysConfig.getBooleanValue (SysConfig.LBR_DEBUG_RPS, false, getAD_Client_ID()))
			{			
				/**
				 * 	Preenche informações do Lote, pois para Teste não há 
				 * 		ambiente de envio de RPS único, somente em lote.
				 */
				if (MLBRNotaFiscal.Table_ID == getTable_ID())
				{
					Calendar cal = envioLoteRPS.getRPSArray(0).getDataEmissao();
					//
					cabecalho.setDtInicio(cal);
					cabecalho.setDtFim(cal);
					cabecalho.setQtdRPS(1);
					cabecalho.setValorTotalServicos(envioLoteRPS.getRPSArray(0).getValorServicos());
				}
			}
		}
		
		//	AssinaturaDigital.Assinar (xml, oi, AssinaturaDigital.RPS);
		new SignatureUtil (oi, SignatureUtil.RPS).sign (envioLoteRPSDoc, envioLoteRPSDoc.getPedidoEnvioLoteRPS().newCursor());
		
		//	Gera o XML em arquivo para Assinatura	
		StringBuilder xml = new StringBuilder (envioLoteRPSDoc.xmlText(NFeUtil.getXmlOpt()));
		
		//	Log
		log.fine ("Sending XML: " + xml.toString());
		
		//	Retorno da Prefeitura
		String retornoXML = "";
		
		//	Valida o documento
		NFeUtil.validate (envioLoteRPSDoc);

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
			handler = docFiscal.getHandler (certificate.getlbr_CertType(), NFSETransmit.class.getName());
			if (handler != null)
				break;
		}
		
		// 	We have both, the URL for the local app and the Plugin transmitter
		if (handler != null)
		{
			synchronized (respStatus)
			{
				String flags = "";
				
				//	Flags
				if (MSysConfig.getBooleanValue (SysConfig.LBR_DEBUG_RPS, false, getAD_Client_ID()))
					flags += "debug";
				
				//	Envio o Lote
				else if (getTable_ID() == 0)
					flags += "lot";
				
				//	Envia o RPS único
				else if (MLBRNotaFiscal.Table_ID == getTable_ID())
					flags += "single";
				
				String uuid = UUID.randomUUID().toString();
				handler.transmitDocument(IDocFiscalHandler.DOC_NFSE, oi.get_ValueAsString(I_W_AD_OrgInfo.COLUMNNAME_lbr_CNPJ), 
						uuid, certificate.getURL(), "", flags, xml.toString(), respStatus);
				
				//	Wait until process is completed, when processing is async
				if (MLBRDigitalCertificate.LBR_CERTTYPE_PKCS11Remote.equals(certificate.getlbr_CertType()))
					respStatus.wait();
				
				//	Error message
				if (respStatus.toString().startsWith("@Error="))
					throw new Exception (respStatus.toString().substring(7));
				
				retornoXML = respStatus.toString();
			}	//	synchronized
		}
		else
		{
			//	Stub
			LoteNFeStub stub = new LoteNFeStub();
			
			//	Monta o Lote para Teste
			if (MSysConfig.getBooleanValue (SysConfig.LBR_DEBUG_RPS, false, getAD_Client_ID()))
				retornoXML = stub.testeEnvioLoteRPS(1, xml.toString());
			
			//	Envio o Lote
			else if (getTable_ID() == 0)
				retornoXML = stub.envioLoteRPS(1, xml.toString());
			
			//	Envia o RPS único
			else if (MLBRNotaFiscal.Table_ID == getTable_ID())
				retornoXML = stub.envioRPS (1, xml.toString());
		}
		
		log.fine (retornoXML);

		//	Read from XML
		boolean sucesso 			= false;
		TpEvento[] alertas 			= null;
		TpEvento[] erros 			= null;
		TpChaveNFeRPS[] chaveNFeRPS = null;

		if (getTable_ID() == 0 || MSysConfig.getBooleanValue (SysConfig.LBR_DEBUG_RPS, false, getAD_Client_ID()))
		{
			RetornoEnvioLoteRPS result = RetornoEnvioLoteRPSDocument.Factory.parse(retornoXML).getRetornoEnvioLoteRPS();
			sucesso = result.getCabecalho().getSucesso();
			//
			alertas = result.getAlertaArray();
			erros 	= result.getErroArray();
			chaveNFeRPS = result.getChaveNFeRPSArray();
		}
		else if (MLBRNotaFiscal.Table_ID == getTable_ID())
		{
			RetornoEnvioRPS result = RetornoEnvioRPSDocument.Factory.parse(retornoXML).getRetornoEnvioRPS();
			sucesso = result.getCabecalho().getSucesso();
			//
			alertas = result.getAlertaArray();
			erros 	= result.getErroArray();
			chaveNFeRPS = new TpChaveNFeRPS[]{result.getChaveNFeRPS()};
		}
		
		for (TpEvento alerta : alertas)
		{
			addLog ("Alerta - NF=" + alerta.getChaveNFe() + ", Cod=" + alerta.getCodigo() + ", Desc=" + alerta.getDescricao());
		}
		for (TpEvento erro : erros)
		{
			addLog ("Erro - NF=" + erro.getChaveNFe() + ", Cod=" + erro.getCodigo() + ", Desc=" + erro.getDescricao());
		}
		for (TpChaveNFeRPS chaves : chaveNFeRPS)
		{
			if (chaves.getChaveRPS() == null || chaves.getChaveNFe() == null)
				continue;
			
			proccessNFSe ("" + chaves.getChaveRPS().getNumeroRPS(), "" + chaves.getChaveNFe().getNumeroNFe(), chaves.getChaveNFe().getCodigoVerificacao(), p_AD_Org_ID);
		}
		
		return sucesso ? "@Success@" : "@Error@ Verifique o LOG";
	}	//	doIt
	
	private BigDecimal getTotalServicos (PedidoEnvioLoteRPS envioLoteRPS)
	{
		BigDecimal total = new BigDecimal (0);

		for (TpRPS rps : envioLoteRPS.getRPSArray())
			total = total.add(rps.getValorServicos());
		
		return total;
	}	//	getTotalServicos

	/**
	 * 		Processar NF-e
	 * 	@param p_RPS
	 * 	@param p_NFe
	 * 	@param p_VerifCode
	 */
	private void proccessNFSe (String p_RPS, String p_NFe, String p_VerifCode, int p_AD_Org_ID)
	{
		int LBR_NotaFiscal_ID = MLBRNotaFiscal.getLBR_NotaFiscal_ID (p_AD_Org_ID, p_RPS, true, MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalDeServiçosEletrônicaRPS, get_TrxName());
		if (LBR_NotaFiscal_ID > 0)
		{
			MLBRNotaFiscal nf = new MLBRNotaFiscal (getCtx(), LBR_NotaFiscal_ID, get_TrxName());
			nf.setIsPrinted(true); //	Marca impresso para cancelar documentos vinculados
			nf.setProcessed(true);
			nf.setlbr_NFENo(p_NFe);
			nf.setlbr_NFeProt(p_VerifCode);
			nf.save();
		}
	}	//	proccessNFSe
}	//	NFSETransmit