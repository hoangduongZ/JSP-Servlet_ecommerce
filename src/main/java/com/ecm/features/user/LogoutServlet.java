package com.ecm.features.user;

import com.ecm.session_based.RedisLoadProperties;
import com.ecm.session_based.RedisSessionManager;
import com.ecm.util.GlobalUtil;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
    private RedisSessionManager redisSessionManager;
    @Override
    public void init() {
        redisSessionManager = new RedisSessionManager(RedisLoadProperties.getPool());
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        String sessionId = null;
        String rememberMeToken = null;
        Cookie[] cookies = req.getCookies();
        if (cookies != null) {
            for (Cookie c : cookies) {
                if ("APP_SESSION".equals(c.getName())) {
                    sessionId = c.getValue();
                }
                if ("REMEMBERME".equals(c.getName())) {
                    rememberMeToken = c.getValue();
                }
            }
        }
        GlobalUtil.clearListSession(redisSessionManager, sessionId, rememberMeToken);
        GlobalUtil.clearListCookie(resp, sessionId, rememberMeToken);
        resp.sendRedirect("/login");
    }
}
