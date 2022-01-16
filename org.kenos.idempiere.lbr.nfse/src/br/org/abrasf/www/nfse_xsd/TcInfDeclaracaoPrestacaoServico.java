/**
 * TcInfDeclaracaoPrestacaoServico.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.4  Built on : Dec 28, 2015 (10:04:10 GMT)
 */
package br.org.abrasf.www.nfse_xsd;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.TimeZone;

/**
 *  TcInfDeclaracaoPrestacaoServico bean class
 */
@SuppressWarnings({"unchecked",
    "unused"
})
public class TcInfDeclaracaoPrestacaoServico implements org.apache.axis2.databinding.ADBBean {
    /* This type was generated from the piece of schema that had
       name = tcInfDeclaracaoPrestacaoServico
       Namespace URI = http://www.abrasf.org.br/nfse.xsd
       Namespace Prefix =
     */

    /**
     * field for Rps
     */
    protected br.org.abrasf.www.nfse_xsd.TcInfRps localRps;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localRpsTracker = false;

    /**
     * field for Competencia
     */
    protected java.util.Date localCompetencia;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localCompetenciaTracker = false;

    /**
     * field for Servico
     */
    protected br.org.abrasf.www.nfse_xsd.TcDadosServico localServico;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localServicoTracker = false;

    /**
     * field for Prestador
     */
    protected br.org.abrasf.www.nfse_xsd.TcIdentificacaoPrestador localPrestador;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localPrestadorTracker = false;

    /**
     * field for Tomador
     */
    protected br.org.abrasf.www.nfse_xsd.TcDadosTomador localTomador;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localTomadorTracker = false;

    /**
     * field for Intermediario
     */
    protected br.org.abrasf.www.nfse_xsd.TcDadosIntermediario localIntermediario;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localIntermediarioTracker = false;

    /**
     * field for ConstrucaoCivil
     */
    protected br.org.abrasf.www.nfse_xsd.TcDadosConstrucaoCivil localConstrucaoCivil;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localConstrucaoCivilTracker = false;

    /**
     * field for RegimeEspecialTributacao
     */
    protected byte localRegimeEspecialTributacao;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localRegimeEspecialTributacaoTracker = false;

    /**
     * field for OptanteSimplesNacional
     */
    protected byte localOptanteSimplesNacional;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localOptanteSimplesNacionalTracker = false;

    /**
     * field for IncentivoFiscal
     */
    protected byte localIncentivoFiscal;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localIncentivoFiscalTracker = false;

    /**
     * field for Id
     * This was an Attribute!
     */
    protected java.lang.String localId;

    public boolean isRpsSpecified() {
        return localRpsTracker;
    }

    /**
     * Auto generated getter method
     * @return br.org.abrasf.www.nfse_xsd.TcInfRps
     */
    public br.org.abrasf.www.nfse_xsd.TcInfRps getRps() {
        return localRps;
    }

    /**
     * Auto generated setter method
     * @param param Rps
     */
    public void setRps(br.org.abrasf.www.nfse_xsd.TcInfRps param) {
        localRpsTracker = param != null;

        this.localRps = param;
    }

    public boolean isCompetenciaSpecified() {
        return localCompetenciaTracker;
    }

    /**
     * Auto generated getter method
     * @return java.util.Date
     */
    public java.util.Date getCompetencia() {
        return localCompetencia;
    }

    /**
     * Auto generated setter method
     * @param param Competencia
     * @throws ParseException 
     */
    public void setCompetencia(java.util.Date param) throws ParseException {
        localCompetenciaTracker = param != null;
        this.localCompetencia = param;
    }

    public boolean isServicoSpecified() {
        return localServicoTracker;
    }

    /**
     * Auto generated getter method
     * @return br.org.abrasf.www.nfse_xsd.TcDadosServico
     */
    public br.org.abrasf.www.nfse_xsd.TcDadosServico getServico() {
        return localServico;
    }

    /**
     * Auto generated setter method
     * @param param Servico
     */
    public void setServico(br.org.abrasf.www.nfse_xsd.TcDadosServico param) {
        localServicoTracker = param != null;

        this.localServico = param;
    }

    public boolean isPrestadorSpecified() {
        return localPrestadorTracker;
    }

    /**
     * Auto generated getter method
     * @return br.org.abrasf.www.nfse_xsd.TcIdentificacaoPrestador
     */
    public br.org.abrasf.www.nfse_xsd.TcIdentificacaoPrestador getPrestador() {
        return localPrestador;
    }

    /**
     * Auto generated setter method
     * @param param Prestador
     */
    public void setPrestador(
        br.org.abrasf.www.nfse_xsd.TcIdentificacaoPrestador param) {
        localPrestadorTracker = param != null;

        this.localPrestador = param;
    }

    public boolean isTomadorSpecified() {
        return localTomadorTracker;
    }

