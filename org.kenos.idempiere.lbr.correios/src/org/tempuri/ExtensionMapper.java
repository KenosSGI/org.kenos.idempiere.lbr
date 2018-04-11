
/**
 * ExtensionMapper.java This file was auto-generated from WSDL by the Apache
 * Axis2 version: 1.6.2 Built on : Apr 17, 2012 (05:34:40 IST)
 */

package org.tempuri;

/**
 * ExtensionMapper class
 */

public class ExtensionMapper
{

	public static java.lang.Object getTypeObject(java.lang.String namespaceURI,
			java.lang.String typeName, javax.xml.stream.XMLStreamReader reader)
			throws java.lang.Exception
	{

		if ("http://tempuri.org/".equals(namespaceURI) && "cObjeto".equals(typeName))
		{

			return org.tempuri.CObjeto.Factory.parse(reader);

		}

		if ("http://tempuri.org/".equals(namespaceURI)
				&& "ArrayOfCServicosCalculo".equals(typeName))
		{

			return org.tempuri.ArrayOfCServicosCalculo.Factory.parse(reader);

		}

		if ("http://tempuri.org/".equals(namespaceURI)
				&& "cResultadoServicos".equals(typeName))
		{

			return org.tempuri.CResultadoServicos.Factory.parse(reader);

		}

		if ("http://tempuri.org/".equals(namespaceURI)
				&& "cServicosCalculo".equals(typeName))
		{

			return org.tempuri.CServicosCalculo.Factory.parse(reader);

		}

		if ("http://tempuri.org/".equals(namespaceURI)
				&& "ArrayOfCServico".equals(typeName))
		{

			return org.tempuri.ArrayOfCServico.Factory.parse(reader);

		}

		if ("http://tempuri.org/".equals(namespaceURI)
				&& "cResultado".equals(typeName))
		{

			return org.tempuri.CResultado.Factory.parse(reader);

		}

		if ("http://tempuri.org/".equals(namespaceURI)
				&& "cResultadoObjeto".equals(typeName))
		{

			return org.tempuri.CResultadoObjeto.Factory.parse(reader);

		}

		if ("http://tempuri.org/".equals(namespaceURI)
				&& "cServico".equals(typeName))
		{

			return org.tempuri.CServico.Factory.parse(reader);

		}

		if ("http://tempuri.org/".equals(namespaceURI)
				&& "ArrayOfCObjeto".equals(typeName))
		{

			return org.tempuri.ArrayOfCObjeto.Factory.parse(reader);

		}

		throw new org.apache.axis2.databinding.ADBException(
				"Unsupported type " + namespaceURI + " " + typeName);
	}

}
