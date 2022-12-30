/**
 * NfseWSServiceStub.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.4  Built on : Dec 28, 2015 (10:03:39 GMT)
 */
package br.org.abrasf.nfse.v204.api;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamException;

import br.org.abrasf.nfse.v204.GerarNfseResponse;
import br.org.abrasf.nfse.v204.Output;

/*
 *  NfseWSServiceStub java implementation
 */
public class NfseWSServiceStub extends org.apache.axis2.client.Stub
    implements NfseWSService {
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
    public NfseWSServiceStub(
        org.apache.axis2.context.ConfigurationContext configurationContext,
        java.lang.String targetEndpoint) throws org.apache.axis2.AxisFault {
        this(configurationContext, targetEndpoint, false);
    }

    /**
     * Constructor that takes in a configContext  and useseperate listner
     */
    public NfseWSServiceStub(
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
    public NfseWSServiceStub(
        org.apache.axis2.context.ConfigurationContext configurationContext)
        throws org.apache.axis2.AxisFault {
        this(configurationContext, "nfse.asmx");
    }

    /**
     * Default Constructor
     */
    public NfseWSServiceStub() throws org.apache.axis2.AxisFault {
        this("nfse.asmx");
    }

    /**
     * Constructor taking the target endpoint
     */
    public NfseWSServiceStub(java.lang.String targetEndpoint)
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
        _service = new org.apache.axis2.description.AxisService("NfseWSService" +
                getUniqueSuffix());
        addAnonymousOperations();

        //creating the operations
        org.apache.axis2.description.AxisOperation __operation;

        _operations = new org.apache.axis2.description.AxisOperation[10];

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://nfse.abrasf.org.br", "consultarNfseServicoTomado"));
        _service.addOperation(__operation);

        _operations[0] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://nfse.abrasf.org.br", "consultarNfsePorRps"));
        _service.addOperation(__operation);

        _operations[1] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://nfse.abrasf.org.br", "recepcionarLoteRps"));
        _service.addOperation(__operation);

        _operations[2] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://nfse.abrasf.org.br", "recepcionarLoteRpsSincrono"));
        _service.addOperation(__operation);

        _operations[3] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://nfse.abrasf.org.br", "consultarNfseServicoPrestado"));
        _service.addOperation(__operation);

        _operations[4] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://nfse.abrasf.org.br", "cancelarNfse"));
        _service.addOperation(__operation);

        _operations[5] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://nfse.abrasf.org.br", "consultarLoteRps"));
        _service.addOperation(__operation);

        _operations[6] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://nfse.abrasf.org.br", "gerarNfse"));
        _service.addOperation(__operation);

        _operations[7] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://nfse.abrasf.org.br", "substituirNfse"));
        _service.addOperation(__operation);

        _operations[8] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://nfse.abrasf.org.br", "consultarNfsePorFaixa"));
        _service.addOperation(__operation);

        _operations[9] = __operation;
    }

    //populates the faults
    private void populateFaults() {
    }

    /**
     * Auto generated method signature
     *
     * @see br.org.abrasf.nfse.v204.v204.api.NfseWSService#consultarNfseServicoTomado
     * @param consultarNfseServicoTomado27
     */
    public java.lang.String consultarNfseServicoTomado(
        java.lang.String nfseCabecMsg28, java.lang.String nfseDadosMsg29)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[0].getName());
            _operationClient.getOptions()
                            .setAction("http://nfse.abrasf.org.br/ConsultarNfseServicoTomado");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.org.abrasf.nfse.v204.ConsultarNfseServicoTomado dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    nfseCabecMsg28, nfseDadosMsg29, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://nfse.abrasf.org.br",
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
                    br.org.abrasf.nfse.v204.ConsultarNfseServicoTomadoResponse.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getConsultarNfseServicoTomadoResponseOutputXML((br.org.abrasf.nfse.v204.ConsultarNfseServicoTomadoResponse) object);
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
     * @see br.org.abrasf.nfse.v204.v204.api.NfseWSService#consultarNfsePorRps
     * @param consultarNfsePorRps32
     */
    public java.lang.String consultarNfsePorRps(
        java.lang.String nfseCabecMsg33, java.lang.String nfseDadosMsg34)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[1].getName());
            _operationClient.getOptions()
                            .setAction("http://nfse.abrasf.org.br/ConsultarNfsePorRps");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.org.abrasf.nfse.v204.ConsultarNfsePorRps dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    nfseCabecMsg33, nfseDadosMsg34, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://nfse.abrasf.org.br", "consultarNfsePorRps")));

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
                    br.org.abrasf.nfse.v204.ConsultarNfsePorRpsResponse.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getConsultarNfsePorRpsResponseOutputXML((br.org.abrasf.nfse.v204.ConsultarNfsePorRpsResponse) object);
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
     * @see br.org.abrasf.nfse.v204.v204.api.NfseWSService#recepcionarLoteRps
     * @param recepcionarLoteRps37
     */
    public java.lang.String recepcionarLoteRps(
        java.lang.String nfseCabecMsg38, java.lang.String nfseDadosMsg39)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[2].getName());
            _operationClient.getOptions()
                            .setAction("http://nfse.abrasf.org.br/RecepcionarLoteRps");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.org.abrasf.nfse.v204.RecepcionarLoteRps dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    nfseCabecMsg38, nfseDadosMsg39, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://nfse.abrasf.org.br", "recepcionarLoteRps")));

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
                    br.org.abrasf.nfse.v204.RecepcionarLoteRpsResponse.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getRecepcionarLoteRpsResponseOutputXML((br.org.abrasf.nfse.v204.RecepcionarLoteRpsResponse) object);
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
     * @see br.org.abrasf.nfse.v204.v204.api.NfseWSService#recepcionarLoteRpsSincrono
     * @param recepcionarLoteRpsSincrono42
     */
    public java.lang.String recepcionarLoteRpsSincrono(
        java.lang.String nfseCabecMsg43, java.lang.String nfseDadosMsg44)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[3].getName());
            _operationClient.getOptions()
                            .setAction("http://nfse.abrasf.org.br/RecepcionarLoteRpsSincrono");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.org.abrasf.nfse.v204.RecepcionarLoteRpsSincrono dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    nfseCabecMsg43, nfseDadosMsg44, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://nfse.abrasf.org.br",
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
                    br.org.abrasf.nfse.v204.RecepcionarLoteRpsSincronoResponse.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getRecepcionarLoteRpsSincronoResponseOutputXML((br.org.abrasf.nfse.v204.RecepcionarLoteRpsSincronoResponse) object);
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
     * Auto generated method signature
     *
     * @see br.org.abrasf.nfse.v204.v204.api.NfseWSService#consultarNfseServicoPrestado
     * @param consultarNfseServicoPrestado47
     */
    public java.lang.String consultarNfseServicoPrestado(
        java.lang.String nfseCabecMsg48, java.lang.String nfseDadosMsg49)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[4].getName());
            _operationClient.getOptions()
                            .setAction("http://nfse.abrasf.org.br/ConsultarNfseServicoPrestado");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.org.abrasf.nfse.v204.ConsultarNfseServicoPrestado dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    nfseCabecMsg48, nfseDadosMsg49, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://nfse.abrasf.org.br",
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
                    br.org.abrasf.nfse.v204.ConsultarNfseServicoPrestadoResponse.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getConsultarNfseServicoPrestadoResponseOutputXML((br.org.abrasf.nfse.v204.ConsultarNfseServicoPrestadoResponse) object);
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
     * @see br.org.abrasf.nfse.v204.v204.api.NfseWSService#cancelarNfse
     * @param cancelarNfse52
     */
    public java.lang.String cancelarNfse(java.lang.String nfseCabecMsg53,
        java.lang.String nfseDadosMsg54) throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[5].getName());
            _operationClient.getOptions()
                            .setAction("http://nfse.abrasf.org.br/CancelarNfse");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.org.abrasf.nfse.v204.CancelarNfse dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    nfseCabecMsg53, nfseDadosMsg54, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://nfse.abrasf.org.br", "cancelarNfse")));

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
                    br.org.abrasf.nfse.v204.CancelarNfseResponse.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getCancelarNfseResponseOutputXML((br.org.abrasf.nfse.v204.CancelarNfseResponse) object);
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
     * @see br.org.abrasf.nfse.v204.v204.api.NfseWSService#consultarLoteRps
     * @param consultarLoteRps57
     */
    public java.lang.String consultarLoteRps(java.lang.String nfseCabecMsg58,
        java.lang.String nfseDadosMsg59) throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[6].getName());
            _operationClient.getOptions()
                            .setAction("http://nfse.abrasf.org.br/ConsultarLoteRps");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.org.abrasf.nfse.v204.ConsultarLoteRps dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    nfseCabecMsg58, nfseDadosMsg59, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://nfse.abrasf.org.br", "consultarLoteRps")));

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
                    br.org.abrasf.nfse.v204.ConsultarLoteRpsResponse.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getConsultarLoteRpsResponseOutputXML((br.org.abrasf.nfse.v204.ConsultarLoteRpsResponse) object);
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
     * @see br.org.abrasf.nfse.v204.v204.api.NfseWSService#gerarNfse
     * @param gerarNfse62
     */
    public java.lang.String gerarNfse(java.lang.String nfseCabecMsg63,
        java.lang.String nfseDadosMsg64) throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[7].getName());
            _operationClient.getOptions()
                            .setAction("http://nfse.abrasf.org.br/GerarNfse");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.org.abrasf.nfse.v204.GerarNfse dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    nfseCabecMsg63, nfseDadosMsg64, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://nfse.abrasf.org.br", "gerarNfse")));

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
                    br.org.abrasf.nfse.v204.GerarNfseResponse.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getGerarNfseResponseOutputXML((br.org.abrasf.nfse.v204.GerarNfseResponse) object);
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
     * @see br.org.abrasf.nfse.v204.v204.api.NfseWSService#substituirNfse
     * @param substituirNfse67
     */
    public java.lang.String substituirNfse(java.lang.String nfseCabecMsg68,
        java.lang.String nfseDadosMsg69) throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[8].getName());
            _operationClient.getOptions()
                            .setAction("http://nfse.abrasf.org.br/SubstituirNfse");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.org.abrasf.nfse.v204.SubstituirNfse dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    nfseCabecMsg68, nfseDadosMsg69, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://nfse.abrasf.org.br", "substituirNfse")));

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
                    br.org.abrasf.nfse.v204.SubstituirNfseResponse.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getSubstituirNfseResponseOutputXML((br.org.abrasf.nfse.v204.SubstituirNfseResponse) object);
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
     * @see br.org.abrasf.nfse.v204.v204.api.NfseWSService#consultarNfsePorFaixa
     * @param consultarNfsePorFaixa72
     */
    public java.lang.String consultarNfsePorFaixa(
        java.lang.String nfseCabecMsg73, java.lang.String nfseDadosMsg74)
        throws java.rmi.RemoteException {
        org.apache.axis2.context.MessageContext _messageContext = null;

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[9].getName());
            _operationClient.getOptions()
                            .setAction("http://nfse.abrasf.org.br/ConsultarNfsePorFaixa");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create a message context
            _messageContext = new org.apache.axis2.context.MessageContext();

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;
            br.org.abrasf.nfse.v204.ConsultarNfsePorFaixa dummyWrappedType = null;
            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    nfseCabecMsg73, nfseDadosMsg74, dummyWrappedType,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://nfse.abrasf.org.br", "consultarNfsePorFaixa")));

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
                    br.org.abrasf.nfse.v204.ConsultarNfsePorFaixaResponse.class,
                    getEnvelopeNamespaces(_returnEnv));

            return getConsultarNfsePorFaixaResponseOutputXML((br.org.abrasf.nfse.v204.ConsultarNfsePorFaixaResponse) object);
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

    //nfse.asmx
    private org.apache.axiom.om.OMElement toOM(
        br.org.abrasf.nfse.v204.ConsultarNfseServicoTomado param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.org.abrasf.nfse.v204.ConsultarNfseServicoTomado.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.org.abrasf.nfse.v204.ConsultarNfseServicoTomadoResponse param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.org.abrasf.nfse.v204.ConsultarNfseServicoTomadoResponse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.org.abrasf.nfse.v204.ConsultarNfsePorRps param, boolean optimizeContent)
        throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.org.abrasf.nfse.v204.ConsultarNfsePorRps.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.org.abrasf.nfse.v204.ConsultarNfsePorRpsResponse param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.org.abrasf.nfse.v204.ConsultarNfsePorRpsResponse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.org.abrasf.nfse.v204.RecepcionarLoteRps param, boolean optimizeContent)
        throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.org.abrasf.nfse.v204.RecepcionarLoteRps.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.org.abrasf.nfse.v204.RecepcionarLoteRpsResponse param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.org.abrasf.nfse.v204.RecepcionarLoteRpsResponse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.org.abrasf.nfse.v204.RecepcionarLoteRpsSincrono param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.org.abrasf.nfse.v204.RecepcionarLoteRpsSincrono.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.org.abrasf.nfse.v204.RecepcionarLoteRpsSincronoResponse param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.org.abrasf.nfse.v204.RecepcionarLoteRpsSincronoResponse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.org.abrasf.nfse.v204.ConsultarNfseServicoPrestado param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.org.abrasf.nfse.v204.ConsultarNfseServicoPrestado.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.org.abrasf.nfse.v204.ConsultarNfseServicoPrestadoResponse param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.org.abrasf.nfse.v204.ConsultarNfseServicoPrestadoResponse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.org.abrasf.nfse.v204.CancelarNfse param, boolean optimizeContent)
        throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.org.abrasf.nfse.v204.CancelarNfse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.org.abrasf.nfse.v204.CancelarNfseResponse param, boolean optimizeContent)
        throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.org.abrasf.nfse.v204.CancelarNfseResponse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.org.abrasf.nfse.v204.ConsultarLoteRps param, boolean optimizeContent)
        throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.org.abrasf.nfse.v204.ConsultarLoteRps.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.org.abrasf.nfse.v204.ConsultarLoteRpsResponse param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.org.abrasf.nfse.v204.ConsultarLoteRpsResponse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.org.abrasf.nfse.v204.GerarNfse param, boolean optimizeContent)
        throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.org.abrasf.nfse.v204.GerarNfse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.org.abrasf.nfse.v204.GerarNfseResponse param, boolean optimizeContent)
        throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.org.abrasf.nfse.v204.GerarNfseResponse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.org.abrasf.nfse.v204.SubstituirNfse param, boolean optimizeContent)
        throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.org.abrasf.nfse.v204.SubstituirNfse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.org.abrasf.nfse.v204.SubstituirNfseResponse param, boolean optimizeContent)
        throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.org.abrasf.nfse.v204.SubstituirNfseResponse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.org.abrasf.nfse.v204.ConsultarNfsePorFaixa param, boolean optimizeContent)
        throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.org.abrasf.nfse.v204.ConsultarNfsePorFaixa.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        br.org.abrasf.nfse.v204.ConsultarNfsePorFaixaResponse param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            return param.getOMElement(br.org.abrasf.nfse.v204.ConsultarNfsePorFaixaResponse.MY_QNAME,
                org.apache.axiom.om.OMAbstractFactory.getOMFactory());
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        java.lang.String param2,
        br.org.abrasf.nfse.v204.ConsultarNfseServicoTomado dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.org.abrasf.nfse.v204.ConsultarNfseServicoTomado wrappedType = new br.org.abrasf.nfse.v204.ConsultarNfseServicoTomado();

            br.org.abrasf.nfse.v204.Input wrappedComplexType = new br.org.abrasf.nfse.v204.Input();

            wrappedComplexType.setNfseCabecMsg(param1);

            wrappedComplexType.setNfseDadosMsg(param2);

            wrappedType.setConsultarNfseServicoTomado(wrappedComplexType);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.org.abrasf.nfse.v204.ConsultarNfseServicoTomado.MY_QNAME,
                    factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private br.org.abrasf.nfse.v204.Input getConsultarNfseServicoTomado(
        br.org.abrasf.nfse.v204.ConsultarNfseServicoTomado wrappedType) {
        return wrappedType.getConsultarNfseServicoTomado();
    }

    private br.org.abrasf.nfse.v204.ConsultarNfseServicoTomado wrapConsultarNfseServicoTomado(
        br.org.abrasf.nfse.v204.Input innerType) {
        br.org.abrasf.nfse.v204.ConsultarNfseServicoTomado wrappedElement = new br.org.abrasf.nfse.v204.ConsultarNfseServicoTomado();
        wrappedElement.setConsultarNfseServicoTomado(innerType);

        return wrappedElement;
    }

    private java.lang.String getConsultarNfseServicoTomadoResponseOutputXML(
        br.org.abrasf.nfse.v204.ConsultarNfseServicoTomadoResponse wrappedType) {
        return wrappedType.getConsultarNfseServicoTomadoResponse().getOutputXML();
    }

    private br.org.abrasf.nfse.v204.Output getConsultarNfseServicoTomado(
        br.org.abrasf.nfse.v204.ConsultarNfseServicoTomadoResponse wrappedType) {
        return wrappedType.getConsultarNfseServicoTomadoResponse();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        java.lang.String param2,
        br.org.abrasf.nfse.v204.ConsultarNfsePorRps dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.org.abrasf.nfse.v204.ConsultarNfsePorRps wrappedType = new br.org.abrasf.nfse.v204.ConsultarNfsePorRps();

            br.org.abrasf.nfse.v204.Input wrappedComplexType = new br.org.abrasf.nfse.v204.Input();

            wrappedComplexType.setNfseCabecMsg(param1);

            wrappedComplexType.setNfseDadosMsg(param2);

            wrappedType.setConsultarNfsePorRps(wrappedComplexType);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.org.abrasf.nfse.v204.ConsultarNfsePorRps.MY_QNAME, factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private br.org.abrasf.nfse.v204.Input getConsultarNfsePorRps(
        br.org.abrasf.nfse.v204.ConsultarNfsePorRps wrappedType) {
        return wrappedType.getConsultarNfsePorRps();
    }

    private br.org.abrasf.nfse.v204.ConsultarNfsePorRps wrapConsultarNfsePorRps(
        br.org.abrasf.nfse.v204.Input innerType) {
        br.org.abrasf.nfse.v204.ConsultarNfsePorRps wrappedElement = new br.org.abrasf.nfse.v204.ConsultarNfsePorRps();
        wrappedElement.setConsultarNfsePorRps(innerType);

        return wrappedElement;
    }

    private java.lang.String getConsultarNfsePorRpsResponseOutputXML(
        br.org.abrasf.nfse.v204.ConsultarNfsePorRpsResponse wrappedType) {
        return wrappedType.getConsultarNfsePorRpsResponse().getOutputXML();
    }

    private br.org.abrasf.nfse.v204.Output getConsultarNfsePorRps(
        br.org.abrasf.nfse.v204.ConsultarNfsePorRpsResponse wrappedType) {
        return wrappedType.getConsultarNfsePorRpsResponse();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        java.lang.String param2,
        br.org.abrasf.nfse.v204.RecepcionarLoteRps dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.org.abrasf.nfse.v204.RecepcionarLoteRps wrappedType = new br.org.abrasf.nfse.v204.RecepcionarLoteRps();

            br.org.abrasf.nfse.v204.Input wrappedComplexType = new br.org.abrasf.nfse.v204.Input();

            wrappedComplexType.setNfseCabecMsg(param1);

            wrappedComplexType.setNfseDadosMsg(param2);

            wrappedType.setRecepcionarLoteRps(wrappedComplexType);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.org.abrasf.nfse.v204.RecepcionarLoteRps.MY_QNAME, factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private br.org.abrasf.nfse.v204.Input getRecepcionarLoteRps(
        br.org.abrasf.nfse.v204.RecepcionarLoteRps wrappedType) {
        return wrappedType.getRecepcionarLoteRps();
    }

    private br.org.abrasf.nfse.v204.RecepcionarLoteRps wrapRecepcionarLoteRps(
        br.org.abrasf.nfse.v204.Input innerType) {
        br.org.abrasf.nfse.v204.RecepcionarLoteRps wrappedElement = new br.org.abrasf.nfse.v204.RecepcionarLoteRps();
        wrappedElement.setRecepcionarLoteRps(innerType);

        return wrappedElement;
    }

    private java.lang.String getRecepcionarLoteRpsResponseOutputXML(
        br.org.abrasf.nfse.v204.RecepcionarLoteRpsResponse wrappedType) {
        return wrappedType.getRecepcionarLoteRpsResponse().getOutputXML();
    }

    private br.org.abrasf.nfse.v204.Output getRecepcionarLoteRps(
        br.org.abrasf.nfse.v204.RecepcionarLoteRpsResponse wrappedType) {
        return wrappedType.getRecepcionarLoteRpsResponse();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        java.lang.String param2,
        br.org.abrasf.nfse.v204.RecepcionarLoteRpsSincrono dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.org.abrasf.nfse.v204.RecepcionarLoteRpsSincrono wrappedType = new br.org.abrasf.nfse.v204.RecepcionarLoteRpsSincrono();

            br.org.abrasf.nfse.v204.Input wrappedComplexType = new br.org.abrasf.nfse.v204.Input();

            wrappedComplexType.setNfseCabecMsg(param1);

            wrappedComplexType.setNfseDadosMsg(param2);

            wrappedType.setRecepcionarLoteRpsSincrono(wrappedComplexType);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.org.abrasf.nfse.v204.RecepcionarLoteRpsSincrono.MY_QNAME,
                    factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private br.org.abrasf.nfse.v204.Input getRecepcionarLoteRpsSincrono(
        br.org.abrasf.nfse.v204.RecepcionarLoteRpsSincrono wrappedType) {
        return wrappedType.getRecepcionarLoteRpsSincrono();
    }

    private br.org.abrasf.nfse.v204.RecepcionarLoteRpsSincrono wrapRecepcionarLoteRpsSincrono(
        br.org.abrasf.nfse.v204.Input innerType) {
        br.org.abrasf.nfse.v204.RecepcionarLoteRpsSincrono wrappedElement = new br.org.abrasf.nfse.v204.RecepcionarLoteRpsSincrono();
        wrappedElement.setRecepcionarLoteRpsSincrono(innerType);

        return wrappedElement;
    }

    private java.lang.String getRecepcionarLoteRpsSincronoResponseOutputXML(
        br.org.abrasf.nfse.v204.RecepcionarLoteRpsSincronoResponse wrappedType) {
        return wrappedType.getRecepcionarLoteRpsSincronoResponse().getOutputXML();
    }

    private br.org.abrasf.nfse.v204.Output getRecepcionarLoteRpsSincrono(
        br.org.abrasf.nfse.v204.RecepcionarLoteRpsSincronoResponse wrappedType) {
        return wrappedType.getRecepcionarLoteRpsSincronoResponse();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        java.lang.String param2,
        br.org.abrasf.nfse.v204.ConsultarNfseServicoPrestado dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.org.abrasf.nfse.v204.ConsultarNfseServicoPrestado wrappedType = new br.org.abrasf.nfse.v204.ConsultarNfseServicoPrestado();

            br.org.abrasf.nfse.v204.Input wrappedComplexType = new br.org.abrasf.nfse.v204.Input();

            wrappedComplexType.setNfseCabecMsg(param1);

            wrappedComplexType.setNfseDadosMsg(param2);

            wrappedType.setConsultarNfseServicoPrestado(wrappedComplexType);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.org.abrasf.nfse.v204.ConsultarNfseServicoPrestado.MY_QNAME,
                    factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private br.org.abrasf.nfse.v204.Input getConsultarNfseServicoPrestado(
        br.org.abrasf.nfse.v204.ConsultarNfseServicoPrestado wrappedType) {
        return wrappedType.getConsultarNfseServicoPrestado();
    }

    private br.org.abrasf.nfse.v204.ConsultarNfseServicoPrestado wrapConsultarNfseServicoPrestado(
        br.org.abrasf.nfse.v204.Input innerType) {
        br.org.abrasf.nfse.v204.ConsultarNfseServicoPrestado wrappedElement = new br.org.abrasf.nfse.v204.ConsultarNfseServicoPrestado();
        wrappedElement.setConsultarNfseServicoPrestado(innerType);

        return wrappedElement;
    }

    private java.lang.String getConsultarNfseServicoPrestadoResponseOutputXML(
        br.org.abrasf.nfse.v204.ConsultarNfseServicoPrestadoResponse wrappedType) {
        return wrappedType.getConsultarNfseServicoPrestadoResponse()
                          .getOutputXML();
    }

    private br.org.abrasf.nfse.v204.Output getConsultarNfseServicoPrestado(
        br.org.abrasf.nfse.v204.ConsultarNfseServicoPrestadoResponse wrappedType) {
        return wrappedType.getConsultarNfseServicoPrestadoResponse();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        java.lang.String param2,
        br.org.abrasf.nfse.v204.CancelarNfse dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.org.abrasf.nfse.v204.CancelarNfse wrappedType = new br.org.abrasf.nfse.v204.CancelarNfse();

            br.org.abrasf.nfse.v204.Input wrappedComplexType = new br.org.abrasf.nfse.v204.Input();

            wrappedComplexType.setNfseCabecMsg(param1);

            wrappedComplexType.setNfseDadosMsg(param2);

            wrappedType.setCancelarNfse(wrappedComplexType);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.org.abrasf.nfse.v204.CancelarNfse.MY_QNAME, factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private br.org.abrasf.nfse.v204.Input getCancelarNfse(
        br.org.abrasf.nfse.v204.CancelarNfse wrappedType) {
        return wrappedType.getCancelarNfse();
    }

    private br.org.abrasf.nfse.v204.CancelarNfse wrapCancelarNfse(
        br.org.abrasf.nfse.v204.Input innerType) {
        br.org.abrasf.nfse.v204.CancelarNfse wrappedElement = new br.org.abrasf.nfse.v204.CancelarNfse();
        wrappedElement.setCancelarNfse(innerType);

        return wrappedElement;
    }

    private java.lang.String getCancelarNfseResponseOutputXML(
        br.org.abrasf.nfse.v204.CancelarNfseResponse wrappedType) {
        return wrappedType.getCancelarNfseResponse().getOutputXML();
    }

    private br.org.abrasf.nfse.v204.Output getCancelarNfse(
        br.org.abrasf.nfse.v204.CancelarNfseResponse wrappedType) {
        return wrappedType.getCancelarNfseResponse();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        java.lang.String param2,
        br.org.abrasf.nfse.v204.ConsultarLoteRps dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.org.abrasf.nfse.v204.ConsultarLoteRps wrappedType = new br.org.abrasf.nfse.v204.ConsultarLoteRps();

            br.org.abrasf.nfse.v204.Input wrappedComplexType = new br.org.abrasf.nfse.v204.Input();

            wrappedComplexType.setNfseCabecMsg(param1);

            wrappedComplexType.setNfseDadosMsg(param2);

            wrappedType.setConsultarLoteRps(wrappedComplexType);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.org.abrasf.nfse.v204.ConsultarLoteRps.MY_QNAME, factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private br.org.abrasf.nfse.v204.Input getConsultarLoteRps(
        br.org.abrasf.nfse.v204.ConsultarLoteRps wrappedType) {
        return wrappedType.getConsultarLoteRps();
    }

    private br.org.abrasf.nfse.v204.ConsultarLoteRps wrapConsultarLoteRps(
        br.org.abrasf.nfse.v204.Input innerType) {
        br.org.abrasf.nfse.v204.ConsultarLoteRps wrappedElement = new br.org.abrasf.nfse.v204.ConsultarLoteRps();
        wrappedElement.setConsultarLoteRps(innerType);

        return wrappedElement;
    }

    private java.lang.String getConsultarLoteRpsResponseOutputXML(
        br.org.abrasf.nfse.v204.ConsultarLoteRpsResponse wrappedType) {
        return wrappedType.getConsultarLoteRpsResponse().getOutputXML();
    }

    private br.org.abrasf.nfse.v204.Output getConsultarLoteRps(
        br.org.abrasf.nfse.v204.ConsultarLoteRpsResponse wrappedType) {
        return wrappedType.getConsultarLoteRpsResponse();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        java.lang.String param2, br.org.abrasf.nfse.v204.GerarNfse dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.org.abrasf.nfse.v204.GerarNfse wrappedType = new br.org.abrasf.nfse.v204.GerarNfse();

            br.org.abrasf.nfse.v204.Input wrappedComplexType = new br.org.abrasf.nfse.v204.Input();

            wrappedComplexType.setNfseCabecMsg(param1);

            wrappedComplexType.setNfseDadosMsg(param2);

            wrappedType.setGerarNfse(wrappedComplexType);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.org.abrasf.nfse.v204.GerarNfse.MY_QNAME, factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private br.org.abrasf.nfse.v204.Input getGerarNfse(
        br.org.abrasf.nfse.v204.GerarNfse wrappedType) {
        return wrappedType.getGerarNfse();
    }

    private br.org.abrasf.nfse.v204.GerarNfse wrapGerarNfse(
        br.org.abrasf.nfse.v204.Input innerType) {
        br.org.abrasf.nfse.v204.GerarNfse wrappedElement = new br.org.abrasf.nfse.v204.GerarNfse();
        wrappedElement.setGerarNfse(innerType);

        return wrappedElement;
    }

    private java.lang.String getGerarNfseResponseOutputXML(
        br.org.abrasf.nfse.v204.GerarNfseResponse wrappedType) {
        return wrappedType.getGerarNfseResponse().getOutputXML();
    }

    private br.org.abrasf.nfse.v204.Output getGerarNfse(
        br.org.abrasf.nfse.v204.GerarNfseResponse wrappedType) {
        return wrappedType.getGerarNfseResponse();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        java.lang.String param2,
        br.org.abrasf.nfse.v204.SubstituirNfse dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.org.abrasf.nfse.v204.SubstituirNfse wrappedType = new br.org.abrasf.nfse.v204.SubstituirNfse();

            br.org.abrasf.nfse.v204.Input wrappedComplexType = new br.org.abrasf.nfse.v204.Input();

            wrappedComplexType.setNfseCabecMsg(param1);

            wrappedComplexType.setNfseDadosMsg(param2);

            wrappedType.setSubstituirNfse(wrappedComplexType);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.org.abrasf.nfse.v204.SubstituirNfse.MY_QNAME, factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private br.org.abrasf.nfse.v204.Input getSubstituirNfse(
        br.org.abrasf.nfse.v204.SubstituirNfse wrappedType) {
        return wrappedType.getSubstituirNfse();
    }

    private br.org.abrasf.nfse.v204.SubstituirNfse wrapSubstituirNfse(
        br.org.abrasf.nfse.v204.Input innerType) {
        br.org.abrasf.nfse.v204.SubstituirNfse wrappedElement = new br.org.abrasf.nfse.v204.SubstituirNfse();
        wrappedElement.setSubstituirNfse(innerType);

        return wrappedElement;
    }

    private java.lang.String getSubstituirNfseResponseOutputXML(
        br.org.abrasf.nfse.v204.SubstituirNfseResponse wrappedType) {
        return wrappedType.getSubstituirNfseResponse().getOutputXML();
    }

    private br.org.abrasf.nfse.v204.Output getSubstituirNfse(
        br.org.abrasf.nfse.v204.SubstituirNfseResponse wrappedType) {
        return wrappedType.getSubstituirNfseResponse();
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory, java.lang.String param1,
        java.lang.String param2,
        br.org.abrasf.nfse.v204.ConsultarNfsePorFaixa dummyWrappedType,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        try {
            br.org.abrasf.nfse.v204.ConsultarNfsePorFaixa wrappedType = new br.org.abrasf.nfse.v204.ConsultarNfsePorFaixa();

            br.org.abrasf.nfse.v204.Input wrappedComplexType = new br.org.abrasf.nfse.v204.Input();

            wrappedComplexType.setNfseCabecMsg(param1);

            wrappedComplexType.setNfseDadosMsg(param2);

            wrappedType.setConsultarNfsePorFaixa(wrappedComplexType);

            org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();

            emptyEnvelope.getBody()
                         .addChild(wrappedType.getOMElement(
                    br.org.abrasf.nfse.v204.ConsultarNfsePorFaixa.MY_QNAME, factory));

            return emptyEnvelope;
        } catch (org.apache.axis2.databinding.ADBException e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    /* methods to provide back word compatibility */
    private br.org.abrasf.nfse.v204.Input getConsultarNfsePorFaixa(
        br.org.abrasf.nfse.v204.ConsultarNfsePorFaixa wrappedType) {
        return wrappedType.getConsultarNfsePorFaixa();
    }

    private br.org.abrasf.nfse.v204.ConsultarNfsePorFaixa wrapConsultarNfsePorFaixa(
        br.org.abrasf.nfse.v204.Input innerType) {
        br.org.abrasf.nfse.v204.ConsultarNfsePorFaixa wrappedElement = new br.org.abrasf.nfse.v204.ConsultarNfsePorFaixa();
        wrappedElement.setConsultarNfsePorFaixa(innerType);

        return wrappedElement;
    }

    private java.lang.String getConsultarNfsePorFaixaResponseOutputXML(
        br.org.abrasf.nfse.v204.ConsultarNfsePorFaixaResponse wrappedType) {
        return wrappedType.getConsultarNfsePorFaixaResponse().getOutputXML();
    }

    private br.org.abrasf.nfse.v204.Output getConsultarNfsePorFaixa(
        br.org.abrasf.nfse.v204.ConsultarNfsePorFaixaResponse wrappedType) {
        return wrappedType.getConsultarNfsePorFaixaResponse();
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
    	
    	System.out.println(param);
    	
        try {
            if (br.org.abrasf.nfse.v204.CancelarNfse.class.equals(type)) {
                return br.org.abrasf.nfse.v204.CancelarNfse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.org.abrasf.nfse.v204.CancelarNfseResponse.class.equals(type)) {
                return br.org.abrasf.nfse.v204.CancelarNfseResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.org.abrasf.nfse.v204.ConsultarLoteRps.class.equals(type)) {
                return br.org.abrasf.nfse.v204.ConsultarLoteRps.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.org.abrasf.nfse.v204.ConsultarLoteRpsResponse.class.equals(type)) {
                return br.org.abrasf.nfse.v204.ConsultarLoteRpsResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.org.abrasf.nfse.v204.ConsultarNfsePorFaixa.class.equals(type)) {
                return br.org.abrasf.nfse.v204.ConsultarNfsePorFaixa.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.org.abrasf.nfse.v204.ConsultarNfsePorFaixaResponse.class.equals(
                        type)) {
                return br.org.abrasf.nfse.v204.ConsultarNfsePorFaixaResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.org.abrasf.nfse.v204.ConsultarNfsePorRps.class.equals(type)) {
                return br.org.abrasf.nfse.v204.ConsultarNfsePorRps.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.org.abrasf.nfse.v204.ConsultarNfsePorRpsResponse.class.equals(
                        type)) {
                return br.org.abrasf.nfse.v204.ConsultarNfsePorRpsResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.org.abrasf.nfse.v204.ConsultarNfseServicoPrestado.class.equals(
                        type)) {
                return br.org.abrasf.nfse.v204.ConsultarNfseServicoPrestado.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.org.abrasf.nfse.v204.ConsultarNfseServicoPrestadoResponse.class.equals(
                        type)) {
                return br.org.abrasf.nfse.v204.ConsultarNfseServicoPrestadoResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.org.abrasf.nfse.v204.ConsultarNfseServicoTomado.class.equals(type)) {
                return br.org.abrasf.nfse.v204.ConsultarNfseServicoTomado.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.org.abrasf.nfse.v204.ConsultarNfseServicoTomadoResponse.class.equals(
                        type)) {
                return br.org.abrasf.nfse.v204.ConsultarNfseServicoTomadoResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.org.abrasf.nfse.v204.GerarNfse.class.equals(type)) {
                return br.org.abrasf.nfse.v204.GerarNfse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.org.abrasf.nfse.v204.GerarNfseResponse.class.equals(type)) {
                return br.org.abrasf.nfse.v204.GerarNfseResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.org.abrasf.nfse.v204.RecepcionarLoteRps.class.equals(type)) {
                return br.org.abrasf.nfse.v204.RecepcionarLoteRps.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.org.abrasf.nfse.v204.RecepcionarLoteRpsResponse.class.equals(type)) {
                return br.org.abrasf.nfse.v204.RecepcionarLoteRpsResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.org.abrasf.nfse.v204.RecepcionarLoteRpsSincrono.class.equals(type)) {
                return br.org.abrasf.nfse.v204.RecepcionarLoteRpsSincrono.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.org.abrasf.nfse.v204.RecepcionarLoteRpsSincronoResponse.class.equals(
                        type)) {
                return br.org.abrasf.nfse.v204.RecepcionarLoteRpsSincronoResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.org.abrasf.nfse.v204.SubstituirNfse.class.equals(type)) {
                return br.org.abrasf.nfse.v204.SubstituirNfse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }

            if (br.org.abrasf.nfse.v204.SubstituirNfseResponse.class.equals(type)) {
                return br.org.abrasf.nfse.v204.SubstituirNfseResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
            }
        } catch (java.lang.Exception e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }

        return null;
    }
    
    public static void main (String[] aa) throws XMLStreamException, Exception
    {
    	String xmlString = "<GerarNfseResponse xmlns=\"http://nfse.abrasf.org.br\"><GerarNfseResposta></GerarNfseResposta></GerarNfseResponse>";
//    	String xmlString = "<GerarNfseResponse xmlns=\"http://nfse.abrasf.org.br\"><GerarNfseResposta xmlns=\"http://www.abrasf.org.br/nfse.xsd\"><ListaMensagemRetorno><MensagemRetorno><Codigo>E043</Codigo><Mensagem>Inscrição Municipal do prestador do serviço não encontrada na base de dados do município.(Numero RPS: 1)</Mensagem><Correcao>Não existe registro de inscrição municipal que corresponda ao número informado.</Correcao></MensagemRetorno><MensagemRetorno><Codigo>E053</Codigo><Mensagem>O campo Inscrição Municipal do tomador do serviço só deverá ser preenchido para tomadores estabelecidos neste município.(Numero RPS: 1)</Mensagem><Correcao>Para tomador de serviço estabelecido fora deste município não deve ser preenchido o campo Inscrição municipal.</Correcao></MensagemRetorno><MensagemRetorno><Codigo>E090</Codigo><Mensagem>Número do RPS inválido.(Numero RPS: 1)</Mensagem><Correcao>Informe um número de RPS que corresponda à seqüência utilizada pelo prestador do serviço.</Correcao></MensagemRetorno><MensagemRetorno><Codigo>E093</Codigo><Mensagem>Série do RPS inválida.(Numero RPS: 1)</Mensagem><Correcao>Identifique o RPS utilizando no máximo 5 dígitos.</Correcao></MensagemRetorno><MensagemRetorno><Codigo>E181</Codigo><Mensagem>Telefone do tomador do serviço incorreto(Numero RPS: 1)</Mensagem><Correcao>Utilize um telefone no formato válido.</Correcao></MensagemRetorno><MensagemRetorno><Codigo>E228</Codigo><Mensagem>Para esta prestação de serviços a alíquota do ISSQN é obrigatória.(Numero RPS: 1)</Mensagem><Correcao>Informe um valor percentual da alíquota de ISSQN, que deve ser maior ou igual a 2% e menor ou igual a 5%.</Correcao></MensagemRetorno><MensagemRetorno><Codigo>E340</Codigo><Mensagem>Valor do ISSQN não informado.(Numero RPS: 1)</Mensagem><Correcao>Quando o ISSQN é devido a outro município, o valor do tributo deve ser calculado e informado pelo prestador do serviço.</Correcao></MensagemRetorno><MensagemRetorno><Codigo>E341</Codigo><Mensagem>Alíquota do ISSQN não informado.(Numero RPS: 1)</Mensagem><Correcao>Quando o ISSQN é devido a outro município, alíquota deve ser informada pelo prestador do serviço.</Correcao></MensagemRetorno><MensagemRetorno><Codigo>L001</Codigo><Mensagem>Código CNAE não Informado.(Numero RPS: 1)</Mensagem><Correcao>Informe o código CNAE.</Correcao></MensagemRetorno><MensagemRetorno><Codigo>L003</Codigo><Mensagem>O Código de tributação informado não pertence a este contribuinte.(Numero RPS: 1)</Mensagem><Correcao>Consulte junto a prefeitura de seu município o código vigente.</Correcao></MensagemRetorno></ListaMensagemRetorno></GerarNfseResposta></GerarNfseResponse>";
//    	String xmlString = "<GerarNfseResposta xmlns=\"http://www.abrasf.org.br/nfse.xsd\"><ListaMensagemRetorno><MensagemRetorno><Codigo>E043</Codigo><Mensagem>Inscrição Municipal do prestador do serviço não encontrada na base de dados do município.(Numero RPS: 1)</Mensagem><Correcao>Não existe registro de inscrição municipal que corresponda ao número informado.</Correcao></MensagemRetorno><MensagemRetorno><Codigo>E053</Codigo><Mensagem>O campo Inscrição Municipal do tomador do serviço só deverá ser preenchido para tomadores estabelecidos neste município.(Numero RPS: 1)</Mensagem><Correcao>Para tomador de serviço estabelecido fora deste município não deve ser preenchido o campo Inscrição municipal.</Correcao></MensagemRetorno><MensagemRetorno><Codigo>E090</Codigo><Mensagem>Número do RPS inválido.(Numero RPS: 1)</Mensagem><Correcao>Informe um número de RPS que corresponda à seqüência utilizada pelo prestador do serviço.</Correcao></MensagemRetorno><MensagemRetorno><Codigo>E093</Codigo><Mensagem>Série do RPS inválida.(Numero RPS: 1)</Mensagem><Correcao>Identifique o RPS utilizando no máximo 5 dígitos.</Correcao></MensagemRetorno><MensagemRetorno><Codigo>E181</Codigo><Mensagem>Telefone do tomador do serviço incorreto(Numero RPS: 1)</Mensagem><Correcao>Utilize um telefone no formato válido.</Correcao></MensagemRetorno><MensagemRetorno><Codigo>E228</Codigo><Mensagem>Para esta prestação de serviços a alíquota do ISSQN é obrigatória.(Numero RPS: 1)</Mensagem><Correcao>Informe um valor percentual da alíquota de ISSQN, que deve ser maior ou igual a 2% e menor ou igual a 5%.</Correcao></MensagemRetorno><MensagemRetorno><Codigo>E340</Codigo><Mensagem>Valor do ISSQN não informado.(Numero RPS: 1)</Mensagem><Correcao>Quando o ISSQN é devido a outro município, o valor do tributo deve ser calculado e informado pelo prestador do serviço.</Correcao></MensagemRetorno><MensagemRetorno><Codigo>E341</Codigo><Mensagem>Alíquota do ISSQN não informado.(Numero RPS: 1)</Mensagem><Correcao>Quando o ISSQN é devido a outro município, alíquota deve ser informada pelo prestador do serviço.</Correcao></MensagemRetorno><MensagemRetorno><Codigo>L001</Codigo><Mensagem>Código CNAE não Informado.(Numero RPS: 1)</Mensagem><Correcao>Informe o código CNAE.</Correcao></MensagemRetorno><MensagemRetorno><Codigo>L003</Codigo><Mensagem>O Código de tributação informado não pertence a este contribuinte.(Numero RPS: 1)</Mensagem><Correcao>Consulte junto a prefeitura de seu município o código vigente.</Correcao></MensagemRetorno></ListaMensagemRetorno></GerarNfseResposta>";
    	
    	XMLInputFactory inputFactory = XMLInputFactory.newInstance();

        // Crie a string que deseja converter em um XMLStreamReader
//        String xmlString = "<root><element>Conteúdo</element></root>";

        // Crie um stream de entrada a partir da string
        InputStream inputStream = new ByteArrayInputStream(xmlString.getBytes());
    	
//    	GerarNfseResponse parse = br.org.abrasf.nfse.v204.GerarNfseResponse.Factory.parse( inputFactory.createXMLStreamReader(inputStream) );
//        GerarNfseRespostaDocument parse = GerarNfseRespostaDocument.Factory.parse(xmlString);
    	
//        System.out.println(parse);
        
        GerarNfseResponse eee = new br.org.abrasf.nfse.v204.GerarNfseResponse();
        Output output = new br.org.abrasf.nfse.v204.Output();
//        output.se
        
        eee.setGerarNfseResponse(output);
        System.out.println(eee.getGerarNfseResponse().getOutputXML());
        
        
        
    }
}
