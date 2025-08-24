package com.ecm.features.user;

import com.ecm.session_based.RedisConnectionManager;
import com.ecm.session_based.SessionManager;
import redis.clients.jedis.JedisPool;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private SessionManager sessionManager;

    @Override
    public void init() {
        sessionManager = new SessionManager(RedisConnectionManager.getPool());
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws javax.servlet.ServletException, java.io.IOException {
        resp.setContentType("text/html; charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        RequestDispatcher dispatcher = req.getRequestDispatcher("/views/auth/login.jsp");
        dispatcher.forward(req, resp);
    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html; charset=UTF-8");

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        if ("test@gmail.com".equals(email) && "123456".equals(password)) {
            String sessionId = sessionManager.createSession("user123");

            Cookie cookie = new Cookie("SESSION_ID", sessionId);
            cookie.setHttpOnly(true);
            cookie.setSecure(false); // Đặt true nếu sử dụng HTTPS
            cookie.setMaxAge(30 * 60); // 30 phút
            resp.addCookie(cookie);

            resp.sendRedirect("/home");
        } else {
            req.setAttribute("error", "Sai email hoặc mật khẩu!");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }
}