    /**
     * Auto generated getter method
     * @return br.org.abrasf.www.nfse_xsd.TcDadosTomador
     */
    public br.org.abrasf.www.nfse_xsd.TcDadosTomador getTomador() {
        return localTomador;
    }

    /**
     * Auto generated setter method
     * @param param Tomador
     */
    public void setTomador(br.org.abrasf.www.nfse_xsd.TcDadosTomador param) {
        localTomadorTracker = param != null;

        this.localTomador = param;
    }

    public boolean isIntermediarioSpecified() {
        return localIntermediarioTracker;
    }

    /**
     * Auto generated getter method
     * @return br.org.abrasf.www.nfse_xsd.TcDadosIntermediario
     */
    public br.org.abrasf.www.nfse_xsd.TcDadosIntermediario getIntermediario() {
        return localIntermediario;
    }

    /**
     * Auto generated setter method
     * @param param Intermediario
     */
    public void setIntermediario(
        br.org.abrasf.www.nfse_xsd.TcDadosIntermediario param) {
        localIntermediarioTracker = param != null;

        this.localIntermediario = param;
    }

    public boolean isConstrucaoCivilSpecified() {
        return localConstrucaoCivilTracker;
    }

    /**
     * Auto generated getter method
     * @return br.org.abrasf.www.nfse_xsd.TcDadosConstrucaoCivil
     */
    public br.org.abrasf.www.nfse_xsd.TcDadosConstrucaoCivil getConstrucaoCivil() {
        return localConstrucaoCivil;
    }

    /**
     * Auto generated setter method
     * @param param ConstrucaoCivil
     */
    public void setConstrucaoCivil(
        br.org.abrasf.www.nfse_xsd.TcDadosConstrucaoCivil param) {
        localConstrucaoCivilTracker = param != null;

        this.localConstrucaoCivil = param;
    }

    public boolean isRegimeEspecialTributacaoSpecified() {
        return localRegimeEspecialTributacaoTracker;
    }

    /**
     * Auto generated getter method
     * @return byte
     */
    public byte getRegimeEspecialTributacao() {
        return localRegimeEspecialTributacao;
    }

    /**
     * Auto generated setter method
     * @param param RegimeEspecialTributacao
     */
    public void setRegimeEspecialTributacao(byte param) {
        // setting primitive attribute tracker to true
        localRegimeEspecialTributacaoTracker = param != java.lang.Byte.MIN_VALUE;

        this.localRegimeEspecialTributacao = param;
    }

    public boolean isOptanteSimplesNacionalSpecified() {
        return localOptanteSimplesNacionalTracker;
    }

    /**
     * Auto generated getter method
     * @return byte
     */
    public byte getOptanteSimplesNacional() {
        return localOptanteSimplesNacional;
    }

    /**
     * Auto generated setter method
     * @param param OptanteSimplesNacional
     */
    public void setOptanteSimplesNacional(byte param) {
        // setting primitive attribute tracker to true
        localOptanteSimplesNacionalTracker = param != java.lang.Byte.MIN_VALUE;

        this.localOptanteSimplesNacional = param;
    }

    public boolean isIncentivoFiscalSpecified() {
        return localIncentivoFiscalTracker;
    }

    /**
     * Auto generated getter method
     * @return byte
     */
    public byte getIncentivoFiscal() {
        return localIncentivoFiscal;
    }

