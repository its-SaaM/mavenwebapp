package com.mavenweb;

import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.servlet.ServletContextHandler;
import org.eclipse.jetty.servlet.ServletHolder;

public class TestServer {

    private static Server server;

    public static void start() throws Exception {
        if (server != null && server.isStarted()) return;

        server = new Server(8080);

        ServletContextHandler context = new ServletContextHandler(ServletContextHandler.SESSIONS);
        context.setContextPath("/");

        // IMPORTANT: Jetty requires servlet CLASS (not object)
        context.addServlet(new ServletHolder(LoginServlet.class), "/login");

        server.setHandler(context);
        server.start();
    }

    public static void stop() throws Exception {
        if (server != null) server.stop();
    }
}