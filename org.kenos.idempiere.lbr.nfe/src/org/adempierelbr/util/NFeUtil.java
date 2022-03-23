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
package org.adempierelbr.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.StringWriter;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Timestamp;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRCSC;
import org.adempierelbr.model.MLBRNFeWebService;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.X_LBR_DI;
import org.adempierelbr.wrapper.I_W_C_City;
import org.apache.commons.codec.binary.Base64;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlOptions;
import org.apache.xmlbeans.XmlValidationError;
import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;
import org.compiere.model.MCity;
import org.compiere.model.MOrder;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Ini;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import br.inf.portalfiscal.nfe.v400.NFeDocument;

/**
 * 	Utilitários para gerar a NFe.
 *
 * @author Ricardo Santana
 */
public abstract class NFeUtil
{

	/**	Logger				*/
	private static CLogger log = CLogger.getCLogger(NFeUtil.class);

	/** Versão				*/
	public static final String VERSAO_LAYOUT	= "4.00";
	public static final String VERSAO_APP		= "Kenos ERP 4.00";
	public static final String VERSAO_QR_CODE 	= "2";
	@Deprecated
	public static final String VERSAO_CCE		= "1.00";
	public static final String VERSAO_EVENTO	= "1.00";

	/** XML					*/
	public static final String DIST_XML_FILE_EXT 	= "-dst.xml";
	public static final String PROC_XML_FILE_EXT 	= "-procNFe.xml";
	public static final String XML_HEADER			= "<?xml version=\"1.0\" encoding=\"UTF-8\"?>";
	@Deprecated
	public static final long XML_SIZE   			= 500;

	/** Status				*/
	@Deprecated
	public static final String AUTORIZADA 			= "100";
	@Deprecated
	public static final String CANCELADA  			= "101";
	@Deprecated
	public static final String CANCELADAPOREVENTO  	= "135";

	/** Eventos				*/
	public static final String NFE_EVENTO_CCE 		= "110110";
	public static final String NFE_EVENTO_CANCEL 	= "110111";
	
	/** Encoding			*/
	public static final String NFE_ENCODING			= "UTF-8";
	
	/** Reference NFeStatus */
	public static final int NFeReference   			= 1100004;

	/**	XML Options			*/
	private static XmlOptions xmlOptions 			= null;
	
	/**	Region BA			*/
	public static final String REGION_CODE_BA = "29";
			
	/**
	 * Gera o cabeçalho da NFe
	 *
	 * @return cabecalho
	 */
	@Deprecated
	public static String geraCabecNFe(){
		String cabecalho = "<NFe xmlns=\"http://www.portalfiscal.inf.br/nfe\">";
		return cabecalho;
	} //geraCabecNFe

	/**
	 * Gera o rodapé da NFe
	 *
	 * return rodape
	 */
	@Deprecated
	public static String geraRodapNFe(){
		String rodape = "</NFe>";
		return rodape;
	} //geraRodapNFe

	/**
	 * Gera o cabeçalho distribuição
	 *
	 * @return Cabeçalho distribuiçãi
	 */
	@Deprecated
	public static String geraCabecDistribuicao(){
		String cabecalho = "<?xml version=\"1.0\" encoding=\"utf-8\"?>" +
		 "<nfeProc xmlns=\"http://www.portalfiscal.inf.br/nfe\"  versao=\"" + VERSAO_LAYOUT + "\">";

		return cabecalho;
	}

	/**
	 * Rodapé padrão Distribuição
	 *
	 * @param chNFe
	 * @param nProt
	 * @param tpAmb
	 * @param dhRecbto
	 * @param digVal
	 * @param cStat
	 * @param xMotivo
	 * @return XML
	 */
	@Deprecated
	public static String geraRodapDistribuicao (String chNFe, String nProt, String tpAmb, String dhRecbto,
			                                    String digVal, String cStat, String xMotivo)
	{
		String dados = 	"<protNFe xmlns=\"http://www.portalfiscal.inf.br/nfe\" versao=\"" + VERSAO_LAYOUT + "\"><infProt>" +
				        "<tpAmb>"+tpAmb+"</tpAmb>" +
				        "<verAplic>"+VERSAO_APP+"</verAplic>" +
				        "<chNFe>"+chNFe+"</chNFe>" +
				        "<dhRecbto>"+dhRecbto+"</dhRecbto>" +
				        "<nProt>"+nProt+"</nProt>" +
				        "<digVal>"+digVal+"</digVal>" +
				        "<cStat>"+cStat+"</cStat>" +
				        "<xMotivo>"+xMotivo+"</xMotivo></infProt></protNFe></nfeProc>";

		return dados;
	}	//	RodapDistribuicao

