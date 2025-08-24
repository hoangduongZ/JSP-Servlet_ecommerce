package com.ecm.features.user;

import com.ecm.session_based.RedisConnectionManager;
import com.ecm.session_based.SessionManager;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LogoutServlet extends HttpServlet {
    private SessionManager sessionManager;
    @Override
    public void init() {
        sessionManager = new SessionManager(RedisConnectionManager.getPool());
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        String sessionId = null;
        Cookie[] cookies = req.getCookies();
        if (cookies != null) {
            for (Cookie c : cookies) {
                if ("SESSION_ID".equals(c.getName())) {
                    sessionId = c.getValue();
                }
            }
        }
        if (sessionId != null) {
            sessionManager.invalidate(sessionId);
        }

        // Xóa cookie phía client (override cookie cũ với maxAge=0)
        Cookie cookie = new Cookie("SESSION_ID", "");
        cookie.setMaxAge(0);
        resp.addCookie(cookie);

        resp.sendRedirect("/login");
    }
}
