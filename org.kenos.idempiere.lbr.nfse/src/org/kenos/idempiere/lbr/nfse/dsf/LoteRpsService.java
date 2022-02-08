/**
 * LoteRpsService.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.4  Built on : Dec 28, 2015 (10:03:39 GMT)
 */
package org.kenos.idempiere.lbr.nfse.dsf;


/*
 *  LoteRpsService java interface
 */
public interface LoteRpsService {
    /**
     * Auto generated method signature
     *
     * @param consultarLote
     */
    public java.lang.String consultarLote(java.lang.String mensagemXml)
        throws java.rmi.RemoteException;

    /**
     * Auto generated method signature
     *
     * @param consultarNFSeRps
     */
    public java.lang.String consultarNFSeRps(java.lang.String mensagemXml0)
        throws java.rmi.RemoteException;

    /**
     * Auto generated method signature
     *
     * @param consultarNota
     */
    public java.lang.String consultarNota(java.lang.String mensagemXml1)
        throws java.rmi.RemoteException;

    /**
     * Auto generated method signature
     *
     * @param enviar
     */
    public java.lang.String enviar(java.lang.String mensagemXml2)
        throws java.rmi.RemoteException;

    /**
     * Auto generated method signature
     *
     * @param cancelar
     */
    public java.lang.String cancelar(java.lang.String mensagemXml3)
        throws java.rmi.RemoteException;

    /**
     * Auto generated method signature
     *
     * @param consultarSequencialRps
     */
    public java.lang.String consultarSequencialRps(
        java.lang.String mensagemXml4) throws java.rmi.RemoteException;

    /**
     * Auto generated method signature
     *
     * @param enviarSincrono
     */
    public java.lang.String enviarSincrono(java.lang.String mensagemXml5)
        throws java.rmi.RemoteException;

    //
}
