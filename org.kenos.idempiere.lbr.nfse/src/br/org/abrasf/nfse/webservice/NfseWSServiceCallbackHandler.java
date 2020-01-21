/**
 * NfseWSServiceCallbackHandler.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.7.9  Built on : Nov 16, 2018 (12:05:37 GMT)
 */
package br.org.abrasf.nfse.webservice;


/**
 *  NfseWSServiceCallbackHandler Callback class, Users can extend this class and implement
 *  their own receiveResult and receiveError methods.
 */
public abstract class NfseWSServiceCallbackHandler {
    protected Object clientData;

    /**
     * User can pass in any object that needs to be accessed once the NonBlocking
     * Web service call is finished and appropriate method of this CallBack is called.
     * @param clientData Object mechanism by which the user can pass in user data
     * that will be avilable at the time this callback is called.
     */
    public NfseWSServiceCallbackHandler(Object clientData) {
        this.clientData = clientData;
    }

    /**
     * Please use this constructor if you don't want to set any clientData
     */
    public NfseWSServiceCallbackHandler() {
        this.clientData = null;
    }

    /**
     * Get the client data
     */
    public Object getClientData() {
        return clientData;
    }

    /**
     * auto generated Axis2 call back method for consultarNfseServicoTomado method
     * override this method for handling normal response from consultarNfseServicoTomado operation
     */
    public void receiveResultconsultarNfseServicoTomado(
        br.org.abrasf.nfse.webservice.NfseWSServiceStub.ConsultarNfseServicoTomadoResponse result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from consultarNfseServicoTomado operation
     */
    public void receiveErrorconsultarNfseServicoTomado(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for consultarNfsePorRps method
     * override this method for handling normal response from consultarNfsePorRps operation
     */
    public void receiveResultconsultarNfsePorRps(
        br.org.abrasf.nfse.webservice.NfseWSServiceStub.ConsultarNfsePorRpsResponse result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from consultarNfsePorRps operation
     */
    public void receiveErrorconsultarNfsePorRps(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for recepcionarLoteRps method
     * override this method for handling normal response from recepcionarLoteRps operation
     */
    public void receiveResultrecepcionarLoteRps(
        br.org.abrasf.nfse.webservice.NfseWSServiceStub.RecepcionarLoteRpsResponse result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from recepcionarLoteRps operation
     */
    public void receiveErrorrecepcionarLoteRps(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for recepcionarLoteRpsSincrono method
     * override this method for handling normal response from recepcionarLoteRpsSincrono operation
     */
    public void receiveResultrecepcionarLoteRpsSincrono(
        br.org.abrasf.nfse.webservice.NfseWSServiceStub.RecepcionarLoteRpsSincronoResponse result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from recepcionarLoteRpsSincrono operation
     */
    public void receiveErrorrecepcionarLoteRpsSincrono(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for consultarNfseServicoPrestado method
     * override this method for handling normal response from consultarNfseServicoPrestado operation
     */
    public void receiveResultconsultarNfseServicoPrestado(
        br.org.abrasf.nfse.webservice.NfseWSServiceStub.ConsultarNfseServicoPrestadoResponse result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from consultarNfseServicoPrestado operation
     */
    public void receiveErrorconsultarNfseServicoPrestado(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for cancelarNfse method
     * override this method for handling normal response from cancelarNfse operation
     */
    public void receiveResultcancelarNfse(
        br.org.abrasf.nfse.webservice.NfseWSServiceStub.CancelarNfseResponse result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from cancelarNfse operation
     */
    public void receiveErrorcancelarNfse(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for consultarLoteRps method
     * override this method for handling normal response from consultarLoteRps operation
     */
    public void receiveResultconsultarLoteRps(
        br.org.abrasf.nfse.webservice.NfseWSServiceStub.ConsultarLoteRpsResponse result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from consultarLoteRps operation
     */
    public void receiveErrorconsultarLoteRps(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for gerarNfse method
     * override this method for handling normal response from gerarNfse operation
     */
    public void receiveResultgerarNfse(
        br.org.abrasf.nfse.webservice.NfseWSServiceStub.GerarNfseResponse result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from gerarNfse operation
     */
    public void receiveErrorgerarNfse(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for substituirNfse method
     * override this method for handling normal response from substituirNfse operation
     */
    public void receiveResultsubstituirNfse(
        br.org.abrasf.nfse.webservice.NfseWSServiceStub.SubstituirNfseResponse result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from substituirNfse operation
     */
    public void receiveErrorsubstituirNfse(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for consultarNfsePorFaixa method
     * override this method for handling normal response from consultarNfsePorFaixa operation
     */
    public void receiveResultconsultarNfsePorFaixa(
        br.org.abrasf.nfse.webservice.NfseWSServiceStub.ConsultarNfsePorFaixaResponse result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from consultarNfsePorFaixa operation
     */
    public void receiveErrorconsultarNfsePorFaixa(java.lang.Exception e) {
    }
}
