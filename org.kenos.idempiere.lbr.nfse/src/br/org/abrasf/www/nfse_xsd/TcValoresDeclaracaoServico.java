/**
 * TcValoresDeclaracaoServico.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.4  Built on : Dec 28, 2015 (10:04:10 GMT)
 */
package br.org.abrasf.www.nfse_xsd;


/**
 *  TcValoresDeclaracaoServico bean class
 */
@SuppressWarnings({"unchecked",
    "unused"
})
public class TcValoresDeclaracaoServico implements org.apache.axis2.databinding.ADBBean {
    /* This type was generated from the piece of schema that had
       name = tcValoresDeclaracaoServico
       Namespace URI = http://www.abrasf.org.br/nfse.xsd
       Namespace Prefix =
     */

    /**
     * field for ValorServicos
     */
    protected java.math.BigDecimal localValorServicos;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localValorServicosTracker = false;

    /**
     * field for ValorDeducoes
     */
    protected java.math.BigDecimal localValorDeducoes;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localValorDeducoesTracker = false;

    /**
     * field for ValorPis
     */
    protected java.math.BigDecimal localValorPis;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localValorPisTracker = false;

    /**
     * field for ValorCofins
     */
    protected java.math.BigDecimal localValorCofins;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localValorCofinsTracker = false;

    /**
     * field for ValorInss
     */
    protected java.math.BigDecimal localValorInss;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localValorInssTracker = false;

    /**
     * field for ValorIr
     */
    protected java.math.BigDecimal localValorIr;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localValorIrTracker = false;

    /**
     * field for ValorCsll
     */
    protected java.math.BigDecimal localValorCsll;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localValorCsllTracker = false;

    /**
     * field for OutrasRetencoes
     */
    protected java.math.BigDecimal localOutrasRetencoes;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localOutrasRetencoesTracker = false;

    /**
     * field for ValorIss
     */
    protected java.math.BigDecimal localValorIss;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localValorIssTracker = false;

    /**
     * field for Aliquota
     */
    protected java.math.BigDecimal localAliquota;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localAliquotaTracker = false;

    /**
     * field for DescontoIncondicionado
     */
    protected java.math.BigDecimal localDescontoIncondicionado;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localDescontoIncondicionadoTracker = false;

    /**
     * field for DescontoCondicionado
     */
    protected java.math.BigDecimal localDescontoCondicionado;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localDescontoCondicionadoTracker = false;

    public boolean isValorServicosSpecified() {
        return localValorServicosTracker;
    }

    /**
     * Auto generated getter method
     * @return java.math.BigDecimal
     */
    public java.math.BigDecimal getValorServicos() {
        return localValorServicos;
    }

    /**
     * Auto generated setter method
     * @param param ValorServicos
     */
    public void setValorServicos(java.math.BigDecimal param) {
        localValorServicosTracker = param != null;

        this.localValorServicos = param;
    }

    public boolean isValorDeducoesSpecified() {
        return localValorDeducoesTracker;
    }

    /**
     * Auto generated getter method
     * @return java.math.BigDecimal
     */
    public java.math.BigDecimal getValorDeducoes() {
        return localValorDeducoes;
    }

    /**
     * Auto generated setter method
     * @param param ValorDeducoes
     */
    public void setValorDeducoes(java.math.BigDecimal param) {
        localValorDeducoesTracker = param != null;

        this.localValorDeducoes = param;
    }

    public boolean isValorPisSpecified() {
        return localValorPisTracker;
    }

    /**
     * Auto generated getter method
     * @return java.math.BigDecimal
     */
    public java.math.BigDecimal getValorPis() {
        return localValorPis;
    }

    /**
     * Auto generated setter method
     * @param param ValorPis
     */
    public void setValorPis(java.math.BigDecimal param) {
        localValorPisTracker = param != null;

        this.localValorPis = param;
    }

    public boolean isValorCofinsSpecified() {
        return localValorCofinsTracker;
    }

