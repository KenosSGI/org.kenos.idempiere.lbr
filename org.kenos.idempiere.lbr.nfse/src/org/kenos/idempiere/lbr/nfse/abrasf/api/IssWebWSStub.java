/**
 * IssWebWSStub.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.4  Built on : Dec 28, 2015 (10:03:39 GMT)
 */
package org.kenos.idempiere.lbr.nfse.abrasf.api;


/*
 *  IssWebWSStub java implementation
 */
public class IssWebWSStub extends org.apache.axis2.client.Stub
    implements IssWebWS {
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
    public IssWebWSStub(
        org.apache.axis2.context.ConfigurationContext configurationContext,
        java.lang.String targetEndpoint) throws org.apache.axis2.AxisFault {
        this(configurationContext, targetEndpoint, false);
    }

    /**
     * Constructor that takes in a configContext  and useseperate listner
     */
    public IssWebWSStub(
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
    public IssWebWSStub(
        org.apache.axis2.context.ConfigurationContext configurationContext)
        throws org.apache.axis2.AxisFault {
        this(configurationContext,
            "http://fi1.fiorilli.com.br:5663/IssWeb-ejb/IssWebWS/IssWebWS");
    }

    /**
     * Default Constructor
     */
    public IssWebWSStub() throws org.apache.axis2.AxisFault {
        this("http://fi1.fiorilli.com.br:5663/IssWeb-ejb/IssWebWS/IssWebWS");
    }

    /**
     * Constructor taking the target endpoint
     */
    public IssWebWSStub(java.lang.String targetEndpoint)
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
        _service = new org.apache.axis2.description.AxisService("IssWebWS" +
                getUniqueSuffix());
        addAnonymousOperations();

        //creating the operations
        org.apache.axis2.description.AxisOperation __operation;

        _operations = new org.apache.axis2.description.AxisOperation[10];

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://ws.issweb.fiorilli.com.br/", "recepcionarLoteRps"));
        _service.addOperation(__operation);

        _operations[0] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://ws.issweb.fiorilli.com.br/",
                "consultarNfseServicoTomado"));
        _service.addOperation(__operation);

        _operations[1] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://ws.issweb.fiorilli.com.br/", "consultarLoteRps"));
        _service.addOperation(__operation);

        _operations[2] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://ws.issweb.fiorilli.com.br/", "consultarNfsePorRps"));
        _service.addOperation(__operation);

        _operations[3] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://ws.issweb.fiorilli.com.br/",
                "recepcionarLoteRpsSincrono"));
        _service.addOperation(__operation);

        _operations[4] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://ws.issweb.fiorilli.com.br/", "consultarNfsePorFaixa"));
        _service.addOperation(__operation);

        _operations[5] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://ws.issweb.fiorilli.com.br/",
                "consultarNfseServicoPrestado"));
        _service.addOperation(__operation);

        _operations[6] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://ws.issweb.fiorilli.com.br/", "substituirNfse"));
        _service.addOperation(__operation);

        _operations[7] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://ws.issweb.fiorilli.com.br/", "cancelarNfse"));
        _service.addOperation(__operation);

        _operations[8] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://ws.issweb.fiorilli.com.br/", "gerarNfse"));
        _service.addOperation(__operation);

        _operations[9] = __operation;
    }

    //populates the faults
    private void populateFaults() {
    }

    /**
     * Auto generated method signature
     *
     * @see org.kenos.idempiere.lbr.nfse.abrasf.api.IssWebWS#recepcionarLoteRps
     * @param recepcionarLoteRps18
     */
    public br.org.abrasf.www.nfse_xsd.EnviarLoteRpsResposta_type0 recepcionarLoteRps(
        br.org.abrasf.www.nfse_xsd.EnviarLoteRpsEnvio_type0 enviarLoteRpsEnvio19,
        java.lang.String username20, java.lang.String password21)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[0].getName());
            _operationClient.getOptions().setAction("recepcionarLoteRps");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.com.fiorilli.issweb.ws.RecepcionarLoteRpsE dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    enviarLoteRpsEnvio19, username20, password21,
                    dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://ws.issweb.fiorilli.com.br/",
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
                    br.com.fiorilli.issweb.ws.RecepcionarLoteRpsResponseE.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getRecepcionarLoteRpsResponseEnviarLoteRpsResposta((br.com.fiorilli.issweb.ws.RecepcionarLoteRpsResponseE) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "recepcionarLoteRps"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "recepcionarLoteRps"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "recepcionarLoteRps"));
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
     * @see org.kenos.idempiere.lbr.nfse.abrasf.api.IssWebWS#consultarNfseServicoTomado
     * @param consultarNfseServicoTomado24
     */
    public br.org.abrasf.www.nfse_xsd.ConsultarNfseServicoTomadoResposta_type0 consultarNfseServicoTomado(
        br.org.abrasf.www.nfse_xsd.ConsultarNfseServicoTomadoEnvio_type0 consultarNfseServicoTomadoEnvio25,
        java.lang.String username26, java.lang.String password27)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[1].getName());
            _operationClient.getOptions().setAction("consultarNfseServicoTomado");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.com.fiorilli.issweb.ws.ConsultarNfseServicoTomadoE dummyWrappedType =
                null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    consultarNfseServicoTomadoEnvio25, username26, password27,
                    dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://ws.issweb.fiorilli.com.br/",
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
                    br.com.fiorilli.issweb.ws.ConsultarNfseServicoTomadoResponseE.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getConsultarNfseServicoTomadoResponseConsultarNfseServicoTomadoResposta((br.com.fiorilli.issweb.ws.ConsultarNfseServicoTomadoResponseE) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(),
                                "consultarNfseServicoTomado"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(),
                                    "consultarNfseServicoTomado"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(),
                                    "consultarNfseServicoTomado"));
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
     * @see org.kenos.idempiere.lbr.nfse.abrasf.api.IssWebWS#consultarLoteRps
     * @param consultarLoteRps30
     */
    public br.org.abrasf.www.nfse_xsd.ConsultarLoteRpsResposta_type0 consultarLoteRps(
        br.org.abrasf.www.nfse_xsd.ConsultarLoteRpsEnvio_type0 consultarLoteRpsEnvio31,
        java.lang.String username32, java.lang.String password33)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[2].getName());
            _operationClient.getOptions().setAction("consultarLoteRps");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.com.fiorilli.issweb.ws.ConsultarLoteRpsE dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    consultarLoteRpsEnvio31, username32, password33,
                    dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://ws.issweb.fiorilli.com.br/",
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
                    br.com.fiorilli.issweb.ws.ConsultarLoteRpsResponseE.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getConsultarLoteRpsResponseConsultarLoteRpsResposta((br.com.fiorilli.issweb.ws.ConsultarLoteRpsResponseE) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "consultarLoteRps"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "consultarLoteRps"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "consultarLoteRps"));
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
     * @see org.kenos.idempiere.lbr.nfse.abrasf.api.IssWebWS#consultarNfsePorRps
     * @param consultarNfsePorRps36
     */
    public br.org.abrasf.www.nfse_xsd.ConsultarNfseRpsResposta_type0 consultarNfsePorRps(
        br.org.abrasf.www.nfse_xsd.ConsultarNfseRpsEnvio_type0 consultarNfseRpsEnvio37,
        java.lang.String username38, java.lang.String password39)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[3].getName());
            _operationClient.getOptions().setAction("consultarNfsePorRps");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.com.fiorilli.issweb.ws.ConsultarNfsePorRpsE dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    consultarNfseRpsEnvio37, username38, password39,
                    dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://ws.issweb.fiorilli.com.br/",
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
                    br.com.fiorilli.issweb.ws.ConsultarNfsePorRpsResponseE.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getConsultarNfsePorRpsResponseConsultarNfseRpsResposta((br.com.fiorilli.issweb.ws.ConsultarNfsePorRpsResponseE) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "consultarNfsePorRps"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "consultarNfsePorRps"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "consultarNfsePorRps"));
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
     * @see org.kenos.idempiere.lbr.nfse.abrasf.api.IssWebWS#recepcionarLoteRpsSincrono
     * @param recepcionarLoteRpsSincrono42
     */
    public br.org.abrasf.www.nfse_xsd.EnviarLoteRpsSincronoResposta_type0 recepcionarLoteRpsSincrono(
        br.org.abrasf.www.nfse_xsd.EnviarLoteRpsSincronoEnvio_type0 enviarLoteRpsSincronoEnvio43,
        java.lang.String username44, java.lang.String password45)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[4].getName());
            _operationClient.getOptions().setAction("recepcionarLoteRpsSincrono");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.com.fiorilli.issweb.ws.RecepcionarLoteRpsSincronoE dummyWrappedType =
                null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    enviarLoteRpsSincronoEnvio43, username44, password45,
                    dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://ws.issweb.fiorilli.com.br/",
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
                    br.com.fiorilli.issweb.ws.RecepcionarLoteRpsSincronoResponseE.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getRecepcionarLoteRpsSincronoResponseEnviarLoteRpsSincronoResposta((br.com.fiorilli.issweb.ws.RecepcionarLoteRpsSincronoResponseE) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(),
                                "recepcionarLoteRpsSincrono"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(),
                                    "recepcionarLoteRpsSincrono"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(),
                                    "recepcionarLoteRpsSincrono"));
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
     * @see org.kenos.idempiere.lbr.nfse.abrasf.api.IssWebWS#consultarNfsePorFaixa
     * @param consultarNfsePorFaixa48
     */
    public br.org.abrasf.www.nfse_xsd.ConsultarNfseFaixaResposta_type0 consultarNfsePorFaixa(
        br.org.abrasf.www.nfse_xsd.ConsultarNfseFaixaEnvio_type0 consultarNfseFaixaEnvio49,
        java.lang.String username50, java.lang.String password51)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[5].getName());
            _operationClient.getOptions().setAction("consultarNfsePorFaixa");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.com.fiorilli.issweb.ws.ConsultarNfsePorFaixaE dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    consultarNfseFaixaEnvio49, username50, password51,
                    dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://ws.issweb.fiorilli.com.br/",
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
                    br.com.fiorilli.issweb.ws.ConsultarNfsePorFaixaResponseE.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getConsultarNfsePorFaixaResponseConsultarNfseFaixaResposta((br.com.fiorilli.issweb.ws.ConsultarNfsePorFaixaResponseE) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "consultarNfsePorFaixa"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "consultarNfsePorFaixa"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "consultarNfsePorFaixa"));
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
     * @see org.kenos.idempiere.lbr.nfse.abrasf.api.IssWebWS#consultarNfseServicoPrestado
     * @param consultarNfseServicoPrestado54
     */
    public br.org.abrasf.www.nfse_xsd.ConsultarNfseServicoPrestadoResposta_type0 consultarNfseServicoPrestado(
        br.org.abrasf.www.nfse_xsd.ConsultarNfseServicoPrestadoEnvio_type0 consultarNfseServicoPrestadoEnvio55,
        java.lang.String username56, java.lang.String password57)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[6].getName());
            _operationClient.getOptions()
                            .setAction("consultarNfseServicoPrestado");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.com.fiorilli.issweb.ws.ConsultarNfseServicoPrestadoE dummyWrappedType =
                null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    consultarNfseServicoPrestadoEnvio55, username56,
                    password57, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://ws.issweb.fiorilli.com.br/",
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
                    br.com.fiorilli.issweb.ws.ConsultarNfseServicoPrestadoResponseE.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getConsultarNfseServicoPrestadoResponseConsultarNfseServicoPrestadoResposta((br.com.fiorilli.issweb.ws.ConsultarNfseServicoPrestadoResponseE) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(),
                                "consultarNfseServicoPrestado"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(),
                                    "consultarNfseServicoPrestado"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(),
                                    "consultarNfseServicoPrestado"));
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
     * @see org.kenos.idempiere.lbr.nfse.abrasf.api.IssWebWS#substituirNfse
     * @param substituirNfse60
     */
    public br.org.abrasf.www.nfse_xsd.SubstituirNfseResposta_type0 substituirNfse(
        br.org.abrasf.www.nfse_xsd.SubstituirNfseEnvio_type0 substituirNfseEnvio61,
        java.lang.String username62, java.lang.String password63)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[7].getName());
            _operationClient.getOptions().setAction("substituirNfse");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.com.fiorilli.issweb.ws.SubstituirNfseE dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    substituirNfseEnvio61, username62, password63,
                    dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://ws.issweb.fiorilli.com.br/",
                            "substituirNfse")));

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
                    br.com.fiorilli.issweb.ws.SubstituirNfseResponseE.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getSubstituirNfseResponseSubstituirNfseResposta((br.com.fiorilli.issweb.ws.SubstituirNfseResponseE) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "substituirNfse"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "substituirNfse"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "substituirNfse"));
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
     * @see org.kenos.idempiere.lbr.nfse.abrasf.api.IssWebWS#cancelarNfse
     * @param cancelarNfse66
     */
    public br.org.abrasf.www.nfse_xsd.CancelarNfseResposta_type0 cancelarNfse(
        br.org.abrasf.www.nfse_xsd.CancelarNfseEnvio_type0 cancelarNfseEnvio67,
        java.lang.String username68, java.lang.String password69)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[8].getName());
            _operationClient.getOptions().setAction("cancelarNfse");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.com.fiorilli.issweb.ws.CancelarNfseE dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    cancelarNfseEnvio67, username68, password69,
                    dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://ws.issweb.fiorilli.com.br/", "cancelarNfse")));

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
                    br.com.fiorilli.issweb.ws.CancelarNfseResponseE.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getCancelarNfseResponseCancelarNfseResposta((br.com.fiorilli.issweb.ws.CancelarNfseResponseE) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "cancelarNfse"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "cancelarNfse"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "cancelarNfse"));
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
     * @see org.kenos.idempiere.lbr.nfse.abrasf.api.IssWebWS#gerarNfse
     * @param gerarNfse72
     */
    public br.org.abrasf.www.nfse_xsd.GerarNfseResposta_type0 gerarNfse(
        br.org.abrasf.www.nfse_xsd.GerarNfseEnvio_type0 gerarNfseEnvio73,
        java.lang.String username74, java.lang.String password75)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[9].getName());
            _operationClient.getOptions().setAction("gerarNfse");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.com.fiorilli.issweb.ws.GerarNfseE dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    gerarNfseEnvio73, username74, password75, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://ws.issweb.fiorilli.com.br/", "gerarNfse")));

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
                    br.com.fiorilli.issweb.ws.GerarNfseResponseE.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getGerarNfseResponseGerarNfseResposta((br.com.fiorilli.issweb.ws.GerarNfseResponseE) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "gerarNfse"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "gerarNfse"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "gerarNfse"));
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

    //http://fi1.fiorilli.com.br:5663/IssWeb-ejb/IssWebWS/IssWebWS
    private org.apache.axiom.om.OMElement toOM(
        br.com.fiorilli.issweb.ws.RecepcionarLoteRpsE param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.com.fiorilli.issweb.ws.RecepcionarLoteRpsE.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.com.fiorilli.issweb.ws.RecepcionarLoteRpsResponseE param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.com.fiorilli.issweb.ws.RecepcionarLoteRpsResponseE.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.com.fiorilli.issweb.ws.ConsultarNfseServicoTomadoE param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.com.fiorilli.issweb.ws.ConsultarNfseServicoTomadoE.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.com.fiorilli.issweb.ws.ConsultarNfseServicoTomadoResponseE param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.com.fiorilli.issweb.ws.ConsultarNfseServicoTomadoResponseE.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.com.fiorilli.issweb.ws.ConsultarLoteRpsE param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.com.fiorilli.issweb.ws.ConsultarLoteRpsE.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.com.fiorilli.issweb.ws.ConsultarLoteRpsResponseE param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.com.fiorilli.issweb.ws.ConsultarLoteRpsResponseE.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.com.fiorilli.issweb.ws.ConsultarNfsePorRpsE param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.com.fiorilli.issweb.ws.ConsultarNfsePorRpsE.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.com.fiorilli.issweb.ws.ConsultarNfsePorRpsResponseE param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.com.fiorilli.issweb.ws.ConsultarNfsePorRpsResponseE.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.com.fiorilli.issweb.ws.RecepcionarLoteRpsSincronoE param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.com.fiorilli.issweb.ws.RecepcionarLoteRpsSincronoE.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.com.fiorilli.issweb.ws.RecepcionarLoteRpsSincronoResponseE param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.com.fiorilli.issweb.ws.RecepcionarLoteRpsSincronoResponseE.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.com.fiorilli.issweb.ws.ConsultarNfsePorFaixaE param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.com.fiorilli.issweb.ws.ConsultarNfsePorFaixaE.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.com.fiorilli.issweb.ws.ConsultarNfsePorFaixaResponseE param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.com.fiorilli.issweb.ws.ConsultarNfsePorFaixaResponseE.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.com.fiorilli.issweb.ws.ConsultarNfseServicoPrestadoE param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.com.fiorilli.issweb.ws.ConsultarNfseServicoPrestadoE.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.com.fiorilli.issweb.ws.ConsultarNfseServicoPrestadoResponseE param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.com.fiorilli.issweb.ws.ConsultarNfseServicoPrestadoResponseE.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.com.fiorilli.issweb.ws.SubstituirNfseE param, boolean optimizeContent)
        throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.com.fiorilli.issweb.ws.SubstituirNfseE.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.com.fiorilli.issweb.ws.SubstituirNfseResponseE param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.com.fiorilli.issweb.ws.SubstituirNfseResponseE.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.com.fiorilli.issweb.ws.CancelarNfseE param, boolean optimizeContent)
        throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.com.fiorilli.issweb.ws.CancelarNfseE.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.com.fiorilli.issweb.ws.CancelarNfseResponseE param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.com.fiorilli.issweb.ws.CancelarNfseResponseE.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.com.fiorilli.issweb.ws.GerarNfseE param, boolean optimizeContent)
        throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.com.fiorilli.issweb.ws.GerarNfseE.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.com.fiorilli.issweb.ws.GerarNfseResponseE param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.com.fiorilli.issweb.ws.GerarNfseResponseE.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory,
        br.org.abrasf.www.nfse_xsd.EnviarLoteRpsEnvio_type0 param1,
        java.lang.String param2, java.lang.String param3,
        br.com.fiorilli.issweb.ws.RecepcionarLoteRpsE dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.com.fiorilli.issweb.ws.RecepcionarLoteRpsE wrappedType = new br.com.fiorilli.issweb.ws.RecepcionarLoteRpsE();

            br.com.fiorilli.issweb.ws.RecepcionarLoteRps wrappedComplexType = new br.com.fiorilli.issweb.ws.RecepcionarLoteRps();

            wrappedComplexType.setEnviarLoteRpsEnvio(param1);

            wrappedComplexType.setUsername(param2);

            wrappedComplexType.setPassword(param3);

            wrappedType.setRecepcionarLoteRps(wrappedComplexType);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.com.fiorilli.issweb.ws.RecepcionarLoteRpsE.MY_QNAME,
                    factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private br.com.fiorilli.issweb.ws.RecepcionarLoteRps getrecepcionarLoteRps(
        br.com.fiorilli.issweb.ws.RecepcionarLoteRpsE wrappedType) {
        return wrappedType.getRecepcionarLoteRps();
    }

    private br.com.fiorilli.issweb.ws.RecepcionarLoteRpsE wraprecepcionarLoteRps(
        br.com.fiorilli.issweb.ws.RecepcionarLoteRps innerType) {
        br.com.fiorilli.issweb.ws.RecepcionarLoteRpsE wrappedElement = new br.com.fiorilli.issweb.ws.RecepcionarLoteRpsE();
        wrappedElement.setRecepcionarLoteRps(innerType);

        return wrappedElement;
    }

    private br.org.abrasf.www.nfse_xsd.EnviarLoteRpsResposta_type0 getRecepcionarLoteRpsResponseEnviarLoteRpsResposta(
        br.com.fiorilli.issweb.ws.RecepcionarLoteRpsResponseE wrappedType) {
        return wrappedType.getRecepcionarLoteRpsResponse()
                          .getEnviarLoteRpsResposta();
    }

    private br.com.fiorilli.issweb.ws.RecepcionarLoteRpsResponse getrecepcionarLoteRps(
        br.com.fiorilli.issweb.ws.RecepcionarLoteRpsResponseE wrappedType) {
        return wrappedType.getRecepcionarLoteRpsResponse();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory,
        br.org.abrasf.www.nfse_xsd.ConsultarNfseServicoTomadoEnvio_type0 param1,
        java.lang.String param2, java.lang.String param3,
        br.com.fiorilli.issweb.ws.ConsultarNfseServicoTomadoE dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.com.fiorilli.issweb.ws.ConsultarNfseServicoTomadoE wrappedType = new br.com.fiorilli.issweb.ws.ConsultarNfseServicoTomadoE();

            br.com.fiorilli.issweb.ws.ConsultarNfseServicoTomado wrappedComplexType =
                new br.com.fiorilli.issweb.ws.ConsultarNfseServicoTomado();

            wrappedComplexType.setConsultarNfseServicoTomadoEnvio(param1);

            wrappedComplexType.setUsername(param2);

            wrappedComplexType.setPassword(param3);

            wrappedType.setConsultarNfseServicoTomado(wrappedComplexType);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.com.fiorilli.issweb.ws.ConsultarNfseServicoTomadoE.MY_QNAME,
                    factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private br.com.fiorilli.issweb.ws.ConsultarNfseServicoTomado getconsultarNfseServicoTomado(
        br.com.fiorilli.issweb.ws.ConsultarNfseServicoTomadoE wrappedType) {
        return wrappedType.getConsultarNfseServicoTomado();
    }

    private br.com.fiorilli.issweb.ws.ConsultarNfseServicoTomadoE wrapconsultarNfseServicoTomado(
        br.com.fiorilli.issweb.ws.ConsultarNfseServicoTomado innerType) {
        br.com.fiorilli.issweb.ws.ConsultarNfseServicoTomadoE wrappedElement = new br.com.fiorilli.issweb.ws.ConsultarNfseServicoTomadoE();
        wrappedElement.setConsultarNfseServicoTomado(innerType);

        return wrappedElement;
    }

    private br.org.abrasf.www.nfse_xsd.ConsultarNfseServicoTomadoResposta_type0 getConsultarNfseServicoTomadoResponseConsultarNfseServicoTomadoResposta(
        br.com.fiorilli.issweb.ws.ConsultarNfseServicoTomadoResponseE wrappedType) {
        return wrappedType.getConsultarNfseServicoTomadoResponse()
                          .getConsultarNfseServicoTomadoResposta();
    }

    private br.com.fiorilli.issweb.ws.ConsultarNfseServicoTomadoResponse getconsultarNfseServicoTomado(
        br.com.fiorilli.issweb.ws.ConsultarNfseServicoTomadoResponseE wrappedType) {
        return wrappedType.getConsultarNfseServicoTomadoResponse();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory,
        br.org.abrasf.www.nfse_xsd.ConsultarLoteRpsEnvio_type0 param1,
        java.lang.String param2, java.lang.String param3,
        br.com.fiorilli.issweb.ws.ConsultarLoteRpsE dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.com.fiorilli.issweb.ws.ConsultarLoteRpsE wrappedType = new br.com.fiorilli.issweb.ws.ConsultarLoteRpsE();

            br.com.fiorilli.issweb.ws.ConsultarLoteRps wrappedComplexType = new br.com.fiorilli.issweb.ws.ConsultarLoteRps();

            wrappedComplexType.setConsultarLoteRpsEnvio(param1);

            wrappedComplexType.setUsername(param2);

            wrappedComplexType.setPassword(param3);

            wrappedType.setConsultarLoteRps(wrappedComplexType);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.com.fiorilli.issweb.ws.ConsultarLoteRpsE.MY_QNAME,
                    factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private br.com.fiorilli.issweb.ws.ConsultarLoteRps getconsultarLoteRps(
        br.com.fiorilli.issweb.ws.ConsultarLoteRpsE wrappedType) {
        return wrappedType.getConsultarLoteRps();
    }

    private br.com.fiorilli.issweb.ws.ConsultarLoteRpsE wrapconsultarLoteRps(
        br.com.fiorilli.issweb.ws.ConsultarLoteRps innerType) {
        br.com.fiorilli.issweb.ws.ConsultarLoteRpsE wrappedElement = new br.com.fiorilli.issweb.ws.ConsultarLoteRpsE();
        wrappedElement.setConsultarLoteRps(innerType);

        return wrappedElement;
    }

    private br.org.abrasf.www.nfse_xsd.ConsultarLoteRpsResposta_type0 getConsultarLoteRpsResponseConsultarLoteRpsResposta(
        br.com.fiorilli.issweb.ws.ConsultarLoteRpsResponseE wrappedType) {
        return wrappedType.getConsultarLoteRpsResponse()
                          .getConsultarLoteRpsResposta();
    }

    private br.com.fiorilli.issweb.ws.ConsultarLoteRpsResponse getconsultarLoteRps(
        br.com.fiorilli.issweb.ws.ConsultarLoteRpsResponseE wrappedType) {
        return wrappedType.getConsultarLoteRpsResponse();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory,
        br.org.abrasf.www.nfse_xsd.ConsultarNfseRpsEnvio_type0 param1,
        java.lang.String param2, java.lang.String param3,
        br.com.fiorilli.issweb.ws.ConsultarNfsePorRpsE dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.com.fiorilli.issweb.ws.ConsultarNfsePorRpsE wrappedType = new br.com.fiorilli.issweb.ws.ConsultarNfsePorRpsE();

            br.com.fiorilli.issweb.ws.ConsultarNfsePorRps wrappedComplexType = new br.com.fiorilli.issweb.ws.ConsultarNfsePorRps();

            wrappedComplexType.setConsultarNfseRpsEnvio(param1);

            wrappedComplexType.setUsername(param2);

            wrappedComplexType.setPassword(param3);

            wrappedType.setConsultarNfsePorRps(wrappedComplexType);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.com.fiorilli.issweb.ws.ConsultarNfsePorRpsE.MY_QNAME,
                    factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private br.com.fiorilli.issweb.ws.ConsultarNfsePorRps getconsultarNfsePorRps(
        br.com.fiorilli.issweb.ws.ConsultarNfsePorRpsE wrappedType) {
        return wrappedType.getConsultarNfsePorRps();
    }

    private br.com.fiorilli.issweb.ws.ConsultarNfsePorRpsE wrapconsultarNfsePorRps(
        br.com.fiorilli.issweb.ws.ConsultarNfsePorRps innerType) {
        br.com.fiorilli.issweb.ws.ConsultarNfsePorRpsE wrappedElement = new br.com.fiorilli.issweb.ws.ConsultarNfsePorRpsE();
        wrappedElement.setConsultarNfsePorRps(innerType);

        return wrappedElement;
    }

    private br.org.abrasf.www.nfse_xsd.ConsultarNfseRpsResposta_type0 getConsultarNfsePorRpsResponseConsultarNfseRpsResposta(
        br.com.fiorilli.issweb.ws.ConsultarNfsePorRpsResponseE wrappedType) {
        return wrappedType.getConsultarNfsePorRpsResponse()
                          .getConsultarNfseRpsResposta();
    }

    private br.com.fiorilli.issweb.ws.ConsultarNfsePorRpsResponse getconsultarNfsePorRps(
        br.com.fiorilli.issweb.ws.ConsultarNfsePorRpsResponseE wrappedType) {
        return wrappedType.getConsultarNfsePorRpsResponse();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory,
        br.org.abrasf.www.nfse_xsd.EnviarLoteRpsSincronoEnvio_type0 param1,
        java.lang.String param2, java.lang.String param3,
        br.com.fiorilli.issweb.ws.RecepcionarLoteRpsSincronoE dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.com.fiorilli.issweb.ws.RecepcionarLoteRpsSincronoE wrappedType = new br.com.fiorilli.issweb.ws.RecepcionarLoteRpsSincronoE();

            br.com.fiorilli.issweb.ws.RecepcionarLoteRpsSincrono wrappedComplexType =
                new br.com.fiorilli.issweb.ws.RecepcionarLoteRpsSincrono();

            wrappedComplexType.setEnviarLoteRpsSincronoEnvio(param1);

            wrappedComplexType.setUsername(param2);

            wrappedComplexType.setPassword(param3);

            wrappedType.setRecepcionarLoteRpsSincrono(wrappedComplexType);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.com.fiorilli.issweb.ws.RecepcionarLoteRpsSincronoE.MY_QNAME,
                    factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private br.com.fiorilli.issweb.ws.RecepcionarLoteRpsSincrono getrecepcionarLoteRpsSincrono(
        br.com.fiorilli.issweb.ws.RecepcionarLoteRpsSincronoE wrappedType) {
        return wrappedType.getRecepcionarLoteRpsSincrono();
    }

    private br.com.fiorilli.issweb.ws.RecepcionarLoteRpsSincronoE wraprecepcionarLoteRpsSincrono(
        br.com.fiorilli.issweb.ws.RecepcionarLoteRpsSincrono innerType) {
        br.com.fiorilli.issweb.ws.RecepcionarLoteRpsSincronoE wrappedElement = new br.com.fiorilli.issweb.ws.RecepcionarLoteRpsSincronoE();
        wrappedElement.setRecepcionarLoteRpsSincrono(innerType);

        return wrappedElement;
    }

    private br.org.abrasf.www.nfse_xsd.EnviarLoteRpsSincronoResposta_type0 getRecepcionarLoteRpsSincronoResponseEnviarLoteRpsSincronoResposta(
        br.com.fiorilli.issweb.ws.RecepcionarLoteRpsSincronoResponseE wrappedType) {
        return wrappedType.getRecepcionarLoteRpsSincronoResponse()
                          .getEnviarLoteRpsSincronoResposta();
    }

    private br.com.fiorilli.issweb.ws.RecepcionarLoteRpsSincronoResponse getrecepcionarLoteRpsSincrono(
        br.com.fiorilli.issweb.ws.RecepcionarLoteRpsSincronoResponseE wrappedType) {
        return wrappedType.getRecepcionarLoteRpsSincronoResponse();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory,
        br.org.abrasf.www.nfse_xsd.ConsultarNfseFaixaEnvio_type0 param1,
        java.lang.String param2, java.lang.String param3,
        br.com.fiorilli.issweb.ws.ConsultarNfsePorFaixaE dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.com.fiorilli.issweb.ws.ConsultarNfsePorFaixaE wrappedType = new br.com.fiorilli.issweb.ws.ConsultarNfsePorFaixaE();

            br.com.fiorilli.issweb.ws.ConsultarNfsePorFaixa wrappedComplexType = new br.com.fiorilli.issweb.ws.ConsultarNfsePorFaixa();

            wrappedComplexType.setConsultarNfseFaixaEnvio(param1);

            wrappedComplexType.setUsername(param2);

            wrappedComplexType.setPassword(param3);

            wrappedType.setConsultarNfsePorFaixa(wrappedComplexType);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.com.fiorilli.issweb.ws.ConsultarNfsePorFaixaE.MY_QNAME,
                    factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private br.com.fiorilli.issweb.ws.ConsultarNfsePorFaixa getconsultarNfsePorFaixa(
        br.com.fiorilli.issweb.ws.ConsultarNfsePorFaixaE wrappedType) {
        return wrappedType.getConsultarNfsePorFaixa();
    }

    private br.com.fiorilli.issweb.ws.ConsultarNfsePorFaixaE wrapconsultarNfsePorFaixa(
        br.com.fiorilli.issweb.ws.ConsultarNfsePorFaixa innerType) {
        br.com.fiorilli.issweb.ws.ConsultarNfsePorFaixaE wrappedElement = new br.com.fiorilli.issweb.ws.ConsultarNfsePorFaixaE();
        wrappedElement.setConsultarNfsePorFaixa(innerType);

        return wrappedElement;
    }

    private br.org.abrasf.www.nfse_xsd.ConsultarNfseFaixaResposta_type0 getConsultarNfsePorFaixaResponseConsultarNfseFaixaResposta(
        br.com.fiorilli.issweb.ws.ConsultarNfsePorFaixaResponseE wrappedType) {
        return wrappedType.getConsultarNfsePorFaixaResponse()
                          .getConsultarNfseFaixaResposta();
    }

    private br.com.fiorilli.issweb.ws.ConsultarNfsePorFaixaResponse getconsultarNfsePorFaixa(
        br.com.fiorilli.issweb.ws.ConsultarNfsePorFaixaResponseE wrappedType) {
        return wrappedType.getConsultarNfsePorFaixaResponse();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory,
        br.org.abrasf.www.nfse_xsd.ConsultarNfseServicoPrestadoEnvio_type0 param1,
        java.lang.String param2, java.lang.String param3,
        br.com.fiorilli.issweb.ws.ConsultarNfseServicoPrestadoE dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.com.fiorilli.issweb.ws.ConsultarNfseServicoPrestadoE wrappedType = new br.com.fiorilli.issweb.ws.ConsultarNfseServicoPrestadoE();

            br.com.fiorilli.issweb.ws.ConsultarNfseServicoPrestado wrappedComplexType =
                new br.com.fiorilli.issweb.ws.ConsultarNfseServicoPrestado();

            wrappedComplexType.setConsultarNfseServicoPrestadoEnvio(param1);

            wrappedComplexType.setUsername(param2);

            wrappedComplexType.setPassword(param3);

            wrappedType.setConsultarNfseServicoPrestado(wrappedComplexType);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.com.fiorilli.issweb.ws.ConsultarNfseServicoPrestadoE.MY_QNAME,
                    factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private br.com.fiorilli.issweb.ws.ConsultarNfseServicoPrestado getconsultarNfseServicoPrestado(
        br.com.fiorilli.issweb.ws.ConsultarNfseServicoPrestadoE wrappedType) {
        return wrappedType.getConsultarNfseServicoPrestado();
    }

    private br.com.fiorilli.issweb.ws.ConsultarNfseServicoPrestadoE wrapconsultarNfseServicoPrestado(
        br.com.fiorilli.issweb.ws.ConsultarNfseServicoPrestado innerType) {
        br.com.fiorilli.issweb.ws.ConsultarNfseServicoPrestadoE wrappedElement = new br.com.fiorilli.issweb.ws.ConsultarNfseServicoPrestadoE();
        wrappedElement.setConsultarNfseServicoPrestado(innerType);

        return wrappedElement;
    }

    private br.org.abrasf.www.nfse_xsd.ConsultarNfseServicoPrestadoResposta_type0 getConsultarNfseServicoPrestadoResponseConsultarNfseServicoPrestadoResposta(
        br.com.fiorilli.issweb.ws.ConsultarNfseServicoPrestadoResponseE wrappedType) {
        return wrappedType.getConsultarNfseServicoPrestadoResponse()
                          .getConsultarNfseServicoPrestadoResposta();
    }

    private br.com.fiorilli.issweb.ws.ConsultarNfseServicoPrestadoResponse getconsultarNfseServicoPrestado(
        br.com.fiorilli.issweb.ws.ConsultarNfseServicoPrestadoResponseE wrappedType) {
        return wrappedType.getConsultarNfseServicoPrestadoResponse();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory,
        br.org.abrasf.www.nfse_xsd.SubstituirNfseEnvio_type0 param1,
        java.lang.String param2, java.lang.String param3,
        br.com.fiorilli.issweb.ws.SubstituirNfseE dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.com.fiorilli.issweb.ws.SubstituirNfseE wrappedType = new br.com.fiorilli.issweb.ws.SubstituirNfseE();

            br.com.fiorilli.issweb.ws.SubstituirNfse wrappedComplexType = new br.com.fiorilli.issweb.ws.SubstituirNfse();

            wrappedComplexType.setSubstituirNfseEnvio(param1);

            wrappedComplexType.setUsername(param2);

            wrappedComplexType.setPassword(param3);

            wrappedType.setSubstituirNfse(wrappedComplexType);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.com.fiorilli.issweb.ws.SubstituirNfseE.MY_QNAME, factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private br.com.fiorilli.issweb.ws.SubstituirNfse getsubstituirNfse(
        br.com.fiorilli.issweb.ws.SubstituirNfseE wrappedType) {
        return wrappedType.getSubstituirNfse();
    }

    private br.com.fiorilli.issweb.ws.SubstituirNfseE wrapsubstituirNfse(
        br.com.fiorilli.issweb.ws.SubstituirNfse innerType) {
        br.com.fiorilli.issweb.ws.SubstituirNfseE wrappedElement = new br.com.fiorilli.issweb.ws.SubstituirNfseE();
        wrappedElement.setSubstituirNfse(innerType);

        return wrappedElement;
    }

    private br.org.abrasf.www.nfse_xsd.SubstituirNfseResposta_type0 getSubstituirNfseResponseSubstituirNfseResposta(
        br.com.fiorilli.issweb.ws.SubstituirNfseResponseE wrappedType) {
        return wrappedType.getSubstituirNfseResponse()
                          .getSubstituirNfseResposta();
    }

    private br.com.fiorilli.issweb.ws.SubstituirNfseResponse getsubstituirNfse(
        br.com.fiorilli.issweb.ws.SubstituirNfseResponseE wrappedType) {
        return wrappedType.getSubstituirNfseResponse();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory,
        br.org.abrasf.www.nfse_xsd.CancelarNfseEnvio_type0 param1,
        java.lang.String param2, java.lang.String param3,
        br.com.fiorilli.issweb.ws.CancelarNfseE dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.com.fiorilli.issweb.ws.CancelarNfseE wrappedType = new br.com.fiorilli.issweb.ws.CancelarNfseE();

            br.com.fiorilli.issweb.ws.CancelarNfse wrappedComplexType = new br.com.fiorilli.issweb.ws.CancelarNfse();

            wrappedComplexType.setCancelarNfseEnvio(param1);

            wrappedComplexType.setUsername(param2);

            wrappedComplexType.setPassword(param3);

            wrappedType.setCancelarNfse(wrappedComplexType);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.com.fiorilli.issweb.ws.CancelarNfseE.MY_QNAME, factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private br.com.fiorilli.issweb.ws.CancelarNfse getcancelarNfse(
        br.com.fiorilli.issweb.ws.CancelarNfseE wrappedType) {
        return wrappedType.getCancelarNfse();
    }

    private br.com.fiorilli.issweb.ws.CancelarNfseE wrapcancelarNfse(
        br.com.fiorilli.issweb.ws.CancelarNfse innerType) {
        br.com.fiorilli.issweb.ws.CancelarNfseE wrappedElement = new br.com.fiorilli.issweb.ws.CancelarNfseE();
        wrappedElement.setCancelarNfse(innerType);

        return wrappedElement;
    }

    private br.org.abrasf.www.nfse_xsd.CancelarNfseResposta_type0 getCancelarNfseResponseCancelarNfseResposta(
        br.com.fiorilli.issweb.ws.CancelarNfseResponseE wrappedType) {
        return wrappedType.getCancelarNfseResponse().getCancelarNfseResposta();
    }

    private br.com.fiorilli.issweb.ws.CancelarNfseResponse getcancelarNfse(
        br.com.fiorilli.issweb.ws.CancelarNfseResponseE wrappedType) {
        return wrappedType.getCancelarNfseResponse();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory,
        br.org.abrasf.www.nfse_xsd.GerarNfseEnvio_type0 param1,
        java.lang.String param2, java.lang.String param3,
        br.com.fiorilli.issweb.ws.GerarNfseE dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.com.fiorilli.issweb.ws.GerarNfseE wrappedType = new br.com.fiorilli.issweb.ws.GerarNfseE();

            br.com.fiorilli.issweb.ws.GerarNfse wrappedComplexType = new br.com.fiorilli.issweb.ws.GerarNfse();

            wrappedComplexType.setGerarNfseEnvio(param1);

            wrappedComplexType.setUsername(param2);

            wrappedComplexType.setPassword(param3);

            wrappedType.setGerarNfse(wrappedComplexType);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.com.fiorilli.issweb.ws.GerarNfseE.MY_QNAME, factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private br.com.fiorilli.issweb.ws.GerarNfse getgerarNfse(
        br.com.fiorilli.issweb.ws.GerarNfseE wrappedType) {
        return wrappedType.getGerarNfse();
    }

    private br.com.fiorilli.issweb.ws.GerarNfseE wrapgerarNfse(
        br.com.fiorilli.issweb.ws.GerarNfse innerType) {
        br.com.fiorilli.issweb.ws.GerarNfseE wrappedElement = new br.com.fiorilli.issweb.ws.GerarNfseE();
        wrappedElement.setGerarNfse(innerType);

        return wrappedElement;
    }

    private br.org.abrasf.www.nfse_xsd.GerarNfseResposta_type0 getGerarNfseResponseGerarNfseResposta(
        br.com.fiorilli.issweb.ws.GerarNfseResponseE wrappedType) {
        return wrappedType.getGerarNfseResponse().getGerarNfseResposta();
    }

    private br.com.fiorilli.issweb.ws.GerarNfseResponse getgerarNfse(
        br.com.fiorilli.issweb.ws.GerarNfseResponseE wrappedType) {
        return wrappedType.getGerarNfseResponse();
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
            if (br.com.fiorilli.issweb.ws.CancelarNfseE.class.equals(type)) {
                return br.com.fiorilli.issweb.ws.CancelarNfseE.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.com.fiorilli.issweb.ws.CancelarNfseResponseE.class.equals(
                        type)) {
                return br.com.fiorilli.issweb.ws.CancelarNfseResponseE.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.com.fiorilli.issweb.ws.ConsultarLoteRpsE.class.equals(type)) {
                return br.com.fiorilli.issweb.ws.ConsultarLoteRpsE.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.com.fiorilli.issweb.ws.ConsultarLoteRpsResponseE.class.equals(
                        type)) {
                return br.com.fiorilli.issweb.ws.ConsultarLoteRpsResponseE.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.com.fiorilli.issweb.ws.ConsultarNfsePorFaixaE.class.equals(
                        type)) {
                return br.com.fiorilli.issweb.ws.ConsultarNfsePorFaixaE.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.com.fiorilli.issweb.ws.ConsultarNfsePorFaixaResponseE.class.equals(
                        type)) {
                return br.com.fiorilli.issweb.ws.ConsultarNfsePorFaixaResponseE.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.com.fiorilli.issweb.ws.ConsultarNfsePorRpsE.class.equals(
                        type)) {
                return br.com.fiorilli.issweb.ws.ConsultarNfsePorRpsE.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.com.fiorilli.issweb.ws.ConsultarNfsePorRpsResponseE.class.equals(
                        type)) {
                return br.com.fiorilli.issweb.ws.ConsultarNfsePorRpsResponseE.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.com.fiorilli.issweb.ws.ConsultarNfseServicoPrestadoE.class.equals(
                        type)) {
                return br.com.fiorilli.issweb.ws.ConsultarNfseServicoPrestadoE.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.com.fiorilli.issweb.ws.ConsultarNfseServicoPrestadoResponseE.class.equals(
                        type)) {
                return br.com.fiorilli.issweb.ws.ConsultarNfseServicoPrestadoResponseE.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.com.fiorilli.issweb.ws.ConsultarNfseServicoTomadoE.class.equals(
                        type)) {
                return br.com.fiorilli.issweb.ws.ConsultarNfseServicoTomadoE.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.com.fiorilli.issweb.ws.ConsultarNfseServicoTomadoResponseE.class.equals(
                        type)) {
                return br.com.fiorilli.issweb.ws.ConsultarNfseServicoTomadoResponseE.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.com.fiorilli.issweb.ws.GerarNfseE.class.equals(type)) {
                return br.com.fiorilli.issweb.ws.GerarNfseE.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.com.fiorilli.issweb.ws.GerarNfseResponseE.class.equals(type)) {
                return br.com.fiorilli.issweb.ws.GerarNfseResponseE.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.com.fiorilli.issweb.ws.RecepcionarLoteRpsE.class.equals(type)) {
                return br.com.fiorilli.issweb.ws.RecepcionarLoteRpsE.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.com.fiorilli.issweb.ws.RecepcionarLoteRpsResponseE.class.equals(
                        type)) {
                return br.com.fiorilli.issweb.ws.RecepcionarLoteRpsResponseE.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.com.fiorilli.issweb.ws.RecepcionarLoteRpsSincronoE.class.equals(
                        type)) {
                return br.com.fiorilli.issweb.ws.RecepcionarLoteRpsSincronoE.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.com.fiorilli.issweb.ws.RecepcionarLoteRpsSincronoResponseE.class.equals(
                        type)) {
                return br.com.fiorilli.issweb.ws.RecepcionarLoteRpsSincronoResponseE.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.com.fiorilli.issweb.ws.SubstituirNfseE.class.equals(type)) {
                return br.com.fiorilli.issweb.ws.SubstituirNfseE.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.com.fiorilli.issweb.ws.SubstituirNfseResponseE.class.equals(
                        type)) {
                return br.com.fiorilli.issweb.ws.SubstituirNfseResponseE.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }
        } catch (java.lang.Exception e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }

        return null;
    }
}