	/**
	 * Método para gerar dados para cancelamento NF 2.00
	 * @param Chave da NF-e
	 * @param Protocolo de Autorização
	 * @param Tipo de Ambiente
	 * @param Motivo
	 * @return	XML
	 */
	public static String geraMsgCancelamento (String chNFe, String protocolNFe, String envType, String motivo)
	{
		String msg = "<cancNFe xmlns=\"http://www.portalfiscal.inf.br/nfe\" versao=\"2.00\">" +
							  "<infCanc Id=\"ID"+chNFe+"\">"+
						          "<tpAmb>"+envType+"</tpAmb>"+
						          "<xServ>CANCELAR</xServ>"+
						          "<chNFe>"+chNFe+"</chNFe>"+
						          "<nProt>"+protocolNFe+"</nProt>"+
						          "<xJust>"+motivo+"</xJust>"+
					          "</infCanc>"+
					  "</cancNFe>";
		return msg;
	}	// geraMsgCancelamento

	@Deprecated
	public static File generateDistribution(MLBRNotaFiscal nf) throws Exception{

		File attach = null;

		if (nf.getlbr_NFeProt() == null || nf.getlbr_NFeProt().equals("")) //Verifica se foi processada
			return attach;

		String status = nf.getlbr_NFeStatus();
		String xmlExt = DIST_XML_FILE_EXT;
		
		if (status.equals(AUTORIZADA)){ //Autorizado o uso da NF-e
			xmlExt = "-dst.xml";
		}
		else if (status.equals(CANCELADA) || status.equals(CANCELADAPOREVENTO)){ //Cancelamento de NF-e homologado
			xmlExt = "-can.xml";
		}

		File xml = getAttachmentEntryFile(nf.getAttachment().getEntry(0));
		if (xml == null || xml.getName().endsWith(xmlExt)) //Já está no padrão de distribuição
			return attach;

	    String dados = XMLtoString(xml);
	    //
	    String cabecalho  = geraCabecDistribuicao();
		//
	    String rodape 	  = geraRodapDistribuicao(nf.getlbr_NFeID(), nf.getlbr_NFeProt(), getEnvType(nf.getCtx()),
	        		                                  timeToString(nf.getDateTrx()), nf.getlbr_DigestValue(),
	        		                                  status,getNFeStatus(status));
		//
		String dadosEmXML = cabecalho + dados + rodape;
		attach = new File(TextUtil.generateTmpFile(dadosEmXML, nf.getlbr_NFeID() + xmlExt));

		nf.getAttachment(true).delete(true); //Exclui anexo anterior. BUG ADempiere

		return attach;
	} //NFeDistribution

	/**
	 * update Attachment
	 * @param nf
	 * @param xml
	 * @return true = success, false = error
	 */
	@Deprecated
	public static boolean updateAttach(MLBRNotaFiscal nf, File xml){

		if (xml != null){
			nf.getAttachment(true);	//	FIX
			MAttachment attachDist = nf.createAttachment();
			attachDist.addEntry(xml);
			return attachDist.save();
		}

		return true;
	}

	@Deprecated
	public static String XMLtoString(File xml) throws Exception{

		String dados = "";
		if (xml == null)
			return dados;

		DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory.newInstance();
        InputStream inputStream = new FileInputStream(xml);
        org.w3c.dom.Document doc = documentBuilderFactory.newDocumentBuilder().parse(inputStream);
        StringWriter stw = new StringWriter();
        Transformer serializer = TransformerFactory.newInstance().newTransformer();
        serializer.setOutputProperty(OutputKeys.OMIT_XML_DECLARATION, "yes");
        serializer.transform(new DOMSource(doc), new StreamResult(stw));
        dados = stw.toString();

        if (dados.indexOf("<NFe") != -1){
	        dados = dados.substring(dados.indexOf("<NFe"),dados.indexOf("</NFe>")+6);
	        if (dados.startsWith("<NFe>")){
	        	dados = geraCabecNFe() + dados.substring(5);
	        }
        }

        return dados;
	} //XMLtoString
	
