package com.ecm;

import com.ecm.common.DBUtil;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/first-servlet")
public class FirstServlet extends HttpServlet {
    public FirstServlet() {
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            System.out.println("=== FirstServlet doGet running ===");
            if (DBUtil.getInstance().getConnection() != null){
                System.out.println("connection success!");
            }
        } catch (SQLException e) {
            System.err.println("connection failed");
        }
//        req.setAttribute("message", "Hello from Servlet!");
//        req.getRequestDispatcher("/views/index_v2.jsp").forward(req, resp);
        resp.getWriter().println("<div>");
        resp.getWriter().println("Hello");
        resp.getWriter().println("</div>");
    }
}
