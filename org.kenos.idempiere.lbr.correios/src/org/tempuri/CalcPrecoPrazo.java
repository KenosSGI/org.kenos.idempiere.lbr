
/**
 * CalcPrecoPrazo.java This file was auto-generated from WSDL by the Apache
 * Axis2 version: 1.6.2 Built on : Apr 17, 2012 (05:34:40 IST)
 */

package org.tempuri;

/**
 * CalcPrecoPrazo bean class
 */
@SuppressWarnings({"unchecked", "unused", "serial", "rawtypes"})

public class CalcPrecoPrazo implements org.apache.axis2.databinding.ADBBean
{

	public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(
			"http://tempuri.org/", "CalcPrecoPrazo", "");

	/**
	 * field for NCdEmpresa
	 */

	protected java.lang.String localNCdEmpresa;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localNCdEmpresaTracker = false;

	public boolean isNCdEmpresaSpecified()
	{
		return localNCdEmpresaTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.lang.String
	 */
	public java.lang.String getNCdEmpresa()
	{
		return localNCdEmpresa;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            NCdEmpresa
	 */
	public void setNCdEmpresa(java.lang.String param)
	{
		localNCdEmpresaTracker = param != null;

		this.localNCdEmpresa = param;

	}

	/**
	 * field for SDsSenha
	 */

	protected java.lang.String localSDsSenha;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localSDsSenhaTracker = false;

	public boolean isSDsSenhaSpecified()
	{
		return localSDsSenhaTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.lang.String
	 */
	public java.lang.String getSDsSenha()
	{
		return localSDsSenha;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            SDsSenha
	 */
	public void setSDsSenha(java.lang.String param)
	{
		localSDsSenhaTracker = param != null;

		this.localSDsSenha = param;

	}

	/**
	 * field for NCdServico
	 */

	protected java.lang.String localNCdServico;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localNCdServicoTracker = false;

	public boolean isNCdServicoSpecified()
	{
		return localNCdServicoTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.lang.String
	 */
	public java.lang.String getNCdServico()
	{
		return localNCdServico;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            NCdServico
	 */
	public void setNCdServico(java.lang.String param)
	{
		localNCdServicoTracker = param != null;

		this.localNCdServico = param;

	}

	/**
	 * field for SCepOrigem
	 */

	protected java.lang.String localSCepOrigem;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localSCepOrigemTracker = false;

	public boolean isSCepOrigemSpecified()
	{
		return localSCepOrigemTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.lang.String
	 */
	public java.lang.String getSCepOrigem()
	{
		return localSCepOrigem;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            SCepOrigem
	 */
	public void setSCepOrigem(java.lang.String param)
	{
		localSCepOrigemTracker = param != null;

		this.localSCepOrigem = param;

	}

	/**
	 * field for SCepDestino
	 */

	protected java.lang.String localSCepDestino;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localSCepDestinoTracker = false;

	public boolean isSCepDestinoSpecified()
	{
		return localSCepDestinoTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.lang.String
	 */
	public java.lang.String getSCepDestino()
	{
		return localSCepDestino;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            SCepDestino
	 */
	public void setSCepDestino(java.lang.String param)
	{
		localSCepDestinoTracker = param != null;

		this.localSCepDestino = param;

	}

	/**
	 * field for NVlPeso
	 */

	protected java.lang.String localNVlPeso;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localNVlPesoTracker = false;

	public boolean isNVlPesoSpecified()
	{
		return localNVlPesoTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.lang.String
	 */
	public java.lang.String getNVlPeso()
	{
		return localNVlPeso;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            NVlPeso
	 */
	public void setNVlPeso(java.lang.String param)
	{
		localNVlPesoTracker = param != null;

		this.localNVlPeso = param;

	}

	/**
	 * field for NCdFormato
	 */

	protected int localNCdFormato;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localNCdFormatoTracker = false;

	public boolean isNCdFormatoSpecified()
	{
		return localNCdFormatoTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return int
	 */
	public int getNCdFormato()
	{
		return localNCdFormato;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            NCdFormato
	 */
	public void setNCdFormato(int param)
	{

		// setting primitive attribute tracker to true
		localNCdFormatoTracker = param != java.lang.Integer.MIN_VALUE;

		this.localNCdFormato = param;

	}

	/**
	 * field for NVlComprimento
	 */

	protected java.math.BigDecimal localNVlComprimento;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localNVlComprimentoTracker = false;

	public boolean isNVlComprimentoSpecified()
	{
		return localNVlComprimentoTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.math.BigDecimal
	 */
	public java.math.BigDecimal getNVlComprimento()
	{
		return localNVlComprimento;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            NVlComprimento
	 */
	public void setNVlComprimento(java.math.BigDecimal param)
	{
		localNVlComprimentoTracker = param != null;

		this.localNVlComprimento = param;

	}

	/**
	 * field for NVlAltura
	 */

	protected java.math.BigDecimal localNVlAltura;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localNVlAlturaTracker = false;

	public boolean isNVlAlturaSpecified()
	{
		return localNVlAlturaTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.math.BigDecimal
	 */
	public java.math.BigDecimal getNVlAltura()
	{
		return localNVlAltura;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            NVlAltura
	 */
	public void setNVlAltura(java.math.BigDecimal param)
	{
		localNVlAlturaTracker = param != null;

		this.localNVlAltura = param;

	}

	/**
	 * field for NVlLargura
	 */

	protected java.math.BigDecimal localNVlLargura;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localNVlLarguraTracker = false;

	public boolean isNVlLarguraSpecified()
	{
		return localNVlLarguraTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.math.BigDecimal
	 */
	public java.math.BigDecimal getNVlLargura()
	{
		return localNVlLargura;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            NVlLargura
	 */
	public void setNVlLargura(java.math.BigDecimal param)
	{
		localNVlLarguraTracker = param != null;

		this.localNVlLargura = param;

	}

	/**
	 * field for NVlDiametro
	 */

	protected java.math.BigDecimal localNVlDiametro;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localNVlDiametroTracker = false;

	public boolean isNVlDiametroSpecified()
	{
		return localNVlDiametroTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.math.BigDecimal
	 */
	public java.math.BigDecimal getNVlDiametro()
	{
		return localNVlDiametro;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            NVlDiametro
	 */
	public void setNVlDiametro(java.math.BigDecimal param)
	{
		localNVlDiametroTracker = param != null;

		this.localNVlDiametro = param;

	}

	/**
	 * field for SCdMaoPropria
	 */

	protected java.lang.String localSCdMaoPropria;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localSCdMaoPropriaTracker = false;

	public boolean isSCdMaoPropriaSpecified()
	{
		return localSCdMaoPropriaTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.lang.String
	 */
	public java.lang.String getSCdMaoPropria()
	{
		return localSCdMaoPropria;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            SCdMaoPropria
	 */
	public void setSCdMaoPropria(java.lang.String param)
	{
		localSCdMaoPropriaTracker = param != null;

		this.localSCdMaoPropria = param;

	}

	/**
	 * field for NVlValorDeclarado
	 */

	protected java.math.BigDecimal localNVlValorDeclarado;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localNVlValorDeclaradoTracker = false;

	public boolean isNVlValorDeclaradoSpecified()
	{
		return localNVlValorDeclaradoTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.math.BigDecimal
	 */
	public java.math.BigDecimal getNVlValorDeclarado()
	{
		return localNVlValorDeclarado;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            NVlValorDeclarado
	 */
	public void setNVlValorDeclarado(java.math.BigDecimal param)
	{
		localNVlValorDeclaradoTracker = param != null;

		this.localNVlValorDeclarado = param;

	}

	/**
	 * field for SCdAvisoRecebimento
	 */

	protected java.lang.String localSCdAvisoRecebimento;

	/*
	 * This tracker boolean wil be used to detect whether the user called the
	 * set method for this attribute. It will be used to determine whether to
	 * include this field in the serialized XML
	 */
	protected boolean localSCdAvisoRecebimentoTracker = false;

	public boolean isSCdAvisoRecebimentoSpecified()
	{
		return localSCdAvisoRecebimentoTracker;
	}

	/**
	 * Auto generated getter method
	 * 
	 * @return java.lang.String
	 */
	public java.lang.String getSCdAvisoRecebimento()
	{
		return localSCdAvisoRecebimento;
	}

	/**
	 * Auto generated setter method
	 * 
	 * @param param
	 *            SCdAvisoRecebimento
	 */
	public void setSCdAvisoRecebimento(java.lang.String param)
	{
		localSCdAvisoRecebimentoTracker = param != null;

		this.localSCdAvisoRecebimento = param;

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
				this, MY_QNAME);
		return factory.createOMElement(dataSource, MY_QNAME);

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
						"type", namespacePrefix + ":CalcPrecoPrazo", xmlWriter);
			}
			else
			{
				writeAttribute("xsi", "http://www.w3.org/2001/XMLSchema-instance",
						"type", "CalcPrecoPrazo", xmlWriter);
			}

		}
		if (localNCdEmpresaTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "nCdEmpresa", xmlWriter);

			if (localNCdEmpresa == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"nCdEmpresa cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(localNCdEmpresa);

			}

			xmlWriter.writeEndElement();
		}
		if (localSDsSenhaTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "sDsSenha", xmlWriter);

			if (localSDsSenha == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"sDsSenha cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(localSDsSenha);

			}

			xmlWriter.writeEndElement();
		}
		if (localNCdServicoTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "nCdServico", xmlWriter);

			if (localNCdServico == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"nCdServico cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(localNCdServico);

			}

			xmlWriter.writeEndElement();
		}
		if (localSCepOrigemTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "sCepOrigem", xmlWriter);

			if (localSCepOrigem == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"sCepOrigem cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(localSCepOrigem);

			}

			xmlWriter.writeEndElement();
		}
		if (localSCepDestinoTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "sCepDestino", xmlWriter);

			if (localSCepDestino == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"sCepDestino cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(localSCepDestino);

			}

			xmlWriter.writeEndElement();
		}
		if (localNVlPesoTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "nVlPeso", xmlWriter);

			if (localNVlPeso == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"nVlPeso cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(localNVlPeso);

			}

			xmlWriter.writeEndElement();
		}
		if (localNCdFormatoTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "nCdFormato", xmlWriter);

			if (localNCdFormato == java.lang.Integer.MIN_VALUE)
			{

				throw new org.apache.axis2.databinding.ADBException(
						"nCdFormato cannot be null!!");

			}
			else
			{
				xmlWriter.writeCharacters(
						org.apache.axis2.databinding.utils.ConverterUtil
								.convertToString(localNCdFormato));
			}

			xmlWriter.writeEndElement();
		}
		if (localNVlComprimentoTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "nVlComprimento", xmlWriter);

			if (localNVlComprimento == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"nVlComprimento cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(
						org.apache.axis2.databinding.utils.ConverterUtil
								.convertToString(localNVlComprimento));

			}

			xmlWriter.writeEndElement();
		}
		if (localNVlAlturaTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "nVlAltura", xmlWriter);

			if (localNVlAltura == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"nVlAltura cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(
						org.apache.axis2.databinding.utils.ConverterUtil
								.convertToString(localNVlAltura));

			}

			xmlWriter.writeEndElement();
		}
		if (localNVlLarguraTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "nVlLargura", xmlWriter);

			if (localNVlLargura == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"nVlLargura cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(
						org.apache.axis2.databinding.utils.ConverterUtil
								.convertToString(localNVlLargura));

			}

			xmlWriter.writeEndElement();
		}
		if (localNVlDiametroTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "nVlDiametro", xmlWriter);

			if (localNVlDiametro == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"nVlDiametro cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(
						org.apache.axis2.databinding.utils.ConverterUtil
								.convertToString(localNVlDiametro));

			}

			xmlWriter.writeEndElement();
		}
		if (localSCdMaoPropriaTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "sCdMaoPropria", xmlWriter);

			if (localSCdMaoPropria == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"sCdMaoPropria cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(localSCdMaoPropria);

			}

			xmlWriter.writeEndElement();
		}
		if (localNVlValorDeclaradoTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "nVlValorDeclarado", xmlWriter);

			if (localNVlValorDeclarado == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"nVlValorDeclarado cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(
						org.apache.axis2.databinding.utils.ConverterUtil
								.convertToString(localNVlValorDeclarado));

			}

			xmlWriter.writeEndElement();
		}
		if (localSCdAvisoRecebimentoTracker)
		{
			namespace = "http://tempuri.org/";
			writeStartElement(null, namespace, "sCdAvisoRecebimento", xmlWriter);

			if (localSCdAvisoRecebimento == null)
			{
				// write the nil attribute

				throw new org.apache.axis2.databinding.ADBException(
						"sCdAvisoRecebimento cannot be null!!");

			}
			else
			{

				xmlWriter.writeCharacters(localSCdAvisoRecebimento);

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

		if (localNCdEmpresaTracker)
		{
			elementList.add(new javax.xml.namespace.QName("http://tempuri.org/",
					"nCdEmpresa"));

			if (localNCdEmpresa != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localNCdEmpresa));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"nCdEmpresa cannot be null!!");
			}
		}
		if (localSDsSenhaTracker)
		{
			elementList.add(new javax.xml.namespace.QName("http://tempuri.org/",
					"sDsSenha"));

			if (localSDsSenha != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localSDsSenha));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"sDsSenha cannot be null!!");
			}
		}
		if (localNCdServicoTracker)
		{
			elementList.add(new javax.xml.namespace.QName("http://tempuri.org/",
					"nCdServico"));

			if (localNCdServico != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localNCdServico));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"nCdServico cannot be null!!");
			}
		}
		if (localSCepOrigemTracker)
		{
			elementList.add(new javax.xml.namespace.QName("http://tempuri.org/",
					"sCepOrigem"));

			if (localSCepOrigem != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localSCepOrigem));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"sCepOrigem cannot be null!!");
			}
		}
		if (localSCepDestinoTracker)
		{
			elementList.add(new javax.xml.namespace.QName("http://tempuri.org/",
					"sCepDestino"));

			if (localSCepDestino != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localSCepDestino));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"sCepDestino cannot be null!!");
			}
		}
		if (localNVlPesoTracker)
		{
			elementList.add(
					new javax.xml.namespace.QName("http://tempuri.org/", "nVlPeso"));

			if (localNVlPeso != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localNVlPeso));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"nVlPeso cannot be null!!");
			}
		}
		if (localNCdFormatoTracker)
		{
			elementList.add(new javax.xml.namespace.QName("http://tempuri.org/",
					"nCdFormato"));

			elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
					.convertToString(localNCdFormato));
		}
		if (localNVlComprimentoTracker)
		{
			elementList.add(new javax.xml.namespace.QName("http://tempuri.org/",
					"nVlComprimento"));

			if (localNVlComprimento != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localNVlComprimento));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"nVlComprimento cannot be null!!");
			}
		}
		if (localNVlAlturaTracker)
		{
			elementList.add(new javax.xml.namespace.QName("http://tempuri.org/",
					"nVlAltura"));

			if (localNVlAltura != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localNVlAltura));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"nVlAltura cannot be null!!");
			}
		}
		if (localNVlLarguraTracker)
		{
			elementList.add(new javax.xml.namespace.QName("http://tempuri.org/",
					"nVlLargura"));

			if (localNVlLargura != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localNVlLargura));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"nVlLargura cannot be null!!");
			}
		}
		if (localNVlDiametroTracker)
		{
			elementList.add(new javax.xml.namespace.QName("http://tempuri.org/",
					"nVlDiametro"));

			if (localNVlDiametro != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localNVlDiametro));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"nVlDiametro cannot be null!!");
			}
		}
		if (localSCdMaoPropriaTracker)
		{
			elementList.add(new javax.xml.namespace.QName("http://tempuri.org/",
					"sCdMaoPropria"));

			if (localSCdMaoPropria != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localSCdMaoPropria));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"sCdMaoPropria cannot be null!!");
			}
		}
		if (localNVlValorDeclaradoTracker)
		{
			elementList.add(new javax.xml.namespace.QName("http://tempuri.org/",
					"nVlValorDeclarado"));

			if (localNVlValorDeclarado != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localNVlValorDeclarado));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"nVlValorDeclarado cannot be null!!");
			}
		}
		if (localSCdAvisoRecebimentoTracker)
		{
			elementList.add(new javax.xml.namespace.QName("http://tempuri.org/",
					"sCdAvisoRecebimento"));

			if (localSCdAvisoRecebimento != null)
			{
				elementList.add(org.apache.axis2.databinding.utils.ConverterUtil
						.convertToString(localSCdAvisoRecebimento));
			}
			else
			{
				throw new org.apache.axis2.databinding.ADBException(
						"sCdAvisoRecebimento cannot be null!!");
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
		public static CalcPrecoPrazo parse(javax.xml.stream.XMLStreamReader reader)
				throws java.lang.Exception
		{
			CalcPrecoPrazo object = new CalcPrecoPrazo();

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

						if (!"CalcPrecoPrazo".equals(type))
						{
							// find namespace for the prefix
							java.lang.String nsUri = reader.getNamespaceContext()
									.getNamespaceURI(nsPrefix);
							return (CalcPrecoPrazo) org.tempuri.ExtensionMapper
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
								"nCdEmpresa").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "nCdEmpresa" + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setNCdEmpresa(
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
								"sDsSenha").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "sDsSenha" + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setSDsSenha(
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
								"nCdServico").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "nCdServico" + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setNCdServico(
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
								"sCepOrigem").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "sCepOrigem" + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setSCepOrigem(
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
								"sCepDestino").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "sCepDestino"
										+ "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setSCepDestino(
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
								"nVlPeso").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "nVlPeso" + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setNVlPeso(
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
								"nCdFormato").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "nCdFormato" + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setNCdFormato(
							org.apache.axis2.databinding.utils.ConverterUtil
									.convertToInt(content));

					reader.next();

				} // End of if for expected property start element

				else
				{

					object.setNCdFormato(java.lang.Integer.MIN_VALUE);

				}

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName("http://tempuri.org/",
								"nVlComprimento").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "nVlComprimento"
										+ "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setNVlComprimento(
							org.apache.axis2.databinding.utils.ConverterUtil
									.convertToDecimal(content));

					reader.next();

				} // End of if for expected property start element

				else
				{

				}

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName("http://tempuri.org/",
								"nVlAltura").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "nVlAltura" + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setNVlAltura(
							org.apache.axis2.databinding.utils.ConverterUtil
									.convertToDecimal(content));

					reader.next();

				} // End of if for expected property start element

				else
				{

				}

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName("http://tempuri.org/",
								"nVlLargura").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "nVlLargura" + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setNVlLargura(
							org.apache.axis2.databinding.utils.ConverterUtil
									.convertToDecimal(content));

					reader.next();

				} // End of if for expected property start element

				else
				{

				}

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName("http://tempuri.org/",
								"nVlDiametro").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "nVlDiametro"
										+ "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setNVlDiametro(
							org.apache.axis2.databinding.utils.ConverterUtil
									.convertToDecimal(content));

					reader.next();

				} // End of if for expected property start element

				else
				{

				}

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName("http://tempuri.org/",
								"sCdMaoPropria").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "sCdMaoPropria"
										+ "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setSCdMaoPropria(
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
								"nVlValorDeclarado").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "nVlValorDeclarado"
										+ "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setNVlValorDeclarado(
							org.apache.axis2.databinding.utils.ConverterUtil
									.convertToDecimal(content));

					reader.next();

				} // End of if for expected property start element

				else
				{

				}

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName("http://tempuri.org/",
								"sCdAvisoRecebimento").equals(reader.getName()))
				{

					nillableValue = reader.getAttributeValue(
							"http://www.w3.org/2001/XMLSchema-instance", "nil");
					if ("true".equals(nillableValue) || "1".equals(nillableValue))
					{
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "sCdAvisoRecebimento"
										+ "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setSCdAvisoRecebimento(
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