	/**
	 * removeIndent
	 * @param xml
	 * @return
	 */
	@Deprecated
	public static String removeIndent(String xml){
		
		StringBuilder newXML = new StringBuilder("");
		
		int i = 0;
		while (i < xml.length()){
			int end = xml.indexOf(">", i);
			if (end != -1){
				newXML.append(xml.substring(i, end+1));
				i = end + 1;
				
				int newTag = xml.indexOf("<", i);
				int endTag = xml.indexOf("</", i);
				
				if (endTag > newTag){
					i = newTag;
				}
				
				//check if value is blank
				if (endTag != -1){
					String value = xml.substring(i, endTag);
					if (value.trim().isEmpty())
						i = endTag;
				}
				
			}
		}
					
		return newXML.toString();
	} //removeIndent
	
	
	/**
	 * Get Attachment
	 *
	 * @param entry
	 * @return
	 */
	public static File getAttachmentEntryFile(MAttachmentEntry entry)
	{
		//BF - Attachment on FileSystem
		String fileName = entry.toString();
		if(fileName!=null && fileName.lastIndexOf(File.separator) != -1)
			fileName = fileName.substring(fileName.lastIndexOf(File.separator)+1);
		
		String localFile = System.getProperty("java.io.tmpdir")
				+ System.getProperty("file.separator") + fileName;
		String downloadedLocalFile = System.getProperty("java.io.tmpdir")
				+ System.getProperty("file.separator") + "TMP" + fileName;
		File attachedFile = new File(localFile);
		if (attachedFile.exists())
		{
			String localMD5hash = hashMD5 (attachedFile);
			String entryMD5hash = hashMD5 (entry.getData());
			if (localMD5hash.equals(entryMD5hash))
			{
				log.fine("no need to download: local file is up-to-date");
			}
			else
			{
				log.fine("file attached is different that local one, download and replace");
				File downloadedFile = new File(downloadedLocalFile);
				entry.getFile(downloadedFile);
				attachedFile.delete();
				downloadedFile.renameTo(attachedFile);
			}
		}
		else
		{
			entry.getFile(attachedFile);
		}
		return attachedFile;
	}	//	getAttachmentEntryFile

	/**
	 * String para Timestamp
	 * @param dhRecbto
	 * @return
	 */
	public static Timestamp stringToTime(String dhRecbto){
		if (dhRecbto == null || dhRecbto.isBlank())
			return null;
		return TextUtil.stringToTime(dhRecbto.replace('T', ' '), "yyyy-MM-dd HH:mm:ss");
	} //StringToDate

	/**
	 * Timestamp para String
	 * @param dhRecbto
	 * @return
	 */
	public static String timeToString(Timestamp dhRecbto){
		return TextUtil.timeToString(dhRecbto, "yyyy-MM-dd HH:mm:ss").replace(' ', 'T');
	} //DateToString

	/**
	 * getEnvType
	 * @param ctx
	 * @return envType
	 */
	public static String getEnvType(Properties ctx){
		MOrgInfo oi = MOrgInfo.get(ctx, Env.getAD_Org_ID(ctx),null);
		String envType 	= oi.get_ValueAsString("lbr_NFeEnv");

		if (envType == null || envType.equals(""))
			envType = "2"; //Homologação

		return envType;
	} //getEnvType

	public static String getNFeStatus(String status)
	{

		String sql = "SELECT Name FROM AD_Ref_List " +
				     "WHERE AD_Reference_ID = ? AND Value = ?";

		String NFeStatus = DB.getSQLValueString(null, sql,
				new Object[]{NFeReference, status});

		return NFeStatus;
	}	//getNFeStatus

