package com.mavenweb;

import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.ee10.servlet.ServletContextHandler;
import org.eclipse.jetty.ee10.servlet.ServletHolder;

public class TestServer {

    private static Server server;

    public static void start() throws Exception {

        if (server != null && server.isStarted()) {
            return;
        }

        server = new Server(9091);

        ServletContextHandler context = new ServletContextHandler();
        context.setContextPath("/");

        // Register your LoginServlet
        context.addServlet(new ServletHolder(new LoginServlet()), "/login");

        server.setHandler(context);

        server.start();
    }

    public static void stop() throws Exception {
        if (server != null) {
            server.stop();
        }
    }
}