/**
 * NfseWSService.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.4  Built on : Dec 28, 2015 (10:03:39 GMT)
 */
package br.org.abrasf.nfse.v204.api;


/*
 *  NfseWSService java interface
 */
public interface NfseWSService {
    /**
     * Auto generated method signature
     *
     * @param consultarNfseServicoTomado
     */
    public java.lang.String consultarNfseServicoTomado(
        java.lang.String nfseCabecMsg, java.lang.String nfseDadosMsg)
        throws java.rmi.RemoteException;

    /**
     * Auto generated method signature
     *
     * @param consultarNfsePorRps
     */
    public java.lang.String consultarNfsePorRps(
        java.lang.String nfseCabecMsg0, java.lang.String nfseDadosMsg1)
        throws java.rmi.RemoteException;

    /**
     * Auto generated method signature
     *
     * @param recepcionarLoteRps
     */
    public java.lang.String recepcionarLoteRps(java.lang.String nfseCabecMsg3,
        java.lang.String nfseDadosMsg4) throws java.rmi.RemoteException;

    /**
     * Auto generated method signature
     *
     * @param recepcionarLoteRpsSincrono
     */
    public java.lang.String recepcionarLoteRpsSincrono(
        java.lang.String nfseCabecMsg6, java.lang.String nfseDadosMsg7)
        throws java.rmi.RemoteException;

    /**
     * Auto generated method signature
     *
     * @param consultarNfseServicoPrestado
     */
    public java.lang.String consultarNfseServicoPrestado(
        java.lang.String nfseCabecMsg9, java.lang.String nfseDadosMsg10)
        throws java.rmi.RemoteException;

    /**
     * Auto generated method signature
     *
     * @param cancelarNfse
     */
    public java.lang.String cancelarNfse(java.lang.String nfseCabecMsg12,
        java.lang.String nfseDadosMsg13) throws java.rmi.RemoteException;

    /**
     * Auto generated method signature
     *
     * @param consultarLoteRps
     */
    public java.lang.String consultarLoteRps(java.lang.String nfseCabecMsg15,
        java.lang.String nfseDadosMsg16) throws java.rmi.RemoteException;

    /**
     * Auto generated method signature
     *
     * @param gerarNfse
     */
    public java.lang.String gerarNfse(java.lang.String nfseCabecMsg18,
        java.lang.String nfseDadosMsg19) throws java.rmi.RemoteException;

    /**
     * Auto generated method signature
     *
     * @param substituirNfse
     */
    public java.lang.String substituirNfse(java.lang.String nfseCabecMsg21,
        java.lang.String nfseDadosMsg22) throws java.rmi.RemoteException;

    /**
     * Auto generated method signature
     *
     * @param consultarNfsePorFaixa
     */
    public java.lang.String consultarNfsePorFaixa(
        java.lang.String nfseCabecMsg24, java.lang.String nfseDadosMsg25)
        throws java.rmi.RemoteException;

    //
}
