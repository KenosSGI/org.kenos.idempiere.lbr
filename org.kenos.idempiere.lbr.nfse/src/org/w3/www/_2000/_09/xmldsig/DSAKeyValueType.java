/**
 * DSAKeyValueType.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.4  Built on : Dec 28, 2015 (10:04:10 GMT)
 */
package org.w3.www._2000._09.xmldsig;


/**
 *  DSAKeyValueType bean class
 */
@SuppressWarnings({"unchecked",
    "unused"
})
public class DSAKeyValueType implements org.apache.axis2.databinding.ADBBean {
    /* This type was generated from the piece of schema that had
       name = DSAKeyValueType
       Namespace URI = http://www.w3.org/2000/09/xmldsig#
       Namespace Prefix =
     */

    /**
     * field for P
     */
    protected javax.activation.DataHandler localP;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localPTracker = false;

    /**
     * field for Q
     */
    protected javax.activation.DataHandler localQ;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localQTracker = false;

    /**
     * field for G
     */
    protected javax.activation.DataHandler localG;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localGTracker = false;

    /**
     * field for Y
     */
    protected javax.activation.DataHandler localY;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localYTracker = false;

    /**
     * field for J
     */
    protected javax.activation.DataHandler localJ;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localJTracker = false;

    /**
     * field for Seed
     */
    protected javax.activation.DataHandler localSeed;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localSeedTracker = false;

    /**
     * field for PgenCounter
     */
    protected javax.activation.DataHandler localPgenCounter;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localPgenCounterTracker = false;

    public boolean isPSpecified() {
        return localPTracker;
    }

    /**
     * Auto generated getter method
     * @return javax.activation.DataHandler
     */
    public javax.activation.DataHandler getP() {
        return localP;
    }

    /**
     * Auto generated setter method
     * @param param P
     */
    public void setP(javax.activation.DataHandler param) {
        localPTracker = param != null;

        this.localP = param;
    }

    public boolean isQSpecified() {
        return localQTracker;
    }

    /**
     * Auto generated getter method
     * @return javax.activation.DataHandler
     */
    public javax.activation.DataHandler getQ() {
        return localQ;
    }

    /**
     * Auto generated setter method
     * @param param Q
     */
    public void setQ(javax.activation.DataHandler param) {
        localQTracker = param != null;

        this.localQ = param;
    }

    public boolean isGSpecified() {
        return localGTracker;
    }

    /**
     * Auto generated getter method
     * @return javax.activation.DataHandler
     */
    public javax.activation.DataHandler getG() {
        return localG;
    }

    /**
     * Auto generated setter method
     * @param param G
     */
    public void setG(javax.activation.DataHandler param) {
        localGTracker = param != null;

        this.localG = param;
    }

    public boolean isYSpecified() {
        return localYTracker;
    }

    /**
     * Auto generated getter method
     * @return javax.activation.DataHandler
     */
    public javax.activation.DataHandler getY() {
        return localY;
    }

    /**
     * Auto generated setter method
     * @param param Y
     */
    public void setY(javax.activation.DataHandler param) {
        localYTracker = param != null;

        this.localY = param;
    }

    public boolean isJSpecified() {
        return localJTracker;
    }

    /**
     * Auto generated getter method
     * @return javax.activation.DataHandler
     */
    public javax.activation.DataHandler getJ() {
        return localJ;
    }

    /**
     * Auto generated setter method
     * @param param J
     */
    public void setJ(javax.activation.DataHandler param) {
        localJTracker = param != null;

        this.localJ = param;
    }

    public boolean isSeedSpecified() {
        return localSeedTracker;
    }

    /**
     * Auto generated getter method
     * @return javax.activation.DataHandler
     */
    public javax.activation.DataHandler getSeed() {
        return localSeed;
    }

    /**
     * Auto generated setter method
     * @param param Seed
     */
    public void setSeed(javax.activation.DataHandler param) {
        localSeedTracker = param != null;

        this.localSeed = param;
    }

    public boolean isPgenCounterSpecified() {
        return localPgenCounterTracker;
    }

