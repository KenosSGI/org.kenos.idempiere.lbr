/**
 * ReferenceType.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.4  Built on : Dec 28, 2015 (10:04:10 GMT)
 */
package org.w3.www._2000._09.xmldsig;


/**
 *  ReferenceType bean class
 */
@SuppressWarnings({"unchecked",
    "unused"
})
public class ReferenceType implements org.apache.axis2.databinding.ADBBean {
    /* This type was generated from the piece of schema that had
       name = ReferenceType
       Namespace URI = http://www.w3.org/2000/09/xmldsig#
       Namespace Prefix =
     */

    /**
     * field for Transforms
     */
    protected org.w3.www._2000._09.xmldsig.TransformsType localTransforms;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localTransformsTracker = false;

    /**
     * field for DigestMethod
     */
    protected org.w3.www._2000._09.xmldsig.DigestMethodType localDigestMethod;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localDigestMethodTracker = false;

    /**
     * field for DigestValue
     */
    protected javax.activation.DataHandler localDigestValue;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localDigestValueTracker = false;

    /**
     * field for Id
     * This was an Attribute!
     */
    protected org.apache.axis2.databinding.types.Id localId;

    /**
     * field for URI
     * This was an Attribute!
     */
    protected org.apache.axis2.databinding.types.URI localURI;

    /**
     * field for Type
     * This was an Attribute!
     */
    protected org.apache.axis2.databinding.types.URI localType;

    public boolean isTransformsSpecified() {
        return localTransformsTracker;
    }

    /**
     * Auto generated getter method
     * @return org.w3.www._2000._09.xmldsig.TransformsType
     */
    public org.w3.www._2000._09.xmldsig.TransformsType getTransforms() {
        return localTransforms;
    }

    /**
     * Auto generated setter method
     * @param param Transforms
     */
    public void setTransforms(org.w3.www._2000._09.xmldsig.TransformsType param) {
        localTransformsTracker = param != null;

        this.localTransforms = param;
    }

    public boolean isDigestMethodSpecified() {
        return localDigestMethodTracker;
    }

    /**
     * Auto generated getter method
     * @return org.w3.www._2000._09.xmldsig.DigestMethodType
     */
    public org.w3.www._2000._09.xmldsig.DigestMethodType getDigestMethod() {
        return localDigestMethod;
    }

    /**
     * Auto generated setter method
     * @param param DigestMethod
     */
    public void setDigestMethod(
        org.w3.www._2000._09.xmldsig.DigestMethodType param) {
        localDigestMethodTracker = param != null;

        this.localDigestMethod = param;
    }

    public boolean isDigestValueSpecified() {
        return localDigestValueTracker;
    }

    /**
     * Auto generated getter method
     * @return javax.activation.DataHandler
     */
    public javax.activation.DataHandler getDigestValue() {
        return localDigestValue;
    }

    /**
     * Auto generated setter method
     * @param param DigestValue
     */
    public void setDigestValue(javax.activation.DataHandler param) {
        localDigestValueTracker = param != null;

        this.localDigestValue = param;
    }

    /**
     * Auto generated getter method
     * @return org.apache.axis2.databinding.types.Id
     */
    public org.apache.axis2.databinding.types.Id getId() {
        return localId;
    }

    /**
     * Auto generated setter method
     * @param param Id
     */
    public void setId(org.apache.axis2.databinding.types.Id param) {
        this.localId = param;
    }

    /**
     * Auto generated getter method
     * @return org.apache.axis2.databinding.types.URI
     */
    public org.apache.axis2.databinding.types.URI getURI() {
        return localURI;
    }

    /**
     * Auto generated setter method
     * @param param URI
     */
    public void setURI(org.apache.axis2.databinding.types.URI param) {
        this.localURI = param;
    }

    /**
     * Auto generated getter method
     * @return org.apache.axis2.databinding.types.URI
     */
    public org.apache.axis2.databinding.types.URI getType() {
        return localType;
    }

