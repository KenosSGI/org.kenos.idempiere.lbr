/**
 * PGPDataTypeChoice_type0.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.4  Built on : Dec 28, 2015 (10:04:10 GMT)
 */
package org.w3.www._2000._09.xmldsig;


/**
 *  PGPDataTypeChoice_type0 bean class
 */
@SuppressWarnings({"unchecked",
    "unused"
})
public class PGPDataTypeChoice_type0 implements org.apache.axis2.databinding.ADBBean {
    /**
     * field for PGPKeyID
     */
    protected javax.activation.DataHandler localPGPKeyID;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localPGPKeyIDTracker = false;

    /**
     * field for PGPKeyPacket
     */
    protected javax.activation.DataHandler localPGPKeyPacket;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localPGPKeyPacketTracker = false;

    /**
     * field for ExtraElement
     */
    protected org.apache.axiom.om.OMElement localExtraElement;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localExtraElementTracker = false;

    /* This type was generated from the piece of schema that had
       name = PGPDataTypeChoice_type0
       Namespace URI = http://www.w3.org/2000/09/xmldsig#
       Namespace Prefix =
     */

    /** Whenever a new property is set ensure all others are unset
     *  There can be only one choice and the last one wins
     */
    private void clearAllSettingTrackers() {
        localPGPKeyIDTracker = false;

        localPGPKeyPacketTracker = false;

        localExtraElementTracker = false;
    }

    public boolean isPGPKeyIDSpecified() {
        return localPGPKeyIDTracker;
    }

    /**
     * Auto generated getter method
     * @return javax.activation.DataHandler
     */
    public javax.activation.DataHandler getPGPKeyID() {
        return localPGPKeyID;
    }

    /**
     * Auto generated setter method
     * @param param PGPKeyID
     */
    public void setPGPKeyID(javax.activation.DataHandler param) {
        clearAllSettingTrackers();
        localPGPKeyIDTracker = param != null;

        this.localPGPKeyID = param;
    }

    public boolean isPGPKeyPacketSpecified() {
        return localPGPKeyPacketTracker;
    }

    /**
     * Auto generated getter method
     * @return javax.activation.DataHandler
     */
    public javax.activation.DataHandler getPGPKeyPacket() {
        return localPGPKeyPacket;
    }

    /**
     * Auto generated setter method
     * @param param PGPKeyPacket
     */
    public void setPGPKeyPacket(javax.activation.DataHandler param) {
        clearAllSettingTrackers();
        localPGPKeyPacketTracker = param != null;

        this.localPGPKeyPacket = param;
    }

    public boolean isExtraElementSpecified() {
        return localExtraElementTracker;
    }

    /**
     * Auto generated getter method
     * @return org.apache.axiom.om.OMElement
     */
    public org.apache.axiom.om.OMElement getExtraElement() {
        return localExtraElement;
    }

