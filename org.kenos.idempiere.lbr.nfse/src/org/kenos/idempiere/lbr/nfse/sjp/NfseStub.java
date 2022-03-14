/**
 * NfseStub.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.4  Built on : Dec 28, 2015 (10:03:39 GMT)
 */
package org.kenos.idempiere.lbr.nfse.sjp;


/*
 *  NfseStub java implementation
 */
public class NfseStub extends org.apache.axis2.client.Stub implements Nfse {
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
    public NfseStub(
        org.apache.axis2.context.ConfigurationContext configurationContext,
        java.lang.String targetEndpoint) throws org.apache.axis2.AxisFault {
        this(configurationContext, targetEndpoint, false);
    }

    /**
     * Constructor that takes in a configContext  and useseperate listner
     */
    public NfseStub(
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
    public NfseStub(
        org.apache.axis2.context.ConfigurationContext configurationContext)
        throws org.apache.axis2.AxisFault {
        this(configurationContext,
            "https://nfe.sjp.pr.gov.br//servicos/issOnline2/ws/");
    }

    /**
     * Default Constructor
     */
    public NfseStub() throws org.apache.axis2.AxisFault {
        this("https://nfe.sjp.pr.gov.br//servicos/issOnline2/ws/");
    }

    /**
     * Constructor taking the target endpoint
     */
    public NfseStub(java.lang.String targetEndpoint)
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
        _service = new org.apache.axis2.description.AxisService("Nfse" +
                getUniqueSuffix());
        addAnonymousOperations();

        //creating the operations
        org.apache.axis2.description.AxisOperation __operation;

        _operations = new org.apache.axis2.description.AxisOperation[12];

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://nfe.sjp.pr.gov.br", "cancelarNfse"));
        _service.addOperation(__operation);

        _operations[0] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://nfe.sjp.pr.gov.br", "cancelarNfseV3"));
        _service.addOperation(__operation);

        _operations[1] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://nfe.sjp.pr.gov.br", "consultarSituacaoLoteRps"));
        _service.addOperation(__operation);

        _operations[2] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://nfe.sjp.pr.gov.br", "consultarLoteRpsV3"));
        _service.addOperation(__operation);

        _operations[3] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://nfe.sjp.pr.gov.br", "consultarLoteRps"));
        _service.addOperation(__operation);

        _operations[4] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://nfe.sjp.pr.gov.br", "recepcionarLoteRpsV3"));
        _service.addOperation(__operation);

        _operations[5] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://nfe.sjp.pr.gov.br", "consultarNfsePorRpsV3"));
        _service.addOperation(__operation);

        _operations[6] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://nfe.sjp.pr.gov.br", "recepcionarLoteRps"));
        _service.addOperation(__operation);

        _operations[7] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://nfe.sjp.pr.gov.br", "consultarNfse"));
        _service.addOperation(__operation);

        _operations[8] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://nfe.sjp.pr.gov.br", "consultarNfsePorRps"));
        _service.addOperation(__operation);

        _operations[9] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://nfe.sjp.pr.gov.br", "consultarNfseV3"));
        _service.addOperation(__operation);

        _operations[10] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://nfe.sjp.pr.gov.br", "consultarSituacaoLoteRpsV3"));
        _service.addOperation(__operation);

        _operations[11] = __operation;
    }

    //populates the faults
    private void populateFaults() {
    }

