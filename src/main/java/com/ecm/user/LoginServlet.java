package com.ecm.user;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws javax.servlet.ServletException, java.io.IOException {
        resp.setContentType("text/html; charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        RequestDispatcher dispatcher = req.getRequestDispatcher("/views/auth/login.jsp");
        dispatcher.forward(req, resp);
    }
}