    /**
     * Auto generated setter method
     * @param param ExtraElement
     */
    public void setExtraElement(org.apache.axiom.om.OMElement param) {
        clearAllSettingTrackers();
        localExtraElementTracker = param != null;

        this.localExtraElement = param;
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

        if (serializeType) {
            java.lang.String namespacePrefix = registerPrefix(xmlWriter,
                    "http://www.w3.org/2000/09/xmldsig#");

            if ((namespacePrefix != null) &&
                    (namespacePrefix.trim().length() > 0)) {
                writeAttribute("xsi",
                    "http://www.w3.org/2001/XMLSchema-instance", "type",
                    namespacePrefix + ":PGPDataTypeChoice_type0", xmlWriter);
            } else {
                writeAttribute("xsi",
                    "http://www.w3.org/2001/XMLSchema-instance", "type",
                    "PGPDataTypeChoice_type0", xmlWriter);
            }
        }

        if (localPGPKeyIDTracker) {
            namespace = "http://www.w3.org/2000/09/xmldsig#";
            writeStartElement(null, namespace, "PGPKeyID", xmlWriter);

            if (localPGPKeyID != null) {
                try {
                    org.apache.axiom.util.stax.XMLStreamWriterUtils.writeDataHandler(xmlWriter,
                        localPGPKeyID, null, true);
                } catch (java.io.IOException ex) {
                    throw new javax.xml.stream.XMLStreamException("Unable to read data handler for PGPKeyID",
                        ex);
                }
            } else {
            }

            xmlWriter.writeEndElement();
        }

        if (localPGPKeyPacketTracker) {
            namespace = "http://www.w3.org/2000/09/xmldsig#";
            writeStartElement(null, namespace, "PGPKeyPacket", xmlWriter);

            if (localPGPKeyPacket != null) {
                try {
                    org.apache.axiom.util.stax.XMLStreamWriterUtils.writeDataHandler(xmlWriter,
                        localPGPKeyPacket, null, true);
                } catch (java.io.IOException ex) {
                    throw new javax.xml.stream.XMLStreamException("Unable to read data handler for PGPKeyPacket",
                        ex);
                }
            } else {
            }

            xmlWriter.writeEndElement();
        }

        if (localExtraElementTracker) {
            if (localExtraElement != null) {
                localExtraElement.serialize(xmlWriter);
            } else {
                throw new org.apache.axis2.databinding.ADBException(
                    "extraElement cannot be null!!");
            }
        }
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

        if (localPGPKeyIDTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.w3.org/2000/09/xmldsig#", "PGPKeyID"));

            elementList.add(localPGPKeyID);
        }

        if (localPGPKeyPacketTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.w3.org/2000/09/xmldsig#", "PGPKeyPacket"));

            elementList.add(localPGPKeyPacket);
        }

        if (localExtraElementTracker) {
            if (localExtraElement != null) {
                elementList.add(org.apache.axis2.databinding.utils.Constants.OM_ELEMENT_KEY);
                elementList.add(localExtraElement);
            } else {
                throw new org.apache.axis2.databinding.ADBException(
                    "extraElement cannot be null!!");
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
        public static PGPDataTypeChoice_type0 parse(
            javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
            PGPDataTypeChoice_type0 object = new PGPDataTypeChoice_type0();

            int event;
            java.lang.String nillableValue = null;
            java.lang.String prefix = "";
            java.lang.String namespaceuri = "";

            try {
                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                // Note all attributes that were handled. Used to differ normal attributes
                // from anyAttributes.
                java.util.Vector handledAttributes = new java.util.Vector();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.w3.org/2000/09/xmldsig#", "PGPKeyID").equals(
                            reader.getName())) {
                    object.setPGPKeyID(org.apache.axiom.util.stax.XMLStreamReaderUtils.getDataHandlerFromElement(
                            reader));

                    reader.next();
                } // End of if for expected property start element

                else
                 if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.w3.org/2000/09/xmldsig#", "PGPKeyPacket").equals(
                            reader.getName())) {
                    object.setPGPKeyPacket(org.apache.axiom.util.stax.XMLStreamReaderUtils.getDataHandlerFromElement(
                            reader));

                    reader.next();
                } // End of if for expected property start element

                else
                 if (reader.isStartElement()) {
                    //use the QName from the parser as the name for the builder
                    javax.xml.namespace.QName startQname3 = reader.getName();

                    // We need to wrap the reader so that it produces a fake START_DOCUMENT event
                    // this is needed by the builder classes
                    org.apache.axis2.databinding.utils.NamedStaxOMBuilder builder3 =
                        new org.apache.axis2.databinding.utils.NamedStaxOMBuilder(new org.apache.axis2.util.StreamWrapper(
                                reader), startQname3);
                    object.setExtraElement(builder3.getOMElement());

                    reader.next();
                } // End of if for expected property start element
            } catch (javax.xml.stream.XMLStreamException e) {
                throw new java.lang.Exception(e);
            }

            return object;
        }
    } //end of factory class
}
