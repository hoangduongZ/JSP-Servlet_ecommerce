package com.ecm.common;

import javax.servlet.ServletContext;
import javax.servlet.ServletRegistration;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Map;

@WebServlet("/list")
public class ListServletMappings extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        ServletContext context = getServletContext();
        Map<String, ? extends ServletRegistration> servletRegistrations = context.getServletRegistrations();

        resp.setContentType("text/plain");
        for (Map.Entry<String, ? extends ServletRegistration> entry : servletRegistrations.entrySet()) {
            ServletRegistration registration = entry.getValue();
            resp.getWriter().println("Servlet Name: " + registration.getName());
            for (String mapping : registration.getMappings()) {
                resp.getWriter().println("  -> Mapping: " + mapping);
            }
        }
    }
}
