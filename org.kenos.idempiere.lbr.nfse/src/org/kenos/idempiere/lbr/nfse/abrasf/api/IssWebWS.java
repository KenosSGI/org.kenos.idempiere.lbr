/**
 * IssWebWS.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.4  Built on : Dec 28, 2015 (10:03:39 GMT)
 */
package org.kenos.idempiere.lbr.nfse.abrasf.api;


/*
 *  IssWebWS java interface
 */
public interface IssWebWS {
    /**
     * Auto generated method signature
     *
     * @param recepcionarLoteRps
     */
    public br.org.abrasf.www.nfse_xsd.EnviarLoteRpsResposta_type0 recepcionarLoteRps(
        br.org.abrasf.www.nfse_xsd.EnviarLoteRpsEnvio_type0 enviarLoteRpsEnvio,
        java.lang.String username, java.lang.String password)
        throws java.rmi.RemoteException;

    /**
     * Auto generated method signature
     *
     * @param consultarNfseServicoTomado
     */
    public br.org.abrasf.www.nfse_xsd.ConsultarNfseServicoTomadoResposta_type0 consultarNfseServicoTomado(
        br.org.abrasf.www.nfse_xsd.ConsultarNfseServicoTomadoEnvio_type0 consultarNfseServicoTomadoEnvio,
        java.lang.String username0, java.lang.String password1)
        throws java.rmi.RemoteException;

    /**
     * Auto generated method signature
     *
     * @param consultarLoteRps
     */
    public br.org.abrasf.www.nfse_xsd.ConsultarLoteRpsResposta_type0 consultarLoteRps(
        br.org.abrasf.www.nfse_xsd.ConsultarLoteRpsEnvio_type0 consultarLoteRpsEnvio,
        java.lang.String username2, java.lang.String password3)
        throws java.rmi.RemoteException;

    /**
     * Auto generated method signature
     *
     * @param consultarNfsePorRps
     */
    public br.org.abrasf.www.nfse_xsd.ConsultarNfseRpsResposta_type0 consultarNfsePorRps(
        br.org.abrasf.www.nfse_xsd.ConsultarNfseRpsEnvio_type0 consultarNfseRpsEnvio,
        java.lang.String username4, java.lang.String password5)
        throws java.rmi.RemoteException;

    /**
     * Auto generated method signature
     *
     * @param recepcionarLoteRpsSincrono
     */
    public br.org.abrasf.www.nfse_xsd.EnviarLoteRpsSincronoResposta_type0 recepcionarLoteRpsSincrono(
        br.org.abrasf.www.nfse_xsd.EnviarLoteRpsSincronoEnvio_type0 enviarLoteRpsSincronoEnvio,
        java.lang.String username6, java.lang.String password7)
        throws java.rmi.RemoteException;

    /**
     * Auto generated method signature
     *
     * @param consultarNfsePorFaixa
     */
    public br.org.abrasf.www.nfse_xsd.ConsultarNfseFaixaResposta_type0 consultarNfsePorFaixa(
        br.org.abrasf.www.nfse_xsd.ConsultarNfseFaixaEnvio_type0 consultarNfseFaixaEnvio,
        java.lang.String username8, java.lang.String password9)
        throws java.rmi.RemoteException;

    /**
     * Auto generated method signature
     *
     * @param consultarNfseServicoPrestado
     */
    public br.org.abrasf.www.nfse_xsd.ConsultarNfseServicoPrestadoResposta_type0 consultarNfseServicoPrestado(
        br.org.abrasf.www.nfse_xsd.ConsultarNfseServicoPrestadoEnvio_type0 consultarNfseServicoPrestadoEnvio,
        java.lang.String username10, java.lang.String password11)
        throws java.rmi.RemoteException;

    /**
     * Auto generated method signature
     *
     * @param substituirNfse
     */
    public br.org.abrasf.www.nfse_xsd.SubstituirNfseResposta_type0 substituirNfse(
        br.org.abrasf.www.nfse_xsd.SubstituirNfseEnvio_type0 substituirNfseEnvio,
        java.lang.String username12, java.lang.String password13)
        throws java.rmi.RemoteException;

    /**
     * Auto generated method signature
     *
     * @param cancelarNfse
     */
    public br.org.abrasf.www.nfse_xsd.CancelarNfseResposta_type0 cancelarNfse(
        br.org.abrasf.www.nfse_xsd.CancelarNfseEnvio_type0 cancelarNfseEnvio,
        java.lang.String username14, java.lang.String password15)
        throws java.rmi.RemoteException;

    /**
     * Auto generated method signature
     *
     * @param gerarNfse
     */
    public br.org.abrasf.www.nfse_xsd.GerarNfseResposta_type0 gerarNfse(
        br.org.abrasf.www.nfse_xsd.GerarNfseEnvio_type0 gerarNfseEnvio,
        java.lang.String username16, java.lang.String password17)
        throws java.rmi.RemoteException;

    //
}
