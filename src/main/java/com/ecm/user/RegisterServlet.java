package com.ecm.user;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends javax.servlet.http.HttpServlet {

     @Override
     protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         resp.setContentType("text/html; charset=UTF-8");
         resp.setCharacterEncoding("UTF-8");
         RequestDispatcher dispatcher = req.getRequestDispatcher("/views/auth/register.jsp");
         dispatcher.forward(req, resp);
     }
}