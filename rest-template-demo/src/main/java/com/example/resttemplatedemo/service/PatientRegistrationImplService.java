package com.example.resttemplatedemo.service;

import com.example.resttemplatedemo.dto.medical.PatientRegistrationDto;
import com.example.resttemplatedemo.dto.medical.ResponseDto;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.http.client.SimpleClientHttpRequestFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.DefaultUriBuilderFactory;

import javax.net.ssl.*;
import javax.xml.ws.Response;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;

@Service
public class PatientRegistrationImplService {

    protected final Log log = LogFactory.getLog(getClass());

    public ResponseDto patientRegister(PatientRegistrationDto patientRegistrationDto){
        ResponseDto response = new ResponseDto();
        String url = "http://10.10.105.225:9998/rap/patient/registration";
        response = getRestTemplate().postForObject(url, patientRegistrationDto,ResponseDto.class);
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
