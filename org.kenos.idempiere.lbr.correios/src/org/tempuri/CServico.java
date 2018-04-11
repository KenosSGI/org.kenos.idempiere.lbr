
/**
 * CServico.java This file was auto-generated from WSDL by the Apache Axis2
 * version: 1.6.2 Built on : Apr 17, 2012 (05:34:40 IST)
 */

package org.tempuri;

/**
 * CServico bean class
 */
@SuppressWarnings({"unchecked", "unused", "serial", "rawtypes"})

public class CServico implements org.apache.axis2.databinding.ADBBean
{
	/*
	 * This type was generated from the piece of schema that had name = cServico
	 * Namespace URI = http://tempuri.org/ Namespace Prefix =
	 */

	/**
	 * field for Codigo
	 */

	protected int localCodigo;

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
	 * @return int
	 */
	public int getCodigo()
	{
		return localCodigo;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            Codigo
	 */
	public void setCodigo(int param)
	{

		// setting primitive attribute tracker to true
		localCodigoTracker = param != java.lang.Integer.MIN_VALUE;

		this.localCodigo = param;

	}

	/**
	 * field for Valor
	 */

	protected java.lang.String localValor;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localValorTracker = false;

	public boolean isValorSpecified()
	{
		return localValorTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.lang.String
	 */
	public java.lang.String getValor()
	{
		return localValor;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            Valor
	 */
	public void setValor(java.lang.String param)
	{
		localValorTracker = param != null;

		this.localValor = param;

	}

	/**
	 * field for PrazoEntrega
	 */

	protected java.lang.String localPrazoEntrega;

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
	 * @return java.lang.String
	 */
	public java.lang.String getPrazoEntrega()
	{
		return localPrazoEntrega;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            PrazoEntrega
	 */
	public void setPrazoEntrega(java.lang.String param)
	{
		localPrazoEntregaTracker = param != null;

		this.localPrazoEntrega = param;

	}

	/**
	 * field for ValorMaoPropria
	 */

	protected java.lang.String localValorMaoPropria;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localValorMaoPropriaTracker = false;

	public boolean isValorMaoPropriaSpecified()
	{
		return localValorMaoPropriaTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.lang.String
	 */
	public java.lang.String getValorMaoPropria()
	{
		return localValorMaoPropria;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            ValorMaoPropria
	 */
	public void setValorMaoPropria(java.lang.String param)
	{
		localValorMaoPropriaTracker = param != null;

		this.localValorMaoPropria = param;

	}

	/**
	 * field for ValorAvisoRecebimento
	 */

	protected java.lang.String localValorAvisoRecebimento;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localValorAvisoRecebimentoTracker = false;

	public boolean isValorAvisoRecebimentoSpecified()
	{
		return localValorAvisoRecebimentoTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.lang.String
	 */
	public java.lang.String getValorAvisoRecebimento()
	{
		return localValorAvisoRecebimento;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            ValorAvisoRecebimento
	 */
	public void setValorAvisoRecebimento(java.lang.String param)
	{
		localValorAvisoRecebimentoTracker = param != null;

		this.localValorAvisoRecebimento = param;

	}

	/**
	 * field for ValorValorDeclarado
	 */

	protected java.lang.String localValorValorDeclarado;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localValorValorDeclaradoTracker = false;

	public boolean isValorValorDeclaradoSpecified()
	{
		return localValorValorDeclaradoTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.lang.String
	 */
	public java.lang.String getValorValorDeclarado()
	{
		return localValorValorDeclarado;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            ValorValorDeclarado
	 */
	public void setValorValorDeclarado(java.lang.String param)
	{
		localValorValorDeclaradoTracker = param != null;

		this.localValorValorDeclarado = param;

	}

	/**
	 * field for EntregaDomiciliar
	 */

	protected java.lang.String localEntregaDomiciliar;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localEntregaDomiciliarTracker = false;

	public boolean isEntregaDomiciliarSpecified()
	{
		return localEntregaDomiciliarTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.lang.String
	 */
	public java.lang.String getEntregaDomiciliar()
	{
		return localEntregaDomiciliar;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            EntregaDomiciliar
	 */
	public void setEntregaDomiciliar(java.lang.String param)
	{
		localEntregaDomiciliarTracker = param != null;

		this.localEntregaDomiciliar = param;

	}

	/**
	 * field for EntregaSabado
	 */

	protected java.lang.String localEntregaSabado;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localEntregaSabadoTracker = false;

	public boolean isEntregaSabadoSpecified()
	{
		return localEntregaSabadoTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.lang.String
	 */
	public java.lang.String getEntregaSabado()
	{
		return localEntregaSabado;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            EntregaSabado
	 */
	public void setEntregaSabado(java.lang.String param)
	{
		localEntregaSabadoTracker = param != null;

		this.localEntregaSabado = param;

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
	 * field for ValorSemAdicionais
	 */

	protected java.lang.String localValorSemAdicionais;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localValorSemAdicionaisTracker = false;

	public boolean isValorSemAdicionaisSpecified()
	{
		return localValorSemAdicionaisTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.lang.String
	 */
	public java.lang.String getValorSemAdicionais()
	{
		return localValorSemAdicionais;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            ValorSemAdicionais
	 */
	public void setValorSemAdicionais(java.lang.String param)
	{
		localValorSemAdicionaisTracker = param != null;

		this.localValorSemAdicionais = param;

	}

	/**
	 * field for ObsFim
	 */

	protected java.lang.String localObsFim;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localObsFimTracker = false;

	public boolean isObsFimSpecified()
	{
		return localObsFimTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.lang.String
	 */
	public java.lang.String getObsFim()
	{
		return localObsFim;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            ObsFim
	 */
	public void setObsFim(java.lang.String param)
	{
		localObsFimTracker = param != null;

		this.localObsFim = param;

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
	 * field for HoraMaxEntrega
	 */

	protected java.lang.String localHoraMaxEntrega;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localHoraMaxEntregaTracker = false;

	public boolean isHoraMaxEntregaSpecified()
	{
		return localHoraMaxEntregaTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.lang.String
	 */
	public java.lang.String getHoraMaxEntrega()
	{
		return localHoraMaxEntrega;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            HoraMaxEntrega
	 */
	public void setHoraMaxEntrega(java.lang.String param)
	{
		localHoraMaxEntregaTracker = param != null;

		this.localHoraMaxEntrega = param;

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
						"type", namespacePrefix + ":cServico", xmlWriter);
			}
			else
			{
				writeAttribute("xsi", "http://www.w3.org/2001/XMLSchema-instance",
						"type", "cServico", xmlWriter);
			}

		}
		if (localCodigoTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "Codigo", xmlWriter);

			if (localCodigo == java.lang.Integer.MIN_VALUE)
			{

				throw new org.apache.axis2.databinding.ADBException(
						"Codigo cannot be null!!");

			}
			else
			{
				xmlWriter.writeCharacters(
						org.apache.axis2.databinding.utils.ConverterUtil
								.convertToString(localCodigo));
			}

			xmlWriter.writeEndElement();
		}
		if (localValorTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "Valor", xmlWriter);

			if (localValor == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"Valor cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(localValor);

			}

			xmlWriter.writeEndElement();
		}
		if (localPrazoEntregaTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "PrazoEntrega", xmlWriter);

			if (localPrazoEntrega == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"PrazoEntrega cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(localPrazoEntrega);

			}

			xmlWriter.writeEndElement();
		}
		if (localValorMaoPropriaTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "ValorMaoPropria", xmlWriter);

			if (localValorMaoPropria == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"ValorMaoPropria cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(localValorMaoPropria);

			}

			xmlWriter.writeEndElement();
		}
		if (localValorAvisoRecebimentoTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "ValorAvisoRecebimento", xmlWriter);

			if (localValorAvisoRecebimento == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"ValorAvisoRecebimento cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(localValorAvisoRecebimento);

			}

			xmlWriter.writeEndElement();
		}
		if (localValorValorDeclaradoTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "ValorValorDeclarado", xmlWriter);

			if (localValorValorDeclarado == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"ValorValorDeclarado cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(localValorValorDeclarado);

			}

			xmlWriter.writeEndElement();
		}
		if (localEntregaDomiciliarTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "EntregaDomiciliar", xmlWriter);

			if (localEntregaDomiciliar == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"EntregaDomiciliar cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(localEntregaDomiciliar);

			}

			xmlWriter.writeEndElement();
		}
		if (localEntregaSabadoTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "EntregaSabado", xmlWriter);

			if (localEntregaSabado == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"EntregaSabado cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(localEntregaSabado);

			}

			xmlWriter.writeEndElement();
		}
		if (localErroTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "Erro", xmlWriter);

			if (localErro == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"Erro cannot be null!!");

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
			writeStartElement(null, namespace, "MsgErro", xmlWriter);

			if (localMsgErro == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"MsgErro cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(localMsgErro);

			}

			xmlWriter.writeEndElement();
		}
		if (localValorSemAdicionaisTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "ValorSemAdicionais", xmlWriter);

			if (localValorSemAdicionais == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"ValorSemAdicionais cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(localValorSemAdicionais);

			}

			xmlWriter.writeEndElement();
		}
		if (localObsFimTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "obsFim", xmlWriter);

			if (localObsFim == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"obsFim cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(localObsFim);

			}

			xmlWriter.writeEndElement();
		}
		if (localDataMaxEntregaTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "DataMaxEntrega", xmlWriter);

			if (localDataMaxEntrega == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"DataMaxEntrega cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(localDataMaxEntrega);

			}

			xmlWriter.writeEndElement();
		}
		if (localHoraMaxEntregaTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "HoraMaxEntrega", xmlWriter);

			if (localHoraMaxEntrega == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"HoraMaxEntrega cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(localHoraMaxEntrega);

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
					new javax.xml.namespace.QName("http://tempuri.org/", "Codigo"));

			elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
					.convertToString(localCodigo));
		}
		if (localValorTracker)
		{
			elementList.add(
					new javax.xml.namespace.QName("http://tempuri.org/", "Valor"));

			if (localValor != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localValor));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"Valor cannot be null!!");
			}
		}
		if (localPrazoEntregaTracker)
		{
			elementList.add(new javax.xml.namespace.QName("http://tempuri.org/",
					"PrazoEntrega"));

			if (localPrazoEntrega != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localPrazoEntrega));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"PrazoEntrega cannot be null!!");
			}
		}
		if (localValorMaoPropriaTracker)
		{
			elementList.add(new javax.xml.namespace.QName("http://tempuri.org/",
					"ValorMaoPropria"));

			if (localValorMaoPropria != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localValorMaoPropria));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"ValorMaoPropria cannot be null!!");
			}
		}
		if (localValorAvisoRecebimentoTracker)
		{
			elementList.add(new javax.xml.namespace.QName("http://tempuri.org/",
					"ValorAvisoRecebimento"));

			if (localValorAvisoRecebimento != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localValorAvisoRecebimento));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"ValorAvisoRecebimento cannot be null!!");
			}
		}
		if (localValorValorDeclaradoTracker)
		{
			elementList.add(new javax.xml.namespace.QName("http://tempuri.org/",
					"ValorValorDeclarado"));

			if (localValorValorDeclarado != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localValorValorDeclarado));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"ValorValorDeclarado cannot be null!!");
			}
		}
		if (localEntregaDomiciliarTracker)
		{
			elementList.add(new javax.xml.namespace.QName("http://tempuri.org/",
					"EntregaDomiciliar"));

			if (localEntregaDomiciliar != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localEntregaDomiciliar));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"EntregaDomiciliar cannot be null!!");
			}
		}
		if (localEntregaSabadoTracker)
		{
			elementList.add(new javax.xml.namespace.QName("http://tempuri.org/",
					"EntregaSabado"));

			if (localEntregaSabado != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localEntregaSabado));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"EntregaSabado cannot be null!!");
			}
		}
		if (localErroTracker)
		{
			elementList.add(
					new javax.xml.namespace.QName("http://tempuri.org/", "Erro"));

			if (localErro != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localErro));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"Erro cannot be null!!");
			}
		}
		if (localMsgErroTracker)
		{
			elementList.add(
					new javax.xml.namespace.QName("http://tempuri.org/", "MsgErro"));

			if (localMsgErro != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localMsgErro));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"MsgErro cannot be null!!");
			}
		}
		if (localValorSemAdicionaisTracker)
		{
			elementList.add(new javax.xml.namespace.QName("http://tempuri.org/",
					"ValorSemAdicionais"));

			if (localValorSemAdicionais != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localValorSemAdicionais));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"ValorSemAdicionais cannot be null!!");
			}
		}
		if (localObsFimTracker)
		{
			elementList.add(
					new javax.xml.namespace.QName("http://tempuri.org/", "obsFim"));

			if (localObsFim != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localObsFim));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"obsFim cannot be null!!");
			}
		}
		if (localDataMaxEntregaTracker)
		{
			elementList.add(new javax.xml.namespace.QName("http://tempuri.org/",
					"DataMaxEntrega"));

			if (localDataMaxEntrega != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localDataMaxEntrega));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"DataMaxEntrega cannot be null!!");
			}
		}
		if (localHoraMaxEntregaTracker)
		{
			elementList.add(new javax.xml.namespace.QName("http://tempuri.org/",
					"HoraMaxEntrega"));

			if (localHoraMaxEntrega != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localHoraMaxEntrega));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"HoraMaxEntrega cannot be null!!");
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
		public static CServico parse(javax.xml.stream.XMLStreamReader reader)
				throws java.lang.Exception
		{
			CServico object = new CServico();

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

						if (!"cServico".equals(type))
						{
							// find namespace for the prefix
							java.lang.String nsUri = reader.getNamespaceContext()
									.getNamespaceURI(nsPrefix);
							return (CServico) org.tempuri.ExtensionMapper
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
								"Codigo").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "Codigo" + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setCodigo(org.apache.axis2.databinding.utils.ConverterUtil
							.convertToInt(content));

					reader.next();

				} // End of if for expected property start element

				else
				{

					object.setCodigo(java.lang.Integer.MIN_VALUE);

				}

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName("http://tempuri.org/",
								"Valor").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "Valor" + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setValor(org.apache.axis2.databinding.utils.ConverterUtil
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
								"PrazoEntrega").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "PrazoEntrega"
										+ "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setPrazoEntrega(
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
								"ValorMaoPropria").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "ValorMaoPropria"
										+ "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setValorMaoPropria(
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
								"ValorAvisoRecebimento").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "ValorAvisoRecebimento"
										+ "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setValorAvisoRecebimento(
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
								"ValorValorDeclarado").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "ValorValorDeclarado"
										+ "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setValorValorDeclarado(
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
								"EntregaDomiciliar").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "EntregaDomiciliar"
										+ "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setEntregaDomiciliar(
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
								"EntregaSabado").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "EntregaSabado"
										+ "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setEntregaSabado(
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
								"Erro").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "Erro" + "  cannot be null");
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
								"MsgErro").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "MsgErro" + "  cannot be null");
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

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName("http://tempuri.org/",
								"ValorSemAdicionais").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "ValorSemAdicionais"
										+ "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setValorSemAdicionais(
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
								"obsFim").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "obsFim" + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setObsFim(org.apache.axis2.databinding.utils.ConverterUtil
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
								"DataMaxEntrega").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "DataMaxEntrega"
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
								"HoraMaxEntrega").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "HoraMaxEntrega"
										+ "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setHoraMaxEntrega(
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
