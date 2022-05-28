/**
 * TcDadosServico.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.4  Built on : Dec 28, 2015 (10:04:10 GMT)
 */
package br.org.abrasf.www.nfse_xsd;


/**
 *  TcDadosServico bean class
 */
@SuppressWarnings({"unchecked",
    "unused"
})
public class TcDadosServico implements org.apache.axis2.databinding.ADBBean {
    /* This type was generated from the piece of schema that had
       name = tcDadosServico
       Namespace URI = http://www.abrasf.org.br/nfse.xsd
       Namespace Prefix =
     */

    /**
     * field for Valores
     */
    protected br.org.abrasf.www.nfse_xsd.TcValoresDeclaracaoServico localValores;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localValoresTracker = false;

    /**
     * field for IssRetido
     */
    protected byte localIssRetido;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localIssRetidoTracker = false;

    /**
     * field for ResponsavelRetencao
     */
    protected byte localResponsavelRetencao;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localResponsavelRetencaoTracker = false;

    /**
     * field for ItemListaServico
     */
    protected java.lang.String localItemListaServico;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localItemListaServicoTracker = false;

    /**
     * field for CodigoCnae
     */
    protected int localCodigoCnae;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localCodigoCnaeTracker = false;

    /**
     * field for CodigoTributacaoMunicipio
     */
    protected java.lang.String localCodigoTributacaoMunicipio;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localCodigoTributacaoMunicipioTracker = false;

    /**
     * field for Discriminacao
     */
    protected java.lang.String localDiscriminacao;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localDiscriminacaoTracker = false;

    /**
     * field for CodigoMunicipio
     */
    protected int localCodigoMunicipio;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localCodigoMunicipioTracker = false;

    /**
     * field for CodigoPais
     */
    protected java.lang.String localCodigoPais;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localCodigoPaisTracker = false;

    /**
     * field for ExigibilidadeISS
     */
    protected byte localExigibilidadeISS;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localExigibilidadeISSTracker = false;

    /**
     * field for MunicipioIncidencia
     */
    protected int localMunicipioIncidencia;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localMunicipioIncidenciaTracker = false;

    /**
     * field for NumeroProcesso
     */
    protected java.lang.String localNumeroProcesso;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localNumeroProcessoTracker = false;

    public boolean isValoresSpecified() {
        return localValoresTracker;
    }

    /**
     * Auto generated getter method
     * @return br.org.abrasf.www.nfse_xsd.TcValoresDeclaracaoServico
     */
    public br.org.abrasf.www.nfse_xsd.TcValoresDeclaracaoServico getValores() {
        return localValores;
    }

    /**
     * Auto generated setter method
     * @param param Valores
     */
    public void setValores(
        br.org.abrasf.www.nfse_xsd.TcValoresDeclaracaoServico param) {
        localValoresTracker = param != null;

        this.localValores = param;
    }

    public boolean isIssRetidoSpecified() {
        return localIssRetidoTracker;
    }

    /**
     * Auto generated getter method
     * @return byte
     */
    public byte getIssRetido() {
        return localIssRetido;
    }

    /**
     * Auto generated setter method
     * @param param IssRetido
     */
    public void setIssRetido(byte param) {
        // setting primitive attribute tracker to true
        localIssRetidoTracker = param != java.lang.Byte.MIN_VALUE;

        this.localIssRetido = param;
    }

    public boolean isResponsavelRetencaoSpecified() {
        return localResponsavelRetencaoTracker;
    }

    /**
     * Auto generated getter method
     * @return byte
     */
    public byte getResponsavelRetencao() {
        return localResponsavelRetencao;
    }

    /**
     * Auto generated setter method
     * @param param ResponsavelRetencao
     */
    public void setResponsavelRetencao(byte param) {
        // setting primitive attribute tracker to true
        localResponsavelRetencaoTracker = param != java.lang.Byte.MIN_VALUE;

        this.localResponsavelRetencao = param;
    }

    public boolean isItemListaServicoSpecified() {
        return localItemListaServicoTracker;
    }

    /**
     * Auto generated getter method
     * @return java.lang.String
     */
    public java.lang.String getItemListaServico() {
        return localItemListaServico;
    }

