
/**
 * WSEntradaServiceCallbackHandler.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:33:49 IST)
 */

    package com.sil.webservices;

    /**
     *  WSEntradaServiceCallbackHandler Callback class, Users can extend this class and implement
     *  their own receiveResult and receiveError methods.
     */
    public abstract class WSEntradaServiceCallbackHandler{



    protected Object clientData;

    /**
    * User can pass in any object that needs to be accessed once the NonBlocking
    * Web service call is finished and appropriate method of this CallBack is called.
    * @param clientData Object mechanism by which the user can pass in user data
    * that will be avilable at the time this callback is called.
    */
    public WSEntradaServiceCallbackHandler(Object clientData){
        this.clientData = clientData;
    }

    /**
    * Please use this constructor if you don't want to set any clientData
    */
    public WSEntradaServiceCallbackHandler(){
        this.clientData = null;
    }

    /**
     * Get the client data
     */

     public Object getClientData() {
        return clientData;
     }

        
           /**
            * auto generated Axis2 call back method for nfdEntrada method
            * override this method for handling normal response from nfdEntrada operation
            */
           public void receiveResultnfdEntrada(
                    com.sil.webservices.WSEntradaServiceStub.NfdEntradaResponseE result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from nfdEntrada operation
           */
            public void receiveErrornfdEntrada(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for nfdEntradaCancelar method
            * override this method for handling normal response from nfdEntradaCancelar operation
            */
           public void receiveResultnfdEntradaCancelar(
                    com.sil.webservices.WSEntradaServiceStub.NfdEntradaCancelarResponseE result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from nfdEntradaCancelar operation
           */
            public void receiveErrornfdEntradaCancelar(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for consultarAtividades method
            * override this method for handling normal response from consultarAtividades operation
            */
           public void receiveResultconsultarAtividades(
                    com.sil.webservices.WSEntradaServiceStub.ConsultarAtividadesResponseE result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from consultarAtividades operation
           */
            public void receiveErrorconsultarAtividades(java.lang.Exception e) {
            }
                


    }
    