package com.mavenweb;

import org.junit.BeforeClass;
import org.junit.Test;

import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import static org.junit.Assert.assertEquals;

public class LoginFunctionalityIT {

    @BeforeClass
    public static void startServer() throws Exception {
        TestServer.start();
    }

    @Test
    public void validLoginReturnsSuccess() throws Exception {
        URL url = new URL("http://localhost:8080/login");
        HttpURLConnection con = (HttpURLConnection) url.openConnection();
        con.setRequestMethod("POST");
        con.setInstanceFollowRedirects(false);
        con.setDoOutput(true);

        String params = "username=admin&password=admin123";

        OutputStream os = con.getOutputStream();
        os.write(params.getBytes());
        os.flush();
        os.close();

        int status = con.getResponseCode();
        assertEquals(302, status);

        assertEquals("/dashboard", con.getHeaderField("Location"));
    }

    @Test
    public void invalidLoginReturnsError() throws Exception {
        URL url = new URL("http://localhost:9091/login");
        HttpURLConnection con = (HttpURLConnection) url.openConnection();
        con.setRequestMethod("POST");
        con.setInstanceFollowRedirects(false);
        con.setDoOutput(true);

        String params = "username=wrong&password=wrong";

        OutputStream os = con.getOutputStream();
        os.write(params.getBytes());
        os.flush();
        os.close();

        int status = con.getResponseCode();
        assertEquals(302, status);

        assertEquals("/login.jsp?error=true", con.getHeaderField("Location"));
    }
}