    /**
     * Auto generated setter method
     * @param param ItemListaServico
     */
    public void setItemListaServico(java.lang.String param) {
        localItemListaServicoTracker = param != null;

        this.localItemListaServico = param;
    }

    public boolean isCodigoCnaeSpecified() {
        return localCodigoCnaeTracker;
    }

    /**
     * Auto generated getter method
     * @return int
     */
    public int getCodigoCnae() {
        return localCodigoCnae;
    }

    /**
     * Auto generated setter method
     * @param param CodigoCnae
     */
    public void setCodigoCnae(int param) {
        // setting primitive attribute tracker to true
        localCodigoCnaeTracker = param != java.lang.Integer.MIN_VALUE;

        this.localCodigoCnae = param;
    }

    public boolean isCodigoTributacaoMunicipioSpecified() {
        return localCodigoTributacaoMunicipioTracker;
    }

    /**
     * Auto generated getter method
     * @return java.lang.String
     */
    public java.lang.String getCodigoTributacaoMunicipio() {
        return localCodigoTributacaoMunicipio;
    }

    /**
     * Auto generated setter method
     * @param param CodigoTributacaoMunicipio
     */
    public void setCodigoTributacaoMunicipio(java.lang.String param) {
        localCodigoTributacaoMunicipioTracker = param != null;

        this.localCodigoTributacaoMunicipio = param;
    }

    public boolean isDiscriminacaoSpecified() {
        return localDiscriminacaoTracker;
    }

    /**
     * Auto generated getter method
     * @return java.lang.String
     */
    public java.lang.String getDiscriminacao() {
        return localDiscriminacao;
    }

    /**
     * Auto generated setter method
     * @param param Discriminacao
     */
    public void setDiscriminacao(java.lang.String param) {
        localDiscriminacaoTracker = param != null;

        this.localDiscriminacao = param;
    }

    public boolean isCodigoMunicipioSpecified() {
        return localCodigoMunicipioTracker;
    }

    /**
     * Auto generated getter method
     * @return int
     */
    public int getCodigoMunicipio() {
        return localCodigoMunicipio;
    }

    /**
     * Auto generated setter method
     * @param param CodigoMunicipio
     */
    public void setCodigoMunicipio(int param) {
        // setting primitive attribute tracker to true
        localCodigoMunicipioTracker = param != java.lang.Integer.MIN_VALUE;

        this.localCodigoMunicipio = param;
    }

    public boolean isCodigoPaisSpecified() {
        return localCodigoPaisTracker;
    }

    /**
     * Auto generated getter method
     * @return java.lang.String
     */
    public java.lang.String getCodigoPais() {
        return localCodigoPais;
    }

    /**
     * Auto generated setter method
     * @param param CodigoPais
     */
    public void setCodigoPais(java.lang.String param) {
        localCodigoPaisTracker = param != null;

        this.localCodigoPais = param;
    }

    public boolean isExigibilidadeISSSpecified() {
        return localExigibilidadeISSTracker;
    }

    /**
     * Auto generated getter method
     * @return byte
     */
    public byte getExigibilidadeISS() {
        return localExigibilidadeISS;
    }

    /**
     * Auto generated setter method
     * @param param ExigibilidadeISS
     */
    public void setExigibilidadeISS(byte param) {
        // setting primitive attribute tracker to true
        localExigibilidadeISSTracker = param != java.lang.Byte.MIN_VALUE;

        this.localExigibilidadeISS = param;
    }

    public boolean isMunicipioIncidenciaSpecified() {
        return localMunicipioIncidenciaTracker;
    }

    /**
     * Auto generated getter method
     * @return int
     */
    public int getMunicipioIncidencia() {
        return localMunicipioIncidencia;
    }

    /**
     * Auto generated setter method
     * @param param MunicipioIncidencia
     */
    public void setMunicipioIncidencia(int param) {
        // setting primitive attribute tracker to true
        localMunicipioIncidenciaTracker = param != java.lang.Integer.MIN_VALUE;

        this.localMunicipioIncidencia = param;
    }

