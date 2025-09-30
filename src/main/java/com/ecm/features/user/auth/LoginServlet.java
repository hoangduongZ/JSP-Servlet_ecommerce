package com.ecm.features.user.auth;

import com.ecm.exception.EcmException;
import com.ecm.features.user.UserService;
import com.ecm.model.User;
import com.ecm.session_based.RedisLoadProperties;
import com.ecm.session_based.RedisSessionManager;
import com.ecm.session_based.RememberMeManager;
import com.ecm.util.StringUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private final UserService userService = new UserService();
    private RedisSessionManager sessionManager;
    private RememberMeManager rememberMeManager;
    private ILoginService loginService;

    @Override
    public void init() {
        // Khởi tạo pool Redis 1 lần khi servlet load
        sessionManager = new RedisSessionManager(RedisLoadProperties.getPool());
        rememberMeManager = new RememberMeManager(RedisLoadProperties.getPool());
        loginService = new LoginService(sessionManager, rememberMeManager);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws javax.servlet.ServletException, java.io.IOException {
        resp.setContentType("text/html; charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        RequestDispatcher dispatcher = req.getRequestDispatcher("/views/auth/login.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html; charset=UTF-8");

        String email, password;
        try {
            email = StringUtil.sanitizeInput(req.getParameter("email"));
            password = StringUtil.sanitizeInput(req.getParameter("password"));
        } catch (EcmException e) {
            req.setAttribute("error", "Dữ liệu không hợp lệ!");
            req.getRequestDispatcher("/views/auth/login.jsp").forward(req, resp);
            return;
        }
        String rememberMe = req.getParameter("rememberMe");

        if (loginService.validateCredentials(email, password)) {
            User user = userService.getUserByEmail(email);
            loginService.handleLoginSuccess(req, resp, user, rememberMe != null);
            resp.sendRedirect("/admin/dashboard");
        } else {
            req.setAttribute("error", "Sai email hoặc mật khẩu!");
            req.getRequestDispatcher("/views/auth/login.jsp").forward(req, resp);
        }
    }
}