    /**
     * Auto generated setter method
     * @param param IncentivoFiscal
     */
    public void setIncentivoFiscal(byte param) {
        // setting primitive attribute tracker to true
        localIncentivoFiscalTracker = param != java.lang.Byte.MIN_VALUE;

        this.localIncentivoFiscal = param;
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
                    namespacePrefix + ":tcInfDeclaracaoPrestacaoServico",
                    xmlWriter);
            } else {
                writeAttribute("xsi",
                    "http://www.w3.org/2001/XMLSchema-instance", "type",
                    "tcInfDeclaracaoPrestacaoServico", xmlWriter);
            }
        }

        if (localId != null) {
            writeAttribute("", "Id",
                org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                    localId), xmlWriter);
        }

        if (localRpsTracker) {
            if (localRps == null) {
                throw new org.apache.axis2.databinding.ADBException(
                    "Rps cannot be null!!");
            }

            localRps.serialize(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "Rps"), xmlWriter);
        }

        if (localCompetenciaTracker) {
            namespace = "http://www.abrasf.org.br/nfse.xsd";
            writeStartElement(null, namespace, "Competencia", xmlWriter);

            if (localCompetencia == null) {
                // write the nil attribute
                throw new org.apache.axis2.databinding.ADBException(
                    "Competencia cannot be null!!");
            } else {
            	SimpleDateFormat isoFormat = new SimpleDateFormat("yyyy-MM-dd");
            	xmlWriter.writeCharacters((isoFormat.format(localCompetencia)));
            }

            xmlWriter.writeEndElement();
        }

        if (localServicoTracker) {
            if (localServico == null) {
                throw new org.apache.axis2.databinding.ADBException(
                    "Servico cannot be null!!");
            }

            localServico.serialize(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "Servico"), xmlWriter);
        }

        if (localPrestadorTracker) {
            if (localPrestador == null) {
                throw new org.apache.axis2.databinding.ADBException(
                    "Prestador cannot be null!!");
            }

            localPrestador.serialize(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "Prestador"), xmlWriter);
        }

        if (localTomadorTracker) {
            if (localTomador == null) {
                throw new org.apache.axis2.databinding.ADBException(
                    "Tomador cannot be null!!");
            }

            localTomador.serialize(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "Tomador"), xmlWriter);
        }

        if (localIntermediarioTracker) {
            if (localIntermediario == null) {
                throw new org.apache.axis2.databinding.ADBException(
                    "Intermediario cannot be null!!");
            }

            localIntermediario.serialize(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "Intermediario"),
                xmlWriter);
        }

        if (localConstrucaoCivilTracker) {
            if (localConstrucaoCivil == null) {
                throw new org.apache.axis2.databinding.ADBException(
                    "ConstrucaoCivil cannot be null!!");
            }

            localConstrucaoCivil.serialize(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "ConstrucaoCivil"),
                xmlWriter);
        }

        if (localRegimeEspecialTributacaoTracker) {
            namespace = "http://www.abrasf.org.br/nfse.xsd";
            writeStartElement(null, namespace, "RegimeEspecialTributacao",
                xmlWriter);

            if (localRegimeEspecialTributacao == java.lang.Byte.MIN_VALUE) {
                throw new org.apache.axis2.databinding.ADBException(
                    "RegimeEspecialTributacao cannot be null!!");
            } else {
                xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localRegimeEspecialTributacao));
            }

            xmlWriter.writeEndElement();
        }

        if (localOptanteSimplesNacionalTracker) {
            namespace = "http://www.abrasf.org.br/nfse.xsd";
            writeStartElement(null, namespace, "OptanteSimplesNacional",
                xmlWriter);

            if (localOptanteSimplesNacional == java.lang.Byte.MIN_VALUE) {
                throw new org.apache.axis2.databinding.ADBException(
                    "OptanteSimplesNacional cannot be null!!");
            } else {
                xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localOptanteSimplesNacional));
            }

            xmlWriter.writeEndElement();
        }

        if (localIncentivoFiscalTracker) {
            namespace = "http://www.abrasf.org.br/nfse.xsd";
            writeStartElement(null, namespace, "IncentivoFiscal", xmlWriter);

            if (localIncentivoFiscal == java.lang.Byte.MIN_VALUE) {
                throw new org.apache.axis2.databinding.ADBException(
                    "IncentivoFiscal cannot be null!!");
            } else {
                xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localIncentivoFiscal));
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

        if (localRpsTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "Rps"));

            if (localRps == null) {
                throw new org.apache.axis2.databinding.ADBException(
                    "Rps cannot be null!!");
            }

            elementList.add(localRps);
        }

        if (localCompetenciaTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "Competencia"));

            if (localCompetencia != null) {
                elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                        localCompetencia));
            } else {
                throw new org.apache.axis2.databinding.ADBException(
                    "Competencia cannot be null!!");
            }
        }

        if (localServicoTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "Servico"));

            if (localServico == null) {
                throw new org.apache.axis2.databinding.ADBException(
                    "Servico cannot be null!!");
            }

            elementList.add(localServico);
        }

        if (localPrestadorTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "Prestador"));

            if (localPrestador == null) {
                throw new org.apache.axis2.databinding.ADBException(
                    "Prestador cannot be null!!");
            }

            elementList.add(localPrestador);
        }

        if (localTomadorTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "Tomador"));

            if (localTomador == null) {
                throw new org.apache.axis2.databinding.ADBException(
                    "Tomador cannot be null!!");
            }

            elementList.add(localTomador);
        }

        if (localIntermediarioTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "Intermediario"));

            if (localIntermediario == null) {
                throw new org.apache.axis2.databinding.ADBException(
                    "Intermediario cannot be null!!");
            }

            elementList.add(localIntermediario);
        }

        if (localConstrucaoCivilTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "ConstrucaoCivil"));

            if (localConstrucaoCivil == null) {
                throw new org.apache.axis2.databinding.ADBException(
                    "ConstrucaoCivil cannot be null!!");
            }

            elementList.add(localConstrucaoCivil);
        }

        if (localRegimeEspecialTributacaoTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd",
                    "RegimeEspecialTributacao"));

            elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                    localRegimeEspecialTributacao));
        }

        if (localOptanteSimplesNacionalTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd",
                    "OptanteSimplesNacional"));

            elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                    localOptanteSimplesNacional));
        }

        if (localIncentivoFiscalTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.abrasf.org.br/nfse.xsd", "IncentivoFiscal"));

            elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                    localIncentivoFiscal));
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
        public static TcInfDeclaracaoPrestacaoServico parse(
            javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
            TcInfDeclaracaoPrestacaoServico object = new TcInfDeclaracaoPrestacaoServico();

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

                        if (!"tcInfDeclaracaoPrestacaoServico".equals(type)) {
                            //find namespace for the prefix
                            java.lang.String nsUri = reader.getNamespaceContext()
                                                           .getNamespaceURI(nsPrefix);

                            return (TcInfDeclaracaoPrestacaoServico) org.w3.www._2000._09.xmldsig.ExtensionMapper.getTypeObject(nsUri,
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
                            "http://www.abrasf.org.br/nfse.xsd", "Rps").equals(
                            reader.getName())) {
                    object.setRps(br.org.abrasf.www.nfse_xsd.TcInfRps.Factory.parse(
                            reader));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.abrasf.org.br/nfse.xsd", "Competencia").equals(
                            reader.getName())) {
                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "nil");

                    if ("true".equals(nillableValue) ||
                            "1".equals(nillableValue)) {
                        throw new org.apache.axis2.databinding.ADBException(
                            "The element: " + "Competencia" +
                            "  cannot be null");
                    }

                    java.lang.String content = reader.getElementText();

                    object.setCompetencia(org.apache.axis2.databinding.utils.ConverterUtil.convertToDate(
                            content));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.abrasf.org.br/nfse.xsd", "Servico").equals(
                            reader.getName())) {
                    object.setServico(br.org.abrasf.www.nfse_xsd.TcDadosServico.Factory.parse(
                            reader));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.abrasf.org.br/nfse.xsd", "Prestador").equals(
                            reader.getName())) {
                    object.setPrestador(br.org.abrasf.www.nfse_xsd.TcIdentificacaoPrestador.Factory.parse(
                            reader));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.abrasf.org.br/nfse.xsd", "Tomador").equals(
                            reader.getName())) {
                    object.setTomador(br.org.abrasf.www.nfse_xsd.TcDadosTomador.Factory.parse(
                            reader));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.abrasf.org.br/nfse.xsd", "Intermediario").equals(
                            reader.getName())) {
                    object.setIntermediario(br.org.abrasf.www.nfse_xsd.TcDadosIntermediario.Factory.parse(
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
                            "ConstrucaoCivil").equals(reader.getName())) {
                    object.setConstrucaoCivil(br.org.abrasf.www.nfse_xsd.TcDadosConstrucaoCivil.Factory.parse(
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
                            "RegimeEspecialTributacao").equals(reader.getName())) {
                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "nil");

                    if ("true".equals(nillableValue) ||
                            "1".equals(nillableValue)) {
                        throw new org.apache.axis2.databinding.ADBException(
                            "The element: " + "RegimeEspecialTributacao" +
                            "  cannot be null");
                    }

                    java.lang.String content = reader.getElementText();

                    object.setRegimeEspecialTributacao(org.apache.axis2.databinding.utils.ConverterUtil.convertToByte(
                            content));

                    reader.next();
                } // End of if for expected property start element

                else {
                    object.setRegimeEspecialTributacao(java.lang.Byte.MIN_VALUE);
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.abrasf.org.br/nfse.xsd",
                            "OptanteSimplesNacional").equals(reader.getName())) {
                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "nil");

                    if ("true".equals(nillableValue) ||
                            "1".equals(nillableValue)) {
                        throw new org.apache.axis2.databinding.ADBException(
                            "The element: " + "OptanteSimplesNacional" +
                            "  cannot be null");
                    }

                    java.lang.String content = reader.getElementText();

                    object.setOptanteSimplesNacional(org.apache.axis2.databinding.utils.ConverterUtil.convertToByte(
                            content));

                    reader.next();
                } // End of if for expected property start element

                else {
                    object.setOptanteSimplesNacional(java.lang.Byte.MIN_VALUE);
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.abrasf.org.br/nfse.xsd",
                            "IncentivoFiscal").equals(reader.getName())) {
                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                            "nil");

                    if ("true".equals(nillableValue) ||
                            "1".equals(nillableValue)) {
                        throw new org.apache.axis2.databinding.ADBException(
                            "The element: " + "IncentivoFiscal" +
                            "  cannot be null");
                    }

                    java.lang.String content = reader.getElementText();

                    object.setIncentivoFiscal(org.apache.axis2.databinding.utils.ConverterUtil.convertToByte(
                            content));

                    reader.next();
                } // End of if for expected property start element

                else {
                    object.setIncentivoFiscal(java.lang.Byte.MIN_VALUE);
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