    /**
     * Auto generated getter method
     * @return javax.activation.DataHandler
     */
    public javax.activation.DataHandler getPgenCounter() {
        return localPgenCounter;
    }

    /**
     * Auto generated setter method
     * @param param PgenCounter
     */
    public void setPgenCounter(javax.activation.DataHandler param) {
        localPgenCounterTracker = param != null;

        this.localPgenCounter = param;
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
                    "http://www.w3.org/2000/09/xmldsig#");

            if ((namespacePrefix != null) &&
                    (namespacePrefix.trim().length() > 0)) {
                writeAttribute("xsi",
                    "http://www.w3.org/2001/XMLSchema-instance", "type",
                    namespacePrefix + ":DSAKeyValueType", xmlWriter);
            } else {
                writeAttribute("xsi",
                    "http://www.w3.org/2001/XMLSchema-instance", "type",
                    "DSAKeyValueType", xmlWriter);
            }
        }

        if (localPTracker) {
            namespace = "http://www.w3.org/2000/09/xmldsig#";
            writeStartElement(null, namespace, "P", xmlWriter);

            if (localP != null) {
                try {
                    org.apache.axiom.util.stax.XMLStreamWriterUtils.writeDataHandler(xmlWriter,
                        localP, null, true);
                } catch (java.io.IOException ex) {
                    throw new javax.xml.stream.XMLStreamException("Unable to read data handler for P",
                        ex);
                }
            } else {
            }

            xmlWriter.writeEndElement();
        }

        if (localQTracker) {
            namespace = "http://www.w3.org/2000/09/xmldsig#";
            writeStartElement(null, namespace, "Q", xmlWriter);

            if (localQ != null) {
                try {
                    org.apache.axiom.util.stax.XMLStreamWriterUtils.writeDataHandler(xmlWriter,
                        localQ, null, true);
                } catch (java.io.IOException ex) {
                    throw new javax.xml.stream.XMLStreamException("Unable to read data handler for Q",
                        ex);
                }
            } else {
            }

            xmlWriter.writeEndElement();
        }

        if (localGTracker) {
            namespace = "http://www.w3.org/2000/09/xmldsig#";
            writeStartElement(null, namespace, "G", xmlWriter);

            if (localG != null) {
                try {
                    org.apache.axiom.util.stax.XMLStreamWriterUtils.writeDataHandler(xmlWriter,
                        localG, null, true);
                } catch (java.io.IOException ex) {
                    throw new javax.xml.stream.XMLStreamException("Unable to read data handler for G",
                        ex);
                }
            } else {
            }

            xmlWriter.writeEndElement();
        }

        if (localYTracker) {
            namespace = "http://www.w3.org/2000/09/xmldsig#";
            writeStartElement(null, namespace, "Y", xmlWriter);

            if (localY != null) {
                try {
                    org.apache.axiom.util.stax.XMLStreamWriterUtils.writeDataHandler(xmlWriter,
                        localY, null, true);
                } catch (java.io.IOException ex) {
                    throw new javax.xml.stream.XMLStreamException("Unable to read data handler for Y",
                        ex);
                }
            } else {
            }

            xmlWriter.writeEndElement();
        }

        if (localJTracker) {
            namespace = "http://www.w3.org/2000/09/xmldsig#";
            writeStartElement(null, namespace, "J", xmlWriter);

            if (localJ != null) {
                try {
                    org.apache.axiom.util.stax.XMLStreamWriterUtils.writeDataHandler(xmlWriter,
                        localJ, null, true);
                } catch (java.io.IOException ex) {
                    throw new javax.xml.stream.XMLStreamException("Unable to read data handler for J",
                        ex);
                }
            } else {
            }

            xmlWriter.writeEndElement();
        }

        if (localSeedTracker) {
            namespace = "http://www.w3.org/2000/09/xmldsig#";
            writeStartElement(null, namespace, "Seed", xmlWriter);

            if (localSeed != null) {
                try {
                    org.apache.axiom.util.stax.XMLStreamWriterUtils.writeDataHandler(xmlWriter,
                        localSeed, null, true);
                } catch (java.io.IOException ex) {
                    throw new javax.xml.stream.XMLStreamException("Unable to read data handler for Seed",
                        ex);
                }
            } else {
            }

            xmlWriter.writeEndElement();
        }

        if (localPgenCounterTracker) {
            namespace = "http://www.w3.org/2000/09/xmldsig#";
            writeStartElement(null, namespace, "PgenCounter", xmlWriter);

            if (localPgenCounter != null) {
                try {
                    org.apache.axiom.util.stax.XMLStreamWriterUtils.writeDataHandler(xmlWriter,
                        localPgenCounter, null, true);
                } catch (java.io.IOException ex) {
                    throw new javax.xml.stream.XMLStreamException("Unable to read data handler for PgenCounter",
                        ex);
                }
            } else {
            }

            xmlWriter.writeEndElement();
        }

        xmlWriter.writeEndElement();
    }

    private static java.lang.String generatePrefix(java.lang.String namespace) {
        if (namespace.equals("http://www.w3.org/2000/09/xmldsig#")) {
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

        if (localPTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.w3.org/2000/09/xmldsig#", "P"));

            elementList.add(localP);
        }

        if (localQTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.w3.org/2000/09/xmldsig#", "Q"));

            elementList.add(localQ);
        }

        if (localGTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.w3.org/2000/09/xmldsig#", "G"));

            elementList.add(localG);
        }

        if (localYTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.w3.org/2000/09/xmldsig#", "Y"));

            elementList.add(localY);
        }

        if (localJTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.w3.org/2000/09/xmldsig#", "J"));

            elementList.add(localJ);
        }

        if (localSeedTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.w3.org/2000/09/xmldsig#", "Seed"));

            elementList.add(localSeed);
        }

        if (localPgenCounterTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.w3.org/2000/09/xmldsig#", "PgenCounter"));

            elementList.add(localPgenCounter);
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
        public static DSAKeyValueType parse(
            javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
            DSAKeyValueType object = new DSAKeyValueType();

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

                        if (!"DSAKeyValueType".equals(type)) {
                            //find namespace for the prefix
                            java.lang.String nsUri = reader.getNamespaceContext()
                                                           .getNamespaceURI(nsPrefix);

                            return (DSAKeyValueType) org.w3.www._2000._09.xmldsig.ExtensionMapper.getTypeObject(nsUri,
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
                            "http://www.w3.org/2000/09/xmldsig#", "P").equals(
                            reader.getName())) {
                    object.setP(org.apache.axiom.util.stax.XMLStreamReaderUtils.getDataHandlerFromElement(
                            reader));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.w3.org/2000/09/xmldsig#", "Q").equals(
                            reader.getName())) {
                    object.setQ(org.apache.axiom.util.stax.XMLStreamReaderUtils.getDataHandlerFromElement(
                            reader));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.w3.org/2000/09/xmldsig#", "G").equals(
                            reader.getName())) {
                    object.setG(org.apache.axiom.util.stax.XMLStreamReaderUtils.getDataHandlerFromElement(
                            reader));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.w3.org/2000/09/xmldsig#", "Y").equals(
                            reader.getName())) {
                    object.setY(org.apache.axiom.util.stax.XMLStreamReaderUtils.getDataHandlerFromElement(
                            reader));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.w3.org/2000/09/xmldsig#", "J").equals(
                            reader.getName())) {
                    object.setJ(org.apache.axiom.util.stax.XMLStreamReaderUtils.getDataHandlerFromElement(
                            reader));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.w3.org/2000/09/xmldsig#", "Seed").equals(
                            reader.getName())) {
                    object.setSeed(org.apache.axiom.util.stax.XMLStreamReaderUtils.getDataHandlerFromElement(
                            reader));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.w3.org/2000/09/xmldsig#", "PgenCounter").equals(
                            reader.getName())) {
                    object.setPgenCounter(org.apache.axiom.util.stax.XMLStreamReaderUtils.getDataHandlerFromElement(
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
