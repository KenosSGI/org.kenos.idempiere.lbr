/**
 * TcInfNfse.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.4  Built on : Dec 28, 2015 (10:04:10 GMT)
 */
package br.org.abrasf.www.nfse_xsd;


/**
 *  TcInfNfse bean class
 */
@SuppressWarnings({"unchecked",
    "unused"
})
public class TcInfNfse implements org.apache.axis2.databinding.ADBBean {
    /* This type was generated from the piece of schema that had
       name = tcInfNfse
       Namespace URI = http://www.abrasf.org.br/nfse.xsd
       Namespace Prefix =
     */

    /**
     * field for Numero
     */
    protected java.math.BigInteger localNumero;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localNumeroTracker = false;

    /**
     * field for CodigoVerificacao
     */
    protected java.lang.String localCodigoVerificacao;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localCodigoVerificacaoTracker = false;

    /**
     * field for DataEmissao
     */
    protected java.util.Calendar localDataEmissao;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localDataEmissaoTracker = false;

    /**
     * field for NfseSubstituida
     */
    protected java.math.BigInteger localNfseSubstituida;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localNfseSubstituidaTracker = false;

    /**
     * field for OutrasInformacoes
     */
    protected java.lang.String localOutrasInformacoes;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localOutrasInformacoesTracker = false;

    /**
     * field for ValoresNfse
     */
    protected br.org.abrasf.www.nfse_xsd.TcValoresNfse localValoresNfse;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localValoresNfseTracker = false;

    /**
     * field for ValorCredito
     */
    protected java.math.BigDecimal localValorCredito;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localValorCreditoTracker = false;

    /**
     * field for PrestadorServico
     */
    protected br.org.abrasf.www.nfse_xsd.TcDadosPrestador localPrestadorServico;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localPrestadorServicoTracker = false;

    /**
     * field for OrgaoGerador
     */
    protected br.org.abrasf.www.nfse_xsd.TcIdentificacaoOrgaoGerador localOrgaoGerador;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localOrgaoGeradorTracker = false;

    /**
     * field for DeclaracaoPrestacaoServico
     */
    protected br.org.abrasf.www.nfse_xsd.TcDeclaracaoPrestacaoServico localDeclaracaoPrestacaoServico;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localDeclaracaoPrestacaoServicoTracker = false;

    /**
     * field for Id
     * This was an Attribute!
     */
    protected java.lang.String localId;

    public boolean isNumeroSpecified() {
        return localNumeroTracker;
    }

    /**
     * Auto generated getter method
     * @return java.math.BigInteger
     */
    public java.math.BigInteger getNumero() {
        return localNumero;
    }

    /**
     * Auto generated setter method
     * @param param Numero
     */
    public void setNumero(java.math.BigInteger param) {
        localNumeroTracker = param != null;

        this.localNumero = param;
    }

    public boolean isCodigoVerificacaoSpecified() {
        return localCodigoVerificacaoTracker;
    }

    /**
     * Auto generated getter method
     * @return java.lang.String
     */
    public java.lang.String getCodigoVerificacao() {
        return localCodigoVerificacao;
    }

    /**
     * Auto generated setter method
     * @param param CodigoVerificacao
     */
    public void setCodigoVerificacao(java.lang.String param) {
        localCodigoVerificacaoTracker = param != null;

        this.localCodigoVerificacao = param;
    }

    public boolean isDataEmissaoSpecified() {
        return localDataEmissaoTracker;
    }

    /**
     * Auto generated getter method
     * @return java.util.Calendar
     */
    public java.util.Calendar getDataEmissao() {
        return localDataEmissao;
    }

    /**
     * Auto generated setter method
     * @param param DataEmissao
     */
    public void setDataEmissao(java.util.Calendar param) {
        localDataEmissaoTracker = param != null;

        this.localDataEmissao = param;
    }

    public boolean isNfseSubstituidaSpecified() {
        return localNfseSubstituidaTracker;
    }

    /**
     * Auto generated getter method
     * @return java.math.BigInteger
     */
    public java.math.BigInteger getNfseSubstituida() {
        return localNfseSubstituida;
    }

