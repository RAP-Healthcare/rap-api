package com.example.resttemplatedemo.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.http.client.SimpleClientHttpRequestFactory;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.DefaultUriBuilderFactory;
import org.springframework.web.util.UriTemplate;

import javax.net.ssl.*;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URLDecoder;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;

@RestController
public class LoginController {

    protected final Log log = LogFactory.getLog(getClass());

    @RequestMapping(value = "/testLogin", method = RequestMethod.GET)
    public @ResponseBody
    String login() throws IOException {

        String username = "user";
        String password = "john#12";
        String url = null;

        if(password.contains("#")){
            String passwordReplace = password.replace("#", "%23");
            log.info("password : "+passwordReplace);
            url = "http://localhost:8081/server/testLogin?username=" + username + "&password=" + passwordReplace;
        }else{
            url = "http://localhost:8081/server/testLogin?username=" + username + "&password=" + password;
        }
        String response = getRestTemplate().postForObject(url, null, String.class);
        return response;
    }

    protected RestTemplate getRestTemplate() {
        // Create a trust manager that does not validate certificate chains
        TrustManager[] trustAllCerts = new TrustManager[] { new X509TrustManager() {
            public java.security.cert.X509Certificate[] getAcceptedIssuers() {
                return null;
            }

            @Override
            public void checkClientTrusted(java.security.cert.X509Certificate[] arg0, String arg1)
                    throws CertificateException {
            }

            @Override
            public void checkServerTrusted(java.security.cert.X509Certificate[] arg0, String arg1)
                    throws CertificateException {
            }
        } };

        // Install the all-trusting trust manager
        SSLContext sc = null;
        try {
            sc = SSLContext.getInstance("SSL");
        } catch (NoSuchAlgorithmException e1) {
            log.debug("SSL INSTANCE FETCHING FAILED..., " + e1.getMessage());
        }
        try {
            sc.init(null, trustAllCerts, new java.security.SecureRandom());
        } catch (KeyManagementException e) {
            log.debug("SSL CONTEXT INITIALIZING FAILED..., " + e.getMessage());
        }
        HttpsURLConnection.setDefaultSSLSocketFactory(sc.getSocketFactory());

        // Create all-trusting host name verifier
        final HostnameVerifier allHostsValid = new HostnameVerifier() {
            public boolean verify(String hostname, SSLSession session) {
                return true;
            }
        };

        // Install the all-trusting host verifier
        HttpsURLConnection.setDefaultHostnameVerifier(allHostsValid);
        DefaultUriBuilderFactory defaultUriBuilderFactory = new DefaultUriBuilderFactory();
        defaultUriBuilderFactory.setEncodingMode(DefaultUriBuilderFactory.EncodingMode.NONE);
        RestTemplate restTemplate = new RestTemplate(new SimpleClientHttpRequestFactory() {
            @Override
            protected void prepareConnection(HttpURLConnection connection, String httpMethod) throws IOException {
                if (connection instanceof HttpsURLConnection) {
                    ((HttpsURLConnection) connection).setHostnameVerifier(allHostsValid);
                }
                super.prepareConnection(connection, httpMethod);
            }
        });
        restTemplate.setUriTemplateHandler(defaultUriBuilderFactory);

        return restTemplate;
    }


}
