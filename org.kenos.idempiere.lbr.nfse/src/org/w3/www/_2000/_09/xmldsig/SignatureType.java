/**
 * SignatureType.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.4  Built on : Dec 28, 2015 (10:04:10 GMT)
 */
package org.w3.www._2000._09.xmldsig;


/**
 *  SignatureType bean class
 */
@SuppressWarnings({"unchecked",
    "unused"
})
public class SignatureType implements org.apache.axis2.databinding.ADBBean {
    /* This type was generated from the piece of schema that had
       name = SignatureType
       Namespace URI = http://www.w3.org/2000/09/xmldsig#
       Namespace Prefix =
     */

    /**
     * field for SignedInfo
     */
    protected org.w3.www._2000._09.xmldsig.SignedInfoType localSignedInfo;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localSignedInfoTracker = false;

    /**
     * field for SignatureValue
     */
    protected org.w3.www._2000._09.xmldsig.SignatureValueType localSignatureValue;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localSignatureValueTracker = false;

    /**
     * field for KeyInfo
     */
    protected org.w3.www._2000._09.xmldsig.KeyInfoType localKeyInfo;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localKeyInfoTracker = false;

    /**
     * field for Object
     * This was an Array!
     */
    protected org.w3.www._2000._09.xmldsig.ObjectType[] localObject;

    /*  This tracker boolean wil be used to detect whether the user called the set method
     *   for this attribute. It will be used to determine whether to include this field
     *   in the serialized XML
     */
    protected boolean localObjectTracker = false;

    /**
     * field for Id
     * This was an Attribute!
     */
    protected org.apache.axis2.databinding.types.Id localId;

    public boolean isSignedInfoSpecified() {
        return localSignedInfoTracker;
    }

    /**
     * Auto generated getter method
     * @return org.w3.www._2000._09.xmldsig.SignedInfoType
     */
    public org.w3.www._2000._09.xmldsig.SignedInfoType getSignedInfo() {
        return localSignedInfo;
    }

    /**
     * Auto generated setter method
     * @param param SignedInfo
     */
    public void setSignedInfo(org.w3.www._2000._09.xmldsig.SignedInfoType param) {
        localSignedInfoTracker = param != null;

        this.localSignedInfo = param;
    }

    public boolean isSignatureValueSpecified() {
        return localSignatureValueTracker;
    }

    /**
     * Auto generated getter method
     * @return org.w3.www._2000._09.xmldsig.SignatureValueType
     */
    public org.w3.www._2000._09.xmldsig.SignatureValueType getSignatureValue() {
        return localSignatureValue;
    }

    /**
     * Auto generated setter method
     * @param param SignatureValue
     */
    public void setSignatureValue(
        org.w3.www._2000._09.xmldsig.SignatureValueType param) {
        localSignatureValueTracker = param != null;

        this.localSignatureValue = param;
    }

    public boolean isKeyInfoSpecified() {
        return localKeyInfoTracker;
    }

    /**
     * Auto generated getter method
     * @return org.w3.www._2000._09.xmldsig.KeyInfoType
     */
    public org.w3.www._2000._09.xmldsig.KeyInfoType getKeyInfo() {
        return localKeyInfo;
    }

    /**
     * Auto generated setter method
     * @param param KeyInfo
     */
    public void setKeyInfo(org.w3.www._2000._09.xmldsig.KeyInfoType param) {
        localKeyInfoTracker = param != null;

        this.localKeyInfo = param;
    }

    public boolean isObjectSpecified() {
        return localObjectTracker;
    }

    /**
     * Auto generated getter method
     * @return org.w3.www._2000._09.xmldsig.ObjectType[]
     */
    public org.w3.www._2000._09.xmldsig.ObjectType[] getObject() {
        return localObject;
    }

    /**
     * validate the array for Object
     */
    protected void validateObject(
        org.w3.www._2000._09.xmldsig.ObjectType[] param) {
    }

    /**
     * Auto generated setter method
     * @param param Object
     */
    public void setObject(org.w3.www._2000._09.xmldsig.ObjectType[] param) {
        validateObject(param);

        localObjectTracker = param != null;

        this.localObject = param;
    }