    /**
     * Auto generated setter method
     * @param param NfseSubstituida
     */
    public void setNfseSubstituida(java.math.BigInteger param) {
        localNfseSubstituidaTracker = param != null;

        this.localNfseSubstituida = param;
    }

    public boolean isOutrasInformacoesSpecified() {
        return localOutrasInformacoesTracker;
    }

    /**
     * Auto generated getter method
     * @return java.lang.String
     */
    public java.lang.String getOutrasInformacoes() {
        return localOutrasInformacoes;
    }

    /**
     * Auto generated setter method
     * @param param OutrasInformacoes
     */
    public void setOutrasInformacoes(java.lang.String param) {
        localOutrasInformacoesTracker = param != null;

        this.localOutrasInformacoes = param;
    }

    public boolean isValoresNfseSpecified() {
        return localValoresNfseTracker;
    }

    /**
     * Auto generated getter method
     * @return br.org.abrasf.www.nfse_xsd.TcValoresNfse
     */
    public br.org.abrasf.www.nfse_xsd.TcValoresNfse getValoresNfse() {
        return localValoresNfse;
    }

    /**
     * Auto generated setter method
     * @param param ValoresNfse
     */
    public void setValoresNfse(br.org.abrasf.www.nfse_xsd.TcValoresNfse param) {
        localValoresNfseTracker = param != null;

        this.localValoresNfse = param;
    }

    public boolean isValorCreditoSpecified() {
        return localValorCreditoTracker;
    }

    /**
     * Auto generated getter method
     * @return java.math.BigDecimal
     */
    public java.math.BigDecimal getValorCredito() {
        return localValorCredito;
    }

    /**
     * Auto generated setter method
     * @param param ValorCredito
     */
    public void setValorCredito(java.math.BigDecimal param) {
        localValorCreditoTracker = param != null;

        this.localValorCredito = param;
    }

    public boolean isPrestadorServicoSpecified() {
        return localPrestadorServicoTracker;
    }

    /**
     * Auto generated getter method
     * @return br.org.abrasf.www.nfse_xsd.TcDadosPrestador
     */
    public br.org.abrasf.www.nfse_xsd.TcDadosPrestador getPrestadorServico() {
        return localPrestadorServico;
    }

    /**
     * Auto generated setter method
     * @param param PrestadorServico
     */
    public void setPrestadorServico(
        br.org.abrasf.www.nfse_xsd.TcDadosPrestador param) {
        localPrestadorServicoTracker = param != null;

        this.localPrestadorServico = param;
    }

    public boolean isOrgaoGeradorSpecified() {
        return localOrgaoGeradorTracker;
    }

    /**
     * Auto generated getter method
     * @return br.org.abrasf.www.nfse_xsd.TcIdentificacaoOrgaoGerador
     */
    public br.org.abrasf.www.nfse_xsd.TcIdentificacaoOrgaoGerador getOrgaoGerador() {
        return localOrgaoGerador;
    }

    /**
     * Auto generated setter method
     * @param param OrgaoGerador
     */
    public void setOrgaoGerador(
        br.org.abrasf.www.nfse_xsd.TcIdentificacaoOrgaoGerador param) {
        localOrgaoGeradorTracker = param != null;

        this.localOrgaoGerador = param;
    }

    public boolean isDeclaracaoPrestacaoServicoSpecified() {
        return localDeclaracaoPrestacaoServicoTracker;
    }

    /**
     * Auto generated getter method
     * @return br.org.abrasf.www.nfse_xsd.TcDeclaracaoPrestacaoServico
     */
    public br.org.abrasf.www.nfse_xsd.TcDeclaracaoPrestacaoServico getDeclaracaoPrestacaoServico() {
        return localDeclaracaoPrestacaoServico;
    }

    /**
     * Auto generated setter method
     * @param param DeclaracaoPrestacaoServico
     */
    public void setDeclaracaoPrestacaoServico(
        br.org.abrasf.www.nfse_xsd.TcDeclaracaoPrestacaoServico param) {
        localDeclaracaoPrestacaoServicoTracker = param != null;

        this.localDeclaracaoPrestacaoServico = param;
    }

    /**
     * Auto generated getter method
     * @return java.lang.String
     */
    public java.lang.String getId() {
        return localId;
    }

