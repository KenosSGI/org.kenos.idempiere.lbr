

/**
 * CalcPrecoPrazoWS.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:33:49 IST)
 */

    package org.kenos.idempiere.lbr.correios.api;

    /*
     *  CalcPrecoPrazoWS java interface
     */

    public interface CalcPrecoPrazoWS {
          

        /**
          * Auto generated method signature
          * Calcula o preço e o prazo com uma data especificada
                    * @param calcPrecoPrazoData
                
         */

         
                     public org.tempuri.CResultado calcPrecoPrazoData(

                        java.lang.String nCdEmpresa,java.lang.String sDsSenha,java.lang.String nCdServico,java.lang.String sCepOrigem,java.lang.String sCepDestino,java.lang.String nVlPeso,int nCdFormato,java.math.BigDecimal nVlComprimento,java.math.BigDecimal nVlAltura,java.math.BigDecimal nVlLargura,java.math.BigDecimal nVlDiametro,java.lang.String sCdMaoPropria,java.math.BigDecimal nVlValorDeclarado,java.lang.String sCdAvisoRecebimento,java.lang.String sDtCalculo)
                        throws java.rmi.RemoteException
             ;

        

        /**
          * Auto generated method signature
          * Calcula o preço e o prazo considerando as restrições de entrega
                    * @param calcPrecoPrazoRestricao
                
         */

         
                     public org.tempuri.CResultado calcPrecoPrazoRestricao(

                        java.lang.String nCdEmpresa0,java.lang.String sDsSenha1,java.lang.String nCdServico2,java.lang.String sCepOrigem3,java.lang.String sCepDestino4,java.lang.String nVlPeso5,int nCdFormato6,java.math.BigDecimal nVlComprimento7,java.math.BigDecimal nVlAltura8,java.math.BigDecimal nVlLargura9,java.math.BigDecimal nVlDiametro10,java.lang.String sCdMaoPropria11,java.math.BigDecimal nVlValorDeclarado12,java.lang.String sCdAvisoRecebimento13,java.lang.String sDtCalculo14)
                        throws java.rmi.RemoteException
             ;

        

        /**
          * Auto generated method signature
          * Calcula o prazo considerando restrição de entrega
                    * @param calcPrazoRestricao
                
         */

         
                     public org.tempuri.CResultado calcPrazoRestricao(

                        java.lang.String nCdServico15,java.lang.String sCepOrigem16,java.lang.String sCepDestino17,java.lang.String sDtCalculo18)
                        throws java.rmi.RemoteException
             ;

        

        /**
          * Auto generated method signature
          * Calcula os preços dos serviços FAC
                    * @param calcPrecoFAC
                
         */

         
                     public org.tempuri.CResultado calcPrecoFAC(

                        java.lang.String nCdServico19,java.lang.String nVlPeso20,java.lang.String strDataCalculo)
                        throws java.rmi.RemoteException
             ;

        

        /**
          * Auto generated method signature
          * Calcula somente o preço com a data atual
                    * @param calcPreco
                
         */

         
                     public org.tempuri.CResultado calcPreco(

                        java.lang.String nCdEmpresa21,java.lang.String sDsSenha22,java.lang.String nCdServico23,java.lang.String sCepOrigem24,java.lang.String sCepDestino25,java.lang.String nVlPeso26,int nCdFormato27,java.math.BigDecimal nVlComprimento28,java.math.BigDecimal nVlAltura29,java.math.BigDecimal nVlLargura30,java.math.BigDecimal nVlDiametro31,java.lang.String sCdMaoPropria32,java.math.BigDecimal nVlValorDeclarado33,java.lang.String sCdAvisoRecebimento34)
                        throws java.rmi.RemoteException
             ;

        

        /**
          * Auto generated method signature
          * Calcula somente o preço com uma data especificada
                    * @param calcPrecoData
                
         */

         
                     public org.tempuri.CResultado calcPrecoData(

                        java.lang.String nCdEmpresa35,java.lang.String sDsSenha36,java.lang.String nCdServico37,java.lang.String sCepOrigem38,java.lang.String sCepDestino39,java.lang.String nVlPeso40,int nCdFormato41,java.math.BigDecimal nVlComprimento42,java.math.BigDecimal nVlAltura43,java.math.BigDecimal nVlLargura44,java.math.BigDecimal nVlDiametro45,java.lang.String sCdMaoPropria46,java.math.BigDecimal nVlValorDeclarado47,java.lang.String sCdAvisoRecebimento48,java.lang.String sDtCalculo49)
                        throws java.rmi.RemoteException
             ;

        

        /**
          * Auto generated method signature
          * Calcula somente o prazo com a data atual
                    * @param calcPrazo
                
         */

         
                     public org.tempuri.CResultado calcPrazo(

                        java.lang.String nCdServico50,java.lang.String sCepOrigem51,java.lang.String sCepDestino52)
                        throws java.rmi.RemoteException
             ;

        

        /**
          * Auto generated method signature
          * Calcula somente o prazo com uma data especificada
                    * @param calcPrazoData
                
         */

         
                     public org.tempuri.CResultado calcPrazoData(

                        java.lang.String nCdServico53,java.lang.String sCepOrigem54,java.lang.String sCepDestino55,java.lang.String sDtCalculo56)
                        throws java.rmi.RemoteException
             ;

        

        /**
          * Auto generated method signature
          * Lista os serviços que estão disponíveis para cálculo de preço e/ou prazo
                    * @param listaServicos
                
         */

         
                     public org.tempuri.CResultadoServicos listaServicos(

                        )
                        throws java.rmi.RemoteException
             ;

        

        /**
          * Auto generated method signature
          * Calcula a data máxima de entrega de determinado objeto
                    * @param calcPrazoObjeto
                
         */

         
                     public org.tempuri.CResultadoObjeto calcPrazoObjeto(

                        java.lang.String codigoObjeto)
                        throws java.rmi.RemoteException
             ;

        

        /**
          * Auto generated method signature
          * Calcula o preço e o prazo com a data atual
                    * @param calcPrecoPrazo
                
         */

         
                     public org.tempuri.CResultado calcPrecoPrazo(

                        java.lang.String nCdEmpresa57,java.lang.String sDsSenha58,java.lang.String nCdServico59,java.lang.String sCepOrigem60,java.lang.String sCepDestino61,java.lang.String nVlPeso62,int nCdFormato63,java.math.BigDecimal nVlComprimento64,java.math.BigDecimal nVlAltura65,java.math.BigDecimal nVlLargura66,java.math.BigDecimal nVlDiametro67,java.lang.String sCdMaoPropria68,java.math.BigDecimal nVlValorDeclarado69,java.lang.String sCdAvisoRecebimento70)
                        throws java.rmi.RemoteException
             ;

        

        
       //
       }
    