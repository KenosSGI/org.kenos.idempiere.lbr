/**
 * NfseWebServiceService.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.4  Built on : Dec 28, 2015 (10:03:39 GMT)
 */
package br.gov.sp.indaiatuba.nfse;


/*
 *  NfseWebServiceService java interface
 */
public interface NfseWebServiceService {
    /**
     * Auto generated method signature
     *
     * @param substituirNfseRequest
     */
    public java.lang.String substituirNfse(java.lang.String nfseCabecMsg,
        java.lang.String nfseDadosMsg) throws java.rmi.RemoteException;

    /**
     * Auto generated method signature
     *
     * @param gerarNfseRequest
     */
    public java.lang.String gerarNfse(java.lang.String nfseCabecMsg0,
        java.lang.String nfseDadosMsg1) throws java.rmi.RemoteException;

    /**
     * Auto generated method signature
     *
     * @param consultarNfsePorFaixaRequest
     */
    public java.lang.String consultarNfsePorFaixa(
        java.lang.String nfseCabecMsg3, java.lang.String nfseDadosMsg4)
        throws java.rmi.RemoteException;

    /**
     * Auto generated method signature
     *
     * @param cancelarNfseRequest
     */
    public java.lang.String cancelarNfse(java.lang.String nfseCabecMsg6,
        java.lang.String nfseDadosMsg7) throws java.rmi.RemoteException;

    /**
     * Auto generated method signature
     *
     * @param consultarLoteRpsRequest
     */
    public java.lang.String consultarLoteRps(java.lang.String nfseCabecMsg9,
        java.lang.String nfseDadosMsg10) throws java.rmi.RemoteException;

    /**
     * Auto generated method signature
     *
     * @param consultarNfseServicoPrestadoRequest
     */
    public java.lang.String consultarNfseServicoPrestado(
        java.lang.String nfseCabecMsg12, java.lang.String nfseDadosMsg13)
        throws java.rmi.RemoteException;

    /**
     * Auto generated method signature
     *
     * @param consultarNfsePorRpsRequest
     */
    public java.lang.String consultarNfsePorRps(
        java.lang.String nfseCabecMsg15, java.lang.String nfseDadosMsg16)
        throws java.rmi.RemoteException;

    /**
     * Auto generated method signature
     *
     * @param consultarNfseServicoTomadoRequest
     */
    public java.lang.String consultarNfseServicoTomado(
        java.lang.String nfseCabecMsg18, java.lang.String nfseDadosMsg19)
        throws java.rmi.RemoteException;

    /**
     * Auto generated method signature
     *
     * @param recepcionarLoteRpsRequest
     */
    public java.lang.String recepcionarLoteRps(
        java.lang.String nfseCabecMsg21, java.lang.String nfseDadosMsg22)
        throws java.rmi.RemoteException;

    /**
     * Auto generated method signature
     *
     * @param recepcionarLoteRpsSincronoRequest
     */
    public java.lang.String recepcionarLoteRpsSincrono(
        java.lang.String nfseCabecMsg24, java.lang.String nfseDadosMsg25)
        throws java.rmi.RemoteException;

    //
}