    public boolean isNumeroProcessoSpecified() {
        return localNumeroProcessoTracker;
    }

    /**
     * Auto generated getter method
     * @return java.lang.String
     */
    public java.lang.String getNumeroProcesso() {
        return localNumeroProcesso;
    }

    /**
     * Auto generated setter method
     * @param param NumeroProcesso
     */
    public void setNumeroProcesso(java.lang.String param) {
        localNumeroProcessoTracker = param != null;

        this.localNumeroProcesso = param;
    }

    /**
     *
     * @param parentQName
     * @param factory
     * @return org.apache.axiom.om.OMElement
     */
    public org.apache.axiom.om.OMElement getOMElement(
        final javax.xml.namespace.QName parentQName,
        final org.apache.axiom.om.OMFactory factory)
        throws org.apache.axis2.databinding.ADBException {
        org.apache.axiom.om.OMDataSource dataSource = new org.apache.axis2.databinding.ADBDataSource(this,
                parentQName);

        return factory.createOMElement(dataSource, parentQName);
    }

    public void serialize(final javax.xml.namespace.QName parentQName,
        javax.xml.stream.XMLStreamWriter xmlWriter)
        throws javax.xml.stream.XMLStreamException,
            org.apache.axis2.databinding.ADBException {
        serialize(parentQName, xmlWriter, false);
    }

    public void serialize(final javax.xml.namespace.QName parentQName,
        javax.xml.stream.XMLStreamWriter xmlWriter, boolean serializeType)
        throws javax.xml.stream.XMLStreamException,
            org.apache.axis2.databinding.ADBException {
        java.lang.String prefix = null;
        java.lang.String namespace = null;

        prefix = parentQName.getPrefix();
        namespace = parentQName.getNamespaceURI();
        writeStartElement(prefix, namespace, parentQName.getLocalPart(),
            xmlWriter);

        if (serializeType) {
            java.lang.String namespacePrefix = registerPrefix(xmlWriter,
                    "http://www.abrasf.org.br/nfse.xsd");

            if ((namespacePrefix != null) &&
                    (namespacePrefix.trim().length() > 0)) {
                writeAttribute("xsi",
                    "http://www.w3.org/2001/XMLSchema-instance", "type",
                    namespacePrefix + ":tcDadosServico", xmlWriter);
            } else {
                writeAttribute("xsi",
                    "http://www.w3.org/2001/XMLSchema-instance", "type",
                    "tcDadosServico", xmlWriter);
            }
        }

        if (localValoresTracker) {
            if (localValores == null) {
                throw new org.apache.axis2.databinding.ADBException(
                    "Valores cannot be null!!");
            }

            localValores.serialize(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "Valores"), xmlWriter);
        }

