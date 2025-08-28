package com.ecm.features.user;

import com.ecm.exception.EcmException;
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

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private final ILoginService loginService = new LoginService();
    private final UserService userService = new UserService();
    private RedisSessionManager sessionManager;
    private RememberMeManager rememberMeManager;

    @Override
    public void init() {
        // Khởi tạo pool Redis 1 lần khi servlet load
        sessionManager = new RedisSessionManager(RedisLoadProperties.getPool());
        rememberMeManager = new RememberMeManager(RedisLoadProperties.getPool());
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
            String sessionId = sessionManager.createSession("userId", String.valueOf(user.getUserId()));

            // Set cookie sessionId về cho client
            Cookie cookie = new Cookie("APP_SESSION", sessionId);
            cookie.setHttpOnly(true);
            cookie.setPath("/");
            cookie.setMaxAge(30 * 60);
            resp.addCookie(cookie);

            // handle for remember me
            if (rememberMe != null) {
                rememberMeManager.createRememberMe(String.valueOf(user.getUserId()), resp);
            }

            resp.sendRedirect("/admin/dashboard");
        } else {
            req.setAttribute("error", "Sai email hoặc mật khẩu!");
            req.getRequestDispatcher("/views/auth/login.jsp").forward(req, resp);
        }
    }
}
