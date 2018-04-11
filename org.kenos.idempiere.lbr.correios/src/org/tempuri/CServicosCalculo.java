
/**
 * CServicosCalculo.java This file was auto-generated from WSDL by the Apache
 * Axis2 version: 1.6.2 Built on : Apr 17, 2012 (05:34:40 IST)
 */

package org.tempuri;

/**
 * CServicosCalculo bean class
 */
@SuppressWarnings({"unchecked", "unused", "serial", "rawtypes"})

public class CServicosCalculo implements org.apache.axis2.databinding.ADBBean
{
	/*
	 * This type was generated from the piece of schema that had name =
	 * cServicosCalculo Namespace URI = http://tempuri.org/ Namespace Prefix =
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
	 * field for Descricao
	 */

	protected java.lang.String localDescricao;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localDescricaoTracker = false;

	public boolean isDescricaoSpecified()
	{
		return localDescricaoTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.lang.String
	 */
	public java.lang.String getDescricao()
	{
		return localDescricao;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            Descricao
	 */
	public void setDescricao(java.lang.String param)
	{
		localDescricaoTracker = param != null;

		this.localDescricao = param;

	}

	/**
	 * field for Calcula_preco
	 */

	protected java.lang.String localCalcula_preco;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localCalcula_precoTracker = false;

	public boolean isCalcula_precoSpecified()
	{
		return localCalcula_precoTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.lang.String
	 */
	public java.lang.String getCalcula_preco()
	{
		return localCalcula_preco;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            Calcula_preco
	 */
	public void setCalcula_preco(java.lang.String param)
	{
		localCalcula_precoTracker = param != null;

		this.localCalcula_preco = param;

	}

	/**
	 * field for Calcula_prazo
	 */

	protected java.lang.String localCalcula_prazo;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localCalcula_prazoTracker = false;

	public boolean isCalcula_prazoSpecified()
	{
		return localCalcula_prazoTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.lang.String
	 */
	public java.lang.String getCalcula_prazo()
	{
		return localCalcula_prazo;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            Calcula_prazo
	 */
	public void setCalcula_prazo(java.lang.String param)
	{
		localCalcula_prazoTracker = param != null;

		this.localCalcula_prazo = param;

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
						"type", namespacePrefix + ":cServicosCalculo", xmlWriter);
			}
			else
			{
				writeAttribute("xsi", "http://www.w3.org/2001/XMLSchema-instance",
						"type", "cServicosCalculo", xmlWriter);
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
		if (localDescricaoTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "descricao", xmlWriter);

			if (localDescricao == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"descricao cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(localDescricao);

			}

			xmlWriter.writeEndElement();
		}
		if (localCalcula_precoTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "calcula_preco", xmlWriter);

			if (localCalcula_preco == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"calcula_preco cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(localCalcula_preco);

			}

			xmlWriter.writeEndElement();
		}
		if (localCalcula_prazoTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "calcula_prazo", xmlWriter);

			if (localCalcula_prazo == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"calcula_prazo cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(localCalcula_prazo);

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
		if (localDescricaoTracker)
		{
			elementList.add(new javax.xml.namespace.QName("http://tempuri.org/",
					"descricao"));

			if (localDescricao != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localDescricao));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"descricao cannot be null!!");
			}
		}
		if (localCalcula_precoTracker)
		{
			elementList.add(new javax.xml.namespace.QName("http://tempuri.org/",
					"calcula_preco"));

			if (localCalcula_preco != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localCalcula_preco));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"calcula_preco cannot be null!!");
			}
		}
		if (localCalcula_prazoTracker)
		{
			elementList.add(new javax.xml.namespace.QName("http://tempuri.org/",
					"calcula_prazo"));

			if (localCalcula_prazo != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localCalcula_prazo));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"calcula_prazo cannot be null!!");
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
		public static CServicosCalculo parse(javax.xml.stream.XMLStreamReader reader)
				throws java.lang.Exception
		{
			CServicosCalculo object = new CServicosCalculo();

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

						if (!"cServicosCalculo".equals(type))
						{
							// find namespace for the prefix
							java.lang.String nsUri = reader.getNamespaceContext()
									.getNamespaceURI(nsPrefix);
							return (CServicosCalculo) org.tempuri.ExtensionMapper
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
								"descricao").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "descricao" + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setDescricao(
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
								"calcula_preco").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "calcula_preco"
										+ "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setCalcula_preco(
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
								"calcula_prazo").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "calcula_prazo"
										+ "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setCalcula_prazo(
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
