
/**
 * CObjeto.java This file was auto-generated from WSDL by the Apache Axis2
 * version: 1.6.2 Built on : Apr 17, 2012 (05:34:40 IST)
 */

package org.tempuri;

/**
 * CObjeto bean class
 */
@SuppressWarnings({"unchecked", "unused", "serial", "rawtypes"})

public class CObjeto implements org.apache.axis2.databinding.ADBBean
{
	/*
	 * This type was generated from the piece of schema that had name = cObjeto
	 * Namespace URI = http://tempuri.org/ Namespace Prefix =
	 */

	/**
	 * field for Codigo
	 */

	protected java.lang.String localCodigo;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localCodigoTracker = false;

	public boolean isCodigoSpecified()
	{
		return localCodigoTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.lang.String
	 */
	public java.lang.String getCodigo()
	{
		return localCodigo;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            Codigo
	 */
	public void setCodigo(java.lang.String param)
	{
		localCodigoTracker = param != null;

		this.localCodigo = param;

	}

	/**
	 * field for Servico
	 */

	protected java.lang.String localServico;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localServicoTracker = false;

	public boolean isServicoSpecified()
	{
		return localServicoTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.lang.String
	 */
	public java.lang.String getServico()
	{
		return localServico;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            Servico
	 */
	public void setServico(java.lang.String param)
	{
		localServicoTracker = param != null;

		this.localServico = param;

	}

	/**
	 * field for CepOrigem
	 */

	protected java.lang.String localCepOrigem;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localCepOrigemTracker = false;

	public boolean isCepOrigemSpecified()
	{
		return localCepOrigemTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.lang.String
	 */
	public java.lang.String getCepOrigem()
	{
		return localCepOrigem;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            CepOrigem
	 */
	public void setCepOrigem(java.lang.String param)
	{
		localCepOrigemTracker = param != null;

		this.localCepOrigem = param;

	}

	/**
	 * field for CepDestino
	 */

	protected java.lang.String localCepDestino;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localCepDestinoTracker = false;

	public boolean isCepDestinoSpecified()
	{
		return localCepDestinoTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.lang.String
	 */
	public java.lang.String getCepDestino()
	{
		return localCepDestino;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            CepDestino
	 */
	public void setCepDestino(java.lang.String param)
	{
		localCepDestinoTracker = param != null;

		this.localCepDestino = param;

	}

	/**
	 * field for PrazoEntrega
	 */

	protected int localPrazoEntrega;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localPrazoEntregaTracker = false;

	public boolean isPrazoEntregaSpecified()
	{
		return localPrazoEntregaTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return int
	 */
	public int getPrazoEntrega()
	{
		return localPrazoEntrega;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            PrazoEntrega
	 */
	public void setPrazoEntrega(int param)
	{

		// setting primitive attribute tracker to true
		localPrazoEntregaTracker = param != java.lang.Integer.MIN_VALUE;

		this.localPrazoEntrega = param;

	}

	/**
	 * field for DataPostagem
	 */

	protected java.lang.String localDataPostagem;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localDataPostagemTracker = false;

	public boolean isDataPostagemSpecified()
	{
		return localDataPostagemTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.lang.String
	 */
	public java.lang.String getDataPostagem()
	{
		return localDataPostagem;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            DataPostagem
	 */
	public void setDataPostagem(java.lang.String param)
	{
		localDataPostagemTracker = param != null;

		this.localDataPostagem = param;

	}

	/**
	 * field for DataPostagemCalculo
	 */

	protected java.lang.String localDataPostagemCalculo;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localDataPostagemCalculoTracker = false;

	public boolean isDataPostagemCalculoSpecified()
	{
		return localDataPostagemCalculoTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.lang.String
	 */
	public java.lang.String getDataPostagemCalculo()
	{
		return localDataPostagemCalculo;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            DataPostagemCalculo
	 */
	public void setDataPostagemCalculo(java.lang.String param)
	{
		localDataPostagemCalculoTracker = param != null;

		this.localDataPostagemCalculo = param;

	}

	/**
	 * field for DataEntrega
	 */

	protected java.lang.String localDataEntrega;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localDataEntregaTracker = false;

	public boolean isDataEntregaSpecified()
	{
		return localDataEntregaTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.lang.String
	 */
	public java.lang.String getDataEntrega()
	{
		return localDataEntrega;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            DataEntrega
	 */
	public void setDataEntrega(java.lang.String param)
	{
		localDataEntregaTracker = param != null;

		this.localDataEntrega = param;

	}

	/**
	 * field for DataMaxEntrega
	 */

	protected java.lang.String localDataMaxEntrega;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localDataMaxEntregaTracker = false;

	public boolean isDataMaxEntregaSpecified()
	{
		return localDataMaxEntregaTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.lang.String
	 */
	public java.lang.String getDataMaxEntrega()
	{
		return localDataMaxEntrega;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            DataMaxEntrega
	 */
	public void setDataMaxEntrega(java.lang.String param)
	{
		localDataMaxEntregaTracker = param != null;

		this.localDataMaxEntrega = param;

	}

	/**
	 * field for Erro
	 */

	protected java.lang.String localErro;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localErroTracker = false;

	public boolean isErroSpecified()
	{
		return localErroTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.lang.String
	 */
	public java.lang.String getErro()
	{
		return localErro;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            Erro
	 */
	public void setErro(java.lang.String param)
	{
		localErroTracker = param != null;

		this.localErro = param;

	}

	/**
	 * field for MsgErro
	 */

	protected java.lang.String localMsgErro;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localMsgErroTracker = false;

	public boolean isMsgErroSpecified()
	{
		return localMsgErroTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.lang.String
	 */
	public java.lang.String getMsgErro()
	{
		return localMsgErro;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            MsgErro
	 */
	public void setMsgErro(java.lang.String param)
	{
		localMsgErroTracker = param != null;

		this.localMsgErro = param;

	}

	/**
	 * @param parentQName
	 * @param factory
	 * @return org.apache.axiom.om.OMElement
	 */
	public org.apache.axiom.om.OMElement getOMElement(
			final javax.xml.namespace.QName parentQName,
			final org.apache.axiom.om.OMFactory factory)
			throws org.apache.axis2.databinding.ADBException
	{

		org.apache.axiom.om.OMDataSource dataSource = new org.apache.axis2.databinding.ADBDataSource(
				this, parentQName);
		return factory.createOMElement(dataSource, parentQName);

	}

	public void serialize(final javax.xml.namespace.QName parentQName,
			javax.xml.stream.XMLStreamWriter xmlWriter)
			throws javax.xml.stream.XMLStreamException,
			org.apache.axis2.databinding.ADBException
	{
		serialize(parentQName, xmlWriter, false);
	}

	public void serialize(final javax.xml.namespace.QName parentQName,
			javax.xml.stream.XMLStreamWriter xmlWriter, boolean serializeType)
			throws javax.xml.stream.XMLStreamException,
			org.apache.axis2.databinding.ADBException
	{

		java.lang.String prefix = null;
		java.lang.String namespace = null;

		prefix = parentQName.getPrefix();
		namespace = parentQName.getNamespaceURI();
		writeStartElement(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

		if (serializeType)
		{

			java.lang.String namespacePrefix = registerPrefix(xmlWriter,
					"http://tempuri.org/");
			if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0))
			{
				writeAttribute("xsi", "http://www.w3.org/2001/XMLSchema-instance",
						"type", namespacePrefix + ":cObjeto", xmlWriter);
			}
			else
			{
				writeAttribute("xsi", "http://www.w3.org/2001/XMLSchema-instance",
						"type", "cObjeto", xmlWriter);
			}

		}
		if (localCodigoTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "codigo", xmlWriter);

			if (localCodigo == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"codigo cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(localCodigo);

			}

			xmlWriter.writeEndElement();
		}
		if (localServicoTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "servico", xmlWriter);

			if (localServico == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"servico cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(localServico);

			}

			xmlWriter.writeEndElement();
		}
		if (localCepOrigemTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "cepOrigem", xmlWriter);

			if (localCepOrigem == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"cepOrigem cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(localCepOrigem);

			}

			xmlWriter.writeEndElement();
		}
		if (localCepDestinoTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "cepDestino", xmlWriter);

			if (localCepDestino == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"cepDestino cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(localCepDestino);

			}

			xmlWriter.writeEndElement();
		}
		if (localPrazoEntregaTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "prazoEntrega", xmlWriter);

			if (localPrazoEntrega == java.lang.Integer.MIN_VALUE)
			{

				throw new org.apache.axis2.databinding.ADBException(
						"prazoEntrega cannot be null!!");

			}
			else
			{
				xmlWriter.writeCharacters(
						org.apache.axis2.databinding.utils.ConverterUtil
								.convertToString(localPrazoEntrega));
			}

			xmlWriter.writeEndElement();
		}
		if (localDataPostagemTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "dataPostagem", xmlWriter);

			if (localDataPostagem == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"dataPostagem cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(localDataPostagem);

			}

			xmlWriter.writeEndElement();
		}
		if (localDataPostagemCalculoTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "dataPostagemCalculo", xmlWriter);

			if (localDataPostagemCalculo == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"dataPostagemCalculo cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(localDataPostagemCalculo);

			}

			xmlWriter.writeEndElement();
		}
		if (localDataEntregaTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "dataEntrega", xmlWriter);

			if (localDataEntrega == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"dataEntrega cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(localDataEntrega);

			}

			xmlWriter.writeEndElement();
		}
		if (localDataMaxEntregaTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "dataMaxEntrega", xmlWriter);

			if (localDataMaxEntrega == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"dataMaxEntrega cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(localDataMaxEntrega);

			}

			xmlWriter.writeEndElement();
		}
		if (localErroTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "erro", xmlWriter);

			if (localErro == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"erro cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(localErro);

			}

			xmlWriter.writeEndElement();
		}
		if (localMsgErroTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "msgErro", xmlWriter);

			if (localMsgErro == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"msgErro cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(localMsgErro);

			}

			xmlWriter.writeEndElement();
		}
		xmlWriter.writeEndElement();

	}

	private static java.lang.String generatePrefix(java.lang.String namespace)
	{
		if (namespace.equals("http://tempuri.org/"))
		{
			return "";
		}
		return org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
	}

	/**
	 * Utility method to write an element start tag.
	 */
	private void writeStartElement(java.lang.String prefix,
			java.lang.String namespace, java.lang.String localPart,
			javax.xml.stream.XMLStreamWriter xmlWriter)
			throws javax.xml.stream.XMLStreamException
	{
		java.lang.String writerPrefix = xmlWriter.getPrefix(namespace);
		if (writerPrefix != null)
		{
			xmlWriter.writeStartElement(namespace, localPart);
		}
		else
		{
			if (namespace.length() == 0)
			{
				prefix = "";
			}
			else if (prefix == null)
			{
				prefix = generatePrefix(namespace);
			}

			xmlWriter.writeStartElement(prefix, localPart, namespace);
			xmlWriter.writeNamespace(prefix, namespace);
			xmlWriter.setPrefix(prefix, namespace);
		}
	}

	/**
	 * Util method to write an attribute with the ns prefix
	 */
	private void writeAttribute(java.lang.String prefix, java.lang.String namespace,
			java.lang.String attName, java.lang.String attValue,
			javax.xml.stream.XMLStreamWriter xmlWriter)
			throws javax.xml.stream.XMLStreamException
	{
		if (xmlWriter.getPrefix(namespace) == null)
		{
			xmlWriter.writeNamespace(prefix, namespace);
			xmlWriter.setPrefix(prefix, namespace);
		}
		xmlWriter.writeAttribute(namespace, attName, attValue);
	}

	/**
	 * Util method to write an attribute without the ns prefix
	 */
	private void writeAttribute(java.lang.String namespace, java.lang.String attName,
			java.lang.String attValue, javax.xml.stream.XMLStreamWriter xmlWriter)
			throws javax.xml.stream.XMLStreamException
	{
		if (namespace.equals(""))
		{
			xmlWriter.writeAttribute(attName, attValue);
		}
		else
		{
			registerPrefix(xmlWriter, namespace);
			xmlWriter.writeAttribute(namespace, attName, attValue);
		}
	}

	/**
	 * Util method to write an attribute without the ns prefix
	 */
	private void writeQNameAttribute(java.lang.String namespace,
			java.lang.String attName, javax.xml.namespace.QName qname,
			javax.xml.stream.XMLStreamWriter xmlWriter)
			throws javax.xml.stream.XMLStreamException
	{

		java.lang.String attributeNamespace = qname.getNamespaceURI();
		java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);
		if (attributePrefix == null)
		{
			attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
		}
		java.lang.String attributeValue;
		if (attributePrefix.trim().length() > 0)
		{
			attributeValue = attributePrefix + ":" + qname.getLocalPart();
		}
		else
		{
			attributeValue = qname.getLocalPart();
		}

		if (namespace.equals(""))
		{
			xmlWriter.writeAttribute(attName, attributeValue);
		}
		else
		{
			registerPrefix(xmlWriter, namespace);
			xmlWriter.writeAttribute(namespace, attName, attributeValue);
		}
	}

	/**
	 * method to handle Qnames
	 */

	private void writeQName(javax.xml.namespace.QName qname,
			javax.xml.stream.XMLStreamWriter xmlWriter)
			throws javax.xml.stream.XMLStreamException
	{
		java.lang.String namespaceURI = qname.getNamespaceURI();
		if (namespaceURI != null)
		{
			java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);
			if (prefix == null)
			{
				prefix = generatePrefix(namespaceURI);
				xmlWriter.writeNamespace(prefix, namespaceURI);
				xmlWriter.setPrefix(prefix, namespaceURI);
			}

			if (prefix.trim().length() > 0)
			{
				xmlWriter.writeCharacters(prefix + ":"
						+ org.apache.axis2.databinding.utils.ConverterUtil
								.convertToString(qname));
			}
			else
			{
				// i.e this is the default namespace
				xmlWriter.writeCharacters(
						org.apache.axis2.databinding.utils.ConverterUtil
								.convertToString(qname));
			}

		}
		else
		{
			xmlWriter
					.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil
							.convertToString(qname));
		}
	}

	private void writeQNames(javax.xml.namespace.QName[] qnames,
			javax.xml.stream.XMLStreamWriter xmlWriter)
			throws javax.xml.stream.XMLStreamException
	{

		if (qnames != null)
		{
			// we have to store this data until last moment since it is not
			// possible to write any
			// namespace data after writing the charactor data
			java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
			java.lang.String namespaceURI = null;
			java.lang.String prefix = null;

			for (int i = 0; i < qnames.length; i++)
			{
				if (i > 0)
				{
					stringToWrite.append(" ");
				}
				namespaceURI = qnames[i].getNamespaceURI();
				if (namespaceURI != null)
				{
					prefix = xmlWriter.getPrefix(namespaceURI);
					if ((prefix == null) || (prefix.length() == 0))
					{
						prefix = generatePrefix(namespaceURI);
						xmlWriter.writeNamespace(prefix, namespaceURI);
						xmlWriter.setPrefix(prefix, namespaceURI);
					}

					if (prefix.trim().length() > 0)
					{
						stringToWrite.append(prefix).append(":")
								.append(org.apache.axis2.databinding.utils.ConverterUtil
										.convertToString(qnames[i]));
					}
					else
					{
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil
										.convertToString(qnames[i]));
					}
				}
				else
				{
					stringToWrite
							.append(org.apache.axis2.databinding.utils.ConverterUtil
									.convertToString(qnames[i]));
				}
			}
			xmlWriter.writeCharacters(stringToWrite.toString());
		}

	}

	/**
	 * Register a namespace prefix
	 */
	private java.lang.String registerPrefix(
			javax.xml.stream.XMLStreamWriter xmlWriter, java.lang.String namespace)
			throws javax.xml.stream.XMLStreamException
	{
		java.lang.String prefix = xmlWriter.getPrefix(namespace);
		if (prefix == null)
		{
			prefix = generatePrefix(namespace);
			javax.xml.namespace.NamespaceContext nsContext = xmlWriter
					.getNamespaceContext();
			while (true)
			{
				java.lang.String uri = nsContext.getNamespaceURI(prefix);
				if (uri == null || uri.length() == 0)
				{
					break;
				}
				prefix = org.apache.axis2.databinding.utils.BeanUtil
						.getUniquePrefix();
			}
			xmlWriter.writeNamespace(prefix, namespace);
			xmlWriter.setPrefix(prefix, namespace);
		}
		return prefix;
	}

	/**
	 * databinding method to get an XML representation of this object
	 */
	public javax.xml.stream.XMLStreamReader getPullParser(
			javax.xml.namespace.QName qName)
			throws org.apache.axis2.databinding.ADBException
	{

		java.util.ArrayList elementList = new java.util.ArrayList();
		java.util.ArrayList attribList = new java.util.ArrayList();

		if (localCodigoTracker)
		{
			elementList.add(
					new javax.xml.namespace.QName("http://tempuri.org/", "codigo"));

			if (localCodigo != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localCodigo));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"codigo cannot be null!!");
			}
		}
		if (localServicoTracker)
		{
			elementList.add(
					new javax.xml.namespace.QName("http://tempuri.org/", "servico"));

			if (localServico != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localServico));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"servico cannot be null!!");
			}
		}
		if (localCepOrigemTracker)
		{
			elementList.add(new javax.xml.namespace.QName("http://tempuri.org/",
					"cepOrigem"));

			if (localCepOrigem != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localCepOrigem));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"cepOrigem cannot be null!!");
			}
		}
		if (localCepDestinoTracker)
		{
			elementList.add(new javax.xml.namespace.QName("http://tempuri.org/",
					"cepDestino"));

			if (localCepDestino != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localCepDestino));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"cepDestino cannot be null!!");
			}
		}
		if (localPrazoEntregaTracker)
		{
			elementList.add(new javax.xml.namespace.QName("http://tempuri.org/",
					"prazoEntrega"));

			elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
					.convertToString(localPrazoEntrega));
		}
		if (localDataPostagemTracker)
		{
			elementList.add(new javax.xml.namespace.QName("http://tempuri.org/",
					"dataPostagem"));

			if (localDataPostagem != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localDataPostagem));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"dataPostagem cannot be null!!");
			}
		}
		if (localDataPostagemCalculoTracker)
		{
			elementList.add(new javax.xml.namespace.QName("http://tempuri.org/",
					"dataPostagemCalculo"));

			if (localDataPostagemCalculo != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localDataPostagemCalculo));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"dataPostagemCalculo cannot be null!!");
			}
		}
		if (localDataEntregaTracker)
		{
			elementList.add(new javax.xml.namespace.QName("http://tempuri.org/",
					"dataEntrega"));

			if (localDataEntrega != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localDataEntrega));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"dataEntrega cannot be null!!");
			}
		}
		if (localDataMaxEntregaTracker)
		{
			elementList.add(new javax.xml.namespace.QName("http://tempuri.org/",
					"dataMaxEntrega"));

			if (localDataMaxEntrega != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localDataMaxEntrega));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"dataMaxEntrega cannot be null!!");
			}
		}
		if (localErroTracker)
		{
			elementList.add(
					new javax.xml.namespace.QName("http://tempuri.org/", "erro"));

			if (localErro != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localErro));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"erro cannot be null!!");
			}
		}
		if (localMsgErroTracker)
		{
			elementList.add(
					new javax.xml.namespace.QName("http://tempuri.org/", "msgErro"));

			if (localMsgErro != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localMsgErro));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"msgErro cannot be null!!");
			}
		}

		return new org.apache.axis2.databinding.utils.reader.ADBXMLStreamReaderImpl(
				qName, elementList.toArray(), attribList.toArray());

	}

	/**
	 * Factory class that keeps the parse method
	 */
	public static class Factory
	{

		/**
		 * static method to create the object Precondition: If this object is an
		 * element, the current or next start element starts this object and any
		 * intervening reader events are ignorable If this object is not an
		 * element, it is a complex type and the reader is at the event just
		 * after the outer start element Postcondition: If this object is an
		 * element, the reader is positioned at its end element If this object
		 * is a complex type, the reader is positioned at the end element of its
		 * outer element
		 */
		public static CObjeto parse(javax.xml.stream.XMLStreamReader reader)
				throws java.lang.Exception
		{
			CObjeto object = new CObjeto();

			int event;
			java.lang.String nillableValue = null;
			java.lang.String prefix = "";
			java.lang.String namespaceuri = "";
			try
			{

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.getAttributeValue(
						"http://www.w3.org/2001/XMLSchema-instance", "type") != null)
				{
					java.lang.String fullTypeName = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "type");
					if (fullTypeName != null)
					{
						java.lang.String nsPrefix = null;
						if (fullTypeName.indexOf(":") > -1)
						{
							nsPrefix = fullTypeName.substring(0,
									fullTypeName.indexOf(":"));
						}
						nsPrefix = nsPrefix == null ? "" : nsPrefix;

						java.lang.String type = fullTypeName
								.substring(fullTypeName.indexOf(":") + 1);

						if (!"cObjeto".equals(type))
						{
							// find namespace for the prefix
							java.lang.String nsUri = reader.getNamespaceContext()
									.getNamespaceURI(nsPrefix);
							return (CObjeto) org.tempuri.ExtensionMapper
									.getTypeObject(nsUri, type, reader);
						}

					}

				}

				// Note all attributes that were handled. Used to differ normal
				// attributes
				// from anyAttributes.
				java.util.Vector handledAttributes = new java.util.Vector();

				reader.next();

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName("http://tempuri.org/",
								"codigo").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "codigo" + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setCodigo(org.apache.axis2.databinding.utils.ConverterUtil
							.convertToString(content));

					reader.next();

				} // End of if for expected property start element

				else
				{

				}

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName("http://tempuri.org/",
								"servico").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "servico" + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setServico(
							org.apache.axis2.databinding.utils.ConverterUtil
									.convertToString(content));

					reader.next();

				} // End of if for expected property start element

				else
				{

				}

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName("http://tempuri.org/",
								"cepOrigem").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "cepOrigem" + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setCepOrigem(
							org.apache.axis2.databinding.utils.ConverterUtil
									.convertToString(content));

					reader.next();

				} // End of if for expected property start element

				else
				{

				}

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName("http://tempuri.org/",
								"cepDestino").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "cepDestino" + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setCepDestino(
							org.apache.axis2.databinding.utils.ConverterUtil
									.convertToString(content));

					reader.next();

				} // End of if for expected property start element

				else
				{

				}

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName("http://tempuri.org/",
								"prazoEntrega").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "prazoEntrega"
										+ "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setPrazoEntrega(
							org.apache.axis2.databinding.utils.ConverterUtil
									.convertToInt(content));

					reader.next();

				} // End of if for expected property start element

				else
				{

					object.setPrazoEntrega(java.lang.Integer.MIN_VALUE);

				}

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName("http://tempuri.org/",
								"dataPostagem").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "dataPostagem"
										+ "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setDataPostagem(
							org.apache.axis2.databinding.utils.ConverterUtil
									.convertToString(content));

					reader.next();

				} // End of if for expected property start element

				else
				{

				}

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName("http://tempuri.org/",
								"dataPostagemCalculo").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "dataPostagemCalculo"
										+ "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setDataPostagemCalculo(
							org.apache.axis2.databinding.utils.ConverterUtil
									.convertToString(content));

					reader.next();

				} // End of if for expected property start element

				else
				{

				}

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName("http://tempuri.org/",
								"dataEntrega").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "dataEntrega"
										+ "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setDataEntrega(
							org.apache.axis2.databinding.utils.ConverterUtil
									.convertToString(content));

					reader.next();

				} // End of if for expected property start element

				else
				{

				}

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName("http://tempuri.org/",
								"dataMaxEntrega").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "dataMaxEntrega"
										+ "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setDataMaxEntrega(
							org.apache.axis2.databinding.utils.ConverterUtil
									.convertToString(content));

					reader.next();

				} // End of if for expected property start element

				else
				{

				}

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName("http://tempuri.org/",
								"erro").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "erro" + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setErro(org.apache.axis2.databinding.utils.ConverterUtil
							.convertToString(content));

					reader.next();

				} // End of if for expected property start element

				else
				{

				}

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName("http://tempuri.org/",
								"msgErro").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "msgErro" + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setMsgErro(
							org.apache.axis2.databinding.utils.ConverterUtil
									.convertToString(content));

					reader.next();

				} // End of if for expected property start element

				else
				{

				}

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement())
					// A start element we are not expecting indicates a trailing
					// invalid property
					throw new org.apache.axis2.databinding.ADBException(
							"Unexpected subelement " + reader.getName());

			}
			catch (javax.xml.stream.XMLStreamException e)
			{
				throw new java.lang.Exception(e);
			}

			return object;
		}

	}// end of factory class

}