    /**
     * Auto generated setter method
     * @param param Type
     */
    public void setType(org.apache.axis2.databinding.types.URI param) {
        this.localType = param;
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
                    namespacePrefix + ":ReferenceType", xmlWriter);
            } else {
                writeAttribute("xsi",
                    "http://www.w3.org/2001/XMLSchema-instance", "type",
                    "ReferenceType", xmlWriter);
            }
        }

        if (localId != null) {
            writeAttribute("", "Id",
                org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                    localId), xmlWriter);
        }

        if (localURI != null) {
            writeAttribute("", "URI",
                org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                    localURI), xmlWriter);
        }

        if (localType != null) {
            writeAttribute("", "Type",
                org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                    localType), xmlWriter);
        }

        if (localTransformsTracker) {
            if (localTransforms == null) {
                throw new org.apache.axis2.databinding.ADBException(
                    "Transforms cannot be null!!");
            }

            localTransforms.serialize(new javax.xml.namespace.QName(
                    "http://www.w3.org/2000/09/xmldsig#", "Transforms"),
                xmlWriter);
        }

        if (localDigestMethodTracker) {
            if (localDigestMethod == null) {
                throw new org.apache.axis2.databinding.ADBException(
                    "DigestMethod cannot be null!!");
            }

            localDigestMethod.serialize(new javax.xml.namespace.QName(
                    "http://www.w3.org/2000/09/xmldsig#", "DigestMethod"),
                xmlWriter);
        }

        if (localDigestValueTracker) {
            namespace = "http://www.w3.org/2000/09/xmldsig#";
            writeStartElement(null, namespace, "DigestValue", xmlWriter);

            if (localDigestValue != null) {
                try {
                    org.apache.axiom.util.stax.XMLStreamWriterUtils.writeDataHandler(xmlWriter,
                        localDigestValue, null, true);
                } catch (java.io.IOException ex) {
                    throw new javax.xml.stream.XMLStreamException("Unable to read data handler for DigestValue",
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

        if (localTransformsTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.w3.org/2000/09/xmldsig#", "Transforms"));

            if (localTransforms == null) {
                throw new org.apache.axis2.databinding.ADBException(
                    "Transforms cannot be null!!");
            }

            elementList.add(localTransforms);
        }

        if (localDigestMethodTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.w3.org/2000/09/xmldsig#", "DigestMethod"));

            if (localDigestMethod == null) {
                throw new org.apache.axis2.databinding.ADBException(
                    "DigestMethod cannot be null!!");
            }

            elementList.add(localDigestMethod);
        }

        if (localDigestValueTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.w3.org/2000/09/xmldsig#", "DigestValue"));

            elementList.add(localDigestValue);
        }

        attribList.add(new javax.xml.namespace.QName("", "Id"));

        attribList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                localId));

        attribList.add(new javax.xml.namespace.QName("", "URI"));

        attribList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                localURI));

        attribList.add(new javax.xml.namespace.QName("", "Type"));

        attribList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                localType));

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
        public static ReferenceType parse(
            javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
            ReferenceType object = new ReferenceType();

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

                        if (!"ReferenceType".equals(type)) {
                            //find namespace for the prefix
                            java.lang.String nsUri = reader.getNamespaceContext()
                                                           .getNamespaceURI(nsPrefix);

                            return (ReferenceType) org.w3.www._2000._09.xmldsig.ExtensionMapper.getTypeObject(nsUri,
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

                    object.setId(org.apache.axis2.databinding.utils.ConverterUtil.convertToID(
                            tempAttribId));
                } else {
                }

                handledAttributes.add("Id");

                // handle attribute "URI"
                java.lang.String tempAttribURI = reader.getAttributeValue(null,
                        "URI");

                if (tempAttribURI != null) {
                    java.lang.String content = tempAttribURI;

                    object.setURI(org.apache.axis2.databinding.utils.ConverterUtil.convertToAnyURI(
                            tempAttribURI));
                } else {
                }

                handledAttributes.add("URI");

                // handle attribute "Type"
                java.lang.String tempAttribType = reader.getAttributeValue(null,
                        "Type");

                if (tempAttribType != null) {
                    java.lang.String content = tempAttribType;

                    object.setType(org.apache.axis2.databinding.utils.ConverterUtil.convertToAnyURI(
                            tempAttribType));
                } else {
                }

                handledAttributes.add("Type");

                reader.next();

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.w3.org/2000/09/xmldsig#", "Transforms").equals(
                            reader.getName())) {
                    object.setTransforms(org.w3.www._2000._09.xmldsig.TransformsType.Factory.parse(
                            reader));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.w3.org/2000/09/xmldsig#", "DigestMethod").equals(
                            reader.getName())) {
                    object.setDigestMethod(org.w3.www._2000._09.xmldsig.DigestMethodType.Factory.parse(
                            reader));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.w3.org/2000/09/xmldsig#", "DigestValue").equals(
                            reader.getName())) {
                    object.setDigestValue(org.apache.axiom.util.stax.XMLStreamReaderUtils.getDataHandlerFromElement(
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
