/*
 * SSL - Suporte a Socket Dinâmico
 * 
 * Obtido em http://goo.gl/kkeli
 * 
 * @author Maciel Gonçalves ( http://www.javac.com.br/jc/user/profile/3.page )
 * 
 * @contributor Claudemir Todo Bom ( http://todobom.com )
 *     -- utilização de InputStream
 *     
 * @contributor Ricardo Santana (Kenos, www.kenos.com.br)
 * 		-- Modificado o package e log para o padrão do Adempiere
 *     
 * Original sem licença específica, obtida permissão por
 * e-mail do autor para republicação.
 */
package org.adempierelbr.util;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.UnknownHostException;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.Principal;
import java.security.PrivateKey;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;

import javax.net.SocketFactory;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509KeyManager;

import org.apache.commons.httpclient.ConnectTimeoutException;
import org.apache.commons.httpclient.params.HttpConnectionParams;
import org.apache.commons.httpclient.protocol.ProtocolSocketFactory;
import org.compiere.util.CLogger;

public class SocketFactoryDinamico implements ProtocolSocketFactory {
	
	/**	Logger						*/
	private static CLogger log = CLogger.getCLogger (SocketFactoryDinamico.class);
	
	private SSLContext ssl = null;
	private X509Certificate certificate;
	private PrivateKey privateKey;
	private String passwdCacerts;
	private InputStream inputStreamCacerts;

	public SocketFactoryDinamico(X509Certificate certificate,
			PrivateKey privateKey) {
		this.certificate = certificate;
		this.privateKey = privateKey;
	}

	private SSLContext createSSLContext() {
		try {
			KeyManager[] keyManagers = createKeyManagers();
			TrustManager[] trustManagers = createTrustManagers();
			SSLContext sslContext = SSLContext.getInstance("TLSv1.2");
			sslContext.init(keyManagers, trustManagers, null);

			return sslContext;
		} catch (KeyManagementException e) {
			error(e.toString());
		} catch (KeyStoreException e) {
			error(e.toString());
		} catch (NoSuchAlgorithmException e) {
			error(e.toString());
		} catch (CertificateException e) {
			error(e.toString());
		} catch (IOException e) {
			error(e.toString());
		}
		return null;
	}

	private SSLContext getSSLContext() throws SSLException {
		if (ssl == null) {
			ssl = createSSLContext();
		}
		if (ssl == null) {
			throw new SSLException ("Could not create SSL context");
		}
		return ssl;
	}

	public Socket createSocket(String host, int port, InetAddress localAddress,
			int localPort, HttpConnectionParams params) throws IOException,
			UnknownHostException, ConnectTimeoutException {
		if (params == null) {
			throw new IllegalArgumentException("Parameters may not be null");
		}
		int timeout = params.getConnectionTimeout();
		SocketFactory socketfactory = getSSLContext().getSocketFactory();
		if (timeout == 0) {
			return socketfactory.createSocket(host, port, localAddress,
					localPort);
		}

		Socket socket = socketfactory.createSocket();
		((SSLSocket) socket).setEnabledProtocols(new String[]{"TLSv1", "TLSv1.1", "TLSv1.2"});
		SocketAddress localaddr = new InetSocketAddress(localAddress, localPort);
		SocketAddress remoteaddr = new InetSocketAddress(host, port);
		socket.bind(localaddr);
		try {
			socket.connect(remoteaddr, timeout);
		} catch (Exception e) {
			error(e.toString());
			throw new ConnectTimeoutException("Possível timeout de conexão", e);
		}

		return socket;
	}

	public Socket createSocket(String host, int port, InetAddress clientHost,
			int clientPort) throws IOException, UnknownHostException {
		return getSSLContext().getSocketFactory().createSocket(host, port,
				clientHost, clientPort);
	}

	public Socket createSocket(String host, int port) throws IOException,
			UnknownHostException {
		return getSSLContext().getSocketFactory().createSocket(host, port);
	}

	public Socket createSocket(Socket socket, String host, int port,
			boolean autoClose) throws IOException, UnknownHostException {
		return getSSLContext().getSocketFactory().createSocket(socket, host,
				port, autoClose);
	}

	public KeyManager[] createKeyManagers() {
		HSKeyManager keyManager = new HSKeyManager(certificate, privateKey);

		return new KeyManager[] { keyManager };
	}

	public TrustManager[] createTrustManagers() throws KeyStoreException,
			NoSuchAlgorithmException, CertificateException, IOException {
		KeyStore trustStore = KeyStore.getInstance("JKS");

		if ( passwdCacerts==null || passwdCacerts.isEmpty() ) {
			trustStore.load(inputStreamCacerts, null);
		} else {
			trustStore.load(inputStreamCacerts, passwdCacerts.toCharArray());
		}
		TrustManagerFactory trustManagerFactory = TrustManagerFactory
				.getInstance(TrustManagerFactory.getDefaultAlgorithm());
		trustManagerFactory.init(trustStore);
		return trustManagerFactory.getTrustManagers();
	}

	class HSKeyManager implements X509KeyManager {

		private X509Certificate certificate;
		private PrivateKey privateKey;

		public HSKeyManager(X509Certificate certificate, PrivateKey privateKey) {
			this.certificate = certificate;
			this.privateKey = privateKey;
		}

		public String chooseClientAlias(String[] arg0, Principal[] arg1,
				Socket arg2) {
			return certificate.getIssuerDN().getName();
		}

		public String chooseServerAlias(String arg0, Principal[] arg1,
				Socket arg2) {
			return null;
		}

		public X509Certificate[] getCertificateChain(String arg0) {
			return new X509Certificate[] { certificate };
		}

		public String[] getClientAliases(String arg0, Principal[] arg1) {
			return new String[] { certificate.getIssuerDN().getName() };
		}

		public PrivateKey getPrivateKey(String arg0) {
			return privateKey;
		}

		public String[] getServerAliases(String arg0, Principal[] arg1) {
			return null;
		}
	}

	public void setFileCacerts(InputStream inputStreamCacerts, String passwdCacerts) {
		this.inputStreamCacerts = inputStreamCacerts;
		if (passwdCacerts == null) {
			this.passwdCacerts = "";
		} else {
			this.passwdCacerts = passwdCacerts;
		}
	}

	/**
	 * Log Error.
	 * @param log
	 */
	private static void error(String error) {
		log.severe(error);
	}

	public void setFileCacerts(String fileCacerts, String passwdCacerts) {
		try {
			setFileCacerts(new FileInputStream(fileCacerts),passwdCacerts);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}		
	}
}	//	SocketFactoryDinamico
