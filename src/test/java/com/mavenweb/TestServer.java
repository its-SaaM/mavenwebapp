package com.mavenweb;

import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.ee10.webapp.WebAppContext;

public class TestServer {

    private static Server server;

    public static void start() throws Exception {

        if (server != null && server.isStarted()) {
            return;
        }

        // Jetty server on port 8081 (avoid conflict with Tomcat)
        server = new Server(8081);

        WebAppContext context = new WebAppContext();
        context.setContextPath("/");

        // Add your servlet
        context.addServlet(LoginServlet.class, "/login");

        server.setHandler(context);
        server.start();
    }

    public static void stop() throws Exception {
        if (server != null) {
            server.stop();
        }
    }
}