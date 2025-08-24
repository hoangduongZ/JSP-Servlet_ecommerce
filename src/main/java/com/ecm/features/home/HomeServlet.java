package com.ecm.features.home;

import org.apache.jasper.compiler.JspUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "HomeServlet", urlPatterns = {"/"})
public class HomeServlet extends javax.servlet.http.HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String requestURI = req.getRequestURI();
        String contextPath = req.getContextPath();

        if (requestURI.equals(contextPath + "/")) {
            resp.sendRedirect(contextPath + "/home");
            return;
        }

        resp.sendError(HttpServletResponse.SC_NOT_FOUND);
    }

}