    /**
     * Auto generated setter method
     * @param param Id
     */
    public void setId(java.lang.String param) {
        this.localId = param;
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
                    namespacePrefix + ":tcInfNfse", xmlWriter);
            } else {
                writeAttribute("xsi",
                    "http://www.w3.org/2001/XMLSchema-instance", "type",
                    "tcInfNfse", xmlWriter);
            }
        }

        if (localId != null) {
            writeAttribute("", "Id",
                org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                    localId), xmlWriter);
        }

        if (localNumeroTracker) {
            namespace = "http://www.abrasf.org.br/nfse.xsd";
            writeStartElement(null, namespace, "Numero", xmlWriter);

            if (localNumero == null) {
                // write the nil attribute
                throw new org.apache.axis2.databinding.ADBException(
                    "Numero cannot be null!!");
            } else {
                xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localNumero));
            }

            xmlWriter.writeEndElement();
        }

        if (localCodigoVerificacaoTracker) {
            namespace = "http://www.abrasf.org.br/nfse.xsd";
            writeStartElement(null, namespace, "CodigoVerificacao", xmlWriter);

            if (localCodigoVerificacao == null) {
                // write the nil attribute
                throw new org.apache.axis2.databinding.ADBException(
                    "CodigoVerificacao cannot be null!!");
            } else {
                xmlWriter.writeCharacters(localCodigoVerificacao);
            }

            xmlWriter.writeEndElement();
        }

        if (localDataEmissaoTracker) {
            namespace = "http://www.abrasf.org.br/nfse.xsd";
            writeStartElement(null, namespace, "DataEmissao", xmlWriter);

            if (localDataEmissao == null) {
                // write the nil attribute
                throw new org.apache.axis2.databinding.ADBException(
                    "DataEmissao cannot be null!!");
            } else {
                xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localDataEmissao));
            }

            xmlWriter.writeEndElement();
        }

        if (localNfseSubstituidaTracker) {
            namespace = "http://www.abrasf.org.br/nfse.xsd";
            writeStartElement(null, namespace, "NfseSubstituida", xmlWriter);

            if (localNfseSubstituida == null) {
                // write the nil attribute
                throw new org.apache.axis2.databinding.ADBException(
                    "NfseSubstituida cannot be null!!");
            } else {
                xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localNfseSubstituida));
            }

            xmlWriter.writeEndElement();
        }

        if (localOutrasInformacoesTracker) {
            namespace = "http://www.abrasf.org.br/nfse.xsd";
            writeStartElement(null, namespace, "OutrasInformacoes", xmlWriter);

            if (localOutrasInformacoes == null) {
                // write the nil attribute
                throw new org.apache.axis2.databinding.ADBException(
                    "OutrasInformacoes cannot be null!!");
            } else {
                xmlWriter.writeCharacters(localOutrasInformacoes);
            }

            xmlWriter.writeEndElement();
        }

        if (localValoresNfseTracker) {
            if (localValoresNfse == null) {
                throw new org.apache.axis2.databinding.ADBException(
                    "ValoresNfse cannot be null!!");
            }

            localValoresNfse.serialize(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "ValoresNfse"),
                xmlWriter);
        }

        if (localValorCreditoTracker) {
            namespace = "http://www.abrasf.org.br/nfse.xsd";
            writeStartElement(null, namespace, "ValorCredito", xmlWriter);

            if (localValorCredito == null) {
                // write the nil attribute
                throw new org.apache.axis2.databinding.ADBException(
                    "ValorCredito cannot be null!!");
            } else {
                xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localValorCredito));
            }

            xmlWriter.writeEndElement();
        }

        if (localPrestadorServicoTracker) {
            if (localPrestadorServico == null) {
                throw new org.apache.axis2.databinding.ADBException(
                    "PrestadorServico cannot be null!!");
            }

            localPrestadorServico.serialize(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "PrestadorServico"),
                xmlWriter);
        }

        if (localOrgaoGeradorTracker) {
            if (localOrgaoGerador == null) {
                throw new org.apache.axis2.databinding.ADBException(
                    "OrgaoGerador cannot be null!!");
            }

            localOrgaoGerador.serialize(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "OrgaoGerador"),
                xmlWriter);
        }

        if (localDeclaracaoPrestacaoServicoTracker) {
            if (localDeclaracaoPrestacaoServico == null) {
                throw new org.apache.axis2.databinding.ADBException(
                    "DeclaracaoPrestacaoServico cannot be null!!");
            }

            localDeclaracaoPrestacaoServico.serialize(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd",
                    "DeclaracaoPrestacaoServico"), xmlWriter);
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

        if (localNumeroTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "Numero"));

            if (localNumero != null) {
                elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localNumero));
            } else {
                throw new org.apache.axis2.databinding.ADBException(
                    "Numero cannot be null!!");
            }
        }

        if (localCodigoVerificacaoTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "CodigoVerificacao"));

            if (localCodigoVerificacao != null) {
                elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localCodigoVerificacao));
            } else {
                throw new org.apache.axis2.databinding.ADBException(
                    "CodigoVerificacao cannot be null!!");
            }
        }

        if (localDataEmissaoTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "DataEmissao"));

            if (localDataEmissao != null) {
                elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localDataEmissao));
            } else {
                throw new org.apache.axis2.databinding.ADBException(
                    "DataEmissao cannot be null!!");
            }
        }

        if (localNfseSubstituidaTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "NfseSubstituida"));

            if (localNfseSubstituida != null) {
                elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localNfseSubstituida));
            } else {
                throw new org.apache.axis2.databinding.ADBException(
                    "NfseSubstituida cannot be null!!");
            }
        }

        if (localOutrasInformacoesTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "OutrasInformacoes"));

            if (localOutrasInformacoes != null) {
                elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localOutrasInformacoes));
            } else {
                throw new org.apache.axis2.databinding.ADBException(
                    "OutrasInformacoes cannot be null!!");
            }
        }

        if (localValoresNfseTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "ValoresNfse"));

            if (localValoresNfse == null) {
                throw new org.apache.axis2.databinding.ADBException(
                    "ValoresNfse cannot be null!!");
            }

            elementList.add(localValoresNfse);
        }

        if (localValorCreditoTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "ValorCredito"));

            if (localValorCredito != null) {
                elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localValorCredito));
            } else {
                throw new org.apache.axis2.databinding.ADBException(
                    "ValorCredito cannot be null!!");
            }
        }

        if (localPrestadorServicoTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "PrestadorServico"));

            if (localPrestadorServico == null) {
                throw new org.apache.axis2.databinding.ADBException(
                    "PrestadorServico cannot be null!!");
            }

            elementList.add(localPrestadorServico);
        }

        if (localOrgaoGeradorTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "OrgaoGerador"));

            if (localOrgaoGerador == null) {
                throw new org.apache.axis2.databinding.ADBException(
                    "OrgaoGerador cannot be null!!");
            }

            elementList.add(localOrgaoGerador);
        }

        if (localDeclaracaoPrestacaoServicoTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd",
                    "DeclaracaoPrestacaoServico"));

            if (localDeclaracaoPrestacaoServico == null) {
                throw new org.apache.axis2.databinding.ADBException(
                    "DeclaracaoPrestacaoServico cannot be null!!");
            }

            elementList.add(localDeclaracaoPrestacaoServico);
        }

        attribList.add(new javax.xml.namespace.QName("", "Id"));

        attribList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                localId));

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
        public static TcInfNfse parse(javax.xml.stream.XMLStreamReader reader)
            throws java.lang.Exception {
            TcInfNfse object = new TcInfNfse();

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

                        if (!"tcInfNfse".equals(type)) {
                            //find namespace for the prefix
                            java.lang.String nsUri = reader.getNamespaceContext()
                                                           .getNamespaceURI(nsPrefix);

                            return (TcInfNfse) org.w3.www._2000._09.xmldsig.ExtensionMapper.getTypeObject(nsUri,
                                type, reader);
                        }
                    }
                }

                // Note all attributes that were handled. Used to differ normal attributes
                // from anyAttributes.
                java.util.Vector handledAttributes = new java.util.Vector();

                // handle attribute "Id"
                java.lang.String tempAttribId = reader.getAttributeValue(null,
                        "Id");

                if (tempAttribId != null) {
                    java.lang.String content = tempAttribId;

                    object.setId(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                            tempAttribId));
                } else {
                }

                handledAttributes.add("Id");

                reader.next();

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.abrasf.org.br/nfse.xsd", "Numero").equals(
                            reader.getName())) {
                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "nil");

                    if ("true".equals(nillableValue) ||
                            "1".equals(nillableValue)) {
                        throw new org.apache.axis2.databinding.ADBException(
                            "The element: " + "Numero" + "  cannot be null");
                    }

                    java.lang.String content = reader.getElementText();

                    object.setNumero(org.apache.axis2.databinding.utils.ConverterUtil.convertToInteger(
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
                            "CodigoVerificacao").equals(reader.getName())) {
                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "nil");

                    if ("true".equals(nillableValue) ||
                            "1".equals(nillableValue)) {
                        throw new org.apache.axis2.databinding.ADBException(
                            "The element: " + "CodigoVerificacao" +
                            "  cannot be null");
                    }

                    java.lang.String content = reader.getElementText();

                    object.setCodigoVerificacao(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                            content));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.abrasf.org.br/nfse.xsd", "DataEmissao").equals(
                            reader.getName())) {
                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "nil");

                    if ("true".equals(nillableValue) ||
                            "1".equals(nillableValue)) {
                        throw new org.apache.axis2.databinding.ADBException(
                            "The element: " + "DataEmissao" +
                            "  cannot be null");
                    }

                    java.lang.String content = reader.getElementText();

                    object.setDataEmissao(org.apache.axis2.databinding.utils.ConverterUtil.convertToDateTime(
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
                            "NfseSubstituida").equals(reader.getName())) {
                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "nil");

                    if ("true".equals(nillableValue) ||
                            "1".equals(nillableValue)) {
                        throw new org.apache.axis2.databinding.ADBException(
                            "The element: " + "NfseSubstituida" +
                            "  cannot be null");
                    }

                    java.lang.String content = reader.getElementText();

                    object.setNfseSubstituida(org.apache.axis2.databinding.utils.ConverterUtil.convertToInteger(
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
                            "OutrasInformacoes").equals(reader.getName())) {
                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "nil");

                    if ("true".equals(nillableValue) ||
                            "1".equals(nillableValue)) {
                        throw new org.apache.axis2.databinding.ADBException(
                            "The element: " + "OutrasInformacoes" +
                            "  cannot be null");
                    }

                    java.lang.String content = reader.getElementText();

                    object.setOutrasInformacoes(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                            content));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.abrasf.org.br/nfse.xsd", "ValoresNfse").equals(
                            reader.getName())) {
                    object.setValoresNfse(br.org.abrasf.www.nfse_xsd.TcValoresNfse.Factory.parse(
                            reader));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.abrasf.org.br/nfse.xsd", "ValorCredito").equals(
                            reader.getName())) {
                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "nil");

                    if ("true".equals(nillableValue) ||
                            "1".equals(nillableValue)) {
                        throw new org.apache.axis2.databinding.ADBException(
                            "The element: " + "ValorCredito" +
                            "  cannot be null");
                    }

                    java.lang.String content = reader.getElementText();

                    object.setValorCredito(org.apache.axis2.databinding.utils.ConverterUtil.convertToDecimal(
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
                            "PrestadorServico").equals(reader.getName())) {
                    object.setPrestadorServico(br.org.abrasf.www.nfse_xsd.TcDadosPrestador.Factory.parse(
                            reader));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.abrasf.org.br/nfse.xsd", "OrgaoGerador").equals(
                            reader.getName())) {
                    object.setOrgaoGerador(br.org.abrasf.www.nfse_xsd.TcIdentificacaoOrgaoGerador.Factory.parse(
                            reader));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.abrasf.org.br/nfse.xsd",
                            "DeclaracaoPrestacaoServico").equals(
                            reader.getName())) {
                    object.setDeclaracaoPrestacaoServico(br.org.abrasf.www.nfse_xsd.TcDeclaracaoPrestacaoServico.Factory.parse(
                            reader));

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