	/**
	 * Valida tamanho do Arquivo XML
	 * @param file
	 * @return error or null
	 */
	@Deprecated
	public static String validateSize (File file)
	{
		long size = file.length();
		if ((size/1024) > XML_SIZE)
		{
			String erro = "Tamanho do Arquivo XML inválido > " + XML_SIZE + " kbytes";
			log.severe(erro);
			return erro;
		}

		return null;
	}	//	validateSize

	/**
	 * Valida tamanho do Arquivo XML
	 * @param file
	 * @return error or null
	 */
	public static void validateSize (StringBuilder file)
	{
		long size = file.length();
		if ((size/1024) > XML_SIZE)
			throw new AdempiereException ("Tamanho do Arquivo XML inválido > " + XML_SIZE + " kbytes");
	}	//	validateSize
	
	/**
	 * 		Verifica a NF e retorna o ID da mesma
	 * 
	 * 	@param nf a ser verificada
	 * 	@return	ID da NF Eletrônica ou NULL quando houver erro
	 */
	public static String checkXMLFile (MLBRNotaFiscal nf)
	{
		//	Validação preliminar
		if (nf == null || nf.getAttachment() == null || nf.getAttachment().getEntry(0) == null)
			return null;
		
		String nfeID = nf.getAttachment().getEntry(0).toString();
		//
		if(nfeID != null)
		{
			int beginIndex = nfeID.lastIndexOf(File.separator)+1;
			int endIndex   = nfeID.lastIndexOf('-');
			
			nfeID = nfeID.substring(beginIndex, endIndex == -1 ? nfeID.length() : endIndex);
		}
		
		return nfeID;
	}	//	checkXMLFile


	/**
	 * 	Get Value from XML
	 *
	 * @param node
	 * @param Tag
	 * @return
	 */
	public static String getValue (Node node, String Tag)
	{
		if (node == null)
			return "";

		NodeList nl = ((Element) node).getElementsByTagName(Tag);
		if (nl == null)
			return "";

		Element el = (Element) nl.item(0);
		if (el == null)
			return "";

		nl = el.getChildNodes();
		if (nl == null)
			return "";

		return nl.item(0).getNodeValue();
	}	//	getValue

	/**
	 * 	Get Value from XML
	 *
	 * @param node
	 * @param Tag
	 * @return
	 */
	public static String getValue (Document doc, String Tag)
	{
		if (doc.getElementsByTagName(Tag) == null)
			return "";

		if (doc.getElementsByTagName(Tag).item(0) == null)
			return "";

		return doc.getElementsByTagName(Tag).item(0).getTextContent();
	}	//	getValue

	/**
	 * 	Get Resource to include in XSD File
	 *
	 * @param clazz
	 * @param name
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public static URL getResource(Class clazz, String name)
	{
        // Get the URL for the resource using the standard behavior
        URL result = clazz.getResource(name);

        // Check to see that the URL is not null and that it's a JAR URL.
        if (result != null && "jar".equalsIgnoreCase(result.getProtocol())) {
            // Get the URL to the "clazz" itself.  In a JNLP environment, the "getProtectionDomain" call should succeed only with properly signed JARs.
            URL classSourceLocationURL = clazz.getProtectionDomain().getCodeSource().getLocation();
            // Create a String which embeds the classSourceLocationURL in a JAR URL referencing the desired resource.
            String urlString = MessageFormat.format("jar:{0}!/{1}/{2}", classSourceLocationURL.toExternalForm(), packageNameOfClass(clazz).replaceAll("\\.", "/"), name);

            // Check to see that new URL differs.  There's no reason to instantiate a new URL if the external forms are identical (as happens on pre-1.5.0_16 builds of the JDK).
            if (urlString.equals(result.toExternalForm()) == false) {
                // The URLs are different, try instantiating the new URL.
                try {
                    result = new URL(urlString);
                } catch (MalformedURLException malformedURLException) {
                    throw new RuntimeException(malformedURLException);
                }
            }
        }
        return result;
    }

	/**
	 * 	packageNameOfClass
	 *
	 * @param clazz
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public static String packageNameOfClass(Class clazz)
    {
        String result = "";
        String className = clazz.getName();
        int lastPeriod = className.lastIndexOf(".");

        if (lastPeriod > -1) {
            result = className.substring(0, lastPeriod);
        }
        return result;
    }	//	packageNameOfClass
	
	/**
	 * 	Pega o código da cidade
	 * 	
	 * 	@param oi
	 * 	@return	region code
	 */
	public static String getCityCode (MOrgInfo oi)
	{
		if (oi == null || oi.getC_Location_ID() == 0 || oi.getC_Location().getC_City_ID() == 0)
			return null;
		//
		I_W_C_City city = POWrapper.create(MCity.get (Env.getCtx(), oi.getC_Location().getC_City_ID()), I_W_C_City.class);
		if (city.getlbr_CityCode() > 0)
			return "" + city.getlbr_CityCode();
		//
		return null;
	}	//	getCityCode
	