    /**
     * Auto generated add method for the array for convenience
     * @param param org.w3.www._2000._09.xmldsig.ObjectType
     */
    public void addObject(org.w3.www._2000._09.xmldsig.ObjectType param) {
        if (localObject == null) {
            localObject = new org.w3.www._2000._09.xmldsig.ObjectType[] {  };
        }

        //update the setting tracker
        localObjectTracker = true;

        java.util.List list = org.apache.axis2.databinding.utils.ConverterUtil.toList(localObject);
        list.add(param);
        this.localObject = (org.w3.www._2000._09.xmldsig.ObjectType[]) list.toArray(new org.w3.www._2000._09.xmldsig.ObjectType[list.size()]);
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
                    namespacePrefix + ":SignatureType", xmlWriter);
            } else {
                writeAttribute("xsi",
                    "http://www.w3.org/2001/XMLSchema-instance", "type",
                    "SignatureType", xmlWriter);
            }
        }

        if (localId != null) {
            writeAttribute("", "Id",
                org.apache.axis2.databinding.utils.ConverterUtil.convertToString(
                    localId), xmlWriter);
        }

        if (localSignedInfoTracker) {
            if (localSignedInfo == null) {
                throw new org.apache.axis2.databinding.ADBException(
                    "SignedInfo cannot be null!!");
            }

            localSignedInfo.serialize(new javax.xml.namespace.QName(
                    "http://www.w3.org/2000/09/xmldsig#", "SignedInfo"),
                xmlWriter);
        }

        if (localSignatureValueTracker) {
            if (localSignatureValue == null) {
                throw new org.apache.axis2.databinding.ADBException(
                    "SignatureValue cannot be null!!");
            }

            localSignatureValue.serialize(new javax.xml.namespace.QName(
                    "http://www.w3.org/2000/09/xmldsig#", "SignatureValue"),
                xmlWriter);
        }

        if (localKeyInfoTracker) {
            if (localKeyInfo == null) {
                throw new org.apache.axis2.databinding.ADBException(
                    "KeyInfo cannot be null!!");
            }

            localKeyInfo.serialize(new javax.xml.namespace.QName(
                    "http://www.w3.org/2000/09/xmldsig#", "KeyInfo"), xmlWriter);
        }

        if (localObjectTracker) {
            if (localObject != null) {
                for (int i = 0; i < localObject.length; i++) {
                    if (localObject[i] != null) {
                        localObject[i].serialize(new javax.xml.namespace.QName(
                                "http://www.w3.org/2000/09/xmldsig#", "Object"),
                            xmlWriter);
                    } else {
                        // we don't have to do any thing since minOccures is zero
                    }
                }
            } else {
                throw new org.apache.axis2.databinding.ADBException(
                    "Object cannot be null!!");
            }
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

        if (localSignedInfoTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.w3.org/2000/09/xmldsig#", "SignedInfo"));

            if (localSignedInfo == null) {
                throw new org.apache.axis2.databinding.ADBException(
                    "SignedInfo cannot be null!!");
            }

            elementList.add(localSignedInfo);
        }

        if (localSignatureValueTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.w3.org/2000/09/xmldsig#", "SignatureValue"));

            if (localSignatureValue == null) {
                throw new org.apache.axis2.databinding.ADBException(
                    "SignatureValue cannot be null!!");
            }

            elementList.add(localSignatureValue);
        }

        if (localKeyInfoTracker) {
            elementList.add(new javax.xml.namespace.QName(
                    "http://www.w3.org/2000/09/xmldsig#", "KeyInfo"));

            if (localKeyInfo == null) {
                throw new org.apache.axis2.databinding.ADBException(
                    "KeyInfo cannot be null!!");
            }

            elementList.add(localKeyInfo);
        }

        if (localObjectTracker) {
            if (localObject != null) {
                for (int i = 0; i < localObject.length; i++) {
                    if (localObject[i] != null) {
                        elementList.add(new javax.xml.namespace.QName(
                                "http://www.w3.org/2000/09/xmldsig#", "Object"));
                        elementList.add(localObject[i]);
                    } else {
                        // nothing to do
                    }
                }
            } else {
                throw new org.apache.axis2.databinding.ADBException(
                    "Object cannot be null!!");
            }
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
        public static SignatureType parse(
            javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
            SignatureType object = new SignatureType();

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

                        if (!"SignatureType".equals(type)) {
                            //find namespace for the prefix
                            java.lang.String nsUri = reader.getNamespaceContext()
                                                           .getNamespaceURI(nsPrefix);

                            return (SignatureType) org.w3.www._2000._09.xmldsig.ExtensionMapper.getTypeObject(nsUri,
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

                reader.next();

                java.util.ArrayList list4 = new java.util.ArrayList();

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.w3.org/2000/09/xmldsig#", "SignedInfo").equals(
                            reader.getName())) {
                    object.setSignedInfo(org.w3.www._2000._09.xmldsig.SignedInfoType.Factory.parse(
                            reader));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.w3.org/2000/09/xmldsig#",
                            "SignatureValue").equals(reader.getName())) {
                    object.setSignatureValue(org.w3.www._2000._09.xmldsig.SignatureValueType.Factory.parse(
                            reader));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.w3.org/2000/09/xmldsig#", "KeyInfo").equals(
                            reader.getName())) {
                    object.setKeyInfo(org.w3.www._2000._09.xmldsig.KeyInfoType.Factory.parse(
                            reader));

                    reader.next();
                } // End of if for expected property start element

                else {
                }

                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                if (reader.isStartElement() &&
                        new javax.xml.namespace.QName(
                            "http://www.w3.org/2000/09/xmldsig#", "Object").equals(
                            reader.getName())) {
                    // Process the array and step past its final element's end.
                    list4.add(org.w3.www._2000._09.xmldsig.ObjectType.Factory.parse(
                            reader));

                    //loop until we find a start element that is not part of this array
                    boolean loopDone4 = false;

                    while (!loopDone4) {
                        // We should be at the end element, but make sure
                        while (!reader.isEndElement())
                            reader.next();

                        // Step out of this element
                        reader.next();

                        // Step to next element event.
                        while (!reader.isStartElement() &&
                                !reader.isEndElement())
                            reader.next();

                        if (reader.isEndElement()) {
                            //two continuous end elements means we are exiting the xml structure
                            loopDone4 = true;
                        } else {
                            if (new javax.xml.namespace.QName(
                                        "http://www.w3.org/2000/09/xmldsig#",
                                        "Object").equals(reader.getName())) {
                                list4.add(org.w3.www._2000._09.xmldsig.ObjectType.Factory.parse(
                                        reader));
                            } else {
                                loopDone4 = true;
                            }
                        }
                    }

                    // call the converter utility  to convert and set the array
                    object.setObject((org.w3.www._2000._09.xmldsig.ObjectType[]) org.apache.axis2.databinding.utils.ConverterUtil.convertToArray(
                            org.w3.www._2000._09.xmldsig.ObjectType.class, list4));
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