    /**
     * Auto generated method signature
     *
     * @see org.kenos.idempiere.lbr.nfse.sjp.Nfse#cancelarNfse
     * @param cancelarNfse27
     */
    public java.lang.String cancelarNfse(java.lang.String arg028)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[0].getName());
            _operationClient.getOptions().setAction("CancelarNfse");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.gov.pr.sjp.nfe.CancelarNfse dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    arg028, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://nfe.sjp.pr.gov.br", "cancelarNfse")));

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
                    br.gov.pr.sjp.nfe.CancelarNfseResponse.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getCancelarNfseResponse_return((br.gov.pr.sjp.nfe.CancelarNfseResponse) object);
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
     * @see org.kenos.idempiere.lbr.nfse.sjp.Nfse#cancelarNfseV3
     * @param cancelarNfseV331
     */
    public java.lang.String cancelarNfseV3(java.lang.String arg032,
        java.lang.String arg133) throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[1].getName());
            _operationClient.getOptions().setAction("CancelarNfseV3");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.gov.pr.sjp.nfe.CancelarNfseV3 dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    arg032, arg133, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://nfe.sjp.pr.gov.br", "cancelarNfseV3")));

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
                    br.gov.pr.sjp.nfe.CancelarNfseV3Response.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getCancelarNfseV3Response_return((br.gov.pr.sjp.nfe.CancelarNfseV3Response) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "CancelarNfseV3"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "CancelarNfseV3"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "CancelarNfseV3"));
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
     * @see org.kenos.idempiere.lbr.nfse.sjp.Nfse#consultarSituacaoLoteRps
     * @param consultarSituacaoLoteRps36
     */
    public java.lang.String consultarSituacaoLoteRps(java.lang.String arg037)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[2].getName());
            _operationClient.getOptions().setAction("ConsultarSituacaoLoteRps");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.gov.pr.sjp.nfe.ConsultarSituacaoLoteRps dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    arg037, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://nfe.sjp.pr.gov.br",
                            "consultarSituacaoLoteRps")));

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
                    br.gov.pr.sjp.nfe.ConsultarSituacaoLoteRpsResponse.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getConsultarSituacaoLoteRpsResponse_return((br.gov.pr.sjp.nfe.ConsultarSituacaoLoteRpsResponse) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "ConsultarSituacaoLoteRps"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(),
                                    "ConsultarSituacaoLoteRps"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(),
                                    "ConsultarSituacaoLoteRps"));
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
     * @see org.kenos.idempiere.lbr.nfse.sjp.Nfse#consultarLoteRpsV3
     * @param consultarLoteRpsV340
     */
    public java.lang.String consultarLoteRpsV3(java.lang.String arg041,
        java.lang.String arg142) throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[3].getName());
            _operationClient.getOptions().setAction("ConsultarLoteRpsV3");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.gov.pr.sjp.nfe.ConsultarLoteRpsV3 dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    arg041, arg142, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://nfe.sjp.pr.gov.br", "consultarLoteRpsV3")));

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
                    br.gov.pr.sjp.nfe.ConsultarLoteRpsV3Response.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getConsultarLoteRpsV3Response_return((br.gov.pr.sjp.nfe.ConsultarLoteRpsV3Response) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "ConsultarLoteRpsV3"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "ConsultarLoteRpsV3"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "ConsultarLoteRpsV3"));
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
     * @see org.kenos.idempiere.lbr.nfse.sjp.Nfse#consultarLoteRps
     * @param consultarLoteRps45
     */
    public java.lang.String consultarLoteRps(java.lang.String arg046)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[4].getName());
            _operationClient.getOptions().setAction("ConsultarLoteRps");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.gov.pr.sjp.nfe.ConsultarLoteRps dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    arg046, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://nfe.sjp.pr.gov.br", "consultarLoteRps")));

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
                    br.gov.pr.sjp.nfe.ConsultarLoteRpsResponse.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getConsultarLoteRpsResponse_return((br.gov.pr.sjp.nfe.ConsultarLoteRpsResponse) object);
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
     * @see org.kenos.idempiere.lbr.nfse.sjp.Nfse#recepcionarLoteRpsV3
     * @param recepcionarLoteRpsV349
     */
    public java.lang.String recepcionarLoteRpsV3(java.lang.String arg050,
        java.lang.String arg151) throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[5].getName());
            _operationClient.getOptions().setAction("RecepcionarLoteRpsV3");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.gov.pr.sjp.nfe.RecepcionarLoteRpsV3 dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    arg050, arg151, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://nfe.sjp.pr.gov.br", "recepcionarLoteRpsV3")));

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
                    br.gov.pr.sjp.nfe.RecepcionarLoteRpsV3Response.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getRecepcionarLoteRpsV3Response_return((br.gov.pr.sjp.nfe.RecepcionarLoteRpsV3Response) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "RecepcionarLoteRpsV3"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "RecepcionarLoteRpsV3"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "RecepcionarLoteRpsV3"));
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
     * @see org.kenos.idempiere.lbr.nfse.sjp.Nfse#consultarNfsePorRpsV3
     * @param consultarNfsePorRpsV354
     */
    public java.lang.String consultarNfsePorRpsV3(java.lang.String arg055,
        java.lang.String arg156) throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[6].getName());
            _operationClient.getOptions().setAction("ConsultarNfsePorRpsV3");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.gov.pr.sjp.nfe.ConsultarNfsePorRpsV3 dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    arg055, arg156, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://nfe.sjp.pr.gov.br", "consultarNfsePorRpsV3")));

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
                    br.gov.pr.sjp.nfe.ConsultarNfsePorRpsV3Response.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getConsultarNfsePorRpsV3Response_return((br.gov.pr.sjp.nfe.ConsultarNfsePorRpsV3Response) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "ConsultarNfsePorRpsV3"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "ConsultarNfsePorRpsV3"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "ConsultarNfsePorRpsV3"));
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
     * @see org.kenos.idempiere.lbr.nfse.sjp.Nfse#recepcionarLoteRps
     * @param recepcionarLoteRps59
     */
    public java.lang.String recepcionarLoteRps(java.lang.String arg060)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[7].getName());
            _operationClient.getOptions().setAction("RecepcionarLoteRps");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.gov.pr.sjp.nfe.RecepcionarLoteRps dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    arg060, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://nfe.sjp.pr.gov.br", "recepcionarLoteRps")));

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
                    br.gov.pr.sjp.nfe.RecepcionarLoteRpsResponse.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getRecepcionarLoteRpsResponse_return((br.gov.pr.sjp.nfe.RecepcionarLoteRpsResponse) object);
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
     * @see org.kenos.idempiere.lbr.nfse.sjp.Nfse#consultarNfse
     * @param consultarNfse63
     */
    public java.lang.String consultarNfse(java.lang.String arg064)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[8].getName());
            _operationClient.getOptions().setAction("ConsultarNfse");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.gov.pr.sjp.nfe.ConsultarNfse dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    arg064, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://nfe.sjp.pr.gov.br", "consultarNfse")));

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
                    br.gov.pr.sjp.nfe.ConsultarNfseResponse.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getConsultarNfseResponse_return((br.gov.pr.sjp.nfe.ConsultarNfseResponse) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "ConsultarNfse"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "ConsultarNfse"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "ConsultarNfse"));
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
     * @see org.kenos.idempiere.lbr.nfse.sjp.Nfse#consultarNfsePorRps
     * @param consultarNfsePorRps67
     */
    public java.lang.String consultarNfsePorRps(java.lang.String arg068)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[9].getName());
            _operationClient.getOptions().setAction("ConsultarNfsePorRps");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.gov.pr.sjp.nfe.ConsultarNfsePorRps dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    arg068, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://nfe.sjp.pr.gov.br", "consultarNfsePorRps")));

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
                    br.gov.pr.sjp.nfe.ConsultarNfsePorRpsResponse.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getConsultarNfsePorRpsResponse_return((br.gov.pr.sjp.nfe.ConsultarNfsePorRpsResponse) object);
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
     * @see org.kenos.idempiere.lbr.nfse.sjp.Nfse#consultarNfseV3
     * @param consultarNfseV371
     */
    public java.lang.String consultarNfseV3(java.lang.String arg072,
        java.lang.String arg173) throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[10].getName());
            _operationClient.getOptions().setAction("ConsultarNfseV3");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.gov.pr.sjp.nfe.ConsultarNfseV3 dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    arg072, arg173, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://nfe.sjp.pr.gov.br", "consultarNfseV3")));

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
                    br.gov.pr.sjp.nfe.ConsultarNfseV3Response.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getConsultarNfseV3Response_return((br.gov.pr.sjp.nfe.ConsultarNfseV3Response) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "ConsultarNfseV3"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "ConsultarNfseV3"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "ConsultarNfseV3"));
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
     * @see org.kenos.idempiere.lbr.nfse.sjp.Nfse#consultarSituacaoLoteRpsV3
     * @param consultarSituacaoLoteRpsV376
     */
    public java.lang.String consultarSituacaoLoteRpsV3(
        java.lang.String arg077, java.lang.String arg178)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[11].getName());
            _operationClient.getOptions().setAction("ConsultarSituacaoLoteRpsV3");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.gov.pr.sjp.nfe.ConsultarSituacaoLoteRpsV3 dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    arg077, arg178, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://nfe.sjp.pr.gov.br",
                            "consultarSituacaoLoteRpsV3")));

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
                    br.gov.pr.sjp.nfe.ConsultarSituacaoLoteRpsV3Response.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getConsultarSituacaoLoteRpsV3Response_return((br.gov.pr.sjp.nfe.ConsultarSituacaoLoteRpsV3Response) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(),
                                "ConsultarSituacaoLoteRpsV3"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(),
                                    "ConsultarSituacaoLoteRpsV3"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(),
                                    "ConsultarSituacaoLoteRpsV3"));
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

    //https://nfe.sjp.pr.gov.br//servicos/issOnline2/ws/
    private org.apache.axiom.om.OMElement toOM(
        br.gov.pr.sjp.nfe.CancelarNfse param, boolean optimizeContent)
        throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.pr.sjp.nfe.CancelarNfse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.pr.sjp.nfe.CancelarNfseResponse param, boolean optimizeContent)
        throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.pr.sjp.nfe.CancelarNfseResponse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.pr.sjp.nfe.CancelarNfseV3 param, boolean optimizeContent)
        throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.pr.sjp.nfe.CancelarNfseV3.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.pr.sjp.nfe.CancelarNfseV3Response param, boolean optimizeContent)
        throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.pr.sjp.nfe.CancelarNfseV3Response.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.pr.sjp.nfe.ConsultarSituacaoLoteRps param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.pr.sjp.nfe.ConsultarSituacaoLoteRps.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.pr.sjp.nfe.ConsultarSituacaoLoteRpsResponse param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.pr.sjp.nfe.ConsultarSituacaoLoteRpsResponse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.pr.sjp.nfe.ConsultarLoteRpsV3 param, boolean optimizeContent)
        throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.pr.sjp.nfe.ConsultarLoteRpsV3.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.pr.sjp.nfe.ConsultarLoteRpsV3Response param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.pr.sjp.nfe.ConsultarLoteRpsV3Response.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.pr.sjp.nfe.ConsultarLoteRps param, boolean optimizeContent)
        throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.pr.sjp.nfe.ConsultarLoteRps.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.pr.sjp.nfe.ConsultarLoteRpsResponse param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.pr.sjp.nfe.ConsultarLoteRpsResponse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.pr.sjp.nfe.RecepcionarLoteRpsV3 param, boolean optimizeContent)
        throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.pr.sjp.nfe.RecepcionarLoteRpsV3.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.pr.sjp.nfe.RecepcionarLoteRpsV3Response param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.pr.sjp.nfe.RecepcionarLoteRpsV3Response.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.pr.sjp.nfe.ConsultarNfsePorRpsV3 param, boolean optimizeContent)
        throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.pr.sjp.nfe.ConsultarNfsePorRpsV3.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.pr.sjp.nfe.ConsultarNfsePorRpsV3Response param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.pr.sjp.nfe.ConsultarNfsePorRpsV3Response.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.pr.sjp.nfe.RecepcionarLoteRps param, boolean optimizeContent)
        throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.pr.sjp.nfe.RecepcionarLoteRps.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.pr.sjp.nfe.RecepcionarLoteRpsResponse param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.pr.sjp.nfe.RecepcionarLoteRpsResponse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.pr.sjp.nfe.ConsultarNfse param, boolean optimizeContent)
        throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.pr.sjp.nfe.ConsultarNfse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.pr.sjp.nfe.ConsultarNfseResponse param, boolean optimizeContent)
        throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.pr.sjp.nfe.ConsultarNfseResponse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.pr.sjp.nfe.ConsultarNfsePorRps param, boolean optimizeContent)
        throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.pr.sjp.nfe.ConsultarNfsePorRps.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.pr.sjp.nfe.ConsultarNfsePorRpsResponse param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.pr.sjp.nfe.ConsultarNfsePorRpsResponse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.pr.sjp.nfe.ConsultarNfseV3 param, boolean optimizeContent)
        throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.pr.sjp.nfe.ConsultarNfseV3.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.pr.sjp.nfe.ConsultarNfseV3Response param, boolean optimizeContent)
        throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.pr.sjp.nfe.ConsultarNfseV3Response.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.pr.sjp.nfe.ConsultarSituacaoLoteRpsV3 param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.pr.sjp.nfe.ConsultarSituacaoLoteRpsV3.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.pr.sjp.nfe.ConsultarSituacaoLoteRpsV3Response param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.pr.sjp.nfe.ConsultarSituacaoLoteRpsV3Response.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        br.gov.pr.sjp.nfe.CancelarNfse dummyWrappedType, boolean optimizeContent)
        throws org.apache.axis2.AxisFault {
        try {
            br.gov.pr.sjp.nfe.CancelarNfse wrappedType = new br.gov.pr.sjp.nfe.CancelarNfse();

            wrappedType.setArg0(param1);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.gov.pr.sjp.nfe.CancelarNfse.MY_QNAME, factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private java.lang.String getCancelarNfseResponse_return(
        br.gov.pr.sjp.nfe.CancelarNfseResponse wrappedType) {
        return wrappedType.get_return();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        java.lang.String param2,
        br.gov.pr.sjp.nfe.CancelarNfseV3 dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.gov.pr.sjp.nfe.CancelarNfseV3 wrappedType = new br.gov.pr.sjp.nfe.CancelarNfseV3();

            wrappedType.setArg0(param1);

            wrappedType.setArg1(param2);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.gov.pr.sjp.nfe.CancelarNfseV3.MY_QNAME, factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private java.lang.String getCancelarNfseV3Response_return(
        br.gov.pr.sjp.nfe.CancelarNfseV3Response wrappedType) {
        return wrappedType.get_return();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        br.gov.pr.sjp.nfe.ConsultarSituacaoLoteRps dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.gov.pr.sjp.nfe.ConsultarSituacaoLoteRps wrappedType = new br.gov.pr.sjp.nfe.ConsultarSituacaoLoteRps();

            wrappedType.setArg0(param1);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.gov.pr.sjp.nfe.ConsultarSituacaoLoteRps.MY_QNAME, factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private java.lang.String getConsultarSituacaoLoteRpsResponse_return(
        br.gov.pr.sjp.nfe.ConsultarSituacaoLoteRpsResponse wrappedType) {
        return wrappedType.get_return();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        java.lang.String param2,
        br.gov.pr.sjp.nfe.ConsultarLoteRpsV3 dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.gov.pr.sjp.nfe.ConsultarLoteRpsV3 wrappedType = new br.gov.pr.sjp.nfe.ConsultarLoteRpsV3();

            wrappedType.setArg0(param1);

            wrappedType.setArg1(param2);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.gov.pr.sjp.nfe.ConsultarLoteRpsV3.MY_QNAME, factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private java.lang.String getConsultarLoteRpsV3Response_return(
        br.gov.pr.sjp.nfe.ConsultarLoteRpsV3Response wrappedType) {
        return wrappedType.get_return();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        br.gov.pr.sjp.nfe.ConsultarLoteRps dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.gov.pr.sjp.nfe.ConsultarLoteRps wrappedType = new br.gov.pr.sjp.nfe.ConsultarLoteRps();

            wrappedType.setArg0(param1);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.gov.pr.sjp.nfe.ConsultarLoteRps.MY_QNAME, factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private java.lang.String getConsultarLoteRpsResponse_return(
        br.gov.pr.sjp.nfe.ConsultarLoteRpsResponse wrappedType) {
        return wrappedType.get_return();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        java.lang.String param2,
        br.gov.pr.sjp.nfe.RecepcionarLoteRpsV3 dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.gov.pr.sjp.nfe.RecepcionarLoteRpsV3 wrappedType = new br.gov.pr.sjp.nfe.RecepcionarLoteRpsV3();

            wrappedType.setArg0(param1);

            wrappedType.setArg1(param2);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.gov.pr.sjp.nfe.RecepcionarLoteRpsV3.MY_QNAME, factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private java.lang.String getRecepcionarLoteRpsV3Response_return(
        br.gov.pr.sjp.nfe.RecepcionarLoteRpsV3Response wrappedType) {
        return wrappedType.get_return();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        java.lang.String param2,
        br.gov.pr.sjp.nfe.ConsultarNfsePorRpsV3 dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.gov.pr.sjp.nfe.ConsultarNfsePorRpsV3 wrappedType = new br.gov.pr.sjp.nfe.ConsultarNfsePorRpsV3();

            wrappedType.setArg0(param1);

            wrappedType.setArg1(param2);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.gov.pr.sjp.nfe.ConsultarNfsePorRpsV3.MY_QNAME, factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private java.lang.String getConsultarNfsePorRpsV3Response_return(
        br.gov.pr.sjp.nfe.ConsultarNfsePorRpsV3Response wrappedType) {
        return wrappedType.get_return();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        br.gov.pr.sjp.nfe.RecepcionarLoteRps dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.gov.pr.sjp.nfe.RecepcionarLoteRps wrappedType = new br.gov.pr.sjp.nfe.RecepcionarLoteRps();

            wrappedType.setArg0(param1);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.gov.pr.sjp.nfe.RecepcionarLoteRps.MY_QNAME, factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private java.lang.String getRecepcionarLoteRpsResponse_return(
        br.gov.pr.sjp.nfe.RecepcionarLoteRpsResponse wrappedType) {
        return wrappedType.get_return();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        br.gov.pr.sjp.nfe.ConsultarNfse dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.gov.pr.sjp.nfe.ConsultarNfse wrappedType = new br.gov.pr.sjp.nfe.ConsultarNfse();

            wrappedType.setArg0(param1);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.gov.pr.sjp.nfe.ConsultarNfse.MY_QNAME, factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private java.lang.String getConsultarNfseResponse_return(
        br.gov.pr.sjp.nfe.ConsultarNfseResponse wrappedType) {
        return wrappedType.get_return();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        br.gov.pr.sjp.nfe.ConsultarNfsePorRps dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.gov.pr.sjp.nfe.ConsultarNfsePorRps wrappedType = new br.gov.pr.sjp.nfe.ConsultarNfsePorRps();

            wrappedType.setArg0(param1);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.gov.pr.sjp.nfe.ConsultarNfsePorRps.MY_QNAME, factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private java.lang.String getConsultarNfsePorRpsResponse_return(
        br.gov.pr.sjp.nfe.ConsultarNfsePorRpsResponse wrappedType) {
        return wrappedType.get_return();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        java.lang.String param2,
        br.gov.pr.sjp.nfe.ConsultarNfseV3 dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.gov.pr.sjp.nfe.ConsultarNfseV3 wrappedType = new br.gov.pr.sjp.nfe.ConsultarNfseV3();

            wrappedType.setArg0(param1);

            wrappedType.setArg1(param2);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.gov.pr.sjp.nfe.ConsultarNfseV3.MY_QNAME, factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private java.lang.String getConsultarNfseV3Response_return(
        br.gov.pr.sjp.nfe.ConsultarNfseV3Response wrappedType) {
        return wrappedType.get_return();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        java.lang.String param2,
        br.gov.pr.sjp.nfe.ConsultarSituacaoLoteRpsV3 dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.gov.pr.sjp.nfe.ConsultarSituacaoLoteRpsV3 wrappedType = new br.gov.pr.sjp.nfe.ConsultarSituacaoLoteRpsV3();

            wrappedType.setArg0(param1);

            wrappedType.setArg1(param2);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.gov.pr.sjp.nfe.ConsultarSituacaoLoteRpsV3.MY_QNAME,
                    factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private java.lang.String getConsultarSituacaoLoteRpsV3Response_return(
        br.gov.pr.sjp.nfe.ConsultarSituacaoLoteRpsV3Response wrappedType) {
        return wrappedType.get_return();
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
            if (br.gov.pr.sjp.nfe.CancelarNfse.class.equals(type)) {
                return br.gov.pr.sjp.nfe.CancelarNfse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.pr.sjp.nfe.CancelarNfseResponse.class.equals(type)) {
                return br.gov.pr.sjp.nfe.CancelarNfseResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.pr.sjp.nfe.CancelarNfseV3.class.equals(type)) {
                return br.gov.pr.sjp.nfe.CancelarNfseV3.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.pr.sjp.nfe.CancelarNfseV3Response.class.equals(type)) {
                return br.gov.pr.sjp.nfe.CancelarNfseV3Response.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.pr.sjp.nfe.ConsultarLoteRps.class.equals(type)) {
                return br.gov.pr.sjp.nfe.ConsultarLoteRps.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.pr.sjp.nfe.ConsultarLoteRpsResponse.class.equals(type)) {
                return br.gov.pr.sjp.nfe.ConsultarLoteRpsResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.pr.sjp.nfe.ConsultarLoteRpsV3.class.equals(type)) {
                return br.gov.pr.sjp.nfe.ConsultarLoteRpsV3.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.pr.sjp.nfe.ConsultarLoteRpsV3Response.class.equals(type)) {
                return br.gov.pr.sjp.nfe.ConsultarLoteRpsV3Response.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.pr.sjp.nfe.ConsultarNfse.class.equals(type)) {
                return br.gov.pr.sjp.nfe.ConsultarNfse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.pr.sjp.nfe.ConsultarNfsePorRps.class.equals(type)) {
                return br.gov.pr.sjp.nfe.ConsultarNfsePorRps.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.pr.sjp.nfe.ConsultarNfsePorRpsResponse.class.equals(type)) {
                return br.gov.pr.sjp.nfe.ConsultarNfsePorRpsResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.pr.sjp.nfe.ConsultarNfsePorRpsV3.class.equals(type)) {
                return br.gov.pr.sjp.nfe.ConsultarNfsePorRpsV3.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.pr.sjp.nfe.ConsultarNfsePorRpsV3Response.class.equals(
                        type)) {
                return br.gov.pr.sjp.nfe.ConsultarNfsePorRpsV3Response.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.pr.sjp.nfe.ConsultarNfseResponse.class.equals(type)) {
                return br.gov.pr.sjp.nfe.ConsultarNfseResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.pr.sjp.nfe.ConsultarNfseV3.class.equals(type)) {
                return br.gov.pr.sjp.nfe.ConsultarNfseV3.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.pr.sjp.nfe.ConsultarNfseV3Response.class.equals(type)) {
                return br.gov.pr.sjp.nfe.ConsultarNfseV3Response.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.pr.sjp.nfe.ConsultarSituacaoLoteRps.class.equals(type)) {
                return br.gov.pr.sjp.nfe.ConsultarSituacaoLoteRps.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.pr.sjp.nfe.ConsultarSituacaoLoteRpsResponse.class.equals(
                        type)) {
                return br.gov.pr.sjp.nfe.ConsultarSituacaoLoteRpsResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.pr.sjp.nfe.ConsultarSituacaoLoteRpsV3.class.equals(type)) {
                return br.gov.pr.sjp.nfe.ConsultarSituacaoLoteRpsV3.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.pr.sjp.nfe.ConsultarSituacaoLoteRpsV3Response.class.equals(
                        type)) {
                return br.gov.pr.sjp.nfe.ConsultarSituacaoLoteRpsV3Response.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.pr.sjp.nfe.RecepcionarLoteRps.class.equals(type)) {
                return br.gov.pr.sjp.nfe.RecepcionarLoteRps.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.pr.sjp.nfe.RecepcionarLoteRpsResponse.class.equals(type)) {
                return br.gov.pr.sjp.nfe.RecepcionarLoteRpsResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.pr.sjp.nfe.RecepcionarLoteRpsV3.class.equals(type)) {
                return br.gov.pr.sjp.nfe.RecepcionarLoteRpsV3.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.pr.sjp.nfe.RecepcionarLoteRpsV3Response.class.equals(
                        type)) {
                return br.gov.pr.sjp.nfe.RecepcionarLoteRpsV3Response.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }
        } catch (java.lang.Exception e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }

        return null;
    }
}