	/**
	 * 	Pega o código do estado
	 * 	
	 * 	@param uf literal
	 * 	@return	region code
	 */
	public static int getRegionCode (String region)
	{
		if (region.equals("RO")) return 11;
		if (region.equals("AC")) return 12;
		if (region.equals("AM")) return 13;
		if (region.equals("RR")) return 14;
		if (region.equals("PA")) return 15;
		if (region.equals("AP")) return 16;
		if (region.equals("TO")) return 17;
		if (region.equals("MA")) return 21;
		if (region.equals("PI")) return 22;
		if (region.equals("CE")) return 23;
		if (region.equals("RN")) return 24;
		if (region.equals("PB")) return 25;
		if (region.equals("PE")) return 26;
		if (region.equals("AL")) return 27;
		if (region.equals("SE")) return 28;
		if (region.equals("BA")) return 29;
		if (region.equals("MG")) return 31;
		if (region.equals("ES")) return 32;
		if (region.equals("RJ")) return 33;
		if (region.equals("SP")) return 35;
		if (region.equals("PR")) return 41;
		if (region.equals("SC")) return 42;
		if (region.equals("RS")) return 43;
		if (region.equals("MS")) return 50;
		if (region.equals("MT")) return 51;
		if (region.equals("GO")) return 52;
		if (region.equals("DF")) return 53;
		return -1;
	}	//	getRegionCode
	