    /**
     * Auto generated getter method
     * @return java.math.BigDecimal
     */
    public java.math.BigDecimal getValorCofins() {
        return localValorCofins;
    }

    /**
     * Auto generated setter method
     * @param param ValorCofins
     */
    public void setValorCofins(java.math.BigDecimal param) {
        localValorCofinsTracker = param != null;

        this.localValorCofins = param;
    }

    public boolean isValorInssSpecified() {
        return localValorInssTracker;
    }

    /**
     * Auto generated getter method
     * @return java.math.BigDecimal
     */
    public java.math.BigDecimal getValorInss() {
        return localValorInss;
    }

    /**
     * Auto generated setter method
     * @param param ValorInss
     */
    public void setValorInss(java.math.BigDecimal param) {
        localValorInssTracker = param != null;

        this.localValorInss = param;
    }

    public boolean isValorIrSpecified() {
        return localValorIrTracker;
    }

    /**
     * Auto generated getter method
     * @return java.math.BigDecimal
     */
    public java.math.BigDecimal getValorIr() {
        return localValorIr;
    }

    /**
     * Auto generated setter method
     * @param param ValorIr
     */
    public void setValorIr(java.math.BigDecimal param) {
        localValorIrTracker = param != null;

        this.localValorIr = param;
    }

    public boolean isValorCsllSpecified() {
        return localValorCsllTracker;
    }

    /**
     * Auto generated getter method
     * @return java.math.BigDecimal
     */
    public java.math.BigDecimal getValorCsll() {
        return localValorCsll;
    }

    /**
     * Auto generated setter method
     * @param param ValorCsll
     */
    public void setValorCsll(java.math.BigDecimal param) {
        localValorCsllTracker = param != null;

        this.localValorCsll = param;
    }

    public boolean isOutrasRetencoesSpecified() {
        return localOutrasRetencoesTracker;
    }

    /**
     * Auto generated getter method
     * @return java.math.BigDecimal
     */
    public java.math.BigDecimal getOutrasRetencoes() {
        return localOutrasRetencoes;
    }

    /**
     * Auto generated setter method
     * @param param OutrasRetencoes
     */
    public void setOutrasRetencoes(java.math.BigDecimal param) {
        localOutrasRetencoesTracker = param != null;

        this.localOutrasRetencoes = param;
    }

    public boolean isValorIssSpecified() {
        return localValorIssTracker;
    }

    /**
     * Auto generated getter method
     * @return java.math.BigDecimal
     */
    public java.math.BigDecimal getValorIss() {
        return localValorIss;
    }

    /**
     * Auto generated setter method
     * @param param ValorIss
     */
    public void setValorIss(java.math.BigDecimal param) {
        localValorIssTracker = param != null;

        this.localValorIss = param;
    }

    public boolean isAliquotaSpecified() {
        return localAliquotaTracker;
    }

    /**
     * Auto generated getter method
     * @return java.math.BigDecimal
     */
    public java.math.BigDecimal getAliquota() {
        return localAliquota;
    }

    /**
     * Auto generated setter method
     * @param param Aliquota
     */
    public void setAliquota(java.math.BigDecimal param) {
        localAliquotaTracker = param != null;

        this.localAliquota = param;
    }

    public boolean isDescontoIncondicionadoSpecified() {
        return localDescontoIncondicionadoTracker;
    }

    /**
     * Auto generated getter method
     * @return java.math.BigDecimal
     */
    public java.math.BigDecimal getDescontoIncondicionado() {
        return localDescontoIncondicionado;
    }

    /**
     * Auto generated setter method
     * @param param DescontoIncondicionado
     */
    public void setDescontoIncondicionado(java.math.BigDecimal param) {
        localDescontoIncondicionadoTracker = param != null;

        this.localDescontoIncondicionado = param;
    }

    public boolean isDescontoCondicionadoSpecified() {
        return localDescontoCondicionadoTracker;
    }

