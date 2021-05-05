/**
 * NfseWebServiceServiceStub.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.4  Built on : Dec 28, 2015 (10:03:39 GMT)
 */
package br.gov.sp.indaiatuba.nfse;


/*
 *  NfseWebServiceServiceStub java implementation
 */
public class NfseWebServiceServiceStub extends org.apache.axis2.client.Stub
    implements NfseWebServiceService {
    private static int counter = 0;
    protected org.apache.axis2.description.AxisOperation[] _operations;

    //hashmaps to keep the fault mapping
    private java.util.HashMap faultExceptionNameMap = new java.util.HashMap();
    private java.util.HashMap faultExceptionClassNameMap = new java.util.HashMap();
    private java.util.HashMap faultMessageMap = new java.util.HashMap();
    private javax.xml.namespace.QName[] opNameArray = null;

    /**
     *Constructor that takes in a configContext
     */
    public NfseWebServiceServiceStub(
        org.apache.axis2.context.ConfigurationContext configurationContext,
        java.lang.String targetEndpoint) throws org.apache.axis2.AxisFault {
        this(configurationContext, targetEndpoint, false);
    }

    /**
     * Constructor that takes in a configContext  and useseperate listner
     */
    public NfseWebServiceServiceStub(
        org.apache.axis2.context.ConfigurationContext configurationContext,
        java.lang.String targetEndpoint, boolean useSeparateListener)
        throws org.apache.axis2.AxisFault {
        //To populate AxisService
        populateAxisService();
        populateFaults();

        _serviceClient = new org.apache.axis2.client.ServiceClient(configurationContext,
                _service);

        _serviceClient.getOptions()
                      .setTo(new org.apache.axis2.addressing.EndpointReference(
                targetEndpoint));
        _serviceClient.getOptions().setUseSeparateListener(useSeparateListener);
    }

    /**
     * Default Constructor
     */
    public NfseWebServiceServiceStub(
        org.apache.axis2.context.ConfigurationContext configurationContext)
        throws org.apache.axis2.AxisFault {
        this(configurationContext,
            "https://deiss.indaiatuba.sp.gov.br/homologacao/nfse");
    }

    /**
     * Default Constructor
     */
    public NfseWebServiceServiceStub() throws org.apache.axis2.AxisFault {
        this("https://deiss.indaiatuba.sp.gov.br/homologacao/nfse");
    }

    /**
     * Constructor taking the target endpoint
     */
    public NfseWebServiceServiceStub(java.lang.String targetEndpoint)
        throws org.apache.axis2.AxisFault {
        this(null, targetEndpoint);
    }

    private static synchronized java.lang.String getUniqueSuffix() {
        // reset the counter if it is greater than 99999
        if (counter > 99999) {
            counter = 0;
        }

        counter = counter + 1;

        return java.lang.Long.toString(java.lang.System.currentTimeMillis()) +
        "_" + counter;
    }

    private void populateAxisService() throws org.apache.axis2.AxisFault {
        //creating the Service with a unique name
        _service = new org.apache.axis2.description.AxisService(
                "NfseWebServiceService" + getUniqueSuffix());
        addAnonymousOperations();

        //creating the operations
        org.apache.axis2.description.AxisOperation __operation;

        _operations = new org.apache.axis2.description.AxisOperation[10];

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://nfse.indaiatuba.sp.gov.br", "substituirNfse"));
        _service.addOperation(__operation);

        _operations[0] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://nfse.indaiatuba.sp.gov.br", "gerarNfse"));
        _service.addOperation(__operation);

        _operations[1] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://nfse.indaiatuba.sp.gov.br", "consultarNfsePorFaixa"));
        _service.addOperation(__operation);

        _operations[2] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://nfse.indaiatuba.sp.gov.br", "cancelarNfse"));
        _service.addOperation(__operation);

        _operations[3] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://nfse.indaiatuba.sp.gov.br", "consultarLoteRps"));
        _service.addOperation(__operation);

        _operations[4] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://nfse.indaiatuba.sp.gov.br",
                "consultarNfseServicoPrestado"));
        _service.addOperation(__operation);

        _operations[5] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://nfse.indaiatuba.sp.gov.br", "consultarNfsePorRps"));
        _service.addOperation(__operation);

        _operations[6] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://nfse.indaiatuba.sp.gov.br", "consultarNfseServicoTomado"));
        _service.addOperation(__operation);

        _operations[7] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://nfse.indaiatuba.sp.gov.br", "recepcionarLoteRps"));
        _service.addOperation(__operation);

        _operations[8] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://nfse.indaiatuba.sp.gov.br", "recepcionarLoteRpsSincrono"));
        _service.addOperation(__operation);

        _operations[9] = __operation;
    }

    //populates the faults
    private void populateFaults() {
    }

    /**
     * Auto generated method signature
     *
     * @see br.gov.sp.indaiatuba.nfse.NfseWebServiceService#substituirNfse
     * @param substituirNfseRequest27
     */
    public java.lang.String substituirNfse(java.lang.String nfseCabecMsg28,
        java.lang.String nfseDadosMsg29) throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[0].getName());
            _operationClient.getOptions()
                            .setAction("http://nfse.indaiatuba.sp.gov.br/SubstituirNfse");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.gov.sp.indaiatuba.nfse.SubstituirNfseRequest dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    nfseCabecMsg28, nfseDadosMsg29, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://nfse.indaiatuba.sp.gov.br", "substituirNfse")));

            //adding SOAP soap_headers
            _serviceClient.addHeadersToEnvelope(env);
            // set the message context with that soap envelope
            _messageContext.setEnvelope(env);

            // add the message contxt to the operation client
            _operationClient.addMessageContext(_messageContext);

            //execute the operation client
            _operationClient.execute(true);

            org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient.getMessageContext(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
            org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext.getEnvelope();

            java.lang.Object object = fromOM(_returnEnv.getBody()
                                                       .getFirstElement(),
                    br.gov.sp.indaiatuba.nfse.SubstituirNfseResponse.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getSubstituirNfseResponseOutputXML((br.gov.sp.indaiatuba.nfse.SubstituirNfseResponse) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "SubstituirNfse"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "SubstituirNfse"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "SubstituirNfse"));
                        java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
                        java.lang.Object messageObject = fromOM(faultElt,
                                messageClass, null);
                        java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage",
                                new java.lang.Class[] { messageClass });
                        m.invoke(ex, new java.lang.Object[] { messageObject });

                        throw new java.rmi.RemoteException(ex.getMessage(), ex);
                    } catch (java.lang.ClassCastException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.ClassNotFoundException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.NoSuchMethodException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.reflect.InvocationTargetException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.IllegalAccessException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.InstantiationException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    }
                } else {
                    throw f;
                }
            } else {
                throw f;
            }
        } finally {
            if (_messageContext.getTransportOut() != null) {
                _messageContext.getTransportOut().getSender()
                               .cleanup(_messageContext);
            }
        }
    }

    /**
     * Auto generated method signature
     *
     * @see br.gov.sp.indaiatuba.nfse.NfseWebServiceService#gerarNfse
     * @param gerarNfseRequest32
     */
    public java.lang.String gerarNfse(java.lang.String nfseCabecMsg33,
        java.lang.String nfseDadosMsg34) throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[1].getName());
            _operationClient.getOptions()
                            .setAction("http://nfse.indaiatuba.sp.gov.br/GerarNfse");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.gov.sp.indaiatuba.nfse.GerarNfseRequest dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    nfseCabecMsg33, nfseDadosMsg34, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://nfse.indaiatuba.sp.gov.br", "gerarNfse")));

            //adding SOAP soap_headers
            _serviceClient.addHeadersToEnvelope(env);
            // set the message context with that soap envelope
            _messageContext.setEnvelope(env);

            // add the message contxt to the operation client
            _operationClient.addMessageContext(_messageContext);

            //execute the operation client
            _operationClient.execute(true);

            org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient.getMessageContext(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
            org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext.getEnvelope();

            java.lang.Object object = fromOM(_returnEnv.getBody()
                                                       .getFirstElement(),
                    br.gov.sp.indaiatuba.nfse.GerarNfseResponse.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getGerarNfseResponseOutputXML((br.gov.sp.indaiatuba.nfse.GerarNfseResponse) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "GerarNfse"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "GerarNfse"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "GerarNfse"));
                        java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
                        java.lang.Object messageObject = fromOM(faultElt,
                                messageClass, null);
                        java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage",
                                new java.lang.Class[] { messageClass });
                        m.invoke(ex, new java.lang.Object[] { messageObject });

                        throw new java.rmi.RemoteException(ex.getMessage(), ex);
                    } catch (java.lang.ClassCastException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.ClassNotFoundException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.NoSuchMethodException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.reflect.InvocationTargetException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.IllegalAccessException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.InstantiationException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    }
                } else {
                    throw f;
                }
            } else {
                throw f;
            }
        } finally {
            if (_messageContext.getTransportOut() != null) {
                _messageContext.getTransportOut().getSender()
                               .cleanup(_messageContext);
            }
        }
    }

    /**
     * Auto generated method signature
     *
     * @see br.gov.sp.indaiatuba.nfse.NfseWebServiceService#consultarNfsePorFaixa
     * @param consultarNfsePorFaixaRequest37
     */
    public java.lang.String consultarNfsePorFaixa(
        java.lang.String nfseCabecMsg38, java.lang.String nfseDadosMsg39)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[2].getName());
            _operationClient.getOptions()
                            .setAction("http://nfse.indaiatuba.sp.gov.br/ConsultarNfsePorFaixa");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.gov.sp.indaiatuba.nfse.ConsultarNfsePorFaixaRequest dummyWrappedType =
                null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    nfseCabecMsg38, nfseDadosMsg39, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://nfse.indaiatuba.sp.gov.br",
                            "consultarNfsePorFaixa")));

            //adding SOAP soap_headers
            _serviceClient.addHeadersToEnvelope(env);
            // set the message context with that soap envelope
            _messageContext.setEnvelope(env);

            // add the message contxt to the operation client
            _operationClient.addMessageContext(_messageContext);

            //execute the operation client
            _operationClient.execute(true);

            org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient.getMessageContext(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
            org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext.getEnvelope();

            java.lang.Object object = fromOM(_returnEnv.getBody()
                                                       .getFirstElement(),
                    br.gov.sp.indaiatuba.nfse.ConsultarNfsePorFaixaResponse.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getConsultarNfsePorFaixaResponseOutputXML((br.gov.sp.indaiatuba.nfse.ConsultarNfsePorFaixaResponse) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "ConsultarNfsePorFaixa"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "ConsultarNfsePorFaixa"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "ConsultarNfsePorFaixa"));
                        java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
                        java.lang.Object messageObject = fromOM(faultElt,
                                messageClass, null);
                        java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage",
                                new java.lang.Class[] { messageClass });
                        m.invoke(ex, new java.lang.Object[] { messageObject });

                        throw new java.rmi.RemoteException(ex.getMessage(), ex);
                    } catch (java.lang.ClassCastException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.ClassNotFoundException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.NoSuchMethodException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.reflect.InvocationTargetException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.IllegalAccessException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.InstantiationException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    }
                } else {
                    throw f;
                }
            } else {
                throw f;
            }
        } finally {
            if (_messageContext.getTransportOut() != null) {
                _messageContext.getTransportOut().getSender()
                               .cleanup(_messageContext);
            }
        }
    }

    /**
     * Auto generated method signature
     *
     * @see br.gov.sp.indaiatuba.nfse.NfseWebServiceService#cancelarNfse
     * @param cancelarNfseRequest42
     */
    public java.lang.String cancelarNfse(java.lang.String nfseCabecMsg43,
        java.lang.String nfseDadosMsg44) throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[3].getName());
            _operationClient.getOptions()
                            .setAction("http://nfse.indaiatuba.sp.gov.br/CancelarNfse");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.gov.sp.indaiatuba.nfse.CancelarNfseRequest dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    nfseCabecMsg43, nfseDadosMsg44, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://nfse.indaiatuba.sp.gov.br", "cancelarNfse")));

            //adding SOAP soap_headers
            _serviceClient.addHeadersToEnvelope(env);
            // set the message context with that soap envelope
            _messageContext.setEnvelope(env);

            // add the message contxt to the operation client
            _operationClient.addMessageContext(_messageContext);

            //execute the operation client
            _operationClient.execute(true);

            org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient.getMessageContext(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
            org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext.getEnvelope();

            java.lang.Object object = fromOM(_returnEnv.getBody()
                                                       .getFirstElement(),
                    br.gov.sp.indaiatuba.nfse.CancelarNfseResponse.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getCancelarNfseResponseOutputXML((br.gov.sp.indaiatuba.nfse.CancelarNfseResponse) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "CancelarNfse"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "CancelarNfse"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "CancelarNfse"));
                        java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
                        java.lang.Object messageObject = fromOM(faultElt,
                                messageClass, null);
                        java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage",
                                new java.lang.Class[] { messageClass });
                        m.invoke(ex, new java.lang.Object[] { messageObject });

                        throw new java.rmi.RemoteException(ex.getMessage(), ex);
                    } catch (java.lang.ClassCastException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.ClassNotFoundException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.NoSuchMethodException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.reflect.InvocationTargetException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.IllegalAccessException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.InstantiationException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    }
                } else {
                    throw f;
                }
            } else {
                throw f;
            }
        } finally {
            if (_messageContext.getTransportOut() != null) {
                _messageContext.getTransportOut().getSender()
                               .cleanup(_messageContext);
            }
        }
    }

    /**
     * Auto generated method signature
     *
     * @see br.gov.sp.indaiatuba.nfse.NfseWebServiceService#consultarLoteRps
     * @param consultarLoteRpsRequest47
     */
    public java.lang.String consultarLoteRps(java.lang.String nfseCabecMsg48,
        java.lang.String nfseDadosMsg49) throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[4].getName());
            _operationClient.getOptions()
                            .setAction("http://nfse.indaiatuba.sp.gov.br/ConsultarLoteRps");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.gov.sp.indaiatuba.nfse.ConsultarLoteRpsRequest dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    nfseCabecMsg48, nfseDadosMsg49, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://nfse.indaiatuba.sp.gov.br",
                            "consultarLoteRps")));

            //adding SOAP soap_headers
            _serviceClient.addHeadersToEnvelope(env);
            // set the message context with that soap envelope
            _messageContext.setEnvelope(env);

            // add the message contxt to the operation client
            _operationClient.addMessageContext(_messageContext);

            //execute the operation client
            _operationClient.execute(true);

            org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient.getMessageContext(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
            org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext.getEnvelope();

            java.lang.Object object = fromOM(_returnEnv.getBody()
                                                       .getFirstElement(),
                    br.gov.sp.indaiatuba.nfse.ConsultarLoteRpsResponse.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getConsultarLoteRpsResponseOutputXML((br.gov.sp.indaiatuba.nfse.ConsultarLoteRpsResponse) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "ConsultarLoteRps"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "ConsultarLoteRps"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "ConsultarLoteRps"));
                        java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
                        java.lang.Object messageObject = fromOM(faultElt,
                                messageClass, null);
                        java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage",
                                new java.lang.Class[] { messageClass });
                        m.invoke(ex, new java.lang.Object[] { messageObject });

                        throw new java.rmi.RemoteException(ex.getMessage(), ex);
                    } catch (java.lang.ClassCastException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.ClassNotFoundException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.NoSuchMethodException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.reflect.InvocationTargetException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.IllegalAccessException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.InstantiationException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    }
                } else {
                    throw f;
                }
            } else {
                throw f;
            }
        } finally {
            if (_messageContext.getTransportOut() != null) {
                _messageContext.getTransportOut().getSender()
                               .cleanup(_messageContext);
            }
        }
    }

    /**
     * Auto generated method signature
     *
     * @see br.gov.sp.indaiatuba.nfse.NfseWebServiceService#consultarNfseServicoPrestado
     * @param consultarNfseServicoPrestadoRequest52
     */
    public java.lang.String consultarNfseServicoPrestado(
        java.lang.String nfseCabecMsg53, java.lang.String nfseDadosMsg54)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[5].getName());
            _operationClient.getOptions()
                            .setAction("http://nfse.indaiatuba.sp.gov.br/ConsultarNfseServicoPrestado");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoPrestadoRequest dummyWrappedType =
                null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    nfseCabecMsg53, nfseDadosMsg54, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://nfse.indaiatuba.sp.gov.br",
                            "consultarNfseServicoPrestado")));

            //adding SOAP soap_headers
            _serviceClient.addHeadersToEnvelope(env);
            // set the message context with that soap envelope
            _messageContext.setEnvelope(env);

            // add the message contxt to the operation client
            _operationClient.addMessageContext(_messageContext);

            //execute the operation client
            _operationClient.execute(true);

            org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient.getMessageContext(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
            org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext.getEnvelope();

            java.lang.Object object = fromOM(_returnEnv.getBody()
                                                       .getFirstElement(),
                    br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoPrestadoResponse.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getConsultarNfseServicoPrestadoResponseOutputXML((br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoPrestadoResponse) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(),
                                "ConsultarNfseServicoPrestado"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(),
                                    "ConsultarNfseServicoPrestado"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(),
                                    "ConsultarNfseServicoPrestado"));
                        java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
                        java.lang.Object messageObject = fromOM(faultElt,
                                messageClass, null);
                        java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage",
                                new java.lang.Class[] { messageClass });
                        m.invoke(ex, new java.lang.Object[] { messageObject });

                        throw new java.rmi.RemoteException(ex.getMessage(), ex);
                    } catch (java.lang.ClassCastException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.ClassNotFoundException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.NoSuchMethodException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.reflect.InvocationTargetException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.IllegalAccessException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.InstantiationException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    }
                } else {
                    throw f;
                }
            } else {
                throw f;
            }
        } finally {
            if (_messageContext.getTransportOut() != null) {
                _messageContext.getTransportOut().getSender()
                               .cleanup(_messageContext);
            }
        }
    }

    /**
     * Auto generated method signature
     *
     * @see br.gov.sp.indaiatuba.nfse.NfseWebServiceService#consultarNfsePorRps
     * @param consultarNfsePorRpsRequest57
     */
    public java.lang.String consultarNfsePorRps(
        java.lang.String nfseCabecMsg58, java.lang.String nfseDadosMsg59)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[6].getName());
            _operationClient.getOptions()
                            .setAction("http://nfse.indaiatuba.sp.gov.br/ConsultarNfsePorRps");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.gov.sp.indaiatuba.nfse.ConsultarNfsePorRpsRequest dummyWrappedType =
                null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    nfseCabecMsg58, nfseDadosMsg59, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://nfse.indaiatuba.sp.gov.br",
                            "consultarNfsePorRps")));

            //adding SOAP soap_headers
            _serviceClient.addHeadersToEnvelope(env);
            // set the message context with that soap envelope
            _messageContext.setEnvelope(env);

            // add the message contxt to the operation client
            _operationClient.addMessageContext(_messageContext);

            //execute the operation client
            _operationClient.execute(true);

            org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient.getMessageContext(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
            org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext.getEnvelope();

            java.lang.Object object = fromOM(_returnEnv.getBody()
                                                       .getFirstElement(),
                    br.gov.sp.indaiatuba.nfse.ConsultarNfsePorRpsResponse.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getConsultarNfsePorRpsResponseOutputXML((br.gov.sp.indaiatuba.nfse.ConsultarNfsePorRpsResponse) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "ConsultarNfsePorRps"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "ConsultarNfsePorRps"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "ConsultarNfsePorRps"));
                        java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
                        java.lang.Object messageObject = fromOM(faultElt,
                                messageClass, null);
                        java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage",
                                new java.lang.Class[] { messageClass });
                        m.invoke(ex, new java.lang.Object[] { messageObject });

                        throw new java.rmi.RemoteException(ex.getMessage(), ex);
                    } catch (java.lang.ClassCastException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.ClassNotFoundException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.NoSuchMethodException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.reflect.InvocationTargetException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.IllegalAccessException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.InstantiationException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    }
                } else {
                    throw f;
                }
            } else {
                throw f;
            }
        } finally {
            if (_messageContext.getTransportOut() != null) {
                _messageContext.getTransportOut().getSender()
                               .cleanup(_messageContext);
            }
        }
    }

    /**
     * Auto generated method signature
     *
     * @see br.gov.sp.indaiatuba.nfse.NfseWebServiceService#consultarNfseServicoTomado
     * @param consultarNfseServicoTomadoRequest62
     */
    public java.lang.String consultarNfseServicoTomado(
        java.lang.String nfseCabecMsg63, java.lang.String nfseDadosMsg64)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[7].getName());
            _operationClient.getOptions()
                            .setAction("http://nfse.indaiatuba.sp.gov.br/ConsultarNfseServicoTomado");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoTomadoRequest dummyWrappedType =
                null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    nfseCabecMsg63, nfseDadosMsg64, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://nfse.indaiatuba.sp.gov.br",
                            "consultarNfseServicoTomado")));

            //adding SOAP soap_headers
            _serviceClient.addHeadersToEnvelope(env);
            // set the message context with that soap envelope
            _messageContext.setEnvelope(env);

            // add the message contxt to the operation client
            _operationClient.addMessageContext(_messageContext);

            //execute the operation client
            _operationClient.execute(true);

            org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient.getMessageContext(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
            org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext.getEnvelope();

            java.lang.Object object = fromOM(_returnEnv.getBody()
                                                       .getFirstElement(),
                    br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoTomadoResponse.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getConsultarNfseServicoTomadoResponseOutputXML((br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoTomadoResponse) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(),
                                "ConsultarNfseServicoTomado"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(),
                                    "ConsultarNfseServicoTomado"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(),
                                    "ConsultarNfseServicoTomado"));
                        java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
                        java.lang.Object messageObject = fromOM(faultElt,
                                messageClass, null);
                        java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage",
                                new java.lang.Class[] { messageClass });
                        m.invoke(ex, new java.lang.Object[] { messageObject });

                        throw new java.rmi.RemoteException(ex.getMessage(), ex);
                    } catch (java.lang.ClassCastException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.ClassNotFoundException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.NoSuchMethodException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.reflect.InvocationTargetException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.IllegalAccessException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.InstantiationException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    }
                } else {
                    throw f;
                }
            } else {
                throw f;
            }
        } finally {
            if (_messageContext.getTransportOut() != null) {
                _messageContext.getTransportOut().getSender()
                               .cleanup(_messageContext);
            }
        }
    }

    /**
     * Auto generated method signature
     *
     * @see br.gov.sp.indaiatuba.nfse.NfseWebServiceService#recepcionarLoteRps
     * @param recepcionarLoteRpsRequest67
     */
    public java.lang.String recepcionarLoteRps(
        java.lang.String nfseCabecMsg68, java.lang.String nfseDadosMsg69)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[8].getName());
            _operationClient.getOptions()
                            .setAction("http://nfse.indaiatuba.sp.gov.br/RecepcionarLoteRps");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsRequest dummyWrappedType =
                null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    nfseCabecMsg68, nfseDadosMsg69, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://nfse.indaiatuba.sp.gov.br",
                            "recepcionarLoteRps")));

            //adding SOAP soap_headers
            _serviceClient.addHeadersToEnvelope(env);
            // set the message context with that soap envelope
            _messageContext.setEnvelope(env);

            // add the message contxt to the operation client
            _operationClient.addMessageContext(_messageContext);

            //execute the operation client
            _operationClient.execute(true);

            org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient.getMessageContext(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
            org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext.getEnvelope();

            java.lang.Object object = fromOM(_returnEnv.getBody()
                                                       .getFirstElement(),
                    br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsResponse.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getRecepcionarLoteRpsResponseOutputXML((br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsResponse) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "RecepcionarLoteRps"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "RecepcionarLoteRps"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "RecepcionarLoteRps"));
                        java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
                        java.lang.Object messageObject = fromOM(faultElt,
                                messageClass, null);
                        java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage",
                                new java.lang.Class[] { messageClass });
                        m.invoke(ex, new java.lang.Object[] { messageObject });

                        throw new java.rmi.RemoteException(ex.getMessage(), ex);
                    } catch (java.lang.ClassCastException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.ClassNotFoundException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.NoSuchMethodException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.reflect.InvocationTargetException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.IllegalAccessException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.InstantiationException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    }
                } else {
                    throw f;
                }
            } else {
                throw f;
            }
        } finally {
            if (_messageContext.getTransportOut() != null) {
                _messageContext.getTransportOut().getSender()
                               .cleanup(_messageContext);
            }
        }
    }

    /**
     * Auto generated method signature
     *
     * @see br.gov.sp.indaiatuba.nfse.NfseWebServiceService#recepcionarLoteRpsSincrono
     * @param recepcionarLoteRpsSincronoRequest72
     */
    public java.lang.String recepcionarLoteRpsSincrono(
        java.lang.String nfseCabecMsg73, java.lang.String nfseDadosMsg74)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[9].getName());
            _operationClient.getOptions()
                            .setAction("http://nfse.indaiatuba.sp.gov.br/RecepcionarLoteRpsSincrono");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsSincronoRequest dummyWrappedType =
                null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    nfseCabecMsg73, nfseDadosMsg74, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://nfse.indaiatuba.sp.gov.br",
                            "recepcionarLoteRpsSincrono")));

            //adding SOAP soap_headers
            _serviceClient.addHeadersToEnvelope(env);
            // set the message context with that soap envelope
            _messageContext.setEnvelope(env);

            // add the message contxt to the operation client
            _operationClient.addMessageContext(_messageContext);

            //execute the operation client
            _operationClient.execute(true);

            org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient.getMessageContext(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
            org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext.getEnvelope();

            java.lang.Object object = fromOM(_returnEnv.getBody()
                                                       .getFirstElement(),
                    br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsSincronoResponse.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getRecepcionarLoteRpsSincronoResponseOutputXML((br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsSincronoResponse) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(),
                                "RecepcionarLoteRpsSincrono"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(),
                                    "RecepcionarLoteRpsSincrono"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(),
                                    "RecepcionarLoteRpsSincrono"));
                        java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
                        java.lang.Object messageObject = fromOM(faultElt,
                                messageClass, null);
                        java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage",
                                new java.lang.Class[] { messageClass });
                        m.invoke(ex, new java.lang.Object[] { messageObject });

                        throw new java.rmi.RemoteException(ex.getMessage(), ex);
                    } catch (java.lang.ClassCastException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.ClassNotFoundException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.NoSuchMethodException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.reflect.InvocationTargetException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.IllegalAccessException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.InstantiationException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    }
                } else {
                    throw f;
                }
            } else {
                throw f;
            }
        } finally {
            if (_messageContext.getTransportOut() != null) {
                _messageContext.getTransportOut().getSender()
                               .cleanup(_messageContext);
            }
        }
    }

    /**
     *  A utility method that copies the namepaces from the SOAPEnvelope
     */
    private java.util.Map getEnvelopeNamespaces(
        org.apache.axiom.soap.SOAPEnvelope env) {
        java.util.Map returnMap = new java.util.HashMap();
        java.util.Iterator namespaceIterator = env.getAllDeclaredNamespaces();

        while (namespaceIterator.hasNext()) {
            org.apache.axiom.om.OMNamespace ns = (org.apache.axiom.om.OMNamespace) namespaceIterator.next();
            returnMap.put(ns.getPrefix(), ns.getNamespaceURI());
        }

        return returnMap;
    }

    private boolean optimizeContent(javax.xml.namespace.QName opName) {
        if (opNameArray == null) {
            return false;
        }

        for (int i = 0; i < opNameArray.length; i++) {
            if (opName.equals(opNameArray[i])) {
                return true;
            }
        }

        return false;
    }

    //https://deiss.indaiatuba.sp.gov.br/homologacao/nfse
    private org.apache.axiom.om.OMElement toOM(
        br.gov.sp.indaiatuba.nfse.SubstituirNfseRequest param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.sp.indaiatuba.nfse.SubstituirNfseRequest.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.sp.indaiatuba.nfse.SubstituirNfseResponse param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.sp.indaiatuba.nfse.SubstituirNfseResponse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.sp.indaiatuba.nfse.GerarNfseRequest param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.sp.indaiatuba.nfse.GerarNfseRequest.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.sp.indaiatuba.nfse.GerarNfseResponse param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.sp.indaiatuba.nfse.GerarNfseResponse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.sp.indaiatuba.nfse.ConsultarNfsePorFaixaRequest param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.sp.indaiatuba.nfse.ConsultarNfsePorFaixaRequest.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.sp.indaiatuba.nfse.ConsultarNfsePorFaixaResponse param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.sp.indaiatuba.nfse.ConsultarNfsePorFaixaResponse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.sp.indaiatuba.nfse.CancelarNfseRequest param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.sp.indaiatuba.nfse.CancelarNfseRequest.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.sp.indaiatuba.nfse.CancelarNfseResponse param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.sp.indaiatuba.nfse.CancelarNfseResponse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.sp.indaiatuba.nfse.ConsultarLoteRpsRequest param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.sp.indaiatuba.nfse.ConsultarLoteRpsRequest.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.sp.indaiatuba.nfse.ConsultarLoteRpsResponse param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.sp.indaiatuba.nfse.ConsultarLoteRpsResponse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoPrestadoRequest param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoPrestadoRequest.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoPrestadoResponse param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoPrestadoResponse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.sp.indaiatuba.nfse.ConsultarNfsePorRpsRequest param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.sp.indaiatuba.nfse.ConsultarNfsePorRpsRequest.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.sp.indaiatuba.nfse.ConsultarNfsePorRpsResponse param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.sp.indaiatuba.nfse.ConsultarNfsePorRpsResponse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoTomadoRequest param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoTomadoRequest.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoTomadoResponse param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoTomadoResponse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsRequest param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsRequest.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsResponse param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsResponse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsSincronoRequest param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsSincronoRequest.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsSincronoResponse param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsSincronoResponse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        java.lang.String param2,
        br.gov.sp.indaiatuba.nfse.GerarNfseRequest dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.gov.sp.indaiatuba.nfse.GerarNfseRequest wrappedType = new br.gov.sp.indaiatuba.nfse.GerarNfseRequest();

            br.gov.sp.indaiatuba.nfse.Input wrappedComplexType = new br.gov.sp.indaiatuba.nfse.Input();

            wrappedComplexType.setNfseCabecMsg(param1);

            wrappedComplexType.setNfseDadosMsg(param2);

            wrappedType.setGerarNfseRequest(wrappedComplexType);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.gov.sp.indaiatuba.nfse.GerarNfseRequest.MY_QNAME, factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private br.gov.sp.indaiatuba.nfse.Input getGerarNfse(
        br.gov.sp.indaiatuba.nfse.GerarNfseRequest wrappedType) {
        return wrappedType.getGerarNfseRequest();
    }

    private br.gov.sp.indaiatuba.nfse.GerarNfseRequest wrapGerarNfse(
        br.gov.sp.indaiatuba.nfse.Input innerType) {
        br.gov.sp.indaiatuba.nfse.GerarNfseRequest wrappedElement = new br.gov.sp.indaiatuba.nfse.GerarNfseRequest();
        wrappedElement.setGerarNfseRequest(innerType);

        return wrappedElement;
    }

    private java.lang.String getGerarNfseResponseOutputXML(
        br.gov.sp.indaiatuba.nfse.GerarNfseResponse wrappedType) {
        return wrappedType.getGerarNfseResponse().getOutputXML();
    }

    private br.gov.sp.indaiatuba.nfse.Output getGerarNfse(
        br.gov.sp.indaiatuba.nfse.GerarNfseResponse wrappedType) {
        return wrappedType.getGerarNfseResponse();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        java.lang.String param2,
        br.gov.sp.indaiatuba.nfse.SubstituirNfseRequest dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.gov.sp.indaiatuba.nfse.SubstituirNfseRequest wrappedType = new br.gov.sp.indaiatuba.nfse.SubstituirNfseRequest();

            br.gov.sp.indaiatuba.nfse.Input wrappedComplexType = new br.gov.sp.indaiatuba.nfse.Input();

            wrappedComplexType.setNfseCabecMsg(param1);

            wrappedComplexType.setNfseDadosMsg(param2);

            wrappedType.setSubstituirNfseRequest(wrappedComplexType);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.gov.sp.indaiatuba.nfse.SubstituirNfseRequest.MY_QNAME,
                    factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private br.gov.sp.indaiatuba.nfse.Input getSubstituirNfse(
        br.gov.sp.indaiatuba.nfse.SubstituirNfseRequest wrappedType) {
        return wrappedType.getSubstituirNfseRequest();
    }

    private br.gov.sp.indaiatuba.nfse.SubstituirNfseRequest wrapSubstituirNfse(
        br.gov.sp.indaiatuba.nfse.Input innerType) {
        br.gov.sp.indaiatuba.nfse.SubstituirNfseRequest wrappedElement = new br.gov.sp.indaiatuba.nfse.SubstituirNfseRequest();
        wrappedElement.setSubstituirNfseRequest(innerType);

        return wrappedElement;
    }

    private java.lang.String getSubstituirNfseResponseOutputXML(
        br.gov.sp.indaiatuba.nfse.SubstituirNfseResponse wrappedType) {
        return wrappedType.getSubstituirNfseResponse().getOutputXML();
    }

    private br.gov.sp.indaiatuba.nfse.Output getSubstituirNfse(
        br.gov.sp.indaiatuba.nfse.SubstituirNfseResponse wrappedType) {
        return wrappedType.getSubstituirNfseResponse();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        java.lang.String param2,
        br.gov.sp.indaiatuba.nfse.ConsultarNfsePorFaixaRequest dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.gov.sp.indaiatuba.nfse.ConsultarNfsePorFaixaRequest wrappedType = new br.gov.sp.indaiatuba.nfse.ConsultarNfsePorFaixaRequest();

            br.gov.sp.indaiatuba.nfse.Input wrappedComplexType = new br.gov.sp.indaiatuba.nfse.Input();

            wrappedComplexType.setNfseCabecMsg(param1);

            wrappedComplexType.setNfseDadosMsg(param2);

            wrappedType.setConsultarNfsePorFaixaRequest(wrappedComplexType);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.gov.sp.indaiatuba.nfse.ConsultarNfsePorFaixaRequest.MY_QNAME,
                    factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private br.gov.sp.indaiatuba.nfse.Input getConsultarNfsePorFaixa(
        br.gov.sp.indaiatuba.nfse.ConsultarNfsePorFaixaRequest wrappedType) {
        return wrappedType.getConsultarNfsePorFaixaRequest();
    }

    private br.gov.sp.indaiatuba.nfse.ConsultarNfsePorFaixaRequest wrapConsultarNfsePorFaixa(
        br.gov.sp.indaiatuba.nfse.Input innerType) {
        br.gov.sp.indaiatuba.nfse.ConsultarNfsePorFaixaRequest wrappedElement = new br.gov.sp.indaiatuba.nfse.ConsultarNfsePorFaixaRequest();
        wrappedElement.setConsultarNfsePorFaixaRequest(innerType);

        return wrappedElement;
    }

    private java.lang.String getConsultarNfsePorFaixaResponseOutputXML(
        br.gov.sp.indaiatuba.nfse.ConsultarNfsePorFaixaResponse wrappedType) {
        return wrappedType.getConsultarNfsePorFaixaResponse().getOutputXML();
    }

    private br.gov.sp.indaiatuba.nfse.Output getConsultarNfsePorFaixa(
        br.gov.sp.indaiatuba.nfse.ConsultarNfsePorFaixaResponse wrappedType) {
        return wrappedType.getConsultarNfsePorFaixaResponse();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        java.lang.String param2,
        br.gov.sp.indaiatuba.nfse.CancelarNfseRequest dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.gov.sp.indaiatuba.nfse.CancelarNfseRequest wrappedType = new br.gov.sp.indaiatuba.nfse.CancelarNfseRequest();

            br.gov.sp.indaiatuba.nfse.Input wrappedComplexType = new br.gov.sp.indaiatuba.nfse.Input();

            wrappedComplexType.setNfseCabecMsg(param1);

            wrappedComplexType.setNfseDadosMsg(param2);

            wrappedType.setCancelarNfseRequest(wrappedComplexType);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.gov.sp.indaiatuba.nfse.CancelarNfseRequest.MY_QNAME,
                    factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private br.gov.sp.indaiatuba.nfse.Input getCancelarNfse(
        br.gov.sp.indaiatuba.nfse.CancelarNfseRequest wrappedType) {
        return wrappedType.getCancelarNfseRequest();
    }

    private br.gov.sp.indaiatuba.nfse.CancelarNfseRequest wrapCancelarNfse(
        br.gov.sp.indaiatuba.nfse.Input innerType) {
        br.gov.sp.indaiatuba.nfse.CancelarNfseRequest wrappedElement = new br.gov.sp.indaiatuba.nfse.CancelarNfseRequest();
        wrappedElement.setCancelarNfseRequest(innerType);

        return wrappedElement;
    }

    private java.lang.String getCancelarNfseResponseOutputXML(
        br.gov.sp.indaiatuba.nfse.CancelarNfseResponse wrappedType) {
        return wrappedType.getCancelarNfseResponse().getOutputXML();
    }

    private br.gov.sp.indaiatuba.nfse.Output getCancelarNfse(
        br.gov.sp.indaiatuba.nfse.CancelarNfseResponse wrappedType) {
        return wrappedType.getCancelarNfseResponse();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        java.lang.String param2,
        br.gov.sp.indaiatuba.nfse.ConsultarLoteRpsRequest dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.gov.sp.indaiatuba.nfse.ConsultarLoteRpsRequest wrappedType = new br.gov.sp.indaiatuba.nfse.ConsultarLoteRpsRequest();

            br.gov.sp.indaiatuba.nfse.Input wrappedComplexType = new br.gov.sp.indaiatuba.nfse.Input();

            wrappedComplexType.setNfseCabecMsg(param1);

            wrappedComplexType.setNfseDadosMsg(param2);

            wrappedType.setConsultarLoteRpsRequest(wrappedComplexType);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.gov.sp.indaiatuba.nfse.ConsultarLoteRpsRequest.MY_QNAME,
                    factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private br.gov.sp.indaiatuba.nfse.Input getConsultarLoteRps(
        br.gov.sp.indaiatuba.nfse.ConsultarLoteRpsRequest wrappedType) {
        return wrappedType.getConsultarLoteRpsRequest();
    }

    private br.gov.sp.indaiatuba.nfse.ConsultarLoteRpsRequest wrapConsultarLoteRps(
        br.gov.sp.indaiatuba.nfse.Input innerType) {
        br.gov.sp.indaiatuba.nfse.ConsultarLoteRpsRequest wrappedElement = new br.gov.sp.indaiatuba.nfse.ConsultarLoteRpsRequest();
        wrappedElement.setConsultarLoteRpsRequest(innerType);

        return wrappedElement;
    }

    private java.lang.String getConsultarLoteRpsResponseOutputXML(
        br.gov.sp.indaiatuba.nfse.ConsultarLoteRpsResponse wrappedType) {
        return wrappedType.getConsultarLoteRpsResponse().getOutputXML();
    }

    private br.gov.sp.indaiatuba.nfse.Output getConsultarLoteRps(
        br.gov.sp.indaiatuba.nfse.ConsultarLoteRpsResponse wrappedType) {
        return wrappedType.getConsultarLoteRpsResponse();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        java.lang.String param2,
        br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoPrestadoRequest dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoPrestadoRequest wrappedType =
                new br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoPrestadoRequest();

            br.gov.sp.indaiatuba.nfse.Input wrappedComplexType = new br.gov.sp.indaiatuba.nfse.Input();

            wrappedComplexType.setNfseCabecMsg(param1);

            wrappedComplexType.setNfseDadosMsg(param2);

            wrappedType.setConsultarNfseServicoPrestadoRequest(wrappedComplexType);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoPrestadoRequest.MY_QNAME,
                    factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private br.gov.sp.indaiatuba.nfse.Input getConsultarNfseServicoPrestado(
        br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoPrestadoRequest wrappedType) {
        return wrappedType.getConsultarNfseServicoPrestadoRequest();
    }

    private br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoPrestadoRequest wrapConsultarNfseServicoPrestado(
        br.gov.sp.indaiatuba.nfse.Input innerType) {
        br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoPrestadoRequest wrappedElement =
            new br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoPrestadoRequest();
        wrappedElement.setConsultarNfseServicoPrestadoRequest(innerType);

        return wrappedElement;
    }

    private java.lang.String getConsultarNfseServicoPrestadoResponseOutputXML(
        br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoPrestadoResponse wrappedType) {
        return wrappedType.getConsultarNfseServicoPrestadoResponse()
                          .getOutputXML();
    }

    private br.gov.sp.indaiatuba.nfse.Output getConsultarNfseServicoPrestado(
        br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoPrestadoResponse wrappedType) {
        return wrappedType.getConsultarNfseServicoPrestadoResponse();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        java.lang.String param2,
        br.gov.sp.indaiatuba.nfse.ConsultarNfsePorRpsRequest dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.gov.sp.indaiatuba.nfse.ConsultarNfsePorRpsRequest wrappedType = new br.gov.sp.indaiatuba.nfse.ConsultarNfsePorRpsRequest();

            br.gov.sp.indaiatuba.nfse.Input wrappedComplexType = new br.gov.sp.indaiatuba.nfse.Input();

            wrappedComplexType.setNfseCabecMsg(param1);

            wrappedComplexType.setNfseDadosMsg(param2);

            wrappedType.setConsultarNfsePorRpsRequest(wrappedComplexType);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.gov.sp.indaiatuba.nfse.ConsultarNfsePorRpsRequest.MY_QNAME,
                    factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private br.gov.sp.indaiatuba.nfse.Input getConsultarNfsePorRps(
        br.gov.sp.indaiatuba.nfse.ConsultarNfsePorRpsRequest wrappedType) {
        return wrappedType.getConsultarNfsePorRpsRequest();
    }

    private br.gov.sp.indaiatuba.nfse.ConsultarNfsePorRpsRequest wrapConsultarNfsePorRps(
        br.gov.sp.indaiatuba.nfse.Input innerType) {
        br.gov.sp.indaiatuba.nfse.ConsultarNfsePorRpsRequest wrappedElement = new br.gov.sp.indaiatuba.nfse.ConsultarNfsePorRpsRequest();
        wrappedElement.setConsultarNfsePorRpsRequest(innerType);

        return wrappedElement;
    }

    private java.lang.String getConsultarNfsePorRpsResponseOutputXML(
        br.gov.sp.indaiatuba.nfse.ConsultarNfsePorRpsResponse wrappedType) {
        return wrappedType.getConsultarNfsePorRpsResponse().getOutputXML();
    }

    private br.gov.sp.indaiatuba.nfse.Output getConsultarNfsePorRps(
        br.gov.sp.indaiatuba.nfse.ConsultarNfsePorRpsResponse wrappedType) {
        return wrappedType.getConsultarNfsePorRpsResponse();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        java.lang.String param2,
        br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoTomadoRequest dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoTomadoRequest wrappedType =
                new br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoTomadoRequest();

            br.gov.sp.indaiatuba.nfse.Input wrappedComplexType = new br.gov.sp.indaiatuba.nfse.Input();

            wrappedComplexType.setNfseCabecMsg(param1);

            wrappedComplexType.setNfseDadosMsg(param2);

            wrappedType.setConsultarNfseServicoTomadoRequest(wrappedComplexType);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoTomadoRequest.MY_QNAME,
                    factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private br.gov.sp.indaiatuba.nfse.Input getConsultarNfseServicoTomado(
        br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoTomadoRequest wrappedType) {
        return wrappedType.getConsultarNfseServicoTomadoRequest();
    }

    private br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoTomadoRequest wrapConsultarNfseServicoTomado(
        br.gov.sp.indaiatuba.nfse.Input innerType) {
        br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoTomadoRequest wrappedElement =
            new br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoTomadoRequest();
        wrappedElement.setConsultarNfseServicoTomadoRequest(innerType);

        return wrappedElement;
    }

    private java.lang.String getConsultarNfseServicoTomadoResponseOutputXML(
        br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoTomadoResponse wrappedType) {
        return wrappedType.getConsultarNfseServicoTomadoResponse().getOutputXML();
    }

    private br.gov.sp.indaiatuba.nfse.Output getConsultarNfseServicoTomado(
        br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoTomadoResponse wrappedType) {
        return wrappedType.getConsultarNfseServicoTomadoResponse();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        java.lang.String param2,
        br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsRequest dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsRequest wrappedType = new br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsRequest();

            br.gov.sp.indaiatuba.nfse.Input wrappedComplexType = new br.gov.sp.indaiatuba.nfse.Input();

            wrappedComplexType.setNfseCabecMsg(param1);

            wrappedComplexType.setNfseDadosMsg(param2);

            wrappedType.setRecepcionarLoteRpsRequest(wrappedComplexType);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsRequest.MY_QNAME,
                    factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private br.gov.sp.indaiatuba.nfse.Input getRecepcionarLoteRps(
        br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsRequest wrappedType) {
        return wrappedType.getRecepcionarLoteRpsRequest();
    }

    private br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsRequest wrapRecepcionarLoteRps(
        br.gov.sp.indaiatuba.nfse.Input innerType) {
        br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsRequest wrappedElement = new br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsRequest();
        wrappedElement.setRecepcionarLoteRpsRequest(innerType);

        return wrappedElement;
    }

    private java.lang.String getRecepcionarLoteRpsResponseOutputXML(
        br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsResponse wrappedType) {
        return wrappedType.getRecepcionarLoteRpsResponse().getOutputXML();
    }

    private br.gov.sp.indaiatuba.nfse.Output getRecepcionarLoteRps(
        br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsResponse wrappedType) {
        return wrappedType.getRecepcionarLoteRpsResponse();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        java.lang.String param2,
        br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsSincronoRequest dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsSincronoRequest wrappedType =
                new br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsSincronoRequest();

            br.gov.sp.indaiatuba.nfse.Input wrappedComplexType = new br.gov.sp.indaiatuba.nfse.Input();

            wrappedComplexType.setNfseCabecMsg(param1);

            wrappedComplexType.setNfseDadosMsg(param2);

            wrappedType.setRecepcionarLoteRpsSincronoRequest(wrappedComplexType);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsSincronoRequest.MY_QNAME,
                    factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private br.gov.sp.indaiatuba.nfse.Input getRecepcionarLoteRpsSincrono(
        br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsSincronoRequest wrappedType) {
        return wrappedType.getRecepcionarLoteRpsSincronoRequest();
    }

    private br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsSincronoRequest wrapRecepcionarLoteRpsSincrono(
        br.gov.sp.indaiatuba.nfse.Input innerType) {
        br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsSincronoRequest wrappedElement =
            new br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsSincronoRequest();
        wrappedElement.setRecepcionarLoteRpsSincronoRequest(innerType);

        return wrappedElement;
    }

    private java.lang.String getRecepcionarLoteRpsSincronoResponseOutputXML(
        br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsSincronoResponse wrappedType) {
        return wrappedType.getRecepcionarLoteRpsSincronoResponse().getOutputXML();
    }

    private br.gov.sp.indaiatuba.nfse.Output getRecepcionarLoteRpsSincrono(
        br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsSincronoResponse wrappedType) {
        return wrappedType.getRecepcionarLoteRpsSincronoResponse();
    }

    /**
     *  get the default envelope
     */
    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory) {
        return factory.getDefaultEnvelope();
    }

    private java.lang.Object fromOM(org.apache.axiom.om.OMElement param,
        java.lang.Class type, java.util.Map extraNamespaces)
        throws org.apache.axis2.AxisFault {
        try {
            if (br.gov.sp.indaiatuba.nfse.CancelarNfseRequest.class.equals(type)) {
                return br.gov.sp.indaiatuba.nfse.CancelarNfseRequest.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.sp.indaiatuba.nfse.CancelarNfseResponse.class.equals(
                        type)) {
                return br.gov.sp.indaiatuba.nfse.CancelarNfseResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.sp.indaiatuba.nfse.ConsultarLoteRpsRequest.class.equals(
                        type)) {
                return br.gov.sp.indaiatuba.nfse.ConsultarLoteRpsRequest.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.sp.indaiatuba.nfse.ConsultarLoteRpsResponse.class.equals(
                        type)) {
                return br.gov.sp.indaiatuba.nfse.ConsultarLoteRpsResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.sp.indaiatuba.nfse.ConsultarNfsePorFaixaRequest.class.equals(
                        type)) {
                return br.gov.sp.indaiatuba.nfse.ConsultarNfsePorFaixaRequest.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.sp.indaiatuba.nfse.ConsultarNfsePorFaixaResponse.class.equals(
                        type)) {
                return br.gov.sp.indaiatuba.nfse.ConsultarNfsePorFaixaResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.sp.indaiatuba.nfse.ConsultarNfsePorRpsRequest.class.equals(
                        type)) {
                return br.gov.sp.indaiatuba.nfse.ConsultarNfsePorRpsRequest.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.sp.indaiatuba.nfse.ConsultarNfsePorRpsResponse.class.equals(
                        type)) {
                return br.gov.sp.indaiatuba.nfse.ConsultarNfsePorRpsResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoPrestadoRequest.class.equals(
                        type)) {
                return br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoPrestadoRequest.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoPrestadoResponse.class.equals(
                        type)) {
                return br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoPrestadoResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoTomadoRequest.class.equals(
                        type)) {
                return br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoTomadoRequest.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoTomadoResponse.class.equals(
                        type)) {
                return br.gov.sp.indaiatuba.nfse.ConsultarNfseServicoTomadoResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.sp.indaiatuba.nfse.GerarNfseRequest.class.equals(type)) {
                return br.gov.sp.indaiatuba.nfse.GerarNfseRequest.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.sp.indaiatuba.nfse.GerarNfseResponse.class.equals(type)) {
                return br.gov.sp.indaiatuba.nfse.GerarNfseResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsRequest.class.equals(
                        type)) {
                return br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsRequest.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsResponse.class.equals(
                        type)) {
                return br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsSincronoRequest.class.equals(
                        type)) {
                return br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsSincronoRequest.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsSincronoResponse.class.equals(
                        type)) {
                return br.gov.sp.indaiatuba.nfse.RecepcionarLoteRpsSincronoResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.sp.indaiatuba.nfse.SubstituirNfseRequest.class.equals(
                        type)) {
                return br.gov.sp.indaiatuba.nfse.SubstituirNfseRequest.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.sp.indaiatuba.nfse.SubstituirNfseResponse.class.equals(
                        type)) {
                return br.gov.sp.indaiatuba.nfse.SubstituirNfseResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }
        } catch (java.lang.Exception e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }

        return null;
    }
}