	/**
	 * 	Pega o código do estado
	 * 	
	 * 	@param oi
	 * 	@return	region code
	 */
	public static int getRegionCode (MOrgInfo oi)
	{
		String result = getCityCode(oi);
		//
		try
		{
			if (result != null && result.length() > 2)
				return Integer.parseInt (result.substring(0, 2));
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		//
		return 0;
	}	//	getRegionCode
	
	/**
	 * 	Wrap the Msg
	 * 
	 * 	@param msg
	 * 	@return
	 */
	public static String wrapMsg (String msg)
	{
		return "<Wrapper>" + msg + "</Wrapper>";
	}	//	wrapMsg
	
	/**
	 * 	Format Date and Time to XML Standard
	 * 	@param ts
	 * 	@return
	 */
	public static String formatTime (String ts)
	{
		return TextUtil.timeToString (TextUtil.stringToTime(ts, "yyyy-MM-dd'T'HH:mm:ss"), "dd/MM/yyyy' 'HH:mm:ss");
	}	//	formatTime
	
	/**
	 * 	Get XML Option to correctly convert the xml in text
	 * 	@return XmlOptions
	 */
	public static XmlOptions getXmlOpt ()
	{
		if (xmlOptions == null)
		{
			xmlOptions = new XmlOptions();
			xmlOptions.setUseDefaultNamespace();
			xmlOptions.setCharacterEncoding("UTF-8");
		}
		//
		return xmlOptions;
	}	//	getXmlOpt

	/**
	 * 	Format Error Msg
	 * 	@param validationErrors
	 * 	@return
	 */
	private static String formatErrorMsg (List<XmlValidationError> validationErrors)
	{
		//	Result
		String result = "";
		
		//	Counter
		int counter = 1;

		Iterator<XmlValidationError> iter = validationErrors.iterator();
		while (iter.hasNext())
		{
			//	Exemplo : [1] Erro XYZ
			String msg = iter.next().toString();

			msg = msg.substring(1 + msg.indexOf(":"));
			msg = msg.substring(1 + msg.indexOf(":"));
			
			result += "[" + counter++ + "] " + msg + "\n";
		}
		
		//	Clean result log
		result = result.replace ("@http://www.w3.org/2000/09/xmldsig#", "");
		result = result.replace ("@http://www.portalfiscal.inf.br/nfe", "");
		result = result.replace ("'", "");
		
		return result;
	}	//	formatErrorMsg
	
	/**
	 * 	Validate
	 * 
	 * @param xmlNFe
	 * @throws XmlException
	 */
	public static void validate (XmlObject xmlNFe) throws XmlException
	{
		//	Validar o tamanho do arquivo
//		NFeUtil.validateSize (xmlNFe);

		// 	Set up the validation error listener.
		List<XmlValidationError> validationErrors = new ArrayList<XmlValidationError>();
		XmlOptions xmlOptions = new XmlOptions();
		xmlOptions.setErrorListener(validationErrors);
		
		// 	During validation, errors are added to the ArrayList for
		// 		retrieval and printing by the printErrors method.
		boolean isValid = xmlNFe.validate (xmlOptions);
		
		// 	Print the errors if the XML is invalid.
		if (!isValid)
		{
			String result = NFeUtil.formatErrorMsg (validationErrors);
			log.warning (xmlNFe.toString());
			
			//	Errors
			throw new AdempiereException (result.toString());
		}
	}	//	validate
	

	
	
	/**
	 * Monta parâmetros a serem colocados em uma URL
	 * 
	 * @param parametros
	 * @return
	 */
	public static String generateQRCodeParamsURL(Map<String, String> param) {

		String ret = "";
		int nParameter = 0;

		for (String key : param.keySet()) {

			if (nParameter > 0)
				ret += "|";

			ret += param.get(key);

			nParameter++;
		}

		return ret;
	}

	/**
	 * Encode byte array to Digest Code in SHA-1 method
	 * 
	 * Source:
	 * http://www.guj.com.br/17236-nota-fiscal-eletronica---validar-assinatura
	 * 
	 * @param data
	 *            byte[]
	 * @return String digest
	 */
	public static String getDigestBase64String(byte[] data) throws Exception {
		MessageDigest messageDisgester = MessageDigest.getInstance("SHA-1");
		return new String(Base64.encodeBase64(messageDisgester.digest(data)));
	}

	/**
	 * 	Generate QRCode
	 * 
	 * @param nf
	 * @param digestValue
	 * @param nfeID
	 * @return
	 * @throws Exception
	 */
	public static String generateQRCodeNFCeURL (MLBRNotaFiscal nf, String digestValue, String nfeID, String cDest, Timestamp dhEmi, String vICMS, String tpAmb) throws Exception
	{
		String envType 	= nf.getlbr_NFeEnv();
		//
		if (envType == null || envType.isEmpty())
			throw new Exception ("Ambiente da NF-e deve ser preenchido.");
		
		if (nf.getOrg_Location_ID() <= 0)
			throw new Exception ("Endereço da Organização deve ser preenchido.");
		
		// URL
		String url = MLBRNFeWebService.getURL (MLBRNFeWebService.NFCE_CONSULTA_QRCODE, envType, NFeUtil.VERSAO_LAYOUT, nf.getOrg_Location().getC_Region_ID());
		
		// CSC
		MLBRCSC csc = MLBRCSC.get (nf.getAD_Org_ID());
		
		// QRCode
		String chNFe = nfeID;
		String nVersao = NFeUtil.VERSAO_QR_CODE;
		String vNF = TextUtil.bigdecimalToString(nf.getGrandTotal());
		String digest = digestValue;
		String tokenID = csc.getValue();
		String token = csc.getName();

		// generate
		return generateQRCodeNFCeURL(chNFe, nVersao, tpAmb, cDest, dhEmi, vNF, vICMS, digest, tokenID, token, url);
	}	//	generateQRCodeNFCeURL
	
	/**
	 * Generate NFC-e QRCode
	 * 
	 * Especs:
	 * http://www.nfe.fazenda.gov.br/portal/exibirArquivo.aspx?conteudo=jKHRw%
	 * 20g4V%20E=
	 * 
	 * @param chNFe
	 * @param nVersao
	 * @param tpAmb
	 * @param cDest
	 * @param dhEmi
	 * @param vNF
	 * @param vICMS
	 * @param digest
	 * @param tokenID
	 * @param token
	 * @param url
	 * @return
	 * @throws Exception
	 */
	public static String generateQRCodeNFCeURL(String chNFe, String nVersao, String tpAmb, String cDest,
			Timestamp dhEmi, String vNF, String vICMS, String digest, String tokenID, String token, String url)
					throws Exception
	{
		if (url == null || url.isEmpty())
			throw new Exception("URL de consulta pelo QrCode é inválida");
		//
		if (tokenID == null || tokenID.isEmpty() || token == null || token.isEmpty())
			throw new Exception(
					"CSC inválido! Empresa não possui chave de segurança para o QR-Code cadastrada na UF, ou as chaves existentes foram revogadas");
		//
		Map<String, String> parametros = new LinkedHashMap<String, String>();
		parametros.put("chNFe", chNFe);
		parametros.put("nVersao", nVersao);
		parametros.put("tpAmb", tpAmb);
		parametros.put("cIdToken", String.valueOf(Integer.valueOf(tokenID)));
		      
		// Calcula o hash do QR Code:
		String hashQRCodeStr = generateQRCodeParamsURL(parametros) + token;
		String hashQRCode = TextUtil.byteArrayToHexString(TextUtil.generateSHA1(hashQRCodeStr));

		//	Somente usado para criar o Hash
		parametros.put("cHashQRCode", hashQRCode);
		return url + "?p=" + NFeUtil.generateQRCodeParamsURL(parametros);
	}	//	generateQRCodeNFCeURL
	
	/**
	 * 	Convert Date
	 * 	@param ts
	 * 	@return
	 */
	public static String normalizeTZ (Timestamp ts)
	{
		StringBuffer timeStr = new StringBuffer (TextUtil.timeToString (ts, "yyyy-MM-dd'T'HH:mm:ssZ"));
		return timeStr.insert (timeStr.length() - 2, ':').toString();
	}	//	convertDate
	
	/**
	 * 		Hash the file
	 * 	@param ba
	 * 	@return md5 hash of file
	 */
	public static String hashMD5 (File file)
	{
		//	No file provided
		if (file == null)
			return "";

		try
		{
			String text = TextUtil.readFile (file);
			return hashMD5 (text.getBytes());
		}
		catch (Exception e)
		{
			return "";
		}
	}	//	hash
	
	/**
	 * 		Hash the byte array
	 * 	@param ba
	 * 	@return md5 hash of file
	 */
	public static String hashMD5 (byte[] ba)
	{
		try
		{
			MessageDigest md = MessageDigest.getInstance ("MD5");
			md.update (ba);
			//
			byte[] digest = md.digest();
			return new BigInteger(1, digest).toString(16);
		}
		catch (NoSuchAlgorithmException e)
		{
			return "";
		}
	}	//	hash
	
	/**
	 * 	Extract the Digest Value from NFe
	 * 
	 * @param 	nfeDoc NFe Document
	 * @return	Digest Value from NFe Signature or "" in case of error
	 */
	public static String extractDigestValue (NFeDocument nfeDoc)
	{
		try
		{
			String reference = nfeDoc.getNFe().getSignature().getSignedInfo().xmlText(NFeUtil.getXmlOpt());
			
			// 	Extract Digest Value
			return reference.substring(reference.indexOf("<DigestValue>")+13, reference.indexOf("</DigestValue>"));
		}
		catch (Exception e)
		{
			return "";
		}
	}	//	extractDisgestValue
	
	/**
	 * 	Obtém as DIs (Declaração de Importação) associadas a este pedido
	 * 	@param order
	 * 	@return array de DI
	 */
	public static X_LBR_DI[] getDIs (MOrder order)
	{
		String whereClause = "LBR_DI_ID IN (SELECT LBR_DI_ID FROM C_OrderLine WHERE C_Order_ID = ?)";

		MTable table = MTable.get(order.getCtx(), X_LBR_DI.Table_Name);
		Query query =  new Query(order.getCtx(), table, whereClause, order.get_TrxName());
	 		  query.setParameters(new Object[]{order.getC_Order_ID()});

		List<X_LBR_DI> list = query.list();

		return list.toArray(new X_LBR_DI[list.size()]);
	}	//	getDIs
	
	/**
	 * Validar Digito Verificador da NF-e
	 * O dígito verificador da chave de acesso da NF-e é baseado em um cálculo do módulo 11
	 * Enviar a Chave de Acesso Completada da NF-e para validação
	 * @param nfeid
	 * @return
	 */
	public static boolean validateNFeID(String nfeid)
	{
		log.fine("Validating NF-e ID");
		
		if (nfeid == null || nfeid.isEmpty())
			return false;
		
		if (nfeid.length() != 44)
		{
			log.fine("Chave da NF-e deve conter 44 Digitos");
			return false;
		}	
		
		int total = 0;    
        int peso = 2; 
        
        // string.charAt(i) - '0'converts it to an integer
        int dvnfe = nfeid.charAt((nfeid.length()-1)) - '0';
        
        // Da direita para a Esquerda
        for (int i = 0; i < nfeid.length() - 1; i++)
        {
            total += (nfeid.charAt((nfeid.length()-2) - i) - '0') * peso;    
            peso ++;
            if (peso == 10)    
                peso = 2;    
        }  
        
        // Retorno o resto da divisão ponderada
        int resto = total % 11;    
        
        // Resto da Divisão - 11 é o Digito Verificador
        int dvcalc = (resto == 0 || resto == 1) ? 0 : (11 - resto);
        //
        if (dvnfe == dvcalc)
        	return true;
        
		return false;
	}

	public static final String KIND_CTE 	= "cte";
	public static final String KIND_MDFE 	= "mdfe";
	public static final String KIND_NFE 	= "nfe";
	public static final String KIND_NFSE 	= "nfse";

	public static final String MESSAGE_REQ_AUTORIZE 	= "req-authorize";
	public static final String MESSAGE_RET_AUTORIZE 	= "ret-authorize";
	public static final String MESSAGE_REQ_BP_DATA 		= "req-bp-data";
	public static final String MESSAGE_RET_BP_DATA 		= "ret-bp-data";
	public static final String MESSAGE_REQ_CANCEL 		= "req-cancel";
	public static final String MESSAGE_RET_CANCEL 		= "ret-cancel";
	public static final String MESSAGE_REQ_CONSULT 		= "req-consult";
	public static final String MESSAGE_RET_CONSULT 		= "ret-consult";
	public static final String MESSAGE_REQ_CONSULT_LOT 	= "req-consult-lot";
	public static final String MESSAGE_RET_CONSULT_LOT 	= "ret-consult-lot";
	public static final String MESSAGE_REQ_EVENT 		= "req-event";
	public static final String MESSAGE_RET_EVENT 		= "ret-event";
	public static final String MESSAGE_REQ_INUT 		= "req-inut";
	public static final String MESSAGE_RET_INUT 		= "ret-inut";
	public static final String MESSAGE_REQ_STATUS 		= "req-status";
	public static final String MESSAGE_RET_STATUS 		= "ret-status";
	public static final String MESSAGE_REQ_DFE 			= "req-dfe";
	public static final String MESSAGE_RET_DFE 			= "ret-dfe";
	public static final String MESSAGE_XML 				= "xml";
	
	public static void saveXML (String company, String kind, String message, String name, String xml) {
		File file = new File (Ini.findAdempiereHome() + 
				File.separator + "xml" + 
				File.separator + company + 
				File.separator + kind + 
				File.separator + message + 
				File.separator + TextUtil.timeToString(new Timestamp(System.currentTimeMillis()), "yyyyMMddHHmmss") + "_" + name + ".xml");
		//
		file.getParentFile().mkdirs();
        TextUtil.generateFile(xml, file.getAbsolutePath()); 
	}	//	saveXML
}	//	NFeUtil
