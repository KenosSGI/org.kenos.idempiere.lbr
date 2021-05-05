/**
 * ExtensionMapper.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.4  Built on : Dec 28, 2015 (10:04:10 GMT)
 */
package br.gov.sp.indaiatuba.nfse;


/**
 *  ExtensionMapper class
 */
@SuppressWarnings({"unchecked",
    "unused"
})
public class ExtensionMapper {
    public static java.lang.Object getTypeObject(
        java.lang.String namespaceURI, java.lang.String typeName,
        javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
        if ("http://nfse.indaiatuba.sp.gov.br".equals(namespaceURI) &&
                "output".equals(typeName)) {
            return br.gov.sp.indaiatuba.nfse.Output.Factory.parse(reader);
        }

        if ("http://nfse.indaiatuba.sp.gov.br".equals(namespaceURI) &&
                "input".equals(typeName)) {
            return br.gov.sp.indaiatuba.nfse.Input.Factory.parse(reader);
        }

        throw new org.apache.axis2.databinding.ADBException("Unsupported type " +
            namespaceURI + " " + typeName);
    }
}