    /**
     * Auto generated getter method
     * @return java.math.BigDecimal
     */
    public java.math.BigDecimal getDescontoCondicionado() {
        return localDescontoCondicionado;
    }

    /**
     * Auto generated setter method
     * @param param DescontoCondicionado
     */
    public void setDescontoCondicionado(java.math.BigDecimal param) {
        localDescontoCondicionadoTracker = param != null;

        this.localDescontoCondicionado = param;
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
                    namespacePrefix + ":tcValoresDeclaracaoServico", xmlWriter);
            } else {
                writeAttribute("xsi",
                    "http://www.w3.org/2001/XMLSchema-instance", "type",
                    "tcValoresDeclaracaoServico", xmlWriter);
            }
        }

        if (localValorServicosTracker) {
            namespace = "http://www.abrasf.org.br/nfse.xsd";
            writeStartElement(null, namespace, "ValorServicos", xmlWriter);

            if (localValorServicos == null) {
                // write the nil attribute
                throw new org.apache.axis2.databinding.ADBException(
                    "ValorServicos cannot be null!!");
            } else {
                xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localValorServicos));
            }

            xmlWriter.writeEndElement();
        }

        if (localValorDeducoesTracker) {
            namespace = "http://www.abrasf.org.br/nfse.xsd";
            writeStartElement(null, namespace, "ValorDeducoes", xmlWriter);

            if (localValorDeducoes == null) {
                // write the nil attribute
                throw new org.apache.axis2.databinding.ADBException(
                    "ValorDeducoes cannot be null!!");
            } else {
                xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localValorDeducoes));
            }

            xmlWriter.writeEndElement();
        }

        if (localValorPisTracker) {
            namespace = "http://www.abrasf.org.br/nfse.xsd";
            writeStartElement(null, namespace, "ValorPis", xmlWriter);

            if (localValorPis == null) {
                // write the nil attribute
                throw new org.apache.axis2.databinding.ADBException(
                    "ValorPis cannot be null!!");
            } else {
                xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localValorPis));
            }

            xmlWriter.writeEndElement();
        }

        if (localValorCofinsTracker) {
            namespace = "http://www.abrasf.org.br/nfse.xsd";
            writeStartElement(null, namespace, "ValorCofins", xmlWriter);

            if (localValorCofins == null) {
                // write the nil attribute
                throw new org.apache.axis2.databinding.ADBException(
                    "ValorCofins cannot be null!!");
            } else {
                xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localValorCofins));
            }

            xmlWriter.writeEndElement();
        }

        if (localValorInssTracker) {
            namespace = "http://www.abrasf.org.br/nfse.xsd";
            writeStartElement(null, namespace, "ValorInss", xmlWriter);

            if (localValorInss == null) {
                // write the nil attribute
                throw new org.apache.axis2.databinding.ADBException(
                    "ValorInss cannot be null!!");
            } else {
                xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localValorInss));
            }

            xmlWriter.writeEndElement();
        }

        if (localValorIrTracker) {
            namespace = "http://www.abrasf.org.br/nfse.xsd";
            writeStartElement(null, namespace, "ValorIr", xmlWriter);

            if (localValorIr == null) {
                // write the nil attribute
                throw new org.apache.axis2.databinding.ADBException(
                    "ValorIr cannot be null!!");
            } else {
                xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localValorIr));
            }

            xmlWriter.writeEndElement();
        }

        if (localValorCsllTracker) {
            namespace = "http://www.abrasf.org.br/nfse.xsd";
            writeStartElement(null, namespace, "ValorCsll", xmlWriter);

            if (localValorCsll == null) {
                // write the nil attribute
                throw new org.apache.axis2.databinding.ADBException(
                    "ValorCsll cannot be null!!");
            } else {
                xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localValorCsll));
            }

            xmlWriter.writeEndElement();
        }

        if (localOutrasRetencoesTracker) {
            namespace = "http://www.abrasf.org.br/nfse.xsd";
            writeStartElement(null, namespace, "OutrasRetencoes", xmlWriter);

            if (localOutrasRetencoes == null) {
                // write the nil attribute
                throw new org.apache.axis2.databinding.ADBException(
                    "OutrasRetencoes cannot be null!!");
            } else {
                xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localOutrasRetencoes));
            }

            xmlWriter.writeEndElement();
        }

        if (localValorIssTracker) {
            namespace = "http://www.abrasf.org.br/nfse.xsd";
            writeStartElement(null, namespace, "ValorIss", xmlWriter);

            if (localValorIss == null) {
                // write the nil attribute
                throw new org.apache.axis2.databinding.ADBException(
                    "ValorIss cannot be null!!");
            } else {
                xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localValorIss));
            }

            xmlWriter.writeEndElement();
        }

        if (localAliquotaTracker) {
            namespace = "http://www.abrasf.org.br/nfse.xsd";
            writeStartElement(null, namespace, "Aliquota", xmlWriter);

            if (localAliquota == null) {
                // write the nil attribute
                throw new org.apache.axis2.databinding.ADBException(
                    "Aliquota cannot be null!!");
            } else {
                xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localAliquota));
            }

            xmlWriter.writeEndElement();
        }

        if (localDescontoIncondicionadoTracker) {
            namespace = "http://www.abrasf.org.br/nfse.xsd";
            writeStartElement(null, namespace, "DescontoIncondicionado",
                xmlWriter);

            if (localDescontoIncondicionado == null) {
                // write the nil attribute
                throw new org.apache.axis2.databinding.ADBException(
                    "DescontoIncondicionado cannot be null!!");
            } else {
                xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localDescontoIncondicionado));
            }

            xmlWriter.writeEndElement();
        }

        if (localDescontoCondicionadoTracker) {
            namespace = "http://www.abrasf.org.br/nfse.xsd";
            writeStartElement(null, namespace, "DescontoCondicionado", xmlWriter);

            if (localDescontoCondicionado == null) {
                // write the nil attribute
                throw new org.apache.axis2.databinding.ADBException(
                    "DescontoCondicionado cannot be null!!");
            } else {
                xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localDescontoCondicionado));
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

        if (localValorServicosTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "ValorServicos"));

            if (localValorServicos != null) {
                elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localValorServicos));
            } else {
                throw new org.apache.axis2.databinding.ADBException(
                    "ValorServicos cannot be null!!");
            }
        }

        if (localValorDeducoesTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "ValorDeducoes"));

            if (localValorDeducoes != null) {
                elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localValorDeducoes));
            } else {
                throw new org.apache.axis2.databinding.ADBException(
                    "ValorDeducoes cannot be null!!");
            }
        }

        if (localValorPisTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "ValorPis"));

            if (localValorPis != null) {
                elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localValorPis));
            } else {
                throw new org.apache.axis2.databinding.ADBException(
                    "ValorPis cannot be null!!");
            }
        }

        if (localValorCofinsTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "ValorCofins"));

            if (localValorCofins != null) {
                elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localValorCofins));
            } else {
                throw new org.apache.axis2.databinding.ADBException(
                    "ValorCofins cannot be null!!");
            }
        }

        if (localValorInssTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "ValorInss"));

            if (localValorInss != null) {
                elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localValorInss));
            } else {
                throw new org.apache.axis2.databinding.ADBException(
                    "ValorInss cannot be null!!");
            }
        }

        if (localValorIrTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "ValorIr"));

            if (localValorIr != null) {
                elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localValorIr));
            } else {
                throw new org.apache.axis2.databinding.ADBException(
                    "ValorIr cannot be null!!");
            }
        }

        if (localValorCsllTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "ValorCsll"));

            if (localValorCsll != null) {
                elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localValorCsll));
            } else {
                throw new org.apache.axis2.databinding.ADBException(
                    "ValorCsll cannot be null!!");
            }
        }

        if (localOutrasRetencoesTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "OutrasRetencoes"));

            if (localOutrasRetencoes != null) {
                elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localOutrasRetencoes));
            } else {
                throw new org.apache.axis2.databinding.ADBException(
                    "OutrasRetencoes cannot be null!!");
            }
        }

        if (localValorIssTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "ValorIss"));

            if (localValorIss != null) {
                elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localValorIss));
            } else {
                throw new org.apache.axis2.databinding.ADBException(
                    "ValorIss cannot be null!!");
            }
        }

        if (localAliquotaTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "Aliquota"));

            if (localAliquota != null) {
                elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localAliquota));
            } else {
                throw new org.apache.axis2.databinding.ADBException(
                    "Aliquota cannot be null!!");
            }
        }

        if (localDescontoIncondicionadoTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd",
                    "DescontoIncondicionado"));

            if (localDescontoIncondicionado != null) {
                elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localDescontoIncondicionado));
            } else {
                throw new org.apache.axis2.databinding.ADBException(
                    "DescontoIncondicionado cannot be null!!");
            }
        }

        if (localDescontoCondicionadoTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "DescontoCondicionado"));

            if (localDescontoCondicionado != null) {
                elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localDescontoCondicionado));
            } else {
                throw new org.apache.axis2.databinding.ADBException(
                    "DescontoCondicionado cannot be null!!");
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
        public static TcValoresDeclaracaoServico parse(
            javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
            TcValoresDeclaracaoServico object = new TcValoresDeclaracaoServico();

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

                        if (!"tcValoresDeclaracaoServico".equals(type)) {
                            //find namespace for the prefix
                            java.lang.String nsUri = reader.getNamespaceContext()
                                                           .getNamespaceURI(nsPrefix);

                            return (TcValoresDeclaracaoServico) org.w3.www._2000._09.xmldsig.ExtensionMapper.getTypeObject(nsUri,
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
                            "http://www.abrasf.org.br/nfse.xsd", "ValorServicos").equals(
                            reader.getName())) {
                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "nil");

                    if ("true".equals(nillableValue) ||
                            "1".equals(nillableValue)) {
                        throw new org.apache.axis2.databinding.ADBException(
                            "The element: " + "ValorServicos" +
                            "  cannot be null");
                    }

                    java.lang.String content = reader.getElementText();

                    object.setValorServicos(org.apache.axis2.databinding.utils.ConverterUtil.convertToDecimal(
                            content));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.abrasf.org.br/nfse.xsd", "ValorDeducoes").equals(
                            reader.getName())) {
                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "nil");

                    if ("true".equals(nillableValue) ||
                            "1".equals(nillableValue)) {
                        throw new org.apache.axis2.databinding.ADBException(
                            "The element: " + "ValorDeducoes" +
                            "  cannot be null");
                    }

                    java.lang.String content = reader.getElementText();

                    object.setValorDeducoes(org.apache.axis2.databinding.utils.ConverterUtil.convertToDecimal(
                            content));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.abrasf.org.br/nfse.xsd", "ValorPis").equals(
                            reader.getName())) {
                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "nil");

                    if ("true".equals(nillableValue) ||
                            "1".equals(nillableValue)) {
                        throw new org.apache.axis2.databinding.ADBException(
                            "The element: " + "ValorPis" + "  cannot be null");
                    }

                    java.lang.String content = reader.getElementText();

                    object.setValorPis(org.apache.axis2.databinding.utils.ConverterUtil.convertToDecimal(
                            content));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.abrasf.org.br/nfse.xsd", "ValorCofins").equals(
                            reader.getName())) {
                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "nil");

                    if ("true".equals(nillableValue) ||
                            "1".equals(nillableValue)) {
                        throw new org.apache.axis2.databinding.ADBException(
                            "The element: " + "ValorCofins" +
                            "  cannot be null");
                    }

                    java.lang.String content = reader.getElementText();

                    object.setValorCofins(org.apache.axis2.databinding.utils.ConverterUtil.convertToDecimal(
                            content));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.abrasf.org.br/nfse.xsd", "ValorInss").equals(
                            reader.getName())) {
                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "nil");

                    if ("true".equals(nillableValue) ||
                            "1".equals(nillableValue)) {
                        throw new org.apache.axis2.databinding.ADBException(
                            "The element: " + "ValorInss" + "  cannot be null");
                    }

                    java.lang.String content = reader.getElementText();

                    object.setValorInss(org.apache.axis2.databinding.utils.ConverterUtil.convertToDecimal(
                            content));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.abrasf.org.br/nfse.xsd", "ValorIr").equals(
                            reader.getName())) {
                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "nil");

                    if ("true".equals(nillableValue) ||
                            "1".equals(nillableValue)) {
                        throw new org.apache.axis2.databinding.ADBException(
                            "The element: " + "ValorIr" + "  cannot be null");
                    }

                    java.lang.String content = reader.getElementText();

                    object.setValorIr(org.apache.axis2.databinding.utils.ConverterUtil.convertToDecimal(
                            content));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.abrasf.org.br/nfse.xsd", "ValorCsll").equals(
                            reader.getName())) {
                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "nil");

                    if ("true".equals(nillableValue) ||
                            "1".equals(nillableValue)) {
                        throw new org.apache.axis2.databinding.ADBException(
                            "The element: " + "ValorCsll" + "  cannot be null");
                    }

                    java.lang.String content = reader.getElementText();

                    object.setValorCsll(org.apache.axis2.databinding.utils.ConverterUtil.convertToDecimal(
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
                            "OutrasRetencoes").equals(reader.getName())) {
                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "nil");

                    if ("true".equals(nillableValue) ||
                            "1".equals(nillableValue)) {
                        throw new org.apache.axis2.databinding.ADBException(
                            "The element: " + "OutrasRetencoes" +
                            "  cannot be null");
                    }

                    java.lang.String content = reader.getElementText();

                    object.setOutrasRetencoes(org.apache.axis2.databinding.utils.ConverterUtil.convertToDecimal(
                            content));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.abrasf.org.br/nfse.xsd", "ValorIss").equals(
                            reader.getName())) {
                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "nil");

                    if ("true".equals(nillableValue) ||
                            "1".equals(nillableValue)) {
                        throw new org.apache.axis2.databinding.ADBException(
                            "The element: " + "ValorIss" + "  cannot be null");
                    }

                    java.lang.String content = reader.getElementText();

                    object.setValorIss(org.apache.axis2.databinding.utils.ConverterUtil.convertToDecimal(
                            content));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.abrasf.org.br/nfse.xsd", "Aliquota").equals(
                            reader.getName())) {
                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "nil");

                    if ("true".equals(nillableValue) ||
                            "1".equals(nillableValue)) {
                        throw new org.apache.axis2.databinding.ADBException(
                            "The element: " + "Aliquota" + "  cannot be null");
                    }

                    java.lang.String content = reader.getElementText();

                    object.setAliquota(org.apache.axis2.databinding.utils.ConverterUtil.convertToDecimal(
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
                            "DescontoIncondicionado").equals(reader.getName())) {
                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "nil");

                    if ("true".equals(nillableValue) ||
                            "1".equals(nillableValue)) {
                        throw new org.apache.axis2.databinding.ADBException(
                            "The element: " + "DescontoIncondicionado" +
                            "  cannot be null");
                    }

                    java.lang.String content = reader.getElementText();

                    object.setDescontoIncondicionado(org.apache.axis2.databinding.utils.ConverterUtil.convertToDecimal(
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
                            "DescontoCondicionado").equals(reader.getName())) {
                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "nil");

                    if ("true".equals(nillableValue) ||
                            "1".equals(nillableValue)) {
                        throw new org.apache.axis2.databinding.ADBException(
                            "The element: " + "DescontoCondicionado" +
                            "  cannot be null");
                    }

                    java.lang.String content = reader.getElementText();

                    object.setDescontoCondicionado(org.apache.axis2.databinding.utils.ConverterUtil.convertToDecimal(
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