        if (localIssRetidoTracker) {
            namespace = "http://www.abrasf.org.br/nfse.xsd";
            writeStartElement(null, namespace, "IssRetido", xmlWriter);

            if (localIssRetido == java.lang.Byte.MIN_VALUE) {
                throw new org.apache.axis2.databinding.ADBException(
                    "IssRetido cannot be null!!");
            } else {
                xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localIssRetido));
            }

            xmlWriter.writeEndElement();
        }

        if (localResponsavelRetencaoTracker) {
            namespace = "http://www.abrasf.org.br/nfse.xsd";
            writeStartElement(null, namespace, "ResponsavelRetencao", xmlWriter);

            if (localResponsavelRetencao == java.lang.Byte.MIN_VALUE) {
                throw new org.apache.axis2.databinding.ADBException(
                    "ResponsavelRetencao cannot be null!!");
            } else {
                xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localResponsavelRetencao));
            }

            xmlWriter.writeEndElement();
        }

        if (localItemListaServicoTracker) {
            namespace = "http://www.abrasf.org.br/nfse.xsd";
            writeStartElement(null, namespace, "ItemListaServico", xmlWriter);

            if (localItemListaServico == null) {
                // write the nil attribute
                throw new org.apache.axis2.databinding.ADBException(
                    "ItemListaServico cannot be null!!");
            } else {
                xmlWriter.writeCharacters(localItemListaServico);
            }

            xmlWriter.writeEndElement();
        }

        if (localCodigoCnaeTracker) {
            namespace = "http://www.abrasf.org.br/nfse.xsd";
            writeStartElement(null, namespace, "CodigoCnae", xmlWriter);

            if (localCodigoCnae == java.lang.Integer.MIN_VALUE) {
                throw new org.apache.axis2.databinding.ADBException(
                    "CodigoCnae cannot be null!!");
            } else {
                xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localCodigoCnae));
            }

            xmlWriter.writeEndElement();
        }

        if (localCodigoTributacaoMunicipioTracker) {
            namespace = "http://www.abrasf.org.br/nfse.xsd";
            writeStartElement(null, namespace, "CodigoTributacaoMunicipio",
                xmlWriter);

            if (localCodigoTributacaoMunicipio == null) {
                // write the nil attribute
                throw new org.apache.axis2.databinding.ADBException(
                    "CodigoTributacaoMunicipio cannot be null!!");
            } else {
                xmlWriter.writeCharacters(localCodigoTributacaoMunicipio);
            }

            xmlWriter.writeEndElement();
        }

        if (localDiscriminacaoTracker) {
            namespace = "http://www.abrasf.org.br/nfse.xsd";
            writeStartElement(null, namespace, "Discriminacao", xmlWriter);

            if (localDiscriminacao == null) {
                // write the nil attribute
                throw new org.apache.axis2.databinding.ADBException(
                    "Discriminacao cannot be null!!");
            } else {
                xmlWriter.writeCharacters(localDiscriminacao);
            }

            xmlWriter.writeEndElement();
        }

        if (localCodigoMunicipioTracker) {
            namespace = "http://www.abrasf.org.br/nfse.xsd";
            writeStartElement(null, namespace, "CodigoMunicipio", xmlWriter);

            if (localCodigoMunicipio == java.lang.Integer.MIN_VALUE) {
                throw new org.apache.axis2.databinding.ADBException(
                    "CodigoMunicipio cannot be null!!");
            } else {
                xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localCodigoMunicipio));
            }

            xmlWriter.writeEndElement();
        }

        if (localCodigoPaisTracker) {
            namespace = "http://www.abrasf.org.br/nfse.xsd";
            writeStartElement(null, namespace, "CodigoPais", xmlWriter);

            if (localCodigoPais == null) {
                // write the nil attribute
                throw new org.apache.axis2.databinding.ADBException(
                    "CodigoPais cannot be null!!");
            } else {
                xmlWriter.writeCharacters(localCodigoPais);
            }

            xmlWriter.writeEndElement();
        }

        if (localExigibilidadeISSTracker) {
            namespace = "http://www.abrasf.org.br/nfse.xsd";
            writeStartElement(null, namespace, "ExigibilidadeISS", xmlWriter);

            if (localExigibilidadeISS == java.lang.Byte.MIN_VALUE) {
                throw new org.apache.axis2.databinding.ADBException(
                    "ExigibilidadeISS cannot be null!!");
            } else {
                xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localExigibilidadeISS));
            }

            xmlWriter.writeEndElement();
        }

        if (localMunicipioIncidenciaTracker) {
            namespace = "http://www.abrasf.org.br/nfse.xsd";
            writeStartElement(null, namespace, "MunicipioIncidencia", xmlWriter);

            if (localMunicipioIncidencia == java.lang.Integer.MIN_VALUE) {
                throw new org.apache.axis2.databinding.ADBException(
                    "MunicipioIncidencia cannot be null!!");
            } else {
                xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localMunicipioIncidencia));
            }

            xmlWriter.writeEndElement();
        }

        if (localNumeroProcessoTracker) {
            namespace = "http://www.abrasf.org.br/nfse.xsd";
            writeStartElement(null, namespace, "NumeroProcesso", xmlWriter);

            if (localNumeroProcesso == null) {
                // write the nil attribute
                throw new org.apache.axis2.databinding.ADBException(
                    "NumeroProcesso cannot be null!!");
            } else {
                xmlWriter.writeCharacters(localNumeroProcesso);
            }

            xmlWriter.writeEndElement();
        }

        xmlWriter.writeEndElement();
    }

    private static java.lang.String generatePrefix(java.lang.String namespace) {
        if (namespace.equals("http://www.abrasf.org.br/nfse.xsd")) {
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
        throws javax.xml.stream.XMLStreamException {
        java.lang.String writerPrefix = xmlWriter.getPrefix(namespace);

        if (writerPrefix != null) {
            xmlWriter.writeStartElement(namespace, localPart);
        } else {
            if (namespace.length() == 0) {
                prefix = "";
            } else if (prefix == null) {
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
    private void writeAttribute(java.lang.String prefix,
        java.lang.String namespace, java.lang.String attName,
        java.lang.String attValue, javax.xml.stream.XMLStreamWriter xmlWriter)
        throws javax.xml.stream.XMLStreamException {
        if (xmlWriter.getPrefix(namespace) == null) {
            xmlWriter.writeNamespace(prefix, namespace);
            xmlWriter.setPrefix(prefix, namespace);
        }

        xmlWriter.writeAttribute(namespace, attName, attValue);
    }

    /**
     * Util method to write an attribute without the ns prefix
     */
    private void writeAttribute(java.lang.String namespace,
        java.lang.String attName, java.lang.String attValue,
        javax.xml.stream.XMLStreamWriter xmlWriter)
        throws javax.xml.stream.XMLStreamException {
        if (namespace.equals("")) {
            xmlWriter.writeAttribute(attName, attValue);
        } else {
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
        throws javax.xml.stream.XMLStreamException {
        java.lang.String attributeNamespace = qname.getNamespaceURI();
        java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

        if (attributePrefix == null) {
            attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
        }

        java.lang.String attributeValue;

        if (attributePrefix.trim().length() > 0) {
            attributeValue = attributePrefix + ":" + qname.getLocalPart();
        } else {
            attributeValue = qname.getLocalPart();
        }

        if (namespace.equals("")) {
            xmlWriter.writeAttribute(attName, attributeValue);
        } else {
            registerPrefix(xmlWriter, namespace);
            xmlWriter.writeAttribute(namespace, attName, attributeValue);
        }
    }

    /**
     *  method to handle Qnames
     */
    private void writeQName(javax.xml.namespace.QName qname,
        javax.xml.stream.XMLStreamWriter xmlWriter)
        throws javax.xml.stream.XMLStreamException {
        java.lang.String namespaceURI = qname.getNamespaceURI();

        if (namespaceURI != null) {
            java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

            if (prefix == null) {
                prefix = generatePrefix(namespaceURI);
                xmlWriter.writeNamespace(prefix, namespaceURI);
                xmlWriter.setPrefix(prefix, namespaceURI);
            }

            if (prefix.trim().length() > 0) {
                xmlWriter.writeCharacters(prefix + ":" +
                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        qname));
            } else {
                // i.e this is the default namespace
                xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        qname));
            }
        } else {
            xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                    qname));
        }
    }

    private void writeQNames(javax.xml.namespace.QName[] qnames,
        javax.xml.stream.XMLStreamWriter xmlWriter)
        throws javax.xml.stream.XMLStreamException {
        if (qnames != null) {
            // we have to store this data until last moment since it is not possible to write any
            // namespace data after writing the charactor data
            java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
            java.lang.String namespaceURI = null;
            java.lang.String prefix = null;

            for (int i = 0; i < qnames.length; i++) {
                if (i > 0) {
                    stringToWrite.append(" ");
                }

                namespaceURI = qnames[i].getNamespaceURI();

                if (namespaceURI != null) {
                    prefix = xmlWriter.getPrefix(namespaceURI);

                    if ((prefix == null) || (prefix.length() == 0)) {
                        prefix = generatePrefix(namespaceURI);
                        xmlWriter.writeNamespace(prefix, namespaceURI);
                        xmlWriter.setPrefix(prefix, namespaceURI);
                    }

                    if (prefix.trim().length() > 0) {
                        stringToWrite.append(prefix).append(":")
                                     .append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                                qnames[i]));
                    } else {
                        stringToWrite.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                                qnames[i]));
                    }
                } else {
                    stringToWrite.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                            qnames[i]));
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
        throws javax.xml.stream.XMLStreamException {
        java.lang.String prefix = xmlWriter.getPrefix(namespace);

        if (prefix == null) {
            prefix = generatePrefix(namespace);

            javax.xml.namespace.NamespaceContext nsContext = xmlWriter.getNamespaceContext();

            while (true) {
                java.lang.String uri = nsContext.getNamespaceURI(prefix);

                if ((uri == null) || (uri.length() == 0)) {
                    break;
                }

                prefix = org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
            }

            xmlWriter.writeNamespace(prefix, namespace);
            xmlWriter.setPrefix(prefix, namespace);
        }

        return prefix;
    }

    /**
     * databinding method to get an XML representation of this object
     *
     */
    public javax.xml.stream.XMLStreamReader getPullParser(
        javax.xml.namespace.QName qName)
        throws org.apache.axis2.databinding.ADBException {
        java.util.ArrayList elementList = new java.util.ArrayList();
        java.util.ArrayList attribList = new java.util.ArrayList();

        if (localValoresTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "Valores"));

            if (localValores == null) {
                throw new org.apache.axis2.databinding.ADBException(
                    "Valores cannot be null!!");
            }

            elementList.add(localValores);
        }

        if (localIssRetidoTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "IssRetido"));

            elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                    localIssRetido));
        }

        if (localResponsavelRetencaoTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "ResponsavelRetencao"));

            elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                    localResponsavelRetencao));
        }

        if (localItemListaServicoTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "ItemListaServico"));

            if (localItemListaServico != null) {
                elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localItemListaServico));
            } else {
                throw new org.apache.axis2.databinding.ADBException(
                    "ItemListaServico cannot be null!!");
            }
        }

        if (localCodigoCnaeTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "CodigoCnae"));

            elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                    localCodigoCnae));
        }

        if (localCodigoTributacaoMunicipioTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd",
                    "CodigoTributacaoMunicipio"));

            if (localCodigoTributacaoMunicipio != null) {
                elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localCodigoTributacaoMunicipio));
            } else {
                throw new org.apache.axis2.databinding.ADBException(
                    "CodigoTributacaoMunicipio cannot be null!!");
            }
        }

        if (localDiscriminacaoTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "Discriminacao"));

            if (localDiscriminacao != null) {
                elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localDiscriminacao));
            } else {
                throw new org.apache.axis2.databinding.ADBException(
                    "Discriminacao cannot be null!!");
            }
        }

        if (localCodigoMunicipioTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "CodigoMunicipio"));

            elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                    localCodigoMunicipio));
        }

        if (localCodigoPaisTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "CodigoPais"));

            if (localCodigoPais != null) {
                elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localCodigoPais));
            } else {
                throw new org.apache.axis2.databinding.ADBException(
                    "CodigoPais cannot be null!!");
            }
        }

        if (localExigibilidadeISSTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "ExigibilidadeISS"));

            elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                    localExigibilidadeISS));
        }

        if (localMunicipioIncidenciaTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "MunicipioIncidencia"));

            elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                    localMunicipioIncidencia));
        }

        if (localNumeroProcessoTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "NumeroProcesso"));

            if (localNumeroProcesso != null) {
                elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localNumeroProcesso));
            } else {
                throw new org.apache.axis2.databinding.ADBException(
                    "NumeroProcesso cannot be null!!");
            }
        }

        return new org.apache.axis2.databinding.utils.reader.ADBXMLStreamReaderImpl(qName,
            elementList.toArray(), attribList.toArray());
    }

    /**
     *  Factory class that keeps the parse method
     */
    public static class Factory {
        /**
         * static method to create the object
         * Precondition:  If this object is an element, the current or next start element starts this object and any intervening reader events are ignorable
         *                If this object is not an element, it is a complex type and the reader is at the event just after the outer start element
         * Postcondition: If this object is an element, the reader is positioned at its end element
         *                If this object is a complex type, the reader is positioned at the end element of its outer element
         */
        public static TcDadosServico parse(
            javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
            TcDadosServico object = new TcDadosServico();

            int event;
            java.lang.String nillableValue = null;
            java.lang.String prefix = "";
            java.lang.String namespaceuri = "";

            try {
                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.getAttributeValue(
                            "http://www.w3.org/2001/XMLSchema-instance", "type") != null) {
                    java.lang.String fullTypeName = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "type");

                    if (fullTypeName != null) {
                        java.lang.String nsPrefix = null;

                        if (fullTypeName.indexOf(":") > -1) {
                            nsPrefix = fullTypeName.substring(0,
                                    fullTypeName.indexOf(":"));
                        }

                        nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

                        java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(
                                    ":") + 1);

                        if (!"tcDadosServico".equals(type)) {
                            //find namespace for the prefix
                            java.lang.String nsUri = reader.getNamespaceContext()
                                                           .getNamespaceURI(nsPrefix);

                            return (TcDadosServico) org.w3.www._2000._09.xmldsig.ExtensionMapper.getTypeObject(nsUri,
                                type, reader);
                        }
                    }
                }

                // Note all attributes that were handled. Used to differ normal attributes
                // from anyAttributes.
                java.util.Vector handledAttributes = new java.util.Vector();

                reader.next();

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.abrasf.org.br/nfse.xsd", "Valores").equals(
                            reader.getName())) {
                    object.setValores(br.org.abrasf.www.nfse_xsd.TcValoresDeclaracaoServico.Factory.parse(
                            reader));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.abrasf.org.br/nfse.xsd", "IssRetido").equals(
                            reader.getName())) {
                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "nil");

                    if ("true".equals(nillableValue) ||
                            "1".equals(nillableValue)) {
                        throw new org.apache.axis2.databinding.ADBException(
                            "The element: " + "IssRetido" + "  cannot be null");
                    }

                    java.lang.String content = reader.getElementText();

                    object.setIssRetido(org.apache.axis2.databinding.utils.ConverterUtil.convertToByte(
                            content));

                    reader.next();
                } // End of if for expected property start element

                else {
                    object.setIssRetido(java.lang.Byte.MIN_VALUE);
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.abrasf.org.br/nfse.xsd",
                            "ResponsavelRetencao").equals(reader.getName())) {
                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "nil");

                    if ("true".equals(nillableValue) ||
                            "1".equals(nillableValue)) {
                        throw new org.apache.axis2.databinding.ADBException(
                            "The element: " + "ResponsavelRetencao" +
                            "  cannot be null");
                    }

                    java.lang.String content = reader.getElementText();

                    object.setResponsavelRetencao(org.apache.axis2.databinding.utils.ConverterUtil.convertToByte(
                            content));

                    reader.next();
                } // End of if for expected property start element

                else {
                    object.setResponsavelRetencao(java.lang.Byte.MIN_VALUE);
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.abrasf.org.br/nfse.xsd",
                            "ItemListaServico").equals(reader.getName())) {
                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "nil");

                    if ("true".equals(nillableValue) ||
                            "1".equals(nillableValue)) {
                        throw new org.apache.axis2.databinding.ADBException(
                            "The element: " + "ItemListaServico" +
                            "  cannot be null");
                    }

                    java.lang.String content = reader.getElementText();

                    object.setItemListaServico(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                            content));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.abrasf.org.br/nfse.xsd", "CodigoCnae").equals(
                            reader.getName())) {
                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "nil");

                    if ("true".equals(nillableValue) ||
                            "1".equals(nillableValue)) {
                        throw new org.apache.axis2.databinding.ADBException(
                            "The element: " + "CodigoCnae" +
                            "  cannot be null");
                    }

                    java.lang.String content = reader.getElementText();

                    object.setCodigoCnae(org.apache.axis2.databinding.utils.ConverterUtil.convertToInt(
                            content));

                    reader.next();
                } // End of if for expected property start element

                else {
                    object.setCodigoCnae(java.lang.Integer.MIN_VALUE);
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.abrasf.org.br/nfse.xsd",
                            "CodigoTributacaoMunicipio").equals(
                            reader.getName())) {
                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "nil");

                    if ("true".equals(nillableValue) ||
                            "1".equals(nillableValue)) {
                        throw new org.apache.axis2.databinding.ADBException(
                            "The element: " + "CodigoTributacaoMunicipio" +
                            "  cannot be null");
                    }

                    java.lang.String content = reader.getElementText();

                    object.setCodigoTributacaoMunicipio(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                            content));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.abrasf.org.br/nfse.xsd", "Discriminacao").equals(
                            reader.getName())) {
                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "nil");

                    if ("true".equals(nillableValue) ||
                            "1".equals(nillableValue)) {
                        throw new org.apache.axis2.databinding.ADBException(
                            "The element: " + "Discriminacao" +
                            "  cannot be null");
                    }

                    java.lang.String content = reader.getElementText();

                    object.setDiscriminacao(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                            content));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.abrasf.org.br/nfse.xsd",
                            "CodigoMunicipio").equals(reader.getName())) {
                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "nil");

                    if ("true".equals(nillableValue) ||
                            "1".equals(nillableValue)) {
                        throw new org.apache.axis2.databinding.ADBException(
                            "The element: " + "CodigoMunicipio" +
                            "  cannot be null");
                    }

                    java.lang.String content = reader.getElementText();

                    object.setCodigoMunicipio(org.apache.axis2.databinding.utils.ConverterUtil.convertToInt(
                            content));

                    reader.next();
                } // End of if for expected property start element

                else {
                    object.setCodigoMunicipio(java.lang.Integer.MIN_VALUE);
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.abrasf.org.br/nfse.xsd", "CodigoPais").equals(
                            reader.getName())) {
                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "nil");

                    if ("true".equals(nillableValue) ||
                            "1".equals(nillableValue)) {
                        throw new org.apache.axis2.databinding.ADBException(
                            "The element: " + "CodigoPais" +
                            "  cannot be null");
                    }

                    java.lang.String content = reader.getElementText();

                    object.setCodigoPais(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                            content));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.abrasf.org.br/nfse.xsd",
                            "ExigibilidadeISS").equals(reader.getName())) {
                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "nil");

                    if ("true".equals(nillableValue) ||
                            "1".equals(nillableValue)) {
                        throw new org.apache.axis2.databinding.ADBException(
                            "The element: " + "ExigibilidadeISS" +
                            "  cannot be null");
                    }

                    java.lang.String content = reader.getElementText();

                    object.setExigibilidadeISS(org.apache.axis2.databinding.utils.ConverterUtil.convertToByte(
                            content));

                    reader.next();
                } // End of if for expected property start element

                else {
                    object.setExigibilidadeISS(java.lang.Byte.MIN_VALUE);
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.abrasf.org.br/nfse.xsd",
                            "MunicipioIncidencia").equals(reader.getName())) {
                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "nil");

                    if ("true".equals(nillableValue) ||
                            "1".equals(nillableValue)) {
                        throw new org.apache.axis2.databinding.ADBException(
                            "The element: " + "MunicipioIncidencia" +
                            "  cannot be null");
                    }

                    java.lang.String content = reader.getElementText();

                    object.setMunicipioIncidencia(org.apache.axis2.databinding.utils.ConverterUtil.convertToInt(
                            content));

                    reader.next();
                } // End of if for expected property start element

                else {
                    object.setMunicipioIncidencia(java.lang.Integer.MIN_VALUE);
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.abrasf.org.br/nfse.xsd",
                            "NumeroProcesso").equals(reader.getName())) {
                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "nil");

                    if ("true".equals(nillableValue) ||
                            "1".equals(nillableValue)) {
                        throw new org.apache.axis2.databinding.ADBException(
                            "The element: " + "NumeroProcesso" +
                            "  cannot be null");
                    }

                    java.lang.String content = reader.getElementText();

                    object.setNumeroProcesso(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                            content));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement()) {
                    // A start element we are not expecting indicates a trailing invalid property
                    throw new org.apache.axis2.databinding.ADBException(
                        "Unexpected subelement " + reader.getName());
                }
            } catch (javax.xml.stream.XMLStreamException e) {
                throw new java.lang.Exception(e);
            }

            return object;
        }
    } //end of factory class
}
