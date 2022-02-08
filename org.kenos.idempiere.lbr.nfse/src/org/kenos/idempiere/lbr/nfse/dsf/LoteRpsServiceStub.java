/**
 * LoteRpsServiceStub.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.4  Built on : Dec 28, 2015 (10:03:39 GMT)
 */
package org.kenos.idempiere.lbr.nfse.dsf;


/*
 *  LoteRpsServiceStub java implementation
 */
@SuppressWarnings({"rawtypes", "unchecked", "unused"})
public class LoteRpsServiceStub extends org.apache.axis2.client.Stub
    implements LoteRpsService {
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
    public LoteRpsServiceStub(
        org.apache.axis2.context.ConfigurationContext configurationContext,
        java.lang.String targetEndpoint) throws org.apache.axis2.AxisFault {
        this(configurationContext, targetEndpoint, false);
    }

    /**
     * Constructor that takes in a configContext  and useseperate listner
     */
    public LoteRpsServiceStub(
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
    public LoteRpsServiceStub(
        org.apache.axis2.context.ConfigurationContext configurationContext)
        throws org.apache.axis2.AxisFault {
        this(configurationContext,
            "http://issdigital.pmcg.ms.gov.br/WsNFe2/LoteRps.jws");
    }

    /**
     * Default Constructor
     */
    public LoteRpsServiceStub() throws org.apache.axis2.AxisFault {
        this("http://issdigital.pmcg.ms.gov.br/WsNFe2/LoteRps.jws");
    }

    /**
     * Constructor taking the target endpoint
     */
    public LoteRpsServiceStub(java.lang.String targetEndpoint)
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
                "LoteRpsService" + getUniqueSuffix());
        addAnonymousOperations();

        //creating the operations
        org.apache.axis2.description.AxisOperation __operation;

        _operations = new org.apache.axis2.description.AxisOperation[7];

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://issdigital.pmcg.ms.gov.br/WsNFe2/LoteRps.jws",
                "consultarLote"));
        _service.addOperation(__operation);

        _operations[0] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://issdigital.pmcg.ms.gov.br/WsNFe2/LoteRps.jws",
                "consultarNFSeRps"));
        _service.addOperation(__operation);

        _operations[1] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://issdigital.pmcg.ms.gov.br/WsNFe2/LoteRps.jws",
                "consultarNota"));
        _service.addOperation(__operation);

        _operations[2] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://issdigital.pmcg.ms.gov.br/WsNFe2/LoteRps.jws", "enviar"));
        _service.addOperation(__operation);

        _operations[3] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://issdigital.pmcg.ms.gov.br/WsNFe2/LoteRps.jws",
                "cancelar"));
        _service.addOperation(__operation);

        _operations[4] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://issdigital.pmcg.ms.gov.br/WsNFe2/LoteRps.jws",
                "consultarSequencialRps"));
        _service.addOperation(__operation);

        _operations[5] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://issdigital.pmcg.ms.gov.br/WsNFe2/LoteRps.jws",
                "enviarSincrono"));
        _service.addOperation(__operation);

        _operations[6] = __operation;
    }

    //populates the faults
    private void populateFaults() {
    }

    /**
     * Auto generated method signature
     *
     * @see org.kenos.idempiere.lbr.nfse.dsf.LoteRpsService#consultarLote
     * @param consultarLote6
     */
    public java.lang.String consultarLote(java.lang.String mensagemXml7)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[0].getName());
            _operationClient.getOptions()
                            .setAction("http://issdigital.pmcg.ms.gov.br/WsNFe2/LoteRps.jws/LoteRps/consultarLoteRequest");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.com.dsfnet.wsnfe2.proces.ConsultarLote dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    mensagemXml7, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://issdigital.pmcg.ms.gov.br/WsNFe2/LoteRps.jws",
                            "consultarLote")));

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
                    br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.ConsultarLoteResponse.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getConsultarLoteResponseConsultarLoteReturn((br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.ConsultarLoteResponse) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "consultarLote"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "consultarLote"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "consultarLote"));
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
     * @see org.kenos.idempiere.lbr.nfse.dsf.LoteRpsService#consultarNFSeRps
     * @param consultarNFSeRps10
     */
    public java.lang.String consultarNFSeRps(java.lang.String mensagemXml11)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[1].getName());
            _operationClient.getOptions()
                            .setAction("http://issdigital.pmcg.ms.gov.br/WsNFe2/LoteRps.jws/LoteRps/consultarNFSeRpsRequest");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.com.dsfnet.wsnfe2.proces.ConsultarNFSeRps dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    mensagemXml11, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://issdigital.pmcg.ms.gov.br/WsNFe2/LoteRps.jws",
                            "consultarNFSeRps")));

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
                    br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.ConsultarNFSeRpsResponse.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getConsultarNFSeRpsResponseConsultarNFSeRpsReturn((br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.ConsultarNFSeRpsResponse) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "consultarNFSeRps"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "consultarNFSeRps"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "consultarNFSeRps"));
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
     * @see org.kenos.idempiere.lbr.nfse.dsf.LoteRpsService#consultarNota
     * @param consultarNota14
     */
    public java.lang.String consultarNota(java.lang.String mensagemXml15)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[2].getName());
            _operationClient.getOptions()
                            .setAction("http://issdigital.pmcg.ms.gov.br/WsNFe2/LoteRps.jws/LoteRps/consultarNotaRequest");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.com.dsfnet.wsnfe2.proces.ConsultarNota dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    mensagemXml15, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://issdigital.pmcg.ms.gov.br/WsNFe2/LoteRps.jws",
                            "consultarNota")));

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
                    br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.ConsultarNotaResponse.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getConsultarNotaResponseConsultarNotaReturn((br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.ConsultarNotaResponse) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "consultarNota"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "consultarNota"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "consultarNota"));
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
     * @see org.kenos.idempiere.lbr.nfse.dsf.LoteRpsService#enviar
     * @param enviar18
     */
    public java.lang.String enviar(java.lang.String mensagemXml19)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[3].getName());
            _operationClient.getOptions()
                            .setAction("http://issdigital.pmcg.ms.gov.br/WsNFe2/LoteRps.jws/LoteRps/enviarRequest");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.com.dsfnet.wsnfe2.proces.Enviar dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    mensagemXml19, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://issdigital.pmcg.ms.gov.br/WsNFe2/LoteRps.jws",
                            "enviar")));

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
                    br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.EnviarResponse.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getEnviarResponseEnviarReturn((br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.EnviarResponse) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "enviar"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "enviar"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "enviar"));
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
     * @see org.kenos.idempiere.lbr.nfse.dsf.LoteRpsService#cancelar
     * @param cancelar22
     */
    public java.lang.String cancelar(java.lang.String mensagemXml23)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[4].getName());
            _operationClient.getOptions()
                            .setAction("http://issdigital.pmcg.ms.gov.br/WsNFe2/LoteRps.jws/LoteRps/cancelarRequest");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.com.dsfnet.wsnfe2.proces.Cancelar dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    mensagemXml23, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://issdigital.pmcg.ms.gov.br/WsNFe2/LoteRps.jws",
                            "cancelar")));

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
                    br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.CancelarResponse.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getCancelarResponseCancelarReturn((br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.CancelarResponse) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "cancelar"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "cancelar"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "cancelar"));
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
     * @see org.kenos.idempiere.lbr.nfse.dsf.LoteRpsService#consultarSequencialRps
     * @param consultarSequencialRps26
     */
    public java.lang.String consultarSequencialRps(
        java.lang.String mensagemXml27) throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[5].getName());
            _operationClient.getOptions()
                            .setAction("http://issdigital.pmcg.ms.gov.br/WsNFe2/LoteRps.jws/LoteRps/consultarSequencialRpsRequest");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.com.dsfnet.wsnfe2.proces.ConsultarSequencialRps dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    mensagemXml27, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://issdigital.pmcg.ms.gov.br/WsNFe2/LoteRps.jws",
                            "consultarSequencialRps")));

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
                    br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.ConsultarSequencialRpsResponse.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getConsultarSequencialRpsResponseConsultarSequencialRpsReturn((br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.ConsultarSequencialRpsResponse) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "consultarSequencialRps"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(),
                                    "consultarSequencialRps"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(),
                                    "consultarSequencialRps"));
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
     * @see org.kenos.idempiere.lbr.nfse.dsf.LoteRpsService#enviarSincrono
     * @param enviarSincrono30
     */
    public java.lang.String enviarSincrono(java.lang.String mensagemXml31)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[6].getName());
            _operationClient.getOptions()
                            .setAction("http://issdigital.pmcg.ms.gov.br/WsNFe2/LoteRps.jws/LoteRps/enviarSincronoRequest");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.com.dsfnet.wsnfe2.proces.EnviarSincrono dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    mensagemXml31, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://issdigital.pmcg.ms.gov.br/WsNFe2/LoteRps.jws",
                            "enviarSincrono")));

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
                    br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.EnviarSincronoResponse.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getEnviarSincronoResponseEnviarSincronoReturn((br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.EnviarSincronoResponse) object);
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "enviarSincrono"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "enviarSincrono"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "enviarSincrono"));
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

    //http://issdigital.pmcg.ms.gov.br/WsNFe2/LoteRps.jws
    private org.apache.axiom.om.OMElement toOM(
        br.com.dsfnet.wsnfe2.proces.ConsultarLote param, boolean optimizeContent)
        throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.com.dsfnet.wsnfe2.proces.ConsultarLote.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.ConsultarLoteResponse param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.ConsultarLoteResponse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.com.dsfnet.wsnfe2.proces.ConsultarNFSeRps param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.com.dsfnet.wsnfe2.proces.ConsultarNFSeRps.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.ConsultarNFSeRpsResponse param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.ConsultarNFSeRpsResponse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.com.dsfnet.wsnfe2.proces.ConsultarNota param, boolean optimizeContent)
        throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.com.dsfnet.wsnfe2.proces.ConsultarNota.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.ConsultarNotaResponse param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.ConsultarNotaResponse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.com.dsfnet.wsnfe2.proces.Enviar param, boolean optimizeContent)
        throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.com.dsfnet.wsnfe2.proces.Enviar.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.EnviarResponse param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.EnviarResponse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.com.dsfnet.wsnfe2.proces.Cancelar param, boolean optimizeContent)
        throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.com.dsfnet.wsnfe2.proces.Cancelar.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.CancelarResponse param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.CancelarResponse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.com.dsfnet.wsnfe2.proces.ConsultarSequencialRps param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.com.dsfnet.wsnfe2.proces.ConsultarSequencialRps.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.ConsultarSequencialRpsResponse param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.ConsultarSequencialRpsResponse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.com.dsfnet.wsnfe2.proces.EnviarSincrono param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.com.dsfnet.wsnfe2.proces.EnviarSincrono.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.EnviarSincronoResponse param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.EnviarSincronoResponse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        br.com.dsfnet.wsnfe2.proces.ConsultarLote dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.com.dsfnet.wsnfe2.proces.ConsultarLote wrappedType = new br.com.dsfnet.wsnfe2.proces.ConsultarLote();

            wrappedType.setMensagemXml(param1);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.com.dsfnet.wsnfe2.proces.ConsultarLote.MY_QNAME, factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private java.lang.String getConsultarLoteResponseConsultarLoteReturn(
        br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.ConsultarLoteResponse wrappedType) {
        return wrappedType.getConsultarLoteReturn();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        br.com.dsfnet.wsnfe2.proces.ConsultarNFSeRps dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.com.dsfnet.wsnfe2.proces.ConsultarNFSeRps wrappedType = new br.com.dsfnet.wsnfe2.proces.ConsultarNFSeRps();

            wrappedType.setMensagemXml(param1);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.com.dsfnet.wsnfe2.proces.ConsultarNFSeRps.MY_QNAME,
                    factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private java.lang.String getConsultarNFSeRpsResponseConsultarNFSeRpsReturn(
        br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.ConsultarNFSeRpsResponse wrappedType) {
        return wrappedType.getConsultarNFSeRpsReturn();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        br.com.dsfnet.wsnfe2.proces.ConsultarNota dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.com.dsfnet.wsnfe2.proces.ConsultarNota wrappedType = new br.com.dsfnet.wsnfe2.proces.ConsultarNota();

            wrappedType.setMensagemXml(param1);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.com.dsfnet.wsnfe2.proces.ConsultarNota.MY_QNAME, factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private java.lang.String getConsultarNotaResponseConsultarNotaReturn(
        br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.ConsultarNotaResponse wrappedType) {
        return wrappedType.getConsultarNotaReturn();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        br.com.dsfnet.wsnfe2.proces.Enviar dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.com.dsfnet.wsnfe2.proces.Enviar wrappedType = new br.com.dsfnet.wsnfe2.proces.Enviar();

            wrappedType.setMensagemXml(param1);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.com.dsfnet.wsnfe2.proces.Enviar.MY_QNAME, factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private java.lang.String getEnviarResponseEnviarReturn(
        br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.EnviarResponse wrappedType) {
        return wrappedType.getEnviarReturn();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        br.com.dsfnet.wsnfe2.proces.Cancelar dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.com.dsfnet.wsnfe2.proces.Cancelar wrappedType = new br.com.dsfnet.wsnfe2.proces.Cancelar();

            wrappedType.setMensagemXml(param1);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.com.dsfnet.wsnfe2.proces.Cancelar.MY_QNAME, factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private java.lang.String getCancelarResponseCancelarReturn(
        br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.CancelarResponse wrappedType) {
        return wrappedType.getCancelarReturn();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        br.com.dsfnet.wsnfe2.proces.ConsultarSequencialRps dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.com.dsfnet.wsnfe2.proces.ConsultarSequencialRps wrappedType = new br.com.dsfnet.wsnfe2.proces.ConsultarSequencialRps();

            wrappedType.setMensagemXml(param1);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.com.dsfnet.wsnfe2.proces.ConsultarSequencialRps.MY_QNAME,
                    factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private java.lang.String getConsultarSequencialRpsResponseConsultarSequencialRpsReturn(
        br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.ConsultarSequencialRpsResponse wrappedType) {
        return wrappedType.getConsultarSequencialRpsReturn();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        br.com.dsfnet.wsnfe2.proces.EnviarSincrono dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.com.dsfnet.wsnfe2.proces.EnviarSincrono wrappedType = new br.com.dsfnet.wsnfe2.proces.EnviarSincrono();

            wrappedType.setMensagemXml(param1);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.com.dsfnet.wsnfe2.proces.EnviarSincrono.MY_QNAME, factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private java.lang.String getEnviarSincronoResponseEnviarSincronoReturn(
        br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.EnviarSincronoResponse wrappedType) {
        return wrappedType.getEnviarSincronoReturn();
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
            if (br.com.dsfnet.wsnfe2.proces.Cancelar.class.equals(type)) {
                return br.com.dsfnet.wsnfe2.proces.Cancelar.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.com.dsfnet.wsnfe2.proces.ConsultarLote.class.equals(type)) {
                return br.com.dsfnet.wsnfe2.proces.ConsultarLote.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.com.dsfnet.wsnfe2.proces.ConsultarNFSeRps.class.equals(type)) {
                return br.com.dsfnet.wsnfe2.proces.ConsultarNFSeRps.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.com.dsfnet.wsnfe2.proces.ConsultarNota.class.equals(type)) {
                return br.com.dsfnet.wsnfe2.proces.ConsultarNota.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.com.dsfnet.wsnfe2.proces.ConsultarSequencialRps.class.equals(
                        type)) {
                return br.com.dsfnet.wsnfe2.proces.ConsultarSequencialRps.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.com.dsfnet.wsnfe2.proces.Enviar.class.equals(type)) {
                return br.com.dsfnet.wsnfe2.proces.Enviar.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.com.dsfnet.wsnfe2.proces.EnviarSincrono.class.equals(type)) {
                return br.com.dsfnet.wsnfe2.proces.EnviarSincrono.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.CancelarResponse.class.equals(
                        type)) {
                return br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.CancelarResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.ConsultarLoteResponse.class.equals(
                        type)) {
                return br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.ConsultarLoteResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.ConsultarNFSeRpsResponse.class.equals(
                        type)) {
                return br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.ConsultarNFSeRpsResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.ConsultarNotaResponse.class.equals(
                        type)) {
                return br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.ConsultarNotaResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.ConsultarSequencialRpsResponse.class.equals(
                        type)) {
                return br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.ConsultarSequencialRpsResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.EnviarResponse.class.equals(
                        type)) {
                return br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.EnviarResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.EnviarSincronoResponse.class.equals(
                        type)) {
                return br.gov.ms.pmcg.issdigital.wsnfe2.loterps_jws.EnviarSincronoResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }
        } catch (java.lang.Exception e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }

        return null;
    }
}
