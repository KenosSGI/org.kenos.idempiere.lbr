
/**
 * CalcPrecoPrazoWSStub.java This file was auto-generated from WSDL by the
 * Apache Axis2 version: 1.6.2 Built on : Apr 17, 2012 (05:33:49 IST)
 */
package org.kenos.idempiere.lbr.correios.api;

/*
 * CalcPrecoPrazoWSStub java implementation
 */

@SuppressWarnings({"rawtypes","unchecked","unused"})
public class CalcPrecoPrazoWSStub extends org.apache.axis2.client.Stub
		implements CalcPrecoPrazoWS
{
	protected org.apache.axis2.description.AxisOperation[] _operations;

	// hashmaps to keep the fault mapping
	private java.util.HashMap faultExceptionNameMap = new java.util.HashMap();
	private java.util.HashMap faultExceptionClassNameMap = new java.util.HashMap();
	private java.util.HashMap faultMessageMap = new java.util.HashMap();

	private static int counter = 0;

	private static synchronized java.lang.String getUniqueSuffix()
	{
		// reset the counter if it is greater than 99999
		if (counter > 99999)
		{
			counter = 0;
		}
		counter = counter + 1;
		return java.lang.Long.toString(java.lang.System.currentTimeMillis()) + "_"
				+ counter;
	}

	private void populateAxisService() throws org.apache.axis2.AxisFault
	{

		// creating the Service with a unique name
		_service = new org.apache.axis2.description.AxisService(
				"CalcPrecoPrazoWS" + getUniqueSuffix());
		addAnonymousOperations();

		// creating the operations
		org.apache.axis2.description.AxisOperation __operation;

		_operations = new org.apache.axis2.description.AxisOperation[11];

		__operation = new org.apache.axis2.description.OutInAxisOperation();

		__operation.setName(new javax.xml.namespace.QName("http://tempuri.org/",
				"calcPrecoPrazoData"));
		_service.addOperation(__operation);

		_operations[0] = __operation;

		__operation = new org.apache.axis2.description.OutInAxisOperation();

		__operation.setName(new javax.xml.namespace.QName("http://tempuri.org/",
				"calcPrecoPrazoRestricao"));
		_service.addOperation(__operation);

		_operations[1] = __operation;

		__operation = new org.apache.axis2.description.OutInAxisOperation();

		__operation.setName(new javax.xml.namespace.QName("http://tempuri.org/",
				"calcPrazoRestricao"));
		_service.addOperation(__operation);

		_operations[2] = __operation;

		__operation = new org.apache.axis2.description.OutInAxisOperation();

		__operation.setName(new javax.xml.namespace.QName("http://tempuri.org/",
				"calcPrecoFAC"));
		_service.addOperation(__operation);

		_operations[3] = __operation;

		__operation = new org.apache.axis2.description.OutInAxisOperation();

		__operation.setName(
				new javax.xml.namespace.QName("http://tempuri.org/", "calcPreco"));
		_service.addOperation(__operation);

		_operations[4] = __operation;

		__operation = new org.apache.axis2.description.OutInAxisOperation();

		__operation.setName(new javax.xml.namespace.QName("http://tempuri.org/",
				"calcPrecoData"));
		_service.addOperation(__operation);

		_operations[5] = __operation;

		__operation = new org.apache.axis2.description.OutInAxisOperation();

		__operation.setName(
				new javax.xml.namespace.QName("http://tempuri.org/", "calcPrazo"));
		_service.addOperation(__operation);

		_operations[6] = __operation;

		__operation = new org.apache.axis2.description.OutInAxisOperation();

		__operation.setName(new javax.xml.namespace.QName("http://tempuri.org/",
				"calcPrazoData"));
		_service.addOperation(__operation);

		_operations[7] = __operation;

		__operation = new org.apache.axis2.description.OutInAxisOperation();

		__operation.setName(new javax.xml.namespace.QName("http://tempuri.org/",
				"listaServicos"));
		_service.addOperation(__operation);

		_operations[8] = __operation;

		__operation = new org.apache.axis2.description.OutInAxisOperation();

		__operation.setName(new javax.xml.namespace.QName("http://tempuri.org/",
				"calcPrazoObjeto"));
		_service.addOperation(__operation);

		_operations[9] = __operation;

		__operation = new org.apache.axis2.description.OutInAxisOperation();

		__operation.setName(new javax.xml.namespace.QName("http://tempuri.org/",
				"calcPrecoPrazo"));
		_service.addOperation(__operation);

		_operations[10] = __operation;

	}

	// populates the faults
	private void populateFaults()
	{

	}

	/**
	 * Constructor that takes in a configContext
	 */

	public CalcPrecoPrazoWSStub(
			org.apache.axis2.context.ConfigurationContext configurationContext,
			java.lang.String targetEndpoint) throws org.apache.axis2.AxisFault
	{
		this(configurationContext, targetEndpoint, false);
	}

	/**
	 * Constructor that takes in a configContext and useseperate listner
	 */
	public CalcPrecoPrazoWSStub(
			org.apache.axis2.context.ConfigurationContext configurationContext,
			java.lang.String targetEndpoint, boolean useSeparateListener)
			throws org.apache.axis2.AxisFault
	{
		// To populate AxisService
		populateAxisService();
		populateFaults();

		_serviceClient = new org.apache.axis2.client.ServiceClient(
				configurationContext, _service);

		_serviceClient.getOptions().setTo(
				new org.apache.axis2.addressing.EndpointReference(targetEndpoint));
		_serviceClient.getOptions().setUseSeparateListener(useSeparateListener);

		// Set the soap version
		_serviceClient.getOptions().setSoapVersionURI(
				org.apache.axiom.soap.SOAP12Constants.SOAP_ENVELOPE_NAMESPACE_URI);

	}

	/**
	 * Default Constructor
	 */
	public CalcPrecoPrazoWSStub(
			org.apache.axis2.context.ConfigurationContext configurationContext)
			throws org.apache.axis2.AxisFault
	{

		this(configurationContext,
				"http://ws.correios.com.br/calculador/CalcPrecoPrazo.asmx");

	}

	/**
	 * Default Constructor
	 */
	public CalcPrecoPrazoWSStub() throws org.apache.axis2.AxisFault
	{

		this("http://ws.correios.com.br/calculador/CalcPrecoPrazo.asmx");

	}

	/**
	 * Constructor taking the target endpoint
	 */
	public CalcPrecoPrazoWSStub(java.lang.String targetEndpoint)
			throws org.apache.axis2.AxisFault
	{
		this(null, targetEndpoint);
	}

	/**
	 * Auto generated method signature Calcula o preço e o prazo com uma data
	 * especificada
	 * 
	 * @see org.kenos.idempiere.lbr.correios.api.CalcPrecoPrazoWS#calcPrecoPrazoData
	 * @param calcPrecoPrazoData71
	 */

	public org.tempuri.CResultado calcPrecoPrazoData(

			java.lang.String nCdEmpresa72, java.lang.String sDsSenha73,
			java.lang.String nCdServico74, java.lang.String sCepOrigem75,
			java.lang.String sCepDestino76, java.lang.String nVlPeso77,
			int nCdFormato78, java.math.BigDecimal nVlComprimento79,
			java.math.BigDecimal nVlAltura80, java.math.BigDecimal nVlLargura81,
			java.math.BigDecimal nVlDiametro82, java.lang.String sCdMaoPropria83,
			java.math.BigDecimal nVlValorDeclarado84,
			java.lang.String sCdAvisoRecebimento85, java.lang.String sDtCalculo86)

			throws java.rmi.RemoteException

	{
		org.apache.axis2.context.MessageContext _messageContext = null;
		try
		{
			org.apache.axis2.client.OperationClient _operationClient = _serviceClient
					.createClient(_operations[0].getName());
			_operationClient.getOptions()
					.setAction("http://tempuri.org/CalcPrecoPrazoData");
			_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(_operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
					"&");

			// create a message context
			_messageContext = new org.apache.axis2.context.MessageContext();

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;
			org.tempuri.CalcPrecoPrazoData dummyWrappedType = null;
			env = toEnvelope(
					getFactory(_operationClient.getOptions().getSoapVersionURI()),
					nCdEmpresa72, sDsSenha73, nCdServico74, sCepOrigem75,
					sCepDestino76, nVlPeso77, nCdFormato78, nVlComprimento79,
					nVlAltura80, nVlLargura81, nVlDiametro82, sCdMaoPropria83,
					nVlValorDeclarado84, sCdAvisoRecebimento85, sDtCalculo86,
					dummyWrappedType, optimizeContent(new javax.xml.namespace.QName(
							"http://tempuri.org/", "calcPrecoPrazoData")));

			// adding SOAP soap_headers
			_serviceClient.addHeadersToEnvelope(env);
			// set the message context with that soap envelope
			_messageContext.setEnvelope(env);

			// add the message contxt to the operation client
			_operationClient.addMessageContext(_messageContext);

			// execute the operation client
			_operationClient.execute(true);

			org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient
					.getMessageContext(
							org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
			org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext
					.getEnvelope();

			java.lang.Object object = fromOM(_returnEnv.getBody().getFirstElement(),
					org.tempuri.CalcPrecoPrazoDataResponse.class,
					getEnvelopeNamespaces(_returnEnv));

			return getCalcPrecoPrazoDataResponseCalcPrecoPrazoDataResult(
					(org.tempuri.CalcPrecoPrazoDataResponse) object);

		}
		catch (org.apache.axis2.AxisFault f)
		{

			org.apache.axiom.om.OMElement faultElt = f.getDetail();
			if (faultElt != null)
			{
				if (faultExceptionNameMap.containsKey(
						new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
								"CalcPrecoPrazoData")))
				{
					// make the fault by reflection
					try
					{
						java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "CalcPrecoPrazoData"));
						java.lang.Class exceptionClass = java.lang.Class
								.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor
								.newInstance(f.getMessage());
						// message class
						java.lang.String messageClassName = (java.lang.String) faultMessageMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "CalcPrecoPrazoData"));
						java.lang.Class messageClass = java.lang.Class
								.forName(messageClassName);
						java.lang.Object messageObject = fromOM(faultElt,
								messageClass, null);
						java.lang.reflect.Method m = exceptionClass.getMethod(
								"setFaultMessage",
								new java.lang.Class[] { messageClass });
						m.invoke(ex, new java.lang.Object[] { messageObject });

						throw new java.rmi.RemoteException(ex.getMessage(), ex);
					}
					catch (java.lang.ClassCastException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.ClassNotFoundException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.NoSuchMethodException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.reflect.InvocationTargetException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.IllegalAccessException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.InstantiationException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
				}
				else
				{
					throw f;
				}
			}
			else
			{
				throw f;
			}
		}
		finally
		{
			if (_messageContext.getTransportOut() != null)
			{
				_messageContext.getTransportOut().getSender()
						.cleanup(_messageContext);
			}
		}
	}

	/**
	 * Auto generated method signature Calcula o preço e o prazo considerando as
	 * restrições de entrega
	 * 
	 * @see org.kenos.idempiere.lbr.correios.api.CalcPrecoPrazoWS#calcPrecoPrazoRestricao
	 * @param calcPrecoPrazoRestricao89
	 */

	public org.tempuri.CResultado calcPrecoPrazoRestricao(

			java.lang.String nCdEmpresa90, java.lang.String sDsSenha91,
			java.lang.String nCdServico92, java.lang.String sCepOrigem93,
			java.lang.String sCepDestino94, java.lang.String nVlPeso95,
			int nCdFormato96, java.math.BigDecimal nVlComprimento97,
			java.math.BigDecimal nVlAltura98, java.math.BigDecimal nVlLargura99,
			java.math.BigDecimal nVlDiametro100, java.lang.String sCdMaoPropria101,
			java.math.BigDecimal nVlValorDeclarado102,
			java.lang.String sCdAvisoRecebimento103, java.lang.String sDtCalculo104)

			throws java.rmi.RemoteException

	{
		org.apache.axis2.context.MessageContext _messageContext = null;
		try
		{
			org.apache.axis2.client.OperationClient _operationClient = _serviceClient
					.createClient(_operations[1].getName());
			_operationClient.getOptions()
					.setAction("http://tempuri.org/CalcPrecoPrazoRestricao");
			_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(_operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
					"&");

			// create a message context
			_messageContext = new org.apache.axis2.context.MessageContext();

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;
			org.tempuri.CalcPrecoPrazoRestricao dummyWrappedType = null;
			env = toEnvelope(
					getFactory(_operationClient.getOptions().getSoapVersionURI()),
					nCdEmpresa90, sDsSenha91, nCdServico92, sCepOrigem93,
					sCepDestino94, nVlPeso95, nCdFormato96, nVlComprimento97,
					nVlAltura98, nVlLargura99, nVlDiametro100, sCdMaoPropria101,
					nVlValorDeclarado102, sCdAvisoRecebimento103, sDtCalculo104,
					dummyWrappedType, optimizeContent(new javax.xml.namespace.QName(
							"http://tempuri.org/", "calcPrecoPrazoRestricao")));

			// adding SOAP soap_headers
			_serviceClient.addHeadersToEnvelope(env);
			// set the message context with that soap envelope
			_messageContext.setEnvelope(env);

			// add the message contxt to the operation client
			_operationClient.addMessageContext(_messageContext);

			// execute the operation client
			_operationClient.execute(true);

			org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient
					.getMessageContext(
							org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
			org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext
					.getEnvelope();

			java.lang.Object object = fromOM(_returnEnv.getBody().getFirstElement(),
					org.tempuri.CalcPrecoPrazoRestricaoResponse.class,
					getEnvelopeNamespaces(_returnEnv));

			return getCalcPrecoPrazoRestricaoResponseCalcPrecoPrazoRestricaoResult(
					(org.tempuri.CalcPrecoPrazoRestricaoResponse) object);

		}
		catch (org.apache.axis2.AxisFault f)
		{

			org.apache.axiom.om.OMElement faultElt = f.getDetail();
			if (faultElt != null)
			{
				if (faultExceptionNameMap.containsKey(
						new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
								"CalcPrecoPrazoRestricao")))
				{
					// make the fault by reflection
					try
					{
						java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(),
										"CalcPrecoPrazoRestricao"));
						java.lang.Class exceptionClass = java.lang.Class
								.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor
								.newInstance(f.getMessage());
						// message class
						java.lang.String messageClassName = (java.lang.String) faultMessageMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(),
										"CalcPrecoPrazoRestricao"));
						java.lang.Class messageClass = java.lang.Class
								.forName(messageClassName);
						java.lang.Object messageObject = fromOM(faultElt,
								messageClass, null);
						java.lang.reflect.Method m = exceptionClass.getMethod(
								"setFaultMessage",
								new java.lang.Class[] { messageClass });
						m.invoke(ex, new java.lang.Object[] { messageObject });

						throw new java.rmi.RemoteException(ex.getMessage(), ex);
					}
					catch (java.lang.ClassCastException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.ClassNotFoundException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.NoSuchMethodException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.reflect.InvocationTargetException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.IllegalAccessException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.InstantiationException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
				}
				else
				{
					throw f;
				}
			}
			else
			{
				throw f;
			}
		}
		finally
		{
			if (_messageContext.getTransportOut() != null)
			{
				_messageContext.getTransportOut().getSender()
						.cleanup(_messageContext);
			}
		}
	}

	/**
	 * Auto generated method signature Calcula o prazo considerando restrição de
	 * entrega
	 * 
	 * @see org.kenos.idempiere.lbr.correios.api.CalcPrecoPrazoWS#calcPrazoRestricao
	 * @param calcPrazoRestricao107
	 */

	public org.tempuri.CResultado calcPrazoRestricao(

			java.lang.String nCdServico108, java.lang.String sCepOrigem109,
			java.lang.String sCepDestino110, java.lang.String sDtCalculo111)

			throws java.rmi.RemoteException

	{
		org.apache.axis2.context.MessageContext _messageContext = null;
		try
		{
			org.apache.axis2.client.OperationClient _operationClient = _serviceClient
					.createClient(_operations[2].getName());
			_operationClient.getOptions()
					.setAction("http://tempuri.org/CalcPrazoRestricao");
			_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(_operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
					"&");

			// create a message context
			_messageContext = new org.apache.axis2.context.MessageContext();

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;
			org.tempuri.CalcPrazoRestricao dummyWrappedType = null;
			env = toEnvelope(
					getFactory(_operationClient.getOptions().getSoapVersionURI()),
					nCdServico108, sCepOrigem109, sCepDestino110, sDtCalculo111,
					dummyWrappedType, optimizeContent(new javax.xml.namespace.QName(
							"http://tempuri.org/", "calcPrazoRestricao")));

			// adding SOAP soap_headers
			_serviceClient.addHeadersToEnvelope(env);
			// set the message context with that soap envelope
			_messageContext.setEnvelope(env);

			// add the message contxt to the operation client
			_operationClient.addMessageContext(_messageContext);

			// execute the operation client
			_operationClient.execute(true);

			org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient
					.getMessageContext(
							org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
			org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext
					.getEnvelope();

			java.lang.Object object = fromOM(_returnEnv.getBody().getFirstElement(),
					org.tempuri.CalcPrazoRestricaoResponse.class,
					getEnvelopeNamespaces(_returnEnv));

			return getCalcPrazoRestricaoResponseCalcPrazoRestricaoResult(
					(org.tempuri.CalcPrazoRestricaoResponse) object);

		}
		catch (org.apache.axis2.AxisFault f)
		{

			org.apache.axiom.om.OMElement faultElt = f.getDetail();
			if (faultElt != null)
			{
				if (faultExceptionNameMap.containsKey(
						new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
								"CalcPrazoRestricao")))
				{
					// make the fault by reflection
					try
					{
						java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "CalcPrazoRestricao"));
						java.lang.Class exceptionClass = java.lang.Class
								.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor
								.newInstance(f.getMessage());
						// message class
						java.lang.String messageClassName = (java.lang.String) faultMessageMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "CalcPrazoRestricao"));
						java.lang.Class messageClass = java.lang.Class
								.forName(messageClassName);
						java.lang.Object messageObject = fromOM(faultElt,
								messageClass, null);
						java.lang.reflect.Method m = exceptionClass.getMethod(
								"setFaultMessage",
								new java.lang.Class[] { messageClass });
						m.invoke(ex, new java.lang.Object[] { messageObject });

						throw new java.rmi.RemoteException(ex.getMessage(), ex);
					}
					catch (java.lang.ClassCastException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.ClassNotFoundException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.NoSuchMethodException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.reflect.InvocationTargetException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.IllegalAccessException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.InstantiationException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
				}
				else
				{
					throw f;
				}
			}
			else
			{
				throw f;
			}
		}
		finally
		{
			if (_messageContext.getTransportOut() != null)
			{
				_messageContext.getTransportOut().getSender()
						.cleanup(_messageContext);
			}
		}
	}

	/**
	 * Auto generated method signature Calcula os preços dos serviços FAC
	 * 
	 * @see org.kenos.idempiere.lbr.correios.api.CalcPrecoPrazoWS#calcPrecoFAC
	 * @param calcPrecoFAC114
	 */

	public org.tempuri.CResultado calcPrecoFAC(

			java.lang.String nCdServico115, java.lang.String nVlPeso116,
			java.lang.String strDataCalculo117)

			throws java.rmi.RemoteException

	{
		org.apache.axis2.context.MessageContext _messageContext = null;
		try
		{
			org.apache.axis2.client.OperationClient _operationClient = _serviceClient
					.createClient(_operations[3].getName());
			_operationClient.getOptions()
					.setAction("http://tempuri.org/CalcPrecoFAC");
			_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(_operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
					"&");

			// create a message context
			_messageContext = new org.apache.axis2.context.MessageContext();

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;
			org.tempuri.CalcPrecoFAC dummyWrappedType = null;
			env = toEnvelope(
					getFactory(_operationClient.getOptions().getSoapVersionURI()),
					nCdServico115, nVlPeso116, strDataCalculo117, dummyWrappedType,
					optimizeContent(new javax.xml.namespace.QName(
							"http://tempuri.org/", "calcPrecoFAC")));

			// adding SOAP soap_headers
			_serviceClient.addHeadersToEnvelope(env);
			// set the message context with that soap envelope
			_messageContext.setEnvelope(env);

			// add the message contxt to the operation client
			_operationClient.addMessageContext(_messageContext);

			// execute the operation client
			_operationClient.execute(true);

			org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient
					.getMessageContext(
							org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
			org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext
					.getEnvelope();

			java.lang.Object object = fromOM(_returnEnv.getBody().getFirstElement(),
					org.tempuri.CalcPrecoFACResponse.class,
					getEnvelopeNamespaces(_returnEnv));

			return getCalcPrecoFACResponseCalcPrecoFACResult(
					(org.tempuri.CalcPrecoFACResponse) object);

		}
		catch (org.apache.axis2.AxisFault f)
		{

			org.apache.axiom.om.OMElement faultElt = f.getDetail();
			if (faultElt != null)
			{
				if (faultExceptionNameMap.containsKey(
						new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
								"CalcPrecoFAC")))
				{
					// make the fault by reflection
					try
					{
						java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "CalcPrecoFAC"));
						java.lang.Class exceptionClass = java.lang.Class
								.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor
								.newInstance(f.getMessage());
						// message class
						java.lang.String messageClassName = (java.lang.String) faultMessageMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "CalcPrecoFAC"));
						java.lang.Class messageClass = java.lang.Class
								.forName(messageClassName);
						java.lang.Object messageObject = fromOM(faultElt,
								messageClass, null);
						java.lang.reflect.Method m = exceptionClass.getMethod(
								"setFaultMessage",
								new java.lang.Class[] { messageClass });
						m.invoke(ex, new java.lang.Object[] { messageObject });

						throw new java.rmi.RemoteException(ex.getMessage(), ex);
					}
					catch (java.lang.ClassCastException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.ClassNotFoundException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.NoSuchMethodException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.reflect.InvocationTargetException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.IllegalAccessException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.InstantiationException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
				}
				else
				{
					throw f;
				}
			}
			else
			{
				throw f;
			}
		}
		finally
		{
			if (_messageContext.getTransportOut() != null)
			{
				_messageContext.getTransportOut().getSender()
						.cleanup(_messageContext);
			}
		}
	}

	/**
	 * Auto generated method signature Calcula somente o preço com a data atual
	 * 
	 * @see org.kenos.idempiere.lbr.correios.api.CalcPrecoPrazoWS#calcPreco
	 * @param calcPreco120
	 */

	public org.tempuri.CResultado calcPreco(

			java.lang.String nCdEmpresa121, java.lang.String sDsSenha122,
			java.lang.String nCdServico123, java.lang.String sCepOrigem124,
			java.lang.String sCepDestino125, java.lang.String nVlPeso126,
			int nCdFormato127, java.math.BigDecimal nVlComprimento128,
			java.math.BigDecimal nVlAltura129, java.math.BigDecimal nVlLargura130,
			java.math.BigDecimal nVlDiametro131, java.lang.String sCdMaoPropria132,
			java.math.BigDecimal nVlValorDeclarado133,
			java.lang.String sCdAvisoRecebimento134)

			throws java.rmi.RemoteException

	{
		org.apache.axis2.context.MessageContext _messageContext = null;
		try
		{
			org.apache.axis2.client.OperationClient _operationClient = _serviceClient
					.createClient(_operations[4].getName());
			_operationClient.getOptions().setAction("http://tempuri.org/CalcPreco");
			_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(_operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
					"&");

			// create a message context
			_messageContext = new org.apache.axis2.context.MessageContext();

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;
			org.tempuri.CalcPreco dummyWrappedType = null;
			env = toEnvelope(
					getFactory(_operationClient.getOptions().getSoapVersionURI()),
					nCdEmpresa121, sDsSenha122, nCdServico123, sCepOrigem124,
					sCepDestino125, nVlPeso126, nCdFormato127, nVlComprimento128,
					nVlAltura129, nVlLargura130, nVlDiametro131, sCdMaoPropria132,
					nVlValorDeclarado133, sCdAvisoRecebimento134, dummyWrappedType,
					optimizeContent(new javax.xml.namespace.QName(
							"http://tempuri.org/", "calcPreco")));

			// adding SOAP soap_headers
			_serviceClient.addHeadersToEnvelope(env);
			// set the message context with that soap envelope
			_messageContext.setEnvelope(env);

			// add the message contxt to the operation client
			_operationClient.addMessageContext(_messageContext);

			// execute the operation client
			_operationClient.execute(true);

			org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient
					.getMessageContext(
							org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
			org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext
					.getEnvelope();

			java.lang.Object object = fromOM(_returnEnv.getBody().getFirstElement(),
					org.tempuri.CalcPrecoResponse.class,
					getEnvelopeNamespaces(_returnEnv));

			return getCalcPrecoResponseCalcPrecoResult(
					(org.tempuri.CalcPrecoResponse) object);

		}
		catch (org.apache.axis2.AxisFault f)
		{

			org.apache.axiom.om.OMElement faultElt = f.getDetail();
			if (faultElt != null)
			{
				if (faultExceptionNameMap.containsKey(
						new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
								"CalcPreco")))
				{
					// make the fault by reflection
					try
					{
						java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "CalcPreco"));
						java.lang.Class exceptionClass = java.lang.Class
								.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor
								.newInstance(f.getMessage());
						// message class
						java.lang.String messageClassName = (java.lang.String) faultMessageMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "CalcPreco"));
						java.lang.Class messageClass = java.lang.Class
								.forName(messageClassName);
						java.lang.Object messageObject = fromOM(faultElt,
								messageClass, null);
						java.lang.reflect.Method m = exceptionClass.getMethod(
								"setFaultMessage",
								new java.lang.Class[] { messageClass });
						m.invoke(ex, new java.lang.Object[] { messageObject });

						throw new java.rmi.RemoteException(ex.getMessage(), ex);
					}
					catch (java.lang.ClassCastException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.ClassNotFoundException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.NoSuchMethodException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.reflect.InvocationTargetException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.IllegalAccessException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.InstantiationException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
				}
				else
				{
					throw f;
				}
			}
			else
			{
				throw f;
			}
		}
		finally
		{
			if (_messageContext.getTransportOut() != null)
			{
				_messageContext.getTransportOut().getSender()
						.cleanup(_messageContext);
			}
		}
	}

	/**
	 * Auto generated method signature Calcula somente o preço com uma data
	 * especificada
	 * 
	 * @see org.kenos.idempiere.lbr.correios.api.CalcPrecoPrazoWS#calcPrecoData
	 * @param calcPrecoData137
	 */

	public org.tempuri.CResultado calcPrecoData(

			java.lang.String nCdEmpresa138, java.lang.String sDsSenha139,
			java.lang.String nCdServico140, java.lang.String sCepOrigem141,
			java.lang.String sCepDestino142, java.lang.String nVlPeso143,
			int nCdFormato144, java.math.BigDecimal nVlComprimento145,
			java.math.BigDecimal nVlAltura146, java.math.BigDecimal nVlLargura147,
			java.math.BigDecimal nVlDiametro148, java.lang.String sCdMaoPropria149,
			java.math.BigDecimal nVlValorDeclarado150,
			java.lang.String sCdAvisoRecebimento151, java.lang.String sDtCalculo152)

			throws java.rmi.RemoteException

	{
		org.apache.axis2.context.MessageContext _messageContext = null;
		try
		{
			org.apache.axis2.client.OperationClient _operationClient = _serviceClient
					.createClient(_operations[5].getName());
			_operationClient.getOptions()
					.setAction("http://tempuri.org/CalcPrecoData");
			_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(_operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
					"&");

			// create a message context
			_messageContext = new org.apache.axis2.context.MessageContext();

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;
			org.tempuri.CalcPrecoData dummyWrappedType = null;
			env = toEnvelope(
					getFactory(_operationClient.getOptions().getSoapVersionURI()),
					nCdEmpresa138, sDsSenha139, nCdServico140, sCepOrigem141,
					sCepDestino142, nVlPeso143, nCdFormato144, nVlComprimento145,
					nVlAltura146, nVlLargura147, nVlDiametro148, sCdMaoPropria149,
					nVlValorDeclarado150, sCdAvisoRecebimento151, sDtCalculo152,
					dummyWrappedType, optimizeContent(new javax.xml.namespace.QName(
							"http://tempuri.org/", "calcPrecoData")));

			// adding SOAP soap_headers
			_serviceClient.addHeadersToEnvelope(env);
			// set the message context with that soap envelope
			_messageContext.setEnvelope(env);

			// add the message contxt to the operation client
			_operationClient.addMessageContext(_messageContext);

			// execute the operation client
			_operationClient.execute(true);

			org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient
					.getMessageContext(
							org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
			org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext
					.getEnvelope();

			java.lang.Object object = fromOM(_returnEnv.getBody().getFirstElement(),
					org.tempuri.CalcPrecoDataResponse.class,
					getEnvelopeNamespaces(_returnEnv));

			return getCalcPrecoDataResponseCalcPrecoDataResult(
					(org.tempuri.CalcPrecoDataResponse) object);

		}
		catch (org.apache.axis2.AxisFault f)
		{

			org.apache.axiom.om.OMElement faultElt = f.getDetail();
			if (faultElt != null)
			{
				if (faultExceptionNameMap.containsKey(
						new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
								"CalcPrecoData")))
				{
					// make the fault by reflection
					try
					{
						java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "CalcPrecoData"));
						java.lang.Class exceptionClass = java.lang.Class
								.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor
								.newInstance(f.getMessage());
						// message class
						java.lang.String messageClassName = (java.lang.String) faultMessageMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "CalcPrecoData"));
						java.lang.Class messageClass = java.lang.Class
								.forName(messageClassName);
						java.lang.Object messageObject = fromOM(faultElt,
								messageClass, null);
						java.lang.reflect.Method m = exceptionClass.getMethod(
								"setFaultMessage",
								new java.lang.Class[] { messageClass });
						m.invoke(ex, new java.lang.Object[] { messageObject });

						throw new java.rmi.RemoteException(ex.getMessage(), ex);
					}
					catch (java.lang.ClassCastException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.ClassNotFoundException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.NoSuchMethodException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.reflect.InvocationTargetException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.IllegalAccessException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.InstantiationException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
				}
				else
				{
					throw f;
				}
			}
			else
			{
				throw f;
			}
		}
		finally
		{
			if (_messageContext.getTransportOut() != null)
			{
				_messageContext.getTransportOut().getSender()
						.cleanup(_messageContext);
			}
		}
	}

	/**
	 * Auto generated method signature Calcula somente o prazo com a data atual
	 * 
	 * @see org.kenos.idempiere.lbr.correios.api.CalcPrecoPrazoWS#calcPrazo
	 * @param calcPrazo155
	 */

	public org.tempuri.CResultado calcPrazo(

			java.lang.String nCdServico156, java.lang.String sCepOrigem157,
			java.lang.String sCepDestino158)

			throws java.rmi.RemoteException

	{
		org.apache.axis2.context.MessageContext _messageContext = null;
		try
		{
			org.apache.axis2.client.OperationClient _operationClient = _serviceClient
					.createClient(_operations[6].getName());
			_operationClient.getOptions().setAction("http://tempuri.org/CalcPrazo");
			_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(_operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
					"&");

			// create a message context
			_messageContext = new org.apache.axis2.context.MessageContext();

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;
			org.tempuri.CalcPrazo dummyWrappedType = null;
			env = toEnvelope(
					getFactory(_operationClient.getOptions().getSoapVersionURI()),
					nCdServico156, sCepOrigem157, sCepDestino158, dummyWrappedType,
					optimizeContent(new javax.xml.namespace.QName(
							"http://tempuri.org/", "calcPrazo")));

			// adding SOAP soap_headers
			_serviceClient.addHeadersToEnvelope(env);
			// set the message context with that soap envelope
			_messageContext.setEnvelope(env);

			// add the message contxt to the operation client
			_operationClient.addMessageContext(_messageContext);

			// execute the operation client
			_operationClient.execute(true);

			org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient
					.getMessageContext(
							org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
			org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext
					.getEnvelope();

			java.lang.Object object = fromOM(_returnEnv.getBody().getFirstElement(),
					org.tempuri.CalcPrazoResponse.class,
					getEnvelopeNamespaces(_returnEnv));

			return getCalcPrazoResponseCalcPrazoResult(
					(org.tempuri.CalcPrazoResponse) object);

		}
		catch (org.apache.axis2.AxisFault f)
		{

			org.apache.axiom.om.OMElement faultElt = f.getDetail();
			if (faultElt != null)
			{
				if (faultExceptionNameMap.containsKey(
						new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
								"CalcPrazo")))
				{
					// make the fault by reflection
					try
					{
						java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "CalcPrazo"));
						java.lang.Class exceptionClass = java.lang.Class
								.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor
								.newInstance(f.getMessage());
						// message class
						java.lang.String messageClassName = (java.lang.String) faultMessageMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "CalcPrazo"));
						java.lang.Class messageClass = java.lang.Class
								.forName(messageClassName);
						java.lang.Object messageObject = fromOM(faultElt,
								messageClass, null);
						java.lang.reflect.Method m = exceptionClass.getMethod(
								"setFaultMessage",
								new java.lang.Class[] { messageClass });
						m.invoke(ex, new java.lang.Object[] { messageObject });

						throw new java.rmi.RemoteException(ex.getMessage(), ex);
					}
					catch (java.lang.ClassCastException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.ClassNotFoundException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.NoSuchMethodException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.reflect.InvocationTargetException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.IllegalAccessException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.InstantiationException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
				}
				else
				{
					throw f;
				}
			}
			else
			{
				throw f;
			}
		}
		finally
		{
			if (_messageContext.getTransportOut() != null)
			{
				_messageContext.getTransportOut().getSender()
						.cleanup(_messageContext);
			}
		}
	}

	/**
	 * Auto generated method signature Calcula somente o prazo com uma data
	 * especificada
	 * 
	 * @see org.kenos.idempiere.lbr.correios.api.CalcPrecoPrazoWS#calcPrazoData
	 * @param calcPrazoData161
	 */

	public org.tempuri.CResultado calcPrazoData(

			java.lang.String nCdServico162, java.lang.String sCepOrigem163,
			java.lang.String sCepDestino164, java.lang.String sDtCalculo165)

			throws java.rmi.RemoteException

	{
		org.apache.axis2.context.MessageContext _messageContext = null;
		try
		{
			org.apache.axis2.client.OperationClient _operationClient = _serviceClient
					.createClient(_operations[7].getName());
			_operationClient.getOptions()
					.setAction("http://tempuri.org/CalcPrazoData");
			_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(_operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
					"&");

			// create a message context
			_messageContext = new org.apache.axis2.context.MessageContext();

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;
			org.tempuri.CalcPrazoData dummyWrappedType = null;
			env = toEnvelope(
					getFactory(_operationClient.getOptions().getSoapVersionURI()),
					nCdServico162, sCepOrigem163, sCepDestino164, sDtCalculo165,
					dummyWrappedType, optimizeContent(new javax.xml.namespace.QName(
							"http://tempuri.org/", "calcPrazoData")));

			// adding SOAP soap_headers
			_serviceClient.addHeadersToEnvelope(env);
			// set the message context with that soap envelope
			_messageContext.setEnvelope(env);

			// add the message contxt to the operation client
			_operationClient.addMessageContext(_messageContext);

			// execute the operation client
			_operationClient.execute(true);

			org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient
					.getMessageContext(
							org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
			org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext
					.getEnvelope();

			java.lang.Object object = fromOM(_returnEnv.getBody().getFirstElement(),
					org.tempuri.CalcPrazoDataResponse.class,
					getEnvelopeNamespaces(_returnEnv));

			return getCalcPrazoDataResponseCalcPrazoDataResult(
					(org.tempuri.CalcPrazoDataResponse) object);

		}
		catch (org.apache.axis2.AxisFault f)
		{

			org.apache.axiom.om.OMElement faultElt = f.getDetail();
			if (faultElt != null)
			{
				if (faultExceptionNameMap.containsKey(
						new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
								"CalcPrazoData")))
				{
					// make the fault by reflection
					try
					{
						java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "CalcPrazoData"));
						java.lang.Class exceptionClass = java.lang.Class
								.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor
								.newInstance(f.getMessage());
						// message class
						java.lang.String messageClassName = (java.lang.String) faultMessageMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "CalcPrazoData"));
						java.lang.Class messageClass = java.lang.Class
								.forName(messageClassName);
						java.lang.Object messageObject = fromOM(faultElt,
								messageClass, null);
						java.lang.reflect.Method m = exceptionClass.getMethod(
								"setFaultMessage",
								new java.lang.Class[] { messageClass });
						m.invoke(ex, new java.lang.Object[] { messageObject });

						throw new java.rmi.RemoteException(ex.getMessage(), ex);
					}
					catch (java.lang.ClassCastException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.ClassNotFoundException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.NoSuchMethodException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.reflect.InvocationTargetException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.IllegalAccessException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.InstantiationException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
				}
				else
				{
					throw f;
				}
			}
			else
			{
				throw f;
			}
		}
		finally
		{
			if (_messageContext.getTransportOut() != null)
			{
				_messageContext.getTransportOut().getSender()
						.cleanup(_messageContext);
			}
		}
	}

	/**
	 * Auto generated method signature Lista os serviços que estão disponíveis
	 * para cálculo de preço e/ou prazo
	 * 
	 * @see org.kenos.idempiere.lbr.correios.api.CalcPrecoPrazoWS#listaServicos
	 * @param listaServicos168
	 */

	public org.tempuri.CResultadoServicos listaServicos(

	)

			throws java.rmi.RemoteException

	{
		org.apache.axis2.context.MessageContext _messageContext = null;
		try
		{
			org.apache.axis2.client.OperationClient _operationClient = _serviceClient
					.createClient(_operations[8].getName());
			_operationClient.getOptions()
					.setAction("http://tempuri.org/ListaServicos");
			_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(_operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
					"&");

			// create a message context
			_messageContext = new org.apache.axis2.context.MessageContext();

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;
			org.tempuri.ListaServicos dummyWrappedType = null;
			env = toEnvelope(
					getFactory(_operationClient.getOptions().getSoapVersionURI()),
					dummyWrappedType, optimizeContent(new javax.xml.namespace.QName(
							"http://tempuri.org/", "listaServicos")));

			// adding SOAP soap_headers
			_serviceClient.addHeadersToEnvelope(env);
			// set the message context with that soap envelope
			_messageContext.setEnvelope(env);

			// add the message contxt to the operation client
			_operationClient.addMessageContext(_messageContext);

			// execute the operation client
			_operationClient.execute(true);

			org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient
					.getMessageContext(
							org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
			org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext
					.getEnvelope();

			java.lang.Object object = fromOM(_returnEnv.getBody().getFirstElement(),
					org.tempuri.ListaServicosResponse.class,
					getEnvelopeNamespaces(_returnEnv));

			return getListaServicosResponseListaServicosResult(
					(org.tempuri.ListaServicosResponse) object);

		}
		catch (org.apache.axis2.AxisFault f)
		{

			org.apache.axiom.om.OMElement faultElt = f.getDetail();
			if (faultElt != null)
			{
				if (faultExceptionNameMap.containsKey(
						new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
								"ListaServicos")))
				{
					// make the fault by reflection
					try
					{
						java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "ListaServicos"));
						java.lang.Class exceptionClass = java.lang.Class
								.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor
								.newInstance(f.getMessage());
						// message class
						java.lang.String messageClassName = (java.lang.String) faultMessageMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "ListaServicos"));
						java.lang.Class messageClass = java.lang.Class
								.forName(messageClassName);
						java.lang.Object messageObject = fromOM(faultElt,
								messageClass, null);
						java.lang.reflect.Method m = exceptionClass.getMethod(
								"setFaultMessage",
								new java.lang.Class[] { messageClass });
						m.invoke(ex, new java.lang.Object[] { messageObject });

						throw new java.rmi.RemoteException(ex.getMessage(), ex);
					}
					catch (java.lang.ClassCastException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.ClassNotFoundException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.NoSuchMethodException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.reflect.InvocationTargetException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.IllegalAccessException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.InstantiationException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
				}
				else
				{
					throw f;
				}
			}
			else
			{
				throw f;
			}
		}
		finally
		{
			if (_messageContext.getTransportOut() != null)
			{
				_messageContext.getTransportOut().getSender()
						.cleanup(_messageContext);
			}
		}
	}

	/**
	 * Auto generated method signature Calcula a data máxima de entrega de
	 * determinado objeto
	 * 
	 * @see org.kenos.idempiere.lbr.correios.api.CalcPrecoPrazoWS#calcPrazoObjeto
	 * @param calcPrazoObjeto171
	 */

	public org.tempuri.CResultadoObjeto calcPrazoObjeto(

			java.lang.String codigoObjeto172)

			throws java.rmi.RemoteException

	{
		org.apache.axis2.context.MessageContext _messageContext = null;
		try
		{
			org.apache.axis2.client.OperationClient _operationClient = _serviceClient
					.createClient(_operations[9].getName());
			_operationClient.getOptions()
					.setAction("http://tempuri.org/CalcPrazoObjeto");
			_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(_operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
					"&");

			// create a message context
			_messageContext = new org.apache.axis2.context.MessageContext();

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;
			org.tempuri.CalcPrazoObjeto dummyWrappedType = null;
			env = toEnvelope(
					getFactory(_operationClient.getOptions().getSoapVersionURI()),
					codigoObjeto172, dummyWrappedType,
					optimizeContent(new javax.xml.namespace.QName(
							"http://tempuri.org/", "calcPrazoObjeto")));

			// adding SOAP soap_headers
			_serviceClient.addHeadersToEnvelope(env);
			// set the message context with that soap envelope
			_messageContext.setEnvelope(env);

			// add the message contxt to the operation client
			_operationClient.addMessageContext(_messageContext);

			// execute the operation client
			_operationClient.execute(true);

			org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient
					.getMessageContext(
							org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
			org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext
					.getEnvelope();

			java.lang.Object object = fromOM(_returnEnv.getBody().getFirstElement(),
					org.tempuri.CalcPrazoObjetoResponse.class,
					getEnvelopeNamespaces(_returnEnv));

			return getCalcPrazoObjetoResponseCalcPrazoObjetoResult(
					(org.tempuri.CalcPrazoObjetoResponse) object);

		}
		catch (org.apache.axis2.AxisFault f)
		{

			org.apache.axiom.om.OMElement faultElt = f.getDetail();
			if (faultElt != null)
			{
				if (faultExceptionNameMap.containsKey(
						new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
								"CalcPrazoObjeto")))
				{
					// make the fault by reflection
					try
					{
						java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "CalcPrazoObjeto"));
						java.lang.Class exceptionClass = java.lang.Class
								.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor
								.newInstance(f.getMessage());
						// message class
						java.lang.String messageClassName = (java.lang.String) faultMessageMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "CalcPrazoObjeto"));
						java.lang.Class messageClass = java.lang.Class
								.forName(messageClassName);
						java.lang.Object messageObject = fromOM(faultElt,
								messageClass, null);
						java.lang.reflect.Method m = exceptionClass.getMethod(
								"setFaultMessage",
								new java.lang.Class[] { messageClass });
						m.invoke(ex, new java.lang.Object[] { messageObject });

						throw new java.rmi.RemoteException(ex.getMessage(), ex);
					}
					catch (java.lang.ClassCastException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.ClassNotFoundException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.NoSuchMethodException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.reflect.InvocationTargetException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.IllegalAccessException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.InstantiationException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
				}
				else
				{
					throw f;
				}
			}
			else
			{
				throw f;
			}
		}
		finally
		{
			if (_messageContext.getTransportOut() != null)
			{
				_messageContext.getTransportOut().getSender()
						.cleanup(_messageContext);
			}
		}
	}

	/**
	 * Auto generated method signature Calcula o preço e o prazo com a data
	 * atual
	 * 
	 * @see org.kenos.idempiere.lbr.correios.api.CalcPrecoPrazoWS#calcPrecoPrazo
	 * @param calcPrecoPrazo175
	 */

	public org.tempuri.CResultado calcPrecoPrazo(

			java.lang.String nCdEmpresa176, java.lang.String sDsSenha177,
			java.lang.String nCdServico178, java.lang.String sCepOrigem179,
			java.lang.String sCepDestino180, java.lang.String nVlPeso181,
			int nCdFormato182, java.math.BigDecimal nVlComprimento183,
			java.math.BigDecimal nVlAltura184, java.math.BigDecimal nVlLargura185,
			java.math.BigDecimal nVlDiametro186, java.lang.String sCdMaoPropria187,
			java.math.BigDecimal nVlValorDeclarado188,
			java.lang.String sCdAvisoRecebimento189)

			throws java.rmi.RemoteException

	{
		org.apache.axis2.context.MessageContext _messageContext = null;
		try
		{
			org.apache.axis2.client.OperationClient _operationClient = _serviceClient
					.createClient(_operations[10].getName());
			_operationClient.getOptions()
					.setAction("http://tempuri.org/CalcPrecoPrazo");
			_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(_operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
					"&");

			// create a message context
			_messageContext = new org.apache.axis2.context.MessageContext();

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;
			org.tempuri.CalcPrecoPrazo dummyWrappedType = null;
			env = toEnvelope(
					getFactory(_operationClient.getOptions().getSoapVersionURI()),
					nCdEmpresa176, sDsSenha177, nCdServico178, sCepOrigem179,
					sCepDestino180, nVlPeso181, nCdFormato182, nVlComprimento183,
					nVlAltura184, nVlLargura185, nVlDiametro186, sCdMaoPropria187,
					nVlValorDeclarado188, sCdAvisoRecebimento189, dummyWrappedType,
					optimizeContent(new javax.xml.namespace.QName(
							"http://tempuri.org/", "calcPrecoPrazo")));

			// adding SOAP soap_headers
			_serviceClient.addHeadersToEnvelope(env);
			// set the message context with that soap envelope
			_messageContext.setEnvelope(env);

			// add the message contxt to the operation client
			_operationClient.addMessageContext(_messageContext);

			// execute the operation client
			_operationClient.execute(true);

			org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient
					.getMessageContext(
							org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
			org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext
					.getEnvelope();

			java.lang.Object object = fromOM(_returnEnv.getBody().getFirstElement(),
					org.tempuri.CalcPrecoPrazoResponse.class,
					getEnvelopeNamespaces(_returnEnv));

			return getCalcPrecoPrazoResponseCalcPrecoPrazoResult(
					(org.tempuri.CalcPrecoPrazoResponse) object);

		}
		catch (org.apache.axis2.AxisFault f)
		{

			org.apache.axiom.om.OMElement faultElt = f.getDetail();
			if (faultElt != null)
			{
				if (faultExceptionNameMap.containsKey(
						new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
								"CalcPrecoPrazo")))
				{
					// make the fault by reflection
					try
					{
						java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "CalcPrecoPrazo"));
						java.lang.Class exceptionClass = java.lang.Class
								.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor
								.newInstance(f.getMessage());
						// message class
						java.lang.String messageClassName = (java.lang.String) faultMessageMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "CalcPrecoPrazo"));
						java.lang.Class messageClass = java.lang.Class
								.forName(messageClassName);
						java.lang.Object messageObject = fromOM(faultElt,
								messageClass, null);
						java.lang.reflect.Method m = exceptionClass.getMethod(
								"setFaultMessage",
								new java.lang.Class[] { messageClass });
						m.invoke(ex, new java.lang.Object[] { messageObject });

						throw new java.rmi.RemoteException(ex.getMessage(), ex);
					}
					catch (java.lang.ClassCastException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.ClassNotFoundException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.NoSuchMethodException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.reflect.InvocationTargetException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.IllegalAccessException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.InstantiationException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
				}
				else
				{
					throw f;
				}
			}
			else
			{
				throw f;
			}
		}
		finally
		{
			if (_messageContext.getTransportOut() != null)
			{
				_messageContext.getTransportOut().getSender()
						.cleanup(_messageContext);
			}
		}
	}

	/**
	 * A utility method that copies the namepaces from the SOAPEnvelope
	 */
	private java.util.Map getEnvelopeNamespaces(
			org.apache.axiom.soap.SOAPEnvelope env)
	{
		java.util.Map returnMap = new java.util.HashMap();
		java.util.Iterator namespaceIterator = env.getAllDeclaredNamespaces();
		while (namespaceIterator.hasNext())
		{
			org.apache.axiom.om.OMNamespace ns = (org.apache.axiom.om.OMNamespace) namespaceIterator
					.next();
			returnMap.put(ns.getPrefix(), ns.getNamespaceURI());
		}
		return returnMap;
	}

	private javax.xml.namespace.QName[] opNameArray = null;

	private boolean optimizeContent(javax.xml.namespace.QName opName)
	{

		if (opNameArray == null)
		{
			return false;
		}
		for (int i = 0; i < opNameArray.length; i++)
		{
			if (opName.equals(opNameArray[i]))
			{
				return true;
			}
		}
		return false;
	}

	// http://ws.correios.com.br/calculador/CalcPrecoPrazo.asmx
	private org.apache.axiom.om.OMElement toOM(org.tempuri.CalcPrecoPrazoData param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(org.tempuri.CalcPrecoPrazoData.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(
			org.tempuri.CalcPrecoPrazoDataResponse param, boolean optimizeContent)
			throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(
					org.tempuri.CalcPrecoPrazoDataResponse.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(
			org.tempuri.CalcPrecoPrazoRestricao param, boolean optimizeContent)
			throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(org.tempuri.CalcPrecoPrazoRestricao.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(
			org.tempuri.CalcPrecoPrazoRestricaoResponse param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(
					org.tempuri.CalcPrecoPrazoRestricaoResponse.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(org.tempuri.CalcPrazoRestricao param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(org.tempuri.CalcPrazoRestricao.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(
			org.tempuri.CalcPrazoRestricaoResponse param, boolean optimizeContent)
			throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(
					org.tempuri.CalcPrazoRestricaoResponse.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(org.tempuri.CalcPrecoFAC param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(org.tempuri.CalcPrecoFAC.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(
			org.tempuri.CalcPrecoFACResponse param, boolean optimizeContent)
			throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(org.tempuri.CalcPrecoFACResponse.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(org.tempuri.CalcPreco param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(org.tempuri.CalcPreco.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(org.tempuri.CalcPrecoResponse param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(org.tempuri.CalcPrecoResponse.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(org.tempuri.CalcPrecoData param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(org.tempuri.CalcPrecoData.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(
			org.tempuri.CalcPrecoDataResponse param, boolean optimizeContent)
			throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(org.tempuri.CalcPrecoDataResponse.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(org.tempuri.CalcPrazo param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(org.tempuri.CalcPrazo.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(org.tempuri.CalcPrazoResponse param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(org.tempuri.CalcPrazoResponse.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(org.tempuri.CalcPrazoData param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(org.tempuri.CalcPrazoData.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(
			org.tempuri.CalcPrazoDataResponse param, boolean optimizeContent)
			throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(org.tempuri.CalcPrazoDataResponse.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(org.tempuri.ListaServicos param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(org.tempuri.ListaServicos.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(
			org.tempuri.ListaServicosResponse param, boolean optimizeContent)
			throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(org.tempuri.ListaServicosResponse.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(org.tempuri.CalcPrazoObjeto param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(org.tempuri.CalcPrazoObjeto.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(
			org.tempuri.CalcPrazoObjetoResponse param, boolean optimizeContent)
			throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(org.tempuri.CalcPrazoObjetoResponse.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(org.tempuri.CalcPrecoPrazo param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(org.tempuri.CalcPrecoPrazo.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(
			org.tempuri.CalcPrecoPrazoResponse param, boolean optimizeContent)
			throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(org.tempuri.CalcPrecoPrazoResponse.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
			org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
			java.lang.String param2, java.lang.String param3,
			java.lang.String param4, java.lang.String param5,
			java.lang.String param6, int param7, java.math.BigDecimal param8,
			java.math.BigDecimal param9, java.math.BigDecimal param10,
			java.math.BigDecimal param11, java.lang.String param12,
			java.math.BigDecimal param13, java.lang.String param14,
			java.lang.String param15,
			org.tempuri.CalcPrecoPrazoData dummyWrappedType, boolean optimizeContent)
			throws org.apache.axis2.AxisFault
	{

		try
		{
			org.tempuri.CalcPrecoPrazoData wrappedType = new org.tempuri.CalcPrecoPrazoData();

			wrappedType.setNCdEmpresa(param1);

			wrappedType.setSDsSenha(param2);

			wrappedType.setNCdServico(param3);

			wrappedType.setSCepOrigem(param4);

			wrappedType.setSCepDestino(param5);

			wrappedType.setNVlPeso(param6);

			wrappedType.setNCdFormato(param7);

			wrappedType.setNVlComprimento(param8);

			wrappedType.setNVlAltura(param9);

			wrappedType.setNVlLargura(param10);

			wrappedType.setNVlDiametro(param11);

			wrappedType.setSCdMaoPropria(param12);

			wrappedType.setNVlValorDeclarado(param13);

			wrappedType.setSCdAvisoRecebimento(param14);

			wrappedType.setSDtCalculo(param15);

			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory
					.getDefaultEnvelope();

			emptyEnvelope.getBody().addChild(wrappedType
					.getOMElement(org.tempuri.CalcPrecoPrazoData.MY_QNAME, factory));

			return emptyEnvelope;
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */

	private org.tempuri.CResultado getCalcPrecoPrazoDataResponseCalcPrecoPrazoDataResult(
			org.tempuri.CalcPrecoPrazoDataResponse wrappedType)
	{

		return wrappedType.getCalcPrecoPrazoDataResult();

	}

	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
			org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
			java.lang.String param2, java.lang.String param3,
			java.lang.String param4, java.lang.String param5,
			java.lang.String param6, int param7, java.math.BigDecimal param8,
			java.math.BigDecimal param9, java.math.BigDecimal param10,
			java.math.BigDecimal param11, java.lang.String param12,
			java.math.BigDecimal param13, java.lang.String param14,
			java.lang.String param15,
			org.tempuri.CalcPrecoPrazoRestricao dummyWrappedType,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			org.tempuri.CalcPrecoPrazoRestricao wrappedType = new org.tempuri.CalcPrecoPrazoRestricao();

			wrappedType.setNCdEmpresa(param1);

			wrappedType.setSDsSenha(param2);

			wrappedType.setNCdServico(param3);

			wrappedType.setSCepOrigem(param4);

			wrappedType.setSCepDestino(param5);

			wrappedType.setNVlPeso(param6);

			wrappedType.setNCdFormato(param7);

			wrappedType.setNVlComprimento(param8);

			wrappedType.setNVlAltura(param9);

			wrappedType.setNVlLargura(param10);

			wrappedType.setNVlDiametro(param11);

			wrappedType.setSCdMaoPropria(param12);

			wrappedType.setNVlValorDeclarado(param13);

			wrappedType.setSCdAvisoRecebimento(param14);

			wrappedType.setSDtCalculo(param15);

			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory
					.getDefaultEnvelope();

			emptyEnvelope.getBody().addChild(wrappedType.getOMElement(
					org.tempuri.CalcPrecoPrazoRestricao.MY_QNAME, factory));

			return emptyEnvelope;
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */

	private org.tempuri.CResultado getCalcPrecoPrazoRestricaoResponseCalcPrecoPrazoRestricaoResult(
			org.tempuri.CalcPrecoPrazoRestricaoResponse wrappedType)
	{

		return wrappedType.getCalcPrecoPrazoRestricaoResult();

	}

	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
			org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
			java.lang.String param2, java.lang.String param3,
			java.lang.String param4, org.tempuri.CalcPrazoRestricao dummyWrappedType,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			org.tempuri.CalcPrazoRestricao wrappedType = new org.tempuri.CalcPrazoRestricao();

			wrappedType.setNCdServico(param1);

			wrappedType.setSCepOrigem(param2);

			wrappedType.setSCepDestino(param3);

			wrappedType.setSDtCalculo(param4);

			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory
					.getDefaultEnvelope();

			emptyEnvelope.getBody().addChild(wrappedType
					.getOMElement(org.tempuri.CalcPrazoRestricao.MY_QNAME, factory));

			return emptyEnvelope;
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */

	private org.tempuri.CResultado getCalcPrazoRestricaoResponseCalcPrazoRestricaoResult(
			org.tempuri.CalcPrazoRestricaoResponse wrappedType)
	{

		return wrappedType.getCalcPrazoRestricaoResult();

	}

	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
			org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
			java.lang.String param2, java.lang.String param3,
			org.tempuri.CalcPrecoFAC dummyWrappedType, boolean optimizeContent)
			throws org.apache.axis2.AxisFault
	{

		try
		{
			org.tempuri.CalcPrecoFAC wrappedType = new org.tempuri.CalcPrecoFAC();

			wrappedType.setNCdServico(param1);

			wrappedType.setNVlPeso(param2);

			wrappedType.setStrDataCalculo(param3);

			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory
					.getDefaultEnvelope();

			emptyEnvelope.getBody().addChild(wrappedType
					.getOMElement(org.tempuri.CalcPrecoFAC.MY_QNAME, factory));

			return emptyEnvelope;
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */

	private org.tempuri.CResultado getCalcPrecoFACResponseCalcPrecoFACResult(
			org.tempuri.CalcPrecoFACResponse wrappedType)
	{

		return wrappedType.getCalcPrecoFACResult();

	}

	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
			org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
			java.lang.String param2, java.lang.String param3,
			java.lang.String param4, java.lang.String param5,
			java.lang.String param6, int param7, java.math.BigDecimal param8,
			java.math.BigDecimal param9, java.math.BigDecimal param10,
			java.math.BigDecimal param11, java.lang.String param12,
			java.math.BigDecimal param13, java.lang.String param14,
			org.tempuri.CalcPreco dummyWrappedType, boolean optimizeContent)
			throws org.apache.axis2.AxisFault
	{

		try
		{
			org.tempuri.CalcPreco wrappedType = new org.tempuri.CalcPreco();

			wrappedType.setNCdEmpresa(param1);

			wrappedType.setSDsSenha(param2);

			wrappedType.setNCdServico(param3);

			wrappedType.setSCepOrigem(param4);

			wrappedType.setSCepDestino(param5);

			wrappedType.setNVlPeso(param6);

			wrappedType.setNCdFormato(param7);

			wrappedType.setNVlComprimento(param8);

			wrappedType.setNVlAltura(param9);

			wrappedType.setNVlLargura(param10);

			wrappedType.setNVlDiametro(param11);

			wrappedType.setSCdMaoPropria(param12);

			wrappedType.setNVlValorDeclarado(param13);

			wrappedType.setSCdAvisoRecebimento(param14);

			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory
					.getDefaultEnvelope();

			emptyEnvelope.getBody().addChild(wrappedType
					.getOMElement(org.tempuri.CalcPreco.MY_QNAME, factory));

			return emptyEnvelope;
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */

	private org.tempuri.CResultado getCalcPrecoResponseCalcPrecoResult(
			org.tempuri.CalcPrecoResponse wrappedType)
	{

		return wrappedType.getCalcPrecoResult();

	}

	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
			org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
			java.lang.String param2, java.lang.String param3,
			java.lang.String param4, java.lang.String param5,
			java.lang.String param6, int param7, java.math.BigDecimal param8,
			java.math.BigDecimal param9, java.math.BigDecimal param10,
			java.math.BigDecimal param11, java.lang.String param12,
			java.math.BigDecimal param13, java.lang.String param14,
			java.lang.String param15, org.tempuri.CalcPrecoData dummyWrappedType,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			org.tempuri.CalcPrecoData wrappedType = new org.tempuri.CalcPrecoData();

			wrappedType.setNCdEmpresa(param1);

			wrappedType.setSDsSenha(param2);

			wrappedType.setNCdServico(param3);

			wrappedType.setSCepOrigem(param4);

			wrappedType.setSCepDestino(param5);

			wrappedType.setNVlPeso(param6);

			wrappedType.setNCdFormato(param7);

			wrappedType.setNVlComprimento(param8);

			wrappedType.setNVlAltura(param9);

			wrappedType.setNVlLargura(param10);

			wrappedType.setNVlDiametro(param11);

			wrappedType.setSCdMaoPropria(param12);

			wrappedType.setNVlValorDeclarado(param13);

			wrappedType.setSCdAvisoRecebimento(param14);

			wrappedType.setSDtCalculo(param15);

			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory
					.getDefaultEnvelope();

			emptyEnvelope.getBody().addChild(wrappedType
					.getOMElement(org.tempuri.CalcPrecoData.MY_QNAME, factory));

			return emptyEnvelope;
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */

	private org.tempuri.CResultado getCalcPrecoDataResponseCalcPrecoDataResult(
			org.tempuri.CalcPrecoDataResponse wrappedType)
	{

		return wrappedType.getCalcPrecoDataResult();

	}

	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
			org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
			java.lang.String param2, java.lang.String param3,
			org.tempuri.CalcPrazo dummyWrappedType, boolean optimizeContent)
			throws org.apache.axis2.AxisFault
	{

		try
		{
			org.tempuri.CalcPrazo wrappedType = new org.tempuri.CalcPrazo();

			wrappedType.setNCdServico(param1);

			wrappedType.setSCepOrigem(param2);

			wrappedType.setSCepDestino(param3);

			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory
					.getDefaultEnvelope();

			emptyEnvelope.getBody().addChild(wrappedType
					.getOMElement(org.tempuri.CalcPrazo.MY_QNAME, factory));

			return emptyEnvelope;
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */

	private org.tempuri.CResultado getCalcPrazoResponseCalcPrazoResult(
			org.tempuri.CalcPrazoResponse wrappedType)
	{

		return wrappedType.getCalcPrazoResult();

	}

	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
			org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
			java.lang.String param2, java.lang.String param3,
			java.lang.String param4, org.tempuri.CalcPrazoData dummyWrappedType,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			org.tempuri.CalcPrazoData wrappedType = new org.tempuri.CalcPrazoData();

			wrappedType.setNCdServico(param1);

			wrappedType.setSCepOrigem(param2);

			wrappedType.setSCepDestino(param3);

			wrappedType.setSDtCalculo(param4);

			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory
					.getDefaultEnvelope();

			emptyEnvelope.getBody().addChild(wrappedType
					.getOMElement(org.tempuri.CalcPrazoData.MY_QNAME, factory));

			return emptyEnvelope;
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */

	private org.tempuri.CResultado getCalcPrazoDataResponseCalcPrazoDataResult(
			org.tempuri.CalcPrazoDataResponse wrappedType)
	{

		return wrappedType.getCalcPrazoDataResult();

	}

	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
			org.apache.axiom.soap.SOAPFactory factory,
			org.tempuri.ListaServicos dummyWrappedType, boolean optimizeContent)
			throws org.apache.axis2.AxisFault
	{

		try
		{
			org.tempuri.ListaServicos wrappedType = new org.tempuri.ListaServicos();

			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory
					.getDefaultEnvelope();

			emptyEnvelope.getBody().addChild(wrappedType
					.getOMElement(org.tempuri.ListaServicos.MY_QNAME, factory));

			return emptyEnvelope;
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */

	private org.tempuri.CResultadoServicos getListaServicosResponseListaServicosResult(
			org.tempuri.ListaServicosResponse wrappedType)
	{

		return wrappedType.getListaServicosResult();

	}

	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
			org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
			org.tempuri.CalcPrazoObjeto dummyWrappedType, boolean optimizeContent)
			throws org.apache.axis2.AxisFault
	{

		try
		{
			org.tempuri.CalcPrazoObjeto wrappedType = new org.tempuri.CalcPrazoObjeto();

			wrappedType.setCodigoObjeto(param1);

			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory
					.getDefaultEnvelope();

			emptyEnvelope.getBody().addChild(wrappedType
					.getOMElement(org.tempuri.CalcPrazoObjeto.MY_QNAME, factory));

			return emptyEnvelope;
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */

	private org.tempuri.CResultadoObjeto getCalcPrazoObjetoResponseCalcPrazoObjetoResult(
			org.tempuri.CalcPrazoObjetoResponse wrappedType)
	{

		return wrappedType.getCalcPrazoObjetoResult();

	}

	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
			org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
			java.lang.String param2, java.lang.String param3,
			java.lang.String param4, java.lang.String param5,
			java.lang.String param6, int param7, java.math.BigDecimal param8,
			java.math.BigDecimal param9, java.math.BigDecimal param10,
			java.math.BigDecimal param11, java.lang.String param12,
			java.math.BigDecimal param13, java.lang.String param14,
			org.tempuri.CalcPrecoPrazo dummyWrappedType, boolean optimizeContent)
			throws org.apache.axis2.AxisFault
	{

		try
		{
			org.tempuri.CalcPrecoPrazo wrappedType = new org.tempuri.CalcPrecoPrazo();

			wrappedType.setNCdEmpresa(param1);

			wrappedType.setSDsSenha(param2);

			wrappedType.setNCdServico(param3);

			wrappedType.setSCepOrigem(param4);

			wrappedType.setSCepDestino(param5);

			wrappedType.setNVlPeso(param6);

			wrappedType.setNCdFormato(param7);

			wrappedType.setNVlComprimento(param8);

			wrappedType.setNVlAltura(param9);

			wrappedType.setNVlLargura(param10);

			wrappedType.setNVlDiametro(param11);

			wrappedType.setSCdMaoPropria(param12);

			wrappedType.setNVlValorDeclarado(param13);

			wrappedType.setSCdAvisoRecebimento(param14);

			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory
					.getDefaultEnvelope();

			emptyEnvelope.getBody().addChild(wrappedType
					.getOMElement(org.tempuri.CalcPrecoPrazo.MY_QNAME, factory));

			return emptyEnvelope;
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */

	private org.tempuri.CResultado getCalcPrecoPrazoResponseCalcPrecoPrazoResult(
			org.tempuri.CalcPrecoPrazoResponse wrappedType)
	{

		return wrappedType.getCalcPrecoPrazoResult();

	}

	/**
	 * get the default envelope
	 */
	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
			org.apache.axiom.soap.SOAPFactory factory)
	{
		return factory.getDefaultEnvelope();
	}

	private java.lang.Object fromOM(org.apache.axiom.om.OMElement param,
			java.lang.Class type, java.util.Map extraNamespaces)
			throws org.apache.axis2.AxisFault
	{

		try
		{

			if (org.tempuri.CalcPrecoPrazoData.class.equals(type))
			{

				return org.tempuri.CalcPrecoPrazoData.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (org.tempuri.CalcPrecoPrazoDataResponse.class.equals(type))
			{

				return org.tempuri.CalcPrecoPrazoDataResponse.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (org.tempuri.CalcPrecoPrazoRestricao.class.equals(type))
			{

				return org.tempuri.CalcPrecoPrazoRestricao.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (org.tempuri.CalcPrecoPrazoRestricaoResponse.class.equals(type))
			{

				return org.tempuri.CalcPrecoPrazoRestricaoResponse.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (org.tempuri.CalcPrazoRestricao.class.equals(type))
			{

				return org.tempuri.CalcPrazoRestricao.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (org.tempuri.CalcPrazoRestricaoResponse.class.equals(type))
			{

				return org.tempuri.CalcPrazoRestricaoResponse.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (org.tempuri.CalcPrecoFAC.class.equals(type))
			{

				return org.tempuri.CalcPrecoFAC.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (org.tempuri.CalcPrecoFACResponse.class.equals(type))
			{

				return org.tempuri.CalcPrecoFACResponse.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (org.tempuri.CalcPreco.class.equals(type))
			{

				return org.tempuri.CalcPreco.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (org.tempuri.CalcPrecoResponse.class.equals(type))
			{

				return org.tempuri.CalcPrecoResponse.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (org.tempuri.CalcPrecoData.class.equals(type))
			{

				return org.tempuri.CalcPrecoData.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (org.tempuri.CalcPrecoDataResponse.class.equals(type))
			{

				return org.tempuri.CalcPrecoDataResponse.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (org.tempuri.CalcPrazo.class.equals(type))
			{

				return org.tempuri.CalcPrazo.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (org.tempuri.CalcPrazoResponse.class.equals(type))
			{

				return org.tempuri.CalcPrazoResponse.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (org.tempuri.CalcPrazoData.class.equals(type))
			{

				return org.tempuri.CalcPrazoData.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (org.tempuri.CalcPrazoDataResponse.class.equals(type))
			{

				return org.tempuri.CalcPrazoDataResponse.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (org.tempuri.ListaServicos.class.equals(type))
			{

				return org.tempuri.ListaServicos.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (org.tempuri.ListaServicosResponse.class.equals(type))
			{

				return org.tempuri.ListaServicosResponse.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (org.tempuri.CalcPrazoObjeto.class.equals(type))
			{

				return org.tempuri.CalcPrazoObjeto.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (org.tempuri.CalcPrazoObjetoResponse.class.equals(type))
			{

				return org.tempuri.CalcPrazoObjetoResponse.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (org.tempuri.CalcPrecoPrazo.class.equals(type))
			{

				return org.tempuri.CalcPrecoPrazo.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (org.tempuri.CalcPrecoPrazoResponse.class.equals(type))
			{

				return org.tempuri.CalcPrecoPrazoResponse.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

		}
		catch (java.lang.Exception e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
		return null;
	}

}
