package com.ecm.customer;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ServletException;
import java.io.IOException;
import javax.servlet.RequestDispatcher;

@WebServlet("/users")
public class UserServlet extends HttpServlet {
    private static final Logger logger = LoggerFactory.getLogger(UserServlet.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html; charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        RequestDispatcher dispatcher = req.getRequestDispatcher("/views/client/user.jsp");
        dispatcher.forward(req, resp);
    }
}
